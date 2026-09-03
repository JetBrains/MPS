<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:84719e1a-99f6-4297-90ba-8ad2a947fa4a(jetbrains.mps.ide.datatransfer)">
  <persistence version="9" />
  <attribute name="doNotGenerate" value="false" />
  <languages>
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="-1" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="3" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
  </languages>
  <imports>
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="i8bi" ref="r:c3548bac-30eb-4a2a-937c-0111d5697309(jetbrains.mps.lang.smodel.generator.smodelAdapter)" />
    <import index="unno" ref="r:61e3d524-8c49-4491-b5e3-f6d6e9364527(jetbrains.mps.util)" />
    <import index="kt01" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.datatransfer(JDK/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="ddhc" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ide(MPS.IDEA/)" />
    <import index="jkm4" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.ui(MPS.IDEA/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="vndm" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.language(MPS.Core/)" />
    <import index="qzxn" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.datatransfer(MPS.Editor/)" />
    <import index="qzxo" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.datatransfer(MPS.Core/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="drih" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.editor.colors(MPS.IDEA/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="lzb2" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui(MPS.IDEA/)" />
    <import index="xnls" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.icons(MPS.Platform/)" />
    <import index="sn11" ref="r:836426ab-a6f4-4fa3-9a9c-34c02ed6ab5d(jetbrains.mps.ide.icons)" />
    <import index="alof" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.project(MPS.Platform/)" />
    <import index="qqrq" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui.components(MPS.IDEA/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="r791" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing.text(JDK/)" />
    <import index="hyam" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.event(JDK/)" />
    <import index="g1qu" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.util.ui(MPS.IDEA/)" />
    <import index="pvli" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.util.ui.accessibility(MPS.IDEA/)" />
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
      <concept id="5279705229678483897" name="jetbrains.mps.baseLanguage.structure.FloatingPointFloatConstant" flags="nn" index="2$xPTn">
        <property id="5279705229678483899" name="value" index="2$xPTl" />
      </concept>
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
      <concept id="1073063089578" name="jetbrains.mps.baseLanguage.structure.SuperMethodCall" flags="nn" index="3nyPlj" />
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
      <concept id="3093926081414150598" name="jetbrains.mps.baseLanguage.structure.MultipleCatchClause" flags="ng" index="3uVAMA">
        <child id="8276990574895933173" name="catchBody" index="1zc67A" />
        <child id="8276990574895933172" name="throwable" index="1zc67B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1081855346303" name="jetbrains.mps.baseLanguage.structure.BreakStatement" flags="nn" index="3zACq4" />
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
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
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
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
        <child id="1201186121363" name="typeParameter" index="2Ghqu4" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
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
      <concept id="6971016359099800069" name="jetbrains.mps.baseLanguage.javadoc.structure.IHoldSingleCommentLine" flags="ngI" index="2JaDLO">
        <child id="6971016359099801474" name="commentBody" index="2JaDBN" />
      </concept>
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="5383422241790532083" name="tags" index="3nqlJM" />
      </concept>
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="8465538089690881930" name="jetbrains.mps.baseLanguage.javadoc.structure.ParameterBlockDocTag" flags="ng" index="TUZQ0">
        <property id="8465538089690881934" name="text" index="TUZQ4" />
        <child id="6832197706140518123" name="parameter" index="zr_5Q" />
      </concept>
      <concept id="8465538089690331492" name="jetbrains.mps.baseLanguage.javadoc.structure.DeprecatedBlockDocTag" flags="ng" index="TZ5HI" />
      <concept id="8465538089690324397" name="jetbrains.mps.baseLanguage.javadoc.structure.SinceBlockDocTag" flags="ng" index="TZ7YB">
        <property id="8465538089690324399" name="text" index="TZ7Y_" />
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
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="2034914114981261497" name="jetbrains.mps.baseLanguage.logging.structure.LogLowLevelStatement" flags="ng" index="RRSsy">
        <property id="2034914114981261751" name="severity" index="RRSoG" />
        <child id="2034914114981261755" name="throwable" index="RRSow" />
        <child id="2034914114981261753" name="message" index="RRSoy" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
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
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="5tGs5KqKfGH">
    <property role="TrG5h" value="CopyPasteUtil" />
    <property role="1EXbeo" value="true" />
    <node concept="3clFbW" id="5tGs5KqKiww" role="jymVt">
      <node concept="3Tm1VV" id="5tGs5KqKiwx" role="1B3o_S" />
      <node concept="3cqZAl" id="5tGs5KqKiwy" role="3clF45" />
      <node concept="3clFbS" id="5tGs5KqKiwz" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="6uOEOYR6J0R" role="jymVt" />
    <node concept="2YIFZL" id="5tGs5KqKixN" role="jymVt">
      <property role="TrG5h" value="createNodeDataIn" />
      <node concept="3uibUv" id="5tGs5KqKixP" role="3clF45">
        <ref role="3uigEE" to="qzxo:~PasteNodeData" resolve="PasteNodeData" />
      </node>
      <node concept="3Tm1VV" id="5tGs5KqKixO" role="1B3o_S" />
      <node concept="37vLTG" id="5tGs5KqKixQ" role="3clF46">
        <property role="TrG5h" value="sourceNodes" />
        <node concept="_YKpA" id="75_1K8NDuVZ" role="1tU5fm">
          <node concept="3Tqbb2" id="2OF_YfjrSEt" role="_ZDj9" />
        </node>
      </node>
      <node concept="37vLTG" id="5tGs5KqKixT" role="3clF46">
        <property role="TrG5h" value="sourceNodesAndAttributes" />
        <node concept="3uibUv" id="1_MDhe9eslY" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
          <node concept="3uibUv" id="1_MDhe9eslZ" role="11_B2D">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
          <node concept="3uibUv" id="1_MDhe9esm0" role="11_B2D">
            <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
            <node concept="3uibUv" id="1_MDhe9esm1" role="11_B2D">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="5tGs5KqKixY" role="3clF47">
        <node concept="3clFbJ" id="5tGs5KqKixZ" role="3cqZAp">
          <node concept="2OqwBi" id="5tGs5KqKiy0" role="3clFbw">
            <node concept="1v1jN8" id="75_1K8ND$G7" role="2OqNvi" />
            <node concept="37vLTw" id="2BHiRxghf5E" role="2Oq$k0">
              <ref role="3cqZAo" node="5tGs5KqKixQ" resolve="sourceNodes" />
            </node>
          </node>
          <node concept="3clFbS" id="5tGs5KqKiy3" role="3clFbx">
            <node concept="3cpWs6" id="5tGs5KqKiy4" role="3cqZAp">
              <node concept="2YIFZM" id="x79preB7lt" role="3cqZAk">
                <ref role="37wK5l" to="qzxo:~PasteNodeData.emptyPasteNodeData()" resolve="emptyPasteNodeData" />
                <ref role="1Pybhc" to="qzxo:~PasteNodeData" resolve="PasteNodeData" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2OF_YfjrOTa" role="3cqZAp" />
        <node concept="3cpWs8" id="5tGs5KqKiy8" role="3cqZAp">
          <node concept="3cpWsn" id="5tGs5KqKiy9" role="3cpWs9">
            <property role="TrG5h" value="model" />
            <node concept="H_c77" id="2OF_YfjrWhn" role="1tU5fm" />
            <node concept="2OqwBi" id="5tGs5KqKiyb" role="33vP2m">
              <node concept="I4A8Y" id="2OF_YfjrVEv" role="2OqNvi" />
              <node concept="2OqwBi" id="5tGs5KqKiyc" role="2Oq$k0">
                <node concept="1uHKPH" id="75_1K8NDxYq" role="2OqNvi" />
                <node concept="37vLTw" id="2BHiRxgm8Gd" role="2Oq$k0">
                  <ref role="3cqZAo" node="5tGs5KqKixQ" resolve="sourceNodes" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2OF_YfjrQ4D" role="3cqZAp">
          <node concept="3cpWsn" id="2OF_YfjrQ4J" role="3cpWs9">
            <property role="TrG5h" value="targetNodes" />
            <node concept="_YKpA" id="2OF_Yfjse5g" role="1tU5fm">
              <node concept="3Tqbb2" id="2OF_Yfjsfpo" role="_ZDj9" />
            </node>
            <node concept="2ShNRf" id="2OF_YfjrWRW" role="33vP2m">
              <node concept="Tc6Ow" id="2OF_Yfjsg4f" role="2ShVmc">
                <node concept="3Tqbb2" id="2OF_Yfjsg4h" role="HW$YZ" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2OF_YfjrPhz" role="3cqZAp" />
        <node concept="3cpWs8" id="1_MDhe9dow9" role="3cqZAp">
          <node concept="3cpWsn" id="1_MDhe9dowa" role="3cpWs9">
            <property role="TrG5h" value="cpm" />
            <node concept="3uibUv" id="1_MDhe9dowb" role="1tU5fm">
              <ref role="3uigEE" node="1_MDhe9aU_9" resolve="CopyPasteMagic" />
            </node>
            <node concept="2ShNRf" id="1_MDhe9duE1" role="33vP2m">
              <node concept="HV5vD" id="1_MDhe9dyDI" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="HV5vE" node="1_MDhe9aU_9" resolve="CopyPasteMagic" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1_MDhe9dEe4" role="3cqZAp">
          <node concept="2OqwBi" id="1_MDhe9dUSn" role="3clFbG">
            <node concept="2OqwBi" id="1_MDhe9dIn6" role="2Oq$k0">
              <node concept="37vLTw" id="1_MDhe9dEe2" role="2Oq$k0">
                <ref role="3cqZAo" node="1_MDhe9dowa" resolve="cpm" />
              </node>
              <node concept="liA8E" id="1_MDhe9dLNk" role="2OqNvi">
                <ref role="37wK5l" node="1_MDhe9b$rs" resolve="withSpecialAtrtributeHandling" />
                <node concept="37vLTw" id="1_MDhe9dOHq" role="37wK5m">
                  <ref role="3cqZAo" node="5tGs5KqKixT" resolve="sourceNodesAndAttributes" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="1_MDhe9e058" role="2OqNvi">
              <ref role="37wK5l" node="1_MDhe9ba9i" resolve="copyUserObjects" />
              <node concept="3clFbT" id="1_MDhe9e3iM" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1_MDhe9g3qh" role="3cqZAp" />
        <node concept="2Gpval" id="75_1K8ND$GI" role="3cqZAp">
          <node concept="3clFbS" id="5tGs5KqKiyT" role="2LFqv$">
            <node concept="1gVbGN" id="5tGs5KqKiyU" role="3cqZAp">
              <node concept="3clFbC" id="5tGs5KqKiyV" role="1gVkn0">
                <node concept="2OqwBi" id="5tGs5KqKiyW" role="3uHU7B">
                  <node concept="2GrUjf" id="75_1K8ND$HS" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="75_1K8ND$HQ" resolve="sourceNode" />
                  </node>
                  <node concept="I4A8Y" id="2OF_YfjrXOy" role="2OqNvi" />
                </node>
                <node concept="37vLTw" id="3GM_nagTt57" role="3uHU7w">
                  <ref role="3cqZAo" node="5tGs5KqKiy9" resolve="model" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="75_1K8NDgwe" role="3cqZAp">
              <node concept="2OqwBi" id="2OF_Yfjsaj_" role="3clFbG">
                <node concept="37vLTw" id="2OF_Yfjs9hB" role="2Oq$k0">
                  <ref role="3cqZAo" node="2OF_YfjrQ4J" resolve="targetNodes" />
                </node>
                <node concept="TSZUe" id="2OF_YfjssX_" role="2OqNvi">
                  <node concept="2OqwBi" id="1_MDhe9eDqI" role="25WWJ7">
                    <node concept="37vLTw" id="1_MDhe9eCis" role="2Oq$k0">
                      <ref role="3cqZAo" node="1_MDhe9dowa" resolve="cpm" />
                    </node>
                    <node concept="liA8E" id="1_MDhe9eFCT" role="2OqNvi">
                      <ref role="37wK5l" node="1_MDhe9clWK" resolve="copy" />
                      <node concept="2GrUjf" id="1_MDhe9fdq9" role="37wK5m">
                        <ref role="2Gs0qQ" node="75_1K8ND$HQ" resolve="sourceNode" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="2BHiRxghiQi" role="2GsD0m">
            <ref role="3cqZAo" node="5tGs5KqKixQ" resolve="sourceNodes" />
          </node>
          <node concept="2GrKxI" id="75_1K8ND$HQ" role="2Gsz3X">
            <property role="TrG5h" value="sourceNode" />
          </node>
        </node>
        <node concept="3clFbH" id="2OF_YfjrOwM" role="3cqZAp" />
        <node concept="3cpWs8" id="5tGs5KqKizd" role="3cqZAp">
          <node concept="3cpWsn" id="5tGs5KqKize" role="3cpWs9">
            <property role="TrG5h" value="necessaryModels" />
            <node concept="2hMVRd" id="75_1K8NE5J9" role="1tU5fm">
              <node concept="3uibUv" id="75_1K8NEgI5" role="2hN53Y">
                <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
              </node>
            </node>
            <node concept="2ShNRf" id="5tGs5KqKizh" role="33vP2m">
              <node concept="2i4dXS" id="75_1K8NE85$" role="2ShVmc">
                <node concept="3uibUv" id="75_1K8NEhyC" role="HW$YZ">
                  <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="75qA1j06A_k" role="3cqZAp">
          <node concept="3cpWsn" id="75qA1j06A_q" role="3cpWs9">
            <property role="TrG5h" value="copiedLinks" />
            <node concept="3uibUv" id="75qA1j06A_s" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~ArrayList" resolve="ArrayList" />
              <node concept="3uibUv" id="75qA1j06Eju" role="11_B2D">
                <ref role="3uigEE" to="qzxo:~AssociationLink" resolve="AssociationLink" />
              </node>
            </node>
            <node concept="2ShNRf" id="75qA1j06PG_" role="33vP2m">
              <node concept="1pGfFk" id="75qA1j06UbS" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="75qA1j02OFV" role="3cqZAp" />
        <node concept="3cpWs8" id="5tGs5KqKiy_" role="3cqZAp">
          <node concept="3cpWsn" id="5tGs5KqKiyA" role="3cpWs9">
            <property role="TrG5h" value="sourceNodesToNewNodes" />
            <node concept="3uibUv" id="75qA1j047EB" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
              <node concept="3Tqbb2" id="75qA1j04c0d" role="11_B2D" />
              <node concept="3Tqbb2" id="75qA1j04fI5" role="11_B2D" />
            </node>
            <node concept="2OqwBi" id="1_MDhe9fJDa" role="33vP2m">
              <node concept="37vLTw" id="1_MDhe9fIyZ" role="2Oq$k0">
                <ref role="3cqZAo" node="1_MDhe9dowa" resolve="cpm" />
              </node>
              <node concept="liA8E" id="1_MDhe9fLRa" role="2OqNvi">
                <ref role="37wK5l" node="1_MDhe9ccdw" resolve="getOriginal2NewMap" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2OF_YfjrH9X" role="3cqZAp">
          <node concept="3cpWsn" id="2OF_YfjrHa0" role="3cpWs9">
            <property role="TrG5h" value="newNodesToSourceNodes" />
            <node concept="3uibUv" id="1_MDhe9f$s1" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
              <node concept="3Tqbb2" id="1_MDhe9f$s2" role="11_B2D" />
              <node concept="3Tqbb2" id="1_MDhe9f$s3" role="11_B2D" />
            </node>
            <node concept="2OqwBi" id="1_MDhe9fVVj" role="33vP2m">
              <node concept="37vLTw" id="1_MDhe9fTDL" role="2Oq$k0">
                <ref role="3cqZAo" node="1_MDhe9dowa" resolve="cpm" />
              </node>
              <node concept="liA8E" id="1_MDhe9fYiz" role="2OqNvi">
                <ref role="37wK5l" node="1_MDhe9cWbY" resolve="getNew2OriginalMap" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2OF_Yfjre66" role="3cqZAp" />
        <node concept="3SKdUt" id="3IzRelEjHCJ" role="3cqZAp">
          <node concept="1PaTwC" id="3IzRelEjHCK" role="1aUNEU">
            <node concept="3oM_SD" id="3IzRelEjKVo" role="1PaTwD">
              <property role="3oM_SC" value="JFTR" />
            </node>
            <node concept="3oM_SD" id="3IzRelEjKVq" role="1PaTwD">
              <property role="3oM_SC" value="preProcessNode" />
            </node>
            <node concept="3oM_SD" id="3IzRelEjKVt" role="1PaTwD">
              <property role="3oM_SC" value="may" />
            </node>
            <node concept="3oM_SD" id="3IzRelEjKVx" role="1PaTwD">
              <property role="3oM_SC" value="replace" />
            </node>
            <node concept="3oM_SD" id="3IzRelEjKVA" role="1PaTwD">
              <property role="3oM_SC" value="some" />
            </node>
            <node concept="3oM_SD" id="3IzRelEjKVG" role="1PaTwD">
              <property role="3oM_SC" value="nodes" />
            </node>
            <node concept="3oM_SD" id="3IzRelEjKVN" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="3IzRelEjKVV" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="3IzRelEjKW4" role="1PaTwD">
              <property role="3oM_SC" value="node" />
            </node>
            <node concept="3oM_SD" id="3IzRelEjKWe" role="1PaTwD">
              <property role="3oM_SC" value="hierarchy" />
            </node>
            <node concept="3oM_SD" id="3IzRelEjKWp" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="3IzRelEjL8E" role="1PaTwD">
              <property role="3oM_SC" value="values" />
            </node>
            <node concept="3oM_SD" id="3IzRelEjL98" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="3IzRelEjKW_" role="1PaTwD">
              <property role="3oM_SC" value="newNodesToSourceNodes" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="18jObec_CXo" role="3cqZAp">
          <node concept="3clFbS" id="18jObec_CXt" role="2LFqv$">
            <node concept="3clFbF" id="18jObec_CXu" role="3cqZAp">
              <node concept="2OqwBi" id="18jObec_CXv" role="3clFbG">
                <node concept="2YIFZM" id="2LXoN5Z_$U2" role="2Oq$k0">
                  <ref role="37wK5l" to="qzxn:~DataTransferManager.getInstance()" resolve="getInstance" />
                  <ref role="1Pybhc" to="qzxn:~DataTransferManager" resolve="DataTransferManager" />
                </node>
                <node concept="liA8E" id="18jObec_CXx" role="2OqNvi">
                  <ref role="37wK5l" to="qzxn:~DataTransferManager.preProcessNode(org.jetbrains.mps.openapi.model.SNode,java.util.Map)" resolve="preProcessNode" />
                  <node concept="2GrUjf" id="2OF_YfjswzI" role="37wK5m">
                    <ref role="2Gs0qQ" node="18jObec_CXC" resolve="target" />
                  </node>
                  <node concept="37vLTw" id="2OF_YfjrNGB" role="37wK5m">
                    <ref role="3cqZAo" node="2OF_YfjrHa0" resolve="newNodesToSourceNodes" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="2OF_Yfjsv_C" role="2GsD0m">
            <ref role="3cqZAo" node="2OF_YfjrQ4J" resolve="targetNodes" />
          </node>
          <node concept="2GrKxI" id="18jObec_CXC" role="2Gsz3X">
            <property role="TrG5h" value="target" />
          </node>
        </node>
        <node concept="3clFbH" id="2OF_YfjrO8r" role="3cqZAp" />
        <node concept="3SKdUt" id="75qA1j037qB" role="3cqZAp">
          <node concept="1PaTwC" id="75qA1j037qC" role="1aUNEU">
            <node concept="3oM_SD" id="75qA1j038D6" role="1PaTwD">
              <property role="3oM_SC" value="processImportsAndLanguages" />
            </node>
            <node concept="3oM_SD" id="75qA1j038FS" role="1PaTwD">
              <property role="3oM_SC" value="+" />
            </node>
            <node concept="3oM_SD" id="75qA1j038Gr" role="1PaTwD">
              <property role="3oM_SC" value="processReferencesIn" />
            </node>
            <node concept="3oM_SD" id="75qA1j038HJ" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="75qA1j038I4" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="75qA1j038Ia" role="1PaTwD">
              <property role="3oM_SC" value="single" />
            </node>
            <node concept="3oM_SD" id="75qA1j038JM" role="1PaTwD">
              <property role="3oM_SC" value="loop," />
            </node>
            <node concept="3oM_SD" id="75qA1j03qBn" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="75qA1j03qDx" role="1PaTwD">
              <property role="3oM_SC" value="less" />
            </node>
            <node concept="3oM_SD" id="75qA1j03qC_" role="1PaTwD">
              <property role="3oM_SC" value="resolutions" />
            </node>
            <node concept="3oM_SD" id="75qA1j03qDW" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="75qA1j03qE8" role="1PaTwD">
              <property role="3oM_SC" value="association" />
            </node>
            <node concept="3oM_SD" id="75qA1j03qEP" role="1PaTwD">
              <property role="3oM_SC" value="link" />
            </node>
            <node concept="3oM_SD" id="75qA1j03qFj" role="1PaTwD">
              <property role="3oM_SC" value="targets" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6uOEOYR6WG_" role="3cqZAp">
          <node concept="1PaTwC" id="6uOEOYR6WGA" role="1aUNEU">
            <node concept="3oM_SD" id="6uOEOYR700m" role="1PaTwD">
              <property role="3oM_SC" value="Note," />
            </node>
            <node concept="3oM_SD" id="6uOEOYR700N" role="1PaTwD">
              <property role="3oM_SC" value="provided" />
            </node>
            <node concept="3oM_SD" id="6uOEOYR702y" role="1PaTwD">
              <property role="3oM_SC" value="preProcessNode" />
            </node>
            <node concept="3oM_SD" id="6uOEOYR705z" role="1PaTwD">
              <property role="3oM_SC" value="may" />
            </node>
            <node concept="3oM_SD" id="6uOEOYR707k" role="1PaTwD">
              <property role="3oM_SC" value="replace" />
            </node>
            <node concept="3oM_SD" id="6uOEOYR70cH" role="1PaTwD">
              <property role="3oM_SC" value="some" />
            </node>
            <node concept="3oM_SD" id="6uOEOYR70cO" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="6uOEOYR70eV" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="6uOEOYR70f4" role="1PaTwD">
              <property role="3oM_SC" value="new" />
            </node>
            <node concept="3oM_SD" id="6uOEOYR70gU" role="1PaTwD">
              <property role="3oM_SC" value="nodes," />
            </node>
            <node concept="3oM_SD" id="6uOEOYR70jB" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="6uOEOYR70l4" role="1PaTwD">
              <property role="3oM_SC" value="walk" />
            </node>
            <node concept="3oM_SD" id="6uOEOYR70m7" role="1PaTwD">
              <property role="3oM_SC" value="targets" />
            </node>
            <node concept="3oM_SD" id="6uOEOYR70nA" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="6uOEOYR70nP" role="1PaTwD">
              <property role="3oM_SC" value="collect" />
            </node>
            <node concept="3oM_SD" id="6uOEOYR70sr" role="1PaTwD">
              <property role="3oM_SC" value="actual" />
            </node>
            <node concept="3oM_SD" id="6uOEOYR70uo" role="1PaTwD">
              <property role="3oM_SC" value="associations," />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6uOEOYR74dZ" role="3cqZAp">
          <node concept="1PaTwC" id="6uOEOYR74e0" role="1aUNEU">
            <node concept="3oM_SD" id="6uOEOYR77K2" role="1PaTwD">
              <property role="3oM_SC" value="although" />
            </node>
            <node concept="3oM_SD" id="6uOEOYR77Mb" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="3oM_SD" id="6uOEOYR77Nv" role="1PaTwD">
              <property role="3oM_SC" value="original" />
            </node>
            <node concept="3oM_SD" id="6uOEOYR77Op" role="1PaTwD">
              <property role="3oM_SC" value="(source)" />
            </node>
            <node concept="3oM_SD" id="6uOEOYR77Pk" role="1PaTwD">
              <property role="3oM_SC" value="nodes" />
            </node>
            <node concept="3oM_SD" id="6uOEOYR77Qg" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="6uOEOYR77QM" role="1PaTwD">
              <property role="3oM_SC" value="obtain" />
            </node>
            <node concept="3oM_SD" id="6uOEOYR77T1" role="1PaTwD">
              <property role="3oM_SC" value="targets." />
            </node>
            <node concept="3oM_SD" id="6uOEOYR7bK$" role="1PaTwD">
              <property role="3oM_SC" value="And" />
            </node>
            <node concept="3oM_SD" id="6uOEOYR7bLp" role="1PaTwD">
              <property role="3oM_SC" value="yes," />
            </node>
            <node concept="3oM_SD" id="6uOEOYR7bLO" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="6uOEOYR7bMF" role="1PaTwD">
              <property role="3oM_SC" value="assume" />
            </node>
            <node concept="3oM_SD" id="6uOEOYR7bMS" role="1PaTwD">
              <property role="3oM_SC" value="topmost" />
            </node>
            <node concept="3oM_SD" id="6uOEOYR7bQz" role="1PaTwD">
              <property role="3oM_SC" value="target" />
            </node>
            <node concept="3oM_SD" id="6uOEOYR7bRX" role="1PaTwD">
              <property role="3oM_SC" value="nodes" />
            </node>
            <node concept="3oM_SD" id="6uOEOYR7bTY" role="1PaTwD">
              <property role="3oM_SC" value="don't" />
            </node>
            <node concept="3oM_SD" id="6uOEOYR7bUE" role="1PaTwD">
              <property role="3oM_SC" value="get" />
            </node>
            <node concept="3oM_SD" id="6uOEOYR7bVn" role="1PaTwD">
              <property role="3oM_SC" value="replaced." />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="75qA1j02SQ0" role="3cqZAp">
          <node concept="2GrKxI" id="75qA1j02SQ2" role="2Gsz3X">
            <property role="TrG5h" value="copiedSourceNode" />
          </node>
          <node concept="2YIFZM" id="75qA1j031Qq" role="2GsD0m">
            <ref role="37wK5l" to="mhbf:~SNodeUtil.getDescendants(java.lang.Iterable)" resolve="getDescendants" />
            <ref role="1Pybhc" to="mhbf:~SNodeUtil" resolve="SNodeUtil" />
            <node concept="37vLTw" id="75qA1j033vk" role="37wK5m">
              <ref role="3cqZAo" node="2OF_YfjrQ4J" resolve="targetNodes" />
            </node>
          </node>
          <node concept="3clFbS" id="75qA1j02SQ6" role="2LFqv$">
            <node concept="3cpWs8" id="75qA1j07Oyu" role="3cqZAp">
              <node concept="3cpWsn" id="75qA1j07Oyx" role="3cpWs9">
                <property role="TrG5h" value="originalSourceNode" />
                <node concept="3Tqbb2" id="75qA1j07Oys" role="1tU5fm" />
                <node concept="3EllGN" id="6uOEOYR7EoY" role="33vP2m">
                  <node concept="2GrUjf" id="6uOEOYR7H5A" role="3ElVtu">
                    <ref role="2Gs0qQ" node="75qA1j02SQ2" resolve="copiedSourceNode" />
                  </node>
                  <node concept="37vLTw" id="75qA1j07Zc7" role="3ElQJh">
                    <ref role="3cqZAo" node="2OF_YfjrHa0" resolve="newNodesToSourceNodes" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6uOEOYR8j_r" role="3cqZAp">
              <node concept="3cpWsn" id="6uOEOYR8j_p" role="3cpWs9">
                <property role="3TUv4t" value="true" />
                <property role="TrG5h" value="sourceNode" />
                <node concept="3uibUv" id="6uOEOYR8l1y" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6uOEOYR7NGj" role="3cqZAp">
              <node concept="3clFbS" id="6uOEOYR7NGl" role="3clFbx">
                <node concept="3SKdUt" id="6uOEOYR813n" role="3cqZAp">
                  <node concept="1PaTwC" id="6uOEOYR813o" role="1aUNEU">
                    <node concept="3oM_SD" id="6uOEOYR83x$" role="1PaTwD">
                      <property role="3oM_SC" value="although" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR83y4" role="1PaTwD">
                      <property role="3oM_SC" value="copyNode_internal" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR83y5" role="1PaTwD">
                      <property role="3oM_SC" value="has" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR83y6" role="1PaTwD">
                      <property role="3oM_SC" value="to" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR83y7" role="1PaTwD">
                      <property role="3oM_SC" value="create" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR83y8" role="1PaTwD">
                      <property role="3oM_SC" value="a" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR83y9" role="1PaTwD">
                      <property role="3oM_SC" value="copy" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR83ya" role="1PaTwD">
                      <property role="3oM_SC" value="for" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR83yb" role="1PaTwD">
                      <property role="3oM_SC" value="each" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR83yc" role="1PaTwD">
                      <property role="3oM_SC" value="source" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR83yd" role="1PaTwD">
                      <property role="3oM_SC" value="node," />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR83yO" role="1PaTwD">
                      <property role="3oM_SC" value="here" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR83zs" role="1PaTwD">
                      <property role="3oM_SC" value="were" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR83$w" role="1PaTwD">
                      <property role="3oM_SC" value="likely" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR83_a" role="1PaTwD">
                      <property role="3oM_SC" value="hit" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR83AF" role="1PaTwD">
                      <property role="3oM_SC" value="a" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR83BM" role="1PaTwD">
                      <property role="3oM_SC" value="case" />
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="6uOEOYR86YX" role="3cqZAp">
                  <node concept="1PaTwC" id="6uOEOYR86YY" role="1aUNEU">
                    <node concept="3oM_SD" id="6uOEOYR89um" role="1PaTwD">
                      <property role="3oM_SC" value="when" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR89uo" role="1PaTwD">
                      <property role="3oM_SC" value="preProcessNode()" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR89$K" role="1PaTwD">
                      <property role="3oM_SC" value="replaced" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR89Bm" role="1PaTwD">
                      <property role="3oM_SC" value="some" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR89Ch" role="1PaTwD">
                      <property role="3oM_SC" value="target" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR89DC" role="1PaTwD">
                      <property role="3oM_SC" value="node." />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR8HW6" role="1PaTwD">
                      <property role="3oM_SC" value="Walk" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR8HXt" role="1PaTwD">
                      <property role="3oM_SC" value="references" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR8HYG" role="1PaTwD">
                      <property role="3oM_SC" value="of" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR8I0n" role="1PaTwD">
                      <property role="3oM_SC" value="this" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR8I2u" role="1PaTwD">
                      <property role="3oM_SC" value="new" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR8I35" role="1PaTwD">
                      <property role="3oM_SC" value="target," />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR8I3H" role="1PaTwD">
                      <property role="3oM_SC" value="instead." />
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="6uOEOYR96yY" role="3cqZAp">
                  <node concept="1PaTwC" id="6uOEOYR96yZ" role="1aUNEU">
                    <node concept="3oM_SD" id="6uOEOYR9swV" role="1PaTwD">
                      <property role="3oM_SC" value="I" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR9szg" role="1PaTwD">
                      <property role="3oM_SC" value="don't" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR9szY" role="1PaTwD">
                      <property role="3oM_SC" value="expect" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR9s_I" role="1PaTwD">
                      <property role="3oM_SC" value="preProcessNode" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR9sDr" role="1PaTwD">
                      <property role="3oM_SC" value="to" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR9sDx" role="1PaTwD">
                      <property role="3oM_SC" value="introduce" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR9sF5" role="1PaTwD">
                      <property role="3oM_SC" value="references" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR9sIB" role="1PaTwD">
                      <property role="3oM_SC" value="within" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR9sJr" role="1PaTwD">
                      <property role="3oM_SC" value="the" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR9sKg" role="1PaTwD">
                      <property role="3oM_SC" value="scope" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR9sLW" role="1PaTwD">
                      <property role="3oM_SC" value="of" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR9sNe" role="1PaTwD">
                      <property role="3oM_SC" value="copied" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR9sPn" role="1PaTwD">
                      <property role="3oM_SC" value="nodes" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR9ynJ" role="1PaTwD">
                      <property role="3oM_SC" value="(rather" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR9yqt" role="1PaTwD">
                      <property role="3oM_SC" value="outside)," />
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="6uOEOYR9yuR" role="3cqZAp">
                  <node concept="1PaTwC" id="6uOEOYR9yuz" role="1aUNEU">
                    <node concept="3oM_SD" id="6uOEOYR9_JG" role="1PaTwD">
                      <property role="3oM_SC" value="but" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR9sSQ" role="1PaTwD">
                      <property role="3oM_SC" value="it" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR9_Kr" role="1PaTwD">
                      <property role="3oM_SC" value="looks" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR9CcG" role="1PaTwD">
                      <property role="3oM_SC" value="like" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR9yfO" role="1PaTwD">
                      <property role="3oM_SC" value="we" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR9ygH" role="1PaTwD">
                      <property role="3oM_SC" value="could" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR9Cf1" role="1PaTwD">
                      <property role="3oM_SC" value="still" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR9CfS" role="1PaTwD">
                      <property role="3oM_SC" value="handle" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR9yjT" role="1PaTwD">
                      <property role="3oM_SC" value="this" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR9ykQ" role="1PaTwD">
                      <property role="3oM_SC" value="scenario" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR9Cjn" role="1PaTwD">
                      <property role="3oM_SC" value="(if" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR9Cnp" role="1PaTwD">
                      <property role="3oM_SC" value="it" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR9Cq5" role="1PaTwD">
                      <property role="3oM_SC" value="uses" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR9Cre" role="1PaTwD">
                      <property role="3oM_SC" value="non-mature" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR9CuU" role="1PaTwD">
                      <property role="3oM_SC" value="reference" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR9C_I" role="1PaTwD">
                      <property role="3oM_SC" value="for" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR9CAf" role="1PaTwD">
                      <property role="3oM_SC" value="us" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR9CCS" role="1PaTwD">
                      <property role="3oM_SC" value="to" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR9CE1" role="1PaTwD">
                      <property role="3oM_SC" value="get" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR9CF0" role="1PaTwD">
                      <property role="3oM_SC" value="proper" />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR9CHG" role="1PaTwD">
                      <property role="3oM_SC" value="" />
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="6uOEOYR9CKM" role="3cqZAp">
                  <node concept="1PaTwC" id="6uOEOYR9CKr" role="1aUNEU">
                    <node concept="3oM_SD" id="6uOEOYR9CKq" role="1PaTwD">
                      <property role="3oM_SC" value="targetNode," />
                    </node>
                    <node concept="3oM_SD" id="6uOEOYR9GhW" role="1PaTwD">
                      <property role="3oM_SC" value="below)" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="6uOEOYR8t9a" role="3cqZAp">
                  <node concept="37vLTI" id="6uOEOYR8_Sh" role="3clFbG">
                    <node concept="2GrUjf" id="6uOEOYR8UDZ" role="37vLTx">
                      <ref role="2Gs0qQ" node="75qA1j02SQ2" resolve="copiedSourceNode" />
                    </node>
                    <node concept="37vLTw" id="6uOEOYR8t98" role="37vLTJ">
                      <ref role="3cqZAo" node="6uOEOYR8j_p" resolve="sourceNode" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="6uOEOYR7W3g" role="3clFbw">
                <node concept="10Nm6u" id="6uOEOYR7Ywy" role="3uHU7w" />
                <node concept="37vLTw" id="6uOEOYR7RpT" role="3uHU7B">
                  <ref role="3cqZAo" node="75qA1j07Oyx" resolve="originalSourceNode" />
                </node>
              </node>
              <node concept="9aQIb" id="6uOEOYR89Ft" role="9aQIa">
                <node concept="3clFbS" id="6uOEOYR89Fu" role="9aQI4">
                  <node concept="3SKdUt" id="6uOEOYR8S8e" role="3cqZAp">
                    <node concept="1PaTwC" id="6uOEOYR8S8f" role="1aUNEU">
                      <node concept="3oM_SD" id="6uOEOYR8UuC" role="1PaTwD">
                        <property role="3oM_SC" value="take" />
                      </node>
                      <node concept="3oM_SD" id="6uOEOYR8Uvw" role="1PaTwD">
                        <property role="3oM_SC" value="associations" />
                      </node>
                      <node concept="3oM_SD" id="6uOEOYR8Uy5" role="1PaTwD">
                        <property role="3oM_SC" value="from" />
                      </node>
                      <node concept="3oM_SD" id="6uOEOYR8Uzq" role="1PaTwD">
                        <property role="3oM_SC" value="the" />
                      </node>
                      <node concept="3oM_SD" id="6uOEOYR8UzU" role="1PaTwD">
                        <property role="3oM_SC" value="original" />
                      </node>
                      <node concept="3oM_SD" id="6uOEOYR8U$0" role="1PaTwD">
                        <property role="3oM_SC" value="one" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6uOEOYR8ItY" role="3cqZAp">
                    <node concept="37vLTI" id="6uOEOYR8LZb" role="3clFbG">
                      <node concept="37vLTw" id="6uOEOYR8OxM" role="37vLTx">
                        <ref role="3cqZAo" node="75qA1j07Oyx" resolve="originalSourceNode" />
                      </node>
                      <node concept="37vLTw" id="6uOEOYR8ItX" role="37vLTJ">
                        <ref role="3cqZAo" node="6uOEOYR8j_p" resolve="sourceNode" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="6uOEOYR9kw1" role="3cqZAp">
              <node concept="1PaTwC" id="6uOEOYR9kw2" role="1aUNEU">
                <node concept="3oM_SD" id="6uOEOYR9nAG" role="1PaTwD">
                  <property role="3oM_SC" value="copiedSourceNode" />
                </node>
                <node concept="3oM_SD" id="6uOEOYR9nE6" role="1PaTwD">
                  <property role="3oM_SC" value="is" />
                </node>
                <node concept="3oM_SD" id="6uOEOYR9nFP" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="6uOEOYR9nGJ" role="1PaTwD">
                  <property role="3oM_SC" value="one" />
                </node>
                <node concept="3oM_SD" id="6uOEOYR9nHf" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="6uOEOYR9nIb" role="1PaTwD">
                  <property role="3oM_SC" value="serve" />
                </node>
                <node concept="3oM_SD" id="6uOEOYR9nJY" role="1PaTwD">
                  <property role="3oM_SC" value="as" />
                </node>
                <node concept="3oM_SD" id="6uOEOYR9nKx" role="1PaTwD">
                  <property role="3oM_SC" value="a" />
                </node>
                <node concept="3oM_SD" id="6uOEOYR9nL5" role="1PaTwD">
                  <property role="3oM_SC" value="source" />
                </node>
                <node concept="3oM_SD" id="6uOEOYR9nM5" role="1PaTwD">
                  <property role="3oM_SC" value="for" />
                </node>
                <node concept="3oM_SD" id="6uOEOYR9nN6" role="1PaTwD">
                  <property role="3oM_SC" value="new" />
                </node>
                <node concept="3oM_SD" id="6uOEOYR9nOz" role="1PaTwD">
                  <property role="3oM_SC" value="associations" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="6uOEOYR9nXQ" role="3cqZAp">
              <node concept="1PaTwC" id="6uOEOYR9nXR" role="1aUNEU">
                <node concept="3oM_SD" id="6uOEOYR9s74" role="1PaTwD">
                  <property role="3oM_SC" value="sourceNode" />
                </node>
                <node concept="3oM_SD" id="6uOEOYR9s9C" role="1PaTwD">
                  <property role="3oM_SC" value="serves" />
                </node>
                <node concept="3oM_SD" id="6uOEOYR9scd" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="6uOEOYR9sch" role="1PaTwD">
                  <property role="3oM_SC" value="walk" />
                </node>
                <node concept="3oM_SD" id="6uOEOYR9scL" role="1PaTwD">
                  <property role="3oM_SC" value="actual" />
                </node>
                <node concept="3oM_SD" id="6uOEOYR9sez" role="1PaTwD">
                  <property role="3oM_SC" value="associations" />
                </node>
                <node concept="3oM_SD" id="6uOEOYR9sfV" role="1PaTwD">
                  <property role="3oM_SC" value="(generally" />
                </node>
                <node concept="3oM_SD" id="6uOEOYR9shk" role="1PaTwD">
                  <property role="3oM_SC" value="it's" />
                </node>
                <node concept="3oM_SD" id="6uOEOYR9sj9" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="6uOEOYR9sjj" role="1PaTwD">
                  <property role="3oM_SC" value="one" />
                </node>
                <node concept="3oM_SD" id="6uOEOYR9slm" role="1PaTwD">
                  <property role="3oM_SC" value="copiedSourceNode" />
                </node>
                <node concept="3oM_SD" id="6uOEOYR9smo" role="1PaTwD">
                  <property role="3oM_SC" value="was" />
                </node>
                <node concept="3oM_SD" id="6uOEOYR9snr" role="1PaTwD">
                  <property role="3oM_SC" value="copied" />
                </node>
                <node concept="3oM_SD" id="6uOEOYR9spK" role="1PaTwD">
                  <property role="3oM_SC" value="from," />
                </node>
                <node concept="3oM_SD" id="6uOEOYR9sqP" role="1PaTwD">
                  <property role="3oM_SC" value="except" />
                </node>
                <node concept="3oM_SD" id="6uOEOYR9sr5" role="1PaTwD">
                  <property role="3oM_SC" value="for" />
                </node>
                <node concept="3oM_SD" id="6uOEOYR9srL" role="1PaTwD">
                  <property role="3oM_SC" value="pre-processing" />
                </node>
                <node concept="3oM_SD" id="6uOEOYR9sv0" role="1PaTwD">
                  <property role="3oM_SC" value="case)" />
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="75qA1j03qWq" role="3cqZAp">
              <node concept="2GrKxI" id="75qA1j03qWs" role="2Gsz3X">
                <property role="TrG5h" value="assoc" />
              </node>
              <node concept="2OqwBi" id="75qA1j03yyW" role="2GsD0m">
                <node concept="37vLTw" id="6uOEOYR8F_e" role="2Oq$k0">
                  <ref role="3cqZAo" node="6uOEOYR8j_p" resolve="sourceNode" />
                </node>
                <node concept="liA8E" id="75qA1j03$Qq" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getReferences()" resolve="getReferences" />
                </node>
              </node>
              <node concept="3clFbS" id="75qA1j03qWw" role="2LFqv$">
                <node concept="3cpWs8" id="75qA1j03HmM" role="3cqZAp">
                  <node concept="3cpWsn" id="75qA1j03HmN" role="3cpWs9">
                    <property role="TrG5h" value="targetNode" />
                    <node concept="3uibUv" id="75qA1j03Go7" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="75qA1j03HmO" role="33vP2m">
                      <node concept="2GrUjf" id="75qA1j03HmP" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="75qA1j03qWs" resolve="assoc" />
                      </node>
                      <node concept="liA8E" id="75qA1j03HmQ" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SReference.getTargetNode()" resolve="getTargetNode" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="75qA1j055Cs" role="3cqZAp">
                  <node concept="3cpWsn" id="75qA1j055Ct" role="3cpWs9">
                    <property role="TrG5h" value="targetModel" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3uibUv" id="75qA1j055Cu" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="2KIY_iDcKFU" role="3cqZAp">
                  <node concept="3cpWsn" id="2KIY_iDcKFV" role="3cpWs9">
                    <property role="TrG5h" value="link" />
                    <node concept="3uibUv" id="2KIY_iDcI_2" role="1tU5fm">
                      <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
                    </node>
                    <node concept="2OqwBi" id="2KIY_iDcKFW" role="33vP2m">
                      <node concept="2GrUjf" id="2KIY_iDcKFX" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="75qA1j03qWs" resolve="assoc" />
                      </node>
                      <node concept="liA8E" id="2KIY_iDcKFY" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SReference.getLink()" resolve="getLink" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="75qA1j05zNG" role="3cqZAp">
                  <node concept="3clFbS" id="75qA1j05zNI" role="3clFbx">
                    <node concept="3clFbF" id="75qA1j09ntr" role="3cqZAp">
                      <node concept="37vLTI" id="75qA1j09ntt" role="3clFbG">
                        <node concept="2OqwBi" id="75qA1j05iFp" role="37vLTx">
                          <node concept="2GrUjf" id="75qA1j05hQb" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="75qA1j03qWs" resolve="assoc" />
                          </node>
                          <node concept="liA8E" id="75qA1j05n4K" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SReference.getTargetSModelReference()" resolve="getTargetSModelReference" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="75qA1j09ntx" role="37vLTJ">
                          <ref role="3cqZAo" node="75qA1j055Ct" resolve="targetModel" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="75qA1j077K_" role="3cqZAp">
                      <node concept="2OqwBi" id="75qA1j07bVe" role="3clFbG">
                        <node concept="37vLTw" id="75qA1j077Kz" role="2Oq$k0">
                          <ref role="3cqZAo" node="75qA1j06A_q" resolve="copiedLinks" />
                        </node>
                        <node concept="liA8E" id="75qA1j07gdZ" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object)" resolve="add" />
                          <node concept="2YIFZM" id="2iW0Thbr4w2" role="37wK5m">
                            <ref role="37wK5l" to="qzxo:~AssociationLink.create(org.jetbrains.mps.openapi.language.SReferenceLink,org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.ResolveInfo)" resolve="create" />
                            <ref role="1Pybhc" to="qzxo:~AssociationLink" resolve="AssociationLink" />
                            <node concept="37vLTw" id="2KIY_iDcKG0" role="37wK5m">
                              <ref role="3cqZAo" node="2KIY_iDcKFV" resolve="link" />
                            </node>
                            <node concept="2GrUjf" id="6uOEOYR98Wi" role="37wK5m">
                              <ref role="2Gs0qQ" node="75qA1j02SQ2" resolve="copiedSourceNode" />
                            </node>
                            <node concept="2OqwBi" id="75qA1j07nVT" role="37wK5m">
                              <node concept="2GrUjf" id="75qA1j07lcM" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="75qA1j03qWs" resolve="assoc" />
                              </node>
                              <node concept="liA8E" id="75qA1j07rfH" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SReference.describeTarget()" resolve="describeTarget" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbC" id="75qA1j05CGy" role="3clFbw">
                    <node concept="10Nm6u" id="75qA1j05EOi" role="3uHU7w" />
                    <node concept="37vLTw" id="75qA1j05A0x" role="3uHU7B">
                      <ref role="3cqZAo" node="75qA1j03HmN" resolve="targetNode" />
                    </node>
                  </node>
                  <node concept="9aQIb" id="75qA1j06e$w" role="9aQIa">
                    <node concept="3clFbS" id="75qA1j06e$x" role="9aQI4">
                      <node concept="3cpWs8" id="75qA1j06jX_" role="3cqZAp">
                        <node concept="3cpWsn" id="75qA1j06jXA" role="3cpWs9">
                          <property role="TrG5h" value="newTargetNode" />
                          <node concept="3Tqbb2" id="75qA1j06hRY" role="1tU5fm" />
                          <node concept="2OqwBi" id="75qA1j06jXB" role="33vP2m">
                            <node concept="37vLTw" id="75qA1j06jXC" role="2Oq$k0">
                              <ref role="3cqZAo" node="5tGs5KqKiyA" resolve="sourceNodesToNewNodes" />
                            </node>
                            <node concept="liA8E" id="75qA1j06jXD" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                              <node concept="37vLTw" id="75qA1j06jXE" role="37wK5m">
                                <ref role="3cqZAo" node="75qA1j03HmN" resolve="targetNode" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="75qA1j03WHO" role="3cqZAp">
                        <node concept="3clFbS" id="75qA1j03WHQ" role="3clFbx">
                          <node concept="3SKdUt" id="75qA1j06v5F" role="3cqZAp">
                            <node concept="1PaTwC" id="75qA1j06v5G" role="1aUNEU">
                              <node concept="3oM_SD" id="75qA1j06xxr" role="1PaTwD">
                                <property role="3oM_SC" value="link" />
                              </node>
                              <node concept="3oM_SD" id="75qA1j06xxt" role="1PaTwD">
                                <property role="3oM_SC" value="within" />
                              </node>
                              <node concept="3oM_SD" id="75qA1j06xxw" role="1PaTwD">
                                <property role="3oM_SC" value="copied" />
                              </node>
                              <node concept="3oM_SD" id="75qA1j06xx$" role="1PaTwD">
                                <property role="3oM_SC" value="node" />
                              </node>
                              <node concept="3oM_SD" id="75qA1j06xxN" role="1PaTwD">
                                <property role="3oM_SC" value="hierarchy" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="75qA1j0980m" role="3cqZAp">
                            <node concept="2OqwBi" id="75qA1j0980n" role="3clFbG">
                              <node concept="37vLTw" id="75qA1j0980o" role="2Oq$k0">
                                <ref role="3cqZAo" node="75qA1j06A_q" resolve="copiedLinks" />
                              </node>
                              <node concept="liA8E" id="75qA1j0980p" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object)" resolve="add" />
                                <node concept="2YIFZM" id="2iW0ThbrxpK" role="37wK5m">
                                  <ref role="1Pybhc" to="qzxo:~AssociationLink" resolve="AssociationLink" />
                                  <ref role="37wK5l" to="qzxo:~AssociationLink.create(org.jetbrains.mps.openapi.language.SReferenceLink,org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode)" resolve="create" />
                                  <node concept="37vLTw" id="2KIY_iDcKG1" role="37wK5m">
                                    <ref role="3cqZAo" node="2KIY_iDcKFV" resolve="link" />
                                  </node>
                                  <node concept="2GrUjf" id="6uOEOYR9cq0" role="37wK5m">
                                    <ref role="2Gs0qQ" node="75qA1j02SQ2" resolve="copiedSourceNode" />
                                  </node>
                                  <node concept="37vLTw" id="2iW0ThbrE9U" role="37wK5m">
                                    <ref role="3cqZAo" node="75qA1j06jXA" resolve="newTargetNode" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="75qA1j09FjQ" role="3cqZAp">
                            <node concept="37vLTI" id="75qA1j09GFD" role="3clFbG">
                              <node concept="10Nm6u" id="75qA1j09HHe" role="37vLTx" />
                              <node concept="37vLTw" id="75qA1j09FjO" role="37vLTJ">
                                <ref role="3cqZAo" node="75qA1j055Ct" resolve="targetModel" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3y3z36" id="75qA1j04JwQ" role="3clFbw">
                          <node concept="10Nm6u" id="75qA1j04Mfc" role="3uHU7w" />
                          <node concept="37vLTw" id="75qA1j06jXF" role="3uHU7B">
                            <ref role="3cqZAo" node="75qA1j06jXA" resolve="newTargetNode" />
                          </node>
                        </node>
                        <node concept="9aQIb" id="75qA1j04Ob7" role="9aQIa">
                          <node concept="3clFbS" id="75qA1j04Ob8" role="9aQI4">
                            <node concept="3SKdUt" id="75qA1j08XYp" role="3cqZAp">
                              <node concept="1PaTwC" id="75qA1j08XYq" role="1aUNEU">
                                <node concept="3oM_SD" id="75qA1j090ru" role="1PaTwD">
                                  <property role="3oM_SC" value="outside" />
                                </node>
                                <node concept="3oM_SD" id="75qA1j090rw" role="1PaTwD">
                                  <property role="3oM_SC" value="of" />
                                </node>
                                <node concept="3oM_SD" id="75qA1j090rz" role="1PaTwD">
                                  <property role="3oM_SC" value="copied" />
                                </node>
                                <node concept="3oM_SD" id="75qA1j0aNwS" role="1PaTwD">
                                  <property role="3oM_SC" value="hierarchy" />
                                </node>
                              </node>
                            </node>
                            <node concept="3SKdUt" id="75qA1j0aYeH" role="3cqZAp">
                              <node concept="1PaTwC" id="75qA1j0aYeI" role="1aUNEU">
                                <node concept="3oM_SD" id="75qA1j0b0qe" role="1PaTwD">
                                  <property role="3oM_SC" value="Next" />
                                </node>
                                <node concept="3oM_SD" id="75qA1j0b0qg" role="1PaTwD">
                                  <property role="3oM_SC" value="comment" />
                                </node>
                                <node concept="3oM_SD" id="75qA1j0b0qj" role="1PaTwD">
                                  <property role="3oM_SC" value="comes" />
                                </node>
                                <node concept="3oM_SD" id="75qA1j0b0qn" role="1PaTwD">
                                  <property role="3oM_SC" value="from" />
                                </node>
                                <node concept="3oM_SD" id="75qA1j0b0qs" role="1PaTwD">
                                  <property role="3oM_SC" value="the" />
                                </node>
                                <node concept="3oM_SD" id="75qA1j0b0qy" role="1PaTwD">
                                  <property role="3oM_SC" value="original" />
                                </node>
                                <node concept="3oM_SD" id="75qA1j0b0rr" role="1PaTwD">
                                  <property role="3oM_SC" value="code" />
                                </node>
                                <node concept="3oM_SD" id="75qA1j0b0rA" role="1PaTwD">
                                  <property role="3oM_SC" value="(is" />
                                </node>
                                <node concept="3oM_SD" id="75qA1j0b0qU" role="1PaTwD">
                                  <property role="3oM_SC" value="it" />
                                </node>
                                <node concept="3oM_SD" id="75qA1j0b0r4" role="1PaTwD">
                                  <property role="3oM_SC" value="still" />
                                </node>
                                <node concept="3oM_SD" id="75qA1j0b0rf" role="1PaTwD">
                                  <property role="3oM_SC" value="relevant):" />
                                </node>
                              </node>
                            </node>
                            <node concept="3SKdUt" id="75qA1j0aQM8" role="3cqZAp">
                              <node concept="1PaTwC" id="75qA1j0aQM9" role="1aUNEU">
                                <node concept="3oM_SD" id="75qA1j0aQMa" role="1PaTwD">
                                  <property role="3oM_SC" value="XXX" />
                                </node>
                                <node concept="3oM_SD" id="75qA1j0aQMb" role="1PaTwD">
                                  <property role="3oM_SC" value="oldTargetNode.model" />
                                </node>
                                <node concept="3oM_SD" id="75qA1j0aQMc" role="1PaTwD">
                                  <property role="3oM_SC" value="can" />
                                </node>
                                <node concept="3oM_SD" id="75qA1j0aQMd" role="1PaTwD">
                                  <property role="3oM_SC" value="be" />
                                </node>
                                <node concept="3oM_SD" id="75qA1j0aQMe" role="1PaTwD">
                                  <property role="3oM_SC" value="null" />
                                </node>
                                <node concept="3oM_SD" id="75qA1j0aQMf" role="1PaTwD">
                                  <property role="3oM_SC" value="in" />
                                </node>
                                <node concept="3oM_SD" id="75qA1j0aQMg" role="1PaTwD">
                                  <property role="3oM_SC" value="case" />
                                </node>
                                <node concept="3oM_SD" id="75qA1j0aQMh" role="1PaTwD">
                                  <property role="3oM_SC" value="it" />
                                </node>
                                <node concept="3oM_SD" id="75qA1j0aQMi" role="1PaTwD">
                                  <property role="3oM_SC" value="comes" />
                                </node>
                                <node concept="3oM_SD" id="75qA1j0aQMj" role="1PaTwD">
                                  <property role="3oM_SC" value="from" />
                                </node>
                                <node concept="3oM_SD" id="75qA1j0aQMk" role="1PaTwD">
                                  <property role="3oM_SC" value="generation" />
                                </node>
                                <node concept="3oM_SD" id="75qA1j0aQMl" role="1PaTwD">
                                  <property role="3oM_SC" value="process," />
                                </node>
                                <node concept="3oM_SD" id="75qA1j0aQMm" role="1PaTwD">
                                  <property role="3oM_SC" value="see" />
                                </node>
                                <node concept="3oM_SD" id="75qA1j0aQMn" role="1PaTwD">
                                  <property role="3oM_SC" value="MPS-24188;" />
                                </node>
                                <node concept="3oM_SD" id="75qA1j0aQMo" role="1PaTwD">
                                  <property role="3oM_SC" value="this" />
                                </node>
                                <node concept="3oM_SD" id="75qA1j0aQMp" role="1PaTwD">
                                  <property role="3oM_SC" value="may" />
                                </node>
                                <node concept="3oM_SD" id="75qA1j0aQMq" role="1PaTwD">
                                  <property role="3oM_SC" value="be" />
                                </node>
                                <node concept="3oM_SD" id="75qA1j0aQMr" role="1PaTwD">
                                  <property role="3oM_SC" value="fixed" />
                                </node>
                                <node concept="3oM_SD" id="75qA1j0aQMs" role="1PaTwD">
                                  <property role="3oM_SC" value="when" />
                                </node>
                                <node concept="3oM_SD" id="75qA1j0aQMt" role="1PaTwD">
                                  <property role="3oM_SC" value="MPS-23902" />
                                </node>
                                <node concept="3oM_SD" id="75qA1j0aQMu" role="1PaTwD">
                                  <property role="3oM_SC" value="is" />
                                </node>
                                <node concept="3oM_SD" id="75qA1j0aQMv" role="1PaTwD">
                                  <property role="3oM_SC" value="fixed" />
                                </node>
                              </node>
                            </node>
                            <node concept="3SKdUt" id="4$xjawwB1Ze" role="3cqZAp">
                              <node concept="1PaTwC" id="4$xjawwB1Zf" role="1aUNEU">
                                <node concept="3oM_SD" id="4$xjawwB7o5" role="1PaTwD">
                                  <property role="3oM_SC" value="MPS-38564" />
                                </node>
                                <node concept="3oM_SD" id="4$xjawwB7om" role="1PaTwD">
                                  <property role="3oM_SC" value="-" />
                                </node>
                                <node concept="3oM_SD" id="4$xjawwB7pt" role="1PaTwD">
                                  <property role="3oM_SC" value="get" />
                                </node>
                                <node concept="3oM_SD" id="4$xjawwB7P4" role="1PaTwD">
                                  <property role="3oM_SC" value="an" />
                                </node>
                                <node concept="3oM_SD" id="4$xjawwB7Rv" role="1PaTwD">
                                  <property role="3oM_SC" value="updated" />
                                </node>
                                <node concept="3oM_SD" id="4$xjawwB7qO" role="1PaTwD">
                                  <property role="3oM_SC" value="resolve" />
                                </node>
                                <node concept="3oM_SD" id="4$xjawwB7sq" role="1PaTwD">
                                  <property role="3oM_SC" value="info" />
                                </node>
                                <node concept="3oM_SD" id="4$xjawwB7$E" role="1PaTwD">
                                  <property role="3oM_SC" value="of" />
                                </node>
                                <node concept="3oM_SD" id="4$xjawwB7_K" role="1PaTwD">
                                  <property role="3oM_SC" value="the" />
                                </node>
                                <node concept="3oM_SD" id="4$xjawwB7_L" role="1PaTwD">
                                  <property role="3oM_SC" value="original" />
                                </node>
                                <node concept="3oM_SD" id="4$xjawwB7Bn" role="1PaTwD">
                                  <property role="3oM_SC" value="node" />
                                </node>
                                <node concept="3oM_SD" id="4$xjawwB7BC" role="1PaTwD">
                                  <property role="3oM_SC" value="to" />
                                </node>
                                <node concept="3oM_SD" id="4$xjawwB7CY" role="1PaTwD">
                                  <property role="3oM_SC" value="hand" />
                                </node>
                                <node concept="3oM_SD" id="4$xjawwB7E$" role="1PaTwD">
                                  <property role="3oM_SC" value="it" />
                                </node>
                                <node concept="3oM_SD" id="4$xjawwB7Hx" role="1PaTwD">
                                  <property role="3oM_SC" value="over" />
                                </node>
                                <node concept="3oM_SD" id="4$xjawwB7IR" role="1PaTwD">
                                  <property role="3oM_SC" value="to" />
                                </node>
                                <node concept="3oM_SD" id="4$xjawwB7IS" role="1PaTwD">
                                  <property role="3oM_SC" value="the" />
                                </node>
                                <node concept="3oM_SD" id="4$xjawwB7IT" role="1PaTwD">
                                  <property role="3oM_SC" value="copied" />
                                </node>
                                <node concept="3oM_SD" id="4$xjawwB7L$" role="1PaTwD">
                                  <property role="3oM_SC" value="reference" />
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="3OGmu46mzj_" role="3cqZAp">
                              <node concept="3cpWsn" id="3OGmu46mzjA" role="3cpWs9">
                                <property role="TrG5h" value="assocScope" />
                                <node concept="3uibUv" id="3OGmu46mwKh" role="1tU5fm">
                                  <ref role="3uigEE" to="c17a:~SScope" resolve="SScope" />
                                </node>
                                <node concept="3K4zz7" id="2KIY_iDcZzl" role="33vP2m">
                                  <node concept="10Nm6u" id="2KIY_iDd3Lq" role="3K4GZi" />
                                  <node concept="1Wc70l" id="2KIY_iDdeIc" role="3K4Cdx">
                                    <node concept="3y3z36" id="2KIY_iDdkwG" role="3uHU7w">
                                      <node concept="10Nm6u" id="2KIY_iDdmPn" role="3uHU7w" />
                                      <node concept="37vLTw" id="2KIY_iDdigO" role="3uHU7B">
                                        <ref role="3cqZAo" node="6uOEOYR8j_p" resolve="sourceNode" />
                                      </node>
                                    </node>
                                    <node concept="3y3z36" id="2KIY_iDcTVo" role="3uHU7B">
                                      <node concept="37vLTw" id="2KIY_iDcSFq" role="3uHU7B">
                                        <ref role="3cqZAo" node="2KIY_iDcKFV" resolve="link" />
                                      </node>
                                      <node concept="10Nm6u" id="2KIY_iDcWnC" role="3uHU7w" />
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="3OGmu46mzjB" role="3K4E3e">
                                    <node concept="37vLTw" id="2KIY_iDcKFZ" role="2Oq$k0">
                                      <ref role="3cqZAo" node="2KIY_iDcKFV" resolve="link" />
                                    </node>
                                    <node concept="liA8E" id="3OGmu46mzjF" role="2OqNvi">
                                      <ref role="37wK5l" to="c17a:~SReferenceLink.getScope(org.jetbrains.mps.openapi.model.SNode)" resolve="getScope" />
                                      <node concept="37vLTw" id="3OGmu46mzjG" role="37wK5m">
                                        <ref role="3cqZAo" node="6uOEOYR8j_p" resolve="sourceNode" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="7We4oI0o3Ye" role="3cqZAp">
                              <node concept="3cpWsn" id="7We4oI0o3Yf" role="3cpWs9">
                                <property role="TrG5h" value="resolveInfoStr" />
                                <node concept="17QB3L" id="7We4oI0o3Yg" role="1tU5fm" />
                                <node concept="10Nm6u" id="1bE02VtQf1N" role="33vP2m" />
                              </node>
                            </node>
                            <node concept="3J1_TO" id="1bE02VtQjpE" role="3cqZAp">
                              <node concept="3uVAMA" id="1bE02VtQmDh" role="1zxBo5">
                                <node concept="XOnhg" id="1bE02VtQmDi" role="1zc67B">
                                  <property role="TrG5h" value="e" />
                                  <node concept="nSUau" id="1bE02VtQmDj" role="1tU5fm">
                                    <node concept="3uibUv" id="1bE02VtQoW3" role="nSUat">
                                      <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbS" id="1bE02VtQmDk" role="1zc67A">
                                  <node concept="RRSsy" id="1bE02VtQBr_" role="3cqZAp">
                                    <property role="RRSoG" value="gZ5fksE/warn" />
                                    <node concept="2YIFZM" id="1bE02VtR4Kx" role="RRSoy">
                                      <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                                      <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                                      <node concept="Xl_RD" id="1bE02VtQBrB" role="37wK5m">
                                        <property role="Xl_RC" value="CopyPasteUtil: Error obtaining %s from the scope %s" />
                                      </node>
                                      <node concept="37vLTw" id="1bE02VtRmSX" role="37wK5m">
                                        <ref role="3cqZAo" node="75qA1j03HmN" resolve="targetNode" />
                                      </node>
                                      <node concept="2OqwBi" id="1bE02VtRw4z" role="37wK5m">
                                        <node concept="37vLTw" id="1bE02VtRsHv" role="2Oq$k0">
                                          <ref role="3cqZAo" node="3OGmu46mzjA" resolve="assocScope" />
                                        </node>
                                        <node concept="liA8E" id="1bE02VtR$5Q" role="2OqNvi">
                                          <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="37vLTw" id="1bE02VtRCkj" role="RRSow">
                                      <ref role="3cqZAo" node="1bE02VtQmDi" resolve="e" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbS" id="1bE02VtQjpG" role="1zxBo7">
                                <node concept="3clFbF" id="1bE02VtQa1g" role="3cqZAp">
                                  <node concept="37vLTI" id="1bE02VtQa1i" role="3clFbG">
                                    <node concept="3K4zz7" id="7We4oI0o3Yh" role="37vLTx">
                                      <node concept="3y3z36" id="2KIY_iDd6TV" role="3K4Cdx">
                                        <node concept="37vLTw" id="7We4oI0o3Yk" role="3uHU7B">
                                          <ref role="3cqZAo" node="3OGmu46mzjA" resolve="assocScope" />
                                        </node>
                                        <node concept="10Nm6u" id="7We4oI0o3Yj" role="3uHU7w" />
                                      </node>
                                      <node concept="2OqwBi" id="2KIY_iDd6TZ" role="3K4E3e">
                                        <node concept="37vLTw" id="2KIY_iDd6U0" role="2Oq$k0">
                                          <ref role="3cqZAo" node="3OGmu46mzjA" resolve="assocScope" />
                                        </node>
                                        <node concept="liA8E" id="2KIY_iDd6U1" role="2OqNvi">
                                          <ref role="37wK5l" to="c17a:~SScope.getReferenceText(org.jetbrains.mps.openapi.model.SNode)" resolve="getReferenceText" />
                                          <node concept="37vLTw" id="2KIY_iDd6U2" role="37wK5m">
                                            <ref role="3cqZAo" node="75qA1j03HmN" resolve="targetNode" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="10Nm6u" id="2KIY_iDd6TY" role="3K4GZi" />
                                    </node>
                                    <node concept="37vLTw" id="1bE02VtQa1m" role="37vLTJ">
                                      <ref role="3cqZAo" node="7We4oI0o3Yf" resolve="resolveInfoStr" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="43p9qEomcO" role="3cqZAp">
                              <node concept="3cpWsn" id="43p9qEomcR" role="3cpWs9">
                                <property role="TrG5h" value="isTargetNodeRoot" />
                                <node concept="10P_77" id="43p9qEomcT" role="1tU5fm" />
                                <node concept="1Wc70l" id="43p9qEomcU" role="33vP2m">
                                  <node concept="3y3z36" id="43p9qEomcX" role="3uHU7B">
                                    <node concept="2OqwBi" id="43p9qEomd0" role="3uHU7B">
                                      <node concept="37vLTw" id="43p9qEomd3" role="2Oq$k0">
                                        <ref role="3cqZAo" node="75qA1j03HmN" resolve="targetNode" />
                                      </node>
                                      <node concept="liA8E" id="43p9qEomd4" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                                      </node>
                                    </node>
                                    <node concept="10Nm6u" id="43p9qEomd5" role="3uHU7w" />
                                  </node>
                                  <node concept="3clFbC" id="43p9qEomd6" role="3uHU7w">
                                    <node concept="2OqwBi" id="43p9qEomd9" role="3uHU7B">
                                      <node concept="37vLTw" id="43p9qEomdc" role="2Oq$k0">
                                        <ref role="3cqZAo" node="75qA1j03HmN" resolve="targetNode" />
                                      </node>
                                      <node concept="liA8E" id="43p9qEomdd" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SNode.getParent()" resolve="getParent" />
                                      </node>
                                    </node>
                                    <node concept="10Nm6u" id="43p9qEomde" role="3uHU7w" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="4XQKOpA13Lk" role="3cqZAp">
                              <node concept="3cpWsn" id="4XQKOpA13Ll" role="3cpWs9">
                                <property role="TrG5h" value="resolveInfo" />
                                <node concept="3uibUv" id="4XQKOpA13Lm" role="1tU5fm">
                                  <ref role="3uigEE" to="mhbf:~ResolveInfo" resolve="ResolveInfo" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="4XQKOpA1d_g" role="3cqZAp">
                              <node concept="3clFbS" id="4XQKOpA1d_i" role="3clFbx">
                                <node concept="3clFbF" id="4XQKOpA1Msx" role="3cqZAp">
                                  <node concept="37vLTI" id="4XQKOpA1Q6T" role="3clFbG">
                                    <node concept="3K4zz7" id="4XQKOpA245z" role="37vLTx">
                                      <node concept="37vLTw" id="4XQKOpA27rl" role="3K4E3e">
                                        <ref role="3cqZAo" node="7We4oI0o3Yf" resolve="resolveInfoStr" />
                                      </node>
                                      <node concept="2YIFZM" id="4XQKOpA2i2k" role="3K4GZi">
                                        <ref role="37wK5l" to="i8bi:5IkW5anFcxF" resolve="getResolveInfo" />
                                        <ref role="1Pybhc" to="i8bi:5IkW5anFcpd" resolve="SLinkOperations" />
                                        <node concept="2GrUjf" id="4XQKOpA2krW" role="37wK5m">
                                          <ref role="2Gs0qQ" node="75qA1j03qWs" resolve="assoc" />
                                        </node>
                                      </node>
                                      <node concept="3y3z36" id="4XQKOpA1XEZ" role="3K4Cdx">
                                        <node concept="10Nm6u" id="4XQKOpA20xg" role="3uHU7w" />
                                        <node concept="37vLTw" id="4XQKOpA1U0t" role="3uHU7B">
                                          <ref role="3cqZAo" node="7We4oI0o3Yf" resolve="resolveInfoStr" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="37vLTw" id="4XQKOpA1Msv" role="37vLTJ">
                                      <ref role="3cqZAo" node="7We4oI0o3Yf" resolve="resolveInfoStr" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="4XQKOpA2q6z" role="3cqZAp">
                                  <node concept="37vLTI" id="4XQKOpA2CMJ" role="3clFbG">
                                    <node concept="2YIFZM" id="4XQKOpA2PqG" role="37vLTx">
                                      <ref role="37wK5l" to="mhbf:~ResolveInfo.of(org.jetbrains.mps.openapi.model.SNodeReference,java.lang.String)" resolve="of" />
                                      <ref role="1Pybhc" to="mhbf:~ResolveInfo" resolve="ResolveInfo" />
                                      <node concept="2OqwBi" id="4XQKOpA300Q" role="37wK5m">
                                        <node concept="37vLTw" id="4XQKOpA2YHo" role="2Oq$k0">
                                          <ref role="3cqZAo" node="75qA1j03HmN" resolve="targetNode" />
                                        </node>
                                        <node concept="liA8E" id="4XQKOpA33y4" role="2OqNvi">
                                          <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
                                        </node>
                                      </node>
                                      <node concept="37vLTw" id="4XQKOpA38qJ" role="37wK5m">
                                        <ref role="3cqZAo" node="7We4oI0o3Yf" resolve="resolveInfoStr" />
                                      </node>
                                    </node>
                                    <node concept="37vLTw" id="4XQKOpA2q6x" role="37vLTJ">
                                      <ref role="3cqZAo" node="4XQKOpA13Ll" resolve="resolveInfo" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="37vLTw" id="43p9qEou3_" role="3clFbw">
                                <ref role="3cqZAo" node="43p9qEomcR" resolve="isTargetNodeRoot" />
                              </node>
                              <node concept="9aQIb" id="4XQKOpA3g5B" role="9aQIa">
                                <node concept="3clFbS" id="4XQKOpA3g5C" role="9aQI4">
                                  <node concept="3clFbF" id="4XQKOpA3kHS" role="3cqZAp">
                                    <node concept="37vLTI" id="4XQKOpA3nM$" role="3clFbG">
                                      <node concept="3K4zz7" id="4XQKOpA3zte" role="37vLTx">
                                        <node concept="2YIFZM" id="4XQKOpA3Q6M" role="3K4E3e">
                                          <ref role="37wK5l" to="mhbf:~ResolveInfo.of(org.jetbrains.mps.openapi.model.SNodeReference,java.lang.String)" resolve="of" />
                                          <ref role="1Pybhc" to="mhbf:~ResolveInfo" resolve="ResolveInfo" />
                                          <node concept="2OqwBi" id="4XQKOpA3Whp" role="37wK5m">
                                            <node concept="37vLTw" id="4XQKOpA3TSk" role="2Oq$k0">
                                              <ref role="3cqZAo" node="75qA1j03HmN" resolve="targetNode" />
                                            </node>
                                            <node concept="liA8E" id="4XQKOpA3ZX2" role="2OqNvi">
                                              <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
                                            </node>
                                          </node>
                                          <node concept="37vLTw" id="4XQKOpA43N6" role="37wK5m">
                                            <ref role="3cqZAo" node="7We4oI0o3Yf" resolve="resolveInfoStr" />
                                          </node>
                                        </node>
                                        <node concept="2OqwBi" id="4XQKOpA48Xk" role="3K4GZi">
                                          <node concept="2GrUjf" id="4XQKOpA47B7" role="2Oq$k0">
                                            <ref role="2Gs0qQ" node="75qA1j03qWs" resolve="assoc" />
                                          </node>
                                          <node concept="liA8E" id="4XQKOpA4duh" role="2OqNvi">
                                            <ref role="37wK5l" to="mhbf:~SReference.describeTarget()" resolve="describeTarget" />
                                          </node>
                                        </node>
                                        <node concept="3y3z36" id="4XQKOpA3ve9" role="3K4Cdx">
                                          <node concept="10Nm6u" id="4XQKOpA3y9N" role="3uHU7w" />
                                          <node concept="37vLTw" id="4XQKOpA3r2U" role="3uHU7B">
                                            <ref role="3cqZAo" node="7We4oI0o3Yf" resolve="resolveInfoStr" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="37vLTw" id="4XQKOpA3kHQ" role="37vLTJ">
                                        <ref role="3cqZAo" node="4XQKOpA13Ll" resolve="resolveInfo" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="3hjH0HOon6A" role="3cqZAp">
                              <node concept="2OqwBi" id="3hjH0HOotYP" role="3clFbG">
                                <node concept="37vLTw" id="3hjH0HOon6$" role="2Oq$k0">
                                  <ref role="3cqZAo" node="75qA1j06A_q" resolve="copiedLinks" />
                                </node>
                                <node concept="liA8E" id="3hjH0HOoyhs" role="2OqNvi">
                                  <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object)" resolve="add" />
                                  <node concept="2YIFZM" id="3hjH0HOo$aS" role="37wK5m">
                                    <ref role="37wK5l" to="qzxo:~AssociationLink.create(org.jetbrains.mps.openapi.language.SReferenceLink,org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.ResolveInfo)" resolve="create" />
                                    <ref role="1Pybhc" to="qzxo:~AssociationLink" resolve="AssociationLink" />
                                    <node concept="37vLTw" id="3hjH0HOo$mk" role="37wK5m">
                                      <ref role="3cqZAo" node="2KIY_iDcKFV" resolve="link" />
                                    </node>
                                    <node concept="2GrUjf" id="3hjH0HOo$AJ" role="37wK5m">
                                      <ref role="2Gs0qQ" node="75qA1j02SQ2" resolve="copiedSourceNode" />
                                    </node>
                                    <node concept="37vLTw" id="3hjH0HOo$Ue" role="37wK5m">
                                      <ref role="3cqZAo" node="4XQKOpA13Ll" resolve="resolveInfo" />
                                    </node>
                                    <node concept="3fqX7Q" id="3hjH0HOo_5a" role="37wK5m">
                                      <node concept="37vLTw" id="3hjH0HOo_qW" role="3fr31v">
                                        <ref role="3cqZAo" node="43p9qEomcR" resolve="isTargetNodeRoot" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="75qA1j09NiG" role="3cqZAp">
                              <node concept="37vLTI" id="75qA1j09Qjg" role="3clFbG">
                                <node concept="2OqwBi" id="75qA1j0awma" role="37vLTx">
                                  <node concept="2OqwBi" id="75qA1j0arBL" role="2Oq$k0">
                                    <node concept="37vLTw" id="75qA1j0aqy1" role="2Oq$k0">
                                      <ref role="3cqZAo" node="75qA1j03HmN" resolve="targetNode" />
                                    </node>
                                    <node concept="liA8E" id="75qA1j0auTq" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="75qA1j0a$Zz" role="2OqNvi">
                                    <ref role="37wK5l" to="mhbf:~SNodeReference.getModelReference()" resolve="getModelReference" />
                                  </node>
                                </node>
                                <node concept="37vLTw" id="75qA1j09NiE" role="37vLTJ">
                                  <ref role="3cqZAo" node="75qA1j055Ct" resolve="targetModel" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="75qA1j05QJf" role="3cqZAp">
                  <node concept="3clFbS" id="75qA1j05QJh" role="3clFbx">
                    <node concept="3SKdUt" id="75qA1j0aCS7" role="3cqZAp">
                      <node concept="1PaTwC" id="75qA1j0aCS8" role="1aUNEU">
                        <node concept="3oM_SD" id="75qA1j0aEaa" role="1PaTwD">
                          <property role="3oM_SC" value="" />
                        </node>
                        <node concept="3oM_SD" id="75qA1j0aH0q" role="1PaTwD">
                          <property role="3oM_SC" value="&amp;&amp;" />
                        </node>
                        <node concept="3oM_SD" id="75qA1j0aEaC" role="1PaTwD">
                          <property role="3oM_SC" value="!targetModel.equals(model.pointer)," />
                        </node>
                        <node concept="3oM_SD" id="75qA1j0aEb_" role="1PaTwD">
                          <property role="3oM_SC" value="perhaps?" />
                        </node>
                        <node concept="3oM_SD" id="75qA1j0aEaS" role="1PaTwD">
                          <property role="3oM_SC" value="although" />
                        </node>
                        <node concept="3oM_SD" id="75qA1j0aEaX" role="1PaTwD">
                          <property role="3oM_SC" value="this" />
                        </node>
                        <node concept="3oM_SD" id="75qA1j0aEb3" role="1PaTwD">
                          <property role="3oM_SC" value="might" />
                        </node>
                        <node concept="3oM_SD" id="75qA1j0aEba" role="1PaTwD">
                          <property role="3oM_SC" value="be" />
                        </node>
                        <node concept="3oM_SD" id="75qA1j0aEbi" role="1PaTwD">
                          <property role="3oM_SC" value="more" />
                        </node>
                        <node concept="3oM_SD" id="75qA1j0aEbI" role="1PaTwD">
                          <property role="3oM_SC" value="suited" />
                        </node>
                        <node concept="3oM_SD" id="75qA1j0aEbS" role="1PaTwD">
                          <property role="3oM_SC" value="for" />
                        </node>
                        <node concept="3oM_SD" id="75qA1j0aEc3" role="1PaTwD">
                          <property role="3oM_SC" value="'paste'" />
                        </node>
                        <node concept="3oM_SD" id="75qA1j0aEcf" role="1PaTwD">
                          <property role="3oM_SC" value="check" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="75qA1j04Qqy" role="3cqZAp">
                      <node concept="2OqwBi" id="75qA1j04Tlw" role="3clFbG">
                        <node concept="37vLTw" id="75qA1j04Qqx" role="2Oq$k0">
                          <ref role="3cqZAo" node="5tGs5KqKize" resolve="necessaryModels" />
                        </node>
                        <node concept="TSZUe" id="75qA1j04WSl" role="2OqNvi">
                          <node concept="37vLTw" id="75qA1j0632B" role="25WWJ7">
                            <ref role="3cqZAo" node="75qA1j055Ct" resolve="targetModel" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3y3z36" id="75qA1j05TJc" role="3clFbw">
                    <node concept="10Nm6u" id="75qA1j05W3t" role="3uHU7w" />
                    <node concept="37vLTw" id="75qA1j05SFG" role="3uHU7B">
                      <ref role="3cqZAo" node="75qA1j055Ct" resolve="targetModel" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2OF_Yfjre2H" role="3cqZAp" />
        <node concept="3cpWs6" id="5tGs5KqKi$w" role="3cqZAp">
          <node concept="2ShNRf" id="5tGs5KqKi$x" role="3cqZAk">
            <node concept="1pGfFk" id="5tGs5KqKi$y" role="2ShVmc">
              <ref role="37wK5l" to="qzxo:~PasteNodeData.&lt;init&gt;(java.util.List,java.util.Collection,java.util.Set,java.util.Set)" resolve="PasteNodeData" />
              <node concept="37vLTw" id="2OF_YfjsuA6" role="37wK5m">
                <ref role="3cqZAo" node="2OF_YfjrQ4J" resolve="targetNodes" />
              </node>
              <node concept="37vLTw" id="75qA1j0blG4" role="37wK5m">
                <ref role="3cqZAo" node="75qA1j06A_q" resolve="copiedLinks" />
              </node>
              <node concept="2OqwBi" id="1_MDhe9gU6U" role="37wK5m">
                <node concept="37vLTw" id="3GM_nagT_U_" role="2Oq$k0">
                  <ref role="3cqZAo" node="1_MDhe9dowa" resolve="cpm" />
                </node>
                <node concept="liA8E" id="1_MDhe9gXlJ" role="2OqNvi">
                  <ref role="37wK5l" node="1_MDhe9gApI" resolve="getEncounteredLanguages" />
                </node>
              </node>
              <node concept="37vLTw" id="3GM_nagTxIz" role="37wK5m">
                <ref role="3cqZAo" node="5tGs5KqKize" resolve="necessaryModels" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="75qA1j00$Iy" role="jymVt" />
    <node concept="2YIFZL" id="75qA1j01iWU" role="jymVt">
      <property role="TrG5h" value="createNodeDataOut" />
      <node concept="3clFbS" id="75qA1j00I39" role="3clF47">
        <node concept="3clFbJ" id="2iW0ThbtqTV" role="3cqZAp">
          <node concept="2OqwBi" id="2iW0ThbtX97" role="3clFbw">
            <node concept="2OqwBi" id="2iW0Thbtxsz" role="2Oq$k0">
              <node concept="37vLTw" id="2iW0ThbtwYd" role="2Oq$k0">
                <ref role="3cqZAo" node="75qA1j017Fn" resolve="in" />
              </node>
              <node concept="liA8E" id="2iW0ThbtUVs" role="2OqNvi">
                <ref role="37wK5l" to="qzxo:~PasteNodeData.getNodes()" resolve="getNodes" />
              </node>
            </node>
            <node concept="liA8E" id="2iW0Thbu0vW" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.isEmpty()" resolve="isEmpty" />
            </node>
          </node>
          <node concept="3clFbS" id="2iW0ThbtqTZ" role="3clFbx">
            <node concept="3SKdUt" id="2iW0Thbu7cM" role="3cqZAp">
              <node concept="1PaTwC" id="2iW0Thbu7cN" role="1aUNEU">
                <node concept="3oM_SD" id="2iW0Thbu8s$" role="1PaTwD">
                  <property role="3oM_SC" value="it's" />
                </node>
                <node concept="3oM_SD" id="2iW0Thbu8sA" role="1PaTwD">
                  <property role="3oM_SC" value="immutable," />
                </node>
                <node concept="3oM_SD" id="2iW0Thbu8sD" role="1PaTwD">
                  <property role="3oM_SC" value="no" />
                </node>
                <node concept="3oM_SD" id="2iW0Thbu8sH" role="1PaTwD">
                  <property role="3oM_SC" value="point" />
                </node>
                <node concept="3oM_SD" id="2iW0Thbu8sM" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="2iW0Thbu8sS" role="1PaTwD">
                  <property role="3oM_SC" value="make" />
                </node>
                <node concept="3oM_SD" id="2iW0Thbu8sZ" role="1PaTwD">
                  <property role="3oM_SC" value="a" />
                </node>
                <node concept="3oM_SD" id="2iW0Thbu8t7" role="1PaTwD">
                  <property role="3oM_SC" value="copy" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="2iW0ThbtqU0" role="3cqZAp">
              <node concept="37vLTw" id="2iW0Thbu4pn" role="3cqZAk">
                <ref role="3cqZAo" node="75qA1j017Fn" resolve="in" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1_MDhe9h8qt" role="3cqZAp">
          <node concept="3cpWsn" id="1_MDhe9h8qu" role="3cpWs9">
            <property role="TrG5h" value="cpm" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="1_MDhe9h8qv" role="1tU5fm">
              <ref role="3uigEE" node="1_MDhe9aU_9" resolve="CopyPasteMagic" />
            </node>
            <node concept="2OqwBi" id="3xAMiphiDuL" role="33vP2m">
              <node concept="2ShNRf" id="1_MDhe9hgzF" role="2Oq$k0">
                <node concept="HV5vD" id="1_MDhe9hm6b" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="HV5vE" node="1_MDhe9aU_9" resolve="CopyPasteMagic" />
                </node>
              </node>
              <node concept="liA8E" id="3xAMiphiEDA" role="2OqNvi">
                <ref role="37wK5l" node="1_MDhe9ba9i" resolve="copyUserObjects" />
                <node concept="3fqX7Q" id="3xAMiphiGy1" role="37wK5m">
                  <node concept="2OqwBi" id="3xAMiphiJsP" role="3fr31v">
                    <node concept="37vLTw" id="3xAMiphiIvM" role="2Oq$k0">
                      <ref role="3cqZAo" node="75qA1j017Fn" resolve="in" />
                    </node>
                    <node concept="liA8E" id="3xAMiphiLfP" role="2OqNvi">
                      <ref role="37wK5l" to="qzxo:~PasteNodeData.consumed()" resolve="consumed" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2iW0ThbtqU3" role="3cqZAp">
          <node concept="3cpWsn" id="2iW0ThbtqU4" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="2iW0ThbtqU5" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="2iW0ThbtqU6" role="11_B2D">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
            </node>
            <node concept="2ShNRf" id="2iW0ThbtqU7" role="33vP2m">
              <node concept="1pGfFk" id="2iW0ThbtqU8" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="2iW0ThbtqUR" role="3cqZAp">
          <node concept="2OqwBi" id="2iW0ThbuBi3" role="1DdaDG">
            <node concept="37vLTw" id="2iW0ThbtqUS" role="2Oq$k0">
              <ref role="3cqZAo" node="75qA1j017Fn" resolve="in" />
            </node>
            <node concept="liA8E" id="2iW0ThbuCVc" role="2OqNvi">
              <ref role="37wK5l" to="qzxo:~PasteNodeData.getNodes()" resolve="getNodes" />
            </node>
          </node>
          <node concept="3cpWsn" id="2iW0ThbtqUT" role="1Duv9x">
            <property role="TrG5h" value="sourceNode" />
            <node concept="3uibUv" id="2iW0ThbtqUU" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
          </node>
          <node concept="3clFbS" id="2iW0ThbtqUV" role="2LFqv$">
            <node concept="3clFbF" id="2iW0ThbtqV9" role="3cqZAp">
              <node concept="2OqwBi" id="2iW0ThbtqVa" role="3clFbG">
                <node concept="37vLTw" id="2iW0ThbtqVb" role="2Oq$k0">
                  <ref role="3cqZAo" node="2iW0ThbtqU4" resolve="result" />
                </node>
                <node concept="liA8E" id="2iW0ThbtqVc" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                  <node concept="2OqwBi" id="1_MDhe9hACx" role="37wK5m">
                    <node concept="37vLTw" id="2iW0ThbtqVd" role="2Oq$k0">
                      <ref role="3cqZAo" node="1_MDhe9h8qu" resolve="cpm" />
                    </node>
                    <node concept="liA8E" id="1_MDhe9hCA_" role="2OqNvi">
                      <ref role="37wK5l" node="1_MDhe9clWK" resolve="copy" />
                      <node concept="37vLTw" id="1_MDhe9hEEK" role="37wK5m">
                        <ref role="3cqZAo" node="2iW0ThbtqUT" resolve="sourceNode" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2iW0ThbtqUa" role="3cqZAp">
          <node concept="3cpWsn" id="2iW0ThbtqUb" role="3cpWs9">
            <property role="TrG5h" value="sourceNodesToNewNodes" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="2iW0ThbtqUc" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
              <node concept="3Tqbb2" id="2iW0Thbu8uc" role="11_B2D" />
              <node concept="3Tqbb2" id="2iW0ThbucfI" role="11_B2D" />
            </node>
            <node concept="2OqwBi" id="1_MDhe9hQR6" role="33vP2m">
              <node concept="37vLTw" id="1_MDhe9hOT8" role="2Oq$k0">
                <ref role="3cqZAo" node="1_MDhe9h8qu" resolve="cpm" />
              </node>
              <node concept="liA8E" id="1_MDhe9hSFX" role="2OqNvi">
                <ref role="37wK5l" node="1_MDhe9ccdw" resolve="getOriginal2NewMap" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2iW0ThbuKOi" role="3cqZAp" />
        <node concept="3cpWs8" id="2iW0ThbuQiD" role="3cqZAp">
          <node concept="3cpWsn" id="2iW0ThbuQiE" role="3cpWs9">
            <property role="TrG5h" value="referencesRequireResolve" />
            <node concept="3uibUv" id="2iW0ThbuQiF" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
              <node concept="3uibUv" id="2iW0ThbuQiG" role="11_B2D">
                <ref role="3uigEE" to="mhbf:~SReference" resolve="SReference" />
              </node>
            </node>
            <node concept="2ShNRf" id="3e0Fl5dvv43" role="33vP2m">
              <node concept="1pGfFk" id="3e0Fl5dvzJH" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="2iW0ThbuM9J" role="3cqZAp">
          <node concept="1PaTwC" id="2iW0ThbuM9K" role="1aUNEU">
            <node concept="3oM_SD" id="2iW0ThbuObp" role="1PaTwD">
              <property role="3oM_SC" value="what" />
            </node>
            <node concept="3oM_SD" id="2iW0ThbuObF" role="1PaTwD">
              <property role="3oM_SC" value="processReferencesOut" />
            </node>
            <node concept="3oM_SD" id="2iW0ThbuObY" role="1PaTwD">
              <property role="3oM_SC" value="used" />
            </node>
            <node concept="3oM_SD" id="2iW0ThbuOc2" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="2iW0ThbuOc7" role="1PaTwD">
              <property role="3oM_SC" value="do" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="2iW0ThbvpeJ" role="3cqZAp">
          <node concept="2GrKxI" id="2iW0ThbvpeL" role="2Gsz3X">
            <property role="TrG5h" value="al" />
          </node>
          <node concept="2OqwBi" id="2iW0ThbvtTy" role="2GsD0m">
            <node concept="37vLTw" id="2iW0Thbvtg6" role="2Oq$k0">
              <ref role="3cqZAo" node="75qA1j017Fn" resolve="in" />
            </node>
            <node concept="liA8E" id="3e0Fl5dsS6W" role="2OqNvi">
              <ref role="37wK5l" to="qzxo:~PasteNodeData.getCopiedLinks()" resolve="getCopiedLinks" />
            </node>
          </node>
          <node concept="3clFbS" id="2iW0ThbvpeP" role="2LFqv$">
            <node concept="3cpWs8" id="3IzRelEkJOJ" role="3cqZAp">
              <node concept="3cpWsn" id="3IzRelEkJOK" role="3cpWs9">
                <property role="TrG5h" value="newSourceNode" />
                <node concept="3uibUv" id="3IzRelElGBV" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
                <node concept="2OqwBi" id="3IzRelEkJOL" role="33vP2m">
                  <node concept="37vLTw" id="3IzRelEkJOM" role="2Oq$k0">
                    <ref role="3cqZAo" node="2iW0ThbtqUb" resolve="sourceNodesToNewNodes" />
                  </node>
                  <node concept="liA8E" id="3IzRelEkJON" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                    <node concept="2OqwBi" id="3IzRelEkJOO" role="37wK5m">
                      <node concept="2GrUjf" id="3IzRelEkJOP" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="2iW0ThbvpeL" resolve="al" />
                      </node>
                      <node concept="liA8E" id="3IzRelEkJOQ" role="2OqNvi">
                        <ref role="37wK5l" to="qzxo:~AssociationLink.source()" resolve="source" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="3IzRelEkVd0" role="3cqZAp">
              <node concept="3clFbS" id="3IzRelEkVd2" role="3clFbx">
                <node concept="3SKdUt" id="3IzRelEl89R" role="3cqZAp">
                  <node concept="1PaTwC" id="3IzRelEl89S" role="1aUNEU">
                    <node concept="3oM_SD" id="3IzRelEla4p" role="1PaTwD">
                      <property role="3oM_SC" value="sort" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelEla4Q" role="1PaTwD">
                      <property role="3oM_SC" value="of" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelEla5k" role="1PaTwD">
                      <property role="3oM_SC" value="hack," />
                    </node>
                    <node concept="3oM_SD" id="3IzRelEla6D" role="1PaTwD">
                      <property role="3oM_SC" value="I" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelEla79" role="1PaTwD">
                      <property role="3oM_SC" value="guess." />
                    </node>
                    <node concept="3oM_SD" id="3IzRelEla8w" role="1PaTwD">
                      <property role="3oM_SC" value="Although" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelEla9H" role="1PaTwD">
                      <property role="3oM_SC" value="we" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelElaag" role="1PaTwD">
                      <property role="3oM_SC" value="do" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelElabf" role="1PaTwD">
                      <property role="3oM_SC" value="create" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelElabO" role="1PaTwD">
                      <property role="3oM_SC" value="AssociationData" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelElae6" role="1PaTwD">
                      <property role="3oM_SC" value="for" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelElaeH" role="1PaTwD">
                      <property role="3oM_SC" value="nodes" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelElagA" role="1PaTwD">
                      <property role="3oM_SC" value="we" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelElagO" role="1PaTwD">
                      <property role="3oM_SC" value="copy," />
                    </node>
                    <node concept="3oM_SD" id="3IzRelElaiJ" role="1PaTwD">
                      <property role="3oM_SC" value="CopyPreProcessor" />
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="3IzRelElcwd" role="3cqZAp">
                  <node concept="1PaTwC" id="3IzRelElcwe" role="1aUNEU">
                    <node concept="3oM_SD" id="3IzRelEler0" role="1PaTwD">
                      <property role="3oM_SC" value="has" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelElesj" role="1PaTwD">
                      <property role="3oM_SC" value="a" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelElevs" role="1PaTwD">
                      <property role="3oM_SC" value="chance" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelElevw" role="1PaTwD">
                      <property role="3oM_SC" value="to" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelElew0" role="1PaTwD">
                      <property role="3oM_SC" value="replace" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelElewW" role="1PaTwD">
                      <property role="3oM_SC" value="node" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelEle$h" role="1PaTwD">
                      <property role="3oM_SC" value="known" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelEle$p" role="1PaTwD">
                      <property role="3oM_SC" value="to" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelEle$X" role="1PaTwD">
                      <property role="3oM_SC" value="this" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelEleAo" role="1PaTwD">
                      <property role="3oM_SC" value="class" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelEleAz" role="1PaTwD">
                      <property role="3oM_SC" value="with" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelEleAJ" role="1PaTwD">
                      <property role="3oM_SC" value="another" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelEleAW" role="1PaTwD">
                      <property role="3oM_SC" value="one," />
                    </node>
                    <node concept="3oM_SD" id="3IzRelEleC0" role="1PaTwD">
                      <property role="3oM_SC" value="and" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelEleHg" role="1PaTwD">
                      <property role="3oM_SC" value="there's" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelEleHV" role="1PaTwD">
                      <property role="3oM_SC" value="no" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelEleIc" role="1PaTwD">
                      <property role="3oM_SC" value="mechanism" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelEleJk" role="1PaTwD">
                      <property role="3oM_SC" value="to" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelEleKS" role="1PaTwD">
                      <property role="3oM_SC" value="figure" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelEleM2" role="1PaTwD">
                      <property role="3oM_SC" value="this" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelEleMn" role="1PaTwD">
                      <property role="3oM_SC" value="out" />
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="3IzRelElgYb" role="3cqZAp">
                  <node concept="1PaTwC" id="3IzRelElgYc" role="1aUNEU">
                    <node concept="3oM_SD" id="3IzRelEliTl" role="1PaTwD">
                      <property role="3oM_SC" value="and" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelEliTn" role="1PaTwD">
                      <property role="3oM_SC" value="update" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelEliTP" role="1PaTwD">
                      <property role="3oM_SC" value="recorded" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelEliXh" role="1PaTwD">
                      <property role="3oM_SC" value="AssociationData." />
                    </node>
                    <node concept="3oM_SD" id="3IzRelEliXL" role="1PaTwD">
                      <property role="3oM_SC" value="I" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelEliYi" role="1PaTwD">
                      <property role="3oM_SC" value="assume" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelElj2t" role="1PaTwD">
                      <property role="3oM_SC" value="CopyPreProcessor" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelElj30" role="1PaTwD">
                      <property role="3oM_SC" value="that" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelElj39" role="1PaTwD">
                      <property role="3oM_SC" value="does" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelElj3I" role="1PaTwD">
                      <property role="3oM_SC" value="that" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelElj6p" role="1PaTwD">
                      <property role="3oM_SC" value="would" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelElj70" role="1PaTwD">
                      <property role="3oM_SC" value="not" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelElj7C" role="1PaTwD">
                      <property role="3oM_SC" value="expect" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelElj8G" role="1PaTwD">
                      <property role="3oM_SC" value="SReference" />
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="3IzRelEllmK" role="3cqZAp">
                  <node concept="1PaTwC" id="3IzRelEllmL" role="1aUNEU">
                    <node concept="3oM_SD" id="3IzRelElni_" role="1PaTwD">
                      <property role="3oM_SC" value="resolution" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelElnkI" role="1PaTwD">
                      <property role="3oM_SC" value="mechanism" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelElnm2" role="1PaTwD">
                      <property role="3oM_SC" value="to" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelElnod" role="1PaTwD">
                      <property role="3oM_SC" value="handle" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelElnoH" role="1PaTwD">
                      <property role="3oM_SC" value="references" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelElnqv" role="1PaTwD">
                      <property role="3oM_SC" value="of" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelElnrs" role="1PaTwD">
                      <property role="3oM_SC" value="replaced" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelElnu6" role="1PaTwD">
                      <property role="3oM_SC" value="node" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelElnuE" role="1PaTwD">
                      <property role="3oM_SC" value="as" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelElnw5" role="1PaTwD">
                      <property role="3oM_SC" value="well." />
                    </node>
                    <node concept="3oM_SD" id="3IzRelElnx6" role="1PaTwD">
                      <property role="3oM_SC" value="If" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelElnxH" role="1PaTwD">
                      <property role="3oM_SC" value="it" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelElnzb" role="1PaTwD">
                      <property role="3oM_SC" value="does," />
                    </node>
                    <node concept="3oM_SD" id="3IzRelEln$f" role="1PaTwD">
                      <property role="3oM_SC" value="however," />
                    </node>
                    <node concept="3oM_SD" id="3IzRelElnBr" role="1PaTwD">
                      <property role="3oM_SC" value="we'd" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelElnDn" role="1PaTwD">
                      <property role="3oM_SC" value="need" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelElnE3" role="1PaTwD">
                      <property role="3oM_SC" value="to" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelElnEK" role="1PaTwD">
                      <property role="3oM_SC" value="" />
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="3IzRelElpQf" role="3cqZAp">
                  <node concept="1PaTwC" id="3IzRelElpQg" role="1aUNEU">
                    <node concept="3oM_SD" id="3IzRelElrMN" role="1PaTwD">
                      <property role="3oM_SC" value="add" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelElrNg" role="1PaTwD">
                      <property role="3oM_SC" value="processing" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelElrO$" role="1PaTwD">
                      <property role="3oM_SC" value="of" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelElrOC" role="1PaTwD">
                      <property role="3oM_SC" value="SNode.getReferences()" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelElrSw" role="1PaTwD">
                      <property role="3oM_SC" value="in" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelElrT1" role="1PaTwD">
                      <property role="3oM_SC" value="addition" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelElrTz" role="1PaTwD">
                      <property role="3oM_SC" value="to" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelElrTF" role="1PaTwD">
                      <property role="3oM_SC" value="AD" />
                    </node>
                    <node concept="3oM_SD" id="3IzRelElrUE" role="1PaTwD">
                      <property role="3oM_SC" value="processing." />
                    </node>
                  </node>
                </node>
                <node concept="3N13vt" id="3IzRelEl47g" role="3cqZAp" />
              </node>
              <node concept="3clFbC" id="3IzRelEkZQE" role="3clFbw">
                <node concept="10Nm6u" id="3IzRelEl1Wa" role="3uHU7w" />
                <node concept="37vLTw" id="3IzRelEkXE9" role="3uHU7B">
                  <ref role="3cqZAo" node="3IzRelEkJOK" resolve="newSourceNode" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3IzRelEjLaH" role="3cqZAp">
              <node concept="3cpWsn" id="3IzRelEjLaI" role="3cpWs9">
                <property role="TrG5h" value="requireResolve" />
                <node concept="10P_77" id="3IzRelEjvzS" role="1tU5fm" />
                <node concept="2OqwBi" id="3IzRelEjLaJ" role="33vP2m">
                  <node concept="2GrUjf" id="3IzRelEjLaK" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="2iW0ThbvpeL" resolve="al" />
                  </node>
                  <node concept="liA8E" id="3IzRelEjLaL" role="2OqNvi">
                    <ref role="37wK5l" to="qzxo:~AssociationLink.establish(java.util.Map)" resolve="establish" />
                    <node concept="37vLTw" id="3IzRelEjLaM" role="37wK5m">
                      <ref role="3cqZAo" node="2iW0ThbtqUb" resolve="sourceNodesToNewNodes" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="3e0Fl5dvSjr" role="3cqZAp">
              <node concept="1PaTwC" id="3e0Fl5dvSjs" role="1aUNEU">
                <node concept="3oM_SD" id="3e0Fl5dvSld" role="1PaTwD">
                  <property role="3oM_SC" value="Old" />
                </node>
                <node concept="3oM_SD" id="3e0Fl5dvUvH" role="1PaTwD">
                  <property role="3oM_SC" value="code" />
                </node>
                <node concept="3oM_SD" id="3e0Fl5dvUw9" role="1PaTwD">
                  <property role="3oM_SC" value="used" />
                </node>
                <node concept="3oM_SD" id="3e0Fl5dvUwd" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="3e0Fl5dvUye" role="1PaTwD">
                  <property role="3oM_SC" value="requireResolve" />
                </node>
                <node concept="3oM_SD" id="3e0Fl5dvUzO" role="1PaTwD">
                  <property role="3oM_SC" value="references" />
                </node>
                <node concept="3oM_SD" id="3e0Fl5dvU$b" role="1PaTwD">
                  <property role="3oM_SC" value="outside" />
                </node>
                <node concept="3oM_SD" id="3e0Fl5dvU_3" role="1PaTwD">
                  <property role="3oM_SC" value="of" />
                </node>
                <node concept="3oM_SD" id="3e0Fl5dvU_c" role="1PaTwD">
                  <property role="3oM_SC" value="copied" />
                </node>
                <node concept="3oM_SD" id="3e0Fl5dvU_A" role="1PaTwD">
                  <property role="3oM_SC" value="hierarchy" />
                </node>
                <node concept="3oM_SD" id="3e0Fl5dw0hi" role="1PaTwD">
                  <property role="3oM_SC" value="(and" />
                </node>
                <node concept="3oM_SD" id="3e0Fl5dw0hu" role="1PaTwD">
                  <property role="3oM_SC" value="under" />
                </node>
                <node concept="3oM_SD" id="3e0Fl5dw0hF" role="1PaTwD">
                  <property role="3oM_SC" value="some" />
                </node>
                <node concept="3oM_SD" id="3e0Fl5dw0i9" role="1PaTwD">
                  <property role="3oM_SC" value="additional" />
                </node>
                <node concept="3oM_SD" id="3e0Fl5dw0iS" role="1PaTwD">
                  <property role="3oM_SC" value="conditions," />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="3e0Fl5dw2Av" role="3cqZAp">
              <node concept="1PaTwC" id="3e0Fl5dw2Aw" role="1aUNEU">
                <node concept="3oM_SD" id="3e0Fl5dw2Cy" role="1PaTwD">
                  <property role="3oM_SC" value="see" />
                </node>
                <node concept="3oM_SD" id="3e0Fl5dw4P$" role="1PaTwD">
                  <property role="3oM_SC" value="processReferencesOut()." />
                </node>
                <node concept="3oM_SD" id="3e0Fl5dw4Q7" role="1PaTwD">
                  <property role="3oM_SC" value="Although" />
                </node>
                <node concept="3oM_SD" id="3e0Fl5dw4Qr" role="1PaTwD">
                  <property role="3oM_SC" value="I" />
                </node>
                <node concept="3oM_SD" id="3e0Fl5dw4QK" role="1PaTwD">
                  <property role="3oM_SC" value="don't" />
                </node>
                <node concept="3oM_SD" id="3e0Fl5dw4QQ" role="1PaTwD">
                  <property role="3oM_SC" value="see" />
                </node>
                <node concept="3oM_SD" id="3e0Fl5dw4Rd" role="1PaTwD">
                  <property role="3oM_SC" value="why" />
                </node>
                <node concept="3oM_SD" id="3e0Fl5dw4R_" role="1PaTwD">
                  <property role="3oM_SC" value="it" />
                </node>
                <node concept="3oM_SD" id="3e0Fl5dw4RY" role="1PaTwD">
                  <property role="3oM_SC" value="would" />
                </node>
                <node concept="3oM_SD" id="3e0Fl5dw4S8" role="1PaTwD">
                  <property role="3oM_SC" value="hurt" />
                </node>
                <node concept="3oM_SD" id="3IzRelEk5m7" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="3e0Fl5dw4U9" role="1PaTwD">
                  <property role="3oM_SC" value="resolve" />
                </node>
                <node concept="3oM_SD" id="3e0Fl5dw4VB" role="1PaTwD">
                  <property role="3oM_SC" value="any" />
                </node>
                <node concept="3oM_SD" id="3e0Fl5dw4W6" role="1PaTwD">
                  <property role="3oM_SC" value="newly" />
                </node>
                <node concept="3oM_SD" id="3e0Fl5dw4Wm" role="1PaTwD">
                  <property role="3oM_SC" value="created" />
                </node>
                <node concept="3oM_SD" id="3e0Fl5dw4WB" role="1PaTwD">
                  <property role="3oM_SC" value="reference," />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="3IzRelEk7wr" role="3cqZAp">
              <node concept="1PaTwC" id="3IzRelEk7ws" role="1aUNEU">
                <node concept="3oM_SD" id="3IzRelEk9q8" role="1PaTwD">
                  <property role="3oM_SC" value="I" />
                </node>
                <node concept="3oM_SD" id="3IzRelEk9qa" role="1PaTwD">
                  <property role="3oM_SC" value="need" />
                </node>
                <node concept="3oM_SD" id="3IzRelEk9qC" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="3IzRelEk9r7" role="1PaTwD">
                  <property role="3oM_SC" value="stick" />
                </node>
                <node concept="3oM_SD" id="3IzRelEk9s2" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="3IzRelEk9sz" role="1PaTwD">
                  <property role="3oM_SC" value="this" />
                </node>
                <node concept="3oM_SD" id="3IzRelEk9t5" role="1PaTwD">
                  <property role="3oM_SC" value="odd" />
                </node>
                <node concept="3oM_SD" id="3IzRelEk9u3" role="1PaTwD">
                  <property role="3oM_SC" value="logic" />
                </node>
                <node concept="3oM_SD" id="3IzRelEk9uc" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="3IzRelEk9um" role="1PaTwD">
                  <property role="3oM_SC" value="make" />
                </node>
                <node concept="3oM_SD" id="3IzRelEk9vn" role="1PaTwD">
                  <property role="3oM_SC" value="TestAutoresolve_Variable" />
                </node>
                <node concept="3oM_SD" id="3IzRelEk9$c" role="1PaTwD">
                  <property role="3oM_SC" value="pass" />
                </node>
                <node concept="3oM_SD" id="3IzRelEk9A5" role="1PaTwD">
                  <property role="3oM_SC" value="as" />
                </node>
                <node concept="3oM_SD" id="3IzRelEk9B$" role="1PaTwD">
                  <property role="3oM_SC" value="expected" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="3IzRelEkbOS" role="3cqZAp">
              <node concept="3clFbS" id="3IzRelEkbOU" role="3clFbx">
                <node concept="3cpWs8" id="3IzRelElTPT" role="3cqZAp">
                  <node concept="3cpWsn" id="3IzRelElTPU" role="3cpWs9">
                    <property role="TrG5h" value="rrr" />
                    <node concept="3uibUv" id="3IzRelElSs_" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SReference" resolve="SReference" />
                    </node>
                    <node concept="2OqwBi" id="3IzRelElTPV" role="33vP2m">
                      <node concept="37vLTw" id="3IzRelElTPW" role="2Oq$k0">
                        <ref role="3cqZAo" node="3IzRelEkJOK" resolve="newSourceNode" />
                      </node>
                      <node concept="liA8E" id="3IzRelElTPX" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getReference(org.jetbrains.mps.openapi.language.SReferenceLink)" resolve="getReference" />
                        <node concept="2OqwBi" id="3IzRelElTPY" role="37wK5m">
                          <node concept="2GrUjf" id="3IzRelElTPZ" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="2iW0ThbvpeL" resolve="al" />
                          </node>
                          <node concept="liA8E" id="3IzRelElTQ0" role="2OqNvi">
                            <ref role="37wK5l" to="qzxo:~AssociationLink.link()" resolve="link" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="3IzRelEm2Lo" role="3cqZAp">
                  <node concept="3clFbS" id="3IzRelEm2Lq" role="3clFbx">
                    <node concept="3SKdUt" id="3IzRelEmm5_" role="3cqZAp">
                      <node concept="1PaTwC" id="3IzRelEmm5A" role="1aUNEU">
                        <node concept="3oM_SD" id="3IzRelEmo7l" role="1PaTwD">
                          <property role="3oM_SC" value="generally," />
                        </node>
                        <node concept="3oM_SD" id="3IzRelEmo8C" role="1PaTwD">
                          <property role="3oM_SC" value="I'd" />
                        </node>
                        <node concept="3oM_SD" id="3IzRelEmo9x" role="1PaTwD">
                          <property role="3oM_SC" value="expect" />
                        </node>
                        <node concept="3oM_SD" id="3IzRelEmoeA" role="1PaTwD">
                          <property role="3oM_SC" value="al.establish" />
                        </node>
                        <node concept="3oM_SD" id="3IzRelEmoeF" role="1PaTwD">
                          <property role="3oM_SC" value="to" />
                        </node>
                        <node concept="3oM_SD" id="3IzRelEmofc" role="1PaTwD">
                          <property role="3oM_SC" value="ensure" />
                        </node>
                        <node concept="3oM_SD" id="3IzRelEmogZ" role="1PaTwD">
                          <property role="3oM_SC" value="rrr" />
                        </node>
                        <node concept="3oM_SD" id="3IzRelEmohy" role="1PaTwD">
                          <property role="3oM_SC" value="!=" />
                        </node>
                        <node concept="3oM_SD" id="3IzRelEmoi6" role="1PaTwD">
                          <property role="3oM_SC" value="null," />
                        </node>
                        <node concept="3oM_SD" id="3IzRelEmoiF" role="1PaTwD">
                          <property role="3oM_SC" value="but" />
                        </node>
                        <node concept="3oM_SD" id="3IzRelEmorL" role="1PaTwD">
                          <property role="3oM_SC" value="'if'" />
                        </node>
                        <node concept="3oM_SD" id="3IzRelEmotF" role="1PaTwD">
                          <property role="3oM_SC" value="got" />
                        </node>
                        <node concept="3oM_SD" id="3IzRelEmovb" role="1PaTwD">
                          <property role="3oM_SC" value="more" />
                        </node>
                        <node concept="3oM_SD" id="3IzRelEmovr" role="1PaTwD">
                          <property role="3oM_SC" value="grace" />
                        </node>
                        <node concept="3oM_SD" id="3IzRelEmomP" role="1PaTwD">
                          <property role="3oM_SC" value="than" />
                        </node>
                        <node concept="3oM_SD" id="3IzRelEmonv" role="1PaTwD">
                          <property role="3oM_SC" value="'assert'" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="3e0Fl5dvhpD" role="3cqZAp">
                      <node concept="2OqwBi" id="3e0Fl5dvhpE" role="3clFbG">
                        <node concept="37vLTw" id="3e0Fl5dvhpF" role="2Oq$k0">
                          <ref role="3cqZAo" node="2iW0ThbuQiE" resolve="referencesRequireResolve" />
                        </node>
                        <node concept="liA8E" id="3e0Fl5dvhpG" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                          <node concept="37vLTw" id="3IzRelEmjZh" role="37wK5m">
                            <ref role="3cqZAo" node="3IzRelElTPU" resolve="rrr" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3y3z36" id="3IzRelEmbix" role="3clFbw">
                    <node concept="10Nm6u" id="3IzRelEmdlV" role="3uHU7w" />
                    <node concept="37vLTw" id="3IzRelEm9aE" role="3uHU7B">
                      <ref role="3cqZAo" node="3IzRelElTPU" resolve="rrr" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="3IzRelEke49" role="3clFbw">
                <ref role="3cqZAo" node="3IzRelEjLaI" resolve="requireResolve" />
              </node>
            </node>
            <node concept="3SKdUt" id="3e0Fl5dw7gN" role="3cqZAp">
              <node concept="1PaTwC" id="3e0Fl5dw7gO" role="1aUNEU">
                <node concept="3oM_SD" id="3e0Fl5dw7j9" role="1PaTwD">
                  <property role="3oM_SC" value="FWIW," />
                </node>
                <node concept="3oM_SD" id="3e0Fl5dw9tD" role="1PaTwD">
                  <property role="3oM_SC" value="I'd" />
                </node>
                <node concept="3oM_SD" id="3e0Fl5dw9tG" role="1PaTwD">
                  <property role="3oM_SC" value="like" />
                </node>
                <node concept="3oM_SD" id="3e0Fl5dw9u0" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="3e0Fl5dw9u_" role="1PaTwD">
                  <property role="3oM_SC" value="get" />
                </node>
                <node concept="3oM_SD" id="3e0Fl5dw9uF" role="1PaTwD">
                  <property role="3oM_SC" value="rid" />
                </node>
                <node concept="3oM_SD" id="3e0Fl5dw9v2" role="1PaTwD">
                  <property role="3oM_SC" value="of" />
                </node>
                <node concept="3oM_SD" id="3e0Fl5dw9wX" role="1PaTwD">
                  <property role="3oM_SC" value="moving" />
                </node>
                <node concept="3oM_SD" id="3e0Fl5dw9vq" role="1PaTwD">
                  <property role="3oM_SC" value="SReference" />
                </node>
                <node concept="3oM_SD" id="3e0Fl5dw9w3" role="1PaTwD">
                  <property role="3oM_SC" value="instances" />
                </node>
                <node concept="3oM_SD" id="3e0Fl5dw9y8" role="1PaTwD">
                  <property role="3oM_SC" value="around" />
                </node>
                <node concept="3oM_SD" id="3e0Fl5dw9zk" role="1PaTwD">
                  <property role="3oM_SC" value="at" />
                </node>
                <node concept="3oM_SD" id="3e0Fl5dw9zx" role="1PaTwD">
                  <property role="3oM_SC" value="all." />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2iW0ThbuOcI" role="3cqZAp" />
        <node concept="3cpWs6" id="2iW0ThbuQiK" role="3cqZAp">
          <node concept="2ShNRf" id="2iW0ThbuQiL" role="3cqZAk">
            <node concept="1pGfFk" id="2iW0ThbuQiM" role="2ShVmc">
              <ref role="37wK5l" to="qzxo:~PasteNodeData.&lt;init&gt;(jetbrains.mps.datatransfer.PasteNodeData,java.util.List,java.util.Set)" resolve="PasteNodeData" />
              <node concept="37vLTw" id="3e0Fl5dwbH6" role="37wK5m">
                <ref role="3cqZAo" node="75qA1j017Fn" resolve="in" />
              </node>
              <node concept="37vLTw" id="2iW0ThbuQiN" role="37wK5m">
                <ref role="3cqZAo" node="2iW0ThbtqU4" resolve="result" />
              </node>
              <node concept="37vLTw" id="2iW0ThbuQiO" role="37wK5m">
                <ref role="3cqZAo" node="2iW0ThbuQiE" resolve="referencesRequireResolve" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="75qA1j017Fn" role="3clF46">
        <property role="TrG5h" value="in" />
        <node concept="3uibUv" id="75qA1j017Fm" role="1tU5fm">
          <ref role="3uigEE" to="qzxo:~PasteNodeData" resolve="PasteNodeData" />
        </node>
      </node>
      <node concept="3uibUv" id="75qA1j00RR1" role="3clF45">
        <ref role="3uigEE" to="qzxo:~PasteNodeData" resolve="PasteNodeData" />
      </node>
      <node concept="3Tm1VV" id="75qA1j02b9Z" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="75qA1j00_aq" role="jymVt" />
    <node concept="2YIFZL" id="5tGs5KqKiI4" role="jymVt">
      <property role="TrG5h" value="copyTextToClipboard" />
      <node concept="3Tm1VV" id="5tGs5KqKiI5" role="1B3o_S" />
      <node concept="3cqZAl" id="5tGs5KqKiI6" role="3clF45" />
      <node concept="37vLTG" id="5tGs5KqKiI7" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="3uibUv" id="5tGs5KqKiI8" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="5tGs5KqKiI9" role="3clF47">
        <node concept="3clFbF" id="5tGs5KqKiIa" role="3cqZAp">
          <node concept="2OqwBi" id="5tGs5KqKiIb" role="3clFbG">
            <node concept="2YIFZM" id="$mzrmRC_2_" role="2Oq$k0">
              <ref role="37wK5l" to="ddhc:~CopyPasteManagerEx.getInstanceEx()" resolve="getInstanceEx" />
              <ref role="1Pybhc" to="ddhc:~CopyPasteManagerEx" resolve="CopyPasteManagerEx" />
            </node>
            <node concept="liA8E" id="5tGs5KqKiId" role="2OqNvi">
              <ref role="37wK5l" to="ddhc:~CopyPasteManagerEx.setContents(java.awt.datatransfer.Transferable)" resolve="setContents" />
              <node concept="2ShNRf" id="5tGs5KqKiIe" role="37wK5m">
                <node concept="1pGfFk" id="5tGs5KqKiIf" role="2ShVmc">
                  <ref role="37wK5l" to="kt01:~StringSelection.&lt;init&gt;(java.lang.String)" resolve="StringSelection" />
                  <node concept="37vLTw" id="2BHiRxgmjxD" role="37wK5m">
                    <ref role="3cqZAo" node="5tGs5KqKiI7" resolve="text" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2cGWpZaISXa" role="jymVt" />
    <node concept="2YIFZL" id="6yKcP2SBWUP" role="jymVt">
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="TrG5h" value="copyTextAndNodeToClipboard" />
      <node concept="37vLTG" id="6yKcP2SBZfj" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="17QB3L" id="6yKcP2SBZgN" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6yKcP2SBZ9z" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="6yKcP2SBZb1" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3clFbS" id="6yKcP2SBUWV" role="3clF47">
        <node concept="3clFbF" id="6yKcP2SCfGe" role="3cqZAp">
          <node concept="1rXfSq" id="6yKcP2SCfGd" role="3clFbG">
            <ref role="37wK5l" node="2NI1dvfpeH1" resolve="setClipboardContents" />
            <node concept="2ShNRf" id="6yKcP2SCgbJ" role="37wK5m">
              <node concept="1pGfFk" id="6yKcP2SCgDu" role="2ShVmc">
                <ref role="37wK5l" node="6yKcP2SByGp" resolve="SNodeTransferable" />
                <node concept="37vLTw" id="6yKcP2SCgEG" role="37wK5m">
                  <ref role="3cqZAo" node="6yKcP2SBZfj" resolve="text" />
                </node>
                <node concept="37vLTw" id="6yKcP2SCgZo" role="37wK5m">
                  <ref role="3cqZAo" node="6yKcP2SBZ9z" resolve="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="6yKcP2SBUWT" role="3clF45" />
      <node concept="3Tm1VV" id="6yKcP2SBUWU" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5AR2i49iWok" role="jymVt" />
    <node concept="2YIFZL" id="5tGs5KqKiIy" role="jymVt">
      <property role="TrG5h" value="copyNodesAndTextToClipboard" />
      <node concept="3Tm1VV" id="5tGs5KqKiIz" role="1B3o_S" />
      <node concept="37vLTG" id="5tGs5KqKiI_" role="3clF46">
        <property role="TrG5h" value="nodes" />
        <node concept="3uibUv" id="5tGs5KqKiIA" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="5tGs5KqKiIB" role="11_B2D">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5tGs5KqKiIC" role="3clF46">
        <property role="TrG5h" value="nodesAndAttributes" />
        <node concept="3uibUv" id="5tGs5KqKiID" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
          <node concept="3uibUv" id="5tGs5KqKiIE" role="11_B2D">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
          <node concept="3uibUv" id="5tGs5KqKiIF" role="11_B2D">
            <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
            <node concept="3uibUv" id="5tGs5KqKiIG" role="11_B2D">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5tGs5KqKiIH" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="3uibUv" id="5tGs5KqKiII" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="5tGs5KqKiIJ" role="3clF47">
        <node concept="3SKdUt" id="5AR2i49jWoE" role="3cqZAp">
          <node concept="1PaTwC" id="5AR2i49jWoF" role="1aUNEU">
            <node concept="3oM_SD" id="5AR2i49jWoG" role="1PaTwD">
              <property role="3oM_SC" value="although" />
            </node>
            <node concept="3oM_SD" id="5AR2i49jX41" role="1PaTwD">
              <property role="3oM_SC" value="uses" />
            </node>
            <node concept="3oM_SD" id="5AR2i49jX4j" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="5AR2i49jX4k" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="5AR2i49jX4l" role="1PaTwD">
              <property role="3oM_SC" value="method" />
            </node>
            <node concept="3oM_SD" id="5AR2i49jX4m" role="1PaTwD">
              <property role="3oM_SC" value="generally" />
            </node>
            <node concept="3oM_SD" id="5AR2i49jX4B" role="1PaTwD">
              <property role="3oM_SC" value="didn't" />
            </node>
            <node concept="3oM_SD" id="5AR2i49jX4C" role="1PaTwD">
              <property role="3oM_SC" value="care" />
            </node>
            <node concept="3oM_SD" id="5AR2i49jX4T" role="1PaTwD">
              <property role="3oM_SC" value="about" />
            </node>
            <node concept="3oM_SD" id="5AR2i49jX5a" role="1PaTwD">
              <property role="3oM_SC" value="whether" />
            </node>
            <node concept="3oM_SD" id="5AR2i49jX5r" role="1PaTwD">
              <property role="3oM_SC" value="they" />
            </node>
            <node concept="3oM_SD" id="5AR2i49jX5W" role="1PaTwD">
              <property role="3oM_SC" value="supplied" />
            </node>
            <node concept="3oM_SD" id="5AR2i49jX6t" role="1PaTwD">
              <property role="3oM_SC" value="unique" />
            </node>
            <node concept="3oM_SD" id="5AR2i49jX7e" role="1PaTwD">
              <property role="3oM_SC" value="nodes" />
            </node>
            <node concept="3oM_SD" id="5AR2i49jX7f" role="1PaTwD">
              <property role="3oM_SC" value="or" />
            </node>
            <node concept="3oM_SD" id="5AR2i49jX7w" role="1PaTwD">
              <property role="3oM_SC" value="duplicates" />
            </node>
            <node concept="3oM_SD" id="5AR2i49jX8h" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="5AR2i49jX92" role="1PaTwD">
              <property role="3oM_SC" value="some" />
            </node>
            <node concept="3oM_SD" id="5AR2i49jX9z" role="1PaTwD">
              <property role="3oM_SC" value="nodes" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5AR2i49jXaa" role="3cqZAp">
          <node concept="1PaTwC" id="5AR2i49jX9P" role="1aUNEU">
            <node concept="3oM_SD" id="5AR2i49jX9O" role="1PaTwD">
              <property role="3oM_SC" value="existing" />
            </node>
            <node concept="3oM_SD" id="5AR2i49jY27" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="5AR2i49jY29" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="5AR2i49jY2a" role="1PaTwD">
              <property role="3oM_SC" value="model," />
            </node>
            <node concept="3oM_SD" id="5AR2i49jY2F" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="5AR2i49jY3c" role="1PaTwD">
              <property role="3oM_SC" value="bet" />
            </node>
            <node concept="3oM_SD" id="5AR2i49jY3t" role="1PaTwD">
              <property role="3oM_SC" value="it's" />
            </node>
            <node concept="3oM_SD" id="5AR2i49jY3u" role="1PaTwD">
              <property role="3oM_SC" value="safe" />
            </node>
            <node concept="3oM_SD" id="5AR2i49jY3Z" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="5AR2i49jY5y" role="1PaTwD">
              <property role="3oM_SC" value="go" />
            </node>
            <node concept="3oM_SD" id="5AR2i49jY5z" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="5AR2i49jY5O" role="1PaTwD">
              <property role="3oM_SC" value="&quot;copy" />
            </node>
            <node concept="3oM_SD" id="5AR2i49jY5P" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="5AR2i49jY66" role="1PaTwD">
              <property role="3oM_SC" value="existing&quot;" />
            </node>
            <node concept="3oM_SD" id="5AR2i49jY6B" role="1PaTwD">
              <property role="3oM_SC" value="aka" />
            </node>
            <node concept="3oM_SD" id="5AR2i49jY6S" role="1PaTwD">
              <property role="3oM_SC" value="&quot;not" />
            </node>
            <node concept="3oM_SD" id="5AR2i49jY79" role="1PaTwD">
              <property role="3oM_SC" value="fresh/new&quot;," />
            </node>
            <node concept="3oM_SD" id="5AR2i49jY8E" role="1PaTwD">
              <property role="3oM_SC" value="hence" />
            </node>
            <node concept="3oM_SD" id="5AR2i49jY8F" role="1PaTwD">
              <property role="3oM_SC" value="last" />
            </node>
            <node concept="3oM_SD" id="5AR2i49jY9c" role="1PaTwD">
              <property role="3oM_SC" value="'false'" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5AR2i49jw2M" role="3cqZAp">
          <node concept="1rXfSq" id="5AR2i49jw2K" role="3clFbG">
            <ref role="37wK5l" node="5AR2i49iapQ" resolve="putToClipboard" />
            <node concept="37vLTw" id="5AR2i49jx6c" role="37wK5m">
              <ref role="3cqZAo" node="5tGs5KqKiI_" resolve="nodes" />
            </node>
            <node concept="37vLTw" id="5AR2i49jyZk" role="37wK5m">
              <ref role="3cqZAo" node="5tGs5KqKiIC" resolve="nodesAndAttributes" />
            </node>
            <node concept="37vLTw" id="5AR2i49j$wM" role="37wK5m">
              <ref role="3cqZAo" node="5tGs5KqKiIH" resolve="text" />
            </node>
            <node concept="3clFbT" id="5AR2i49j_GB" role="37wK5m" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="5AR2i49jBP4" role="3clF45" />
      <node concept="P$JXv" id="5AR2i49jCxF" role="lGtFl">
        <node concept="TZ5HI" id="5AR2i49jCxG" role="3nqlJM">
          <node concept="1PaTwC" id="1E1X3WHsDY6" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHsDY7" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="1Vtdud" id="1E1X3WHsDY8" role="1PaTwD">
              <node concept="1VuXuv" id="1E1X3WHsDY9" role="1Vtduc">
                <node concept="VXe0Z" id="5AR2i49jUOv" role="1VuXuu">
                  <ref role="VXe0S" node="5AR2i49iapQ" resolve="putToClipboard" />
                </node>
                <node concept="1PaTwC" id="1E1X3WHsDYc" role="2JaDBN">
                  <node concept="3oM_SD" id="1E1X3WHsDYd" role="1PaTwD">
                    <property role="3oM_SC" value="" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDYe" role="1PaTwD">
              <property role="3oM_SC" value="instead," />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDYf" role="1PaTwD">
              <property role="3oM_SC" value="or" />
            </node>
            <node concept="1Vtdud" id="1E1X3WHsDYg" role="1PaTwD">
              <node concept="1VuTSG" id="1E1X3WHsDYh" role="1Vtduc">
                <node concept="1PaTwC" id="1E1X3WHsDYk" role="2JaDBN">
                  <node concept="3oM_SD" id="1E1X3WHsDYl" role="1PaTwD">
                    <property role="3oM_SC" value="EditorContext.getClipboard()" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDYm" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDYn" role="1PaTwD">
              <property role="3oM_SC" value="you're" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDYo" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDYp" role="1PaTwD">
              <property role="3oM_SC" value="editor." />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5AR2i49jCxI" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
        <node concept="2B6LJw" id="5AR2i49jDd4" role="2B76xF">
          <ref role="2B6OnR" to="wyt6:~Deprecated.forRemoval()" resolve="forRemoval" />
          <node concept="3clFbT" id="5AR2i49jDHM" role="2B70Vg">
            <property role="3clFbU" value="true" />
          </node>
        </node>
        <node concept="2B6LJw" id="5AR2i49jDHN" role="2B76xF">
          <ref role="2B6OnR" to="wyt6:~Deprecated.since()" resolve="since" />
          <node concept="Xl_RD" id="5AR2i49jDOt" role="2B70Vg">
            <property role="Xl_RC" value="2025.1" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5AR2i49iaqi" role="jymVt" />
    <node concept="2YIFZL" id="5AR2i49iapQ" role="jymVt">
      <property role="TrG5h" value="putToClipboard" />
      <node concept="3Tm1VV" id="5AR2i49iapR" role="1B3o_S" />
      <node concept="37vLTG" id="5AR2i49iapS" role="3clF46">
        <property role="TrG5h" value="nodes" />
        <node concept="3uibUv" id="5AR2i49iapT" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
          <node concept="3uibUv" id="5AR2i49iapU" role="11_B2D">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5AR2i49iapV" role="3clF46">
        <property role="TrG5h" value="nodesAndAttributes" />
        <node concept="3uibUv" id="5AR2i49iapW" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
          <node concept="3uibUv" id="5AR2i49iapX" role="11_B2D">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
          <node concept="3uibUv" id="5AR2i49iapY" role="11_B2D">
            <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
            <node concept="3uibUv" id="5AR2i49iapZ" role="11_B2D">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5AR2i49iyK3" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="37vLTG" id="5AR2i49iaq0" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="3uibUv" id="5AR2i49iaq1" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="5AR2i49ik4U" role="3clF46">
        <property role="TrG5h" value="freshNodes" />
        <node concept="10P_77" id="5AR2i49ixi0" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5AR2i49iaq2" role="3clF47">
        <node concept="3cpWs8" id="5AR2i49iaq3" role="3cqZAp">
          <node concept="3cpWsn" id="5AR2i49iaq4" role="3cpWs9">
            <property role="TrG5h" value="transferable" />
            <node concept="3uibUv" id="5AR2i49iaq5" role="1tU5fm">
              <ref role="3uigEE" node="5tGs5KqKj2K" resolve="SNodeTransferable" />
            </node>
            <node concept="2ShNRf" id="5AR2i49iaq6" role="33vP2m">
              <node concept="1pGfFk" id="5AR2i49iaq7" role="2ShVmc">
                <ref role="37wK5l" node="5tGs5KqKj4f" resolve="SNodeTransferable" />
                <node concept="2YIFZM" id="5AR2i49jodC" role="37wK5m">
                  <ref role="37wK5l" to="18ew:~IterableUtil.asList(java.lang.Iterable)" resolve="asList" />
                  <ref role="1Pybhc" to="18ew:~IterableUtil" resolve="IterableUtil" />
                  <node concept="37vLTw" id="5AR2i49joTy" role="37wK5m">
                    <ref role="3cqZAo" node="5AR2i49iapS" resolve="nodes" />
                  </node>
                </node>
                <node concept="37vLTw" id="5AR2i49iaq9" role="37wK5m">
                  <ref role="3cqZAo" node="5AR2i49iaq0" resolve="text" />
                </node>
                <node concept="37vLTw" id="5AR2i49iaqa" role="37wK5m">
                  <ref role="3cqZAo" node="5AR2i49iapV" resolve="nodesAndAttributes" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5AR2i49iaqb" role="3cqZAp">
          <node concept="1rXfSq" id="5AR2i49iaqc" role="3clFbG">
            <ref role="37wK5l" node="2NI1dvfpeH1" resolve="setClipboardContents" />
            <node concept="37vLTw" id="5AR2i49iaqd" role="37wK5m">
              <ref role="3cqZAo" node="5AR2i49iaq4" resolve="transferable" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5AR2i49iO5g" role="3cqZAp">
          <node concept="3clFbS" id="5AR2i49iO5i" role="3clFbx">
            <node concept="3SKdUt" id="5AR2i49j4FL" role="3cqZAp">
              <node concept="1PaTwC" id="5AR2i49j4FM" role="1aUNEU">
                <node concept="3oM_SD" id="5AR2i49j5dD" role="1PaTwD">
                  <property role="3oM_SC" value="sort" />
                </node>
                <node concept="3oM_SD" id="5AR2i49j5dE" role="1PaTwD">
                  <property role="3oM_SC" value="of" />
                </node>
                <node concept="3oM_SD" id="5AR2i49j5dF" role="1PaTwD">
                  <property role="3oM_SC" value="hack." />
                </node>
                <node concept="3oM_SD" id="5AR2i49j5dG" role="1PaTwD">
                  <property role="3oM_SC" value="indicate" />
                </node>
                <node concept="3oM_SD" id="5AR2i49j5dH" role="1PaTwD">
                  <property role="3oM_SC" value="nodes" />
                </node>
                <node concept="3oM_SD" id="5AR2i49j5dI" role="1PaTwD">
                  <property role="3oM_SC" value="copied" />
                </node>
                <node concept="3oM_SD" id="5AR2i49j5dJ" role="1PaTwD">
                  <property role="3oM_SC" value="into" />
                </node>
                <node concept="3oM_SD" id="5AR2i49j5dK" role="1PaTwD">
                  <property role="3oM_SC" value="clipboard" />
                </node>
                <node concept="3oM_SD" id="5AR2i49j5dL" role="1PaTwD">
                  <property role="3oM_SC" value="are" />
                </node>
                <node concept="3oM_SD" id="5AR2i49j5dM" role="1PaTwD">
                  <property role="3oM_SC" value="present" />
                </node>
                <node concept="3oM_SD" id="5AR2i49j5dN" role="1PaTwD">
                  <property role="3oM_SC" value="elsewhere," />
                </node>
                <node concept="3oM_SD" id="5AR2i49j5eb" role="1PaTwD">
                  <property role="3oM_SC" value="not" />
                </node>
                <node concept="3oM_SD" id="5AR2i49j5ec" role="1PaTwD">
                  <property role="3oM_SC" value="&quot;freshly&quot;" />
                </node>
                <node concept="3oM_SD" id="5AR2i49j5eX" role="1PaTwD">
                  <property role="3oM_SC" value="made" />
                </node>
                <node concept="3oM_SD" id="5AR2i49j5fu" role="1PaTwD">
                  <property role="3oM_SC" value="for" />
                </node>
                <node concept="3oM_SD" id="5AR2i49j5gw" role="1PaTwD">
                  <property role="3oM_SC" value="Clipboard" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="5AR2i49j5ha" role="3cqZAp">
              <node concept="1PaTwC" id="5AR2i49j5gM" role="1aUNEU">
                <node concept="3oM_SD" id="5AR2i49j5gL" role="1PaTwD">
                  <property role="3oM_SC" value="Consume" />
                </node>
                <node concept="3oM_SD" id="5AR2i49j5OO" role="1PaTwD">
                  <property role="3oM_SC" value="them" />
                </node>
                <node concept="3oM_SD" id="5AR2i49j5P6" role="1PaTwD">
                  <property role="3oM_SC" value="as" />
                </node>
                <node concept="3oM_SD" id="5AR2i49j5dP" role="1PaTwD">
                  <property role="3oM_SC" value="if" />
                </node>
                <node concept="3oM_SD" id="5AR2i49j5dQ" role="1PaTwD">
                  <property role="3oM_SC" value="were" />
                </node>
                <node concept="3oM_SD" id="5AR2i49j5dR" role="1PaTwD">
                  <property role="3oM_SC" value="cut" />
                </node>
                <node concept="3oM_SD" id="5AR2i49j5dS" role="1PaTwD">
                  <property role="3oM_SC" value="and" />
                </node>
                <node concept="3oM_SD" id="5AR2i49j5dT" role="1PaTwD">
                  <property role="3oM_SC" value="pasted" />
                </node>
                <node concept="3oM_SD" id="5AR2i49j5dU" role="1PaTwD">
                  <property role="3oM_SC" value="back" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5AR2i49iQM1" role="3cqZAp">
              <node concept="2OqwBi" id="5AR2i49iUyD" role="3clFbG">
                <node concept="2OqwBi" id="5AR2i49iReo" role="2Oq$k0">
                  <node concept="37vLTw" id="5AR2i49iQLZ" role="2Oq$k0">
                    <ref role="3cqZAo" node="5AR2i49iaq4" resolve="transferable" />
                  </node>
                  <node concept="liA8E" id="5AR2i49iTBz" role="2OqNvi">
                    <ref role="37wK5l" node="5tGs5KqKj7n" resolve="createNodeData" />
                  </node>
                </node>
                <node concept="liA8E" id="5AR2i49iVQf" role="2OqNvi">
                  <ref role="37wK5l" to="qzxo:~PasteNodeData.consume()" resolve="consume" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="5AR2i49iOUZ" role="3clFbw">
            <node concept="37vLTw" id="5AR2i49iPPH" role="3fr31v">
              <ref role="3cqZAo" node="5AR2i49ik4U" resolve="freshNodes" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="5AR2i49ixSy" role="3clF45" />
      <node concept="P$JXv" id="5AR2i49nwcP" role="lGtFl">
        <node concept="TZ7YB" id="5AR2i49nxg9" role="3nqlJM">
          <property role="TZ7Y_" value="" />
          <node concept="1PaTwC" id="1E1X3WHsDYq" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHsDYr" role="1PaTwD">
              <property role="3oM_SC" value="2025.1" />
            </node>
          </node>
        </node>
        <node concept="TUZQ0" id="5AR2i49nwd1" role="3nqlJM">
          <property role="TUZQ4" value="" />
          <node concept="zr_55" id="5AR2i49nwd3" role="zr_5Q">
            <ref role="zr_51" node="5AR2i49ik4U" resolve="freshNodes" />
          </node>
          <node concept="1PaTwC" id="1E1X3WHsDYs" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHsDYt" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDYu" role="1PaTwD">
              <property role="3oM_SC" value="{@code" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDYv" role="1PaTwD">
              <property role="3oM_SC" value="false}" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDYw" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDYx" role="1PaTwD">
              <property role="3oM_SC" value="indicate" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDYy" role="1PaTwD">
              <property role="3oM_SC" value="original" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDYz" role="1PaTwD">
              <property role="3oM_SC" value="nodes" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDY$" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDY_" role="1PaTwD">
              <property role="3oM_SC" value="still" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDYA" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDYB" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDYC" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDYD" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDYE" role="1PaTwD">
              <property role="3oM_SC" value="copied" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDYF" role="1PaTwD">
              <property role="3oM_SC" value="nodes" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDYG" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDYH" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDYI" role="1PaTwD">
              <property role="3oM_SC" value="deemed" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDYJ" role="1PaTwD">
              <property role="3oM_SC" value="'unique'" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5AR2i49iapM" role="jymVt" />
    <node concept="2tJIrI" id="5AR2i49iapO" role="jymVt" />
    <node concept="2YIFZL" id="2NI1dvfpeH1" role="jymVt">
      <property role="TrG5h" value="setClipboardContents" />
      <node concept="37vLTG" id="2NI1dvfpeH6" role="3clF46">
        <property role="TrG5h" value="content" />
        <node concept="3uibUv" id="2NI1dvfpeH7" role="1tU5fm">
          <ref role="3uigEE" to="kt01:~Transferable" resolve="Transferable" />
        </node>
      </node>
      <node concept="3cqZAl" id="2NI1dvfpeH2" role="3clF45" />
      <node concept="3Tm6S6" id="2NI1dvfpeH5" role="1B3o_S" />
      <node concept="3clFbS" id="2NI1dvfpeH4" role="3clF47">
        <node concept="3SKdUt" id="4aiIrgTuAe0" role="3cqZAp">
          <node concept="1PaTwC" id="4aiIrgTuAe1" role="1aUNEU">
            <node concept="3oM_SD" id="4aiIrgTuB37" role="1PaTwD">
              <property role="3oM_SC" value="SwingUtilities.invokeLater" />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuB38" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuB39" role="1PaTwD">
              <property role="3oM_SC" value="workaround" />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuB3a" role="1PaTwD">
              <property role="3oM_SC" value="MPS-37419" />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuB3b" role="1PaTwD">
              <property role="3oM_SC" value="until" />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuB3c" role="1PaTwD">
              <property role="3oM_SC" value="IJPL-157587" />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuB3d" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuB3e" role="1PaTwD">
              <property role="3oM_SC" value="resolved." />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuKpn" role="1PaTwD">
              <property role="3oM_SC" value="There" />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuKpo" role="1PaTwD">
              <property role="3oM_SC" value="may" />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuKpp" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuKpq" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuKpr" role="1PaTwD">
              <property role="3oM_SC" value="parallel" />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuKps" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4aiIrgTHOiF" role="3cqZAp">
          <node concept="1PaTwC" id="4aiIrgTHOhG" role="1aUNEU">
            <node concept="3oM_SD" id="4aiIrgTHOhF" role="1PaTwD">
              <property role="3oM_SC" value="thread" />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuKpt" role="1PaTwD">
              <property role="3oM_SC" value="(clipboard" />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuKpu" role="1PaTwD">
              <property role="3oM_SC" value="synchronizer)" />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuKpv" role="1PaTwD">
              <property role="3oM_SC" value="running" />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuKpw" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuKpx" role="1PaTwD">
              <property role="3oM_SC" value="holds" />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuKpy" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuKpz" role="1PaTwD">
              <property role="3oM_SC" value="clipboard" />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuKp$" role="1PaTwD">
              <property role="3oM_SC" value="lock" />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuKp_" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuKpA" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuKpB" role="1PaTwD">
              <property role="3oM_SC" value="waiting" />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuKpC" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuKpD" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuKpE" role="1PaTwD">
              <property role="3oM_SC" value="Write" />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuKr1" role="1PaTwD">
              <property role="3oM_SC" value="lock" />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuM7z" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuM7$" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4aiIrgTHQaN" role="3cqZAp">
          <node concept="1PaTwC" id="4aiIrgTHQa1" role="1aUNEU">
            <node concept="3oM_SD" id="4aiIrgTHQa0" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuM7_" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuM7A" role="1PaTwD">
              <property role="3oM_SC" value="currently" />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuM7B" role="1PaTwD">
              <property role="3oM_SC" value="holding" />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuM7C" role="1PaTwD">
              <property role="3oM_SC" value="(executing" />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuM7D" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuM7E" role="1PaTwD">
              <property role="3oM_SC" value="Command)." />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuM7F" role="1PaTwD">
              <property role="3oM_SC" value="So" />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuM7G" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuM7H" role="1PaTwD">
              <property role="3oM_SC" value="must" />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuM7I" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuM7J" role="1PaTwD">
              <property role="3oM_SC" value="attempt" />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuM7K" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuM7L" role="1PaTwD">
              <property role="3oM_SC" value="access" />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuM7M" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuM7N" role="1PaTwD">
              <property role="3oM_SC" value="clipboard" />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuM7O" role="1PaTwD">
              <property role="3oM_SC" value="here" />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuM7P" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="4aiIrgTHR2j" role="1PaTwD">
              <property role="3oM_SC" value="avoid" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4aiIrgTHR35" role="3cqZAp">
          <node concept="1PaTwC" id="4aiIrgTHR2_" role="1aUNEU">
            <node concept="3oM_SD" id="4aiIrgTHR2$" role="1PaTwD">
              <property role="3oM_SC" value="deadlock." />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuM7S" role="1PaTwD">
              <property role="3oM_SC" value="Let's" />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuM7T" role="1PaTwD">
              <property role="3oM_SC" value="release" />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuM7U" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuM7V" role="1PaTwD">
              <property role="3oM_SC" value="Write" />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuMZp" role="1PaTwD">
              <property role="3oM_SC" value="lock" />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuMZq" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuMZr" role="1PaTwD">
              <property role="3oM_SC" value="set" />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuMZs" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuMZt" role="1PaTwD">
              <property role="3oM_SC" value="clipboard" />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuMZu" role="1PaTwD">
              <property role="3oM_SC" value="content" />
            </node>
            <node concept="3oM_SD" id="4aiIrgTuMZv" role="1PaTwD">
              <property role="3oM_SC" value="later." />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2M0CR5h$Pp$" role="3cqZAp">
          <node concept="2YIFZM" id="2M0CR5h$Qf1" role="3clFbG">
            <ref role="37wK5l" to="dxuu:~SwingUtilities.invokeLater(java.lang.Runnable)" resolve="invokeLater" />
            <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
            <node concept="1bVj0M" id="2M0CR5h$R7Q" role="37wK5m">
              <node concept="3clFbS" id="2M0CR5h$R7T" role="1bW5cS">
                <node concept="3J1_TO" id="2NI1dvfpeH8" role="3cqZAp">
                  <node concept="3clFbS" id="2NI1dvfpeHh" role="1zxBo7">
                    <node concept="3cpWs8" id="2NI1dvfpeHi" role="3cqZAp">
                      <node concept="3cpWsn" id="2NI1dvfpeHj" role="3cpWs9">
                        <property role="TrG5h" value="stringContent" />
                        <property role="3TUv4t" value="false" />
                        <node concept="17QB3L" id="2NI1dvfpeHU" role="1tU5fm" />
                        <node concept="1rXfSq" id="4hiugqyssTS" role="33vP2m">
                          <ref role="37wK5l" node="2NI1dvfp7XA" resolve="getStringContent" />
                          <node concept="37vLTw" id="2BHiRxghgfu" role="37wK5m">
                            <ref role="3cqZAo" node="2NI1dvfpeH6" resolve="content" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="2NI1dvfpeHn" role="3cqZAp">
                      <node concept="3y3z36" id="2NI1dvfpeHo" role="3clFbw">
                        <node concept="37vLTw" id="3GM_nagTB$n" role="3uHU7B">
                          <ref role="3cqZAo" node="2NI1dvfpeHj" resolve="stringContent" />
                        </node>
                        <node concept="10Nm6u" id="2NI1dvfpeHq" role="3uHU7w" />
                      </node>
                      <node concept="3clFbS" id="2NI1dvfpeHr" role="3clFbx">
                        <node concept="1DcWWT" id="2NI1dvfpeHs" role="3cqZAp">
                          <node concept="3cpWsn" id="2NI1dvfpeHy" role="1Duv9x">
                            <property role="TrG5h" value="existingContent" />
                            <property role="3TUv4t" value="false" />
                            <node concept="3uibUv" id="2NI1dvfpeHY" role="1tU5fm">
                              <ref role="3uigEE" to="kt01:~Transferable" resolve="Transferable" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="2NI1dvfpeH$" role="2LFqv$">
                            <node concept="3clFbJ" id="2NI1dvfpeH_" role="3cqZAp">
                              <node concept="2OqwBi" id="2NI1dvfpeHA" role="3clFbw">
                                <node concept="37vLTw" id="3GM_nagTsss" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2NI1dvfpeHj" resolve="stringContent" />
                                </node>
                                <node concept="liA8E" id="2NI1dvfpeHC" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                                  <node concept="1rXfSq" id="4hiugqystVs" role="37wK5m">
                                    <ref role="37wK5l" node="2NI1dvfp7XA" resolve="getStringContent" />
                                    <node concept="37vLTw" id="3GM_nagTrkX" role="37wK5m">
                                      <ref role="3cqZAo" node="2NI1dvfpeHy" resolve="existingContent" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbS" id="2NI1dvfpeHF" role="3clFbx">
                                <node concept="3clFbF" id="2NI1dvfpgmf" role="3cqZAp">
                                  <node concept="2OqwBi" id="2NI1dvfpgmj" role="3clFbG">
                                    <node concept="2YIFZM" id="$mzrmRC_2A" role="2Oq$k0">
                                      <ref role="37wK5l" to="ddhc:~CopyPasteManagerEx.getInstanceEx()" resolve="getInstanceEx" />
                                      <ref role="1Pybhc" to="ddhc:~CopyPasteManagerEx" resolve="CopyPasteManagerEx" />
                                    </node>
                                    <node concept="liA8E" id="2NI1dvfpgmn" role="2OqNvi">
                                      <ref role="37wK5l" to="ddhc:~CopyPasteManagerEx.removeContent(java.awt.datatransfer.Transferable)" resolve="removeContent" />
                                      <node concept="37vLTw" id="3GM_nagTAVl" role="37wK5m">
                                        <ref role="3cqZAo" node="2NI1dvfpeHy" resolve="existingContent" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="2NI1dvfpeI7" role="1DdaDG">
                            <node concept="2YIFZM" id="$mzrmRC_2C" role="2Oq$k0">
                              <ref role="37wK5l" to="ddhc:~CopyPasteManagerEx.getInstanceEx()" resolve="getInstanceEx" />
                              <ref role="1Pybhc" to="ddhc:~CopyPasteManagerEx" resolve="CopyPasteManagerEx" />
                            </node>
                            <node concept="liA8E" id="2NI1dvfpeIb" role="2OqNvi">
                              <ref role="37wK5l" to="ddhc:~CopyPasteManagerEx.getAllContents()" resolve="getAllContents" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uVAMA" id="2NI1dvfpeH9" role="1zxBo5">
                    <node concept="XOnhg" id="2NI1dvfpeHb" role="1zc67B">
                      <property role="3TUv4t" value="false" />
                      <property role="TrG5h" value="e" />
                      <node concept="nSUau" id="xvs04dIxyv" role="1tU5fm">
                        <node concept="3uibUv" id="2NI1dvfpeHc" role="nSUat">
                          <ref role="3uigEE" to="kt01:~UnsupportedFlavorException" resolve="UnsupportedFlavorException" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="2NI1dvfpeHa" role="1zc67A" />
                  </node>
                  <node concept="3uVAMA" id="2NI1dvfpeHd" role="1zxBo5">
                    <node concept="XOnhg" id="2NI1dvfpeHf" role="1zc67B">
                      <property role="3TUv4t" value="false" />
                      <property role="TrG5h" value="ex" />
                      <node concept="nSUau" id="xvs04dIxyx" role="1tU5fm">
                        <node concept="3uibUv" id="2NI1dvfpeHg" role="nSUat">
                          <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="2NI1dvfpeHe" role="1zc67A" />
                  </node>
                </node>
                <node concept="3clFbF" id="2NI1dvfpgm$" role="3cqZAp">
                  <node concept="2OqwBi" id="2NI1dvfpgmB" role="3clFbG">
                    <node concept="2YIFZM" id="$mzrmRC_2G" role="2Oq$k0">
                      <ref role="37wK5l" to="ddhc:~CopyPasteManagerEx.getInstanceEx()" resolve="getInstanceEx" />
                      <ref role="1Pybhc" to="ddhc:~CopyPasteManagerEx" resolve="CopyPasteManagerEx" />
                    </node>
                    <node concept="liA8E" id="2NI1dvfpgmF" role="2OqNvi">
                      <ref role="37wK5l" to="ddhc:~CopyPasteManagerEx.setContents(java.awt.datatransfer.Transferable)" resolve="setContents" />
                      <node concept="37vLTw" id="2BHiRxghfwf" role="37wK5m">
                        <ref role="3cqZAo" node="2NI1dvfpeH6" resolve="content" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="2NI1dvfpgtQ" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHsDYK" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsDYL" role="1PaTwD">
            <property role="3oM_SC" value="A" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDYM" role="1PaTwD">
            <property role="3oM_SC" value="workaround" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDYN" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDYO" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDYP" role="1PaTwD">
            <property role="3oM_SC" value="following" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDYQ" role="1PaTwD">
            <property role="3oM_SC" value="problem" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDYR" role="1PaTwD">
            <property role="3oM_SC" value="with" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDYS" role="1PaTwD">
            <property role="3oM_SC" value="CopyPasteManagerEx:" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsDYT" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsDYU" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsDYV" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsDYW" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDYX" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDYY" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDYZ" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDZ0" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDZ1" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDZ2" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDZ3" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDZ4" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDZ5" role="1PaTwD">
            <property role="3oM_SC" value="if" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDZ6" role="1PaTwD">
            <property role="3oM_SC" value="stringContent" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDZ7" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDZ8" role="1PaTwD">
            <property role="3oM_SC" value="one" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDZ9" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDZa" role="1PaTwD">
            <property role="3oM_SC" value="existing" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDZb" role="1PaTwD">
            <property role="3oM_SC" value="Transferable" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDZc" role="1PaTwD">
            <property role="3oM_SC" value="instances" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDZd" role="1PaTwD">
            <property role="3oM_SC" value="stored" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDZe" role="1PaTwD">
            <property role="3oM_SC" value="inside" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDZf" role="1PaTwD">
            <property role="3oM_SC" value="CopyPasteManagerEx.myDatas" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsDZg" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsDZh" role="1PaTwD">
            <property role="3oM_SC" value="collection" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDZi" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDZj" role="1PaTwD">
            <property role="3oM_SC" value="equals" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDZk" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDZl" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDZm" role="1PaTwD">
            <property role="3oM_SC" value="stringContent" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDZn" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDZo" role="1PaTwD">
            <property role="3oM_SC" value="Transferable" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDZp" role="1PaTwD">
            <property role="3oM_SC" value="we" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDZq" role="1PaTwD">
            <property role="3oM_SC" value="are" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDZr" role="1PaTwD">
            <property role="3oM_SC" value="trying" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDZs" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDZt" role="1PaTwD">
            <property role="3oM_SC" value="&quot;push&quot;" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDZu" role="1PaTwD">
            <property role="3oM_SC" value="there" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDZv" role="1PaTwD">
            <property role="3oM_SC" value="(used" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDZw" role="1PaTwD">
            <property role="3oM_SC" value="as" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDZx" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDZy" role="1PaTwD">
            <property role="3oM_SC" value="parameter" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsDZz" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsDZ$" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDZ_" role="1PaTwD">
            <property role="3oM_SC" value="this" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDZA" role="1PaTwD">
            <property role="3oM_SC" value="method)" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDZB" role="1PaTwD">
            <property role="3oM_SC" value="then" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDZC" role="1PaTwD">
            <property role="3oM_SC" value="existing" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDZD" role="1PaTwD">
            <property role="3oM_SC" value="element" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDZE" role="1PaTwD">
            <property role="3oM_SC" value="will" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDZF" role="1PaTwD">
            <property role="3oM_SC" value="&quot;float" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDZG" role="1PaTwD">
            <property role="3oM_SC" value="up&quot;" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDZH" role="1PaTwD">
            <property role="3oM_SC" value="inside" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDZI" role="1PaTwD">
            <property role="3oM_SC" value="CopyPasteManagerEx.myDatas" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDZJ" role="1PaTwD">
            <property role="3oM_SC" value="collection" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDZK" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDZL" role="1PaTwD">
            <property role="3oM_SC" value="will" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsDZM" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsDZN" role="1PaTwD">
            <property role="3oM_SC" value="be" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDZO" role="1PaTwD">
            <property role="3oM_SC" value="used" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDZP" role="1PaTwD">
            <property role="3oM_SC" value="next" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDZQ" role="1PaTwD">
            <property role="3oM_SC" value="on" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDZR" role="1PaTwD">
            <property role="3oM_SC" value="next" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDZS" role="1PaTwD">
            <property role="3oM_SC" value="paste" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDZT" role="1PaTwD">
            <property role="3oM_SC" value="operation" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDZU" role="1PaTwD">
            <property role="3oM_SC" value="instead" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDZV" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDZW" role="1PaTwD">
            <property role="3oM_SC" value="passed" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDZX" role="1PaTwD">
            <property role="3oM_SC" value="Transferable." />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsDZY" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsDZZ" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsE00" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsE01" role="1PaTwD">
            <property role="3oM_SC" value="In" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE02" role="1PaTwD">
            <property role="3oM_SC" value="case" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE03" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE04" role="1PaTwD">
            <property role="3oM_SC" value="MPS" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE05" role="1PaTwD">
            <property role="3oM_SC" value="precondition" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE06" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE07" role="1PaTwD">
            <property role="3oM_SC" value="string" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE08" role="1PaTwD">
            <property role="3oM_SC" value="equality" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE09" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE0a" role="1PaTwD">
            <property role="3oM_SC" value="clipboard" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE0b" role="1PaTwD">
            <property role="3oM_SC" value="content" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE0c" role="1PaTwD">
            <property role="3oM_SC" value="meant" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE0d" role="1PaTwD">
            <property role="3oM_SC" value="actual" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE0e" role="1PaTwD">
            <property role="3oM_SC" value="equality" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE0f" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE0g" role="1PaTwD">
            <property role="3oM_SC" value="passed" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE0h" role="1PaTwD">
            <property role="3oM_SC" value="Transferables" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsE0i" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsE0j" role="1PaTwD">
            <property role="3oM_SC" value="(SNodeTransferables)" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE0k" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE0l" role="1PaTwD">
            <property role="3oM_SC" value="generally" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE0m" role="1PaTwD">
            <property role="3oM_SC" value="wrong," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE0n" role="1PaTwD">
            <property role="3oM_SC" value="so" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE0o" role="1PaTwD">
            <property role="3oM_SC" value="we" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE0p" role="1PaTwD">
            <property role="3oM_SC" value="have" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE0q" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE0r" role="1PaTwD">
            <property role="3oM_SC" value="work" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE0s" role="1PaTwD">
            <property role="3oM_SC" value="around" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE0t" role="1PaTwD">
            <property role="3oM_SC" value="this" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE0u" role="1PaTwD">
            <property role="3oM_SC" value="logic" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE0v" role="1PaTwD">
            <property role="3oM_SC" value="by" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE0w" role="1PaTwD">
            <property role="3oM_SC" value="deleting" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE0x" role="1PaTwD">
            <property role="3oM_SC" value="all" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE0y" role="1PaTwD">
            <property role="3oM_SC" value="exiting" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE0z" role="1PaTwD">
            <property role="3oM_SC" value="Transferables" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsE0$" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsE0_" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE0A" role="1PaTwD">
            <property role="3oM_SC" value="avoid" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE0B" role="1PaTwD">
            <property role="3oM_SC" value="possible" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE0C" role="1PaTwD">
            <property role="3oM_SC" value="collisions" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE0D" role="1PaTwD">
            <property role="3oM_SC" value="between" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE0E" role="1PaTwD">
            <property role="3oM_SC" value="copied" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE0F" role="1PaTwD">
            <property role="3oM_SC" value="elements" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE0G" role="1PaTwD">
            <property role="3oM_SC" value="preventing" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE0H" role="1PaTwD">
            <property role="3oM_SC" value="user" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE0I" role="1PaTwD">
            <property role="3oM_SC" value="from" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE0J" role="1PaTwD">
            <property role="3oM_SC" value="copying" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE0K" role="1PaTwD">
            <property role="3oM_SC" value="actual" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE0L" role="1PaTwD">
            <property role="3oM_SC" value="node" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE0M" role="1PaTwD">
            <property role="3oM_SC" value="under" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE0N" role="1PaTwD">
            <property role="3oM_SC" value="mouse" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE0O" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE0P" role="1PaTwD">
            <property role="3oM_SC" value="editor." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="2NI1dvfp7XA" role="jymVt">
      <property role="TrG5h" value="getStringContent" />
      <node concept="37vLTG" id="2NI1dvfpa1W" role="3clF46">
        <property role="TrG5h" value="content" />
        <node concept="3uibUv" id="2NI1dvfpa1Y" role="1tU5fm">
          <ref role="3uigEE" to="kt01:~Transferable" resolve="Transferable" />
        </node>
      </node>
      <node concept="17QB3L" id="2NI1dvfpa1V" role="3clF45" />
      <node concept="3clFbS" id="2NI1dvfp7XD" role="3clF47">
        <node concept="3cpWs6" id="2NI1dvfpa1Z" role="3cqZAp">
          <node concept="10QFUN" id="2NI1dvfpa20" role="3cqZAk">
            <node concept="2OqwBi" id="2NI1dvfpa21" role="10QFUP">
              <node concept="37vLTw" id="2BHiRxgll6a" role="2Oq$k0">
                <ref role="3cqZAo" node="2NI1dvfpa1W" resolve="content" />
              </node>
              <node concept="liA8E" id="2NI1dvfpa23" role="2OqNvi">
                <ref role="37wK5l" to="kt01:~Transferable.getTransferData(java.awt.datatransfer.DataFlavor)" resolve="getTransferData" />
                <node concept="10M0yZ" id="2NI1dvfpa24" role="37wK5m">
                  <ref role="1PxDUh" to="kt01:~DataFlavor" resolve="DataFlavor" />
                  <ref role="3cqZAo" to="kt01:~DataFlavor.stringFlavor" resolve="stringFlavor" />
                </node>
              </node>
            </node>
            <node concept="17QB3L" id="2NI1dvfpa27" role="10QFUM" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="2NI1dvfpa28" role="Sfmx6">
        <ref role="3uigEE" to="kt01:~UnsupportedFlavorException" resolve="UnsupportedFlavorException" />
      </node>
      <node concept="3uibUv" id="2NI1dvfpeH0" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
      <node concept="3Tm6S6" id="2NI1dvfp7XE" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5AR2i49nFY3" role="jymVt" />
    <node concept="2YIFZL" id="5tGs5KqKiIT" role="jymVt">
      <property role="TrG5h" value="copyNodesToClipboard" />
      <node concept="3Tm1VV" id="5tGs5KqKiIU" role="1B3o_S" />
      <node concept="37vLTG" id="5tGs5KqKiIW" role="3clF46">
        <property role="TrG5h" value="nodes" />
        <node concept="3uibUv" id="5tGs5KqKiIX" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="5tGs5KqKiIY" role="11_B2D">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="5tGs5KqKiIZ" role="3clF47">
        <node concept="3cpWs8" id="5tGs5KqKiJ0" role="3cqZAp">
          <node concept="3cpWsn" id="5tGs5KqKiJ1" role="3cpWs9">
            <property role="TrG5h" value="stringBuilder" />
            <node concept="3uibUv" id="5tGs5KqKiJ2" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
            </node>
            <node concept="2ShNRf" id="5tGs5KqKiJ3" role="33vP2m">
              <node concept="1pGfFk" id="5tGs5KqKiJ4" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5tGs5KqKiJ5" role="3cqZAp">
          <node concept="3cpWsn" id="5tGs5KqKiJ6" role="3cpWs9">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="5tGs5KqKiJ7" role="1tU5fm" />
            <node concept="3cmrfG" id="5tGs5KqKiJ8" role="33vP2m">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5tGs5KqKiJ9" role="3cqZAp">
          <node concept="3cpWsn" id="5tGs5KqKiJa" role="3cpWs9">
            <property role="TrG5h" value="size" />
            <node concept="10Oyi0" id="5tGs5KqKiJb" role="1tU5fm" />
            <node concept="2OqwBi" id="5tGs5KqKiJc" role="33vP2m">
              <node concept="37vLTw" id="2BHiRxgm6_L" role="2Oq$k0">
                <ref role="3cqZAo" node="5tGs5KqKiIW" resolve="nodes" />
              </node>
              <node concept="liA8E" id="5tGs5KqKiJe" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="5tGs5KqKiJf" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxgmedH" role="1DdaDG">
            <ref role="3cqZAo" node="5tGs5KqKiIW" resolve="nodes" />
          </node>
          <node concept="3cpWsn" id="5tGs5KqKiJh" role="1Duv9x">
            <property role="TrG5h" value="node" />
            <node concept="3uibUv" id="5tGs5KqKiJi" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
          </node>
          <node concept="3clFbS" id="5tGs5KqKiJj" role="2LFqv$">
            <node concept="3clFbF" id="5tGs5KqKiJk" role="3cqZAp">
              <node concept="2OqwBi" id="5tGs5KqKiJl" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagTAkx" role="2Oq$k0">
                  <ref role="3cqZAo" node="5tGs5KqKiJ1" resolve="stringBuilder" />
                </node>
                <node concept="liA8E" id="5tGs5KqKiJn" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                  <node concept="2YIFZM" id="7LmwlFdRJzf" role="37wK5m">
                    <ref role="1Pybhc" to="unno:1NYD3hytmTa" resolve="SNodeOperations" />
                    <ref role="37wK5l" to="unno:7U87j6$6ALH" resolve="getDebugText" />
                    <node concept="37vLTw" id="3GM_nagTtvK" role="37wK5m">
                      <ref role="3cqZAo" node="5tGs5KqKiJh" resolve="node" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5tGs5KqKiJr" role="3cqZAp">
              <node concept="3eOVzh" id="5tGs5KqKiJs" role="3clFbw">
                <node concept="37vLTw" id="3GM_nagTx6G" role="3uHU7B">
                  <ref role="3cqZAo" node="5tGs5KqKiJ6" resolve="i" />
                </node>
                <node concept="37vLTw" id="3GM_nagT$zo" role="3uHU7w">
                  <ref role="3cqZAo" node="5tGs5KqKiJa" resolve="size" />
                </node>
              </node>
              <node concept="3clFbS" id="5tGs5KqKiJv" role="3clFbx">
                <node concept="3clFbF" id="5tGs5KqKiJw" role="3cqZAp">
                  <node concept="2OqwBi" id="5tGs5KqKiJx" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagTrzz" role="2Oq$k0">
                      <ref role="3cqZAo" node="5tGs5KqKiJ1" resolve="stringBuilder" />
                    </node>
                    <node concept="liA8E" id="5tGs5KqKiJz" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                      <node concept="Xl_RD" id="5tGs5KqKiJ$" role="37wK5m">
                        <property role="Xl_RC" value="\n" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5tGs5KqKiJ_" role="3cqZAp">
              <node concept="3uNrnE" id="5tGs5KqKiJA" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagTsU6" role="2$L3a6">
                  <ref role="3cqZAo" node="5tGs5KqKiJ6" resolve="i" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5AR2i49nYpP" role="3cqZAp">
          <node concept="1PaTwC" id="5AR2i49nYpQ" role="1aUNEU">
            <node concept="3oM_SD" id="5AR2i49nZ_g" role="1PaTwD">
              <property role="3oM_SC" value="see" />
            </node>
            <node concept="3oM_SD" id="5AR2i49nYYV" role="1PaTwD">
              <property role="3oM_SC" value="#copyNodesAndTextToClipboard()" />
            </node>
            <node concept="3oM_SD" id="5AR2i49o0QD" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="5AR2i49o0QE" role="1PaTwD">
              <property role="3oM_SC" value="reasons" />
            </node>
            <node concept="3oM_SD" id="5AR2i49o0QF" role="1PaTwD">
              <property role="3oM_SC" value="why" />
            </node>
            <node concept="3oM_SD" id="5AR2i49o0QG" role="1PaTwD">
              <property role="3oM_SC" value="freshNodes=='false'" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5AR2i49nPx8" role="3cqZAp">
          <node concept="1rXfSq" id="5AR2i49nPx6" role="3clFbG">
            <ref role="37wK5l" node="5AR2i49iapQ" resolve="putToClipboard" />
            <node concept="37vLTw" id="5AR2i49nQLE" role="37wK5m">
              <ref role="3cqZAo" node="5tGs5KqKiIW" resolve="nodes" />
            </node>
            <node concept="10Nm6u" id="5AR2i49nSj3" role="37wK5m" />
            <node concept="2OqwBi" id="2M0CR5h$HyD" role="37wK5m">
              <node concept="37vLTw" id="2M0CR5h$HyE" role="2Oq$k0">
                <ref role="3cqZAo" node="5tGs5KqKiJ1" resolve="stringBuilder" />
              </node>
              <node concept="liA8E" id="2M0CR5h$HyF" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~StringBuilder.toString()" resolve="toString" />
              </node>
            </node>
            <node concept="3clFbT" id="5AR2i49nVEm" role="37wK5m" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="5AR2i49nDX2" role="3clF45" />
      <node concept="P$JXv" id="5AR2i49nMeL" role="lGtFl">
        <node concept="TZ5HI" id="5AR2i49nMeM" role="3nqlJM">
          <node concept="1PaTwC" id="1E1X3WHsE0Q" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHsE0R" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="1Vtdud" id="1E1X3WHsE0S" role="1PaTwD">
              <node concept="1VuXuv" id="1E1X3WHsE0T" role="1Vtduc">
                <node concept="VXe0Z" id="5AR2i49nNkq" role="1VuXuu">
                  <ref role="VXe0S" node="5AR2i49iapQ" resolve="putToClipboard" />
                </node>
                <node concept="1PaTwC" id="1E1X3WHsE0W" role="2JaDBN">
                  <node concept="3oM_SD" id="1E1X3WHsE0X" role="1PaTwD">
                    <property role="3oM_SC" value="" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3oM_SD" id="1E1X3WHsE0Y" role="1PaTwD">
              <property role="3oM_SC" value="instead" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5AR2i49nMeO" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
      </node>
    </node>
    <node concept="2YIFZL" id="5tGs5KqKiJI" role="jymVt">
      <property role="TrG5h" value="copyNodeToClipboard" />
      <node concept="3Tm1VV" id="5tGs5KqKiJJ" role="1B3o_S" />
      <node concept="3cqZAl" id="5tGs5KqKiJK" role="3clF45" />
      <node concept="37vLTG" id="5tGs5KqKiJL" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="5tGs5KqKiJM" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3clFbS" id="5tGs5KqKiJN" role="3clF47">
        <node concept="3clFbF" id="5tGs5KqKiK0" role="3cqZAp">
          <node concept="2YIFZM" id="5tGs5KqKiK1" role="3clFbG">
            <ref role="1Pybhc" node="5tGs5KqKfGH" resolve="CopyPasteUtil" />
            <ref role="37wK5l" node="5tGs5KqKiIT" resolve="copyNodesToClipboard" />
            <node concept="2YIFZM" id="oR0qGlJZWk" role="37wK5m">
              <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object)" resolve="singletonList" />
              <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
              <node concept="37vLTw" id="oR0qGlK1dQ" role="37wK5m">
                <ref role="3cqZAo" node="5tGs5KqKiJL" resolve="node" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="55dLdDU2oS6" role="jymVt" />
    <node concept="2YIFZL" id="oR0qGlMF5V" role="jymVt">
      <property role="TrG5h" value="getNodesFromClipboard" />
      <node concept="3Tm1VV" id="oR0qGlMF5W" role="1B3o_S" />
      <node concept="3uibUv" id="oR0qGlMF5X" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="oR0qGlMF5Y" role="11_B2D">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3clFbS" id="oR0qGlMF61" role="3clF47">
        <node concept="3cpWs8" id="oR0qGlMF62" role="3cqZAp">
          <node concept="3cpWsn" id="oR0qGlMF63" role="3cpWs9">
            <property role="TrG5h" value="pnd" />
            <node concept="3uibUv" id="oR0qGlMF64" role="1tU5fm">
              <ref role="3uigEE" to="qzxo:~PasteNodeData" resolve="PasteNodeData" />
            </node>
            <node concept="1rXfSq" id="oR0qGlMF65" role="33vP2m">
              <ref role="37wK5l" node="oR0qGlKAkB" resolve="getPasteNodeData" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="oR0qGlMF66" role="3cqZAp">
          <node concept="3cpWsn" id="oR0qGlMF67" role="3cpWs9">
            <property role="TrG5h" value="rv" />
            <node concept="3uibUv" id="oR0qGlMF68" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="oR0qGlMF69" role="11_B2D">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
            </node>
            <node concept="2OqwBi" id="oR0qGlMF6a" role="33vP2m">
              <node concept="37vLTw" id="oR0qGlMF6b" role="2Oq$k0">
                <ref role="3cqZAo" node="oR0qGlMF63" resolve="pnd" />
              </node>
              <node concept="liA8E" id="oR0qGlMF6c" role="2OqNvi">
                <ref role="37wK5l" to="qzxo:~PasteNodeData.getNodes()" resolve="getNodes" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="oR0qGlMF6d" role="3cqZAp">
          <node concept="37vLTw" id="oR0qGlMF6e" role="3cqZAk">
            <ref role="3cqZAo" node="oR0qGlMF67" resolve="rv" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="oR0qGlLjEG" role="jymVt" />
    <node concept="2YIFZL" id="oR0qGlKAkB" role="jymVt">
      <property role="TrG5h" value="getPasteNodeData" />
      <node concept="3clFbS" id="oR0qGlKvCr" role="3clF47">
        <node concept="3cpWs8" id="55dLdDU26gh" role="3cqZAp">
          <node concept="3cpWsn" id="55dLdDU26gi" role="3cpWs9">
            <property role="TrG5h" value="ndf" />
            <node concept="3uibUv" id="55dLdDU25FT" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Optional" resolve="Optional" />
              <node concept="3uibUv" id="55dLdDU25FW" role="11_B2D">
                <ref role="3uigEE" to="qzxo:~PasteNodeData" resolve="PasteNodeData" />
              </node>
            </node>
            <node concept="2YIFZM" id="5USSONghd8S" role="33vP2m">
              <ref role="37wK5l" to="qzxo:~SNodeClip.peekNodeFlavor(java.awt.datatransfer.Transferable[])" resolve="peekNodeFlavor" />
              <ref role="1Pybhc" to="qzxo:~SNodeClip" resolve="SNodeClip" />
              <node concept="2OqwBi" id="5USSONghd8T" role="37wK5m">
                <node concept="2YIFZM" id="5USSONghd8U" role="2Oq$k0">
                  <ref role="37wK5l" to="ddhc:~CopyPasteManagerEx.getInstanceEx()" resolve="getInstanceEx" />
                  <ref role="1Pybhc" to="ddhc:~CopyPasteManagerEx" resolve="CopyPasteManagerEx" />
                </node>
                <node concept="liA8E" id="5USSONghd8V" role="2OqNvi">
                  <ref role="37wK5l" to="ddhc:~CopyPasteManagerEx.getAllContents()" resolve="getAllContents" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="55dLdDU2c0n" role="3cqZAp">
          <node concept="3clFbS" id="55dLdDU2c0p" role="3clFbx">
            <node concept="3cpWs6" id="5tGs5KqKiKW" role="3cqZAp">
              <node concept="2YIFZM" id="x79preAIqv" role="3cqZAk">
                <ref role="37wK5l" to="qzxo:~PasteNodeData.emptyPasteNodeData()" resolve="emptyPasteNodeData" />
                <ref role="1Pybhc" to="qzxo:~PasteNodeData" resolve="PasteNodeData" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="55dLdDU2auI" role="3clFbw">
            <node concept="37vLTw" id="55dLdDU26gn" role="2Oq$k0">
              <ref role="3cqZAo" node="55dLdDU26gi" resolve="ndf" />
            </node>
            <node concept="liA8E" id="55dLdDU2biw" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Optional.isEmpty()" resolve="isEmpty" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="55dLdDU2f8L" role="3cqZAp">
          <node concept="2OqwBi" id="55dLdDU2gQQ" role="3cqZAk">
            <node concept="37vLTw" id="55dLdDU2g$a" role="2Oq$k0">
              <ref role="3cqZAo" node="55dLdDU26gi" resolve="ndf" />
            </node>
            <node concept="liA8E" id="55dLdDU2hVQ" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Optional.get()" resolve="get" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="oR0qGlKNIF" role="3clF45">
        <ref role="3uigEE" to="qzxo:~PasteNodeData" resolve="PasteNodeData" />
      </node>
      <node concept="3Tm1VV" id="oR0qGlKvCq" role="1B3o_S" />
      <node concept="P$JXv" id="oR0qGlKLt4" role="lGtFl">
        <node concept="TZ7YB" id="oR0qGlKMm2" role="3nqlJM">
          <property role="TZ7Y_" value="" />
          <node concept="1PaTwC" id="1E1X3WHsE0Z" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHsE10" role="1PaTwD">
              <property role="3oM_SC" value="2024.1" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="oR0qGlMoNb" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="2qqFBg4MSK6" role="jymVt" />
    <node concept="2YIFZL" id="2qqFBg4MVjm" role="jymVt">
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="TrG5h" value="addImportsWithDialog" />
      <node concept="3clFbS" id="2qqFBg4MUq2" role="3clF47">
        <node concept="3clFbJ" id="5tGs5KqKiMd" role="3cqZAp">
          <node concept="3clFbC" id="5tGs5KqKiMe" role="3clFbw">
            <node concept="2OqwBi" id="256tImPkKBy" role="3uHU7B">
              <node concept="37vLTw" id="2BHiRxgm7Js" role="2Oq$k0">
                <ref role="3cqZAo" node="2qqFBg4MWfP" resolve="targetModel" />
              </node>
              <node concept="liA8E" id="256tImPkKBz" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
              </node>
            </node>
            <node concept="10Nm6u" id="5tGs5KqKiMk" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="5tGs5KqKiMl" role="3clFbx">
            <node concept="3cpWs6" id="5tGs5KqKiMm" role="3cqZAp">
              <node concept="10Nm6u" id="1U6F4ugo$A2" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2qqFBg4NA1J" role="3cqZAp">
          <node concept="3clFbS" id="2qqFBg4NA1L" role="3clFbx">
            <node concept="3cpWs6" id="2qqFBg4NB3s" role="3cqZAp">
              <node concept="10Nm6u" id="2qqFBg4NB43" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="2qqFBg4NAPj" role="3clFbw">
            <node concept="10Nm6u" id="2qqFBg4NB1Q" role="3uHU7w" />
            <node concept="37vLTw" id="2qqFBg4NA$n" role="3uHU7B">
              <ref role="3cqZAo" node="2qqFBg4MWnC" resolve="mpsProject" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7pMXX1aLqxw" role="3cqZAp">
          <node concept="3cpWsn" id="7pMXX1aLqxx" role="3cpWs9">
            <property role="TrG5h" value="miCheck" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="7pMXX1aLour" role="1tU5fm">
              <ref role="3uigEE" node="7pMXX1aJMfS" resolve="ModelImportsCheck" />
            </node>
            <node concept="2ShNRf" id="7pMXX1aLqxy" role="33vP2m">
              <node concept="1pGfFk" id="7pMXX1aLqxz" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="7pMXX1aJMxT" resolve="ModelImportsCheck" />
                <node concept="37vLTw" id="7pMXX1aLqx$" role="37wK5m">
                  <ref role="3cqZAo" node="2qqFBg4MWnC" resolve="mpsProject" />
                </node>
                <node concept="37vLTw" id="7pMXX1aLqx_" role="37wK5m">
                  <ref role="3cqZAo" node="2qqFBg4MWfP" resolve="targetModel" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7pMXX1aNbA7" role="3cqZAp">
          <node concept="3cpWsn" id="7pMXX1aNbA8" role="3cpWs9">
            <property role="TrG5h" value="satisfied" />
            <node concept="10P_77" id="7pMXX1aN9qY" role="1tU5fm" />
            <node concept="2OqwBi" id="7pMXX1aNbA9" role="33vP2m">
              <node concept="2OqwBi" id="7pMXX1aNbAa" role="2Oq$k0">
                <node concept="37vLTw" id="7pMXX1aNbAb" role="2Oq$k0">
                  <ref role="3cqZAo" node="2qqFBg4MWnC" resolve="mpsProject" />
                </node>
                <node concept="liA8E" id="7pMXX1aNbAc" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
                </node>
              </node>
              <node concept="liA8E" id="7pMXX1aNbAd" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~ModelAccess.computeReadAction(java.util.function.Supplier)" resolve="computeReadAction" />
                <node concept="1bVj0M" id="7pMXX1aNbAe" role="37wK5m">
                  <node concept="3clFbS" id="7pMXX1aNbAf" role="1bW5cS">
                    <node concept="3clFbF" id="7pMXX1aNbAg" role="3cqZAp">
                      <node concept="2OqwBi" id="7pMXX1aNbAh" role="3clFbG">
                        <node concept="37vLTw" id="7pMXX1aNbAi" role="2Oq$k0">
                          <ref role="3cqZAo" node="7pMXX1aLqxx" resolve="miCheck" />
                        </node>
                        <node concept="liA8E" id="7pMXX1aNbAj" role="2OqNvi">
                          <ref role="37wK5l" node="7pMXX1aJSzb" resolve="checkSatisfied" />
                          <node concept="37vLTw" id="7pMXX1aNbAk" role="37wK5m">
                            <ref role="3cqZAo" node="2qqFBg4MWgg" resolve="necessaryLanguages" />
                          </node>
                          <node concept="37vLTw" id="7pMXX1aNbAl" role="37wK5m">
                            <ref role="3cqZAo" node="2qqFBg4MWkt" resolve="necessaryImports" />
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
        <node concept="3clFbJ" id="1yqHBnusoci" role="3cqZAp">
          <node concept="3clFbS" id="1yqHBnusocw" role="3clFbx">
            <node concept="3cpWs6" id="6Y2_N09sMxr" role="3cqZAp">
              <node concept="10Nm6u" id="6Y2_N09sMxt" role="3cqZAk" />
            </node>
          </node>
          <node concept="37vLTw" id="7pMXX1aNbAm" role="3clFbw">
            <ref role="3cqZAo" node="7pMXX1aNbA8" resolve="satisfied" />
          </node>
        </node>
        <node concept="3clFbH" id="6Y2_N09sMxw" role="3cqZAp" />
        <node concept="3cpWs8" id="1yqHBnusocx" role="3cqZAp">
          <node concept="3cpWsn" id="1yqHBnusocy" role="3cpWs9">
            <property role="TrG5h" value="dialog" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="1yqHBnuxLvY" role="1tU5fm">
              <ref role="3uigEE" node="5glnhittf1y" resolve="AddRequiredImportsDialog" />
            </node>
            <node concept="2OqwBi" id="7pMXX1aNmW1" role="33vP2m">
              <node concept="37vLTw" id="7pMXX1aNltt" role="2Oq$k0">
                <ref role="3cqZAo" node="7pMXX1aLqxx" resolve="miCheck" />
              </node>
              <node concept="liA8E" id="7pMXX1aNorf" role="2OqNvi">
                <ref role="37wK5l" node="7pMXX1aKflg" resolve="configuredDialog" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1yqHBnusod0" role="3cqZAp">
          <node concept="2OqwBi" id="1yqHBnusod1" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTwMm" role="2Oq$k0">
              <ref role="3cqZAo" node="1yqHBnusocy" resolve="dialog" />
            </node>
            <node concept="liA8E" id="1yqHBnusod3" role="2OqNvi">
              <ref role="37wK5l" to="jkm4:~DialogWrapper.show()" resolve="show" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1yqHBnusod4" role="3cqZAp">
          <node concept="2OqwBi" id="1yqHBnusod5" role="3clFbw">
            <node concept="37vLTw" id="3GM_nagTrq8" role="2Oq$k0">
              <ref role="3cqZAo" node="1yqHBnusocy" resolve="dialog" />
            </node>
            <node concept="liA8E" id="1yqHBnusod7" role="2OqNvi">
              <ref role="37wK5l" to="jkm4:~DialogWrapper.isOK()" resolve="isOK" />
            </node>
          </node>
          <node concept="3clFbS" id="1yqHBnusod8" role="3clFbx">
            <node concept="3cpWs6" id="1U6F4ugnCPm" role="3cqZAp">
              <node concept="2OqwBi" id="7pMXX1bctnj" role="3cqZAk">
                <node concept="37vLTw" id="7pMXX1bcrDM" role="2Oq$k0">
                  <ref role="3cqZAo" node="1yqHBnusocy" resolve="dialog" />
                </node>
                <node concept="liA8E" id="7pMXX1bcvhX" role="2OqNvi">
                  <ref role="37wK5l" node="7pMXX1b1427" resolve="asUpdateCommand" />
                  <node concept="37vLTw" id="7pMXX1bcwJ$" role="37wK5m">
                    <ref role="3cqZAo" node="2qqFBg4MWfP" resolve="targetModel" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="6Y2_N09sMxu" role="9aQIa">
            <node concept="3clFbS" id="6Y2_N09sMxv" role="9aQI4">
              <node concept="3cpWs6" id="1yqHBnusodp" role="3cqZAp">
                <node concept="10Nm6u" id="1U6F4ugnx1c" role="3cqZAk" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="2qqFBg4MWcD" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
      </node>
      <node concept="3Tm1VV" id="2qqFBg4MUq1" role="1B3o_S" />
      <node concept="37vLTG" id="2qqFBg4MWfP" role="3clF46">
        <property role="TrG5h" value="targetModel" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="2qqFBg4Nvzq" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="37vLTG" id="2qqFBg4MWgg" role="3clF46">
        <property role="TrG5h" value="necessaryLanguages" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="2qqFBg4MWhO" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
          <node concept="3uibUv" id="2qqFBg4MWjt" role="11_B2D">
            <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2qqFBg4MWkt" role="3clF46">
        <property role="TrG5h" value="necessaryImports" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="2qqFBg4MWl3" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
          <node concept="3uibUv" id="2qqFBg4NOsp" role="11_B2D">
            <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2qqFBg4MWnC" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="2qqFBg4MWqf" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="2AHcQZ" id="2qqFBg4NOMv" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2YIFZL" id="acLuhI6Q4I" role="jymVt">
      <property role="TrG5h" value="addImportsWithDialog" />
      <node concept="3uibUv" id="acLuhI6Q4M" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
      </node>
      <node concept="3Tm1VV" id="acLuhI6Q4K" role="1B3o_S" />
      <node concept="3clFbS" id="acLuhI6Q4L" role="3clF47">
        <node concept="3clFbF" id="6Y2_N09sMys" role="3cqZAp">
          <node concept="2YIFZM" id="2qqFBg4NOcb" role="3clFbG">
            <ref role="37wK5l" node="2qqFBg4MVjm" resolve="addImportsWithDialog" />
            <ref role="1Pybhc" node="5tGs5KqKfGH" resolve="CopyPasteUtil" />
            <node concept="37vLTw" id="2qqFBg4NOcc" role="37wK5m">
              <ref role="3cqZAo" node="acLuhI6Q4Z" resolve="targetModel" />
            </node>
            <node concept="2OqwBi" id="2qqFBg4NOcd" role="37wK5m">
              <node concept="37vLTw" id="2qqFBg4NOce" role="2Oq$k0">
                <ref role="3cqZAo" node="acLuhI6Q4N" resolve="pasteNodeData" />
              </node>
              <node concept="liA8E" id="2qqFBg4NOcf" role="2OqNvi">
                <ref role="37wK5l" to="qzxo:~PasteNodeData.getNecessaryLanguages()" resolve="getNecessaryLanguages" />
              </node>
            </node>
            <node concept="2OqwBi" id="2qqFBg4NOcg" role="37wK5m">
              <node concept="37vLTw" id="2qqFBg4NOch" role="2Oq$k0">
                <ref role="3cqZAo" node="acLuhI6Q4N" resolve="pasteNodeData" />
              </node>
              <node concept="liA8E" id="2qqFBg4NOci" role="2OqNvi">
                <ref role="37wK5l" to="qzxo:~PasteNodeData.getNecessaryModels()" resolve="getNecessaryModels" />
              </node>
            </node>
            <node concept="37vLTw" id="2qqFBg4NOck" role="37wK5m">
              <ref role="3cqZAo" node="acLuhI6Q5m" resolve="mpsProject" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="acLuhI6Q4N" role="3clF46">
        <property role="TrG5h" value="pasteNodeData" />
        <node concept="3uibUv" id="acLuhI6Q4O" role="1tU5fm">
          <ref role="3uigEE" to="qzxo:~PasteNodeData" resolve="PasteNodeData" />
        </node>
      </node>
      <node concept="37vLTG" id="acLuhI6Q4Z" role="3clF46">
        <property role="TrG5h" value="targetModel" />
        <node concept="H_c77" id="acLuhI6Q5b" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="acLuhI6Q5m" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3uibUv" id="6X$LxHCK9Ko" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1fgzoSxUyn4" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="7pMXX1bc_WY" role="jymVt" />
    <node concept="2YIFZL" id="2cGWpZaJkVj" role="jymVt">
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="TrG5h" value="isStringOnTopOfClipboard" />
      <node concept="3clFbS" id="2cGWpZaJiPM" role="3clF47">
        <node concept="3SKdUt" id="2cGWpZaJOAH" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXoqTh" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXoqTi" role="1PaTwD">
              <property role="3oM_SC" value="This" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqTj" role="1PaTwD">
              <property role="3oM_SC" value="method" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqTk" role="1PaTwD">
              <property role="3oM_SC" value="was" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqTl" role="1PaTwD">
              <property role="3oM_SC" value="created" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqTm" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqTn" role="1PaTwD">
              <property role="3oM_SC" value="accordance" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqTo" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqTp" role="1PaTwD">
              <property role="3oM_SC" value="TextPasteUtil.hasStringInClipboard()/.getStringFromClipboard()" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="2cGWpZaJQs6" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXoqTq" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXoqTr" role="1PaTwD">
              <property role="3oM_SC" value="methods" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqTs" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqTt" role="1PaTwD">
              <property role="3oM_SC" value="should" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqTu" role="1PaTwD">
              <property role="3oM_SC" value="consider" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqTv" role="1PaTwD">
              <property role="3oM_SC" value="reimplementing" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqTw" role="1PaTwD">
              <property role="3oM_SC" value="these" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqTx" role="1PaTwD">
              <property role="3oM_SC" value="methods" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqTy" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqTz" role="1PaTwD">
              <property role="3oM_SC" value="order" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqT$" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqT_" role="1PaTwD">
              <property role="3oM_SC" value="iterate" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqTA" role="1PaTwD">
              <property role="3oM_SC" value="over" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqTB" role="1PaTwD">
              <property role="3oM_SC" value=".getAllContents()" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqTC" role="1PaTwD">
              <property role="3oM_SC" value="collection" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="2cGWpZaJRb9" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXoqTD" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXoqTE" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqTF" role="1PaTwD">
              <property role="3oM_SC" value="case" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqTG" role="1PaTwD">
              <property role="3oM_SC" value="first" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqTH" role="1PaTwD">
              <property role="3oM_SC" value="available" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqTI" role="1PaTwD">
              <property role="3oM_SC" value="Transferable" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqTJ" role="1PaTwD">
              <property role="3oM_SC" value="does" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqTK" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqTL" role="1PaTwD">
              <property role="3oM_SC" value="support" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqTM" role="1PaTwD">
              <property role="3oM_SC" value="neither" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqTN" role="1PaTwD">
              <property role="3oM_SC" value="stringFlavor" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqTO" role="1PaTwD">
              <property role="3oM_SC" value="nor" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqTP" role="1PaTwD">
              <property role="3oM_SC" value="sNode" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqTQ" role="1PaTwD">
              <property role="3oM_SC" value="one." />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="2cGWpZaJshF" role="3cqZAp">
          <node concept="2OqwBi" id="2cGWpZaJshG" role="1DdaDG">
            <node concept="2YIFZM" id="2cGWpZaJshH" role="2Oq$k0">
              <ref role="1Pybhc" to="ddhc:~CopyPasteManagerEx" resolve="CopyPasteManagerEx" />
              <ref role="37wK5l" to="ddhc:~CopyPasteManagerEx.getInstanceEx()" resolve="getInstanceEx" />
            </node>
            <node concept="liA8E" id="2cGWpZaJshI" role="2OqNvi">
              <ref role="37wK5l" to="ddhc:~CopyPasteManagerEx.getAllContents()" resolve="getAllContents" />
            </node>
          </node>
          <node concept="3cpWsn" id="2cGWpZaJshJ" role="1Duv9x">
            <property role="TrG5h" value="trf" />
            <node concept="3uibUv" id="2cGWpZaJshK" role="1tU5fm">
              <ref role="3uigEE" to="kt01:~Transferable" resolve="Transferable" />
            </node>
          </node>
          <node concept="3clFbS" id="2cGWpZaJshL" role="2LFqv$">
            <node concept="3clFbJ" id="2cGWpZaJshM" role="3cqZAp">
              <node concept="3y3z36" id="2cGWpZaJshO" role="3clFbw">
                <node concept="37vLTw" id="2cGWpZaJshP" role="3uHU7B">
                  <ref role="3cqZAo" node="2cGWpZaJshJ" resolve="trf" />
                </node>
                <node concept="10Nm6u" id="2cGWpZaJshQ" role="3uHU7w" />
              </node>
              <node concept="3clFbS" id="2cGWpZaJshV" role="3clFbx">
                <node concept="2Gpval" id="2cGWpZaJw4B" role="3cqZAp">
                  <node concept="2GrKxI" id="2cGWpZaJw4D" role="2Gsz3X">
                    <property role="TrG5h" value="nextFlavor" />
                  </node>
                  <node concept="3clFbS" id="2cGWpZaJw4H" role="2LFqv$">
                    <node concept="3clFbJ" id="2cGWpZaJwQd" role="3cqZAp">
                      <node concept="3clFbS" id="2cGWpZaJwQe" role="3clFbx">
                        <node concept="3cpWs6" id="2cGWpZaJwYU" role="3cqZAp">
                          <node concept="3clFbT" id="2cGWpZaJx3J" role="3cqZAk">
                            <property role="3clFbU" value="true" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbC" id="2cGWpZaJwSX" role="3clFbw">
                        <node concept="2GrUjf" id="2cGWpZaJwQR" role="3uHU7B">
                          <ref role="2Gs0qQ" node="2cGWpZaJw4D" resolve="nextFlavor" />
                        </node>
                        <node concept="10M0yZ" id="2cGWpZaJshU" role="3uHU7w">
                          <ref role="3cqZAo" to="kt01:~DataFlavor.stringFlavor" resolve="stringFlavor" />
                          <ref role="1PxDUh" to="kt01:~DataFlavor" resolve="DataFlavor" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="2cGWpZaJxdC" role="3cqZAp">
                      <node concept="3clFbS" id="2cGWpZaJxdD" role="3clFbx">
                        <node concept="3cpWs6" id="2cGWpZaJxdE" role="3cqZAp">
                          <node concept="3clFbT" id="2cGWpZaJxdF" role="3cqZAk" />
                        </node>
                      </node>
                      <node concept="3clFbC" id="2cGWpZaJxdG" role="3clFbw">
                        <node concept="2GrUjf" id="2cGWpZaJxdH" role="3uHU7B">
                          <ref role="2Gs0qQ" node="2cGWpZaJw4D" resolve="nextFlavor" />
                        </node>
                        <node concept="10M0yZ" id="55dLdDUgzn_" role="3uHU7w">
                          <ref role="3cqZAo" to="qzxo:~SNodeClip.NODE" resolve="NODE" />
                          <ref role="1PxDUh" to="qzxo:~SNodeClip" resolve="SNodeClip" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2cGWpZaJvNH" role="2GsD0m">
                    <node concept="37vLTw" id="2cGWpZaJvKg" role="2Oq$k0">
                      <ref role="3cqZAo" node="2cGWpZaJshJ" resolve="trf" />
                    </node>
                    <node concept="liA8E" id="2cGWpZaJvYM" role="2OqNvi">
                      <ref role="37wK5l" to="kt01:~Transferable.getTransferDataFlavors()" resolve="getTransferDataFlavors" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3zACq4" id="2cGWpZaJshY" role="3cqZAp" />
          </node>
        </node>
        <node concept="3cpWs6" id="2cGWpZaJsic" role="3cqZAp">
          <node concept="3clFbT" id="2cGWpZaJsid" role="3cqZAk" />
        </node>
      </node>
      <node concept="10P_77" id="2cGWpZaJnzX" role="3clF45" />
      <node concept="3Tm1VV" id="2cGWpZaJiPL" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="5tGs5KqKiwq" role="1B3o_S" />
    <node concept="2YIFZL" id="3ho4UQBC7CZ" role="jymVt">
      <property role="TrG5h" value="applyRequiredImports" />
      <node concept="37vLTG" id="3ho4UQBC7D0" role="3clF46">
        <property role="TrG5h" value="targetModel" />
        <node concept="3uibUv" id="3ho4UQBC7D1" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="37vLTG" id="3ho4UQBC7D2" role="3clF46">
        <property role="TrG5h" value="languages" />
        <node concept="3uibUv" id="3ho4UQBC7D3" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
          <node concept="3uibUv" id="3ho4UQBC7D4" role="11_B2D">
            <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3ho4UQBC7D5" role="3clF46">
        <property role="TrG5h" value="models" />
        <node concept="3uibUv" id="3ho4UQBC7D6" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
          <node concept="3uibUv" id="3ho4UQBC7D7" role="11_B2D">
            <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="3ho4UQBC7D8" role="3clF47">
        <node concept="3cpWs8" id="3ho4UQBC7Da" role="3cqZAp">
          <node concept="3cpWsn" id="3ho4UQBC7D9" role="3cpWs9">
            <property role="TrG5h" value="mi" />
            <node concept="3uibUv" id="3ho4UQBC7Db" role="1tU5fm">
              <ref role="3uigEE" to="w1kc:~ModelImports" resolve="ModelImports" />
            </node>
            <node concept="2ShNRf" id="3ho4UQBC7Xp" role="33vP2m">
              <node concept="1pGfFk" id="3ho4UQBC7Xz" role="2ShVmc">
                <ref role="37wK5l" to="w1kc:~ModelImports.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModel)" resolve="ModelImports" />
                <node concept="37vLTw" id="3ho4UQBC7X$" role="37wK5m">
                  <ref role="3cqZAo" node="3ho4UQBC7D0" resolve="targetModel" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="3ho4UQBC7De" role="3cqZAp">
          <node concept="37vLTw" id="3ho4UQBC7Dn" role="1DdaDG">
            <ref role="3cqZAo" node="3ho4UQBC7D5" resolve="models" />
          </node>
          <node concept="3cpWsn" id="3ho4UQBC7Dk" role="1Duv9x">
            <property role="TrG5h" value="imported" />
            <node concept="3uibUv" id="3ho4UQBC7Dm" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
            </node>
          </node>
          <node concept="3clFbS" id="3ho4UQBC7Dg" role="2LFqv$">
            <node concept="3clFbF" id="3ho4UQBC7Dh" role="3cqZAp">
              <node concept="2OqwBi" id="3ho4UQBC80b" role="3clFbG">
                <node concept="37vLTw" id="3ho4UQBC7XX" role="2Oq$k0">
                  <ref role="3cqZAo" node="3ho4UQBC7D9" resolve="mi" />
                </node>
                <node concept="liA8E" id="3ho4UQBC80c" role="2OqNvi">
                  <ref role="37wK5l" to="w1kc:~ModelImports.addModelImport(org.jetbrains.mps.openapi.model.SModelReference)" resolve="addModelImport" />
                  <node concept="37vLTw" id="3ho4UQBC80d" role="37wK5m">
                    <ref role="3cqZAo" node="3ho4UQBC7Dk" resolve="imported" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="3ho4UQBC7Do" role="3cqZAp">
          <node concept="37vLTw" id="3ho4UQBC7Dx" role="1DdaDG">
            <ref role="3cqZAo" node="3ho4UQBC7D2" resolve="languages" />
          </node>
          <node concept="3cpWsn" id="3ho4UQBC7Du" role="1Duv9x">
            <property role="TrG5h" value="language" />
            <node concept="3uibUv" id="3ho4UQBC7Dw" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
            </node>
          </node>
          <node concept="3clFbS" id="3ho4UQBC7Dq" role="2LFqv$">
            <node concept="3clFbF" id="3ho4UQBC7Dr" role="3cqZAp">
              <node concept="2OqwBi" id="3ho4UQBC80n" role="3clFbG">
                <node concept="37vLTw" id="3ho4UQBC7Yo" role="2Oq$k0">
                  <ref role="3cqZAo" node="3ho4UQBC7D9" resolve="mi" />
                </node>
                <node concept="liA8E" id="3ho4UQBC80o" role="2OqNvi">
                  <ref role="37wK5l" to="w1kc:~ModelImports.addUsedLanguage(org.jetbrains.mps.openapi.language.SLanguage)" resolve="addUsedLanguage" />
                  <node concept="37vLTw" id="3ho4UQBC80p" role="37wK5m">
                    <ref role="3cqZAo" node="3ho4UQBC7Du" resolve="language" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3ho4UQBC7Dz" role="3cqZAp">
          <node concept="3cpWsn" id="3ho4UQBC7Dy" role="3cpWs9">
            <property role="TrG5h" value="targetModule" />
            <node concept="3uibUv" id="3ho4UQBC7D$" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
            </node>
            <node concept="2OqwBi" id="3ho4UQBC80z" role="33vP2m">
              <node concept="37vLTw" id="3ho4UQBC7YN" role="2Oq$k0">
                <ref role="3cqZAo" node="3ho4UQBC7D0" resolve="targetModel" />
              </node>
              <node concept="liA8E" id="3ho4UQBC80$" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3ho4UQBC7DA" role="3cqZAp">
          <node concept="22lmx$" id="3ho4UQBC7DB" role="3clFbw">
            <node concept="3clFbC" id="3ho4UQBC7DC" role="3uHU7B">
              <node concept="37vLTw" id="3ho4UQBC7DD" role="3uHU7B">
                <ref role="3cqZAo" node="3ho4UQBC7Dy" resolve="targetModule" />
              </node>
              <node concept="10Nm6u" id="3ho4UQBC7DE" role="3uHU7w" />
            </node>
            <node concept="3clFbC" id="3ho4UQBC7DF" role="3uHU7w">
              <node concept="2OqwBi" id="3ho4UQBC80J" role="3uHU7B">
                <node concept="37vLTw" id="3ho4UQBC7Zd" role="2Oq$k0">
                  <ref role="3cqZAo" node="3ho4UQBC7Dy" resolve="targetModule" />
                </node>
                <node concept="liA8E" id="3ho4UQBC80K" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~SModule.getRepository()" resolve="getRepository" />
                </node>
              </node>
              <node concept="10Nm6u" id="3ho4UQBC7DH" role="3uHU7w" />
            </node>
          </node>
          <node concept="3clFbS" id="3ho4UQBC7DJ" role="3clFbx">
            <node concept="3cpWs6" id="3ho4UQBC7DK" role="3cqZAp" />
          </node>
        </node>
        <node concept="3clFbF" id="3ho4UQBC7DL" role="3cqZAp">
          <node concept="2OqwBi" id="3ho4UQBC80W" role="3clFbG">
            <node concept="2ShNRf" id="3ho4UQBC7Zn" role="2Oq$k0">
              <node concept="1pGfFk" id="3ho4UQBC7ZA" role="2ShVmc">
                <ref role="37wK5l" to="w1kc:~ModelDependencyUpdate.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModel)" resolve="ModelDependencyUpdate" />
                <node concept="37vLTw" id="3ho4UQBC7ZB" role="37wK5m">
                  <ref role="3cqZAo" node="3ho4UQBC7D0" resolve="targetModel" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="3ho4UQBC80X" role="2OqNvi">
              <ref role="37wK5l" to="w1kc:~ModelDependencyUpdate.updateModuleDependencies(org.jetbrains.mps.openapi.module.SRepository)" resolve="updateModuleDependencies" />
              <node concept="2OqwBi" id="3ho4UQBC81a" role="37wK5m">
                <node concept="37vLTw" id="3ho4UQBC80Z" role="2Oq$k0">
                  <ref role="3cqZAo" node="3ho4UQBC7Dy" resolve="targetModule" />
                </node>
                <node concept="liA8E" id="3ho4UQBC81b" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~SModule.getRepository()" resolve="getRepository" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3ho4UQBC7DQ" role="1B3o_S" />
      <node concept="3cqZAl" id="3ho4UQBC7DR" role="3clF45" />
    </node>
  </node>
  <node concept="312cEu" id="5tGs5KqKj2K">
    <property role="TrG5h" value="SNodeTransferable" />
    <node concept="312cEg" id="5HU13ZkKHqS" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="mySNodeReference" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5HU13ZkKAA$" role="1B3o_S" />
      <node concept="3uibUv" id="5HU13ZkKE3y" role="1tU5fm">
        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
      </node>
      <node concept="2AHcQZ" id="5HU13ZkL29V" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="1iLCKvLFonu" role="jymVt" />
    <node concept="312cEg" id="1iLCKvLFBmJ" role="jymVt">
      <property role="TrG5h" value="myPasteData" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1iLCKvLFz1y" role="1B3o_S" />
      <node concept="3uibUv" id="1iLCKvLFBgB" role="1tU5fm">
        <ref role="3uigEE" to="qzxo:~PasteNodeData" resolve="PasteNodeData" />
      </node>
    </node>
    <node concept="2tJIrI" id="1iLCKvLFsC9" role="jymVt" />
    <node concept="312cEg" id="5tGs5KqKj3z" role="jymVt">
      <property role="TrG5h" value="myText" />
      <node concept="17QB3L" id="6yKcP2S$LUS" role="1tU5fm" />
      <node concept="2AHcQZ" id="6yKcP2SApJb" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3Tm6S6" id="5tGs5KqKj3_" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="6yKcP2SwATu" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="mySupportedDataFlavors" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6yKcP2Sw$Em" role="1B3o_S" />
      <node concept="3uibUv" id="6yKcP2SwAL_" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="6yKcP2SwAP$" role="11_B2D">
          <ref role="3uigEE" to="kt01:~DataFlavor" resolve="DataFlavor" />
        </node>
      </node>
      <node concept="2ShNRf" id="6yKcP2S$yrn" role="33vP2m">
        <node concept="1pGfFk" id="6yKcP2S$_eX" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;(int)" resolve="ArrayList" />
          <node concept="3cmrfG" id="6yKcP2S$BCZ" role="37wK5m">
            <property role="3cmrfH" value="4" />
          </node>
          <node concept="3uibUv" id="6yKcP2S$Ij2" role="1pMfVU">
            <ref role="3uigEE" to="kt01:~DataFlavor" resolve="DataFlavor" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6yKcP2SAsFl" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="6yKcP2S$OPL" role="jymVt" />
    <node concept="3clFbW" id="5tGs5KqKj3N" role="jymVt">
      <node concept="3Tm1VV" id="5tGs5KqKj3O" role="1B3o_S" />
      <node concept="3cqZAl" id="5tGs5KqKj3P" role="3clF45" />
      <node concept="37vLTG" id="5tGs5KqKj3Q" role="3clF46">
        <property role="TrG5h" value="nodes" />
        <node concept="3uibUv" id="5tGs5KqKj3R" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="5tGs5KqKj3S" role="11_B2D">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5tGs5KqKj3T" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="17QB3L" id="6yKcP2S$LjL" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5tGs5KqKj3V" role="3clF47">
        <node concept="3clFbF" id="1iLCKvLGSPF" role="3cqZAp">
          <node concept="37vLTI" id="1iLCKvLGUdI" role="3clFbG">
            <node concept="37vLTw" id="1iLCKvLGSPD" role="37vLTJ">
              <ref role="3cqZAo" node="1iLCKvLFBmJ" resolve="myPasteData" />
            </node>
            <node concept="1rXfSq" id="4hiugqyyIh9" role="37vLTx">
              <ref role="37wK5l" node="1iLCKvLGuvQ" resolve="saveNodes" />
              <node concept="37vLTw" id="2BHiRxgm7oJ" role="37wK5m">
                <ref role="3cqZAo" node="5tGs5KqKj3Q" resolve="nodes" />
              </node>
              <node concept="10Nm6u" id="5tGs5KqKj3Z" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="55dLdDU1AHP" role="3cqZAp">
          <node concept="2OqwBi" id="55dLdDU1AHQ" role="3clFbG">
            <node concept="37vLTw" id="55dLdDU1AHR" role="2Oq$k0">
              <ref role="3cqZAo" node="6yKcP2SwATu" resolve="mySupportedDataFlavors" />
            </node>
            <node concept="liA8E" id="55dLdDU1AHS" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
              <node concept="10M0yZ" id="55dLdDU1AHT" role="37wK5m">
                <ref role="3cqZAo" to="qzxo:~SNodeClip.NODE" resolve="NODE" />
                <ref role="1PxDUh" to="qzxo:~SNodeClip" resolve="SNodeClip" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5_IEPAOhC37" role="3cqZAp">
          <node concept="3clFbS" id="5_IEPAOhC38" role="3clFbx">
            <node concept="3clFbF" id="1iLCKvLHgB4" role="3cqZAp">
              <node concept="37vLTI" id="1iLCKvLHh2P" role="3clFbG">
                <node concept="37vLTw" id="1iLCKvLHgB2" role="37vLTJ">
                  <ref role="3cqZAo" node="5HU13ZkKHqS" resolve="mySNodeReference" />
                </node>
                <node concept="2OqwBi" id="1iLCKvLHjun" role="37vLTx">
                  <node concept="2OqwBi" id="5_IEPAOhC3b" role="2Oq$k0">
                    <node concept="37vLTw" id="5_IEPAOhC3c" role="2Oq$k0">
                      <ref role="3cqZAo" node="5tGs5KqKj3Q" resolve="nodes" />
                    </node>
                    <node concept="liA8E" id="5_IEPAOhC3d" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                      <node concept="3cmrfG" id="5_IEPAOhC3e" role="37wK5m">
                        <property role="3cmrfH" value="0" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1iLCKvLHlpp" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6yKcP2S$Sbu" role="3cqZAp">
              <node concept="2OqwBi" id="6yKcP2S$SvY" role="3clFbG">
                <node concept="37vLTw" id="6yKcP2S$Sbt" role="2Oq$k0">
                  <ref role="3cqZAo" node="6yKcP2SwATu" resolve="mySupportedDataFlavors" />
                </node>
                <node concept="liA8E" id="6yKcP2S$Uft" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                  <node concept="10M0yZ" id="55dLdDTZXi1" role="37wK5m">
                    <ref role="3cqZAo" to="qzxo:~SNodeClip.NODEREF" resolve="NODEREF" />
                    <ref role="1PxDUh" to="qzxo:~SNodeClip" resolve="SNodeClip" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="5_IEPAOhC3f" role="3clFbw">
            <node concept="3cmrfG" id="5_IEPAOhC3g" role="3uHU7w">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="2OqwBi" id="5_IEPAOhC3h" role="3uHU7B">
              <node concept="37vLTw" id="5_IEPAOhC3i" role="2Oq$k0">
                <ref role="3cqZAo" node="5tGs5KqKj3Q" resolve="nodes" />
              </node>
              <node concept="liA8E" id="5_IEPAOhC3j" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="1iLCKvLHsaJ" role="9aQIa">
            <node concept="3clFbS" id="1iLCKvLHsaK" role="9aQI4">
              <node concept="3clFbF" id="1iLCKvLHsDD" role="3cqZAp">
                <node concept="37vLTI" id="1iLCKvLHtYP" role="3clFbG">
                  <node concept="10Nm6u" id="1iLCKvLHus3" role="37vLTx" />
                  <node concept="37vLTw" id="1iLCKvLHsDC" role="37vLTJ">
                    <ref role="3cqZAo" node="5HU13ZkKHqS" resolve="mySNodeReference" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6yKcP2S_iSr" role="3cqZAp">
          <node concept="1rXfSq" id="6yKcP2S_iSq" role="3clFbG">
            <ref role="37wK5l" node="6yKcP2S$Yet" resolve="saveText" />
            <node concept="37vLTw" id="6yKcP2S_jxO" role="37wK5m">
              <ref role="3cqZAo" node="5tGs5KqKj3T" resolve="text" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1iLCKvLG8Yy" role="jymVt" />
    <node concept="3clFbW" id="5tGs5KqKj4f" role="jymVt">
      <node concept="3Tm1VV" id="5tGs5KqKj4g" role="1B3o_S" />
      <node concept="3cqZAl" id="5tGs5KqKj4h" role="3clF45" />
      <node concept="37vLTG" id="5tGs5KqKj4i" role="3clF46">
        <property role="TrG5h" value="nodes" />
        <node concept="3uibUv" id="5tGs5KqKj4j" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="5tGs5KqKj4k" role="11_B2D">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
        <node concept="2AHcQZ" id="5tGs5KqKj4l" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="5tGs5KqKj4m" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="17QB3L" id="6yKcP2SC1Py" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5tGs5KqKj4o" role="3clF46">
        <property role="TrG5h" value="nodesAndAttributes" />
        <node concept="3uibUv" id="5tGs5KqKj4p" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
          <node concept="3uibUv" id="5tGs5KqKj4q" role="11_B2D">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
          <node concept="3uibUv" id="5tGs5KqKj4r" role="11_B2D">
            <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
            <node concept="3uibUv" id="5tGs5KqKj4s" role="11_B2D">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="5tGs5KqKj4t" role="3clF47">
        <node concept="3clFbF" id="1iLCKvLGWsw" role="3cqZAp">
          <node concept="37vLTI" id="1iLCKvLGXPy" role="3clFbG">
            <node concept="37vLTw" id="1iLCKvLGWsu" role="37vLTJ">
              <ref role="3cqZAo" node="1iLCKvLFBmJ" resolve="myPasteData" />
            </node>
            <node concept="1rXfSq" id="4hiugqyz8pe" role="37vLTx">
              <ref role="37wK5l" node="1iLCKvLGuvQ" resolve="saveNodes" />
              <node concept="37vLTw" id="2BHiRxgmkDG" role="37wK5m">
                <ref role="3cqZAo" node="5tGs5KqKj4i" resolve="nodes" />
              </node>
              <node concept="37vLTw" id="2BHiRxglc1g" role="37wK5m">
                <ref role="3cqZAo" node="5tGs5KqKj4o" resolve="nodesAndAttributes" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="55dLdDU1zma" role="3cqZAp">
          <node concept="2OqwBi" id="55dLdDU1zmb" role="3clFbG">
            <node concept="37vLTw" id="55dLdDU1zmc" role="2Oq$k0">
              <ref role="3cqZAo" node="6yKcP2SwATu" resolve="mySupportedDataFlavors" />
            </node>
            <node concept="liA8E" id="55dLdDU1zmd" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
              <node concept="10M0yZ" id="55dLdDU1zme" role="37wK5m">
                <ref role="3cqZAo" to="qzxo:~SNodeClip.NODE" resolve="NODE" />
                <ref role="1PxDUh" to="qzxo:~SNodeClip" resolve="SNodeClip" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1iLCKvLHvDP" role="3cqZAp">
          <node concept="3clFbS" id="1iLCKvLHvDQ" role="3clFbx">
            <node concept="3clFbF" id="1iLCKvLHvDR" role="3cqZAp">
              <node concept="37vLTI" id="1iLCKvLHvDS" role="3clFbG">
                <node concept="37vLTw" id="1iLCKvLHvDT" role="37vLTJ">
                  <ref role="3cqZAo" node="5HU13ZkKHqS" resolve="mySNodeReference" />
                </node>
                <node concept="2OqwBi" id="1iLCKvLHvDU" role="37vLTx">
                  <node concept="2OqwBi" id="1iLCKvLHvDV" role="2Oq$k0">
                    <node concept="37vLTw" id="1iLCKvLHvDW" role="2Oq$k0">
                      <ref role="3cqZAo" node="5tGs5KqKj4i" resolve="nodes" />
                    </node>
                    <node concept="liA8E" id="1iLCKvLHvDX" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                      <node concept="3cmrfG" id="1iLCKvLHvDY" role="37wK5m">
                        <property role="3cmrfH" value="0" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1iLCKvLHvDZ" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1iLCKvLHvE0" role="3cqZAp">
              <node concept="2OqwBi" id="1iLCKvLHvE1" role="3clFbG">
                <node concept="37vLTw" id="1iLCKvLHvE2" role="2Oq$k0">
                  <ref role="3cqZAo" node="6yKcP2SwATu" resolve="mySupportedDataFlavors" />
                </node>
                <node concept="liA8E" id="1iLCKvLHvE3" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                  <node concept="10M0yZ" id="55dLdDTZYyC" role="37wK5m">
                    <ref role="3cqZAo" to="qzxo:~SNodeClip.NODEREF" resolve="NODEREF" />
                    <ref role="1PxDUh" to="qzxo:~SNodeClip" resolve="SNodeClip" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="1iLCKvLHvE5" role="3clFbw">
            <node concept="3cmrfG" id="1iLCKvLHvE6" role="3uHU7w">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="2OqwBi" id="1iLCKvLHvE7" role="3uHU7B">
              <node concept="37vLTw" id="1iLCKvLHvE8" role="2Oq$k0">
                <ref role="3cqZAo" node="5tGs5KqKj4i" resolve="nodes" />
              </node>
              <node concept="liA8E" id="1iLCKvLHvE9" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="1iLCKvLHvEa" role="9aQIa">
            <node concept="3clFbS" id="1iLCKvLHvEb" role="9aQI4">
              <node concept="3clFbF" id="1iLCKvLHvEc" role="3cqZAp">
                <node concept="37vLTI" id="1iLCKvLHvEd" role="3clFbG">
                  <node concept="10Nm6u" id="1iLCKvLHvEe" role="37vLTx" />
                  <node concept="37vLTw" id="1iLCKvLHvEf" role="37vLTJ">
                    <ref role="3cqZAo" node="5HU13ZkKHqS" resolve="mySNodeReference" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6yKcP2S_uHS" role="3cqZAp">
          <node concept="1rXfSq" id="6yKcP2S_uHR" role="3clFbG">
            <ref role="37wK5l" node="6yKcP2S$Yet" resolve="saveText" />
            <node concept="37vLTw" id="6yKcP2S_uTB" role="37wK5m">
              <ref role="3cqZAo" node="5tGs5KqKj4m" resolve="text" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1iLCKvLGeSO" role="jymVt" />
    <node concept="3clFbW" id="6yKcP2SByGp" role="jymVt">
      <node concept="3cqZAl" id="6yKcP2SByGr" role="3clF45" />
      <node concept="3Tm1VV" id="6yKcP2SByGs" role="1B3o_S" />
      <node concept="37vLTG" id="6yKcP2SB_a2" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="17QB3L" id="6yKcP2SB_a1" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6yKcP2SB_d1" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="6yKcP2SB_gW" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3clFbS" id="6yKcP2SBE4t" role="3clF47">
        <node concept="3SKdUt" id="1dqb3iV6hZd" role="3cqZAp">
          <node concept="1PaTwC" id="1dqb3iV6hZe" role="1aUNEU">
            <node concept="3oM_SD" id="1dqb3iV6hZH" role="1PaTwD">
              <property role="3oM_SC" value="XXX" />
            </node>
            <node concept="3oM_SD" id="1dqb3iV6ijW" role="1PaTwD">
              <property role="3oM_SC" value="beware," />
            </node>
            <node concept="3oM_SD" id="1dqb3iV6ikv" role="1PaTwD">
              <property role="3oM_SC" value="here" />
            </node>
            <node concept="3oM_SD" id="1dqb3iV6ikN" role="1PaTwD">
              <property role="3oM_SC" value="comes" />
            </node>
            <node concept="3oM_SD" id="1dqb3iV6ikS" role="1PaTwD">
              <property role="3oM_SC" value="important" />
            </node>
            <node concept="3oM_SD" id="1dqb3iV6ile" role="1PaTwD">
              <property role="3oM_SC" value="hidden" />
            </node>
            <node concept="3oM_SD" id="1dqb3iV6im_" role="1PaTwD">
              <property role="3oM_SC" value="knowledge." />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1dqb3iV6ipX" role="3cqZAp">
          <node concept="1PaTwC" id="1dqb3iV6ipY" role="1aUNEU">
            <node concept="3oM_SD" id="1dqb3iV6iNc" role="1PaTwD">
              <property role="3oM_SC" value="saveText" />
            </node>
            <node concept="3oM_SD" id="1dqb3iV6iNl" role="1PaTwD">
              <property role="3oM_SC" value="here" />
            </node>
            <node concept="3oM_SD" id="1dqb3iV6iNo" role="1PaTwD">
              <property role="3oM_SC" value="comes" />
            </node>
            <node concept="3oM_SD" id="1dqb3iV6iNs" role="1PaTwD">
              <property role="3oM_SC" value="first" />
            </node>
            <node concept="3oM_SD" id="1dqb3iV6iNx" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="1dqb3iV6iNB" role="1PaTwD">
              <property role="3oM_SC" value="make" />
            </node>
            <node concept="3oM_SD" id="1dqb3iV6iNI" role="1PaTwD">
              <property role="3oM_SC" value="sure" />
            </node>
            <node concept="3oM_SD" id="1dqb3iV6iOl" role="1PaTwD">
              <property role="3oM_SC" value="CopyPasteUtil.isStringOnTopOfClipboard" />
            </node>
            <node concept="3oM_SD" id="1dqb3iV6iOu" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1dqb3iV6jfD" role="3cqZAp">
          <node concept="1PaTwC" id="1dqb3iV6jfE" role="1aUNEU">
            <node concept="3oM_SD" id="1dqb3iV6jyf" role="1PaTwD">
              <property role="3oM_SC" value="gives" />
            </node>
            <node concept="3oM_SD" id="1dqb3iV6jyh" role="1PaTwD">
              <property role="3oM_SC" value="true" />
            </node>
            <node concept="3oM_SD" id="1dqb3iV6jyk" role="1PaTwD">
              <property role="3oM_SC" value="when" />
            </node>
            <node concept="3oM_SD" id="1dqb3iV6A91" role="1PaTwD">
              <property role="3oM_SC" value="one" />
            </node>
            <node concept="3oM_SD" id="1dqb3iV6A96" role="1PaTwD">
              <property role="3oM_SC" value="copies" />
            </node>
            <node concept="3oM_SD" id="1dqb3iV6A9c" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="1dqb3iV6A9j" role="1PaTwD">
              <property role="3oM_SC" value="text" />
            </node>
            <node concept="3oM_SD" id="1dqb3iV6A9r" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="1dqb3iV6A9$" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="1dqb3iV6A9I" role="1PaTwD">
              <property role="3oM_SC" value="reference" />
            </node>
            <node concept="3oM_SD" id="1dqb3iV6A9T" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="1dqb3iV6Aa5" role="1PaTwD">
              <property role="3oM_SC" value="get" />
            </node>
            <node concept="3oM_SD" id="1dqb3iV6Aai" role="1PaTwD">
              <property role="3oM_SC" value="inserted/pasted" />
            </node>
            <node concept="3oM_SD" id="1dqb3iV6Aaw" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="1dqb3iV6AaJ" role="1PaTwD">
              <property role="3oM_SC" value="text," />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1dqb3iV6AdF" role="3cqZAp">
          <node concept="1PaTwC" id="1dqb3iV6AdG" role="1aUNEU">
            <node concept="3oM_SD" id="1dqb3iV6AeK" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="1dqb3iV6AeM" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="1dqb3iV6AeP" role="1PaTwD">
              <property role="3oM_SC" value="reference" />
            </node>
            <node concept="3oM_SD" id="1dqb3iV6ABJ" role="1PaTwD">
              <property role="3oM_SC" value="(as" />
            </node>
            <node concept="3oM_SD" id="1dqb3iV6ACk" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="1dqb3iV6ACq" role="1PaTwD">
              <property role="3oM_SC" value="would" />
            </node>
            <node concept="3oM_SD" id="1dqb3iV6ACx" role="1PaTwD">
              <property role="3oM_SC" value="expect)." />
            </node>
            <node concept="3oM_SD" id="1dqb3iV6AD9" role="1PaTwD">
              <property role="3oM_SC" value="See" />
            </node>
            <node concept="3oM_SD" id="1dqb3iV6ADM" role="1PaTwD">
              <property role="3oM_SC" value="TestAutoresolve_Variable" />
            </node>
            <node concept="3oM_SD" id="1dqb3iV6AFs" role="1PaTwD">
              <property role="3oM_SC" value="test" />
            </node>
            <node concept="3oM_SD" id="1dqb3iV6AFR" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="1dqb3iV6AG3" role="1PaTwD">
              <property role="3oM_SC" value="sample" />
            </node>
            <node concept="3oM_SD" id="1dqb3iV6AGw" role="1PaTwD">
              <property role="3oM_SC" value="code." />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1dqb3iV4beO" role="3cqZAp">
          <node concept="1rXfSq" id="1dqb3iV4beM" role="3clFbG">
            <ref role="37wK5l" node="6yKcP2S$Yet" resolve="saveText" />
            <node concept="37vLTw" id="1dqb3iV4bya" role="37wK5m">
              <ref role="3cqZAo" node="6yKcP2SB_a2" resolve="text" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1dqb3iV4a5y" role="3cqZAp">
          <node concept="37vLTI" id="1dqb3iV4akp" role="3clFbG">
            <node concept="1rXfSq" id="1dqb3iV4a_H" role="37vLTx">
              <ref role="37wK5l" node="1iLCKvLGuvQ" resolve="saveNodes" />
              <node concept="2YIFZM" id="6yKcP2SBElT" role="37wK5m">
                <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object)" resolve="singletonList" />
                <node concept="37vLTw" id="6yKcP2SBElU" role="37wK5m">
                  <ref role="3cqZAo" node="6yKcP2SB_d1" resolve="node" />
                </node>
              </node>
              <node concept="10Nm6u" id="1dqb3iV4d9G" role="37wK5m" />
            </node>
            <node concept="37vLTw" id="1dqb3iV4a5w" role="37vLTJ">
              <ref role="3cqZAo" node="1iLCKvLFBmJ" resolve="myPasteData" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="55dLdDU1wOK" role="3cqZAp">
          <node concept="2OqwBi" id="55dLdDU1wOL" role="3clFbG">
            <node concept="37vLTw" id="55dLdDU1wOM" role="2Oq$k0">
              <ref role="3cqZAo" node="6yKcP2SwATu" resolve="mySupportedDataFlavors" />
            </node>
            <node concept="liA8E" id="55dLdDU1wON" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
              <node concept="10M0yZ" id="55dLdDU1yNg" role="37wK5m">
                <ref role="3cqZAo" to="qzxo:~SNodeClip.NODE" resolve="NODE" />
                <ref role="1PxDUh" to="qzxo:~SNodeClip" resolve="SNodeClip" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1dqb3iV4dnm" role="3cqZAp">
          <node concept="37vLTI" id="1dqb3iV4dnn" role="3clFbG">
            <node concept="37vLTw" id="1dqb3iV4dno" role="37vLTJ">
              <ref role="3cqZAo" node="5HU13ZkKHqS" resolve="mySNodeReference" />
            </node>
            <node concept="2OqwBi" id="1dqb3iV4dnp" role="37vLTx">
              <node concept="37vLTw" id="1dqb3iV4ffL" role="2Oq$k0">
                <ref role="3cqZAo" node="6yKcP2SB_d1" resolve="node" />
              </node>
              <node concept="liA8E" id="1dqb3iV4dnu" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1dqb3iV4dnv" role="3cqZAp">
          <node concept="2OqwBi" id="1dqb3iV4dnw" role="3clFbG">
            <node concept="37vLTw" id="1dqb3iV4dnx" role="2Oq$k0">
              <ref role="3cqZAo" node="6yKcP2SwATu" resolve="mySupportedDataFlavors" />
            </node>
            <node concept="liA8E" id="1dqb3iV4dny" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
              <node concept="10M0yZ" id="55dLdDTZYSK" role="37wK5m">
                <ref role="3cqZAo" to="qzxo:~SNodeClip.NODEREF" resolve="NODEREF" />
                <ref role="1PxDUh" to="qzxo:~SNodeClip" resolve="SNodeClip" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1iLCKvLGiaU" role="jymVt" />
    <node concept="3clFb_" id="5tGs5KqKj3B" role="jymVt">
      <property role="TrG5h" value="getTransferDataFlavors" />
      <node concept="3Tm1VV" id="5tGs5KqKj3C" role="1B3o_S" />
      <node concept="10Q1$e" id="5tGs5KqKj3D" role="3clF45">
        <node concept="3uibUv" id="5tGs5KqKj3E" role="10Q1$1">
          <ref role="3uigEE" to="kt01:~DataFlavor" resolve="DataFlavor" />
        </node>
      </node>
      <node concept="3clFbS" id="5tGs5KqKj3F" role="3clF47">
        <node concept="3cpWs6" id="6yKcP2SwIlr" role="3cqZAp">
          <node concept="2OqwBi" id="6yKcP2SwMhA" role="3cqZAk">
            <node concept="37vLTw" id="6yKcP2SwK8l" role="2Oq$k0">
              <ref role="3cqZAo" node="6yKcP2SwATu" resolve="mySupportedDataFlavors" />
            </node>
            <node concept="liA8E" id="6yKcP2SwPNi" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.toArray(java.lang.Object[])" resolve="toArray" />
              <node concept="2ShNRf" id="6yKcP2Sx5jm" role="37wK5m">
                <node concept="3$_iS1" id="6yKcP2SxzgA" role="2ShVmc">
                  <node concept="3$GHV9" id="6yKcP2SxzgC" role="3$GQph">
                    <node concept="2OqwBi" id="6yKcP2SxBwO" role="3$I4v7">
                      <node concept="37vLTw" id="6yKcP2Sx_hz" role="2Oq$k0">
                        <ref role="3cqZAo" node="6yKcP2SwATu" resolve="mySupportedDataFlavors" />
                      </node>
                      <node concept="liA8E" id="6yKcP2SxEfr" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="6yKcP2SxzaK" role="3$_nBY">
                    <ref role="3uigEE" to="kt01:~DataFlavor" resolve="DataFlavor" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_UvOH" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="5tGs5KqKj4W" role="jymVt">
      <property role="TrG5h" value="isDataFlavorSupported" />
      <node concept="3Tm1VV" id="5tGs5KqKj4X" role="1B3o_S" />
      <node concept="10P_77" id="5tGs5KqKj4Y" role="3clF45" />
      <node concept="37vLTG" id="5tGs5KqKj4Z" role="3clF46">
        <property role="TrG5h" value="flavor" />
        <node concept="3uibUv" id="5tGs5KqKj50" role="1tU5fm">
          <ref role="3uigEE" to="kt01:~DataFlavor" resolve="DataFlavor" />
        </node>
      </node>
      <node concept="3clFbS" id="5tGs5KqKj51" role="3clF47">
        <node concept="3cpWs6" id="6yKcP2SxK0k" role="3cqZAp">
          <node concept="2OqwBi" id="6yKcP2SxOAH" role="3cqZAk">
            <node concept="37vLTw" id="6yKcP2SxM8c" role="2Oq$k0">
              <ref role="3cqZAo" node="6yKcP2SwATu" resolve="mySupportedDataFlavors" />
            </node>
            <node concept="liA8E" id="6yKcP2SxVNi" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.contains(java.lang.Object)" resolve="contains" />
              <node concept="37vLTw" id="6yKcP2SxY8D" role="37wK5m">
                <ref role="3cqZAo" node="5tGs5KqKj4Z" resolve="flavor" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_UvOG" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1iLCKvLGkL2" role="jymVt" />
    <node concept="3clFb_" id="5tGs5KqKj5h" role="jymVt">
      <property role="TrG5h" value="getTransferData" />
      <node concept="3Tm1VV" id="5tGs5KqKj5i" role="1B3o_S" />
      <node concept="3uibUv" id="5tGs5KqKj5j" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="37vLTG" id="5tGs5KqKj5k" role="3clF46">
        <property role="TrG5h" value="flavor" />
        <node concept="3uibUv" id="5tGs5KqKj5l" role="1tU5fm">
          <ref role="3uigEE" to="kt01:~DataFlavor" resolve="DataFlavor" />
        </node>
      </node>
      <node concept="3clFbS" id="5tGs5KqKj5m" role="3clF47">
        <node concept="3clFbJ" id="6yKcP2SAW6U" role="3cqZAp">
          <node concept="3clFbS" id="6yKcP2SAW6X" role="3clFbx">
            <node concept="3clFbJ" id="5tGs5KqKj5n" role="3cqZAp">
              <node concept="3eNFk2" id="55dLdDU0LFP" role="3eNLev">
                <node concept="2OqwBi" id="55dLdDU0XUS" role="3eO9$A">
                  <node concept="10M0yZ" id="55dLdDU0X0W" role="2Oq$k0">
                    <ref role="3cqZAo" to="qzxo:~SNodeClip.NODE" resolve="NODE" />
                    <ref role="1PxDUh" to="qzxo:~SNodeClip" resolve="SNodeClip" />
                  </node>
                  <node concept="liA8E" id="55dLdDU0Zhl" role="2OqNvi">
                    <ref role="37wK5l" to="kt01:~DataFlavor.equals(java.awt.datatransfer.DataFlavor)" resolve="equals" />
                    <node concept="37vLTw" id="55dLdDU10Uj" role="37wK5m">
                      <ref role="3cqZAo" node="5tGs5KqKj5k" resolve="flavor" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="55dLdDU0LFR" role="3eOfB_">
                  <node concept="3cpWs6" id="55dLdDU1oyL" role="3cqZAp">
                    <node concept="1rXfSq" id="55dLdDU1utG" role="3cqZAk">
                      <ref role="37wK5l" node="5tGs5KqKj7n" resolve="createNodeData" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="55dLdDU1bcx" role="3eNLev">
                <node concept="3clFbS" id="55dLdDU1bcz" role="3eOfB_">
                  <node concept="3cpWs6" id="5tGs5KqKj5S" role="3cqZAp">
                    <node concept="1rXfSq" id="4hiugqyz9dt" role="3cqZAk">
                      <ref role="37wK5l" node="5tGs5KqKj5Z" resolve="getAsString" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="5tGs5KqKj5v" role="3eO9$A">
                  <node concept="liA8E" id="5tGs5KqKj5x" role="2OqNvi">
                    <ref role="37wK5l" to="kt01:~DataFlavor.equals(java.awt.datatransfer.DataFlavor)" resolve="equals" />
                    <node concept="37vLTw" id="2BHiRxglYEo" role="37wK5m">
                      <ref role="3cqZAo" node="5tGs5KqKj5k" resolve="flavor" />
                    </node>
                  </node>
                  <node concept="10M0yZ" id="6yKcP2SBdX5" role="2Oq$k0">
                    <ref role="3cqZAo" to="kt01:~DataFlavor.stringFlavor" resolve="stringFlavor" />
                    <ref role="1PxDUh" to="kt01:~DataFlavor" resolve="DataFlavor" />
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="55dLdDU1gVm" role="3eNLev">
                <node concept="3clFbS" id="55dLdDU1gVo" role="3eOfB_">
                  <node concept="3cpWs6" id="5tGs5KqKj5N" role="3cqZAp">
                    <node concept="2ShNRf" id="5tGs5KqKj5O" role="3cqZAk">
                      <node concept="1pGfFk" id="5tGs5KqKj5P" role="2ShVmc">
                        <ref role="37wK5l" to="guwi:~StringReader.&lt;init&gt;(java.lang.String)" resolve="StringReader" />
                        <node concept="1rXfSq" id="4hiugqyyY4W" role="37wK5m">
                          <ref role="37wK5l" node="5tGs5KqKj5Z" resolve="getAsString" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="5tGs5KqKj5A" role="3eO9$A">
                  <node concept="37vLTw" id="2BHiRxgmaAX" role="2Oq$k0">
                    <ref role="3cqZAo" node="5tGs5KqKj5k" resolve="flavor" />
                  </node>
                  <node concept="liA8E" id="5tGs5KqKj5C" role="2OqNvi">
                    <ref role="37wK5l" to="kt01:~DataFlavor.equals(java.awt.datatransfer.DataFlavor)" resolve="equals" />
                    <node concept="10M0yZ" id="6yKcP2SBebB" role="37wK5m">
                      <ref role="3cqZAo" to="kt01:~DataFlavor.plainTextFlavor" resolve="plainTextFlavor" />
                      <ref role="1PxDUh" to="kt01:~DataFlavor" resolve="DataFlavor" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="5HU13ZkQOgc" role="3clFbw">
                <node concept="liA8E" id="5HU13ZkQPYD" role="2OqNvi">
                  <ref role="37wK5l" to="kt01:~DataFlavor.equals(java.awt.datatransfer.DataFlavor)" resolve="equals" />
                  <node concept="37vLTw" id="5HU13ZkQNZA" role="37wK5m">
                    <ref role="3cqZAo" node="5tGs5KqKj5k" resolve="flavor" />
                  </node>
                </node>
                <node concept="10M0yZ" id="55dLdDTZZ9$" role="2Oq$k0">
                  <ref role="3cqZAo" to="qzxo:~SNodeClip.NODEREF" resolve="NODEREF" />
                  <ref role="1PxDUh" to="qzxo:~SNodeClip" resolve="SNodeClip" />
                </node>
              </node>
              <node concept="3clFbS" id="5HU13ZkQKyR" role="3clFbx">
                <node concept="3cpWs6" id="5HU13ZkQRRa" role="3cqZAp">
                  <node concept="37vLTw" id="15R8ocNWh4m" role="3cqZAk">
                    <ref role="3cqZAo" node="5HU13ZkKHqS" resolve="mySNodeReference" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1rXfSq" id="6yKcP2SAYfM" role="3clFbw">
            <ref role="37wK5l" node="5tGs5KqKj4W" resolve="isDataFlavorSupported" />
            <node concept="37vLTw" id="6yKcP2SB0nj" role="37wK5m">
              <ref role="3cqZAo" node="5tGs5KqKj5k" resolve="flavor" />
            </node>
          </node>
        </node>
        <node concept="YS8fn" id="5tGs5KqKj5I" role="3cqZAp">
          <node concept="2ShNRf" id="5tGs5KqKj5J" role="YScLw">
            <node concept="1pGfFk" id="5tGs5KqKj5K" role="2ShVmc">
              <ref role="37wK5l" to="kt01:~UnsupportedFlavorException.&lt;init&gt;(java.awt.datatransfer.DataFlavor)" resolve="UnsupportedFlavorException" />
              <node concept="37vLTw" id="2BHiRxgh9Wp" role="37wK5m">
                <ref role="3cqZAo" node="5tGs5KqKj5k" resolve="flavor" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="5tGs5KqKj5X" role="Sfmx6">
        <ref role="3uigEE" to="kt01:~UnsupportedFlavorException" resolve="UnsupportedFlavorException" />
      </node>
      <node concept="3uibUv" id="5tGs5KqKj5Y" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
      <node concept="2AHcQZ" id="3tYsUK_UvOI" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1iLCKvLGoAd" role="jymVt" />
    <node concept="3clFb_" id="5tGs5KqKj5Z" role="jymVt">
      <property role="TrG5h" value="getAsString" />
      <node concept="17QB3L" id="6yKcP2SyYaO" role="3clF45" />
      <node concept="3Tm6S6" id="5tGs5KqKj60" role="1B3o_S" />
      <node concept="3clFbS" id="5tGs5KqKj62" role="3clF47">
        <node concept="3cpWs6" id="5tGs5KqKj63" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeuftf" role="3cqZAk">
            <ref role="3cqZAo" node="5tGs5KqKj3z" resolve="myText" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1iLCKvLGqBV" role="jymVt" />
    <node concept="2YIFZL" id="1iLCKvLGuvQ" role="jymVt">
      <property role="TrG5h" value="saveNodes" />
      <node concept="3clFbS" id="5tGs5KqKj6i" role="3clF47">
        <node concept="1DcWWT" id="5tGs5KqKj6j" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxglmzh" role="1DdaDG">
            <ref role="3cqZAo" node="5tGs5KqKj68" resolve="nodes" />
          </node>
          <node concept="3cpWsn" id="5tGs5KqKj6l" role="1Duv9x">
            <property role="TrG5h" value="node" />
            <node concept="3uibUv" id="5tGs5KqKj6m" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
          </node>
          <node concept="3clFbS" id="5tGs5KqKj6n" role="2LFqv$">
            <node concept="1gVbGN" id="5tGs5KqKj6o" role="3cqZAp">
              <node concept="3clFbC" id="5tGs5KqKj6p" role="1gVkn0">
                <node concept="2OqwBi" id="5tGs5KqKj6q" role="3uHU7B">
                  <node concept="37vLTw" id="3GM_nagTwLk" role="2Oq$k0">
                    <ref role="3cqZAo" node="5tGs5KqKj6l" resolve="node" />
                  </node>
                  <node concept="liA8E" id="5tGs5KqKj6s" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getParent()" resolve="getParent" />
                  </node>
                </node>
                <node concept="2OqwBi" id="5tGs5KqKj6t" role="3uHU7w">
                  <node concept="2OqwBi" id="5tGs5KqKj6u" role="2Oq$k0">
                    <node concept="37vLTw" id="2BHiRxgmJfY" role="2Oq$k0">
                      <ref role="3cqZAo" node="5tGs5KqKj68" resolve="nodes" />
                    </node>
                    <node concept="liA8E" id="5tGs5KqKj6w" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                      <node concept="3cmrfG" id="5tGs5KqKj6x" role="37wK5m">
                        <property role="3cmrfH" value="0" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="5tGs5KqKj6y" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getParent()" resolve="getParent" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1iLCKvLGECG" role="3cqZAp">
          <node concept="2YIFZM" id="1iLCKvLIqZD" role="3cqZAk">
            <ref role="1Pybhc" node="5tGs5KqKfGH" resolve="CopyPasteUtil" />
            <ref role="37wK5l" node="5tGs5KqKixN" resolve="createNodeDataIn" />
            <node concept="37vLTw" id="1iLCKvLIqZE" role="37wK5m">
              <ref role="3cqZAo" node="5tGs5KqKj68" resolve="nodes" />
            </node>
            <node concept="37vLTw" id="1iLCKvLIqZF" role="37wK5m">
              <ref role="3cqZAo" node="5tGs5KqKj6c" resolve="nodesAndAttributes" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5tGs5KqKj68" role="3clF46">
        <property role="TrG5h" value="nodes" />
        <node concept="3uibUv" id="5tGs5KqKj69" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="5tGs5KqKj6a" role="11_B2D">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
        <node concept="2AHcQZ" id="5tGs5KqKj6b" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="5tGs5KqKj6c" role="3clF46">
        <property role="TrG5h" value="nodesAndAttributes" />
        <node concept="3uibUv" id="5tGs5KqKj6d" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
          <node concept="3uibUv" id="5tGs5KqKj6e" role="11_B2D">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
          <node concept="3uibUv" id="5tGs5KqKj6f" role="11_B2D">
            <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
            <node concept="3uibUv" id="5tGs5KqKj6g" role="11_B2D">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5tGs5KqKj6h" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="3uibUv" id="1iLCKvLGz4W" role="3clF45">
        <ref role="3uigEE" to="qzxo:~PasteNodeData" resolve="PasteNodeData" />
      </node>
      <node concept="3Tm6S6" id="5tGs5KqKj66" role="1B3o_S" />
    </node>
    <node concept="3clFb_" id="6yKcP2S$Yet" role="jymVt">
      <property role="TrG5h" value="saveText" />
      <node concept="3cqZAl" id="6yKcP2S$Yev" role="3clF45" />
      <node concept="3Tm6S6" id="6yKcP2S_11W" role="1B3o_S" />
      <node concept="3clFbS" id="6yKcP2S$Yex" role="3clF47">
        <node concept="3clFbF" id="6yKcP2S_m9a" role="3cqZAp">
          <node concept="37vLTI" id="6yKcP2S_miy" role="3clFbG">
            <node concept="37vLTw" id="6yKcP2S_mkX" role="37vLTx">
              <ref role="3cqZAo" node="6yKcP2S_jLb" resolve="text" />
            </node>
            <node concept="37vLTw" id="6yKcP2S_m99" role="37vLTJ">
              <ref role="3cqZAo" node="5tGs5KqKj3z" resolve="myText" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6yKcP2S_mqr" role="3cqZAp">
          <node concept="2OqwBi" id="6yKcP2S_mJb" role="3clFbG">
            <node concept="37vLTw" id="6yKcP2S_mqq" role="2Oq$k0">
              <ref role="3cqZAo" node="6yKcP2SwATu" resolve="mySupportedDataFlavors" />
            </node>
            <node concept="liA8E" id="6yKcP2S_ovR" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
              <node concept="10M0yZ" id="6yKcP2S_oF_" role="37wK5m">
                <ref role="3cqZAo" to="kt01:~DataFlavor.stringFlavor" resolve="stringFlavor" />
                <ref role="1PxDUh" to="kt01:~DataFlavor" resolve="DataFlavor" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6yKcP2S_qYC" role="3cqZAp">
          <node concept="2OqwBi" id="6yKcP2S_rp2" role="3clFbG">
            <node concept="37vLTw" id="6yKcP2S_qYB" role="2Oq$k0">
              <ref role="3cqZAo" node="6yKcP2SwATu" resolve="mySupportedDataFlavors" />
            </node>
            <node concept="liA8E" id="6yKcP2S_te9" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
              <node concept="10M0yZ" id="6yKcP2S_tpQ" role="37wK5m">
                <ref role="1PxDUh" to="kt01:~DataFlavor" resolve="DataFlavor" />
                <ref role="3cqZAo" to="kt01:~DataFlavor.plainTextFlavor" resolve="plainTextFlavor" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6yKcP2S_jLb" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="17QB3L" id="6yKcP2S_jLa" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="5tGs5KqKj7n" role="jymVt">
      <property role="TrG5h" value="createNodeData" />
      <node concept="3uibUv" id="5tGs5KqKj7p" role="3clF45">
        <ref role="3uigEE" to="qzxo:~PasteNodeData" resolve="PasteNodeData" />
      </node>
      <node concept="3Tm1VV" id="5tGs5KqKj7o" role="1B3o_S" />
      <node concept="3clFbS" id="5tGs5KqKj7s" role="3clF47">
        <node concept="3cpWs6" id="5tGs5KqKj89" role="3cqZAp">
          <node concept="2YIFZM" id="75qA1j01s8k" role="3cqZAk">
            <ref role="37wK5l" node="75qA1j01iWU" resolve="createNodeDataOut" />
            <ref role="1Pybhc" node="5tGs5KqKfGH" resolve="CopyPasteUtil" />
            <node concept="37vLTw" id="75qA1j01s8l" role="37wK5m">
              <ref role="3cqZAo" node="1iLCKvLFBmJ" resolve="myPasteData" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="5tGs5KqKj8n" role="jymVt">
      <property role="TrG5h" value="containsNodes" />
      <node concept="3Tm1VV" id="5tGs5KqKj8o" role="1B3o_S" />
      <node concept="10P_77" id="5tGs5KqKj8p" role="3clF45" />
      <node concept="3clFbS" id="5tGs5KqKj8q" role="3clF47">
        <node concept="3cpWs6" id="5tGs5KqKj8r" role="3cqZAp">
          <node concept="3fqX7Q" id="5tGs5KqKj8t" role="3cqZAk">
            <node concept="2OqwBi" id="5tGs5KqKj8u" role="3fr31v">
              <node concept="2OqwBi" id="1iLCKvLHxCi" role="2Oq$k0">
                <node concept="37vLTw" id="2BHiRxeuh_b" role="2Oq$k0">
                  <ref role="3cqZAo" node="1iLCKvLFBmJ" resolve="myPasteData" />
                </node>
                <node concept="liA8E" id="1iLCKvLH$wS" role="2OqNvi">
                  <ref role="37wK5l" to="qzxo:~PasteNodeData.getNodes()" resolve="getNodes" />
                </node>
              </node>
              <node concept="liA8E" id="5tGs5KqKj8w" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.isEmpty()" resolve="isEmpty" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="5tGs5KqKj2L" role="1B3o_S" />
    <node concept="3uibUv" id="5tGs5KqKj2M" role="EKbjA">
      <ref role="3uigEE" to="kt01:~Transferable" resolve="Transferable" />
    </node>
  </node>
  <node concept="312cEu" id="5tGs5KqKj8I">
    <property role="TrG5h" value="TextPasteUtil" />
    <node concept="3clFbW" id="5tGs5KqKj8K" role="jymVt">
      <node concept="3clFbS" id="5tGs5KqKj8N" role="3clF47" />
      <node concept="3cqZAl" id="5tGs5KqKj8M" role="3clF45" />
      <node concept="3Tm1VV" id="5tGs5KqKj8L" role="1B3o_S" />
    </node>
    <node concept="2YIFZL" id="5tGs5KqKj8O" role="jymVt">
      <property role="TrG5h" value="hasStringInClipboard" />
      <node concept="3clFbS" id="5tGs5KqKj8R" role="3clF47">
        <node concept="3cpWs8" id="5tGs5KqKj8S" role="3cqZAp">
          <node concept="3cpWsn" id="5tGs5KqKj8T" role="3cpWs9">
            <property role="TrG5h" value="content" />
            <node concept="10Nm6u" id="5tGs5KqKj8V" role="33vP2m" />
            <node concept="3uibUv" id="5tGs5KqKj8U" role="1tU5fm">
              <ref role="3uigEE" to="kt01:~Transferable" resolve="Transferable" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="5tGs5KqKj8W" role="3cqZAp">
          <node concept="3cpWsn" id="5tGs5KqKj90" role="1Duv9x">
            <property role="TrG5h" value="trf" />
            <node concept="3uibUv" id="5tGs5KqKj91" role="1tU5fm">
              <ref role="3uigEE" to="kt01:~Transferable" resolve="Transferable" />
            </node>
          </node>
          <node concept="3clFbS" id="5tGs5KqKj92" role="2LFqv$">
            <node concept="3clFbJ" id="5tGs5KqKj93" role="3cqZAp">
              <node concept="1Wc70l" id="5tGs5KqKj94" role="3clFbw">
                <node concept="3y3z36" id="5tGs5KqKj95" role="3uHU7B">
                  <node concept="37vLTw" id="3GM_nagTwTb" role="3uHU7B">
                    <ref role="3cqZAo" node="5tGs5KqKj90" resolve="trf" />
                  </node>
                  <node concept="10Nm6u" id="5tGs5KqKj97" role="3uHU7w" />
                </node>
                <node concept="2OqwBi" id="5tGs5KqKj98" role="3uHU7w">
                  <node concept="37vLTw" id="3GM_nagTvpk" role="2Oq$k0">
                    <ref role="3cqZAo" node="5tGs5KqKj90" resolve="trf" />
                  </node>
                  <node concept="liA8E" id="5tGs5KqKj9a" role="2OqNvi">
                    <ref role="37wK5l" to="kt01:~Transferable.isDataFlavorSupported(java.awt.datatransfer.DataFlavor)" resolve="isDataFlavorSupported" />
                    <node concept="10M0yZ" id="5tGs5KqKj9b" role="37wK5m">
                      <ref role="1PxDUh" to="kt01:~DataFlavor" resolve="DataFlavor" />
                      <ref role="3cqZAo" to="kt01:~DataFlavor.stringFlavor" resolve="stringFlavor" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="5tGs5KqKj9c" role="3clFbx">
                <node concept="3clFbF" id="5tGs5KqKj9d" role="3cqZAp">
                  <node concept="37vLTI" id="5tGs5KqKj9e" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagTskV" role="37vLTx">
                      <ref role="3cqZAo" node="5tGs5KqKj90" resolve="trf" />
                    </node>
                    <node concept="37vLTw" id="3GM_nagTt9d" role="37vLTJ">
                      <ref role="3cqZAo" node="5tGs5KqKj8T" resolve="content" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3zACq4" id="5tGs5KqKj9h" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="5tGs5KqKj8X" role="1DdaDG">
            <node concept="liA8E" id="5tGs5KqKj8Z" role="2OqNvi">
              <ref role="37wK5l" to="ddhc:~CopyPasteManagerEx.getAllContents()" resolve="getAllContents" />
            </node>
            <node concept="2YIFZM" id="$mzrmRC_2H" role="2Oq$k0">
              <ref role="37wK5l" to="ddhc:~CopyPasteManagerEx.getInstanceEx()" resolve="getInstanceEx" />
              <ref role="1Pybhc" to="ddhc:~CopyPasteManagerEx" resolve="CopyPasteManagerEx" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5tGs5KqKj9i" role="3cqZAp">
          <node concept="3y3z36" id="5tGs5KqKj9j" role="3cqZAk">
            <node concept="10Nm6u" id="5tGs5KqKj9l" role="3uHU7w" />
            <node concept="37vLTw" id="3GM_nagTtVW" role="3uHU7B">
              <ref role="3cqZAo" node="5tGs5KqKj8T" resolve="content" />
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="5tGs5KqKj8Q" role="3clF45" />
      <node concept="3Tm1VV" id="5tGs5KqKj8P" role="1B3o_S" />
    </node>
    <node concept="2YIFZL" id="5tGs5KqKj9m" role="jymVt">
      <property role="TrG5h" value="getStringFromClipboard" />
      <node concept="3Tm1VV" id="5tGs5KqKj9n" role="1B3o_S" />
      <node concept="3clFbS" id="5tGs5KqKj9p" role="3clF47">
        <node concept="3cpWs8" id="5tGs5KqKj9q" role="3cqZAp">
          <node concept="3cpWsn" id="5tGs5KqKj9r" role="3cpWs9">
            <property role="TrG5h" value="content" />
            <node concept="10Nm6u" id="5tGs5KqKj9t" role="33vP2m" />
            <node concept="3uibUv" id="5tGs5KqKj9s" role="1tU5fm">
              <ref role="3uigEE" to="kt01:~Transferable" resolve="Transferable" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="5tGs5KqKj9u" role="3cqZAp">
          <node concept="2OqwBi" id="5tGs5KqKj9v" role="1DdaDG">
            <node concept="liA8E" id="5tGs5KqKj9x" role="2OqNvi">
              <ref role="37wK5l" to="ddhc:~CopyPasteManagerEx.getAllContents()" resolve="getAllContents" />
            </node>
            <node concept="2YIFZM" id="$mzrmRC_2I" role="2Oq$k0">
              <ref role="37wK5l" to="ddhc:~CopyPasteManagerEx.getInstanceEx()" resolve="getInstanceEx" />
              <ref role="1Pybhc" to="ddhc:~CopyPasteManagerEx" resolve="CopyPasteManagerEx" />
            </node>
          </node>
          <node concept="3clFbS" id="5tGs5KqKj9$" role="2LFqv$">
            <node concept="3clFbJ" id="5tGs5KqKj9_" role="3cqZAp">
              <node concept="1Wc70l" id="5tGs5KqKj9A" role="3clFbw">
                <node concept="3y3z36" id="5tGs5KqKj9B" role="3uHU7B">
                  <node concept="37vLTw" id="3GM_nagTshB" role="3uHU7B">
                    <ref role="3cqZAo" node="5tGs5KqKj9y" resolve="trf" />
                  </node>
                  <node concept="10Nm6u" id="5tGs5KqKj9D" role="3uHU7w" />
                </node>
                <node concept="2OqwBi" id="5tGs5KqKj9E" role="3uHU7w">
                  <node concept="liA8E" id="5tGs5KqKj9G" role="2OqNvi">
                    <ref role="37wK5l" to="kt01:~Transferable.isDataFlavorSupported(java.awt.datatransfer.DataFlavor)" resolve="isDataFlavorSupported" />
                    <node concept="10M0yZ" id="5tGs5KqKj9H" role="37wK5m">
                      <ref role="1PxDUh" to="kt01:~DataFlavor" resolve="DataFlavor" />
                      <ref role="3cqZAo" to="kt01:~DataFlavor.stringFlavor" resolve="stringFlavor" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="3GM_nagTvCJ" role="2Oq$k0">
                    <ref role="3cqZAo" node="5tGs5KqKj9y" resolve="trf" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="5tGs5KqKj9I" role="3clFbx">
                <node concept="3clFbF" id="5tGs5KqKj9J" role="3cqZAp">
                  <node concept="37vLTI" id="5tGs5KqKj9K" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagT_GP" role="37vLTx">
                      <ref role="3cqZAo" node="5tGs5KqKj9y" resolve="trf" />
                    </node>
                    <node concept="37vLTw" id="3GM_nagTwD3" role="37vLTJ">
                      <ref role="3cqZAo" node="5tGs5KqKj9r" resolve="content" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3zACq4" id="5tGs5KqKj9N" role="3cqZAp" />
          </node>
          <node concept="3cpWsn" id="5tGs5KqKj9y" role="1Duv9x">
            <property role="TrG5h" value="trf" />
            <node concept="3uibUv" id="5tGs5KqKj9z" role="1tU5fm">
              <ref role="3uigEE" to="kt01:~Transferable" resolve="Transferable" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5tGs5KqKj9O" role="3cqZAp">
          <node concept="3clFbC" id="5tGs5KqKj9P" role="3clFbw">
            <node concept="10Nm6u" id="5tGs5KqKj9R" role="3uHU7w" />
            <node concept="37vLTw" id="3GM_nagTyst" role="3uHU7B">
              <ref role="3cqZAo" node="5tGs5KqKj9r" resolve="content" />
            </node>
          </node>
          <node concept="3clFbS" id="5tGs5KqKj9S" role="3clFbx">
            <node concept="3cpWs6" id="5tGs5KqKj9T" role="3cqZAp">
              <node concept="10Nm6u" id="5tGs5KqKj9U" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5tGs5KqKj9V" role="3cqZAp">
          <node concept="2YIFZM" id="5tGs5KqKj9W" role="3cqZAk">
            <ref role="1Pybhc" node="5tGs5KqKj8I" resolve="TextPasteUtil" />
            <ref role="37wK5l" node="5tGs5KqKj9Y" resolve="getStringFromTransferable" />
            <node concept="37vLTw" id="3GM_nagTrrI" role="37wK5m">
              <ref role="3cqZAo" node="5tGs5KqKj9r" resolve="content" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="5tGs5KqKj9o" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="2YIFZL" id="5tGs5KqKj9Y" role="jymVt">
      <property role="TrG5h" value="getStringFromTransferable" />
      <node concept="3Tm1VV" id="5tGs5KqKj9Z" role="1B3o_S" />
      <node concept="37vLTG" id="5tGs5KqKja1" role="3clF46">
        <property role="TrG5h" value="content" />
        <node concept="3uibUv" id="5tGs5KqKja2" role="1tU5fm">
          <ref role="3uigEE" to="kt01:~Transferable" resolve="Transferable" />
        </node>
      </node>
      <node concept="3uibUv" id="5tGs5KqKja0" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="5tGs5KqKja3" role="3clF47">
        <node concept="3cpWs8" id="5tGs5KqKja4" role="3cqZAp">
          <node concept="3cpWsn" id="5tGs5KqKja5" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="5tGs5KqKja6" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="5tGs5KqKja7" role="3cqZAp">
          <node concept="3clFbS" id="5tGs5KqKjae" role="1zxBo7">
            <node concept="3clFbF" id="5tGs5KqKjaf" role="3cqZAp">
              <node concept="37vLTI" id="5tGs5KqKjag" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagTzF1" role="37vLTJ">
                  <ref role="3cqZAo" node="5tGs5KqKja5" resolve="result" />
                </node>
                <node concept="10QFUN" id="5tGs5KqKjai" role="37vLTx">
                  <node concept="2OqwBi" id="5tGs5KqKjaj" role="10QFUP">
                    <node concept="37vLTw" id="2BHiRxgmqg6" role="2Oq$k0">
                      <ref role="3cqZAo" node="5tGs5KqKja1" resolve="content" />
                    </node>
                    <node concept="liA8E" id="5tGs5KqKjal" role="2OqNvi">
                      <ref role="37wK5l" to="kt01:~Transferable.getTransferData(java.awt.datatransfer.DataFlavor)" resolve="getTransferData" />
                      <node concept="10M0yZ" id="5tGs5KqKjam" role="37wK5m">
                        <ref role="1PxDUh" to="kt01:~DataFlavor" resolve="DataFlavor" />
                        <ref role="3cqZAo" to="kt01:~DataFlavor.stringFlavor" resolve="stringFlavor" />
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="5tGs5KqKjan" role="10QFUM">
                    <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="5tGs5KqKja8" role="1zxBo5">
            <node concept="XOnhg" id="5tGs5KqKjac" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="xvs04dIxyz" role="1tU5fm">
                <node concept="3uibUv" id="5tGs5KqKjad" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="5tGs5KqKja9" role="1zc67A">
              <node concept="3cpWs6" id="5tGs5KqKjaa" role="3cqZAp">
                <node concept="10Nm6u" id="5tGs5KqKjab" role="3cqZAk" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5tGs5KqKjao" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTxMH" role="3cqZAk">
            <ref role="3cqZAo" node="5tGs5KqKja5" resolve="result" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="5tGs5KqKj8J" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="1_MDhe9aU_9">
    <property role="1EXbeo" value="true" />
    <property role="TrG5h" value="CopyPasteMagic" />
    <node concept="312cEg" id="1_MDhe9bEwZ" role="jymVt">
      <property role="TrG5h" value="myOriginal2NewNodes" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1_MDhe9bEx0" role="1B3o_S" />
      <node concept="3uibUv" id="1_MDhe9bEx1" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="3Tqbb2" id="1_MDhe9cbpL" role="11_B2D" />
        <node concept="3Tqbb2" id="1_MDhe9cbJM" role="11_B2D" />
      </node>
      <node concept="2ShNRf" id="1_MDhe9bNo5" role="33vP2m">
        <node concept="1pGfFk" id="1_MDhe9cb79" role="2ShVmc">
          <property role="373rjd" value="true" />
          <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="1_MDhe9cV0Z" role="jymVt">
      <property role="TrG5h" value="myNew2OriginalNodes" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1_MDhe9cV10" role="1B3o_S" />
      <node concept="3uibUv" id="1_MDhe9cV11" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="3Tqbb2" id="1_MDhe9cV12" role="11_B2D" />
        <node concept="3Tqbb2" id="1_MDhe9cV13" role="11_B2D" />
      </node>
      <node concept="2ShNRf" id="1_MDhe9cV14" role="33vP2m">
        <node concept="1pGfFk" id="1_MDhe9cV15" role="2ShVmc">
          <property role="373rjd" value="true" />
          <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="1_MDhe9gi59" role="jymVt">
      <property role="TrG5h" value="myEncounteredLanguages" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1_MDhe9gi5a" role="1B3o_S" />
      <node concept="3uibUv" id="1_MDhe9gpVC" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="1_MDhe9gq93" role="11_B2D">
          <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
        </node>
      </node>
      <node concept="2ShNRf" id="5tGs5KqKizo" role="33vP2m">
        <node concept="1pGfFk" id="1_MDhe9gpct" role="2ShVmc">
          <property role="373rjd" value="true" />
          <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1_MDhe9izuY" role="jymVt" />
    <node concept="312cEg" id="1_MDhe9b$cH" role="jymVt">
      <property role="TrG5h" value="myNodesAndAttributes" />
      <node concept="3Tm6S6" id="1_MDhe9b$cI" role="1B3o_S" />
      <node concept="3uibUv" id="1_MDhe9b$cK" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="3uibUv" id="1_MDhe9b$cL" role="11_B2D">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
        <node concept="3uibUv" id="1_MDhe9b$cM" role="11_B2D">
          <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
          <node concept="3uibUv" id="1_MDhe9b$cN" role="11_B2D">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="1_MDhe9bbNQ" role="jymVt">
      <property role="TrG5h" value="myCopyUserObjects" />
      <node concept="3Tm6S6" id="1_MDhe9bbvp" role="1B3o_S" />
      <node concept="10P_77" id="1_MDhe9bbJt" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="1_MDhe9b$oO" role="jymVt" />
    <node concept="2tJIrI" id="1_MDhe9b9UO" role="jymVt" />
    <node concept="3clFb_" id="1_MDhe9ba9i" role="jymVt">
      <property role="TrG5h" value="copyUserObjects" />
      <node concept="3uibUv" id="1_MDhe9bb89" role="3clF45">
        <ref role="3uigEE" node="1_MDhe9aU_9" resolve="CopyPasteMagic" />
      </node>
      <node concept="3clFbS" id="1_MDhe9ba9l" role="3clF47">
        <node concept="3clFbF" id="1_MDhe9bgdE" role="3cqZAp">
          <node concept="37vLTI" id="1_MDhe9biyT" role="3clFbG">
            <node concept="37vLTw" id="1_MDhe9buMZ" role="37vLTx">
              <ref role="3cqZAo" node="1_MDhe9bupr" resolve="value" />
            </node>
            <node concept="37vLTw" id="1_MDhe9bgdC" role="37vLTJ">
              <ref role="3cqZAo" node="1_MDhe9bbNQ" resolve="myCopyUserObjects" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1_MDhe9bvfw" role="3cqZAp">
          <node concept="Xjq3P" id="1_MDhe9bvwX" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1_MDhe9babw" role="1B3o_S" />
      <node concept="37vLTG" id="1_MDhe9bupr" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="10P_77" id="1_MDhe9bupq" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="1_MDhe9b$rs" role="jymVt">
      <property role="TrG5h" value="withSpecialAtrtributeHandling" />
      <node concept="3uibUv" id="1_MDhe9b$rt" role="3clF45">
        <ref role="3uigEE" node="1_MDhe9aU_9" resolve="CopyPasteMagic" />
      </node>
      <node concept="3clFbS" id="1_MDhe9b$ru" role="3clF47">
        <node concept="3clFbF" id="1_MDhe9b$rv" role="3cqZAp">
          <node concept="37vLTI" id="1_MDhe9b$rw" role="3clFbG">
            <node concept="37vLTw" id="1_MDhe9b$rx" role="37vLTx">
              <ref role="3cqZAo" node="1_MDhe9b$xl" resolve="nodesAndAttributes" />
            </node>
            <node concept="37vLTw" id="1_MDhe9b$ry" role="37vLTJ">
              <ref role="3cqZAo" node="1_MDhe9b$cH" resolve="myNodesAndAttributes" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1_MDhe9b$rz" role="3cqZAp">
          <node concept="Xjq3P" id="1_MDhe9b$r$" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1_MDhe9b$r_" role="1B3o_S" />
      <node concept="37vLTG" id="1_MDhe9b$xl" role="3clF46">
        <property role="TrG5h" value="nodesAndAttributes" />
        <node concept="3uibUv" id="1_MDhe9b$xm" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
          <node concept="3uibUv" id="1_MDhe9b$xn" role="11_B2D">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
          <node concept="3uibUv" id="1_MDhe9b$xo" role="11_B2D">
            <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
            <node concept="3uibUv" id="1_MDhe9b$xp" role="11_B2D">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="1_MDhe9b$xq" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1_MDhe9bEqq" role="jymVt" />
    <node concept="3clFb_" id="1_MDhe9ccdw" role="jymVt">
      <property role="TrG5h" value="getOriginal2NewMap" />
      <node concept="3clFbS" id="1_MDhe9ccdz" role="3clF47">
        <node concept="3clFbF" id="1_MDhe9cdqA" role="3cqZAp">
          <node concept="37vLTw" id="1_MDhe9cdq_" role="3clFbG">
            <ref role="3cqZAo" node="1_MDhe9bEwZ" resolve="myOriginal2NewNodes" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1_MDhe9ccoT" role="1B3o_S" />
      <node concept="3uibUv" id="1_MDhe9ccFP" role="3clF45">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="3Tqbb2" id="1_MDhe9ccFQ" role="11_B2D" />
        <node concept="3Tqbb2" id="1_MDhe9ccFR" role="11_B2D" />
      </node>
    </node>
    <node concept="2tJIrI" id="1_MDhe9cX25" role="jymVt" />
    <node concept="3clFb_" id="1_MDhe9cWbY" role="jymVt">
      <property role="TrG5h" value="getNew2OriginalMap" />
      <node concept="3clFbS" id="1_MDhe9cWbZ" role="3clF47">
        <node concept="3clFbF" id="1_MDhe9cWc0" role="3cqZAp">
          <node concept="37vLTw" id="1_MDhe9cWc1" role="3clFbG">
            <ref role="3cqZAo" node="1_MDhe9cV0Z" resolve="myNew2OriginalNodes" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1_MDhe9cWc2" role="1B3o_S" />
      <node concept="3uibUv" id="1_MDhe9cWc3" role="3clF45">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="3Tqbb2" id="1_MDhe9cWc4" role="11_B2D" />
        <node concept="3Tqbb2" id="1_MDhe9cWc5" role="11_B2D" />
      </node>
    </node>
    <node concept="2tJIrI" id="1_MDhe9gBLL" role="jymVt" />
    <node concept="3clFb_" id="1_MDhe9gApI" role="jymVt">
      <property role="TrG5h" value="getEncounteredLanguages" />
      <node concept="3clFbS" id="1_MDhe9gApJ" role="3clF47">
        <node concept="3clFbF" id="1_MDhe9gApK" role="3cqZAp">
          <node concept="37vLTw" id="1_MDhe9gApL" role="3clFbG">
            <ref role="3cqZAo" node="1_MDhe9gi59" resolve="myEncounteredLanguages" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1_MDhe9gApM" role="1B3o_S" />
      <node concept="3uibUv" id="1_MDhe9gDNu" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="1_MDhe9gEJ0" role="11_B2D">
          <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1_MDhe9bEr5" role="jymVt" />
    <node concept="3clFb_" id="1_MDhe9clWK" role="jymVt">
      <property role="TrG5h" value="copy" />
      <node concept="3Tqbb2" id="1_MDhe9cmwF" role="3clF45" />
      <node concept="3clFbS" id="1_MDhe9clWN" role="3clF47">
        <node concept="3cpWs8" id="1_MDhe9gqKN" role="3cqZAp">
          <node concept="3cpWsn" id="1_MDhe9gqKO" role="3cpWs9">
            <property role="TrG5h" value="concept" />
            <node concept="3uibUv" id="1_MDhe9giA2" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
            </node>
            <node concept="2OqwBi" id="1_MDhe9gqKP" role="33vP2m">
              <node concept="37vLTw" id="1_MDhe9gqKQ" role="2Oq$k0">
                <ref role="3cqZAo" node="1_MDhe9cnbk" resolve="sourceNode" />
              </node>
              <node concept="liA8E" id="1_MDhe9gqKR" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1_MDhe9gt8h" role="3cqZAp">
          <node concept="2OqwBi" id="1_MDhe9gvsE" role="3clFbG">
            <node concept="37vLTw" id="1_MDhe9gt8f" role="2Oq$k0">
              <ref role="3cqZAo" node="1_MDhe9gi59" resolve="myEncounteredLanguages" />
            </node>
            <node concept="liA8E" id="1_MDhe9gxsP" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
              <node concept="2OqwBi" id="1_MDhe9gzYa" role="37wK5m">
                <node concept="37vLTw" id="1_MDhe9gyQv" role="2Oq$k0">
                  <ref role="3cqZAo" node="1_MDhe9gqKO" resolve="concept" />
                </node>
                <node concept="liA8E" id="1_MDhe9g__H" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SAbstractConcept.getLanguage()" resolve="getLanguage" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1_MDhe9c_Ez" role="3cqZAp">
          <node concept="3cpWsn" id="1_MDhe9c_E$" role="3cpWs9">
            <property role="TrG5h" value="targetNode" />
            <node concept="3uibUv" id="1_MDhe9c_E_" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="2ShNRf" id="1_MDhe9c_EA" role="33vP2m">
              <node concept="1pGfFk" id="1_MDhe9c_EB" role="2ShVmc">
                <ref role="37wK5l" to="w1kc:~SNode.&lt;init&gt;(org.jetbrains.mps.openapi.language.SConcept,org.jetbrains.mps.openapi.model.SNodeId)" resolve="SNode" />
                <node concept="37vLTw" id="1_MDhe9gqKS" role="37wK5m">
                  <ref role="3cqZAo" node="1_MDhe9gqKO" resolve="concept" />
                </node>
                <node concept="2OqwBi" id="1_MDhe9c_EF" role="37wK5m">
                  <node concept="liA8E" id="1_MDhe9c_EG" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                  </node>
                  <node concept="37vLTw" id="1_MDhe9c_EH" role="2Oq$k0">
                    <ref role="3cqZAo" node="1_MDhe9cnbk" resolve="sourceNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1_MDhe9iBNf" role="3cqZAp">
          <node concept="2YIFZM" id="1_MDhe9iD5Y" role="3clFbG">
            <ref role="37wK5l" to="w1kc:~CopyUtil.copyProperties(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode)" resolve="copyProperties" />
            <ref role="1Pybhc" to="w1kc:~CopyUtil" resolve="CopyUtil" />
            <node concept="37vLTw" id="1_MDhe9iEbn" role="37wK5m">
              <ref role="3cqZAo" node="1_MDhe9cnbk" resolve="sourceNode" />
            </node>
            <node concept="37vLTw" id="1_MDhe9iGj0" role="37wK5m">
              <ref role="3cqZAo" node="1_MDhe9c_E$" resolve="targetNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1_MDhe9iIo7" role="3cqZAp">
          <node concept="3clFbS" id="1_MDhe9iIo9" role="3clFbx">
            <node concept="3clFbF" id="1_MDhe9iLw0" role="3cqZAp">
              <node concept="2YIFZM" id="1_MDhe9iMjO" role="3clFbG">
                <ref role="37wK5l" to="w1kc:~CopyUtil.copyUserObjects(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode)" resolve="copyUserObjects" />
                <ref role="1Pybhc" to="w1kc:~CopyUtil" resolve="CopyUtil" />
                <node concept="37vLTw" id="1_MDhe9iNsj" role="37wK5m">
                  <ref role="3cqZAo" node="1_MDhe9cnbk" resolve="sourceNode" />
                </node>
                <node concept="37vLTw" id="1_MDhe9iPHx" role="37wK5m">
                  <ref role="3cqZAo" node="1_MDhe9c_E$" resolve="targetNode" />
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="1_MDhe9iK1a" role="3clFbw">
            <ref role="3cqZAo" node="1_MDhe9bbNQ" resolve="myCopyUserObjects" />
          </node>
        </node>
        <node concept="3clFbF" id="1_MDhe9c_EX" role="3cqZAp">
          <node concept="2OqwBi" id="1_MDhe9c_EY" role="3clFbG">
            <node concept="37vLTw" id="1_MDhe9c_EZ" role="2Oq$k0">
              <ref role="3cqZAo" node="1_MDhe9bEwZ" resolve="myOriginal2NewNodes" />
            </node>
            <node concept="liA8E" id="1_MDhe9c_F0" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <node concept="37vLTw" id="1_MDhe9c_F1" role="37wK5m">
                <ref role="3cqZAo" node="1_MDhe9cnbk" resolve="sourceNode" />
              </node>
              <node concept="37vLTw" id="1_MDhe9c_F2" role="37wK5m">
                <ref role="3cqZAo" node="1_MDhe9c_E$" resolve="targetNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1_MDhe9d0zv" role="3cqZAp">
          <node concept="2OqwBi" id="1_MDhe9d2xq" role="3clFbG">
            <node concept="37vLTw" id="1_MDhe9d0zt" role="2Oq$k0">
              <ref role="3cqZAo" node="1_MDhe9cV0Z" resolve="myNew2OriginalNodes" />
            </node>
            <node concept="liA8E" id="1_MDhe9d73n" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <node concept="37vLTw" id="1_MDhe9d8in" role="37wK5m">
                <ref role="3cqZAo" node="1_MDhe9c_E$" resolve="targetNode" />
              </node>
              <node concept="37vLTw" id="1_MDhe9da$i" role="37wK5m">
                <ref role="3cqZAo" node="1_MDhe9cnbk" resolve="sourceNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="1_MDhe9c_F3" role="3cqZAp">
          <node concept="2OqwBi" id="1_MDhe9c_F4" role="1DdaDG">
            <node concept="37vLTw" id="1_MDhe9c_F5" role="2Oq$k0">
              <ref role="3cqZAo" node="1_MDhe9cnbk" resolve="sourceNode" />
            </node>
            <node concept="liA8E" id="1_MDhe9c_F6" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.getChildren()" resolve="getChildren" />
            </node>
          </node>
          <node concept="3cpWsn" id="1_MDhe9c_F7" role="1Duv9x">
            <property role="TrG5h" value="sourceChild" />
            <node concept="3uibUv" id="1_MDhe9c_F8" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
          </node>
          <node concept="3clFbS" id="1_MDhe9c_F9" role="2LFqv$">
            <node concept="3clFbJ" id="1_MDhe9c_Fa" role="3cqZAp">
              <node concept="3y3z36" id="1_MDhe9c_Fb" role="3clFbw">
                <node concept="37vLTw" id="1_MDhe9c_Fc" role="3uHU7B">
                  <ref role="3cqZAo" node="1_MDhe9b$cH" resolve="myNodesAndAttributes" />
                </node>
                <node concept="10Nm6u" id="1_MDhe9c_Fd" role="3uHU7w" />
              </node>
              <node concept="3clFbS" id="1_MDhe9c_Fe" role="3clFbx">
                <node concept="3clFbJ" id="1_MDhe9c_Ff" role="3cqZAp">
                  <node concept="2YIFZM" id="1_MDhe9c_Fg" role="3clFbw">
                    <ref role="1Pybhc" to="i8bi:5zEkxuKh8vS" resolve="AttributeOperations" />
                    <ref role="37wK5l" to="i8bi:5zEkxuKhyEz" resolve="isAttribute" />
                    <node concept="37vLTw" id="1_MDhe9c_Fh" role="37wK5m">
                      <ref role="3cqZAo" node="1_MDhe9c_F7" resolve="sourceChild" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="1_MDhe9c_Fi" role="3clFbx">
                    <node concept="3cpWs8" id="1_MDhe9c_Fj" role="3cqZAp">
                      <node concept="3cpWsn" id="1_MDhe9c_Fk" role="3cpWs9">
                        <property role="TrG5h" value="nodes" />
                        <node concept="3uibUv" id="1_MDhe9c_Fl" role="1tU5fm">
                          <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                          <node concept="3uibUv" id="1_MDhe9c_Fm" role="11_B2D">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="1_MDhe9c_Fn" role="33vP2m">
                          <node concept="37vLTw" id="1_MDhe9c_Fo" role="2Oq$k0">
                            <ref role="3cqZAo" node="1_MDhe9b$cH" resolve="myNodesAndAttributes" />
                          </node>
                          <node concept="liA8E" id="1_MDhe9c_Fp" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                            <node concept="37vLTw" id="1_MDhe9c_Fq" role="37wK5m">
                              <ref role="3cqZAo" node="1_MDhe9cnbk" resolve="sourceNode" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="1_MDhe9c_Fr" role="3cqZAp">
                      <node concept="1Wc70l" id="1_MDhe9c_Fs" role="3clFbw">
                        <node concept="3y3z36" id="1_MDhe9c_Ft" role="3uHU7B">
                          <node concept="37vLTw" id="1_MDhe9c_Fu" role="3uHU7B">
                            <ref role="3cqZAo" node="1_MDhe9c_Fk" resolve="nodes" />
                          </node>
                          <node concept="10Nm6u" id="1_MDhe9c_Fv" role="3uHU7w" />
                        </node>
                        <node concept="3fqX7Q" id="1_MDhe9c_Fw" role="3uHU7w">
                          <node concept="2OqwBi" id="1_MDhe9c_Fx" role="3fr31v">
                            <node concept="37vLTw" id="1_MDhe9c_Fy" role="2Oq$k0">
                              <ref role="3cqZAo" node="1_MDhe9c_Fk" resolve="nodes" />
                            </node>
                            <node concept="liA8E" id="1_MDhe9c_Fz" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~Collection.contains(java.lang.Object)" resolve="contains" />
                              <node concept="37vLTw" id="1_MDhe9c_F$" role="37wK5m">
                                <ref role="3cqZAo" node="1_MDhe9c_F7" resolve="sourceChild" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="1_MDhe9c_F_" role="3clFbx">
                        <node concept="3N13vt" id="1_MDhe9c_FA" role="3cqZAp" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1_MDhe9c_FB" role="3cqZAp">
              <node concept="3cpWsn" id="1_MDhe9c_FC" role="3cpWs9">
                <property role="TrG5h" value="targetChild" />
                <node concept="3uibUv" id="1_MDhe9c_FD" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
                <node concept="1rXfSq" id="1_MDhe9cL_f" role="33vP2m">
                  <ref role="37wK5l" node="1_MDhe9clWK" resolve="copy" />
                  <node concept="37vLTw" id="1_MDhe9cNVI" role="37wK5m">
                    <ref role="3cqZAo" node="1_MDhe9c_F7" resolve="sourceChild" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1_MDhe9c_FI" role="3cqZAp">
              <node concept="3cpWsn" id="1_MDhe9c_FJ" role="3cpWs9">
                <property role="TrG5h" value="role" />
                <node concept="3uibUv" id="1_MDhe9c_FK" role="1tU5fm">
                  <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
                </node>
                <node concept="2OqwBi" id="1_MDhe9c_FL" role="33vP2m">
                  <node concept="37vLTw" id="1_MDhe9c_FM" role="2Oq$k0">
                    <ref role="3cqZAo" node="1_MDhe9c_F7" resolve="sourceChild" />
                  </node>
                  <node concept="liA8E" id="1_MDhe9c_FN" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getContainmentLink()" resolve="getContainmentLink" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1gVbGN" id="1_MDhe9c_FO" role="3cqZAp">
              <node concept="3y3z36" id="1_MDhe9c_FP" role="1gVkn0">
                <node concept="37vLTw" id="1_MDhe9c_FQ" role="3uHU7B">
                  <ref role="3cqZAo" node="1_MDhe9c_FJ" resolve="role" />
                </node>
                <node concept="10Nm6u" id="1_MDhe9c_FR" role="3uHU7w" />
              </node>
            </node>
            <node concept="3clFbF" id="1_MDhe9c_FS" role="3cqZAp">
              <node concept="2OqwBi" id="1_MDhe9c_FT" role="3clFbG">
                <node concept="37vLTw" id="1_MDhe9c_FU" role="2Oq$k0">
                  <ref role="3cqZAo" node="1_MDhe9c_E$" resolve="targetNode" />
                </node>
                <node concept="liA8E" id="1_MDhe9c_FV" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.addChild(org.jetbrains.mps.openapi.language.SContainmentLink,org.jetbrains.mps.openapi.model.SNode)" resolve="addChild" />
                  <node concept="37vLTw" id="1_MDhe9c_FW" role="37wK5m">
                    <ref role="3cqZAo" node="1_MDhe9c_FJ" resolve="role" />
                  </node>
                  <node concept="37vLTw" id="1_MDhe9c_FX" role="37wK5m">
                    <ref role="3cqZAo" node="1_MDhe9c_FC" resolve="targetChild" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1_MDhe9c_FY" role="3cqZAp">
          <node concept="37vLTw" id="1_MDhe9c_FZ" role="3cqZAk">
            <ref role="3cqZAo" node="1_MDhe9c_E$" resolve="targetNode" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1_MDhe9cmal" role="1B3o_S" />
      <node concept="37vLTG" id="1_MDhe9cnbk" role="3clF46">
        <property role="TrG5h" value="sourceNode" />
        <node concept="3uibUv" id="1_MDhe9cBOK" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1_MDhe9bvAN" role="jymVt" />
  </node>
  <node concept="312cEu" id="7pMXX1aJMfS">
    <property role="TrG5h" value="ModelImportsCheck" />
    <property role="1EXbeo" value="true" />
    <node concept="312cEg" id="7pMXX1aKGp2" role="jymVt">
      <property role="TrG5h" value="myProject" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7pMXX1aKGp3" role="1B3o_S" />
      <node concept="3uibUv" id="7pMXX1aKGp5" role="1tU5fm">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
    </node>
    <node concept="312cEg" id="7pMXX1aKJIr" role="jymVt">
      <property role="TrG5h" value="myModel" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7pMXX1aKJIs" role="1B3o_S" />
      <node concept="3uibUv" id="7pMXX1aKJIu" role="1tU5fm">
        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
      </node>
    </node>
    <node concept="312cEg" id="7pMXX1aM5UM" role="jymVt">
      <property role="TrG5h" value="myAdditionalLanguages" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7pMXX1aM5UN" role="1B3o_S" />
      <node concept="3uibUv" id="7pMXX1aKmMi" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="7pMXX1aKmMj" role="11_B2D">
          <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="7pMXX1aMbeN" role="jymVt">
      <property role="TrG5h" value="myAdditionalModels" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7pMXX1aMbeO" role="1B3o_S" />
      <node concept="3uibUv" id="7pMXX1aKmMp" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="7pMXX1aKmMq" role="11_B2D">
          <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7pMXX1aM59m" role="jymVt" />
    <node concept="2tJIrI" id="7pMXX1aKI4Q" role="jymVt" />
    <node concept="3clFbW" id="7pMXX1aJMxT" role="jymVt">
      <node concept="3cqZAl" id="7pMXX1aJMxV" role="3clF45" />
      <node concept="3Tm1VV" id="7pMXX1aJMxW" role="1B3o_S" />
      <node concept="3clFbS" id="7pMXX1aJMxX" role="3clF47">
        <node concept="3clFbF" id="7pMXX1aKGp6" role="3cqZAp">
          <node concept="37vLTI" id="7pMXX1aKGp8" role="3clFbG">
            <node concept="37vLTw" id="7pMXX1aKGpb" role="37vLTJ">
              <ref role="3cqZAo" node="7pMXX1aKGp2" resolve="myProject" />
            </node>
            <node concept="37vLTw" id="7pMXX1aKGpc" role="37vLTx">
              <ref role="3cqZAo" node="7pMXX1aJN0D" resolve="mpsProject" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7pMXX1aKJIv" role="3cqZAp">
          <node concept="37vLTI" id="7pMXX1aKJIx" role="3clFbG">
            <node concept="37vLTw" id="7pMXX1aKJI$" role="37vLTJ">
              <ref role="3cqZAo" node="7pMXX1aKJIr" resolve="myModel" />
            </node>
            <node concept="37vLTw" id="7pMXX1aKJI_" role="37vLTx">
              <ref role="3cqZAo" node="7pMXX1aJN2i" resolve="model" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7pMXX1aM1UK" role="3cqZAp">
          <node concept="37vLTI" id="7pMXX1aM1UM" role="3clFbG">
            <node concept="2ShNRf" id="7pMXX1aKmMk" role="37vLTx">
              <node concept="1pGfFk" id="7pMXX1aKmMl" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="7pMXX1aKmMm" role="1pMfVU">
                  <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="7pMXX1aM1UQ" role="37vLTJ">
              <ref role="3cqZAo" node="7pMXX1aM5UM" resolve="myAdditionalLanguages" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7pMXX1aM7gZ" role="3cqZAp">
          <node concept="37vLTI" id="7pMXX1aM7h1" role="3clFbG">
            <node concept="2ShNRf" id="7pMXX1aKmMr" role="37vLTx">
              <node concept="1pGfFk" id="7pMXX1aKmMs" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="7pMXX1aKmMt" role="1pMfVU">
                  <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="7pMXX1aM7h5" role="37vLTJ">
              <ref role="3cqZAo" node="7pMXX1aMbeN" resolve="myAdditionalModels" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7pMXX1aJN0D" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3uibUv" id="7pMXX1aJN0C" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="7pMXX1aJN2i" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="7pMXX1aJNk3" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7pMXX1aJRPD" role="jymVt" />
    <node concept="3clFb_" id="7pMXX1aJSzb" role="jymVt">
      <property role="TrG5h" value="checkSatisfied" />
      <node concept="37vLTG" id="7pMXX1aJSzR" role="3clF46">
        <property role="TrG5h" value="necessaryLanguages" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="7pMXX1aJSzS" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
          <node concept="3uibUv" id="7pMXX1aJSzT" role="11_B2D">
            <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7pMXX1aJSzU" role="3clF46">
        <property role="TrG5h" value="necessaryImports" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="7pMXX1aJSzV" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
          <node concept="3uibUv" id="7pMXX1aJSzW" role="11_B2D">
            <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="7pMXX1aJSze" role="3clF47">
        <node concept="3clFbH" id="7pMXX1aKEJN" role="3cqZAp" />
        <node concept="3cpWs8" id="7pMXX1aKmMF" role="3cqZAp">
          <node concept="3cpWsn" id="7pMXX1aKmMG" role="3cpWs9">
            <property role="TrG5h" value="langReg" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="7pMXX1aKmMH" role="1tU5fm">
              <ref role="3uigEE" to="vndm:~LanguageRegistry" resolve="LanguageRegistry" />
            </node>
            <node concept="2OqwBi" id="7pMXX1aKmMI" role="33vP2m">
              <node concept="37vLTw" id="7pMXX1aKmMJ" role="2Oq$k0">
                <ref role="3cqZAo" node="7pMXX1aKGp2" resolve="myProject" />
              </node>
              <node concept="liA8E" id="7pMXX1aKmMK" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getComponent(java.lang.Class)" resolve="getComponent" />
                <node concept="3VsKOn" id="7pMXX1aKmML" role="37wK5m">
                  <ref role="3VsUkX" to="vndm:~LanguageRegistry" resolve="LanguageRegistry" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7pMXX1aKmMM" role="3cqZAp">
          <node concept="3cpWsn" id="7pMXX1aKmMN" role="3cpWs9">
            <property role="TrG5h" value="allImportedModels" />
            <node concept="3uibUv" id="7pMXX1aKmMO" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="7pMXX1aKmMP" role="11_B2D">
                <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
              </node>
            </node>
            <node concept="2ShNRf" id="7pMXX1aKmMQ" role="33vP2m">
              <node concept="1pGfFk" id="7pMXX1aKmMR" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="7pMXX1aKmMS" role="1pMfVU">
                  <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7pMXX1aKmMT" role="3cqZAp">
          <node concept="3cpWsn" id="7pMXX1aKmMU" role="3cpWs9">
            <property role="TrG5h" value="mdr" />
            <node concept="3uibUv" id="7pMXX1aKmMV" role="1tU5fm">
              <ref role="3uigEE" to="w1kc:~ModelDependencyResolver" resolve="ModelDependencyResolver" />
            </node>
            <node concept="2ShNRf" id="7pMXX1aKmMW" role="33vP2m">
              <node concept="1pGfFk" id="7pMXX1aKmMX" role="2ShVmc">
                <ref role="37wK5l" to="w1kc:~ModelDependencyResolver.&lt;init&gt;(jetbrains.mps.smodel.language.LanguageRegistry,org.jetbrains.mps.openapi.module.SRepository)" resolve="ModelDependencyResolver" />
                <node concept="37vLTw" id="7pMXX1aKmMY" role="37wK5m">
                  <ref role="3cqZAo" node="7pMXX1aKmMG" resolve="langReg" />
                </node>
                <node concept="2OqwBi" id="7pMXX1aKmMZ" role="37wK5m">
                  <node concept="37vLTw" id="7pMXX1aKmN0" role="2Oq$k0">
                    <ref role="3cqZAo" node="7pMXX1aKGp2" resolve="myProject" />
                  </node>
                  <node concept="liA8E" id="7pMXX1aKmN1" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="7pMXX1aKmN2" role="3cqZAp">
          <node concept="1PaTwC" id="7pMXX1aKmN3" role="1aUNEU">
            <node concept="3oM_SD" id="7pMXX1aKmN4" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmN5" role="1PaTwD">
              <property role="3oM_SC" value="XXX" />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmN6" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmN7" role="1PaTwD">
              <property role="3oM_SC" value="fact," />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmN8" role="1PaTwD">
              <property role="3oM_SC" value="neither" />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmN9" role="1PaTwD">
              <property role="3oM_SC" value="old" />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmNa" role="1PaTwD">
              <property role="3oM_SC" value="allImportedModels" />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmNb" role="1PaTwD">
              <property role="3oM_SC" value="nor" />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmNc" role="1PaTwD">
              <property role="3oM_SC" value="MDR" />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmNd" role="1PaTwD">
              <property role="3oM_SC" value="give" />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmNe" role="1PaTwD">
              <property role="3oM_SC" value="us" />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmNf" role="1PaTwD">
              <property role="3oM_SC" value="implicit" />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmNg" role="1PaTwD">
              <property role="3oM_SC" value="imports," />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmNh" role="1PaTwD">
              <property role="3oM_SC" value="while" />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmNi" role="1PaTwD">
              <property role="3oM_SC" value="one" />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmNj" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmNk" role="1PaTwD">
              <property role="3oM_SC" value="necessaryImports" />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmNl" role="1PaTwD">
              <property role="3oM_SC" value="may" />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmNm" role="1PaTwD">
              <property role="3oM_SC" value="actually" />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmNn" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmNo" role="1PaTwD">
              <property role="3oM_SC" value="imported" />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmNp" role="1PaTwD">
              <property role="3oM_SC" value="already" />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmNq" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmNr" role="1PaTwD">
              <property role="3oM_SC" value="implicit" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="7pMXX1aKmNs" role="3cqZAp">
          <node concept="1PaTwC" id="7pMXX1aKmNt" role="1aUNEU">
            <node concept="3oM_SD" id="7pMXX1aKmNu" role="1PaTwD">
              <property role="3oM_SC" value="need" />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmNv" role="1PaTwD">
              <property role="3oM_SC" value="better" />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmNw" role="1PaTwD">
              <property role="3oM_SC" value="way" />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmNx" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmNy" role="1PaTwD">
              <property role="3oM_SC" value="deal" />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmNz" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmN$" role="1PaTwD">
              <property role="3oM_SC" value="implicit" />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmN_" role="1PaTwD">
              <property role="3oM_SC" value="imports." />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7pMXX1aKmNA" role="3cqZAp">
          <node concept="2OqwBi" id="7pMXX1aKmNB" role="1DdaDG">
            <node concept="37vLTw" id="7pMXX1aKmNC" role="2Oq$k0">
              <ref role="3cqZAo" node="7pMXX1aKmMU" resolve="mdr" />
            </node>
            <node concept="liA8E" id="7pMXX1aKmND" role="2OqNvi">
              <ref role="37wK5l" to="w1kc:~ModelDependencyResolver.directImports(org.jetbrains.mps.openapi.model.SModel)" resolve="directImports" />
              <node concept="37vLTw" id="7pMXX1aKmNE" role="37wK5m">
                <ref role="3cqZAo" node="7pMXX1aKJIr" resolve="myModel" />
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="7pMXX1aKmNF" role="1Duv9x">
            <property role="TrG5h" value="sm" />
            <node concept="3uibUv" id="7pMXX1aKmNG" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
            </node>
          </node>
          <node concept="3clFbS" id="7pMXX1aKmNH" role="2LFqv$">
            <node concept="3SKdUt" id="7pMXX1aKmNI" role="3cqZAp">
              <node concept="1PaTwC" id="7pMXX1aKmNJ" role="1aUNEU">
                <node concept="3oM_SD" id="7pMXX1aKmNK" role="1PaTwD">
                  <property role="3oM_SC" value="XXX" />
                </node>
                <node concept="3oM_SD" id="7pMXX1aKmNL" role="1PaTwD">
                  <property role="3oM_SC" value="could" />
                </node>
                <node concept="3oM_SD" id="7pMXX1aKmNM" role="1PaTwD">
                  <property role="3oM_SC" value="just" />
                </node>
                <node concept="3oM_SD" id="7pMXX1aKmNN" role="1PaTwD">
                  <property role="3oM_SC" value="add" />
                </node>
                <node concept="3oM_SD" id="7pMXX1aKmNO" role="1PaTwD">
                  <property role="3oM_SC" value="ModelImports.getImportedModels" />
                </node>
                <node concept="3oM_SD" id="7pMXX1aKmNP" role="1PaTwD">
                  <property role="3oM_SC" value="directly," />
                </node>
                <node concept="3oM_SD" id="7pMXX1aKmNQ" role="1PaTwD">
                  <property role="3oM_SC" value="no" />
                </node>
                <node concept="3oM_SD" id="7pMXX1aKmNR" role="1PaTwD">
                  <property role="3oM_SC" value="point" />
                </node>
                <node concept="3oM_SD" id="7pMXX1aKmNS" role="1PaTwD">
                  <property role="3oM_SC" value="in" />
                </node>
                <node concept="3oM_SD" id="7pMXX1aKmNT" role="1PaTwD">
                  <property role="3oM_SC" value="resolving" />
                </node>
                <node concept="3oM_SD" id="7pMXX1aKmNU" role="1PaTwD">
                  <property role="3oM_SC" value="them" />
                </node>
                <node concept="3oM_SD" id="7pMXX1aKmNV" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="7pMXX1aKmNW" role="1PaTwD">
                  <property role="3oM_SC" value="SModel." />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="7pMXX1aKmNX" role="3cqZAp">
              <node concept="1PaTwC" id="7pMXX1aKmNY" role="1aUNEU">
                <node concept="3oM_SD" id="7pMXX1aKmNZ" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="7pMXX1aKmO0" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="7pMXX1aKmO1" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="7pMXX1aKmO2" role="1PaTwD">
                  <property role="3oM_SC" value="however," />
                </node>
                <node concept="3oM_SD" id="7pMXX1aKmO3" role="1PaTwD">
                  <property role="3oM_SC" value="this" />
                </node>
                <node concept="3oM_SD" id="7pMXX1aKmO4" role="1PaTwD">
                  <property role="3oM_SC" value="mimics" />
                </node>
                <node concept="3oM_SD" id="7pMXX1aKmO5" role="1PaTwD">
                  <property role="3oM_SC" value="what" />
                </node>
                <node concept="3oM_SD" id="7pMXX1aKmO6" role="1PaTwD">
                  <property role="3oM_SC" value="SModelOperations.allImportedModels" />
                </node>
                <node concept="3oM_SD" id="7pMXX1aKmO7" role="1PaTwD">
                  <property role="3oM_SC" value="used" />
                </node>
                <node concept="3oM_SD" id="7pMXX1aKmO8" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="7pMXX1aKmO9" role="1PaTwD">
                  <property role="3oM_SC" value="do" />
                </node>
                <node concept="3oM_SD" id="7pMXX1aKmOa" role="1PaTwD">
                  <property role="3oM_SC" value="for" />
                </node>
                <node concept="3oM_SD" id="7pMXX1aKmOb" role="1PaTwD">
                  <property role="3oM_SC" value="years." />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7pMXX1aKmOc" role="3cqZAp">
              <node concept="2OqwBi" id="7pMXX1aKmOd" role="3clFbG">
                <node concept="37vLTw" id="7pMXX1aKmOe" role="2Oq$k0">
                  <ref role="3cqZAo" node="7pMXX1aKmMN" resolve="allImportedModels" />
                </node>
                <node concept="liA8E" id="7pMXX1aKmOf" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                  <node concept="2OqwBi" id="7pMXX1aKmOg" role="37wK5m">
                    <node concept="liA8E" id="7pMXX1aKmOh" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.getReference()" resolve="getReference" />
                    </node>
                    <node concept="37vLTw" id="7pMXX1aKmOi" role="2Oq$k0">
                      <ref role="3cqZAo" node="7pMXX1aKmNF" resolve="sm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="7pMXX1aKmOj" role="3cqZAp">
          <node concept="1PaTwC" id="7pMXX1aKmOk" role="1aUNEU">
            <node concept="3oM_SD" id="7pMXX1aKmOl" role="1PaTwD">
              <property role="3oM_SC" value="these" />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmOm" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmOn" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmOo" role="1PaTwD">
              <property role="3oM_SC" value="aforementioned" />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmOp" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmOq" role="1PaTwD">
              <property role="3oM_SC" value="'implicit=true'" />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmOr" role="1PaTwD">
              <property role="3oM_SC" value="imports," />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmOs" role="1PaTwD">
              <property role="3oM_SC" value="just" />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmOt" role="1PaTwD">
              <property role="3oM_SC" value="accessory" />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmOu" role="1PaTwD">
              <property role="3oM_SC" value="models" />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmOv" role="1PaTwD">
              <property role="3oM_SC" value="coming" />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmOw" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmOx" role="1PaTwD">
              <property role="3oM_SC" value="used" />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmOy" role="1PaTwD">
              <property role="3oM_SC" value="languages" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7pMXX1aKmOz" role="3cqZAp">
          <node concept="2OqwBi" id="7pMXX1aKmO$" role="1DdaDG">
            <node concept="37vLTw" id="7pMXX1aKmO_" role="2Oq$k0">
              <ref role="3cqZAo" node="7pMXX1aKmMU" resolve="mdr" />
            </node>
            <node concept="liA8E" id="7pMXX1aKmOA" role="2OqNvi">
              <ref role="37wK5l" to="w1kc:~ModelDependencyResolver.implicitImports(org.jetbrains.mps.openapi.model.SModel)" resolve="implicitImports" />
              <node concept="37vLTw" id="7pMXX1aKmOB" role="37wK5m">
                <ref role="3cqZAo" node="7pMXX1aKJIr" resolve="myModel" />
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="7pMXX1aKmOC" role="1Duv9x">
            <property role="TrG5h" value="sm" />
            <node concept="3uibUv" id="7pMXX1aKmOD" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
            </node>
          </node>
          <node concept="3clFbS" id="7pMXX1aKmOE" role="2LFqv$">
            <node concept="3clFbF" id="7pMXX1aKmOF" role="3cqZAp">
              <node concept="2OqwBi" id="7pMXX1aKmOG" role="3clFbG">
                <node concept="37vLTw" id="7pMXX1aKmOH" role="2Oq$k0">
                  <ref role="3cqZAo" node="7pMXX1aKmMN" resolve="allImportedModels" />
                </node>
                <node concept="liA8E" id="7pMXX1aKmOI" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                  <node concept="2OqwBi" id="7pMXX1aKmOJ" role="37wK5m">
                    <node concept="liA8E" id="7pMXX1aKmOK" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.getReference()" resolve="getReference" />
                    </node>
                    <node concept="37vLTw" id="7pMXX1aKmOL" role="2Oq$k0">
                      <ref role="3cqZAo" node="7pMXX1aKmOC" resolve="sm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7pMXX1aKmOM" role="3cqZAp" />
        <node concept="3SKdUt" id="7pMXX1aKmON" role="3cqZAp">
          <node concept="1PaTwC" id="7pMXX1aKmOO" role="1aUNEU">
            <node concept="3oM_SD" id="7pMXX1aKmOP" role="1PaTwD">
              <property role="3oM_SC" value="MDR" />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmOQ" role="1PaTwD">
              <property role="3oM_SC" value="doesn't" />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmOR" role="1PaTwD">
              <property role="3oM_SC" value="include" />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmOS" role="1PaTwD">
              <property role="3oM_SC" value="target" />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmOT" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmOU" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmOV" role="1PaTwD">
              <property role="3oM_SC" value="its" />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmOW" role="1PaTwD">
              <property role="3oM_SC" value="own" />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmOX" role="1PaTwD">
              <property role="3oM_SC" value="import;" />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmOY" role="1PaTwD">
              <property role="3oM_SC" value="denote" />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmOZ" role="1PaTwD">
              <property role="3oM_SC" value="imports" />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmP0" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmP1" role="1PaTwD">
              <property role="3oM_SC" value="self" />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmP2" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmP3" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="7pMXX1aKmP4" role="1PaTwD">
              <property role="3oM_SC" value="necessary" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7pMXX1aKmP5" role="3cqZAp">
          <node concept="2OqwBi" id="7pMXX1aKmP6" role="3clFbG">
            <node concept="37vLTw" id="7pMXX1aKmP7" role="2Oq$k0">
              <ref role="3cqZAo" node="7pMXX1aKmMN" resolve="allImportedModels" />
            </node>
            <node concept="liA8E" id="7pMXX1aKmP8" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
              <node concept="2OqwBi" id="7pMXX1aKmP9" role="37wK5m">
                <node concept="37vLTw" id="7pMXX1aKmPa" role="2Oq$k0">
                  <ref role="3cqZAo" node="7pMXX1aKJIr" resolve="myModel" />
                </node>
                <node concept="liA8E" id="7pMXX1aKmPb" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getReference()" resolve="getReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7pMXX1aKmPc" role="3cqZAp">
          <node concept="37vLTw" id="7pMXX1aKmPd" role="1DdaDG">
            <ref role="3cqZAo" node="7pMXX1aJSzU" resolve="necessaryImports" />
          </node>
          <node concept="3cpWsn" id="7pMXX1aKmPe" role="1Duv9x">
            <property role="TrG5h" value="modelReference" />
            <node concept="3uibUv" id="7pMXX1aKmPf" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
            </node>
          </node>
          <node concept="3clFbS" id="7pMXX1aKmPg" role="2LFqv$">
            <node concept="1gVbGN" id="7pMXX1aKmPh" role="3cqZAp">
              <node concept="3y3z36" id="7pMXX1aKmPi" role="1gVkn0">
                <node concept="37vLTw" id="7pMXX1aKmPj" role="3uHU7B">
                  <ref role="3cqZAo" node="7pMXX1aKmPe" resolve="modelReference" />
                </node>
                <node concept="10Nm6u" id="7pMXX1aKmPk" role="3uHU7w" />
              </node>
            </node>
            <node concept="3clFbJ" id="7pMXX1aKmPl" role="3cqZAp">
              <node concept="3fqX7Q" id="7pMXX1aKmPm" role="3clFbw">
                <node concept="2OqwBi" id="7pMXX1aKmPn" role="3fr31v">
                  <node concept="37vLTw" id="7pMXX1aKmPo" role="2Oq$k0">
                    <ref role="3cqZAo" node="7pMXX1aKmMN" resolve="allImportedModels" />
                  </node>
                  <node concept="liA8E" id="7pMXX1aKmPp" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.contains(java.lang.Object)" resolve="contains" />
                    <node concept="37vLTw" id="7pMXX1aKmPq" role="37wK5m">
                      <ref role="3cqZAo" node="7pMXX1aKmPe" resolve="modelReference" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="7pMXX1aKmPr" role="3clFbx">
                <node concept="3clFbF" id="7pMXX1aKmPs" role="3cqZAp">
                  <node concept="2OqwBi" id="7pMXX1aKmPt" role="3clFbG">
                    <node concept="37vLTw" id="7pMXX1aKmPu" role="2Oq$k0">
                      <ref role="3cqZAo" node="7pMXX1aMbeN" resolve="myAdditionalModels" />
                    </node>
                    <node concept="liA8E" id="7pMXX1aKmPv" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                      <node concept="37vLTw" id="7pMXX1aKmPw" role="37wK5m">
                        <ref role="3cqZAo" node="7pMXX1aKmPe" resolve="modelReference" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7pMXX1aKmPx" role="3cqZAp">
          <node concept="3cpWsn" id="7pMXX1aKmPy" role="3cpWs9">
            <property role="TrG5h" value="langHierarchy" />
            <node concept="3uibUv" id="7pMXX1aKmPz" role="1tU5fm">
              <ref role="3uigEE" to="w1kc:~SLanguageHierarchy" resolve="SLanguageHierarchy" />
            </node>
            <node concept="2ShNRf" id="7pMXX1aKmP$" role="33vP2m">
              <node concept="1pGfFk" id="7pMXX1aKmP_" role="2ShVmc">
                <ref role="37wK5l" to="w1kc:~SLanguageHierarchy.&lt;init&gt;(jetbrains.mps.smodel.language.LanguageRegistry,java.util.Collection)" resolve="SLanguageHierarchy" />
                <node concept="37vLTw" id="7pMXX1aKmPA" role="37wK5m">
                  <ref role="3cqZAo" node="7pMXX1aKmMG" resolve="langReg" />
                </node>
                <node concept="2OqwBi" id="7pMXX1aKmPB" role="37wK5m">
                  <node concept="37vLTw" id="7pMXX1aKmPC" role="2Oq$k0">
                    <ref role="3cqZAo" node="7pMXX1aKmMU" resolve="mdr" />
                  </node>
                  <node concept="liA8E" id="7pMXX1aKmPD" role="2OqNvi">
                    <ref role="37wK5l" to="w1kc:~ModelDependencyResolver.usedLanguages(org.jetbrains.mps.openapi.model.SModel)" resolve="usedLanguages" />
                    <node concept="37vLTw" id="7pMXX1aKmPE" role="37wK5m">
                      <ref role="3cqZAo" node="7pMXX1aKJIr" resolve="myModel" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7pMXX1aKmPF" role="3cqZAp">
          <node concept="3cpWsn" id="7pMXX1aKmPG" role="3cpWs9">
            <property role="TrG5h" value="allVisibleLanguages" />
            <node concept="3uibUv" id="7pMXX1aKmPH" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
              <node concept="3uibUv" id="7pMXX1aKmPI" role="11_B2D">
                <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
              </node>
            </node>
            <node concept="2OqwBi" id="7pMXX1aKmPJ" role="33vP2m">
              <node concept="37vLTw" id="7pMXX1aKmPK" role="2Oq$k0">
                <ref role="3cqZAo" node="7pMXX1aKmPy" resolve="langHierarchy" />
              </node>
              <node concept="liA8E" id="7pMXX1aKmPL" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~SLanguageHierarchy.getExtended()" resolve="getExtended" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7pMXX1aKmPM" role="3cqZAp">
          <node concept="2OqwBi" id="7pMXX1aKmPN" role="3clFbG">
            <node concept="37vLTw" id="7pMXX1aKmPO" role="2Oq$k0">
              <ref role="3cqZAo" node="7pMXX1aKmPG" resolve="allVisibleLanguages" />
            </node>
            <node concept="liA8E" id="7pMXX1aKmPP" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.addAll(java.util.Collection)" resolve="addAll" />
              <node concept="2OqwBi" id="7pMXX1aKmPQ" role="37wK5m">
                <node concept="37vLTw" id="7pMXX1aKmPR" role="2Oq$k0">
                  <ref role="3cqZAo" node="7pMXX1aKmPy" resolve="langHierarchy" />
                </node>
                <node concept="liA8E" id="7pMXX1aKmPS" role="2OqNvi">
                  <ref role="37wK5l" to="w1kc:~SLanguageHierarchy.getAggregated()" resolve="getAggregated" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7pMXX1aKmPT" role="3cqZAp">
          <node concept="37vLTw" id="7pMXX1aKmPU" role="1DdaDG">
            <ref role="3cqZAo" node="7pMXX1aJSzR" resolve="necessaryLanguages" />
          </node>
          <node concept="3cpWsn" id="7pMXX1aKmPV" role="1Duv9x">
            <property role="TrG5h" value="lang" />
            <node concept="3uibUv" id="7pMXX1aKmPW" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
            </node>
          </node>
          <node concept="3clFbS" id="7pMXX1aKmPX" role="2LFqv$">
            <node concept="3clFbJ" id="7pMXX1aKmPY" role="3cqZAp">
              <node concept="3fqX7Q" id="7pMXX1aKmPZ" role="3clFbw">
                <node concept="2OqwBi" id="7pMXX1aKmQ0" role="3fr31v">
                  <node concept="37vLTw" id="7pMXX1aKmQ1" role="2Oq$k0">
                    <ref role="3cqZAo" node="7pMXX1aKmPG" resolve="allVisibleLanguages" />
                  </node>
                  <node concept="liA8E" id="7pMXX1aKmQ2" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Set.contains(java.lang.Object)" resolve="contains" />
                    <node concept="37vLTw" id="7pMXX1aKmQ3" role="37wK5m">
                      <ref role="3cqZAo" node="7pMXX1aKmPV" resolve="lang" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="7pMXX1aKmQ4" role="3clFbx">
                <node concept="3clFbF" id="7pMXX1aKmQ5" role="3cqZAp">
                  <node concept="2OqwBi" id="7pMXX1aKmQ6" role="3clFbG">
                    <node concept="37vLTw" id="7pMXX1aKmQ7" role="2Oq$k0">
                      <ref role="3cqZAo" node="7pMXX1aM5UM" resolve="myAdditionalLanguages" />
                    </node>
                    <node concept="liA8E" id="7pMXX1aKmQ8" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                      <node concept="37vLTw" id="7pMXX1aKmQ9" role="37wK5m">
                        <ref role="3cqZAo" node="7pMXX1aKmPV" resolve="lang" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7pMXX1aMuQ7" role="3cqZAp">
          <node concept="1rXfSq" id="7pMXX1aYUy_" role="3cqZAk">
            <ref role="37wK5l" node="7pMXX1aYKG6" resolve="isSatisfied" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7pMXX1aJSgz" role="1B3o_S" />
      <node concept="10P_77" id="7pMXX1aJSws" role="3clF45" />
      <node concept="P$JXv" id="7pMXX1aKeRt" role="lGtFl">
        <node concept="x79VA" id="7pMXX1aKeRA" role="3nqlJM">
          <property role="x79VB" value="" />
          <node concept="1PaTwC" id="1E1X3WHsE1X" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHsE1Y" role="1PaTwD">
              <property role="3oM_SC" value="false" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsE1Z" role="1PaTwD">
              <property role="3oM_SC" value="when" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsE20" role="1PaTwD">
              <property role="3oM_SC" value="supplied" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsE21" role="1PaTwD">
              <property role="3oM_SC" value="languages/models" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsE22" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsE23" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsE24" role="1PaTwD">
              <property role="3oM_SC" value="visible/aavlable" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsE25" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsE26" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsE27" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsE11" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsE12" role="1PaTwD">
            <property role="3oM_SC" value="Tells" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE13" role="1PaTwD">
            <property role="3oM_SC" value="if" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE14" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE15" role="1PaTwD">
            <property role="3oM_SC" value="model" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE16" role="1PaTwD">
            <property role="3oM_SC" value="meets" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE17" role="1PaTwD">
            <property role="3oM_SC" value="used" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE18" role="1PaTwD">
            <property role="3oM_SC" value="languages" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE19" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE1a" role="1PaTwD">
            <property role="3oM_SC" value="model" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE1b" role="1PaTwD">
            <property role="3oM_SC" value="imports." />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE1c" role="1PaTwD">
            <property role="3oM_SC" value="When" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE1d" role="1PaTwD">
            <property role="3oM_SC" value="not," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE1e" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE1f" role="1PaTwD">
            <property role="3oM_SC" value="remedy" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE1g" role="1PaTwD">
            <property role="3oM_SC" value="with" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE1h" role="1PaTwD">
            <property role="3oM_SC" value="user" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE1i" role="1PaTwD">
            <property role="3oM_SC" value="interaction" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE1j" role="1PaTwD">
            <property role="3oM_SC" value="(#configuredDialog())" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE1k" role="1PaTwD">
            <property role="3oM_SC" value="or" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsE1l" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsE1m" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE1n" role="1PaTwD">
            <property role="3oM_SC" value="headless" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE1o" role="1PaTwD">
            <property role="3oM_SC" value="(TODO)" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE1p" role="1PaTwD">
            <property role="3oM_SC" value="alternative" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE1q" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE1r" role="1PaTwD">
            <property role="3oM_SC" value="possible." />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsE1s" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsE1t" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsE1u" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsE1v" role="1PaTwD">
            <property role="3oM_SC" value="Expects" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE1w" role="1PaTwD">
            <property role="3oM_SC" value="model" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE1x" role="1PaTwD">
            <property role="3oM_SC" value="read" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsE1y" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsE1z" role="1PaTwD">
            <property role="3oM_SC" value="If" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE1$" role="1PaTwD">
            <property role="3oM_SC" value="either" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE1_" role="1PaTwD">
            <property role="3oM_SC" value="collection" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE1A" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE1B" role="1PaTwD">
            <property role="3oM_SC" value="necessary" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE1C" role="1PaTwD">
            <property role="3oM_SC" value="elements" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE1D" role="1PaTwD">
            <property role="3oM_SC" value="contains" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE1E" role="1PaTwD">
            <property role="3oM_SC" value="duplicated," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE1F" role="1PaTwD">
            <property role="3oM_SC" value="they'd" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE1G" role="1PaTwD">
            <property role="3oM_SC" value="get" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE1H" role="1PaTwD">
            <property role="3oM_SC" value="manifested" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE1I" role="1PaTwD">
            <property role="3oM_SC" value="as" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE1J" role="1PaTwD">
            <property role="3oM_SC" value="duplicates" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE1K" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE1L" role="1PaTwD">
            <property role="3oM_SC" value="required" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE1M" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE1N" role="1PaTwD">
            <property role="3oM_SC" value="import" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsE1O" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsE1P" role="1PaTwD">
            <property role="3oM_SC" value="The" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE1Q" role="1PaTwD">
            <property role="3oM_SC" value="method" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE1R" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE1S" role="1PaTwD">
            <property role="3oM_SC" value="additive" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE1T" role="1PaTwD">
            <property role="3oM_SC" value="if" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE1U" role="1PaTwD">
            <property role="3oM_SC" value="invoked" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE1V" role="1PaTwD">
            <property role="3oM_SC" value="multiple" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE1W" role="1PaTwD">
            <property role="3oM_SC" value="times" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7pMXX1aYEDR" role="jymVt" />
    <node concept="3clFb_" id="7pMXX1aYKG6" role="jymVt">
      <property role="TrG5h" value="isSatisfied" />
      <node concept="3clFbS" id="7pMXX1aYKG9" role="3clF47">
        <node concept="3cpWs6" id="7pMXX1aYPch" role="3cqZAp">
          <node concept="1Wc70l" id="7pMXX1aMDZW" role="3cqZAk">
            <node concept="2OqwBi" id="7pMXX1aMI7I" role="3uHU7w">
              <node concept="37vLTw" id="7pMXX1aMFXl" role="2Oq$k0">
                <ref role="3cqZAo" node="7pMXX1aMbeN" resolve="myAdditionalModels" />
              </node>
              <node concept="liA8E" id="7pMXX1aMLBD" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.isEmpty()" resolve="isEmpty" />
              </node>
            </node>
            <node concept="2OqwBi" id="7pMXX1aMzHx" role="3uHU7B">
              <node concept="37vLTw" id="7pMXX1aMxCW" role="2Oq$k0">
                <ref role="3cqZAo" node="7pMXX1aM5UM" resolve="myAdditionalLanguages" />
              </node>
              <node concept="liA8E" id="7pMXX1aMAkT" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.isEmpty()" resolve="isEmpty" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7pMXX1aYIvG" role="1B3o_S" />
      <node concept="10P_77" id="7pMXX1aYKCT" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="7pMXX1aKfe6" role="jymVt" />
    <node concept="3clFb_" id="7pMXX1aKflg" role="jymVt">
      <property role="TrG5h" value="configuredDialog" />
      <node concept="3Tm1VV" id="7pMXX1aKflj" role="1B3o_S" />
      <node concept="3clFbS" id="7pMXX1aKflk" role="3clF47">
        <node concept="3clFbF" id="7pMXX1aNqEm" role="3cqZAp">
          <node concept="2ShNRf" id="1yqHBnusoc$" role="3clFbG">
            <node concept="1pGfFk" id="1yqHBnusoc_" role="2ShVmc">
              <ref role="37wK5l" node="5glnhittf4G" resolve="AddRequiredImportsDialog" />
              <node concept="37vLTw" id="5_gUK3iElX_" role="37wK5m">
                <ref role="3cqZAo" node="7pMXX1aKGp2" resolve="myProject" />
              </node>
              <node concept="2OqwBi" id="1yqHBnusocG" role="37wK5m">
                <node concept="liA8E" id="1yqHBnusocI" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.toArray(java.lang.Object[])" resolve="toArray" />
                  <node concept="2ShNRf" id="1yqHBnusocJ" role="37wK5m">
                    <node concept="3$_iS1" id="1yqHBnusocK" role="2ShVmc">
                      <node concept="3$GHV9" id="1yqHBnusocL" role="3$GQph">
                        <node concept="3cmrfG" id="7pMXX1aNyZI" role="3$I4v7">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                      <node concept="3uibUv" id="1yqHBnusvRq" role="3$_nBY">
                        <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="6X$LxHCKJvW" role="2Oq$k0">
                  <ref role="3cqZAo" node="7pMXX1aMbeN" resolve="myAdditionalModels" />
                </node>
              </node>
              <node concept="2OqwBi" id="1yqHBnusocQ" role="37wK5m">
                <node concept="37vLTw" id="6X$LxHCKIq5" role="2Oq$k0">
                  <ref role="3cqZAo" node="7pMXX1aM5UM" resolve="myAdditionalLanguages" />
                </node>
                <node concept="liA8E" id="1yqHBnusocS" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.toArray(java.lang.Object[])" resolve="toArray" />
                  <node concept="2ShNRf" id="1yqHBnusocT" role="37wK5m">
                    <node concept="3$_iS1" id="1yqHBnusocU" role="2ShVmc">
                      <node concept="3$GHV9" id="1yqHBnusocV" role="3$GQph">
                        <node concept="3cmrfG" id="7pMXX1aNDz6" role="3$I4v7">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                      <node concept="3uibUv" id="2qqFBg4NQYP" role="3$_nBY">
                        <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7pMXX1aKgj4" role="3clF45">
        <ref role="3uigEE" node="5glnhittf1y" resolve="AddRequiredImportsDialog" />
      </node>
    </node>
    <node concept="3Tm1VV" id="7pMXX1aJMfT" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="5glnhittf1y">
    <property role="TrG5h" value="AddRequiredImportsDialog" />
    <property role="2bfB8j" value="true" />
    <node concept="3Tm1VV" id="5glnhittf1z" role="1B3o_S" />
    <node concept="3uibUv" id="5glnhittf4a" role="1zkMxy">
      <ref role="3uigEE" to="jkm4:~DialogWrapper" resolve="DialogWrapper" />
    </node>
    <node concept="3UR2Jj" id="5glnhittfaT" role="lGtFl">
      <node concept="1PaTwC" id="1E1X3WHsDXu" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsDXv" role="1PaTwD">
          <property role="3oM_SC" value="evgeny," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDXw" role="1PaTwD">
          <property role="3oM_SC" value="11/15/11" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="5glnhittf4g" role="jymVt">
      <property role="TrG5h" value="myRequiredImports" />
      <property role="3TUv4t" value="true" />
      <node concept="10Q1$e" id="5glnhittf4j" role="1tU5fm">
        <node concept="3uibUv" id="5glnhittf4i" role="10Q1$1">
          <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
        </node>
      </node>
      <node concept="3Tm6S6" id="5glnhittf4k" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="5glnhittf4l" role="jymVt">
      <property role="TrG5h" value="myRequiredLanguages" />
      <property role="3TUv4t" value="true" />
      <node concept="10Q1$e" id="5glnhittf4o" role="1tU5fm">
        <node concept="3uibUv" id="5glnhittf4n" role="10Q1$1">
          <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
        </node>
      </node>
      <node concept="3Tm6S6" id="5glnhittf4p" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="7bYj6bADZ5L" role="jymVt">
      <property role="TrG5h" value="myModelIcons" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="7bYj6bADZ5N" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="3uibUv" id="7bYj6bADZ5O" role="11_B2D">
          <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
        </node>
        <node concept="3uibUv" id="7bYj6bADZ5P" role="11_B2D">
          <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
        </node>
      </node>
      <node concept="2ShNRf" id="7bYj6bADZ5U" role="33vP2m">
        <node concept="1pGfFk" id="7bYj6bADZ5Y" role="2ShVmc">
          <property role="373rjd" value="true" />
          <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
          <node concept="3uibUv" id="7bYj6bADZ5Z" role="1pMfVU">
            <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
          </node>
          <node concept="3uibUv" id="7bYj6bADZ60" role="1pMfVU">
            <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7bYj6bADZ5T" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="2QS3m7mK4GE" role="jymVt">
      <property role="TrG5h" value="myModelsList" />
      <node concept="3uibUv" id="2QS3m7mK4GG" role="1tU5fm">
        <ref role="3uigEE" to="lzb2:~CheckBoxList" resolve="CheckBoxList" />
        <node concept="3uibUv" id="2QS3m7mK4GH" role="11_B2D">
          <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
        </node>
      </node>
      <node concept="3Tm6S6" id="2QS3m7mK4GI" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="2QS3m7mG5EW" role="jymVt">
      <property role="TrG5h" value="myLanguagesList" />
      <node concept="3uibUv" id="2QS3m7mG5EY" role="1tU5fm">
        <ref role="3uigEE" to="lzb2:~CheckBoxList" resolve="CheckBoxList" />
        <node concept="3uibUv" id="2QS3m7mG5EZ" role="11_B2D">
          <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
        </node>
      </node>
      <node concept="3Tm6S6" id="2QS3m7mG5F0" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="5glnhittf4y" role="jymVt">
      <property role="TrG5h" value="mySelectedImports" />
      <node concept="10Q1$e" id="5glnhittf4_" role="1tU5fm">
        <node concept="3uibUv" id="5glnhittf4$" role="10Q1$1">
          <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
        </node>
      </node>
      <node concept="3Tm6S6" id="5glnhittf4A" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="5glnhittf4B" role="jymVt">
      <property role="TrG5h" value="mySelectedLanguages" />
      <node concept="10Q1$e" id="5glnhittf4E" role="1tU5fm">
        <node concept="3uibUv" id="5glnhittf4D" role="10Q1$1">
          <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
        </node>
      </node>
      <node concept="3Tm6S6" id="5glnhittf4F" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5glnhituVLg" role="jymVt" />
    <node concept="3clFbW" id="5glnhittf4G" role="jymVt">
      <node concept="3cqZAl" id="5glnhittf4H" role="3clF45" />
      <node concept="37vLTG" id="5glnhittf4I" role="3clF46">
        <property role="TrG5h" value="project" />
        <property role="3TUv4t" value="true" />
        <node concept="2AHcQZ" id="5glnhittf4J" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="5glnhittf4K" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="5glnhittf4L" role="3clF46">
        <property role="TrG5h" value="requiredImports" />
        <node concept="2AHcQZ" id="5glnhittf4M" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="10Q1$e" id="5glnhittf4O" role="1tU5fm">
          <node concept="3uibUv" id="5glnhittf4N" role="10Q1$1">
            <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5glnhittf4P" role="3clF46">
        <property role="TrG5h" value="requiredLanguages" />
        <node concept="2AHcQZ" id="5glnhittf4Q" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="10Q1$e" id="5glnhittf4S" role="1tU5fm">
          <node concept="3uibUv" id="5glnhittf4R" role="10Q1$1">
            <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="5glnhittf4T" role="3clF47">
        <node concept="XkiVB" id="5glnhittJIh" role="3cqZAp">
          <ref role="37wK5l" to="jkm4:~DialogWrapper.&lt;init&gt;(com.intellij.openapi.project.Project,boolean)" resolve="DialogWrapper" />
          <node concept="2YIFZM" id="5glnhittJIi" role="37wK5m">
            <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
            <ref role="37wK5l" to="alof:~ProjectHelper.toIdeaProject(jetbrains.mps.project.Project)" resolve="toIdeaProject" />
            <node concept="37vLTw" id="5glnhittJIj" role="37wK5m">
              <ref role="3cqZAo" node="5glnhittf4I" resolve="project" />
            </node>
          </node>
          <node concept="3clFbT" id="5glnhittJIl" role="37wK5m">
            <property role="3clFbU" value="true" />
          </node>
        </node>
        <node concept="3clFbF" id="5glnhittf4Y" role="3cqZAp">
          <node concept="37vLTI" id="5glnhittf4Z" role="3clFbG">
            <node concept="37vLTw" id="5glnhittf50" role="37vLTJ">
              <ref role="3cqZAo" node="5glnhittf4g" resolve="myRequiredImports" />
            </node>
            <node concept="37vLTw" id="5glnhittf51" role="37vLTx">
              <ref role="3cqZAo" node="5glnhittf4L" resolve="requiredImports" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5glnhittf52" role="3cqZAp">
          <node concept="37vLTI" id="5glnhittf53" role="3clFbG">
            <node concept="37vLTw" id="5glnhittf54" role="37vLTJ">
              <ref role="3cqZAo" node="5glnhittf4l" resolve="myRequiredLanguages" />
            </node>
            <node concept="37vLTw" id="5glnhittf55" role="37vLTx">
              <ref role="3cqZAo" node="5glnhittf4P" resolve="requiredLanguages" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="7bYj6bAJIQ8" role="3cqZAp">
          <node concept="1PaTwC" id="7bYj6bAJIQc" role="1aUNEU">
            <node concept="3oM_SD" id="7bYj6bAJIQe" role="1PaTwD">
              <property role="3oM_SC" value="icons" />
            </node>
            <node concept="3oM_SD" id="7bYj6bAJIQf" role="1PaTwD">
              <property role="3oM_SC" value="resolved" />
            </node>
            <node concept="3oM_SD" id="7bYj6bAJIQg" role="1PaTwD">
              <property role="3oM_SC" value="once" />
            </node>
            <node concept="3oM_SD" id="7bYj6bAJIQh" role="1PaTwD">
              <property role="3oM_SC" value="here" />
            </node>
            <node concept="3oM_SD" id="7bYj6bAJIQi" role="1PaTwD">
              <property role="3oM_SC" value="because" />
            </node>
            <node concept="3oM_SD" id="7bYj6bAJIQj" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="7bYj6bAJIQk" role="1PaTwD">
              <property role="3oM_SC" value="cell" />
            </node>
            <node concept="3oM_SD" id="7bYj6bAJIQl" role="1PaTwD">
              <property role="3oM_SC" value="renderer" />
            </node>
            <node concept="3oM_SD" id="7bYj6bAJIQm" role="1PaTwD">
              <property role="3oM_SC" value="must" />
            </node>
            <node concept="3oM_SD" id="7bYj6bAJIQn" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="7bYj6bAJIQo" role="1PaTwD">
              <property role="3oM_SC" value="open" />
            </node>
            <node concept="3oM_SD" id="7bYj6bAJIQp" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="7bYj6bAJIQq" role="1PaTwD">
              <property role="3oM_SC" value="read" />
            </node>
            <node concept="3oM_SD" id="7bYj6bAJIQr" role="1PaTwD">
              <property role="3oM_SC" value="action" />
            </node>
            <node concept="3oM_SD" id="7bYj6bAJIQs" role="1PaTwD">
              <property role="3oM_SC" value="per" />
            </node>
            <node concept="3oM_SD" id="7bYj6bAJIQt" role="1PaTwD">
              <property role="3oM_SC" value="paint" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7bYj6bAI__f" role="3cqZAp">
          <node concept="2OqwBi" id="7bYj6bAI_Fo" role="3clFbG">
            <node concept="2OqwBi" id="7bYj6bAI_AG" role="2Oq$k0">
              <node concept="37vLTw" id="7bYj6bAI_A1" role="2Oq$k0">
                <ref role="3cqZAo" node="5glnhittf4I" resolve="project" />
              </node>
              <node concept="liA8E" id="7bYj6bAI_AH" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="7bYj6bAI_Fp" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
              <node concept="2ShNRf" id="7bYj6bAI_Fq" role="37wK5m">
                <node concept="YeOm9" id="7bYj6bAI_Fr" role="2ShVmc">
                  <node concept="1Y3b0j" id="7bYj6bAI_Fs" role="YeSDq">
                    <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3clFb_" id="7bYj6bAI_Ft" role="jymVt">
                      <property role="TrG5h" value="run" />
                      <node concept="3clFbS" id="7bYj6bAI_Fu" role="3clF47">
                        <node concept="1DcWWT" id="7bYj6bAI_Fv" role="3cqZAp">
                          <node concept="37vLTw" id="7bYj6bAI_Fw" role="1DdaDG">
                            <ref role="3cqZAo" node="5glnhittf4g" resolve="myRequiredImports" />
                          </node>
                          <node concept="3cpWsn" id="7bYj6bAI_Fx" role="1Duv9x">
                            <property role="TrG5h" value="ref" />
                            <node concept="3uibUv" id="7bYj6bAI_Fy" role="1tU5fm">
                              <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="7bYj6bAI_Fz" role="2LFqv$">
                            <node concept="3cpWs8" id="7bYj6bAI_F$" role="3cqZAp">
                              <node concept="3cpWsn" id="7bYj6bAI_F_" role="3cpWs9">
                                <property role="TrG5h" value="model" />
                                <node concept="3uibUv" id="7bYj6bAI_FA" role="1tU5fm">
                                  <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                                </node>
                                <node concept="2OqwBi" id="7bYj6bAI_FB" role="33vP2m">
                                  <node concept="37vLTw" id="7bYj6bAI_FC" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7bYj6bAI_Fx" resolve="ref" />
                                  </node>
                                  <node concept="liA8E" id="7bYj6bAI_FD" role="2OqNvi">
                                    <ref role="37wK5l" to="mhbf:~SModelReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                                    <node concept="2OqwBi" id="7bYj6bAI_GM" role="37wK5m">
                                      <node concept="37vLTw" id="7bYj6bAI_G5" role="2Oq$k0">
                                        <ref role="3cqZAo" node="5glnhittf4I" resolve="project" />
                                      </node>
                                      <node concept="liA8E" id="7bYj6bAI_GN" role="2OqNvi">
                                        <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="7bYj6bAI_FF" role="3cqZAp">
                              <node concept="2OqwBi" id="7bYj6bAI_FG" role="3clFbG">
                                <node concept="37vLTw" id="7bYj6bAI_FH" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7bYj6bADZ5L" resolve="myModelIcons" />
                                </node>
                                <node concept="liA8E" id="7bYj6bAI_FI" role="2OqNvi">
                                  <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                                  <node concept="37vLTw" id="7bYj6bAI_FJ" role="37wK5m">
                                    <ref role="3cqZAo" node="7bYj6bAI_Fx" resolve="ref" />
                                  </node>
                                  <node concept="1eOMI4" id="7bYj6bAI_FK" role="37wK5m">
                                    <node concept="3K4zz7" id="7bYj6bAI_FL" role="1eOMHV">
                                      <node concept="3clFbC" id="7bYj6bAI_FM" role="3K4Cdx">
                                        <node concept="37vLTw" id="7bYj6bAI_FN" role="3uHU7B">
                                          <ref role="3cqZAo" node="7bYj6bAI_F_" resolve="model" />
                                        </node>
                                        <node concept="10Nm6u" id="7bYj6bAI_FO" role="3uHU7w" />
                                      </node>
                                      <node concept="10M0yZ" id="7bYj6bAI_Gc" role="3K4E3e">
                                        <ref role="1PxDUh" to="xnls:~IdeIcons" resolve="IdeIcons" />
                                        <ref role="3cqZAo" to="xnls:~IdeIcons.MODEL_ICON" resolve="MODEL_ICON" />
                                      </node>
                                      <node concept="2OqwBi" id="7bYj6bAJ65H" role="3K4GZi">
                                        <node concept="2YIFZM" id="7bYj6bAJ65K" role="2Oq$k0">
                                          <ref role="1Pybhc" to="sn11:192HKKPMXeL" resolve="GlobalIconManager" />
                                          <ref role="37wK5l" to="sn11:5UC$YgehaLf" resolve="getInstance" />
                                        </node>
                                        <node concept="liA8E" id="7bYj6bAJ65L" role="2OqNvi">
                                          <ref role="37wK5l" to="sn11:192HKKPOd$O" resolve="getIconFor" />
                                          <node concept="37vLTw" id="7bYj6bAJ65M" role="37wK5m">
                                            <ref role="3cqZAo" node="7bYj6bAI_F_" resolve="model" />
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
                      <node concept="3Tm1VV" id="7bYj6bAI_FT" role="1B3o_S" />
                      <node concept="3cqZAl" id="7bYj6bAI_FU" role="3clF45" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5glnhittf56" role="3cqZAp">
          <node concept="3clFbC" id="5glnhittf57" role="3clFbw">
            <node concept="2OqwBi" id="5glnhittIhc" role="3uHU7B">
              <node concept="37vLTw" id="5glnhittIhb" role="2Oq$k0">
                <ref role="3cqZAo" node="5glnhittf4L" resolve="requiredImports" />
              </node>
              <node concept="1Rwk04" id="5glnhitupxb" role="2OqNvi" />
            </node>
            <node concept="3cmrfG" id="5glnhittf59" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3clFbJ" id="5glnhittf5f" role="9aQIa">
            <node concept="3clFbC" id="5glnhittf5g" role="3clFbw">
              <node concept="2OqwBi" id="5glnhittIek" role="3uHU7B">
                <node concept="37vLTw" id="5glnhittIej" role="2Oq$k0">
                  <ref role="3cqZAo" node="5glnhittf4P" resolve="requiredLanguages" />
                </node>
                <node concept="1Rwk04" id="5glnhitupBL" role="2OqNvi" />
              </node>
              <node concept="3cmrfG" id="5glnhittf5i" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
            <node concept="9aQIb" id="5glnhittf5o" role="9aQIa">
              <node concept="3clFbS" id="5glnhittf5p" role="9aQI4">
                <node concept="3clFbF" id="5glnhittf5q" role="3cqZAp">
                  <node concept="1rXfSq" id="5glnhittf5r" role="3clFbG">
                    <ref role="37wK5l" to="jkm4:~DialogWrapper.setTitle(java.lang.String)" resolve="setTitle" />
                    <node concept="Xl_RD" id="5glnhittf5s" role="37wK5m">
                      <property role="Xl_RC" value="Select Models and Languages to Import" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="5glnhittf5k" role="3clFbx">
              <node concept="3clFbF" id="5glnhittf5l" role="3cqZAp">
                <node concept="1rXfSq" id="5glnhittf5m" role="3clFbG">
                  <ref role="37wK5l" to="jkm4:~DialogWrapper.setTitle(java.lang.String)" resolve="setTitle" />
                  <node concept="Xl_RD" id="5glnhittf5n" role="37wK5m">
                    <property role="Xl_RC" value="Select Models to Import" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="5glnhittf5b" role="3clFbx">
            <node concept="3clFbF" id="5glnhittf5c" role="3cqZAp">
              <node concept="1rXfSq" id="5glnhittf5d" role="3clFbG">
                <ref role="37wK5l" to="jkm4:~DialogWrapper.setTitle(java.lang.String)" resolve="setTitle" />
                <node concept="Xl_RD" id="5glnhittf5e" role="37wK5m">
                  <property role="Xl_RC" value="Select Languages to Import" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4dsWymyQyCz" role="3cqZAp">
          <node concept="1rXfSq" id="4dsWymyQyC$" role="3clFbG">
            <ref role="37wK5l" to="jkm4:~DialogWrapper.setOKButtonText(java.lang.String)" resolve="setOKButtonText" />
            <node concept="Xl_RD" id="4dsWymyQyC_" role="37wK5m">
              <property role="Xl_RC" value="Import" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4dsWymyQyCA" role="3cqZAp">
          <node concept="1rXfSq" id="4dsWymyQyCB" role="3clFbG">
            <ref role="37wK5l" to="jkm4:~DialogWrapper.setCancelButtonText(java.lang.String)" resolve="setCancelButtonText" />
            <node concept="Xl_RD" id="4dsWymyQyCC" role="37wK5m">
              <property role="Xl_RC" value="Don't Import" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5glnhittf5t" role="3cqZAp">
          <node concept="1rXfSq" id="5glnhittf5u" role="3clFbG">
            <ref role="37wK5l" to="jkm4:~DialogWrapper.init()" resolve="init" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5glnhittf5V" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5glnhitvcez" role="jymVt" />
    <node concept="3clFb_" id="2QS3m7mKgjN" role="jymVt">
      <property role="TrG5h" value="doOKAction" />
      <node concept="2AHcQZ" id="2QS3m7mKgjO" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="2QS3m7mKgjP" role="3clF47">
        <node concept="3cpWs8" id="2QS3m7mKgjR" role="3cqZAp">
          <node concept="3cpWsn" id="2QS3m7mKgjQ" role="3cpWs9">
            <property role="TrG5h" value="selectedImports" />
            <node concept="3uibUv" id="2QS3m7mKgjS" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="2QS3m7mKgjT" role="11_B2D">
                <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
              </node>
            </node>
            <node concept="2ShNRf" id="2QS3m7mKgll" role="33vP2m">
              <node concept="1pGfFk" id="2QS3m7mKglq" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="2QS3m7mKglr" role="1pMfVU">
                  <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2QS3m7mKgjW" role="3cqZAp">
          <node concept="3y3z36" id="2QS3m7mKgjX" role="3clFbw">
            <node concept="37vLTw" id="2QS3m7mKgjY" role="3uHU7B">
              <ref role="3cqZAo" node="2QS3m7mK4GE" resolve="myModelsList" />
            </node>
            <node concept="10Nm6u" id="2QS3m7mKgjZ" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="2QS3m7mKgk1" role="3clFbx">
            <node concept="1Dw8fO" id="2QS3m7mKgk2" role="3cqZAp">
              <node concept="3cpWsn" id="2QS3m7mKgk3" role="1Duv9x">
                <property role="TrG5h" value="i" />
                <node concept="10Oyi0" id="2QS3m7mKgk5" role="1tU5fm" />
                <node concept="3cmrfG" id="2QS3m7mKgk6" role="33vP2m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
              <node concept="3eOVzh" id="2QS3m7mKgk7" role="1Dwp0S">
                <node concept="37vLTw" id="2QS3m7mKgk8" role="3uHU7B">
                  <ref role="3cqZAo" node="2QS3m7mKgk3" resolve="i" />
                </node>
                <node concept="2OqwBi" id="2QS3m7mKgrO" role="3uHU7w">
                  <node concept="37vLTw" id="2QS3m7mKglt" role="2Oq$k0">
                    <ref role="3cqZAo" node="2QS3m7mK4GE" resolve="myModelsList" />
                  </node>
                  <node concept="liA8E" id="2QS3m7mKgrP" role="2OqNvi">
                    <ref role="37wK5l" to="qqrq:~JBList.getItemsCount()" resolve="getItemsCount" />
                  </node>
                </node>
              </node>
              <node concept="3uNrnE" id="2QS3m7mKgkb" role="1Dwrff">
                <node concept="37vLTw" id="2QS3m7mKgkc" role="2$L3a6">
                  <ref role="3cqZAo" node="2QS3m7mKgk3" resolve="i" />
                </node>
              </node>
              <node concept="3clFbS" id="2QS3m7mKgke" role="2LFqv$">
                <node concept="3clFbJ" id="2QS3m7mKgkf" role="3cqZAp">
                  <node concept="2OqwBi" id="2QS3m7mKgxv" role="3clFbw">
                    <node concept="37vLTw" id="2QS3m7mKglw" role="2Oq$k0">
                      <ref role="3cqZAo" node="2QS3m7mK4GE" resolve="myModelsList" />
                    </node>
                    <node concept="liA8E" id="2QS3m7mKgxw" role="2OqNvi">
                      <ref role="37wK5l" to="lzb2:~CheckBoxList.isItemSelected(int)" resolve="isItemSelected" />
                      <node concept="37vLTw" id="2QS3m7mKgxx" role="37wK5m">
                        <ref role="3cqZAo" node="2QS3m7mKgk3" resolve="i" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="2QS3m7mKgkj" role="3clFbx">
                    <node concept="3clFbF" id="2QS3m7mKgkk" role="3cqZAp">
                      <node concept="2OqwBi" id="2QS3m7mKgzO" role="3clFbG">
                        <node concept="37vLTw" id="2QS3m7mKgl$" role="2Oq$k0">
                          <ref role="3cqZAo" node="2QS3m7mKgjQ" resolve="selectedImports" />
                        </node>
                        <node concept="liA8E" id="2QS3m7mKgzP" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                          <node concept="2OqwBi" id="2QS3m7mKgW8" role="37wK5m">
                            <node concept="37vLTw" id="2QS3m7mKgQo" role="2Oq$k0">
                              <ref role="3cqZAo" node="2QS3m7mK4GE" resolve="myModelsList" />
                            </node>
                            <node concept="liA8E" id="2QS3m7mKgW9" role="2OqNvi">
                              <ref role="37wK5l" to="lzb2:~CheckBoxList.getItemAt(int)" resolve="getItemAt" />
                              <node concept="37vLTw" id="2QS3m7mKgWa" role="37wK5m">
                                <ref role="3cqZAo" node="2QS3m7mKgk3" resolve="i" />
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
        <node concept="3clFbF" id="2QS3m7mKgko" role="3cqZAp">
          <node concept="37vLTI" id="2QS3m7mKgkp" role="3clFbG">
            <node concept="37vLTw" id="2QS3m7mKgkq" role="37vLTJ">
              <ref role="3cqZAo" node="5glnhittf4y" resolve="mySelectedImports" />
            </node>
            <node concept="2OqwBi" id="2QS3m7mKgAa" role="37vLTx">
              <node concept="37vLTw" id="2QS3m7mKglD" role="2Oq$k0">
                <ref role="3cqZAo" node="2QS3m7mKgjQ" resolve="selectedImports" />
              </node>
              <node concept="liA8E" id="2QS3m7mKgAb" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.toArray(java.lang.Object[])" resolve="toArray" />
                <node concept="2ShNRf" id="2QS3m7mKgAc" role="37wK5m">
                  <node concept="3$_iS1" id="2QS3m7mKgAd" role="2ShVmc">
                    <node concept="3$GHV9" id="2QS3m7mKgAe" role="3$GQph">
                      <node concept="3cmrfG" id="2QS3m7mKgAf" role="3$I4v7">
                        <property role="3cmrfH" value="0" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="2QS3m7mKgAg" role="3$_nBY">
                      <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2QS3m7mKgky" role="3cqZAp">
          <node concept="3cpWsn" id="2QS3m7mKgkx" role="3cpWs9">
            <property role="TrG5h" value="selectedLanguages" />
            <node concept="3uibUv" id="2QS3m7mKgkz" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="2QS3m7mKgk$" role="11_B2D">
                <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
              </node>
            </node>
            <node concept="2ShNRf" id="2QS3m7mKglK" role="33vP2m">
              <node concept="1pGfFk" id="2QS3m7mKglP" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="2QS3m7mKglQ" role="1pMfVU">
                  <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2QS3m7mKgkB" role="3cqZAp">
          <node concept="3y3z36" id="2QS3m7mKgkC" role="3clFbw">
            <node concept="37vLTw" id="2QS3m7mKgkD" role="3uHU7B">
              <ref role="3cqZAo" node="2QS3m7mG5EW" resolve="myLanguagesList" />
            </node>
            <node concept="10Nm6u" id="2QS3m7mKgkE" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="2QS3m7mKgkG" role="3clFbx">
            <node concept="1Dw8fO" id="2QS3m7mKgkH" role="3cqZAp">
              <node concept="3cpWsn" id="2QS3m7mKgkI" role="1Duv9x">
                <property role="TrG5h" value="i" />
                <node concept="10Oyi0" id="2QS3m7mKgkK" role="1tU5fm" />
                <node concept="3cmrfG" id="2QS3m7mKgkL" role="33vP2m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
              <node concept="3eOVzh" id="2QS3m7mKgkM" role="1Dwp0S">
                <node concept="37vLTw" id="2QS3m7mKgkN" role="3uHU7B">
                  <ref role="3cqZAo" node="2QS3m7mKgkI" resolve="i" />
                </node>
                <node concept="2OqwBi" id="2QS3m7mKgFU" role="3uHU7w">
                  <node concept="37vLTw" id="2QS3m7mKglS" role="2Oq$k0">
                    <ref role="3cqZAo" node="2QS3m7mG5EW" resolve="myLanguagesList" />
                  </node>
                  <node concept="liA8E" id="2QS3m7mKgFV" role="2OqNvi">
                    <ref role="37wK5l" to="qqrq:~JBList.getItemsCount()" resolve="getItemsCount" />
                  </node>
                </node>
              </node>
              <node concept="3uNrnE" id="2QS3m7mKgkQ" role="1Dwrff">
                <node concept="37vLTw" id="2QS3m7mKgkR" role="2$L3a6">
                  <ref role="3cqZAo" node="2QS3m7mKgkI" resolve="i" />
                </node>
              </node>
              <node concept="3clFbS" id="2QS3m7mKgkT" role="2LFqv$">
                <node concept="3clFbJ" id="2QS3m7mKgkU" role="3cqZAp">
                  <node concept="2OqwBi" id="2QS3m7mKgL_" role="3clFbw">
                    <node concept="37vLTw" id="2QS3m7mKglV" role="2Oq$k0">
                      <ref role="3cqZAo" node="2QS3m7mG5EW" resolve="myLanguagesList" />
                    </node>
                    <node concept="liA8E" id="2QS3m7mKgLA" role="2OqNvi">
                      <ref role="37wK5l" to="lzb2:~CheckBoxList.isItemSelected(int)" resolve="isItemSelected" />
                      <node concept="37vLTw" id="2QS3m7mKgLB" role="37wK5m">
                        <ref role="3cqZAo" node="2QS3m7mKgkI" resolve="i" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="2QS3m7mKgkY" role="3clFbx">
                    <node concept="3clFbF" id="2QS3m7mKgkZ" role="3cqZAp">
                      <node concept="2OqwBi" id="2QS3m7mKgNU" role="3clFbG">
                        <node concept="37vLTw" id="2QS3m7mKglZ" role="2Oq$k0">
                          <ref role="3cqZAo" node="2QS3m7mKgkx" resolve="selectedLanguages" />
                        </node>
                        <node concept="liA8E" id="2QS3m7mKgNV" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                          <node concept="2OqwBi" id="2QS3m7mKh1O" role="37wK5m">
                            <node concept="37vLTw" id="2QS3m7mKgQs" role="2Oq$k0">
                              <ref role="3cqZAo" node="2QS3m7mG5EW" resolve="myLanguagesList" />
                            </node>
                            <node concept="liA8E" id="2QS3m7mKh1P" role="2OqNvi">
                              <ref role="37wK5l" to="lzb2:~CheckBoxList.getItemAt(int)" resolve="getItemAt" />
                              <node concept="37vLTw" id="2QS3m7mKh1Q" role="37wK5m">
                                <ref role="3cqZAo" node="2QS3m7mKgkI" resolve="i" />
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
        <node concept="3clFbF" id="2QS3m7mKgl3" role="3cqZAp">
          <node concept="37vLTI" id="2QS3m7mKgl4" role="3clFbG">
            <node concept="37vLTw" id="2QS3m7mKgl5" role="37vLTJ">
              <ref role="3cqZAo" node="5glnhittf4B" resolve="mySelectedLanguages" />
            </node>
            <node concept="2OqwBi" id="2QS3m7mKgQg" role="37vLTx">
              <node concept="37vLTw" id="2QS3m7mKgm4" role="2Oq$k0">
                <ref role="3cqZAo" node="2QS3m7mKgkx" resolve="selectedLanguages" />
              </node>
              <node concept="liA8E" id="2QS3m7mKgQh" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.toArray(java.lang.Object[])" resolve="toArray" />
                <node concept="2ShNRf" id="2QS3m7mKgQi" role="37wK5m">
                  <node concept="3$_iS1" id="2QS3m7mKgQj" role="2ShVmc">
                    <node concept="3$GHV9" id="2QS3m7mKgQk" role="3$GQph">
                      <node concept="3cmrfG" id="2QS3m7mKgQl" role="3$I4v7">
                        <property role="3cmrfH" value="0" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="2QS3m7mKgQm" role="3$_nBY">
                      <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2QS3m7mKglc" role="3cqZAp">
          <node concept="3nyPlj" id="2QS3m7mKgld" role="3clFbG">
            <ref role="37wK5l" to="jkm4:~DialogWrapper.doOKAction()" resolve="doOKAction" />
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="2QS3m7mKgle" role="1B3o_S" />
      <node concept="3cqZAl" id="2QS3m7mKglf" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="5glnhitvelY" role="jymVt" />
    <node concept="3clFb_" id="3sWSLWMv11A" role="jymVt">
      <property role="TrG5h" value="createCenterPanel" />
      <node concept="2AHcQZ" id="3sWSLWMv11B" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="3sWSLWMv11C" role="3clF47">
        <node concept="3cpWs8" id="3sWSLWMv11E" role="3cqZAp">
          <node concept="3cpWsn" id="3sWSLWMv11D" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="panel" />
            <node concept="3uibUv" id="3sWSLWMv11F" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
            </node>
            <node concept="2ShNRf" id="3sWSLWMva4R" role="33vP2m">
              <node concept="1pGfFk" id="3sWSLWMva5h" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;(java.awt.LayoutManager)" resolve="JPanel" />
                <node concept="2ShNRf" id="3sWSLWMvaBN" role="37wK5m">
                  <node concept="1pGfFk" id="3sWSLWMvaBQ" role="2ShVmc">
                    <ref role="37wK5l" to="z60i:~BorderLayout.&lt;init&gt;()" resolve="BorderLayout" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3sWSLWMv11J" role="3cqZAp">
          <node concept="3cpWsn" id="3sWSLWMv11I" role="3cpWs9">
            <property role="TrG5h" value="message" />
            <node concept="3uibUv" id="3sWSLWMv11K" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JTextArea" resolve="JTextArea" />
            </node>
            <node concept="2ShNRf" id="3sWSLWMva5j" role="33vP2m">
              <node concept="1pGfFk" id="3sWSLWMvahl" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JTextArea.&lt;init&gt;(java.lang.String)" resolve="JTextArea" />
                <node concept="Xl_RD" id="3sWSLWMvahm" role="37wK5m">
                  <property role="Xl_RC" value="The pasted fragment requires model imports and languages that are not accessible in the new context." />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3sWSLWMv11N" role="3cqZAp">
          <node concept="2OqwBi" id="3sWSLWMvaC0" role="3clFbG">
            <node concept="37vLTw" id="3sWSLWMvahq" role="2Oq$k0">
              <ref role="3cqZAo" node="3sWSLWMv11I" resolve="message" />
            </node>
            <node concept="liA8E" id="3sWSLWMvaC1" role="2OqNvi">
              <ref role="37wK5l" to="r791:~JTextComponent.setEditable(boolean)" resolve="setEditable" />
              <node concept="3clFbT" id="3sWSLWMvaC2" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3sWSLWMv11Q" role="3cqZAp">
          <node concept="2OqwBi" id="3sWSLWMvaCc" role="3clFbG">
            <node concept="37vLTw" id="3sWSLWMvahw" role="2Oq$k0">
              <ref role="3cqZAo" node="3sWSLWMv11I" resolve="message" />
            </node>
            <node concept="liA8E" id="3sWSLWMvaCd" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Component.setFocusable(boolean)" resolve="setFocusable" />
              <node concept="3clFbT" id="3sWSLWMvaCe" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3sWSLWMv11T" role="3cqZAp">
          <node concept="2OqwBi" id="3sWSLWMvaCo" role="3clFbG">
            <node concept="37vLTw" id="3sWSLWMvahA" role="2Oq$k0">
              <ref role="3cqZAo" node="3sWSLWMv11I" resolve="message" />
            </node>
            <node concept="liA8E" id="3sWSLWMvaCp" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setOpaque(boolean)" resolve="setOpaque" />
              <node concept="3clFbT" id="3sWSLWMvaCq" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3sWSLWMv11W" role="3cqZAp">
          <node concept="2OqwBi" id="3sWSLWMvaC$" role="3clFbG">
            <node concept="37vLTw" id="3sWSLWMvahG" role="2Oq$k0">
              <ref role="3cqZAo" node="3sWSLWMv11I" resolve="message" />
            </node>
            <node concept="liA8E" id="3sWSLWMvaC_" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JTextArea.setFont(java.awt.Font)" resolve="setFont" />
              <node concept="2YIFZM" id="3sWSLWMviD7" role="37wK5m">
                <ref role="1Pybhc" to="g1qu:~StartupUiUtil" resolve="StartupUiUtil" />
                <ref role="37wK5l" to="g1qu:~StartupUiUtil.getLabelFont()" resolve="getLabelFont" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3sWSLWMv11Z" role="3cqZAp">
          <node concept="2OqwBi" id="3sWSLWMvaCK" role="3clFbG">
            <node concept="37vLTw" id="3sWSLWMvahM" role="2Oq$k0">
              <ref role="3cqZAo" node="3sWSLWMv11I" resolve="message" />
            </node>
            <node concept="liA8E" id="3sWSLWMvaCL" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JTextArea.setLineWrap(boolean)" resolve="setLineWrap" />
              <node concept="3clFbT" id="3sWSLWMvaCM" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3sWSLWMv122" role="3cqZAp">
          <node concept="2OqwBi" id="3sWSLWMvaCW" role="3clFbG">
            <node concept="37vLTw" id="3sWSLWMvahS" role="2Oq$k0">
              <ref role="3cqZAo" node="3sWSLWMv11I" resolve="message" />
            </node>
            <node concept="liA8E" id="3sWSLWMvaCX" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JTextArea.setWrapStyleWord(boolean)" resolve="setWrapStyleWord" />
              <node concept="3clFbT" id="3sWSLWMvaCY" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="3sWSLWMv15n" role="3cqZAp">
          <node concept="1PaTwC" id="3sWSLWMv15o" role="1aUNEU">
            <node concept="3oM_SD" id="3sWSLWMv15q" role="1PaTwD">
              <property role="3oM_SC" value="wrapping" />
            </node>
            <node concept="3oM_SD" id="3sWSLWMv15r" role="1PaTwD">
              <property role="3oM_SC" value="alone" />
            </node>
            <node concept="3oM_SD" id="3sWSLWMv15s" role="1PaTwD">
              <property role="3oM_SC" value="leaves" />
            </node>
            <node concept="3oM_SD" id="3sWSLWMv15t" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="3sWSLWMv15u" role="1PaTwD">
              <property role="3oM_SC" value="preferred" />
            </node>
            <node concept="3oM_SD" id="3sWSLWMv15v" role="1PaTwD">
              <property role="3oM_SC" value="height" />
            </node>
            <node concept="3oM_SD" id="3sWSLWMv15w" role="1PaTwD">
              <property role="3oM_SC" value="at" />
            </node>
            <node concept="3oM_SD" id="3sWSLWMv15x" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="3sWSLWMv15y" role="1PaTwD">
              <property role="3oM_SC" value="single" />
            </node>
            <node concept="3oM_SD" id="3sWSLWMv15z" role="1PaTwD">
              <property role="3oM_SC" value="row" />
            </node>
            <node concept="3oM_SD" id="3sWSLWMv15$" role="1PaTwD">
              <property role="3oM_SC" value="until" />
            </node>
            <node concept="3oM_SD" id="3sWSLWMv15_" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="3sWSLWMv15A" role="1PaTwD">
              <property role="3oM_SC" value="first" />
            </node>
            <node concept="3oM_SD" id="3sWSLWMv15B" role="1PaTwD">
              <property role="3oM_SC" value="re-layout" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3sWSLWMv125" role="3cqZAp">
          <node concept="2OqwBi" id="3sWSLWMvaD8" role="3clFbG">
            <node concept="37vLTw" id="3sWSLWMvahY" role="2Oq$k0">
              <ref role="3cqZAo" node="3sWSLWMv11I" resolve="message" />
            </node>
            <node concept="liA8E" id="3sWSLWMvaD9" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JTextArea.setRows(int)" resolve="setRows" />
              <node concept="3cmrfG" id="3sWSLWMvaDa" role="37wK5m">
                <property role="3cmrfH" value="2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3sWSLWMv128" role="3cqZAp">
          <node concept="2OqwBi" id="3sWSLWMvaDk" role="3clFbG">
            <node concept="37vLTw" id="3sWSLWMvai4" role="2Oq$k0">
              <ref role="3cqZAo" node="3sWSLWMv11I" resolve="message" />
            </node>
            <node concept="liA8E" id="3sWSLWMvaDl" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setBorder(javax.swing.border.Border)" resolve="setBorder" />
              <node concept="2YIFZM" id="3sWSLWMviDb" role="37wK5m">
                <ref role="1Pybhc" to="g1qu:~JBUI$Borders" resolve="JBUI.Borders" />
                <ref role="37wK5l" to="g1qu:~JBUI$Borders.empty(int,int,int,int)" resolve="empty" />
                <node concept="3cmrfG" id="3sWSLWMviDc" role="37wK5m">
                  <property role="3cmrfH" value="5" />
                </node>
                <node concept="3cmrfG" id="3sWSLWMviDd" role="37wK5m">
                  <property role="3cmrfH" value="5" />
                </node>
                <node concept="3cmrfG" id="3sWSLWMviDe" role="37wK5m">
                  <property role="3cmrfH" value="10" />
                </node>
                <node concept="3cmrfG" id="3sWSLWMviDf" role="37wK5m">
                  <property role="3cmrfH" value="5" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3sWSLWMv12f" role="3cqZAp">
          <node concept="2OqwBi" id="3sWSLWMvaD$" role="3clFbG">
            <node concept="37vLTw" id="3sWSLWMvaie" role="2Oq$k0">
              <ref role="3cqZAo" node="3sWSLWMv11D" resolve="panel" />
            </node>
            <node concept="liA8E" id="3sWSLWMvaD_" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
              <node concept="37vLTw" id="3sWSLWMvaDA" role="37wK5m">
                <ref role="3cqZAo" node="3sWSLWMv11I" resolve="message" />
              </node>
              <node concept="10M0yZ" id="3sWSLWMviDj" role="37wK5m">
                <ref role="1PxDUh" to="z60i:~BorderLayout" resolve="BorderLayout" />
                <ref role="3cqZAo" to="z60i:~BorderLayout.NORTH" resolve="NORTH" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3sWSLWMv12k" role="3cqZAp">
          <node concept="3cpWsn" id="3sWSLWMv12j" role="3cpWs9">
            <property role="TrG5h" value="modelsPanel" />
            <node concept="3uibUv" id="3sWSLWMv12l" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
            </node>
            <node concept="10Nm6u" id="3sWSLWMv12m" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbJ" id="3sWSLWMv12n" role="3cqZAp">
          <node concept="3eOSWO" id="3sWSLWMv12o" role="3clFbw">
            <node concept="2OqwBi" id="3sWSLWMvaim" role="3uHU7B">
              <node concept="37vLTw" id="3sWSLWMvail" role="2Oq$k0">
                <ref role="3cqZAo" node="5glnhittf4g" resolve="myRequiredImports" />
              </node>
              <node concept="1Rwk04" id="3sWSLWMvj0I" role="2OqNvi" />
            </node>
            <node concept="3cmrfG" id="3sWSLWMv12q" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3clFbS" id="3sWSLWMv12s" role="3clFbx">
            <node concept="3clFbF" id="3sWSLWMv12t" role="3cqZAp">
              <node concept="37vLTI" id="3sWSLWMv12u" role="3clFbG">
                <node concept="37vLTw" id="3sWSLWMv12v" role="37vLTJ">
                  <ref role="3cqZAo" node="2QS3m7mK4GE" resolve="myModelsList" />
                </node>
                <node concept="2ShNRf" id="3sWSLWMv12w" role="37vLTx">
                  <node concept="YeOm9" id="3sWSLWMv12x" role="2ShVmc">
                    <node concept="1Y3b0j" id="3sWSLWMv12y" role="YeSDq">
                      <ref role="1Y3XeK" to="lzb2:~CheckBoxList" resolve="CheckBoxList" />
                      <ref role="37wK5l" to="lzb2:~CheckBoxList.&lt;init&gt;()" resolve="CheckBoxList" />
                      <node concept="3clFb_" id="3sWSLWMv12z" role="jymVt">
                        <property role="TrG5h" value="adjustRendering" />
                        <node concept="2AHcQZ" id="3sWSLWMv12$" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                        <node concept="37vLTG" id="3sWSLWMv12_" role="3clF46">
                          <property role="TrG5h" value="rootComponent" />
                          <node concept="3uibUv" id="3sWSLWMv12A" role="1tU5fm">
                            <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
                          </node>
                        </node>
                        <node concept="37vLTG" id="3sWSLWMv12B" role="3clF46">
                          <property role="TrG5h" value="checkBox" />
                          <node concept="3uibUv" id="3sWSLWMv12C" role="1tU5fm">
                            <ref role="3uigEE" to="dxuu:~JCheckBox" resolve="JCheckBox" />
                          </node>
                        </node>
                        <node concept="37vLTG" id="3sWSLWMv12D" role="3clF46">
                          <property role="TrG5h" value="index" />
                          <node concept="10Oyi0" id="3sWSLWMv12E" role="1tU5fm" />
                        </node>
                        <node concept="37vLTG" id="3sWSLWMv12F" role="3clF46">
                          <property role="TrG5h" value="selected" />
                          <node concept="10P_77" id="3sWSLWMv12G" role="1tU5fm" />
                        </node>
                        <node concept="37vLTG" id="3sWSLWMv12H" role="3clF46">
                          <property role="TrG5h" value="hasFocus" />
                          <node concept="10P_77" id="3sWSLWMv12I" role="1tU5fm" />
                        </node>
                        <node concept="3clFbS" id="3sWSLWMv12J" role="3clF47">
                          <node concept="3cpWs6" id="3sWSLWMv12K" role="3cqZAp">
                            <node concept="1rXfSq" id="3sWSLWMv12L" role="3cqZAk">
                              <ref role="37wK5l" node="4dN2CWEA6L9" resolve="renderRow" />
                              <node concept="37vLTw" id="3sWSLWMv12M" role="37wK5m">
                                <ref role="3cqZAo" node="3sWSLWMv12B" resolve="checkBox" />
                              </node>
                              <node concept="2OqwBi" id="7bYj6bAJhpM" role="37wK5m">
                                <node concept="37vLTw" id="7bYj6bAJhbh" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7bYj6bADZ5L" resolve="myModelIcons" />
                                </node>
                                <node concept="liA8E" id="7bYj6bAJhpN" role="2OqNvi">
                                  <ref role="37wK5l" to="33ny:~Map.getOrDefault(java.lang.Object,java.lang.Object)" resolve="getOrDefault" />
                                  <node concept="1rXfSq" id="7bYj6bAJhpO" role="37wK5m">
                                    <ref role="37wK5l" to="lzb2:~CheckBoxList.getItemAt(int)" resolve="getItemAt" />
                                    <node concept="37vLTw" id="7bYj6bAJhpP" role="37wK5m">
                                      <ref role="3cqZAo" node="3sWSLWMv12D" resolve="index" />
                                    </node>
                                  </node>
                                  <node concept="10M0yZ" id="7bYj6bAJhuY" role="37wK5m">
                                    <ref role="1PxDUh" to="xnls:~IdeIcons" resolve="IdeIcons" />
                                    <ref role="3cqZAo" to="xnls:~IdeIcons.MODEL_ICON" resolve="MODEL_ICON" />
                                  </node>
                                </node>
                              </node>
                              <node concept="1rXfSq" id="3sWSLWMv12O" role="37wK5m">
                                <ref role="37wK5l" node="4dN2CWE_oBF" resolve="presentation" />
                                <node concept="1rXfSq" id="3sWSLWMv12P" role="37wK5m">
                                  <ref role="37wK5l" to="lzb2:~CheckBoxList.getItemAt(int)" resolve="getItemAt" />
                                  <node concept="37vLTw" id="3sWSLWMv12Q" role="37wK5m">
                                    <ref role="3cqZAo" node="3sWSLWMv12D" resolve="index" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3Tmbuc" id="3sWSLWMv12R" role="1B3o_S" />
                        <node concept="3uibUv" id="3sWSLWMv12S" role="3clF45">
                          <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
                        </node>
                      </node>
                      <node concept="3uibUv" id="3sWSLWMv12T" role="2Ghqu4">
                        <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="3sWSLWMv12U" role="3cqZAp">
              <node concept="37vLTw" id="3sWSLWMv136" role="1DdaDG">
                <ref role="3cqZAo" node="5glnhittf4g" resolve="myRequiredImports" />
              </node>
              <node concept="3cpWsn" id="3sWSLWMv133" role="1Duv9x">
                <property role="TrG5h" value="ref" />
                <node concept="3uibUv" id="3sWSLWMv135" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
                </node>
              </node>
              <node concept="3clFbS" id="3sWSLWMv12W" role="2LFqv$">
                <node concept="3clFbF" id="3sWSLWMv12X" role="3cqZAp">
                  <node concept="2OqwBi" id="3sWSLWMvaJl" role="3clFbG">
                    <node concept="37vLTw" id="3sWSLWMvanz" role="2Oq$k0">
                      <ref role="3cqZAo" node="2QS3m7mK4GE" resolve="myModelsList" />
                    </node>
                    <node concept="liA8E" id="3sWSLWMvaJm" role="2OqNvi">
                      <ref role="37wK5l" to="lzb2:~CheckBoxList.addItem(java.lang.Object,java.lang.String,boolean)" resolve="addItem" />
                      <node concept="37vLTw" id="3sWSLWMvaJn" role="37wK5m">
                        <ref role="3cqZAo" node="3sWSLWMv133" resolve="ref" />
                      </node>
                      <node concept="1rXfSq" id="3sWSLWMvaJo" role="37wK5m">
                        <ref role="37wK5l" node="4dN2CWE_oBF" resolve="presentation" />
                        <node concept="37vLTw" id="3sWSLWMvaJp" role="37wK5m">
                          <ref role="3cqZAo" node="3sWSLWMv133" resolve="ref" />
                        </node>
                      </node>
                      <node concept="3clFbT" id="3sWSLWMvaJq" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3sWSLWMv137" role="3cqZAp">
              <node concept="37vLTI" id="3sWSLWMv138" role="3clFbG">
                <node concept="37vLTw" id="3sWSLWMv139" role="37vLTJ">
                  <ref role="3cqZAo" node="3sWSLWMv12j" resolve="modelsPanel" />
                </node>
                <node concept="1rXfSq" id="3sWSLWMv13a" role="37vLTx">
                  <ref role="37wK5l" node="4dN2CWECdIl" resolve="createListPanel" />
                  <node concept="Xl_RD" id="3sWSLWMv13b" role="37wK5m">
                    <property role="Xl_RC" value="Models" />
                  </node>
                  <node concept="37vLTw" id="3sWSLWMv13c" role="37wK5m">
                    <ref role="3cqZAo" node="2QS3m7mK4GE" resolve="myModelsList" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3sWSLWMv13e" role="3cqZAp">
          <node concept="3cpWsn" id="3sWSLWMv13d" role="3cpWs9">
            <property role="TrG5h" value="languagesPanel" />
            <node concept="3uibUv" id="3sWSLWMv13f" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
            </node>
            <node concept="10Nm6u" id="3sWSLWMv13g" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbJ" id="3sWSLWMv13h" role="3cqZAp">
          <node concept="3eOSWO" id="3sWSLWMv13i" role="3clFbw">
            <node concept="2OqwBi" id="3sWSLWMvanH" role="3uHU7B">
              <node concept="37vLTw" id="3sWSLWMvanG" role="2Oq$k0">
                <ref role="3cqZAo" node="5glnhittf4l" resolve="myRequiredLanguages" />
              </node>
              <node concept="1Rwk04" id="3sWSLWMvj0J" role="2OqNvi" />
            </node>
            <node concept="3cmrfG" id="3sWSLWMv13k" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3clFbS" id="3sWSLWMv13m" role="3clFbx">
            <node concept="3clFbF" id="3sWSLWMv13n" role="3cqZAp">
              <node concept="37vLTI" id="3sWSLWMv13o" role="3clFbG">
                <node concept="37vLTw" id="3sWSLWMv13p" role="37vLTJ">
                  <ref role="3cqZAo" node="2QS3m7mG5EW" resolve="myLanguagesList" />
                </node>
                <node concept="2ShNRf" id="3sWSLWMv13q" role="37vLTx">
                  <node concept="YeOm9" id="3sWSLWMv13r" role="2ShVmc">
                    <node concept="1Y3b0j" id="3sWSLWMv13s" role="YeSDq">
                      <ref role="1Y3XeK" to="lzb2:~CheckBoxList" resolve="CheckBoxList" />
                      <ref role="37wK5l" to="lzb2:~CheckBoxList.&lt;init&gt;()" resolve="CheckBoxList" />
                      <node concept="3clFb_" id="3sWSLWMv13t" role="jymVt">
                        <property role="TrG5h" value="adjustRendering" />
                        <node concept="2AHcQZ" id="3sWSLWMv13u" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                        <node concept="37vLTG" id="3sWSLWMv13v" role="3clF46">
                          <property role="TrG5h" value="rootComponent" />
                          <node concept="3uibUv" id="3sWSLWMv13w" role="1tU5fm">
                            <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
                          </node>
                        </node>
                        <node concept="37vLTG" id="3sWSLWMv13x" role="3clF46">
                          <property role="TrG5h" value="checkBox" />
                          <node concept="3uibUv" id="3sWSLWMv13y" role="1tU5fm">
                            <ref role="3uigEE" to="dxuu:~JCheckBox" resolve="JCheckBox" />
                          </node>
                        </node>
                        <node concept="37vLTG" id="3sWSLWMv13z" role="3clF46">
                          <property role="TrG5h" value="index" />
                          <node concept="10Oyi0" id="3sWSLWMv13$" role="1tU5fm" />
                        </node>
                        <node concept="37vLTG" id="3sWSLWMv13_" role="3clF46">
                          <property role="TrG5h" value="selected" />
                          <node concept="10P_77" id="3sWSLWMv13A" role="1tU5fm" />
                        </node>
                        <node concept="37vLTG" id="3sWSLWMv13B" role="3clF46">
                          <property role="TrG5h" value="hasFocus" />
                          <node concept="10P_77" id="3sWSLWMv13C" role="1tU5fm" />
                        </node>
                        <node concept="3clFbS" id="3sWSLWMv13D" role="3clF47">
                          <node concept="3cpWs8" id="3sWSLWMv13F" role="3cqZAp">
                            <node concept="3cpWsn" id="3sWSLWMv13E" role="3cpWs9">
                              <property role="TrG5h" value="language" />
                              <node concept="3uibUv" id="3sWSLWMv13G" role="1tU5fm">
                                <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
                              </node>
                              <node concept="1rXfSq" id="3sWSLWMv13H" role="33vP2m">
                                <ref role="37wK5l" to="lzb2:~CheckBoxList.getItemAt(int)" resolve="getItemAt" />
                                <node concept="37vLTw" id="3sWSLWMv13I" role="37wK5m">
                                  <ref role="3cqZAo" node="3sWSLWMv13z" resolve="index" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs6" id="3sWSLWMv13J" role="3cqZAp">
                            <node concept="1rXfSq" id="3sWSLWMv13K" role="3cqZAk">
                              <ref role="37wK5l" node="4dN2CWEA6L9" resolve="renderRow" />
                              <node concept="37vLTw" id="3sWSLWMv13L" role="37wK5m">
                                <ref role="3cqZAo" node="3sWSLWMv13x" resolve="checkBox" />
                              </node>
                              <node concept="10M0yZ" id="3sWSLWMvasQ" role="37wK5m">
                                <ref role="1PxDUh" to="xnls:~IdeIcons" resolve="IdeIcons" />
                                <ref role="3cqZAo" to="xnls:~IdeIcons.LANGUAGE_ICON" resolve="LANGUAGE_ICON" />
                              </node>
                              <node concept="1eOMI4" id="3sWSLWMv13T" role="37wK5m">
                                <node concept="3K4zz7" id="3sWSLWMv13S" role="1eOMHV">
                                  <node concept="3clFbC" id="3sWSLWMv13N" role="3K4Cdx">
                                    <node concept="37vLTw" id="3sWSLWMv13O" role="3uHU7B">
                                      <ref role="3cqZAo" node="3sWSLWMv13E" resolve="language" />
                                    </node>
                                    <node concept="10Nm6u" id="3sWSLWMv13P" role="3uHU7w" />
                                  </node>
                                  <node concept="Xl_RD" id="3sWSLWMv13Q" role="3K4E3e">
                                    <property role="Xl_RC" value="" />
                                  </node>
                                  <node concept="2OqwBi" id="3sWSLWMvaJ_" role="3K4GZi">
                                    <node concept="37vLTw" id="3sWSLWMvaxY" role="2Oq$k0">
                                      <ref role="3cqZAo" node="3sWSLWMv13E" resolve="language" />
                                    </node>
                                    <node concept="liA8E" id="3sWSLWMvaJA" role="2OqNvi">
                                      <ref role="37wK5l" to="c17a:~SLanguage.getQualifiedName()" resolve="getQualifiedName" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3Tmbuc" id="3sWSLWMv13U" role="1B3o_S" />
                        <node concept="3uibUv" id="3sWSLWMv13V" role="3clF45">
                          <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
                        </node>
                      </node>
                      <node concept="3uibUv" id="3sWSLWMv13W" role="2Ghqu4">
                        <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="3sWSLWMv13X" role="3cqZAp">
              <node concept="37vLTw" id="3sWSLWMv148" role="1DdaDG">
                <ref role="3cqZAo" node="5glnhittf4l" resolve="myRequiredLanguages" />
              </node>
              <node concept="3cpWsn" id="3sWSLWMv145" role="1Duv9x">
                <property role="TrG5h" value="lang" />
                <node concept="3uibUv" id="3sWSLWMv147" role="1tU5fm">
                  <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
                </node>
              </node>
              <node concept="3clFbS" id="3sWSLWMv13Z" role="2LFqv$">
                <node concept="3clFbF" id="3sWSLWMv140" role="3cqZAp">
                  <node concept="2OqwBi" id="3sWSLWMvaPk" role="3clFbG">
                    <node concept="37vLTw" id="3sWSLWMvay3" role="2Oq$k0">
                      <ref role="3cqZAo" node="2QS3m7mG5EW" resolve="myLanguagesList" />
                    </node>
                    <node concept="liA8E" id="3sWSLWMvaPl" role="2OqNvi">
                      <ref role="37wK5l" to="lzb2:~CheckBoxList.addItem(java.lang.Object,java.lang.String,boolean)" resolve="addItem" />
                      <node concept="37vLTw" id="3sWSLWMvaPm" role="37wK5m">
                        <ref role="3cqZAo" node="3sWSLWMv145" resolve="lang" />
                      </node>
                      <node concept="2OqwBi" id="3sWSLWMviDL" role="37wK5m">
                        <node concept="37vLTw" id="3sWSLWMviDn" role="2Oq$k0">
                          <ref role="3cqZAo" node="3sWSLWMv145" resolve="lang" />
                        </node>
                        <node concept="liA8E" id="3sWSLWMviDM" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SLanguage.getQualifiedName()" resolve="getQualifiedName" />
                        </node>
                      </node>
                      <node concept="3clFbT" id="3sWSLWMvaPo" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3sWSLWMv149" role="3cqZAp">
              <node concept="37vLTI" id="3sWSLWMv14a" role="3clFbG">
                <node concept="37vLTw" id="3sWSLWMv14b" role="37vLTJ">
                  <ref role="3cqZAo" node="3sWSLWMv13d" resolve="languagesPanel" />
                </node>
                <node concept="1rXfSq" id="3sWSLWMv14c" role="37vLTx">
                  <ref role="37wK5l" node="4dN2CWECdIl" resolve="createListPanel" />
                  <node concept="Xl_RD" id="3sWSLWMv14d" role="37wK5m">
                    <property role="Xl_RC" value="Languages" />
                  </node>
                  <node concept="37vLTw" id="3sWSLWMv14e" role="37wK5m">
                    <ref role="3cqZAo" node="2QS3m7mG5EW" resolve="myLanguagesList" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3sWSLWMv14g" role="3cqZAp">
          <node concept="3cpWsn" id="3sWSLWMv14f" role="3cpWs9">
            <property role="TrG5h" value="center" />
            <node concept="3uibUv" id="3sWSLWMv14h" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3sWSLWMv14i" role="3cqZAp">
          <node concept="1Wc70l" id="3sWSLWMv14j" role="3clFbw">
            <node concept="3y3z36" id="3sWSLWMv14k" role="3uHU7B">
              <node concept="37vLTw" id="3sWSLWMv14l" role="3uHU7B">
                <ref role="3cqZAo" node="3sWSLWMv12j" resolve="modelsPanel" />
              </node>
              <node concept="10Nm6u" id="3sWSLWMv14m" role="3uHU7w" />
            </node>
            <node concept="3y3z36" id="3sWSLWMv14n" role="3uHU7w">
              <node concept="37vLTw" id="3sWSLWMv14o" role="3uHU7B">
                <ref role="3cqZAo" node="3sWSLWMv13d" resolve="languagesPanel" />
              </node>
              <node concept="10Nm6u" id="3sWSLWMv14p" role="3uHU7w" />
            </node>
          </node>
          <node concept="3clFbJ" id="3sWSLWMv14K" role="9aQIa">
            <node concept="3y3z36" id="3sWSLWMv14L" role="3clFbw">
              <node concept="37vLTw" id="3sWSLWMv14M" role="3uHU7B">
                <ref role="3cqZAo" node="3sWSLWMv12j" resolve="modelsPanel" />
              </node>
              <node concept="10Nm6u" id="3sWSLWMv14N" role="3uHU7w" />
            </node>
            <node concept="3clFbJ" id="3sWSLWMv14U" role="9aQIa">
              <node concept="3y3z36" id="3sWSLWMv14V" role="3clFbw">
                <node concept="37vLTw" id="3sWSLWMv14W" role="3uHU7B">
                  <ref role="3cqZAo" node="3sWSLWMv13d" resolve="languagesPanel" />
                </node>
                <node concept="10Nm6u" id="3sWSLWMv14X" role="3uHU7w" />
              </node>
              <node concept="9aQIb" id="3sWSLWMv154" role="9aQIa">
                <node concept="3clFbS" id="3sWSLWMv155" role="9aQI4">
                  <node concept="3clFbF" id="3sWSLWMv156" role="3cqZAp">
                    <node concept="37vLTI" id="3sWSLWMv157" role="3clFbG">
                      <node concept="37vLTw" id="3sWSLWMv158" role="37vLTJ">
                        <ref role="3cqZAo" node="3sWSLWMv14f" resolve="center" />
                      </node>
                      <node concept="2ShNRf" id="3sWSLWMvay8" role="37vLTx">
                        <node concept="1pGfFk" id="3sWSLWMvaye" role="2ShVmc">
                          <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;()" resolve="JPanel" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="3sWSLWMv14Z" role="3clFbx">
                <node concept="3clFbF" id="3sWSLWMv150" role="3cqZAp">
                  <node concept="37vLTI" id="3sWSLWMv151" role="3clFbG">
                    <node concept="37vLTw" id="3sWSLWMv152" role="37vLTJ">
                      <ref role="3cqZAo" node="3sWSLWMv14f" resolve="center" />
                    </node>
                    <node concept="37vLTw" id="3sWSLWMv153" role="37vLTx">
                      <ref role="3cqZAo" node="3sWSLWMv13d" resolve="languagesPanel" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="3sWSLWMv14P" role="3clFbx">
              <node concept="3clFbF" id="3sWSLWMv14Q" role="3cqZAp">
                <node concept="37vLTI" id="3sWSLWMv14R" role="3clFbG">
                  <node concept="37vLTw" id="3sWSLWMv14S" role="37vLTJ">
                    <ref role="3cqZAo" node="3sWSLWMv14f" resolve="center" />
                  </node>
                  <node concept="37vLTw" id="3sWSLWMv14T" role="37vLTx">
                    <ref role="3cqZAo" node="3sWSLWMv12j" resolve="modelsPanel" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="3sWSLWMv14r" role="3clFbx">
            <node concept="3cpWs8" id="3sWSLWMv14t" role="3cqZAp">
              <node concept="3cpWsn" id="3sWSLWMv14s" role="3cpWs9">
                <property role="TrG5h" value="splitter" />
                <node concept="3uibUv" id="3sWSLWMv14u" role="1tU5fm">
                  <ref role="3uigEE" to="lzb2:~JBSplitter" resolve="JBSplitter" />
                </node>
                <node concept="2ShNRf" id="3sWSLWMvayf" role="33vP2m">
                  <node concept="1pGfFk" id="3sWSLWMvaBe" role="2ShVmc">
                    <ref role="37wK5l" to="lzb2:~JBSplitter.&lt;init&gt;(boolean,float)" resolve="JBSplitter" />
                    <node concept="3clFbT" id="3sWSLWMvaBf" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                    <node concept="2$xPTn" id="3sWSLWMvaBg" role="37wK5m">
                      <property role="2$xPTl" value="0.5f" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3sWSLWMv14y" role="3cqZAp">
              <node concept="2OqwBi" id="3sWSLWMvaPy" role="3clFbG">
                <node concept="37vLTw" id="3sWSLWMvaBk" role="2Oq$k0">
                  <ref role="3cqZAo" node="3sWSLWMv14s" resolve="splitter" />
                </node>
                <node concept="liA8E" id="3sWSLWMvaPz" role="2OqNvi">
                  <ref role="37wK5l" to="jkm4:~Splitter.setDividerWidth(int)" resolve="setDividerWidth" />
                  <node concept="2YIFZM" id="3sWSLWMviDs" role="37wK5m">
                    <ref role="1Pybhc" to="g1qu:~JBUI" resolve="JBUI" />
                    <ref role="37wK5l" to="g1qu:~JBUI.scale(int)" resolve="scale" />
                    <node concept="3cmrfG" id="3sWSLWMviDt" role="37wK5m">
                      <property role="3cmrfH" value="20" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3sWSLWMv14A" role="3cqZAp">
              <node concept="2OqwBi" id="3sWSLWMvaPJ" role="3clFbG">
                <node concept="37vLTw" id="3sWSLWMvaBr" role="2Oq$k0">
                  <ref role="3cqZAo" node="3sWSLWMv14s" resolve="splitter" />
                </node>
                <node concept="liA8E" id="3sWSLWMvaPK" role="2OqNvi">
                  <ref role="37wK5l" to="jkm4:~Splitter.setFirstComponent(javax.swing.JComponent)" resolve="setFirstComponent" />
                  <node concept="37vLTw" id="3sWSLWMvaPL" role="37wK5m">
                    <ref role="3cqZAo" node="3sWSLWMv12j" resolve="modelsPanel" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3sWSLWMv14D" role="3cqZAp">
              <node concept="2OqwBi" id="3sWSLWMvaPV" role="3clFbG">
                <node concept="37vLTw" id="3sWSLWMvaBx" role="2Oq$k0">
                  <ref role="3cqZAo" node="3sWSLWMv14s" resolve="splitter" />
                </node>
                <node concept="liA8E" id="3sWSLWMvaPW" role="2OqNvi">
                  <ref role="37wK5l" to="jkm4:~Splitter.setSecondComponent(javax.swing.JComponent)" resolve="setSecondComponent" />
                  <node concept="37vLTw" id="3sWSLWMvaPX" role="37wK5m">
                    <ref role="3cqZAo" node="3sWSLWMv13d" resolve="languagesPanel" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3sWSLWMv14G" role="3cqZAp">
              <node concept="37vLTI" id="3sWSLWMv14H" role="3clFbG">
                <node concept="37vLTw" id="3sWSLWMv14I" role="37vLTJ">
                  <ref role="3cqZAo" node="3sWSLWMv14f" resolve="center" />
                </node>
                <node concept="37vLTw" id="3sWSLWMv14J" role="37vLTx">
                  <ref role="3cqZAo" node="3sWSLWMv14s" resolve="splitter" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3sWSLWMv15a" role="3cqZAp">
          <node concept="2OqwBi" id="3sWSLWMvaQ7" role="3clFbG">
            <node concept="37vLTw" id="3sWSLWMvaBB" role="2Oq$k0">
              <ref role="3cqZAo" node="3sWSLWMv11D" resolve="panel" />
            </node>
            <node concept="liA8E" id="3sWSLWMvaQ8" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
              <node concept="37vLTw" id="3sWSLWMvaQ9" role="37wK5m">
                <ref role="3cqZAo" node="3sWSLWMv14f" resolve="center" />
              </node>
              <node concept="10M0yZ" id="3sWSLWMviDx" role="37wK5m">
                <ref role="1PxDUh" to="z60i:~BorderLayout" resolve="BorderLayout" />
                <ref role="3cqZAo" to="z60i:~BorderLayout.CENTER" resolve="CENTER" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3sWSLWMv15e" role="3cqZAp">
          <node concept="2OqwBi" id="3sWSLWMvaQk" role="3clFbG">
            <node concept="37vLTw" id="3sWSLWMvaBI" role="2Oq$k0">
              <ref role="3cqZAo" node="3sWSLWMv11D" resolve="panel" />
            </node>
            <node concept="liA8E" id="3sWSLWMvaQl" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setPreferredSize(java.awt.Dimension)" resolve="setPreferredSize" />
              <node concept="2YIFZM" id="3sWSLWMviD_" role="37wK5m">
                <ref role="1Pybhc" to="g1qu:~JBUI" resolve="JBUI" />
                <ref role="37wK5l" to="g1qu:~JBUI.size(int,int)" resolve="size" />
                <node concept="3cmrfG" id="3sWSLWMviDA" role="37wK5m">
                  <property role="3cmrfH" value="500" />
                </node>
                <node concept="3cmrfG" id="3sWSLWMviDB" role="37wK5m">
                  <property role="3cmrfH" value="400" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3sWSLWMv15j" role="3cqZAp">
          <node concept="37vLTw" id="3sWSLWMv15k" role="3cqZAk">
            <ref role="3cqZAo" node="3sWSLWMv11D" resolve="panel" />
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="3sWSLWMv15l" role="1B3o_S" />
      <node concept="3uibUv" id="3sWSLWMv15m" role="3clF45">
        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
      </node>
    </node>
    <node concept="3clFb_" id="5glnhittfag" role="jymVt">
      <property role="TrG5h" value="getDimensionServiceKey" />
      <node concept="2AHcQZ" id="5glnhittfah" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="5glnhittfai" role="3clF47">
        <node concept="3cpWs6" id="5glnhittfaj" role="3cqZAp">
          <node concept="2OqwBi" id="7pMXX1aJa43" role="3cqZAk">
            <node concept="1rXfSq" id="7pMXX1aJ6BS" role="2Oq$k0">
              <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
            </node>
            <node concept="liA8E" id="7pMXX1aJfoP" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Class.getName()" resolve="getName" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="5glnhittfal" role="1B3o_S" />
      <node concept="3uibUv" id="5glnhittfam" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="3clFb_" id="5glnhittfan" role="jymVt">
      <property role="TrG5h" value="getSelectedImports" />
      <node concept="2AHcQZ" id="5glnhittfao" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="5glnhittfap" role="3clF47">
        <node concept="3cpWs6" id="5glnhittfaq" role="3cqZAp">
          <node concept="3K4zz7" id="5glnhittfa$" role="3cqZAk">
            <node concept="3y3z36" id="5glnhittfar" role="3K4Cdx">
              <node concept="37vLTw" id="5glnhittfas" role="3uHU7B">
                <ref role="3cqZAo" node="5glnhittf4y" resolve="mySelectedImports" />
              </node>
              <node concept="10Nm6u" id="5glnhittfat" role="3uHU7w" />
            </node>
            <node concept="37vLTw" id="5glnhittfau" role="3K4E3e">
              <ref role="3cqZAo" node="5glnhittf4y" resolve="mySelectedImports" />
            </node>
            <node concept="2ShNRf" id="5glnhittfaz" role="3K4GZi">
              <node concept="3$_iS1" id="5glnhittfax" role="2ShVmc">
                <node concept="3$GHV9" id="5glnhittfay" role="3$GQph">
                  <node concept="3cmrfG" id="5glnhittfaw" role="3$I4v7">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
                <node concept="3uibUv" id="5glnhittfav" role="3$_nBY">
                  <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5glnhittfa_" role="1B3o_S" />
      <node concept="10Q1$e" id="5glnhittfaB" role="3clF45">
        <node concept="3uibUv" id="5glnhittfaA" role="10Q1$1">
          <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="5glnhittfaC" role="jymVt">
      <property role="TrG5h" value="getSelectedLanguages" />
      <node concept="2AHcQZ" id="5glnhittfaD" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="5glnhittfaE" role="3clF47">
        <node concept="3cpWs6" id="5glnhittfaF" role="3cqZAp">
          <node concept="3K4zz7" id="5glnhittfaP" role="3cqZAk">
            <node concept="3y3z36" id="5glnhittfaG" role="3K4Cdx">
              <node concept="37vLTw" id="5glnhittfaH" role="3uHU7B">
                <ref role="3cqZAo" node="5glnhittf4B" resolve="mySelectedLanguages" />
              </node>
              <node concept="10Nm6u" id="5glnhittfaI" role="3uHU7w" />
            </node>
            <node concept="37vLTw" id="5glnhittfaJ" role="3K4E3e">
              <ref role="3cqZAo" node="5glnhittf4B" resolve="mySelectedLanguages" />
            </node>
            <node concept="2ShNRf" id="5glnhittfaO" role="3K4GZi">
              <node concept="3$_iS1" id="5glnhittfaM" role="2ShVmc">
                <node concept="3$GHV9" id="5glnhittfaN" role="3$GQph">
                  <node concept="3cmrfG" id="5glnhittfaL" role="3$I4v7">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
                <node concept="3uibUv" id="5glnhittfaK" role="3$_nBY">
                  <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5glnhittfaQ" role="1B3o_S" />
      <node concept="10Q1$e" id="5glnhittfaS" role="3clF45">
        <node concept="3uibUv" id="5glnhittfaR" role="10Q1$1">
          <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7pMXX1b0Q2A" role="jymVt" />
    <node concept="3clFb_" id="7pMXX1b1427" role="jymVt">
      <property role="TrG5h" value="asUpdateCommand" />
      <node concept="3clFbS" id="7nlecdCDEKm" role="3clF47">
        <node concept="3clFbJ" id="7nlecdCDEKn" role="3cqZAp">
          <node concept="22lmx$" id="7pMXX1b3MJE" role="3clFbw">
            <node concept="3clFbC" id="7nlecdCDEKp" role="3uHU7B">
              <node concept="37vLTw" id="2BHiRxgha8S" role="3uHU7B">
                <ref role="3cqZAo" node="5glnhittf4B" resolve="mySelectedLanguages" />
              </node>
              <node concept="10Nm6u" id="7pMXX1b1Gef" role="3uHU7w" />
            </node>
            <node concept="3clFbC" id="7nlecdCDEKu" role="3uHU7w">
              <node concept="37vLTw" id="2BHiRxgmpNf" role="3uHU7B">
                <ref role="3cqZAo" node="5glnhittf4y" resolve="mySelectedImports" />
              </node>
              <node concept="10Nm6u" id="7pMXX1b3WmQ" role="3uHU7w" />
            </node>
          </node>
          <node concept="3clFbS" id="7nlecdCDEKz" role="3clFbx">
            <node concept="3SKdUt" id="7bYj6bAK_8E" role="3cqZAp">
              <node concept="1PaTwC" id="7bYj6bAK_8I" role="1aUNEU">
                <node concept="3oM_SD" id="7bYj6bAK_8K" role="1PaTwD">
                  <property role="3oM_SC" value="only" />
                </node>
                <node concept="3oM_SD" id="7bYj6bAK_8L" role="1PaTwD">
                  <property role="3oM_SC" value="valid" />
                </node>
                <node concept="3oM_SD" id="7bYj6bAK_8M" role="1PaTwD">
                  <property role="3oM_SC" value="after" />
                </node>
                <node concept="3oM_SD" id="7bYj6bAK_8N" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="7bYj6bAK_8O" role="1PaTwD">
                  <property role="3oM_SC" value="dialog" />
                </node>
                <node concept="3oM_SD" id="7bYj6bAK_8P" role="1PaTwD">
                  <property role="3oM_SC" value="was" />
                </node>
                <node concept="3oM_SD" id="7bYj6bAK_8Q" role="1PaTwD">
                  <property role="3oM_SC" value="closed" />
                </node>
                <node concept="3oM_SD" id="7bYj6bAK_8R" role="1PaTwD">
                  <property role="3oM_SC" value="with" />
                </node>
                <node concept="3oM_SD" id="7bYj6bAK_8S" role="1PaTwD">
                  <property role="3oM_SC" value="OK" />
                </node>
              </node>
            </node>
            <node concept="YS8fn" id="7pMXX1b3YMY" role="3cqZAp">
              <node concept="2ShNRf" id="7pMXX1b3YNi" role="YScLw">
                <node concept="1pGfFk" id="7pMXX1b46wu" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;()" resolve="IllegalStateException" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7pMXX1b5JQ_" role="3cqZAp">
          <node concept="3clFbS" id="7pMXX1b5JQB" role="3clFbx">
            <node concept="3cpWs6" id="7pMXX1b6tDb" role="3cqZAp">
              <node concept="1bVj0M" id="7pMXX1b6yxT" role="3cqZAk">
                <node concept="3clFbS" id="7pMXX1b6yxV" role="1bW5cS" />
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="7pMXX1b65zT" role="3clFbw">
            <node concept="3clFbC" id="7pMXX1b6pL3" role="3uHU7w">
              <node concept="3cmrfG" id="7pMXX1b6smP" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="2OqwBi" id="7pMXX1b69CW" role="3uHU7B">
                <node concept="37vLTw" id="7pMXX1b689_" role="2Oq$k0">
                  <ref role="3cqZAo" node="5glnhittf4y" resolve="mySelectedImports" />
                </node>
                <node concept="1Rwk04" id="7pMXX1b6kHs" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbC" id="7pMXX1b5YFh" role="3uHU7B">
              <node concept="2OqwBi" id="7pMXX1b5OiO" role="3uHU7B">
                <node concept="37vLTw" id="7pMXX1b5MvR" role="2Oq$k0">
                  <ref role="3cqZAo" node="5glnhittf4B" resolve="mySelectedLanguages" />
                </node>
                <node concept="1Rwk04" id="7pMXX1b5R2Q" role="2OqNvi" />
              </node>
              <node concept="3cmrfG" id="7pMXX1b62ZK" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1yqHBnuxLwg" role="3cqZAp" />
        <node concept="3cpWs6" id="1U6F4ugnx16" role="3cqZAp">
          <node concept="2ShNRf" id="1U6F4ugnwYo" role="3cqZAk">
            <node concept="YeOm9" id="1U6F4ugnwYp" role="2ShVmc">
              <node concept="1Y3b0j" id="1U6F4ugnwYq" role="YeSDq">
                <property role="TrG5h" value="" />
                <property role="2bfB8j" value="true" />
                <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                <node concept="3clFb_" id="1U6F4ugnwYr" role="jymVt">
                  <property role="1EzhhJ" value="false" />
                  <property role="TrG5h" value="run" />
                  <property role="DiZV1" value="false" />
                  <node concept="3Tm1VV" id="1U6F4ugnwYs" role="1B3o_S" />
                  <node concept="3cqZAl" id="1U6F4ugnwYt" role="3clF45" />
                  <node concept="3clFbS" id="1U6F4ugnwYu" role="3clF47">
                    <node concept="3clFbF" id="7bYj6bAzmzN" role="3cqZAp">
                      <node concept="2YIFZM" id="7bYj6bAzGSH" role="3clFbG">
                        <ref role="37wK5l" node="3ho4UQBC7CZ" resolve="applyRequiredImports" />
                        <ref role="1Pybhc" node="5tGs5KqKfGH" resolve="CopyPasteUtil" />
                        <node concept="37vLTw" id="7bYj6bAzMIC" role="37wK5m">
                          <ref role="3cqZAo" node="7pMXX1b55$R" resolve="targetModel" />
                        </node>
                        <node concept="2YIFZM" id="7bYj6bA_y53" role="37wK5m">
                          <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
                          <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
                          <node concept="37vLTw" id="7bYj6bA_C1c" role="37wK5m">
                            <ref role="3cqZAo" node="5glnhittf4B" resolve="mySelectedLanguages" />
                          </node>
                        </node>
                        <node concept="2YIFZM" id="7bYj6bA_Mve" role="37wK5m">
                          <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
                          <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
                          <node concept="37vLTw" id="7bYj6bA_RIn" role="37wK5m">
                            <ref role="3cqZAo" node="5glnhittf4y" resolve="mySelectedImports" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="1U6F4ugnx12" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="1U6F4ugnx18" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
      </node>
      <node concept="3Tm1VV" id="7pMXX1b13Fs" role="1B3o_S" />
      <node concept="37vLTG" id="7pMXX1b55$R" role="3clF46">
        <property role="TrG5h" value="targetModel" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="7pMXX1b55$Q" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
        <node concept="2AHcQZ" id="7pMXX1b5A_4" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7pMXX1b0Qe3" role="jymVt" />
    <node concept="2tJIrI" id="7pMXX1aJmGv" role="jymVt" />
    <node concept="3clFb_" id="4dN2CWECdIl" role="jymVt">
      <property role="TrG5h" value="createListPanel" />
      <node concept="37vLTG" id="4dN2CWECdIm" role="3clF46">
        <property role="TrG5h" value="title" />
        <node concept="17QB3L" id="40SlAqZ8h4o" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4dN2CWECdIo" role="3clF46">
        <property role="TrG5h" value="list" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="4dN2CWECdIp" role="1tU5fm">
          <ref role="3uigEE" to="lzb2:~CheckBoxList" resolve="CheckBoxList" />
        </node>
      </node>
      <node concept="3clFbS" id="4dN2CWECdIq" role="3clF47">
        <node concept="3cpWs8" id="4dN2CWECdIs" role="3cqZAp">
          <node concept="3cpWsn" id="4dN2CWECdIr" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="selectAll" />
            <node concept="3uibUv" id="4dN2CWECdIt" role="1tU5fm">
              <ref role="3uigEE" to="g1qu:~ThreeStateCheckBox" resolve="ThreeStateCheckBox" />
            </node>
            <node concept="2ShNRf" id="4dN2CWECdKN" role="33vP2m">
              <node concept="1pGfFk" id="4dN2CWECdLy" role="2ShVmc">
                <ref role="37wK5l" to="g1qu:~ThreeStateCheckBox.&lt;init&gt;(java.lang.String,com.intellij.util.ui.ThreeStateCheckBox$State)" resolve="ThreeStateCheckBox" />
                <node concept="37vLTw" id="4dN2CWECdLz" role="37wK5m">
                  <ref role="3cqZAo" node="4dN2CWECdIm" resolve="title" />
                </node>
                <node concept="1rXfSq" id="4dN2CWECdL$" role="37wK5m">
                  <ref role="37wK5l" node="4dN2CWE_IxR" resolve="selectionState" />
                  <node concept="37vLTw" id="4dN2CWECdL_" role="37wK5m">
                    <ref role="3cqZAo" node="4dN2CWECdIo" resolve="list" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4dN2CWECdIy" role="3cqZAp">
          <node concept="2OqwBi" id="4dN2CWECdO4" role="3clFbG">
            <node concept="37vLTw" id="4dN2CWECdLB" role="2Oq$k0">
              <ref role="3cqZAo" node="4dN2CWECdIr" resolve="selectAll" />
            </node>
            <node concept="liA8E" id="4dN2CWECdO5" role="2OqNvi">
              <ref role="37wK5l" to="g1qu:~ThreeStateCheckBox.setThirdStateEnabled(boolean)" resolve="setThirdStateEnabled" />
              <node concept="3clFbT" id="4dN2CWECdO6" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4dN2CWECdI_" role="3cqZAp">
          <node concept="2OqwBi" id="4dN2CWECdOg" role="3clFbG">
            <node concept="37vLTw" id="4dN2CWECdLF" role="2Oq$k0">
              <ref role="3cqZAo" node="4dN2CWECdIr" resolve="selectAll" />
            </node>
            <node concept="liA8E" id="4dN2CWECdOh" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~AbstractButton.addActionListener(java.awt.event.ActionListener)" resolve="addActionListener" />
              <node concept="2ShNRf" id="4dN2CWECdOi" role="37wK5m">
                <node concept="YeOm9" id="4dN2CWECdOj" role="2ShVmc">
                  <node concept="1Y3b0j" id="4dN2CWECdOk" role="YeSDq">
                    <ref role="1Y3XeK" to="hyam:~ActionListener" resolve="ActionListener" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3clFb_" id="4dN2CWECdOl" role="jymVt">
                      <property role="TrG5h" value="actionPerformed" />
                      <node concept="37vLTG" id="4dN2CWECdOm" role="3clF46">
                        <property role="TrG5h" value="e" />
                        <node concept="3uibUv" id="4dN2CWECdOn" role="1tU5fm">
                          <ref role="3uigEE" to="hyam:~ActionEvent" resolve="ActionEvent" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="4dN2CWECdOo" role="3clF47">
                        <node concept="3cpWs8" id="4dN2CWECdOp" role="3cqZAp">
                          <node concept="3cpWsn" id="4dN2CWECdOq" role="3cpWs9">
                            <property role="TrG5h" value="selected" />
                            <node concept="10P_77" id="4dN2CWECdOr" role="1tU5fm" />
                            <node concept="2OqwBi" id="4dN2CWECdX0" role="33vP2m">
                              <node concept="37vLTw" id="4dN2CWECdVy" role="2Oq$k0">
                                <ref role="3cqZAo" node="4dN2CWECdIr" resolve="selectAll" />
                              </node>
                              <node concept="liA8E" id="4dN2CWECdX1" role="2OqNvi">
                                <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Dw8fO" id="4dN2CWECdOt" role="3cqZAp">
                          <node concept="3cpWsn" id="4dN2CWECdOu" role="1Duv9x">
                            <property role="TrG5h" value="i" />
                            <node concept="10Oyi0" id="4dN2CWECdOv" role="1tU5fm" />
                            <node concept="3cmrfG" id="4dN2CWECdOw" role="33vP2m">
                              <property role="3cmrfH" value="0" />
                            </node>
                          </node>
                          <node concept="3eOVzh" id="4dN2CWECdOx" role="1Dwp0S">
                            <node concept="37vLTw" id="4dN2CWECdOy" role="3uHU7B">
                              <ref role="3cqZAo" node="4dN2CWECdOu" resolve="i" />
                            </node>
                            <node concept="2OqwBi" id="4dN2CWECe4h" role="3uHU7w">
                              <node concept="37vLTw" id="4dN2CWECdVB" role="2Oq$k0">
                                <ref role="3cqZAo" node="4dN2CWECdIo" resolve="list" />
                              </node>
                              <node concept="liA8E" id="4dN2CWECe4i" role="2OqNvi">
                                <ref role="37wK5l" to="qqrq:~JBList.getItemsCount()" resolve="getItemsCount" />
                              </node>
                            </node>
                          </node>
                          <node concept="3uNrnE" id="4dN2CWECdO$" role="1Dwrff">
                            <node concept="37vLTw" id="4dN2CWECdO_" role="2$L3a6">
                              <ref role="3cqZAo" node="4dN2CWECdOu" resolve="i" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="4dN2CWECdOA" role="2LFqv$">
                            <node concept="3clFbF" id="4dN2CWECdOB" role="3cqZAp">
                              <node concept="2OqwBi" id="4dN2CWECe9E" role="3clFbG">
                                <node concept="37vLTw" id="4dN2CWECdVG" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4dN2CWECdIo" resolve="list" />
                                </node>
                                <node concept="liA8E" id="4dN2CWECe9F" role="2OqNvi">
                                  <ref role="37wK5l" to="lzb2:~CheckBoxList.setItemSelected(java.lang.Object,boolean)" resolve="setItemSelected" />
                                  <node concept="2OqwBi" id="4dN2CWECema" role="37wK5m">
                                    <node concept="37vLTw" id="4dN2CWECegK" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4dN2CWECdIo" resolve="list" />
                                    </node>
                                    <node concept="liA8E" id="4dN2CWECemb" role="2OqNvi">
                                      <ref role="37wK5l" to="lzb2:~CheckBoxList.getItemAt(int)" resolve="getItemAt" />
                                      <node concept="37vLTw" id="4dN2CWECemc" role="37wK5m">
                                        <ref role="3cqZAo" node="4dN2CWECdOu" resolve="i" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="4dN2CWECe9I" role="37wK5m">
                                    <ref role="3cqZAo" node="4dN2CWECdOq" resolve="selected" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="4dN2CWECdOG" role="3cqZAp">
                          <node concept="2OqwBi" id="4dN2CWECege" role="3clFbG">
                            <node concept="37vLTw" id="4dN2CWECdVO" role="2Oq$k0">
                              <ref role="3cqZAo" node="4dN2CWECdIo" resolve="list" />
                            </node>
                            <node concept="liA8E" id="4dN2CWECegf" role="2OqNvi">
                              <ref role="37wK5l" to="z60i:~Component.repaint()" resolve="repaint" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3Tm1VV" id="4dN2CWECdOI" role="1B3o_S" />
                      <node concept="3cqZAl" id="4dN2CWECdOJ" role="3clF45" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4dN2CWECdJ8" role="3cqZAp">
          <node concept="2OqwBi" id="4dN2CWECdTF" role="3clFbG">
            <node concept="37vLTw" id="4dN2CWECdMc" role="2Oq$k0">
              <ref role="3cqZAo" node="4dN2CWECdIo" resolve="list" />
            </node>
            <node concept="liA8E" id="4dN2CWECdTG" role="2OqNvi">
              <ref role="37wK5l" to="lzb2:~CheckBoxList.setCheckBoxListListener(com.intellij.ui.CheckBoxListListener)" resolve="setCheckBoxListListener" />
              <node concept="2ShNRf" id="4dN2CWECdTH" role="37wK5m">
                <node concept="YeOm9" id="4dN2CWECdTI" role="2ShVmc">
                  <node concept="1Y3b0j" id="4dN2CWECdTJ" role="YeSDq">
                    <ref role="1Y3XeK" to="lzb2:~CheckBoxListListener" resolve="CheckBoxListListener" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3clFb_" id="4dN2CWECdTK" role="jymVt">
                      <property role="TrG5h" value="checkBoxSelectionChanged" />
                      <node concept="37vLTG" id="4dN2CWECdTL" role="3clF46">
                        <property role="TrG5h" value="index" />
                        <node concept="10Oyi0" id="4dN2CWECdTM" role="1tU5fm" />
                      </node>
                      <node concept="37vLTG" id="4dN2CWECdTN" role="3clF46">
                        <property role="TrG5h" value="value" />
                        <node concept="10P_77" id="4dN2CWECdTO" role="1tU5fm" />
                      </node>
                      <node concept="3clFbS" id="4dN2CWECdTP" role="3clF47">
                        <node concept="3clFbF" id="4dN2CWECdTQ" role="3cqZAp">
                          <node concept="2OqwBi" id="4dN2CWECegD" role="3clFbG">
                            <node concept="37vLTw" id="4dN2CWECdVT" role="2Oq$k0">
                              <ref role="3cqZAo" node="4dN2CWECdIr" resolve="selectAll" />
                            </node>
                            <node concept="liA8E" id="4dN2CWECegE" role="2OqNvi">
                              <ref role="37wK5l" to="g1qu:~ThreeStateCheckBox.setState(com.intellij.util.ui.ThreeStateCheckBox$State)" resolve="setState" />
                              <node concept="1rXfSq" id="4dN2CWECegF" role="37wK5m">
                                <ref role="37wK5l" node="4dN2CWE_IxR" resolve="selectionState" />
                                <node concept="37vLTw" id="4dN2CWECegG" role="37wK5m">
                                  <ref role="3cqZAo" node="4dN2CWECdIo" resolve="list" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3Tm1VV" id="4dN2CWECdTU" role="1B3o_S" />
                      <node concept="3cqZAl" id="4dN2CWECdTV" role="3clF45" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4dN2CWECdJq" role="3cqZAp">
          <node concept="3cpWsn" id="4dN2CWECdJp" role="3cpWs9">
            <property role="TrG5h" value="header" />
            <node concept="3uibUv" id="4dN2CWECdJr" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
            </node>
            <node concept="2ShNRf" id="4dN2CWECdMt" role="33vP2m">
              <node concept="1pGfFk" id="4dN2CWECdMR" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;(java.awt.LayoutManager)" resolve="JPanel" />
                <node concept="2ShNRf" id="4dN2CWECdTW" role="37wK5m">
                  <node concept="1pGfFk" id="4dN2CWECdTZ" role="2ShVmc">
                    <ref role="37wK5l" to="z60i:~BorderLayout.&lt;init&gt;()" resolve="BorderLayout" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4dN2CWECdJu" role="3cqZAp">
          <node concept="2OqwBi" id="4dN2CWECdU9" role="3clFbG">
            <node concept="37vLTw" id="4dN2CWECdMU" role="2Oq$k0">
              <ref role="3cqZAo" node="4dN2CWECdJp" resolve="header" />
            </node>
            <node concept="liA8E" id="4dN2CWECdUa" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
              <node concept="37vLTw" id="4dN2CWECdUb" role="37wK5m">
                <ref role="3cqZAo" node="4dN2CWECdIr" resolve="selectAll" />
              </node>
              <node concept="10M0yZ" id="4dN2CWECdVY" role="37wK5m">
                <ref role="1PxDUh" to="z60i:~BorderLayout" resolve="BorderLayout" />
                <ref role="3cqZAo" to="z60i:~BorderLayout.WEST" resolve="WEST" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4dN2CWECdJy" role="3cqZAp">
          <node concept="2OqwBi" id="4dN2CWECdUm" role="3clFbG">
            <node concept="37vLTw" id="4dN2CWECdMZ" role="2Oq$k0">
              <ref role="3cqZAo" node="4dN2CWECdJp" resolve="header" />
            </node>
            <node concept="liA8E" id="4dN2CWECdUn" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setBorder(javax.swing.border.Border)" resolve="setBorder" />
              <node concept="2YIFZM" id="4dN2CWECdW0" role="37wK5m">
                <ref role="1Pybhc" to="g1qu:~JBUI$Borders" resolve="JBUI.Borders" />
                <ref role="37wK5l" to="g1qu:~JBUI$Borders.empty(int)" resolve="empty" />
                <node concept="3cmrfG" id="4dN2CWECdW1" role="37wK5m">
                  <property role="3cmrfH" value="5" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4dN2CWECdJB" role="3cqZAp">
          <node concept="3cpWsn" id="4dN2CWECdJA" role="3cpWs9">
            <property role="TrG5h" value="scrollPane" />
            <node concept="3uibUv" id="4dN2CWECdJC" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JScrollPane" resolve="JScrollPane" />
            </node>
            <node concept="2YIFZM" id="4dN2CWECdN4" role="33vP2m">
              <ref role="1Pybhc" to="lzb2:~ScrollPaneFactory" resolve="ScrollPaneFactory" />
              <ref role="37wK5l" to="lzb2:~ScrollPaneFactory.createScrollPane(java.awt.Component)" resolve="createScrollPane" />
              <node concept="37vLTw" id="4dN2CWECdN5" role="37wK5m">
                <ref role="3cqZAo" node="4dN2CWECdIo" resolve="list" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="7b4VELFKG5f" role="3cqZAp">
          <node concept="1PaTwC" id="7b4VELFKG5g" role="1aUNEU">
            <node concept="3oM_SD" id="7b4VELFKOG$" role="1PaTwD">
              <property role="3oM_SC" value="tuned" />
            </node>
            <node concept="3oM_SD" id="7b4VELFKOG_" role="1PaTwD">
              <property role="3oM_SC" value="1px" />
            </node>
            <node concept="3oM_SD" id="7b4VELFKOGA" role="1PaTwD">
              <property role="3oM_SC" value="so" />
            </node>
            <node concept="3oM_SD" id="7b4VELFKOGB" role="1PaTwD">
              <property role="3oM_SC" value="list" />
            </node>
            <node concept="3oM_SD" id="7b4VELFKOGC" role="1PaTwD">
              <property role="3oM_SC" value="checkboxes" />
            </node>
            <node concept="3oM_SD" id="7b4VELFKOGD" role="1PaTwD">
              <property role="3oM_SC" value="align" />
            </node>
            <node concept="3oM_SD" id="7b4VELFKOGE" role="1PaTwD">
              <property role="3oM_SC" value="under" />
            </node>
            <node concept="3oM_SD" id="7b4VELFKOGF" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="7b4VELFKOGG" role="1PaTwD">
              <property role="3oM_SC" value="header's" />
            </node>
            <node concept="3oM_SD" id="7b4VELFKOGH" role="1PaTwD">
              <property role="3oM_SC" value="checkbox" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4dN2CWECdJF" role="3cqZAp">
          <node concept="2OqwBi" id="4dN2CWECdUz" role="3clFbG">
            <node concept="37vLTw" id="4dN2CWECdN7" role="2Oq$k0">
              <ref role="3cqZAo" node="4dN2CWECdJA" resolve="scrollPane" />
            </node>
            <node concept="liA8E" id="4dN2CWECdU$" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JScrollPane.setViewportBorder(javax.swing.border.Border)" resolve="setViewportBorder" />
              <node concept="2YIFZM" id="4dN2CWECdW3" role="37wK5m">
                <ref role="1Pybhc" to="g1qu:~JBUI$Borders" resolve="JBUI.Borders" />
                <ref role="37wK5l" to="g1qu:~JBUI$Borders.empty(int)" resolve="empty" />
                <node concept="3cmrfG" id="7e3TBCEM9G4" role="37wK5m">
                  <property role="3cmrfH" value="3" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4dN2CWECdJK" role="3cqZAp">
          <node concept="3cpWsn" id="4dN2CWECdJJ" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="4dN2CWECdJL" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
            </node>
            <node concept="2ShNRf" id="4dN2CWECdNb" role="33vP2m">
              <node concept="1pGfFk" id="4dN2CWECdN_" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;(java.awt.LayoutManager)" resolve="JPanel" />
                <node concept="2ShNRf" id="4dN2CWECdUB" role="37wK5m">
                  <node concept="1pGfFk" id="4dN2CWECdUE" role="2ShVmc">
                    <ref role="37wK5l" to="z60i:~BorderLayout.&lt;init&gt;()" resolve="BorderLayout" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4dN2CWECdJO" role="3cqZAp">
          <node concept="2OqwBi" id="4dN2CWECdUO" role="3clFbG">
            <node concept="37vLTw" id="4dN2CWECdNC" role="2Oq$k0">
              <ref role="3cqZAo" node="4dN2CWECdJJ" resolve="result" />
            </node>
            <node concept="liA8E" id="4dN2CWECdUP" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
              <node concept="37vLTw" id="4dN2CWECdUQ" role="37wK5m">
                <ref role="3cqZAo" node="4dN2CWECdJp" resolve="header" />
              </node>
              <node concept="10M0yZ" id="4dN2CWECdW6" role="37wK5m">
                <ref role="1PxDUh" to="z60i:~BorderLayout" resolve="BorderLayout" />
                <ref role="3cqZAo" to="z60i:~BorderLayout.NORTH" resolve="NORTH" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4dN2CWECdJS" role="3cqZAp">
          <node concept="2OqwBi" id="4dN2CWECdV1" role="3clFbG">
            <node concept="37vLTw" id="4dN2CWECdNH" role="2Oq$k0">
              <ref role="3cqZAo" node="4dN2CWECdJJ" resolve="result" />
            </node>
            <node concept="liA8E" id="4dN2CWECdV2" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
              <node concept="37vLTw" id="4dN2CWECdV3" role="37wK5m">
                <ref role="3cqZAo" node="4dN2CWECdJA" resolve="scrollPane" />
              </node>
              <node concept="10M0yZ" id="4dN2CWECdW8" role="37wK5m">
                <ref role="1PxDUh" to="z60i:~BorderLayout" resolve="BorderLayout" />
                <ref role="3cqZAo" to="z60i:~BorderLayout.CENTER" resolve="CENTER" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4dN2CWECdK8" role="3cqZAp">
          <node concept="1PaTwC" id="4dN2CWECdK9" role="1aUNEU">
            <node concept="3oM_SD" id="4dN2CWECdKb" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="4dN2CWECdKc" role="1PaTwD">
              <property role="3oM_SC" value="minimum" />
            </node>
            <node concept="3oM_SD" id="4dN2CWECdKd" role="1PaTwD">
              <property role="3oM_SC" value="size" />
            </node>
            <node concept="3oM_SD" id="4dN2CWECdKe" role="1PaTwD">
              <property role="3oM_SC" value="shows" />
            </node>
            <node concept="3oM_SD" id="4dN2CWECdKf" role="1PaTwD">
              <property role="3oM_SC" value="at" />
            </node>
            <node concept="3oM_SD" id="4dN2CWECdKg" role="1PaTwD">
              <property role="3oM_SC" value="least" />
            </node>
            <node concept="3oM_SD" id="4dN2CWECdKh" role="1PaTwD">
              <property role="3oM_SC" value="one" />
            </node>
            <node concept="3oM_SD" id="4dN2CWECdKi" role="1PaTwD">
              <property role="3oM_SC" value="row" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4dN2CWECdJW" role="3cqZAp">
          <node concept="2OqwBi" id="4dN2CWECdVe" role="3clFbG">
            <node concept="37vLTw" id="4dN2CWECdNM" role="2Oq$k0">
              <ref role="3cqZAo" node="4dN2CWECdJJ" resolve="result" />
            </node>
            <node concept="liA8E" id="4dN2CWECdVf" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setMinimumSize(java.awt.Dimension)" resolve="setMinimumSize" />
              <node concept="2YIFZM" id="4dN2CWECdWa" role="37wK5m">
                <ref role="1Pybhc" to="g1qu:~JBUI" resolve="JBUI" />
                <ref role="37wK5l" to="g1qu:~JBUI.size(int,int)" resolve="size" />
                <node concept="3cmrfG" id="4dN2CWECdWb" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="3cmrfG" id="4dN2CWECdWc" role="37wK5m">
                  <property role="3cmrfH" value="85" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4dN2CWECdK1" role="3cqZAp">
          <node concept="2OqwBi" id="4dN2CWECdVs" role="3clFbG">
            <node concept="37vLTw" id="4dN2CWECdNS" role="2Oq$k0">
              <ref role="3cqZAo" node="4dN2CWECdJJ" resolve="result" />
            </node>
            <node concept="liA8E" id="4dN2CWECdVt" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setBorder(javax.swing.border.Border)" resolve="setBorder" />
              <node concept="2YIFZM" id="4dN2CWECdWe" role="37wK5m">
                <ref role="1Pybhc" to="dxuu:~BorderFactory" resolve="BorderFactory" />
                <ref role="37wK5l" to="dxuu:~BorderFactory.createEtchedBorder()" resolve="createEtchedBorder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4dN2CWECdK4" role="3cqZAp">
          <node concept="37vLTw" id="4dN2CWECdK5" role="3cqZAk">
            <ref role="3cqZAo" node="4dN2CWECdJJ" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4dN2CWECdK6" role="1B3o_S" />
      <node concept="3uibUv" id="4dN2CWECdK7" role="3clF45">
        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
      </node>
    </node>
    <node concept="2tJIrI" id="6sOiBHkFqvw" role="jymVt" />
    <node concept="2YIFZL" id="4dN2CWEA6L9" role="jymVt">
      <property role="TrG5h" value="renderRow" />
      <node concept="37vLTG" id="4dN2CWEA6La" role="3clF46">
        <property role="TrG5h" value="checkBox" />
        <node concept="3uibUv" id="4dN2CWEA6Lb" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~JCheckBox" resolve="JCheckBox" />
        </node>
      </node>
      <node concept="37vLTG" id="4dN2CWEA6Lc" role="3clF46">
        <property role="TrG5h" value="icon" />
        <node concept="3uibUv" id="4dN2CWEA6Ld" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
        </node>
      </node>
      <node concept="37vLTG" id="4dN2CWEA6Le" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="17QB3L" id="40SlAqZ89yD" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="4dN2CWEA6Lg" role="3clF47">
        <node concept="3clFbF" id="4dN2CWEA6Lh" role="3cqZAp">
          <node concept="2OqwBi" id="4dN2CWEA6NL" role="3clFbG">
            <node concept="37vLTw" id="4dN2CWEA6M2" role="2Oq$k0">
              <ref role="3cqZAo" node="4dN2CWEA6La" resolve="checkBox" />
            </node>
            <node concept="liA8E" id="4dN2CWEA6NM" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~AbstractButton.setText(java.lang.String)" resolve="setText" />
              <node concept="Xl_RD" id="4dN2CWEA6NN" role="37wK5m">
                <property role="Xl_RC" value="" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7bYj6bADi3B" role="3cqZAp">
          <node concept="2YIFZM" id="7bYj6bADi3D" role="3clFbG">
            <ref role="1Pybhc" to="pvli:~AccessibleContextUtil" resolve="AccessibleContextUtil" />
            <ref role="37wK5l" to="pvli:~AccessibleContextUtil.setName(java.awt.Component,java.lang.String)" resolve="setName" />
            <node concept="37vLTw" id="7bYj6bADi3E" role="37wK5m">
              <ref role="3cqZAo" node="4dN2CWEA6La" resolve="checkBox" />
            </node>
            <node concept="37vLTw" id="7bYj6bADi3F" role="37wK5m">
              <ref role="3cqZAo" node="4dN2CWEA6Le" resolve="text" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4dN2CWEA6Ll" role="3cqZAp">
          <node concept="3cpWsn" id="4dN2CWEA6Lk" role="3cpWs9">
            <property role="TrG5h" value="content" />
            <node concept="3uibUv" id="4dN2CWEA6Lm" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JLabel" resolve="JLabel" />
            </node>
            <node concept="2ShNRf" id="4dN2CWEA6M5" role="33vP2m">
              <node concept="1pGfFk" id="4dN2CWEA6Mz" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String,javax.swing.Icon,int)" resolve="JLabel" />
                <node concept="37vLTw" id="4dN2CWEA6M$" role="37wK5m">
                  <ref role="3cqZAo" node="4dN2CWEA6Le" resolve="text" />
                </node>
                <node concept="37vLTw" id="4dN2CWEA6M_" role="37wK5m">
                  <ref role="3cqZAo" node="4dN2CWEA6Lc" resolve="icon" />
                </node>
                <node concept="10M0yZ" id="4dN2CWEA6NP" role="37wK5m">
                  <ref role="1PxDUh" to="dxuu:~SwingConstants" resolve="SwingConstants" />
                  <ref role="3cqZAo" to="dxuu:~SwingConstants.LEADING" resolve="LEADING" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4dN2CWEA6Lr" role="3cqZAp">
          <node concept="2OqwBi" id="4dN2CWEA6NZ" role="3clFbG">
            <node concept="37vLTw" id="4dN2CWEA6MC" role="2Oq$k0">
              <ref role="3cqZAo" node="4dN2CWEA6Lk" resolve="content" />
            </node>
            <node concept="liA8E" id="4dN2CWEA6O0" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setFont(java.awt.Font)" resolve="setFont" />
              <node concept="2OqwBi" id="4dN2CWEA6Q3" role="37wK5m">
                <node concept="37vLTw" id="4dN2CWEA6PD" role="2Oq$k0">
                  <ref role="3cqZAo" node="4dN2CWEA6La" resolve="checkBox" />
                </node>
                <node concept="liA8E" id="4dN2CWEA6Q4" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Component.getFont()" resolve="getFont" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4dN2CWEA6Lu" role="3cqZAp">
          <node concept="2OqwBi" id="4dN2CWEA6Ob" role="3clFbG">
            <node concept="37vLTw" id="4dN2CWEA6MG" role="2Oq$k0">
              <ref role="3cqZAo" node="4dN2CWEA6Lk" resolve="content" />
            </node>
            <node concept="liA8E" id="4dN2CWEA6Oc" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setForeground(java.awt.Color)" resolve="setForeground" />
              <node concept="2OqwBi" id="4dN2CWEA6Qd" role="37wK5m">
                <node concept="37vLTw" id="4dN2CWEA6PG" role="2Oq$k0">
                  <ref role="3cqZAo" node="4dN2CWEA6La" resolve="checkBox" />
                </node>
                <node concept="liA8E" id="4dN2CWEA6Qe" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Component.getForeground()" resolve="getForeground" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4dN2CWEA6Lx" role="3cqZAp">
          <node concept="2OqwBi" id="4dN2CWEA6On" role="3clFbG">
            <node concept="37vLTw" id="4dN2CWEA6MK" role="2Oq$k0">
              <ref role="3cqZAo" node="4dN2CWEA6Lk" resolve="content" />
            </node>
            <node concept="liA8E" id="4dN2CWEA6Oo" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setBackground(java.awt.Color)" resolve="setBackground" />
              <node concept="2OqwBi" id="4dN2CWEA6Qn" role="37wK5m">
                <node concept="37vLTw" id="4dN2CWEA6PJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="4dN2CWEA6La" resolve="checkBox" />
                </node>
                <node concept="liA8E" id="4dN2CWEA6Qo" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Component.getBackground()" resolve="getBackground" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4dN2CWEA6L$" role="3cqZAp">
          <node concept="2OqwBi" id="4dN2CWEA6Oz" role="3clFbG">
            <node concept="37vLTw" id="4dN2CWEA6MO" role="2Oq$k0">
              <ref role="3cqZAo" node="4dN2CWEA6Lk" resolve="content" />
            </node>
            <node concept="liA8E" id="4dN2CWEA6O$" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setEnabled(boolean)" resolve="setEnabled" />
              <node concept="2OqwBi" id="4dN2CWEA6Qx" role="37wK5m">
                <node concept="37vLTw" id="4dN2CWEA6PM" role="2Oq$k0">
                  <ref role="3cqZAo" node="4dN2CWEA6La" resolve="checkBox" />
                </node>
                <node concept="liA8E" id="4dN2CWEA6Qy" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Component.isEnabled()" resolve="isEnabled" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4dN2CWEA6LB" role="3cqZAp">
          <node concept="2OqwBi" id="4dN2CWEA6OJ" role="3clFbG">
            <node concept="37vLTw" id="4dN2CWEA6MS" role="2Oq$k0">
              <ref role="3cqZAo" node="4dN2CWEA6Lk" resolve="content" />
            </node>
            <node concept="liA8E" id="4dN2CWEA6OK" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setOpaque(boolean)" resolve="setOpaque" />
              <node concept="3clFbT" id="4dN2CWEA6OL" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4dN2CWEA6LF" role="3cqZAp">
          <node concept="3cpWsn" id="4dN2CWEA6LE" role="3cpWs9">
            <property role="TrG5h" value="row" />
            <node concept="3uibUv" id="4dN2CWEA6LG" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
            </node>
            <node concept="2ShNRf" id="4dN2CWEA6MV" role="33vP2m">
              <node concept="1pGfFk" id="4dN2CWEA6Nl" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;(java.awt.LayoutManager)" resolve="JPanel" />
                <node concept="2ShNRf" id="4dN2CWEA6OM" role="37wK5m">
                  <node concept="1pGfFk" id="4dN2CWEA6OP" role="2ShVmc">
                    <ref role="37wK5l" to="z60i:~BorderLayout.&lt;init&gt;()" resolve="BorderLayout" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4dN2CWEA6LJ" role="3cqZAp">
          <node concept="2OqwBi" id="4dN2CWEA6OZ" role="3clFbG">
            <node concept="37vLTw" id="4dN2CWEA6No" role="2Oq$k0">
              <ref role="3cqZAo" node="4dN2CWEA6LE" resolve="row" />
            </node>
            <node concept="liA8E" id="4dN2CWEA6P0" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
              <node concept="37vLTw" id="4dN2CWEA6P1" role="37wK5m">
                <ref role="3cqZAo" node="4dN2CWEA6La" resolve="checkBox" />
              </node>
              <node concept="10M0yZ" id="4dN2CWEA6PP" role="37wK5m">
                <ref role="1PxDUh" to="z60i:~BorderLayout" resolve="BorderLayout" />
                <ref role="3cqZAo" to="z60i:~BorderLayout.WEST" resolve="WEST" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4dN2CWEA6LN" role="3cqZAp">
          <node concept="2OqwBi" id="4dN2CWEA6Pc" role="3clFbG">
            <node concept="37vLTw" id="4dN2CWEA6Nt" role="2Oq$k0">
              <ref role="3cqZAo" node="4dN2CWEA6LE" resolve="row" />
            </node>
            <node concept="liA8E" id="4dN2CWEA6Pd" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
              <node concept="37vLTw" id="4dN2CWEA6Pe" role="37wK5m">
                <ref role="3cqZAo" node="4dN2CWEA6Lk" resolve="content" />
              </node>
              <node concept="10M0yZ" id="4dN2CWEA6PR" role="37wK5m">
                <ref role="1PxDUh" to="z60i:~BorderLayout" resolve="BorderLayout" />
                <ref role="3cqZAo" to="z60i:~BorderLayout.CENTER" resolve="CENTER" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4dN2CWEA6LR" role="3cqZAp">
          <node concept="2OqwBi" id="4dN2CWEA6Pp" role="3clFbG">
            <node concept="37vLTw" id="4dN2CWEA6Ny" role="2Oq$k0">
              <ref role="3cqZAo" node="4dN2CWEA6LE" resolve="row" />
            </node>
            <node concept="liA8E" id="4dN2CWEA6Pq" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setBackground(java.awt.Color)" resolve="setBackground" />
              <node concept="2OqwBi" id="4dN2CWEA6QF" role="37wK5m">
                <node concept="37vLTw" id="4dN2CWEA6PT" role="2Oq$k0">
                  <ref role="3cqZAo" node="4dN2CWEA6La" resolve="checkBox" />
                </node>
                <node concept="liA8E" id="4dN2CWEA6QG" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Component.getBackground()" resolve="getBackground" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4dN2CWEA6LU" role="3cqZAp">
          <node concept="2OqwBi" id="4dN2CWEA6P_" role="3clFbG">
            <node concept="37vLTw" id="4dN2CWEA6NA" role="2Oq$k0">
              <ref role="3cqZAo" node="4dN2CWEA6LE" resolve="row" />
            </node>
            <node concept="liA8E" id="4dN2CWEA6PA" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setOpaque(boolean)" resolve="setOpaque" />
              <node concept="3clFbT" id="4dN2CWEA6PB" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="7bYj6bAKrIv" role="3cqZAp">
          <node concept="1PaTwC" id="7bYj6bAKrIz" role="1aUNEU">
            <node concept="3oM_SD" id="7bYj6bAKrI_" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="7bYj6bAKrIA" role="1PaTwD">
              <property role="3oM_SC" value="list" />
            </node>
            <node concept="3oM_SD" id="7bYj6bAKrIB" role="1PaTwD">
              <property role="3oM_SC" value="puts" />
            </node>
            <node concept="3oM_SD" id="7bYj6bAKrIC" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="7bYj6bAKrID" role="1PaTwD">
              <property role="3oM_SC" value="focus" />
            </node>
            <node concept="3oM_SD" id="7bYj6bAKrIE" role="1PaTwD">
              <property role="3oM_SC" value="border" />
            </node>
            <node concept="3oM_SD" id="7bYj6bAKrIF" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="7bYj6bAKrIG" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="7bYj6bAKrIH" role="1PaTwD">
              <property role="3oM_SC" value="checkbox" />
            </node>
            <node concept="3oM_SD" id="7bYj6bAKrII" role="1PaTwD">
              <property role="3oM_SC" value="so" />
            </node>
            <node concept="3oM_SD" id="7bYj6bAKrIJ" role="1PaTwD">
              <property role="3oM_SC" value="move" />
            </node>
            <node concept="3oM_SD" id="7bYj6bAKrIK" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="7bYj6bAKrIL" role="1PaTwD">
              <property role="3oM_SC" value="out" />
            </node>
            <node concept="3oM_SD" id="7bYj6bAKrIM" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="7bYj6bAKrIN" role="1PaTwD">
              <property role="3oM_SC" value="frame" />
            </node>
            <node concept="3oM_SD" id="7bYj6bAKrIO" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="7bYj6bAKrIP" role="1PaTwD">
              <property role="3oM_SC" value="whole" />
            </node>
            <node concept="3oM_SD" id="7bYj6bAKrIQ" role="1PaTwD">
              <property role="3oM_SC" value="row" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7bYj6bAK3I3" role="3cqZAp">
          <node concept="2OqwBi" id="7bYj6bAK3Iu" role="3clFbG">
            <node concept="37vLTw" id="7bYj6bAK3Ic" role="2Oq$k0">
              <ref role="3cqZAo" node="4dN2CWEA6LE" resolve="row" />
            </node>
            <node concept="liA8E" id="7bYj6bAK3Iv" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setBorder(javax.swing.border.Border)" resolve="setBorder" />
              <node concept="2OqwBi" id="7bYj6bAK3IT" role="37wK5m">
                <node concept="37vLTw" id="7bYj6bAK3IJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="4dN2CWEA6La" resolve="checkBox" />
                </node>
                <node concept="liA8E" id="7bYj6bAK3IU" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~JComponent.getBorder()" resolve="getBorder" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7bYj6bAK3I6" role="3cqZAp">
          <node concept="2OqwBi" id="7bYj6bAK3ID" role="3clFbG">
            <node concept="37vLTw" id="7bYj6bAK3Ii" role="2Oq$k0">
              <ref role="3cqZAo" node="4dN2CWEA6La" resolve="checkBox" />
            </node>
            <node concept="liA8E" id="7bYj6bAK3IE" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setBorder(javax.swing.border.Border)" resolve="setBorder" />
              <node concept="10Nm6u" id="7bYj6bAK3IF" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4dN2CWEA6LX" role="3cqZAp">
          <node concept="37vLTw" id="4dN2CWEA6LY" role="3cqZAk">
            <ref role="3cqZAo" node="4dN2CWEA6LE" resolve="row" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4dN2CWEA6LZ" role="1B3o_S" />
      <node concept="3uibUv" id="4dN2CWEA6M0" role="3clF45">
        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
      </node>
    </node>
    <node concept="2tJIrI" id="4dN2CWEBOBD" role="jymVt" />
    <node concept="2YIFZL" id="4dN2CWE_oBF" role="jymVt">
      <property role="TrG5h" value="presentation" />
      <node concept="37vLTG" id="4dN2CWE_oBG" role="3clF46">
        <property role="TrG5h" value="ref" />
        <node concept="3uibUv" id="4dN2CWE_oBH" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
        </node>
      </node>
      <node concept="3clFbS" id="4dN2CWE_oBI" role="3clF47">
        <node concept="3clFbJ" id="4dN2CWE_oBJ" role="3cqZAp">
          <node concept="3clFbC" id="4dN2CWE_oBK" role="3clFbw">
            <node concept="37vLTw" id="4dN2CWE_oBL" role="3uHU7B">
              <ref role="3cqZAo" node="4dN2CWE_oBG" resolve="ref" />
            </node>
            <node concept="10Nm6u" id="4dN2CWE_oBM" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="4dN2CWE_oBO" role="3clFbx">
            <node concept="3cpWs6" id="4dN2CWE_oBP" role="3cqZAp">
              <node concept="Xl_RD" id="4dN2CWE_oBQ" role="3cqZAk">
                <property role="Xl_RC" value="" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4dN2CWE_oBS" role="3cqZAp">
          <node concept="3cpWsn" id="4dN2CWE_oBR" role="3cpWs9">
            <property role="TrG5h" value="module" />
            <node concept="3uibUv" id="4dN2CWE_oBT" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
            </node>
            <node concept="2OqwBi" id="4dN2CWE_oCJ" role="33vP2m">
              <node concept="37vLTw" id="4dN2CWE_oCo" role="2Oq$k0">
                <ref role="3cqZAo" node="4dN2CWE_oBG" resolve="ref" />
              </node>
              <node concept="liA8E" id="4dN2CWE_oCK" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModelReference.getModuleReference()" resolve="getModuleReference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4dN2CWE_oBW" role="3cqZAp">
          <node concept="3cpWsn" id="4dN2CWE_oBV" role="3cpWs9">
            <property role="TrG5h" value="moduleName" />
            <node concept="17QB3L" id="40SlAqZ81sp" role="1tU5fm" />
            <node concept="1eOMI4" id="4dN2CWE_oC4" role="33vP2m">
              <node concept="3K4zz7" id="4dN2CWE_oC3" role="1eOMHV">
                <node concept="3clFbC" id="4dN2CWE_oBY" role="3K4Cdx">
                  <node concept="37vLTw" id="4dN2CWE_oBZ" role="3uHU7B">
                    <ref role="3cqZAo" node="4dN2CWE_oBR" resolve="module" />
                  </node>
                  <node concept="10Nm6u" id="4dN2CWE_oC0" role="3uHU7w" />
                </node>
                <node concept="10Nm6u" id="4dN2CWE_oC1" role="3K4E3e" />
                <node concept="2OqwBi" id="4dN2CWE_oCV" role="3K4GZi">
                  <node concept="37vLTw" id="4dN2CWE_oCr" role="2Oq$k0">
                    <ref role="3cqZAo" node="4dN2CWE_oBR" resolve="module" />
                  </node>
                  <node concept="liA8E" id="4dN2CWE_oCW" role="2OqNvi">
                    <ref role="37wK5l" to="lui2:~SModuleReference.getModuleName()" resolve="getModuleName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4dN2CWE_oC5" role="3cqZAp">
          <node concept="1eOMI4" id="4dN2CWE_oCk" role="3cqZAk">
            <node concept="3K4zz7" id="4dN2CWE_oCj" role="1eOMHV">
              <node concept="22lmx$" id="4dN2CWE_oC6" role="3K4Cdx">
                <node concept="3clFbC" id="4dN2CWE_oC7" role="3uHU7B">
                  <node concept="37vLTw" id="4dN2CWE_oC8" role="3uHU7B">
                    <ref role="3cqZAo" node="4dN2CWE_oBV" resolve="moduleName" />
                  </node>
                  <node concept="10Nm6u" id="4dN2CWE_oC9" role="3uHU7w" />
                </node>
                <node concept="2OqwBi" id="4dN2CWE_oDb" role="3uHU7w">
                  <node concept="37vLTw" id="4dN2CWE_oCu" role="2Oq$k0">
                    <ref role="3cqZAo" node="4dN2CWE_oBV" resolve="moduleName" />
                  </node>
                  <node concept="liA8E" id="4dN2CWE_oDc" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.isEmpty()" resolve="isEmpty" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="4dN2CWE_oDm" role="3K4E3e">
                <node concept="37vLTw" id="4dN2CWE_oCx" role="2Oq$k0">
                  <ref role="3cqZAo" node="4dN2CWE_oBG" resolve="ref" />
                </node>
                <node concept="liA8E" id="4dN2CWE_oDn" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModelReference.getModelName()" resolve="getModelName" />
                </node>
              </node>
              <node concept="3cpWs3" id="4dN2CWE_oCc" role="3K4GZi">
                <node concept="3cpWs3" id="4dN2CWE_oCd" role="3uHU7B">
                  <node concept="3cpWs3" id="4dN2CWE_oCe" role="3uHU7B">
                    <node concept="2OqwBi" id="4dN2CWE_oDx" role="3uHU7B">
                      <node concept="37vLTw" id="4dN2CWE_oC$" role="2Oq$k0">
                        <ref role="3cqZAo" node="4dN2CWE_oBG" resolve="ref" />
                      </node>
                      <node concept="liA8E" id="4dN2CWE_oDy" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SModelReference.getModelName()" resolve="getModelName" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="4dN2CWE_oCg" role="3uHU7w">
                      <property role="Xl_RC" value=" (" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="4dN2CWE_oCh" role="3uHU7w">
                    <ref role="3cqZAo" node="4dN2CWE_oBV" resolve="moduleName" />
                  </node>
                </node>
                <node concept="Xl_RD" id="4dN2CWE_oCi" role="3uHU7w">
                  <property role="Xl_RC" value=")" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4dN2CWE_oCl" role="1B3o_S" />
      <node concept="17QB3L" id="40SlAqZ7Tho" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4dN2CWEBZjH" role="jymVt" />
    <node concept="2YIFZL" id="4dN2CWE_IxR" role="jymVt">
      <property role="TrG5h" value="selectionState" />
      <node concept="37vLTG" id="4dN2CWE_IxS" role="3clF46">
        <property role="TrG5h" value="list" />
        <node concept="3uibUv" id="4dN2CWE_IxT" role="1tU5fm">
          <ref role="3uigEE" to="lzb2:~CheckBoxList" resolve="CheckBoxList" />
        </node>
      </node>
      <node concept="3clFbS" id="4dN2CWE_IxU" role="3clF47">
        <node concept="3cpWs8" id="4dN2CWE_IxW" role="3cqZAp">
          <node concept="3cpWsn" id="4dN2CWE_IxV" role="3cpWs9">
            <property role="TrG5h" value="selected" />
            <node concept="10Oyi0" id="4dN2CWE_IxX" role="1tU5fm" />
            <node concept="3cmrfG" id="4dN2CWE_IxY" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="4dN2CWE_IxZ" role="3cqZAp">
          <node concept="3cpWsn" id="4dN2CWE_Iy0" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="4dN2CWE_Iy2" role="1tU5fm" />
            <node concept="3cmrfG" id="4dN2CWE_Iy3" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="4dN2CWE_Iy4" role="1Dwp0S">
            <node concept="37vLTw" id="4dN2CWE_Iy5" role="3uHU7B">
              <ref role="3cqZAo" node="4dN2CWE_Iy0" resolve="i" />
            </node>
            <node concept="2OqwBi" id="4dN2CWE_JER" role="3uHU7w">
              <node concept="37vLTw" id="4dN2CWE_J_H" role="2Oq$k0">
                <ref role="3cqZAo" node="4dN2CWE_IxS" resolve="list" />
              </node>
              <node concept="liA8E" id="4dN2CWE_JES" role="2OqNvi">
                <ref role="37wK5l" to="qqrq:~JBList.getItemsCount()" resolve="getItemsCount" />
              </node>
            </node>
          </node>
          <node concept="3uNrnE" id="4dN2CWE_Iy8" role="1Dwrff">
            <node concept="37vLTw" id="4dN2CWE_Iy9" role="2$L3a6">
              <ref role="3cqZAo" node="4dN2CWE_Iy0" resolve="i" />
            </node>
          </node>
          <node concept="3clFbS" id="4dN2CWE_Iyb" role="2LFqv$">
            <node concept="3clFbJ" id="4dN2CWE_Iyc" role="3cqZAp">
              <node concept="2OqwBi" id="4dN2CWE_JJO" role="3clFbw">
                <node concept="37vLTw" id="4dN2CWE_J_K" role="2Oq$k0">
                  <ref role="3cqZAo" node="4dN2CWE_IxS" resolve="list" />
                </node>
                <node concept="liA8E" id="4dN2CWE_JJP" role="2OqNvi">
                  <ref role="37wK5l" to="lzb2:~CheckBoxList.isItemSelected(int)" resolve="isItemSelected" />
                  <node concept="37vLTw" id="4dN2CWE_JJQ" role="37wK5m">
                    <ref role="3cqZAo" node="4dN2CWE_Iy0" resolve="i" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="4dN2CWE_Iyg" role="3clFbx">
                <node concept="3clFbF" id="4dN2CWE_Iyh" role="3cqZAp">
                  <node concept="3uNrnE" id="4dN2CWE_Iyi" role="3clFbG">
                    <node concept="37vLTw" id="4dN2CWE_Iyj" role="2$L3a6">
                      <ref role="3cqZAo" node="4dN2CWE_IxV" resolve="selected" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4dN2CWE_Iyk" role="3cqZAp">
          <node concept="3clFbC" id="4dN2CWE_Iyl" role="3clFbw">
            <node concept="37vLTw" id="4dN2CWE_Iym" role="3uHU7B">
              <ref role="3cqZAo" node="4dN2CWE_IxV" resolve="selected" />
            </node>
            <node concept="3cmrfG" id="4dN2CWE_Iyn" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3clFbS" id="4dN2CWE_Iyp" role="3clFbx">
            <node concept="3cpWs6" id="4dN2CWE_Iyq" role="3cqZAp">
              <node concept="Rm8GO" id="4dN2CWE_J_O" role="3cqZAk">
                <ref role="1Px2BO" to="g1qu:~ThreeStateCheckBox$State" resolve="ThreeStateCheckBox.State" />
                <ref role="Rm8GQ" to="g1qu:~ThreeStateCheckBox$State.NOT_SELECTED" resolve="NOT_SELECTED" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4dN2CWE_Iys" role="3cqZAp">
          <node concept="1eOMI4" id="4dN2CWE_Iyz" role="3cqZAk">
            <node concept="3K4zz7" id="4dN2CWE_Iyy" role="1eOMHV">
              <node concept="3clFbC" id="4dN2CWE_Iyt" role="3K4Cdx">
                <node concept="37vLTw" id="4dN2CWE_Iyu" role="3uHU7B">
                  <ref role="3cqZAo" node="4dN2CWE_IxV" resolve="selected" />
                </node>
                <node concept="2OqwBi" id="4dN2CWE_JOM" role="3uHU7w">
                  <node concept="37vLTw" id="4dN2CWE_J_Q" role="2Oq$k0">
                    <ref role="3cqZAo" node="4dN2CWE_IxS" resolve="list" />
                  </node>
                  <node concept="liA8E" id="4dN2CWE_JON" role="2OqNvi">
                    <ref role="37wK5l" to="qqrq:~JBList.getItemsCount()" resolve="getItemsCount" />
                  </node>
                </node>
              </node>
              <node concept="Rm8GO" id="4dN2CWE_J_T" role="3K4E3e">
                <ref role="1Px2BO" to="g1qu:~ThreeStateCheckBox$State" resolve="ThreeStateCheckBox.State" />
                <ref role="Rm8GQ" to="g1qu:~ThreeStateCheckBox$State.SELECTED" resolve="SELECTED" />
              </node>
              <node concept="Rm8GO" id="4dN2CWE_J_V" role="3K4GZi">
                <ref role="1Px2BO" to="g1qu:~ThreeStateCheckBox$State" resolve="ThreeStateCheckBox.State" />
                <ref role="Rm8GQ" to="g1qu:~ThreeStateCheckBox$State.DONT_CARE" resolve="DONT_CARE" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4dN2CWE_Iy$" role="1B3o_S" />
      <node concept="3uibUv" id="4dN2CWE_Iy_" role="3clF45">
        <ref role="3uigEE" to="g1qu:~ThreeStateCheckBox$State" resolve="ThreeStateCheckBox.State" />
      </node>
    </node>
  </node>
</model>

