<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:e59b0550-8a55-4ba7-959c-684743b5ee3c(jetbrains.mps.lang.test.junit5)">
  <persistence version="9" />
  <languages>
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="3" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
    <use id="acfc188d-d5d6-4598-b370-6f4a983f05b2" name="jetbrains.mps.baseLanguage.methodReferences" version="0" />
  </languages>
  <imports>
    <import index="asz6" ref="r:067fd2c9-d009-4506-91db-a69992d65964(jetbrains.mps.tool.common)" />
    <import index="79ha" ref="r:2876f1ee-0b45-4db5-8c09-0682cdee5c67(jetbrains.mps.tool.environment)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="wyuk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.components(MPS.Core/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="bd8o" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.application(MPS.IDEA/)" />
    <import index="ab4o" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.vfs.newvfs.impl(MPS.IDEA/)" />
    <import index="1ctc" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.stream(JDK/)" />
    <import index="3ju5" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.vfs(MPS.Core/)" />
    <import index="32g5" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.library(MPS.Core/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="n4ib" ref="49808fad-9d41-4b96-83fa-9231640f6b2b/java:org.junit.platform.engine(JUnit/)" />
    <import index="s3rp" ref="49808fad-9d41-4b96-83fa-9231640f6b2b/java:org.junit.platform.engine.discovery(JUnit/)" />
    <import index="z4cc" ref="49808fad-9d41-4b96-83fa-9231640f6b2b/java:org.junit.platform.launcher.core(JUnit/)" />
    <import index="bws1" ref="49808fad-9d41-4b96-83fa-9231640f6b2b/java:org.junit.platform.launcher(JUnit/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="pzze" ref="r:c7043e16-5749-4bab-81f7-bab46752ca63(jetbrains.mps.lang.test.junit5.tcutil)" />
    <import index="zi5z" ref="49808fad-9d41-4b96-83fa-9231640f6b2b/java:org.junit.platform.commons(JUnit/)" />
    <import index="7c1v" ref="63b449db-0918-4a4a-a891-2c430ab133e4/java:org.junit.platform.reporting.legacy.xml(org.junit.junit5/)" />
    <import index="fojo" ref="63b449db-0918-4a4a-a891-2c430ab133e4/java:org.junit.platform.reporting.open.xml(org.junit.junit5/)" />
    <import index="4u8o" ref="r:a7abd5f1-5d9a-4c90-a542-3e14c173186d(jetbrains.mps.baseLanguage.unitTest.platform)" />
    <import index="3qmy" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.classloading(MPS.Core/)" />
    <import index="pa15" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.persistence(MPS.Core/)" />
    <import index="b0pz" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project.facets(MPS.Core/)" />
    <import index="canb" ref="49808fad-9d41-4b96-83fa-9231640f6b2b/java:org.junit.platform.engine.support.store(JUnit/)" />
    <import index="anz6" ref="320a7d92-2f09-4a63-9adc-ee2fc4d9ea30/java:com.intellij.testFramework(MPS.IDEA.testFramework/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
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
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
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
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
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
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
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
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
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
        <child id="4972241301747169160" name="typeArgument" index="3PaCim" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
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
      <concept id="3093926081414150598" name="jetbrains.mps.baseLanguage.structure.MultipleCatchClause" flags="ng" index="3uVAMA">
        <child id="8276990574895933173" name="catchBody" index="1zc67A" />
        <child id="8276990574895933172" name="throwable" index="1zc67B" />
      </concept>
      <concept id="8276990574909231788" name="jetbrains.mps.baseLanguage.structure.FinallyClause" flags="ng" index="1wplmZ">
        <child id="8276990574909234106" name="finallyBody" index="1wplMD" />
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
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="5351203823916832286" name="jetbrains.mps.baseLanguage.structure.ResourceVariable" flags="ng" index="3J1hQo" />
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="nn" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367509" name="finallyClause" index="1zxBo6" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
        <child id="5351203823916750334" name="resource" index="3J1_TS" />
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
      <concept id="5085607816306633585" name="jetbrains.mps.baseLanguage.javadoc.structure.CodeInlineDocTagTE" flags="ng" index="1VuTSG" />
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
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1171315804604" name="jetbrains.mps.lang.smodel.structure.Model_RootsOperation" flags="nn" index="2RRcyG" />
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
  <node concept="312cEu" id="4MVYzzgkpMq">
    <property role="TrG5h" value="ScriptJUnit5Launcher" />
    <node concept="2tJIrI" id="5gsHVK$L1$d" role="jymVt" />
    <node concept="312cEg" id="7MSVDs2_8tx" role="jymVt">
      <property role="TrG5h" value="myEnvironment" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tmbuc" id="3OA_Uj9h7Qq" role="1B3o_S" />
      <node concept="3uibUv" id="7MSVDs2_8t$" role="1tU5fm">
        <ref role="3uigEE" to="79ha:HKKzfMjqRV" resolve="Environment" />
      </node>
    </node>
    <node concept="2tJIrI" id="5TX$EBEb1HT" role="jymVt" />
    <node concept="312cEg" id="7MSVDs2A7en" role="jymVt">
      <property role="TrG5h" value="myWorkerCallback" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7MSVDs2A7eo" role="1B3o_S" />
      <node concept="3uibUv" id="7MSVDs2A7eq" role="1tU5fm">
        <ref role="3uigEE" to="asz6:7MSVDs2AdGA" resolve="WorkerCallback" />
      </node>
    </node>
    <node concept="312cEg" id="5tXD4tz76hQ" role="jymVt">
      <property role="TrG5h" value="myTestSupplier" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5tXD4tz74F8" role="1B3o_S" />
      <node concept="3uibUv" id="5tXD4tz76aM" role="1tU5fm">
        <ref role="3uigEE" node="1wWWPEu9Bc8" resolve="JUnit5TestContributor" />
      </node>
    </node>
    <node concept="312cEg" id="7MSVDs2AkBw" role="jymVt">
      <property role="TrG5h" value="myTestProjectDir" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7MSVDs2AkBx" role="1B3o_S" />
      <node concept="3uibUv" id="7MSVDs2AkBz" role="1tU5fm">
        <ref role="3uigEE" to="guwi:~File" resolve="File" />
      </node>
    </node>
    <node concept="2tJIrI" id="5EMxBKzIf7P" role="jymVt" />
    <node concept="312cEg" id="5EMxBKzIpPk" role="jymVt">
      <property role="TrG5h" value="myOutputDir" />
      <node concept="3Tm6S6" id="5EMxBKzIj1K" role="1B3o_S" />
      <node concept="3uibUv" id="5EMxBKzIoBk" role="1tU5fm">
        <ref role="3uigEE" to="guwi:~File" resolve="File" />
      </node>
    </node>
    <node concept="312cEg" id="5EMxBKzIuP7" role="jymVt">
      <property role="TrG5h" value="myIsOpenTestReport" />
      <node concept="3Tm6S6" id="5EMxBKzIsK7" role="1B3o_S" />
      <node concept="10P_77" id="5EMxBKzIuHn" role="1tU5fm" />
      <node concept="3clFbT" id="5EMxBKzIwNg" role="33vP2m" />
    </node>
    <node concept="312cEg" id="5EMxBKzJ8Dn" role="jymVt">
      <property role="TrG5h" value="myNeedTeamCityReport" />
      <node concept="3Tm6S6" id="5EMxBKzJ8Do" role="1B3o_S" />
      <node concept="10P_77" id="5EMxBKzJ8Dp" role="1tU5fm" />
      <node concept="3clFbT" id="5EMxBKzJ8Dq" role="33vP2m" />
    </node>
    <node concept="2tJIrI" id="5OG2WehV80f" role="jymVt" />
    <node concept="312cEg" id="5OG2WehV8V4" role="jymVt">
      <property role="TrG5h" value="myTestSession" />
      <node concept="3Tm6S6" id="5OG2WehV8V5" role="1B3o_S" />
      <node concept="3uibUv" id="5OG2WehV8V7" role="1tU5fm">
        <ref role="3uigEE" to="4u8o:4rQ9_5dBfWe" resolve="TestSession" />
      </node>
    </node>
    <node concept="2tJIrI" id="5OG2WehV8A8" role="jymVt" />
    <node concept="2tJIrI" id="7MSVDs2_bxg" role="jymVt" />
    <node concept="3clFbW" id="4MVYzzgkMum" role="jymVt">
      <node concept="37vLTG" id="7MSVDs2AjiY" role="3clF46">
        <property role="TrG5h" value="environment" />
        <node concept="3uibUv" id="7MSVDs2AjrC" role="1tU5fm">
          <ref role="3uigEE" to="79ha:HKKzfMjqRV" resolve="Environment" />
        </node>
      </node>
      <node concept="37vLTG" id="5tXD4tz71vs" role="3clF46">
        <property role="TrG5h" value="testData" />
        <node concept="3uibUv" id="5tXD4tz71D1" role="1tU5fm">
          <ref role="3uigEE" to="asz6:5tXD4tyLjpu" resolve="TestData" />
        </node>
      </node>
      <node concept="37vLTG" id="7MSVDs2A6SB" role="3clF46">
        <property role="TrG5h" value="callback" />
        <node concept="3uibUv" id="7MSVDs2A6SC" role="1tU5fm">
          <ref role="3uigEE" to="asz6:7MSVDs2AdGA" resolve="WorkerCallback" />
        </node>
      </node>
      <node concept="37vLTG" id="5EMxBKzSjdr" role="3clF46">
        <property role="TrG5h" value="projectDir" />
        <node concept="3uibUv" id="5EMxBKzSjn4" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="3cqZAl" id="4MVYzzgkMuo" role="3clF45" />
      <node concept="3Tm1VV" id="4MVYzzgkMup" role="1B3o_S" />
      <node concept="3clFbS" id="4MVYzzgkMuq" role="3clF47">
        <node concept="1VxSAg" id="1G0B_lkGBtL" role="3cqZAp">
          <ref role="37wK5l" node="1G0B_lkG_8Z" resolve="ScriptJUnit5Launcher" />
          <node concept="37vLTw" id="1G0B_lkGBCk" role="37wK5m">
            <ref role="3cqZAo" node="7MSVDs2AjiY" resolve="environment" />
          </node>
          <node concept="2ShNRf" id="1G0B_lkGqlO" role="37wK5m">
            <node concept="1pGfFk" id="1G0B_lkGv2t" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" node="1G0B_lkFwJS" resolve="TestDiscoveryContributor" />
              <node concept="2OqwBi" id="1G0B_lkGvEp" role="37wK5m">
                <node concept="37vLTw" id="1G0B_lkGvvr" role="2Oq$k0">
                  <ref role="3cqZAo" node="7MSVDs2AjiY" resolve="environment" />
                </node>
                <node concept="liA8E" id="1G0B_lkGvSE" role="2OqNvi">
                  <ref role="37wK5l" to="79ha:8Pnvxgloc_" resolve="getPlatform" />
                </node>
              </node>
              <node concept="37vLTw" id="1G0B_lkGw7O" role="37wK5m">
                <ref role="3cqZAo" node="5tXD4tz71vs" resolve="testData" />
              </node>
              <node concept="37vLTw" id="1G0B_lkIk5A" role="37wK5m">
                <ref role="3cqZAo" node="7MSVDs2A6SB" resolve="callback" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="1G0B_lkGCu1" role="37wK5m">
            <ref role="3cqZAo" node="7MSVDs2A6SB" resolve="callback" />
          </node>
          <node concept="37vLTw" id="1G0B_lkGCPl" role="37wK5m">
            <ref role="3cqZAo" node="5EMxBKzSjdr" resolve="projectDir" />
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="5EMxBKzSjz_" role="lGtFl">
        <node concept="TUZQ0" id="5EMxBKzSjzC" role="3nqlJM">
          <property role="TUZQ4" value="" />
          <node concept="zr_55" id="5EMxBKzSjzE" role="zr_5Q">
            <ref role="zr_51" node="7MSVDs2AjiY" resolve="environment" />
          </node>
          <node concept="1PaTwC" id="1E1X3WHsCKk" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHsCKl" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsCKm" role="1PaTwD">
              <property role="3oM_SC" value="null." />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsCKn" role="1PaTwD">
              <property role="3oM_SC" value="need" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsCKo" role="1PaTwD">
              <property role="3oM_SC" value="Environment" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsCKp" role="1PaTwD">
              <property role="3oM_SC" value="here," />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsCKq" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsCKr" role="1PaTwD">
              <property role="3oM_SC" value="mps.Platform," />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsCKs" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsCKt" role="1PaTwD">
              <property role="3oM_SC" value="pass" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsCKu" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsCKv" role="1PaTwD">
              <property role="3oM_SC" value="down" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsCKw" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsCKx" role="1PaTwD">
              <property role="3oM_SC" value="EnvironmentAware" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsCKy" role="1PaTwD">
              <property role="3oM_SC" value="tests" />
            </node>
          </node>
        </node>
        <node concept="TUZQ0" id="5EMxBKzSjzF" role="3nqlJM">
          <property role="TUZQ4" value="" />
          <node concept="zr_55" id="5EMxBKzSjzH" role="zr_5Q">
            <ref role="zr_51" node="5tXD4tz71vs" resolve="testData" />
          </node>
          <node concept="1PaTwC" id="1E1X3WHsCKz" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHsCK$" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsCK_" role="1PaTwD">
              <property role="3oM_SC" value="null," />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsCKA" role="1PaTwD">
              <property role="3oM_SC" value="tells" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsCKB" role="1PaTwD">
              <property role="3oM_SC" value="which" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsCKC" role="1PaTwD">
              <property role="3oM_SC" value="tests" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsCKD" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsCKE" role="1PaTwD">
              <property role="3oM_SC" value="run" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsCKF" role="1PaTwD">
              <property role="3oM_SC" value="(or" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsCKG" role="1PaTwD">
              <property role="3oM_SC" value="which" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsCKH" role="1PaTwD">
              <property role="3oM_SC" value="modules" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsCKI" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsCKJ" role="1PaTwD">
              <property role="3oM_SC" value="search" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsCKK" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsCKL" role="1PaTwD">
              <property role="3oM_SC" value="auto-discovery)" />
            </node>
          </node>
        </node>
        <node concept="TUZQ0" id="5EMxBKzSjzI" role="3nqlJM">
          <property role="TUZQ4" value="" />
          <node concept="zr_55" id="5EMxBKzSjzK" role="zr_5Q">
            <ref role="zr_51" node="7MSVDs2A6SB" resolve="callback" />
          </node>
          <node concept="1PaTwC" id="1E1X3WHsCKM" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHsCKN" role="1PaTwD">
              <property role="3oM_SC" value="nt" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsCKO" role="1PaTwD">
              <property role="3oM_SC" value="null," />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsCKP" role="1PaTwD">
              <property role="3oM_SC" value="feedback" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsCKQ" role="1PaTwD">
              <property role="3oM_SC" value="mechanism" />
            </node>
          </node>
        </node>
        <node concept="TUZQ0" id="5EMxBKzSjzL" role="3nqlJM">
          <property role="TUZQ4" value="" />
          <node concept="zr_55" id="5EMxBKzSjzN" role="zr_5Q">
            <ref role="zr_51" node="5EMxBKzSjdr" resolve="projectDir" />
          </node>
          <node concept="1PaTwC" id="1E1X3WHsCKR" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHsCKS" role="1PaTwD">
              <property role="3oM_SC" value="optional" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsCKT" role="1PaTwD">
              <property role="3oM_SC" value="path" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsCKU" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsCKV" role="1PaTwD">
              <property role="3oM_SC" value="test" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsCKW" role="1PaTwD">
              <property role="3oM_SC" value="project" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsCKX" role="1PaTwD">
              <property role="3oM_SC" value="(the" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsCKY" role="1PaTwD">
              <property role="3oM_SC" value="one" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsCKZ" role="1PaTwD">
              <property role="3oM_SC" value="tests" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsCL0" role="1PaTwD">
              <property role="3oM_SC" value="would" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsCL1" role="1PaTwD">
              <property role="3oM_SC" value="open," />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsCL2" role="1PaTwD">
              <property role="3oM_SC" value="when/if" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsCL3" role="1PaTwD">
              <property role="3oM_SC" value="necessary)" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1G0B_lkGwTO" role="jymVt" />
    <node concept="3clFbW" id="1G0B_lkG_8Z" role="jymVt">
      <node concept="37vLTG" id="1G0B_lkGAJ2" role="3clF46">
        <property role="TrG5h" value="environment" />
        <node concept="3uibUv" id="1G0B_lkGAJ3" role="1tU5fm">
          <ref role="3uigEE" to="79ha:HKKzfMjqRV" resolve="Environment" />
        </node>
      </node>
      <node concept="37vLTG" id="1G0B_lkGAJ4" role="3clF46">
        <property role="TrG5h" value="testData" />
        <node concept="3uibUv" id="1G0B_lkGAJ5" role="1tU5fm">
          <ref role="3uigEE" node="1wWWPEu9Bc8" resolve="JUnit5TestContributor" />
        </node>
      </node>
      <node concept="37vLTG" id="1G0B_lkGAJ6" role="3clF46">
        <property role="TrG5h" value="callback" />
        <node concept="3uibUv" id="1G0B_lkGAJ7" role="1tU5fm">
          <ref role="3uigEE" to="asz6:7MSVDs2AdGA" resolve="WorkerCallback" />
        </node>
      </node>
      <node concept="37vLTG" id="1G0B_lkGAJ8" role="3clF46">
        <property role="TrG5h" value="projectDir" />
        <node concept="3uibUv" id="1G0B_lkGAJ9" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="3cqZAl" id="1G0B_lkG_91" role="3clF45" />
      <node concept="3Tm1VV" id="1G0B_lkG_92" role="1B3o_S" />
      <node concept="3clFbS" id="1G0B_lkG_93" role="3clF47">
        <node concept="3clFbF" id="3OA_Uj9hsWW" role="3cqZAp">
          <node concept="37vLTI" id="3OA_Uj9htty" role="3clFbG">
            <node concept="37vLTw" id="3OA_Uj9htEj" role="37vLTx">
              <ref role="3cqZAo" node="1G0B_lkGAJ2" resolve="environment" />
            </node>
            <node concept="37vLTw" id="5TX$EBEb4Uo" role="37vLTJ">
              <ref role="3cqZAo" node="7MSVDs2_8tx" resolve="myEnvironment" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1G0B_lkGBbu" role="3cqZAp">
          <node concept="37vLTI" id="1G0B_lkGBbv" role="3clFbG">
            <node concept="37vLTw" id="1G0B_lkGBbw" role="37vLTJ">
              <ref role="3cqZAo" node="7MSVDs2A7en" resolve="myWorkerCallback" />
            </node>
            <node concept="37vLTw" id="1G0B_lkGBbx" role="37vLTx">
              <ref role="3cqZAo" node="1G0B_lkGAJ6" resolve="callback" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1G0B_lkGBbI" role="3cqZAp">
          <node concept="37vLTI" id="1G0B_lkGBbJ" role="3clFbG">
            <node concept="37vLTw" id="1G0B_lkGBbK" role="37vLTJ">
              <ref role="3cqZAo" node="5tXD4tz76hQ" resolve="myTestSupplier" />
            </node>
            <node concept="37vLTw" id="1G0B_lkGDAy" role="37vLTx">
              <ref role="3cqZAo" node="1G0B_lkGAJ4" resolve="testData" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1G0B_lkGBbR" role="3cqZAp">
          <node concept="37vLTI" id="1G0B_lkGBbS" role="3clFbG">
            <node concept="37vLTw" id="1G0B_lkGBbT" role="37vLTx">
              <ref role="3cqZAo" node="1G0B_lkGAJ8" resolve="projectDir" />
            </node>
            <node concept="37vLTw" id="1G0B_lkGBbU" role="37vLTJ">
              <ref role="3cqZAo" node="7MSVDs2AkBw" resolve="myTestProjectDir" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5EMxBKzI44t" role="jymVt" />
    <node concept="3clFb_" id="5EMxBKzI9wt" role="jymVt">
      <property role="TrG5h" value="opentestReport" />
      <node concept="3clFbS" id="5EMxBKzI9ww" role="3clF47">
        <node concept="3clFbF" id="5EMxBKzIx1l" role="3cqZAp">
          <node concept="37vLTI" id="5EMxBKzI$zH" role="3clFbG">
            <node concept="37vLTw" id="5EMxBKzIATg" role="37vLTx">
              <ref role="3cqZAo" node="5EMxBKzIbuF" resolve="outputDir" />
            </node>
            <node concept="37vLTw" id="5EMxBKzIx1k" role="37vLTJ">
              <ref role="3cqZAo" node="5EMxBKzIpPk" resolve="myOutputDir" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5EMxBKzIFTE" role="3cqZAp">
          <node concept="37vLTI" id="5EMxBKzII7Q" role="3clFbG">
            <node concept="3clFbT" id="5EMxBKzIJVp" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="37vLTw" id="5EMxBKzIFTC" role="37vLTJ">
              <ref role="3cqZAo" node="5EMxBKzIuP7" resolve="myIsOpenTestReport" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5EMxBKzI7sq" role="1B3o_S" />
      <node concept="3cqZAl" id="5EMxBKzI9p0" role="3clF45" />
      <node concept="37vLTG" id="5EMxBKzIbuF" role="3clF46">
        <property role="TrG5h" value="outputDir" />
        <node concept="3uibUv" id="5EMxBKzIbuE" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5EMxBKzILxD" role="jymVt" />
    <node concept="3clFb_" id="5EMxBKzISZi" role="jymVt">
      <property role="TrG5h" value="legacyXmlReport" />
      <node concept="3clFbS" id="5EMxBKzISZl" role="3clF47">
        <node concept="3clFbF" id="5EMxBKzIXAQ" role="3cqZAp">
          <node concept="37vLTI" id="5EMxBKzIXAR" role="3clFbG">
            <node concept="37vLTw" id="5EMxBKzIXAS" role="37vLTx">
              <ref role="3cqZAo" node="5EMxBKzIUYw" resolve="outputDir" />
            </node>
            <node concept="37vLTw" id="5EMxBKzIXAT" role="37vLTJ">
              <ref role="3cqZAo" node="5EMxBKzIpPk" resolve="myOutputDir" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5EMxBKzIXAU" role="3cqZAp">
          <node concept="37vLTI" id="5EMxBKzIXAV" role="3clFbG">
            <node concept="3clFbT" id="5EMxBKzIXAW" role="37vLTx" />
            <node concept="37vLTw" id="5EMxBKzIXAX" role="37vLTJ">
              <ref role="3cqZAo" node="5EMxBKzIuP7" resolve="myIsOpenTestReport" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5EMxBKzIQ5J" role="1B3o_S" />
      <node concept="3cqZAl" id="5EMxBKzISRw" role="3clF45" />
      <node concept="37vLTG" id="5EMxBKzIUYw" role="3clF46">
        <property role="TrG5h" value="outputDir" />
        <node concept="3uibUv" id="5EMxBKzIUYv" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5EMxBKzJ1$_" role="jymVt" />
    <node concept="3clFb_" id="5EMxBKzJ3zJ" role="jymVt">
      <property role="TrG5h" value="teamcityReport" />
      <node concept="3cqZAl" id="5EMxBKzJ3zL" role="3clF45" />
      <node concept="3Tm1VV" id="5EMxBKzJ3zM" role="1B3o_S" />
      <node concept="3clFbS" id="5EMxBKzJ3zN" role="3clF47">
        <node concept="3clFbF" id="5EMxBKzJbja" role="3cqZAp">
          <node concept="37vLTI" id="5EMxBKzJi2u" role="3clFbG">
            <node concept="3clFbT" id="5EMxBKzJjQS" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="37vLTw" id="5EMxBKzJbj9" role="37vLTJ">
              <ref role="3cqZAo" node="5EMxBKzJ8Dn" resolve="myNeedTeamCityReport" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7MSVDs2$PbQ" role="jymVt" />
    <node concept="3clFb_" id="7MSVDs2$RRg" role="jymVt">
      <property role="TrG5h" value="launchTests" />
      <node concept="10Oyi0" id="3OA_Uj9_b0e" role="3clF45" />
      <node concept="3Tm1VV" id="7MSVDs2$RRj" role="1B3o_S" />
      <node concept="3clFbS" id="7MSVDs2$RRk" role="3clF47">
        <node concept="3cpWs8" id="HwplGLOmSd" role="3cqZAp">
          <node concept="3cpWsn" id="HwplGLOmSe" role="3cpWs9">
            <property role="TrG5h" value="failureDetector" />
            <node concept="3uibUv" id="HwplGLOmnY" role="1tU5fm">
              <ref role="3uigEE" node="HwplGLNXsw" resolve="FailureDetector" />
            </node>
            <node concept="2ShNRf" id="HwplGLOmSf" role="33vP2m">
              <node concept="HV5vD" id="HwplGM5IES" role="2ShVmc">
                <ref role="HV5vE" node="HwplGLNXsw" resolve="FailureDetector" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4rQ9_5egmdg" role="3cqZAp" />
        <node concept="3clFbF" id="HwplGM7nf2" role="3cqZAp">
          <node concept="1rXfSq" id="HwplGM7nf1" role="3clFbG">
            <ref role="37wK5l" node="7XWzEIxxLMp" resolve="launchTestsWithSession" />
            <node concept="1rXfSq" id="3OA_Uj9f2EV" role="37wK5m">
              <ref role="37wK5l" node="HwplGM6HpS" resolve="collectTestClasses" />
            </node>
            <node concept="37vLTw" id="HwplGM7nf0" role="37wK5m">
              <ref role="3cqZAo" node="HwplGLOmSe" resolve="failureDetector" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7XWzEIxygfX" role="3cqZAp" />
        <node concept="3clFbJ" id="HwplGLOrYc" role="3cqZAp">
          <node concept="3clFbS" id="HwplGLOrYe" role="3clFbx">
            <node concept="3clFbF" id="HwplGLShL6" role="3cqZAp">
              <node concept="2OqwBi" id="HwplGLSjn4" role="3clFbG">
                <node concept="37vLTw" id="HwplGLShL4" role="2Oq$k0">
                  <ref role="3cqZAo" node="HwplGLOmSe" resolve="failureDetector" />
                </node>
                <node concept="liA8E" id="HwplGLSlY1" role="2OqNvi">
                  <ref role="37wK5l" node="HwplGLRdIa" resolve="flushErrors" />
                  <node concept="37vLTw" id="HwplGM5ms_" role="37wK5m">
                    <ref role="3cqZAo" node="7MSVDs2A7en" resolve="myWorkerCallback" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="HwplGLOxH6" role="3clFbw">
            <node concept="37vLTw" id="HwplGLOwAY" role="2Oq$k0">
              <ref role="3cqZAo" node="HwplGLOmSe" resolve="failureDetector" />
            </node>
            <node concept="liA8E" id="HwplGLOyMK" role="2OqNvi">
              <ref role="37wK5l" node="HwplGLOdda" resolve="hasFailures" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3OA_Uj9_ghc" role="3cqZAp">
          <node concept="2OqwBi" id="3OA_Uj9_iEn" role="3cqZAk">
            <node concept="37vLTw" id="3OA_Uj9_hMF" role="2Oq$k0">
              <ref role="3cqZAo" node="HwplGLOmSe" resolve="failureDetector" />
            </node>
            <node concept="liA8E" id="3OA_Uj9_jGn" role="2OqNvi">
              <ref role="37wK5l" node="3OA_Uj9$WOu" resolve="failuresCount" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3OA_Uj9f0$Z" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="a_kj510Ix6" role="jymVt" />
    <node concept="3clFb_" id="a_kj510LdV" role="jymVt">
      <property role="TrG5h" value="launchTests" />
      <node concept="3clFbS" id="a_kj510LdY" role="3clF47">
        <node concept="3clFbF" id="a_kj510NI3" role="3cqZAp">
          <node concept="1rXfSq" id="a_kj510NI4" role="3clFbG">
            <ref role="37wK5l" node="7XWzEIxxLMp" resolve="launchTestsWithSession" />
            <node concept="1rXfSq" id="a_kj510NI5" role="37wK5m">
              <ref role="37wK5l" node="HwplGM6HpS" resolve="collectTestClasses" />
            </node>
            <node concept="37vLTw" id="a_kj510NI6" role="37wK5m">
              <ref role="3cqZAo" node="a_kj510LON" resolve="listener" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="a_kj510KFC" role="1B3o_S" />
      <node concept="3cqZAl" id="a_kj510KFN" role="3clF45" />
      <node concept="37vLTG" id="a_kj510LON" role="3clF46">
        <property role="TrG5h" value="listener" />
        <node concept="3uibUv" id="a_kj510LOM" role="1tU5fm">
          <ref role="3uigEE" to="bws1:~TestExecutionListener" resolve="TestExecutionListener" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5TX$EBEaRjH" role="jymVt" />
    <node concept="3clFb_" id="7XWzEIxxLMp" role="jymVt">
      <property role="TrG5h" value="launchTestsWithSession" />
      <node concept="37vLTG" id="7XWzEIxxQbU" role="3clF46">
        <property role="TrG5h" value="tests" />
        <node concept="3uibUv" id="5TX$EBEc6Vs" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="5TX$EBEc7XP" role="11_B2D">
            <ref role="3uigEE" to="n4ib:~DiscoverySelector" resolve="DiscoverySelector" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7XWzEIxxQbY" role="3clF46">
        <property role="TrG5h" value="executionListener" />
        <node concept="3uibUv" id="7XWzEIxxQbZ" role="1tU5fm">
          <ref role="3uigEE" to="bws1:~TestExecutionListener" resolve="TestExecutionListener" />
        </node>
      </node>
      <node concept="3cqZAl" id="7XWzEIxxLMr" role="3clF45" />
      <node concept="3Tmbuc" id="5TX$EBEaTqo" role="1B3o_S" />
      <node concept="3clFbS" id="7XWzEIxxLMt" role="3clF47">
        <node concept="3cpWs8" id="7XWzEIxxUiP" role="3cqZAp">
          <node concept="3cpWsn" id="7XWzEIxxUiQ" role="3cpWs9">
            <property role="TrG5h" value="sessionConfig" />
            <node concept="3uibUv" id="7XWzEIxxUiR" role="1tU5fm">
              <ref role="3uigEE" to="4u8o:4rQ9_5dOfYm" resolve="TestSessionConfig" />
            </node>
            <node concept="2ShNRf" id="7XWzEIxxUiT" role="33vP2m">
              <node concept="1pGfFk" id="7XWzEIxxUiU" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="4u8o:4rQ9_5dOg04" resolve="TestSessionConfig" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2xHx_dlwVTW" role="3cqZAp">
          <node concept="3cpWsn" id="2xHx_dlwVTX" role="3cpWs9">
            <property role="TrG5h" value="testPlatform" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="2xHx_dlwVTY" role="1tU5fm">
              <ref role="3uigEE" to="4u8o:4chG8iItd4i" resolve="TestPlatform" />
            </node>
            <node concept="2OqwBi" id="2xHx_dlwZN7" role="33vP2m">
              <node concept="2OqwBi" id="2xHx_dlwYDv" role="2Oq$k0">
                <node concept="37vLTw" id="2xHx_dlwY6O" role="2Oq$k0">
                  <ref role="3cqZAo" node="7MSVDs2_8tx" resolve="myEnvironment" />
                </node>
                <node concept="liA8E" id="2xHx_dlwZe3" role="2OqNvi">
                  <ref role="37wK5l" to="79ha:8Pnvxgloc_" resolve="getPlatform" />
                </node>
              </node>
              <node concept="liA8E" id="2xHx_dlx0K2" role="2OqNvi">
                <ref role="37wK5l" to="wyuk:~ComponentHost.findComponent(java.lang.Class)" resolve="findComponent" />
                <node concept="3VsKOn" id="2xHx_dlx2z9" role="37wK5m">
                  <ref role="3VsUkX" to="4u8o:4chG8iItd4i" resolve="TestPlatform" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5OG2WehV7tr" role="3cqZAp">
          <node concept="37vLTI" id="5OG2WehV7tt" role="3clFbG">
            <node concept="2OqwBi" id="7XWzEIxxUj1" role="37vLTx">
              <node concept="37vLTw" id="2xHx_dlx3Wx" role="2Oq$k0">
                <ref role="3cqZAo" node="2xHx_dlwVTX" resolve="testPlatform" />
              </node>
              <node concept="liA8E" id="7XWzEIxxUj3" role="2OqNvi">
                <ref role="37wK5l" to="4u8o:4rQ9_5dKw2Z" resolve="openSession" />
                <node concept="1rXfSq" id="3mL9Y7r1yzA" role="37wK5m">
                  <ref role="37wK5l" node="3mL9Y7r1Cnl" resolve="configureSession" />
                  <node concept="37vLTw" id="3mL9Y7r1zh8" role="37wK5m">
                    <ref role="3cqZAo" node="7XWzEIxxUiQ" resolve="sessionConfig" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="5OG2WehV7tx" role="37vLTJ">
              <ref role="3cqZAo" node="5OG2WehV8V4" resolve="myTestSession" />
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="7XWzEIxxRTQ" role="3cqZAp">
          <node concept="3clFbS" id="7XWzEIxxRTR" role="1zxBo7">
            <node concept="3SKdUt" id="7XWzEIxxtJ0" role="3cqZAp">
              <node concept="1PaTwC" id="7XWzEIxxtJ1" role="1aUNEU">
                <node concept="3oM_SD" id="7XWzEIxxtJ2" role="1PaTwD">
                  <property role="3oM_SC" value="this" />
                </node>
                <node concept="3oM_SD" id="7XWzEIxxtJ3" role="1PaTwD">
                  <property role="3oM_SC" value="class" />
                </node>
                <node concept="3oM_SD" id="7XWzEIxxtJ4" role="1PaTwD">
                  <property role="3oM_SC" value="is" />
                </node>
                <node concept="3oM_SD" id="7XWzEIxxtJ5" role="1PaTwD">
                  <property role="3oM_SC" value="instantiated" />
                </node>
                <node concept="3oM_SD" id="7XWzEIxxtJ6" role="1PaTwD">
                  <property role="3oM_SC" value="via" />
                </node>
                <node concept="3oM_SD" id="7XWzEIxxtJ7" role="1PaTwD">
                  <property role="3oM_SC" value="ModuleClassCode" />
                </node>
                <node concept="3oM_SD" id="7XWzEIxxtJ8" role="1PaTwD">
                  <property role="3oM_SC" value="which" />
                </node>
                <node concept="3oM_SD" id="7XWzEIxxtJ9" role="1PaTwD">
                  <property role="3oM_SC" value="ensures" />
                </node>
                <node concept="3oM_SD" id="7XWzEIxxtJa" role="1PaTwD">
                  <property role="3oM_SC" value="proper" />
                </node>
                <node concept="3oM_SD" id="7XWzEIxxtJb" role="1PaTwD">
                  <property role="3oM_SC" value="MPS" />
                </node>
                <node concept="3oM_SD" id="7XWzEIxxtJc" role="1PaTwD">
                  <property role="3oM_SC" value="classloader" />
                </node>
                <node concept="3oM_SD" id="7XWzEIxxtJd" role="1PaTwD">
                  <property role="3oM_SC" value="for" />
                </node>
                <node concept="3oM_SD" id="7XWzEIxxtJe" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="7XWzEIxxtJf" role="1PaTwD">
                  <property role="3oM_SC" value="code." />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7XWzEIxxtJg" role="3cqZAp">
              <node concept="3cpWsn" id="7XWzEIxxtJh" role="3cpWs9">
                <property role="TrG5h" value="contextCL" />
                <node concept="3uibUv" id="7XWzEIxxtJi" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~ClassLoader" resolve="ClassLoader" />
                </node>
                <node concept="2OqwBi" id="7XWzEIxxtJj" role="33vP2m">
                  <node concept="1rXfSq" id="7XWzEIxxtJk" role="2Oq$k0">
                    <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                  </node>
                  <node concept="liA8E" id="7XWzEIxxtJl" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Class.getClassLoader()" resolve="getClassLoader" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7XWzEIxxXTP" role="3cqZAp">
              <node concept="1rXfSq" id="7XWzEIxxXTO" role="3clFbG">
                <ref role="37wK5l" node="5TX$EBEbOs$" resolve="launchTestsWithContextCL" />
                <node concept="37vLTw" id="7XWzEIxxY_g" role="37wK5m">
                  <ref role="3cqZAo" node="7XWzEIxxtJh" resolve="contextCL" />
                </node>
                <node concept="37vLTw" id="7XWzEIxy0w5" role="37wK5m">
                  <ref role="3cqZAo" node="7XWzEIxxQbU" resolve="tests" />
                </node>
                <node concept="37vLTw" id="7XWzEIxy4Gs" role="37wK5m">
                  <ref role="3cqZAo" node="7XWzEIxxQbY" resolve="executionListener" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1wplmZ" id="7XWzEIxxT3_" role="1zxBo6">
            <node concept="3clFbS" id="7XWzEIxxT3A" role="1wplMD">
              <node concept="3clFbF" id="7XWzEIxxWGr" role="3cqZAp">
                <node concept="2OqwBi" id="7XWzEIxxWGs" role="3clFbG">
                  <node concept="37vLTw" id="2xHx_dlx61j" role="2Oq$k0">
                    <ref role="3cqZAo" node="2xHx_dlwVTX" resolve="testPlatform" />
                  </node>
                  <node concept="liA8E" id="7XWzEIxxWGu" role="2OqNvi">
                    <ref role="37wK5l" to="4u8o:4rQ9_5dKJcw" resolve="closeSession" />
                    <node concept="37vLTw" id="7XWzEIxxWGv" role="37wK5m">
                      <ref role="3cqZAo" node="5OG2WehV8V4" resolve="myTestSession" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="5OG2WehVbTZ" role="3cqZAp">
                <node concept="37vLTI" id="5OG2WehVcRO" role="3clFbG">
                  <node concept="10Nm6u" id="5OG2WehVdxw" role="37vLTx" />
                  <node concept="37vLTw" id="5OG2WehVbTX" role="37vLTJ">
                    <ref role="3cqZAo" node="5OG2WehV8V4" resolve="myTestSession" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3mL9Y7r1Bro" role="jymVt" />
    <node concept="3clFb_" id="3mL9Y7r1Cnl" role="jymVt">
      <property role="TrG5h" value="configureSession" />
      <node concept="37vLTG" id="3mL9Y7r1Cnm" role="3clF46">
        <property role="TrG5h" value="config" />
        <node concept="3uibUv" id="3mL9Y7r1Cnn" role="1tU5fm">
          <ref role="3uigEE" to="4u8o:4rQ9_5dOfYm" resolve="TestSessionConfig" />
        </node>
      </node>
      <node concept="3uibUv" id="3mL9Y7r1Cno" role="3clF45">
        <ref role="3uigEE" to="4u8o:4rQ9_5dOfYm" resolve="TestSessionConfig" />
      </node>
      <node concept="3Tmbuc" id="5TX$EBEaU59" role="1B3o_S" />
      <node concept="3clFbS" id="3mL9Y7r1Cnt" role="3clF47">
        <node concept="3clFbF" id="5TX$EBEb7h5" role="3cqZAp">
          <node concept="37vLTI" id="5TX$EBEb8nL" role="3clFbG">
            <node concept="2OqwBi" id="5TX$EBEb9CD" role="37vLTx">
              <node concept="37vLTw" id="5TX$EBEb92X" role="2Oq$k0">
                <ref role="3cqZAo" node="3mL9Y7r1Cnm" resolve="config" />
              </node>
              <node concept="liA8E" id="7XWzEIxxUiV" role="2OqNvi">
                <ref role="37wK5l" to="4u8o:4rQ9_5dOgvK" resolve="withAccessory" />
                <node concept="3VsKOn" id="7XWzEIxxUiW" role="37wK5m">
                  <ref role="3VsUkX" to="79ha:HKKzfMjqRV" resolve="Environment" />
                </node>
                <node concept="37vLTw" id="7XWzEIxxUiX" role="37wK5m">
                  <ref role="3cqZAo" node="7MSVDs2_8tx" resolve="myEnvironment" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="5TX$EBEb7h3" role="37vLTJ">
              <ref role="3cqZAo" node="3mL9Y7r1Cnm" resolve="config" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7CPkROrtn2S" role="3cqZAp">
          <node concept="3clFbS" id="7CPkROrtn2U" role="3clFbx">
            <node concept="3cpWs6" id="5EMxBKzY5yJ" role="3cqZAp">
              <node concept="2OqwBi" id="3mL9Y7r1Ic8" role="3cqZAk">
                <node concept="37vLTw" id="3mL9Y7r1H6t" role="2Oq$k0">
                  <ref role="3cqZAo" node="3mL9Y7r1Cnm" resolve="config" />
                </node>
                <node concept="liA8E" id="3mL9Y7r1JiL" role="2OqNvi">
                  <ref role="37wK5l" to="4u8o:15ZFihwSBZV" resolve="withSystemProperty" />
                  <node concept="10M0yZ" id="5qUkJhvp8JU" role="37wK5m">
                    <ref role="3cqZAo" to="4u8o:5qUkJhvm5dl" resolve="PROJECT_PATH" />
                    <ref role="1PxDUh" to="4u8o:5qUkJhvm4Q_" resolve="SystemProperties" />
                  </node>
                  <node concept="2OqwBi" id="7CPkROrufwj" role="37wK5m">
                    <node concept="37vLTw" id="5EMxBKzYgxw" role="2Oq$k0">
                      <ref role="3cqZAo" node="7MSVDs2AkBw" resolve="myTestProjectDir" />
                    </node>
                    <node concept="liA8E" id="7CPkROruhjS" role="2OqNvi">
                      <ref role="37wK5l" to="guwi:~File.getAbsolutePath()" resolve="getAbsolutePath" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="5EMxBKzXYNe" role="3clFbw">
            <node concept="10Nm6u" id="5EMxBKzY0p2" role="3uHU7w" />
            <node concept="37vLTw" id="5EMxBKzXXah" role="3uHU7B">
              <ref role="3cqZAo" node="7MSVDs2AkBw" resolve="myTestProjectDir" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7CPkROrujuj" role="3cqZAp">
          <node concept="37vLTw" id="7CPkROrujuh" role="3clFbG">
            <ref role="3cqZAo" node="3mL9Y7r1Cnm" resolve="config" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5OG2WehVf46" role="jymVt" />
    <node concept="2tJIrI" id="5OG2WehVg31" role="jymVt" />
    <node concept="3clFb_" id="5OG2WehVgE8" role="jymVt">
      <property role="TrG5h" value="configureLauncherSession" />
      <node concept="3Tmbuc" id="5OG2WehVgEk" role="1B3o_S" />
      <node concept="3cqZAl" id="5OG2WehVgEl" role="3clF45" />
      <node concept="37vLTG" id="5OG2WehVgEm" role="3clF46">
        <property role="TrG5h" value="session" />
        <node concept="3uibUv" id="5OG2WehVgEn" role="1tU5fm">
          <ref role="3uigEE" to="bws1:~LauncherSession" resolve="LauncherSession" />
        </node>
      </node>
      <node concept="3clFbS" id="5OG2WehVgEo" role="3clF47">
        <node concept="3SKdUt" id="5OG2WehZyIu" role="3cqZAp">
          <node concept="1PaTwC" id="5OG2WehZyIv" role="1aUNEU">
            <node concept="3oM_SD" id="5OG2WehZzOk" role="1PaTwD">
              <property role="3oM_SC" value="XXX" />
            </node>
            <node concept="3oM_SD" id="5OG2WehZzO_" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="5OG2WehZzOB" role="1PaTwD">
              <property role="3oM_SC" value="sure" />
            </node>
            <node concept="3oM_SD" id="5OG2WehZzPY" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="5OG2WehZzQv" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="5OG2WehZzQK" role="1PaTwD">
              <property role="3oM_SC" value="need" />
            </node>
            <node concept="3oM_SD" id="5OG2WehZzR1" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="5OG2WehZzR2" role="1PaTwD">
              <property role="3oM_SC" value="go" />
            </node>
            <node concept="3oM_SD" id="5OG2WehZzRj" role="1PaTwD">
              <property role="3oM_SC" value="through" />
            </node>
            <node concept="3oM_SD" id="5OG2WehZzS4" role="1PaTwD">
              <property role="3oM_SC" value="MPS" />
            </node>
            <node concept="3oM_SD" id="5OG2WehZzSl" role="1PaTwD">
              <property role="3oM_SC" value="TestSession" />
            </node>
            <node concept="3oM_SD" id="5OG2WehZzT6" role="1PaTwD">
              <property role="3oM_SC" value="when" />
            </node>
            <node concept="3oM_SD" id="5OG2WehZzT7" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="5OG2WehZzT8" role="1PaTwD">
              <property role="3oM_SC" value="can" />
            </node>
            <node concept="3oM_SD" id="5OG2WehZzT9" role="1PaTwD">
              <property role="3oM_SC" value="put" />
            </node>
            <node concept="3oM_SD" id="5OG2WehZzTq" role="1PaTwD">
              <property role="3oM_SC" value="myEnvironment" />
            </node>
            <node concept="3oM_SD" id="5OG2WehZzUF" role="1PaTwD">
              <property role="3oM_SC" value="here" />
            </node>
            <node concept="3oM_SD" id="5OG2WehZzUW" role="1PaTwD">
              <property role="3oM_SC" value="directly" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5OG2WehVren" role="3cqZAp">
          <node concept="2OqwBi" id="5OG2WehVtE6" role="3clFbG">
            <node concept="2OqwBi" id="5OG2WehVrTQ" role="2Oq$k0">
              <node concept="37vLTw" id="5OG2WehVrem" role="2Oq$k0">
                <ref role="3cqZAo" node="5OG2WehVgEm" resolve="session" />
              </node>
              <node concept="liA8E" id="5OG2WehVsW7" role="2OqNvi">
                <ref role="37wK5l" to="bws1:~LauncherSession.getStore()" resolve="getStore" />
              </node>
            </node>
            <node concept="liA8E" id="5OG2WehVusX" role="2OqNvi">
              <ref role="37wK5l" to="canb:~NamespacedHierarchicalStore.put(java.lang.Object,java.lang.Object,java.lang.Object)" resolve="put" />
              <node concept="2YIFZM" id="5OG2WehVTyr" role="37wK5m">
                <ref role="37wK5l" to="canb:~Namespace.create(java.lang.Object...)" resolve="create" />
                <ref role="1Pybhc" to="canb:~Namespace" resolve="Namespace" />
                <node concept="Xl_RD" id="5OG2WehVU5t" role="37wK5m">
                  <property role="Xl_RC" value="MPS" />
                </node>
              </node>
              <node concept="Xl_RD" id="5OG2WehVYNd" role="37wK5m">
                <property role="Xl_RC" value="TestSession" />
              </node>
              <node concept="37vLTw" id="5OG2WehW2u5" role="37wK5m">
                <ref role="3cqZAo" node="5OG2WehV8V4" resolve="myTestSession" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5OG2WehVgEp" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="HwplGM7p_Q" role="jymVt" />
    <node concept="3clFb_" id="1W7Tdy_UJae" role="jymVt">
      <property role="TrG5h" value="createTestExecutionListener" />
      <node concept="3Tmbuc" id="1W7Tdy_UJaf" role="1B3o_S" />
      <node concept="3uibUv" id="1W7Tdy_UJag" role="3clF45">
        <ref role="3uigEE" to="pzze:5gsHVKBei$L" resolve="JUnit5TestExecutionListener" />
      </node>
      <node concept="3clFbS" id="1W7Tdy_UJal" role="3clF47">
        <node concept="3cpWs6" id="1W7Tdy_V9Xu" role="3cqZAp">
          <node concept="2ShNRf" id="1W7Tdy_V9Xv" role="3cqZAk">
            <node concept="YeOm9" id="1W7Tdy_VbbR" role="2ShVmc">
              <node concept="1Y3b0j" id="1W7Tdy_VbbU" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="pzze:5gsHVKBei_z" resolve="JUnit5TestExecutionListener" />
                <ref role="1Y3XeK" to="pzze:5gsHVKBei$L" resolve="JUnit5TestExecutionListener" />
                <node concept="3Tm1VV" id="1W7Tdy_VbbV" role="1B3o_S" />
                <node concept="3clFb_" id="1W7Tdy_VpsX" role="jymVt">
                  <property role="TrG5h" value="flushSystemStreams" />
                  <node concept="3cqZAl" id="1W7Tdy_VpsY" role="3clF45" />
                  <node concept="3Tmbuc" id="1W7Tdy_VpsZ" role="1B3o_S" />
                  <node concept="3clFbS" id="1W7Tdy_Vpta" role="3clF47">
                    <node concept="3SKdUt" id="1W7Tdy_Uf9D" role="3cqZAp">
                      <node concept="1PaTwC" id="1W7Tdy_Uf9E" role="1aUNEU">
                        <node concept="3oM_SD" id="1W7Tdy_Ufyd" role="1PaTwD">
                          <property role="3oM_SC" value="NOP:" />
                        </node>
                        <node concept="3oM_SD" id="1W7Tdy_UfyI" role="1PaTwD">
                          <property role="3oM_SC" value="avoid" />
                        </node>
                        <node concept="3oM_SD" id="1W7Tdy_Ufzg" role="1PaTwD">
                          <property role="3oM_SC" value="attempting" />
                        </node>
                        <node concept="3oM_SD" id="1W7Tdy_UfzL" role="1PaTwD">
                          <property role="3oM_SC" value="to" />
                        </node>
                        <node concept="3oM_SD" id="1W7Tdy_UfzM" role="1PaTwD">
                          <property role="3oM_SC" value="flush" />
                        </node>
                        <node concept="3oM_SD" id="1W7Tdy_Uf_j" role="1PaTwD">
                          <property role="3oM_SC" value="stdout/stderr" />
                        </node>
                        <node concept="3oM_SD" id="1W7Tdy_UfAO" role="1PaTwD">
                          <property role="3oM_SC" value="in" />
                        </node>
                        <node concept="3oM_SD" id="1W7Tdy_UfBR" role="1PaTwD">
                          <property role="3oM_SC" value="order" />
                        </node>
                        <node concept="3oM_SD" id="1W7Tdy_UfCo" role="1PaTwD">
                          <property role="3oM_SC" value="not" />
                        </node>
                        <node concept="3oM_SD" id="1W7Tdy_UfCp" role="1PaTwD">
                          <property role="3oM_SC" value="to" />
                        </node>
                        <node concept="3oM_SD" id="1W7Tdy_UfEs" role="1PaTwD">
                          <property role="3oM_SC" value="deadlock;" />
                        </node>
                        <node concept="3oM_SD" id="1W7Tdy_UVGj" role="1PaTwD">
                          <property role="3oM_SC" value="MPS-37852" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="1W7Tdy_Vptb" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1W7Tdy_UJam" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1W7Tdy_UP7K" role="jymVt" />
    <node concept="3clFb_" id="HwplGM6HpS" role="jymVt">
      <property role="TrG5h" value="collectTestClasses" />
      <node concept="3Tmbuc" id="2Uys8qoo1vt" role="1B3o_S" />
      <node concept="3uibUv" id="HwplGM6HpU" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="5TX$EBEchO1" role="11_B2D">
          <ref role="3uigEE" to="n4ib:~DiscoverySelector" resolve="DiscoverySelector" />
        </node>
      </node>
      <node concept="3clFbS" id="HwplGM6HoB" role="3clF47">
        <node concept="3J1_TO" id="1G0B_lkHzR_" role="3cqZAp">
          <node concept="3uVAMA" id="1G0B_lkHDH0" role="1zxBo5">
            <node concept="XOnhg" id="1G0B_lkHDH1" role="1zc67B">
              <property role="TrG5h" value="ex" />
              <node concept="nSUau" id="1G0B_lkHDH2" role="1tU5fm">
                <node concept="3uibUv" id="1G0B_lkHF9q" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="1G0B_lkHDH3" role="1zc67A">
              <node concept="3clFbF" id="1G0B_lkHVY4" role="3cqZAp">
                <node concept="2OqwBi" id="1G0B_lkHYaJ" role="3clFbG">
                  <node concept="37vLTw" id="1G0B_lkHVY3" role="2Oq$k0">
                    <ref role="3cqZAo" node="7MSVDs2A7en" resolve="myWorkerCallback" />
                  </node>
                  <node concept="liA8E" id="1G0B_lkHZSb" role="2OqNvi">
                    <ref role="37wK5l" to="asz6:5tXD4tyH5RB" resolve="fatal" />
                    <node concept="Xl_RD" id="1G0B_lkI1kY" role="37wK5m">
                      <property role="Xl_RC" value="Failed to discover tests" />
                    </node>
                    <node concept="37vLTw" id="1G0B_lkI9QF" role="37wK5m">
                      <ref role="3cqZAo" node="1G0B_lkHDH1" resolve="ex" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="1G0B_lkIgRZ" role="3cqZAp">
                <node concept="2YIFZM" id="1G0B_lkIiuI" role="3cqZAk">
                  <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
                  <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1G0B_lkHzRB" role="1zxBo7">
            <node concept="3cpWs6" id="1G0B_lkHwDt" role="3cqZAp">
              <node concept="2OqwBi" id="1G0B_lkHlug" role="3cqZAk">
                <node concept="37vLTw" id="1G0B_lkHjL7" role="2Oq$k0">
                  <ref role="3cqZAo" node="5tXD4tz76hQ" resolve="myTestSupplier" />
                </node>
                <node concept="liA8E" id="1G0B_lkHn4u" role="2OqNvi">
                  <ref role="37wK5l" node="1wWWPEua5Su" resolve="collectSelectors" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="HwplGM6pVU" role="jymVt" />
    <node concept="3clFb_" id="5HBbAYqGVkX" role="jymVt">
      <property role="TrG5h" value="getTestReportsDir" />
      <node concept="3Tmbuc" id="3OA_Uj9gJBa" role="1B3o_S" />
      <node concept="3uibUv" id="5HBbAYqHfD3" role="3clF45">
        <ref role="3uigEE" to="guwi:~File" resolve="File" />
      </node>
      <node concept="3clFbS" id="5HBbAYqGVl0" role="3clF47">
        <node concept="3SKdUt" id="5EMxBKzYlQa" role="3cqZAp">
          <node concept="1PaTwC" id="5EMxBKzYlQb" role="1aUNEU">
            <node concept="3oM_SD" id="5EMxBKzYqJD" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzYlQw" role="1PaTwD">
              <property role="3oM_SC" value="replace" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzYmV0" role="1PaTwD">
              <property role="3oM_SC" value="these" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzYmVv" role="1PaTwD">
              <property role="3oM_SC" value="methods" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzYmVJ" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzYmVZ" role="1PaTwD">
              <property role="3oM_SC" value="generic" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzYmWf" role="1PaTwD">
              <property role="3oM_SC" value="getTestExecutionListeners():List," />
            </node>
            <node concept="3oM_SD" id="5EMxBKzYmY8" role="1PaTwD">
              <property role="3oM_SC" value="populated" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzYmYo" role="1PaTwD">
              <property role="3oM_SC" value="based" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzYmYC" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzYqKa" role="1PaTwD">
              <property role="3oM_SC" value="these" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzYqTG" role="1PaTwD">
              <property role="3oM_SC" value="values" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5EMxBKzYpo3" role="3cqZAp">
          <node concept="1PaTwC" id="5EMxBKzYpo4" role="1aUNEU">
            <node concept="3oM_SD" id="5EMxBKzYpo5" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzYqKE" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzYqKG" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzYqKH" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzYqKY" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzYqLe" role="1PaTwD">
              <property role="3oM_SC" value="just" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzYqLv" role="1PaTwD">
              <property role="3oM_SC" value="need" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzYqLJ" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzYqLK" role="1PaTwD">
              <property role="3oM_SC" value="figure" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzYqMg" role="1PaTwD">
              <property role="3oM_SC" value="out" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzYqMh" role="1PaTwD">
              <property role="3oM_SC" value="how" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzYqML" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzYqMM" role="1PaTwD">
              <property role="3oM_SC" value="pass" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzYqNi" role="1PaTwD">
              <property role="3oM_SC" value="outputDir" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzYqOi" role="1PaTwD">
              <property role="3oM_SC" value="into" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzYqPz" role="1PaTwD">
              <property role="3oM_SC" value="session" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzYqSX" role="1PaTwD">
              <property role="3oM_SC" value="cfg" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzYqPO" role="1PaTwD">
              <property role="3oM_SC" value="params" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5EMxBKzRsCO" role="3cqZAp">
          <node concept="37vLTw" id="5EMxBKzRwu3" role="3cqZAk">
            <ref role="3cqZAo" node="5EMxBKzIpPk" resolve="myOutputDir" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3OA_Uj9h2Xp" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="51DD0tdOaUc" role="jymVt" />
    <node concept="3clFb_" id="51DD0tdOcZN" role="jymVt">
      <property role="TrG5h" value="isOpenTestReport" />
      <node concept="10P_77" id="51DD0tdOcZO" role="3clF45" />
      <node concept="3Tmbuc" id="51DD0tdOcZP" role="1B3o_S" />
      <node concept="3clFbS" id="51DD0tdOcZT" role="3clF47">
        <node concept="3cpWs6" id="5EMxBKzMOzX" role="3cqZAp">
          <node concept="37vLTw" id="5EMxBKzMSQt" role="3cqZAk">
            <ref role="3cqZAo" node="5EMxBKzIuP7" resolve="myIsOpenTestReport" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="51DD0tdOcZU" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7MSVDs2BlOo" role="jymVt" />
    <node concept="3clFb_" id="KL8Aqll5he" role="jymVt">
      <property role="TrG5h" value="isRunningOnTeamCity" />
      <node concept="3Tmbuc" id="3OA_Uj9gFtO" role="1B3o_S" />
      <node concept="10P_77" id="KL8Aqll5hg" role="3clF45" />
      <node concept="3clFbS" id="KL8Aqll5hh" role="3clF47">
        <node concept="3cpWs6" id="KL8Aqll5hi" role="3cqZAp">
          <node concept="37vLTw" id="5EMxBKzMKgX" role="3cqZAk">
            <ref role="3cqZAo" node="5EMxBKzJ8Dn" resolve="myNeedTeamCityReport" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3OA_Uj9gHzQ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="HwplGLOYCU" role="jymVt" />
    <node concept="3Tm1VV" id="4MVYzzgkpMr" role="1B3o_S" />
    <node concept="3uibUv" id="3OA_Uj9eUkk" role="1zkMxy">
      <ref role="3uigEE" node="3OA_Uj9eGqo" resolve="AbstractJUnit5Launcher" />
    </node>
    <node concept="3UR2Jj" id="1G0B_lkFuoL" role="lGtFl">
      <node concept="1PaTwC" id="1E1X3WHsCIW" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsCIX" role="1PaTwD">
          <property role="3oM_SC" value="FIXME" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCIY" role="1PaTwD">
          <property role="3oM_SC" value="bad" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCIZ" role="1PaTwD">
          <property role="3oM_SC" value="name," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCJ0" role="1PaTwD">
          <property role="3oM_SC" value="JUnit5Executor/JUnit5Launcher[InMPS]" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCJ1" role="1PaTwD">
          <property role="3oM_SC" value="might" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCJ2" role="1PaTwD">
          <property role="3oM_SC" value="be" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCJ3" role="1PaTwD">
          <property role="3oM_SC" value="better" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5gsHVK_epY3">
    <property role="TrG5h" value="TestDiscovery" />
    <node concept="2tJIrI" id="5gsHVK_JHQR" role="jymVt" />
    <node concept="312cEg" id="5gsHVK_JTf9" role="jymVt">
      <property role="TrG5h" value="myDiscoveryVisitor" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5gsHVK_JTfa" role="1B3o_S" />
      <node concept="3uibUv" id="5gsHVK_JTfc" role="1tU5fm">
        <ref role="3uigEE" node="5gsHVK_Jw60" resolve="TestDiscoveryVisitor" />
      </node>
    </node>
    <node concept="312cEg" id="4Zd8$4Y4OBP" role="jymVt">
      <property role="TrG5h" value="myClassManager" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4Zd8$4Y4OBQ" role="1B3o_S" />
      <node concept="3uibUv" id="4Zd8$4Y4OBS" role="1tU5fm">
        <ref role="3uigEE" to="3qmy:~ClassLoaderManager" resolve="ClassLoaderManager" />
      </node>
    </node>
    <node concept="312cEg" id="2lMuMRU7aoy" role="jymVt">
      <property role="TrG5h" value="myTestPlatform" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2lMuMRU7aoz" role="1B3o_S" />
      <node concept="3uibUv" id="2lMuMRU7ao_" role="1tU5fm">
        <ref role="3uigEE" to="4u8o:4chG8iItd4i" resolve="TestPlatform" />
      </node>
    </node>
    <node concept="2tJIrI" id="5gsHVK_JV2U" role="jymVt" />
    <node concept="3clFbW" id="5gsHVK_JKSL" role="jymVt">
      <node concept="37vLTG" id="4Zd8$4Y4NKr" role="3clF46">
        <property role="TrG5h" value="clm" />
        <node concept="3uibUv" id="4Zd8$4Y4O$B" role="1tU5fm">
          <ref role="3uigEE" to="3qmy:~ClassLoaderManager" resolve="ClassLoaderManager" />
        </node>
      </node>
      <node concept="37vLTG" id="2lMuMRU7aiE" role="3clF46">
        <property role="TrG5h" value="testPlatform" />
        <node concept="3uibUv" id="2lMuMRU7ame" role="1tU5fm">
          <ref role="3uigEE" to="4u8o:4chG8iItd4i" resolve="TestPlatform" />
        </node>
      </node>
      <node concept="37vLTG" id="5gsHVK_JOjp" role="3clF46">
        <property role="TrG5h" value="discoveryVisitor" />
        <node concept="3uibUv" id="5gsHVK_JPWV" role="1tU5fm">
          <ref role="3uigEE" node="5gsHVK_Jw60" resolve="TestDiscoveryVisitor" />
        </node>
      </node>
      <node concept="3cqZAl" id="5gsHVK_JKSN" role="3clF45" />
      <node concept="3Tm1VV" id="5gsHVK_JKSO" role="1B3o_S" />
      <node concept="3clFbS" id="5gsHVK_JKSP" role="3clF47">
        <node concept="3SKdUt" id="2lMuMRU69i4" role="3cqZAp">
          <node concept="1PaTwC" id="2lMuMRU69i5" role="1aUNEU">
            <node concept="3oM_SD" id="2lMuMRU69i6" role="1PaTwD">
              <property role="3oM_SC" value="XXX" />
            </node>
            <node concept="3oM_SD" id="2lMuMRU69jG" role="1PaTwD">
              <property role="3oM_SC" value="[execution]" />
            </node>
            <node concept="3oM_SD" id="2lMuMRU69l4" role="1PaTwD">
              <property role="3oM_SC" value="got" />
            </node>
            <node concept="3oM_SD" id="2lMuMRU69lw" role="1PaTwD">
              <property role="3oM_SC" value="TestCollector" />
            </node>
            <node concept="3oM_SD" id="2lMuMRU69mn" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="2lMuMRU69mC" role="1PaTwD">
              <property role="3oM_SC" value="does" />
            </node>
            <node concept="3oM_SD" id="2lMuMRU69nk" role="1PaTwD">
              <property role="3oM_SC" value="pretty" />
            </node>
            <node concept="3oM_SD" id="2lMuMRU69nK" role="1PaTwD">
              <property role="3oM_SC" value="much" />
            </node>
            <node concept="3oM_SD" id="2lMuMRU69nW" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="2lMuMRU69od" role="1PaTwD">
              <property role="3oM_SC" value="same," />
            </node>
            <node concept="3oM_SD" id="2lMuMRU69p6" role="1PaTwD">
              <property role="3oM_SC" value="could" />
            </node>
            <node concept="3oM_SD" id="2lMuMRU69qo" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="2lMuMRU69qp" role="1PaTwD">
              <property role="3oM_SC" value="unified," />
            </node>
            <node concept="3oM_SD" id="2lMuMRU69rg" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="2lMuMRU69rx" role="1PaTwD">
              <property role="3oM_SC" value="wonder?" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="2lMuMRU79Kn" role="3cqZAp">
          <node concept="1PaTwC" id="2lMuMRU79Ko" role="1aUNEU">
            <node concept="3oM_SD" id="2lMuMRU79Mh" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="2lMuMRU79MS" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="2lMuMRU79Nl" role="1PaTwD">
              <property role="3oM_SC" value="class" />
            </node>
            <node concept="3oM_SD" id="2lMuMRU79Nm" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="2lMuMRU79Nn" role="1PaTwD">
              <property role="3oM_SC" value="bound" />
            </node>
            <node concept="3oM_SD" id="2lMuMRU79O3" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="2lMuMRU79O4" role="1PaTwD">
              <property role="3oM_SC" value="CLM," />
            </node>
            <node concept="3oM_SD" id="2lMuMRU79Ow" role="1PaTwD">
              <property role="3oM_SC" value="quite" />
            </node>
            <node concept="3oM_SD" id="2lMuMRU79PJ" role="1PaTwD">
              <property role="3oM_SC" value="unfortunate," />
            </node>
            <node concept="3oM_SD" id="2lMuMRU79PK" role="1PaTwD">
              <property role="3oM_SC" value="no" />
            </node>
            <node concept="3oM_SD" id="2lMuMRU79Q1" role="1PaTwD">
              <property role="3oM_SC" value="reuse," />
            </node>
            <node concept="3oM_SD" id="2lMuMRU79R8" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="2lMuMRU79R9" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="2lMuMRU79R_" role="1PaTwD">
              <property role="3oM_SC" value="usage" />
            </node>
            <node concept="3oM_SD" id="2lMuMRU79SB" role="1PaTwD">
              <property role="3oM_SC" value="scenario" />
            </node>
            <node concept="3oM_SD" id="2lMuMRU79SS" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="2lMuMRU79ST" role="1PaTwD">
              <property role="3oM_SC" value="TestDiscoveryContributor," />
            </node>
            <node concept="3oM_SD" id="2lMuMRU79V6" role="1PaTwD">
              <property role="3oM_SC" value="which" />
            </node>
            <node concept="3oM_SD" id="2lMuMRU79V7" role="1PaTwD">
              <property role="3oM_SC" value="deals" />
            </node>
            <node concept="3oM_SD" id="2lMuMRU79Vz" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="2lMuMRU79V$" role="1PaTwD">
              <property role="3oM_SC" value="CL" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="2lMuMRU79ZT" role="3cqZAp">
          <node concept="1PaTwC" id="2lMuMRU79ZU" role="1aUNEU">
            <node concept="3oM_SD" id="2lMuMRU79ZV" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="2lMuMRU79ZY" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="2lMuMRU7a1z" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="2lMuMRU7a5l" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="2lMuMRU7a5A" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="2lMuMRU7a1O" role="1PaTwD">
              <property role="3oM_SC" value="anyway," />
            </node>
            <node concept="3oM_SD" id="2lMuMRU7a2g" role="1PaTwD">
              <property role="3oM_SC" value="worth" />
            </node>
            <node concept="3oM_SD" id="2lMuMRU7a3n" role="1PaTwD">
              <property role="3oM_SC" value="revisit." />
            </node>
            <node concept="3oM_SD" id="2lMuMRU7a7g" role="1PaTwD">
              <property role="3oM_SC" value="In" />
            </node>
            <node concept="3oM_SD" id="2lMuMRU7a7G" role="1PaTwD">
              <property role="3oM_SC" value="fact," />
            </node>
            <node concept="3oM_SD" id="2lMuMRU7a7S" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="2lMuMRU7a7T" role="1PaTwD">
              <property role="3oM_SC" value="only" />
            </node>
            <node concept="3oM_SD" id="2lMuMRU7a85" role="1PaTwD">
              <property role="3oM_SC" value="valuable" />
            </node>
            <node concept="3oM_SD" id="2lMuMRU7a91" role="1PaTwD">
              <property role="3oM_SC" value="logic" />
            </node>
            <node concept="3oM_SD" id="2lMuMRU7a9y" role="1PaTwD">
              <property role="3oM_SC" value="here" />
            </node>
            <node concept="3oM_SD" id="2lMuMRU7aae" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="2lMuMRU7aaE" role="1PaTwD">
              <property role="3oM_SC" value="iteration" />
            </node>
            <node concept="3oM_SD" id="2lMuMRU7abL" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="2lMuMRU7abM" role="1PaTwD">
              <property role="3oM_SC" value="modules," />
            </node>
            <node concept="3oM_SD" id="2lMuMRU7ad4" role="1PaTwD">
              <property role="3oM_SC" value="models" />
            </node>
            <node concept="3oM_SD" id="2lMuMRU7ae6" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="2lMuMRU7ae7" role="1PaTwD">
              <property role="3oM_SC" value="filtering" />
            </node>
            <node concept="3oM_SD" id="2lMuMRU7aej" role="1PaTwD">
              <property role="3oM_SC" value="out" />
            </node>
            <node concept="3oM_SD" id="2lMuMRU7aek" role="1PaTwD">
              <property role="3oM_SC" value="stub" />
            </node>
            <node concept="3oM_SD" id="2lMuMRU7age" role="1PaTwD">
              <property role="3oM_SC" value="models," />
            </node>
            <node concept="3oM_SD" id="2lMuMRU7agq" role="1PaTwD">
              <property role="3oM_SC" value="easy" />
            </node>
            <node concept="3oM_SD" id="2lMuMRU7agF" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="2lMuMRU7agG" role="1PaTwD">
              <property role="3oM_SC" value="rework" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5gsHVK_JTfd" role="3cqZAp">
          <node concept="37vLTI" id="5gsHVK_JTff" role="3clFbG">
            <node concept="37vLTw" id="5gsHVK_JTfi" role="37vLTJ">
              <ref role="3cqZAo" node="5gsHVK_JTf9" resolve="myDiscoveryVisitor" />
            </node>
            <node concept="37vLTw" id="5gsHVK_JTfj" role="37vLTx">
              <ref role="3cqZAo" node="5gsHVK_JOjp" resolve="discoveryVisitor" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4Zd8$4Y4OBT" role="3cqZAp">
          <node concept="37vLTI" id="4Zd8$4Y4OBV" role="3clFbG">
            <node concept="37vLTw" id="4Zd8$4Y4OBY" role="37vLTJ">
              <ref role="3cqZAo" node="4Zd8$4Y4OBP" resolve="myClassManager" />
            </node>
            <node concept="37vLTw" id="4Zd8$4Y4OBZ" role="37vLTx">
              <ref role="3cqZAo" node="4Zd8$4Y4NKr" resolve="clm" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2lMuMRU7aoA" role="3cqZAp">
          <node concept="37vLTI" id="2lMuMRU7aoC" role="3clFbG">
            <node concept="37vLTw" id="2lMuMRU7aoF" role="37vLTJ">
              <ref role="3cqZAo" node="2lMuMRU7aoy" resolve="myTestPlatform" />
            </node>
            <node concept="37vLTw" id="2lMuMRU7aoG" role="37vLTx">
              <ref role="3cqZAo" node="2lMuMRU7aiE" resolve="testPlatform" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5gsHVK_eq37" role="jymVt" />
    <node concept="3clFb_" id="5gsHVK_evbD" role="jymVt">
      <property role="TrG5h" value="surveyModules" />
      <node concept="37vLTG" id="5gsHVK_evmE" role="3clF46">
        <property role="TrG5h" value="modules" />
        <node concept="3uibUv" id="5gsHVK_evyB" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
          <node concept="3uibUv" id="5gsHVK_ew3L" role="11_B2D">
            <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="5gsHVK_MiC2" role="3clF45" />
      <node concept="3Tm1VV" id="5gsHVK_K_tN" role="1B3o_S" />
      <node concept="3clFbS" id="5gsHVK_evbH" role="3clF47">
        <node concept="3SKdUt" id="5gsHVK_ewyE" role="3cqZAp">
          <node concept="1PaTwC" id="5gsHVK_ewyF" role="1aUNEU">
            <node concept="3oM_SD" id="5gsHVK_ewyJ" role="1PaTwD">
              <property role="3oM_SC" value="assume" />
            </node>
            <node concept="3oM_SD" id="5gsHVK_ew_j" role="1PaTwD">
              <property role="3oM_SC" value="read" />
            </node>
            <node concept="3oM_SD" id="5gsHVK_ewD$" role="1PaTwD">
              <property role="3oM_SC" value="action" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="5gsHVK_exq7" role="3cqZAp">
          <node concept="3clFbS" id="5gsHVK_exqa" role="2LFqv$">
            <node concept="3clFbF" id="5gsHVK_Mn9D" role="3cqZAp">
              <node concept="1rXfSq" id="5gsHVK_Kron" role="3clFbG">
                <ref role="37wK5l" node="5gsHVK_f8mO" resolve="surveyModule" />
                <node concept="37vLTw" id="5gsHVK_Kroo" role="37wK5m">
                  <ref role="3cqZAo" node="5gsHVK_exqb" resolve="module" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5gsHVK_exqb" role="1Duv9x">
            <property role="TrG5h" value="module" />
            <node concept="3uibUv" id="5gsHVK_exqf" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
            </node>
          </node>
          <node concept="37vLTw" id="5gsHVK_exqg" role="1DdaDG">
            <ref role="3cqZAo" node="5gsHVK_evmE" resolve="modules" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5gsHVK_fcdO" role="jymVt" />
    <node concept="3clFb_" id="5gsHVK_f8mO" role="jymVt">
      <property role="TrG5h" value="surveyModule" />
      <node concept="3Tm1VV" id="5gsHVK_KCoJ" role="1B3o_S" />
      <node concept="3cqZAl" id="5gsHVK_Mqvu" role="3clF45" />
      <node concept="37vLTG" id="5gsHVK_f8mJ" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="3uibUv" id="5gsHVK_f8mK" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="3clFbS" id="5gsHVK_f8ms" role="3clF47">
        <node concept="3cpWs8" id="5gsHVK_f8mt" role="3cqZAp">
          <node concept="3cpWsn" id="5gsHVK_f8mu" role="3cpWs9">
            <property role="TrG5h" value="models" />
            <node concept="3uibUv" id="5gsHVK_f8mv" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
              <node concept="3uibUv" id="5gsHVK_f8mw" role="11_B2D">
                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
              </node>
            </node>
            <node concept="2OqwBi" id="5gsHVK_f8mx" role="33vP2m">
              <node concept="37vLTw" id="5gsHVK_f8mL" role="2Oq$k0">
                <ref role="3cqZAo" node="5gsHVK_f8mJ" resolve="module" />
              </node>
              <node concept="liA8E" id="5gsHVK_f8mz" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SModule.getModels(java.util.function.Predicate)" resolve="getModels" />
                <node concept="1bVj0M" id="5gsHVK_f8m$" role="37wK5m">
                  <node concept="3clFbS" id="5gsHVK_f8m_" role="1bW5cS">
                    <node concept="3clFbF" id="5gsHVK_f8mA" role="3cqZAp">
                      <node concept="3fqX7Q" id="5gsHVK_f8mB" role="3clFbG">
                        <node concept="2YIFZM" id="5gsHVK_f8mC" role="3fr31v">
                          <ref role="37wK5l" to="w1kc:~SModelStereotype.isStubModel(org.jetbrains.mps.openapi.model.SModel)" resolve="isStubModel" />
                          <ref role="1Pybhc" to="w1kc:~SModelStereotype" resolve="SModelStereotype" />
                          <node concept="37vLTw" id="5gsHVK_f8mD" role="37wK5m">
                            <ref role="3cqZAo" node="5gsHVK_f8mE" resolve="model" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTG" id="5gsHVK_f8mE" role="1bW2Oz">
                    <property role="TrG5h" value="model" />
                    <node concept="3uibUv" id="5gsHVK_f8mF" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4oW2E9aSh9C" role="3cqZAp">
          <node concept="3cpWsn" id="4oW2E9aSh9B" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="moduleCL" />
            <node concept="3uibUv" id="4oW2E9aSh9D" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~ClassLoader" resolve="ClassLoader" />
            </node>
            <node concept="2OqwBi" id="4Zd8$4Y4VnJ" role="33vP2m">
              <node concept="37vLTw" id="4Zd8$4Y4ScA" role="2Oq$k0">
                <ref role="3cqZAo" node="4Zd8$4Y4OBP" resolve="myClassManager" />
              </node>
              <node concept="liA8E" id="4Zd8$4Y4XcL" role="2OqNvi">
                <ref role="37wK5l" to="3qmy:~ClassLoaderManager.getClassLoader(org.jetbrains.mps.openapi.module.SModule)" resolve="getClassLoader" />
                <node concept="37vLTw" id="4Zd8$4Y4YLS" role="37wK5m">
                  <ref role="3cqZAo" node="5gsHVK_f8mJ" resolve="module" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="5gsHVK_fSt$" role="3cqZAp">
          <node concept="3clFbS" id="5gsHVK_fSt_" role="2LFqv$">
            <node concept="1DcWWT" id="2Oogzg3u0Me" role="3cqZAp">
              <node concept="3clFbS" id="2Oogzg3u0Mh" role="2LFqv$">
                <node concept="3cpWs8" id="2BZ01qY$s6A" role="3cqZAp">
                  <node concept="3cpWsn" id="2BZ01qY$s6B" role="3cpWs9">
                    <property role="TrG5h" value="request" />
                    <node concept="3uibUv" id="2BZ01qY$r0t" role="1tU5fm">
                      <ref role="3uigEE" to="4u8o:2BZ01qXB7eE" resolve="TestDiscoveryRequest" />
                    </node>
                    <node concept="2ShNRf" id="2BZ01qY$s6C" role="33vP2m">
                      <node concept="1pGfFk" id="2BZ01qY$s6D" role="2ShVmc">
                        <ref role="37wK5l" to="4u8o:2BZ01qYwrj4" resolve="TestDiscoveryRequest" />
                        <node concept="2ShNRf" id="2BZ01qY$s6E" role="37wK5m">
                          <node concept="1pGfFk" id="2BZ01qY$s6F" role="2ShVmc">
                            <property role="373rjd" value="true" />
                            <ref role="37wK5l" to="4u8o:2BZ01qYxjqz" resolve="TestDescriptor" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="2lMuMRU7dwP" role="3cqZAp">
                  <node concept="2OqwBi" id="2lMuMRU7veR" role="3clFbG">
                    <node concept="2OqwBi" id="2lMuMRU7i3t" role="2Oq$k0">
                      <node concept="2OqwBi" id="2lMuMRU7f2Q" role="2Oq$k0">
                        <node concept="37vLTw" id="2lMuMRU7dwN" role="2Oq$k0">
                          <ref role="3cqZAo" node="2lMuMRU7aoy" resolve="myTestPlatform" />
                        </node>
                        <node concept="liA8E" id="2lMuMRU7gxr" role="2OqNvi">
                          <ref role="37wK5l" to="4u8o:2VjRkhsGS9E" resolve="getAggregateDiscoveryParticipant" />
                        </node>
                      </node>
                      <node concept="liA8E" id="2lMuMRU7j$2" role="2OqNvi">
                        <ref role="37wK5l" to="4u8o:2BZ01qXB6ZH" resolve="discover" />
                        <node concept="37vLTw" id="2lMuMRU7kUq" role="37wK5m">
                          <ref role="3cqZAo" node="2Oogzg3u0Mi" resolve="root" />
                        </node>
                        <node concept="37vLTw" id="2lMuMRU7nHx" role="37wK5m">
                          <ref role="3cqZAo" node="2BZ01qY$s6B" resolve="request" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="2lMuMRU7xdH" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Optional.ifPresent(java.util.function.Consumer)" resolve="ifPresent" />
                      <node concept="1bVj0M" id="2Oogzg3ul4E" role="37wK5m">
                        <node concept="3clFbS" id="2Oogzg3ul4G" role="1bW5cS">
                          <node concept="3clFbF" id="2Oogzg3uvsI" role="3cqZAp">
                            <node concept="2OqwBi" id="2Oogzg3uvsJ" role="3clFbG">
                              <node concept="37vLTw" id="2Oogzg3uvsK" role="2Oq$k0">
                                <ref role="3cqZAo" node="5gsHVK_JTf9" resolve="myDiscoveryVisitor" />
                              </node>
                              <node concept="liA8E" id="2Oogzg3uvsL" role="2OqNvi">
                                <ref role="37wK5l" node="5gsHVK_JAMw" resolve="visitTestRoot" />
                                <node concept="37vLTw" id="2Oogzg3uvsM" role="37wK5m">
                                  <ref role="3cqZAo" node="2Oogzg3u0Mi" resolve="root" />
                                </node>
                                <node concept="2OqwBi" id="2Oogzg3uzLX" role="37wK5m">
                                  <node concept="37vLTw" id="2Oogzg3uvsN" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2Oogzg3umrl" resolve="descriptor" />
                                  </node>
                                  <node concept="liA8E" id="2Oogzg3uDQq" role="2OqNvi">
                                    <ref role="37wK5l" to="4u8o:2BZ01qXyOum" resolve="getFullName" />
                                  </node>
                                </node>
                                <node concept="37vLTw" id="2Oogzg3uvsO" role="37wK5m">
                                  <ref role="3cqZAo" node="4oW2E9aSh9B" resolve="moduleCL" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="2Oogzg3umrl" role="1bW2Oz">
                          <property role="TrG5h" value="descriptor" />
                          <node concept="2jxLKc" id="2Oogzg3umrm" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="2Oogzg3u0Mi" role="1Duv9x">
                <property role="TrG5h" value="root" />
                <node concept="3uibUv" id="2Oogzg3u0Mm" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
              <node concept="2OqwBi" id="2Oogzg3u0Mn" role="1DdaDG">
                <node concept="1eOMI4" id="2Oogzg3u0Mo" role="2Oq$k0">
                  <node concept="10QFUN" id="2Oogzg3u0Mp" role="1eOMHV">
                    <node concept="H_c77" id="2Oogzg3u0Mq" role="10QFUM" />
                    <node concept="37vLTw" id="2Oogzg3u0Mr" role="10QFUP">
                      <ref role="3cqZAo" node="5gsHVK_fStR" resolve="model" />
                    </node>
                  </node>
                </node>
                <node concept="2RRcyG" id="2Oogzg3u0Ms" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5gsHVK_fStR" role="1Duv9x">
            <property role="TrG5h" value="model" />
            <node concept="3uibUv" id="5gsHVK_fStS" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
            </node>
          </node>
          <node concept="37vLTw" id="5gsHVK_fStU" role="1DdaDG">
            <ref role="3cqZAo" node="5gsHVK_f8mu" resolve="models" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3HP615" id="5gsHVK_Jw60">
    <property role="2bfB8j" value="true" />
    <property role="TrG5h" value="TestDiscoveryVisitor" />
    <node concept="2tJIrI" id="5gsHVK_JAdf" role="jymVt" />
    <node concept="3clFb_" id="5gsHVK_JAMw" role="jymVt">
      <property role="TrG5h" value="visitTestRoot" />
      <node concept="37vLTG" id="5gsHVK_JBnY" role="3clF46">
        <property role="TrG5h" value="testRootNode" />
        <node concept="3uibUv" id="5gsHVK_JB_6" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="5gsHVK_L5C8" role="3clF46">
        <property role="TrG5h" value="testClassName" />
        <node concept="17QB3L" id="5gsHVK_MZno" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5gsHVK_N51p" role="3clF46">
        <property role="TrG5h" value="moduleClassLoader" />
        <node concept="3uibUv" id="5gsHVK_Ndl3" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~ClassLoader" resolve="ClassLoader" />
        </node>
      </node>
      <node concept="3cqZAl" id="5gsHVK_Oiir" role="3clF45" />
      <node concept="3Tm1VV" id="5gsHVK_JAMz" role="1B3o_S" />
      <node concept="3clFbS" id="5gsHVK_JAM$" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="5gsHVK_MD9a" role="jymVt" />
    <node concept="3Tm1VV" id="5gsHVK_Jw61" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="5gsHVK_3DwI">
    <property role="TrG5h" value="ModuleFilesListProjectStrategy" />
    <node concept="2tJIrI" id="5gsHVK_3GD7" role="jymVt" />
    <node concept="312cEg" id="5gsHVK_5cnD" role="jymVt">
      <property role="TrG5h" value="myModuleDirs" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5gsHVK_5cnA" role="1B3o_S" />
      <node concept="3uibUv" id="5gsHVK_5cnB" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="17QB3L" id="5gsHVK_6gDD" role="11_B2D" />
      </node>
    </node>
    <node concept="312cEg" id="5gsHVK_62cf" role="jymVt">
      <property role="TrG5h" value="myModuleFiles" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5gsHVK_62cc" role="1B3o_S" />
      <node concept="3uibUv" id="5gsHVK_62cd" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
        <node concept="3uibUv" id="5gsHVK_62ce" role="11_B2D">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5gsHVK_64_x" role="jymVt" />
    <node concept="3clFbW" id="5gsHVK_3Jgt" role="jymVt">
      <node concept="37vLTG" id="5gsHVK_3Jp7" role="3clF46">
        <property role="TrG5h" value="moduleFiles" />
        <node concept="3uibUv" id="5gsHVK_3JQ$" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
          <node concept="3uibUv" id="5gsHVK_3Lsu" role="11_B2D">
            <ref role="3uigEE" to="guwi:~File" resolve="File" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="5gsHVK_3Jgv" role="3clF45" />
      <node concept="3Tm1VV" id="5gsHVK_3Jgw" role="1B3o_S" />
      <node concept="3clFbS" id="5gsHVK_3Jgx" role="3clF47">
        <node concept="3clFbF" id="5gsHVK_62cm" role="3cqZAp">
          <node concept="37vLTI" id="5gsHVK_62cn" role="3clFbG">
            <node concept="2OqwBi" id="5gsHVK_62co" role="37vLTJ">
              <node concept="Xjq3P" id="5gsHVK_62cp" role="2Oq$k0" />
              <node concept="2OwXpG" id="5gsHVK_62cq" role="2OqNvi">
                <ref role="2Oxat5" node="5gsHVK_62cf" resolve="myModuleFiles" />
              </node>
            </node>
            <node concept="37vLTw" id="5gsHVK_62cr" role="37vLTx">
              <ref role="3cqZAo" node="5gsHVK_3Jp7" resolve="moduleFiles" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5gsHVK_5coj" role="3cqZAp">
          <node concept="37vLTI" id="5gsHVK_5cok" role="3clFbG">
            <node concept="2OqwBi" id="5gsHVK_5col" role="37vLTJ">
              <node concept="Xjq3P" id="5gsHVK_5com" role="2Oq$k0" />
              <node concept="2OwXpG" id="5gsHVK_5con" role="2OqNvi">
                <ref role="2Oxat5" node="5gsHVK_5cnD" resolve="myModuleDirs" />
              </node>
            </node>
            <node concept="2OqwBi" id="5gsHVK_5coo" role="37vLTx">
              <property role="hSjvv" value="true" />
              <node concept="2OqwBi" id="5gsHVK_5cop" role="2Oq$k0">
                <property role="hSjvv" value="true" />
                <node concept="2OqwBi" id="5gsHVK_5coq" role="2Oq$k0">
                  <property role="hSjvv" value="true" />
                  <node concept="2OqwBi" id="5gsHVK_5cor" role="2Oq$k0">
                    <property role="hSjvv" value="true" />
                    <node concept="2OqwBi" id="5gsHVK_5cos" role="2Oq$k0">
                      <property role="hSjvv" value="true" />
                      <node concept="37vLTw" id="5gsHVK_5cot" role="2Oq$k0">
                        <ref role="3cqZAo" node="5gsHVK_3Jp7" resolve="moduleFiles" />
                      </node>
                      <node concept="liA8E" id="5gsHVK_5cou" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                      </node>
                    </node>
                    <node concept="liA8E" id="5gsHVK_5cov" role="2OqNvi">
                      <ref role="37wK5l" to="1ctc:~Stream.map(java.util.function.Function)" resolve="map" />
                      <node concept="1bVj0M" id="5gsHVK_5cow" role="37wK5m">
                        <node concept="37vLTG" id="5gsHVK_5cox" role="1bW2Oz">
                          <property role="TrG5h" value="file" />
                          <node concept="3uibUv" id="5gsHVK_5coy" role="1tU5fm">
                            <ref role="3uigEE" to="guwi:~File" resolve="File" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="5gsHVK_5coz" role="1bW5cS">
                          <node concept="3clFbF" id="5gsHVK_5co$" role="3cqZAp">
                            <node concept="2OqwBi" id="5gsHVK_5co_" role="3clFbG">
                              <node concept="37vLTw" id="5gsHVK_5coA" role="2Oq$k0">
                                <ref role="3cqZAo" node="5gsHVK_5cox" resolve="file" />
                              </node>
                              <node concept="liA8E" id="5gsHVK_5coB" role="2OqNvi">
                                <ref role="37wK5l" to="guwi:~File.getParentFile()" resolve="getParentFile" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="5gsHVK_5coC" role="2OqNvi">
                    <ref role="37wK5l" to="1ctc:~Stream.filter(java.util.function.Predicate)" resolve="filter" />
                    <node concept="1bVj0M" id="5gsHVK_5coD" role="37wK5m">
                      <node concept="37vLTG" id="5gsHVK_5coE" role="1bW2Oz">
                        <property role="TrG5h" value="parentFile" />
                        <node concept="3uibUv" id="5gsHVK_5coF" role="1tU5fm">
                          <ref role="3uigEE" to="guwi:~File" resolve="File" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="5gsHVK_5coG" role="1bW5cS">
                        <node concept="3clFbF" id="5gsHVK_5coH" role="3cqZAp">
                          <node concept="3y3z36" id="5gsHVK_5coI" role="3clFbG">
                            <node concept="10Nm6u" id="5gsHVK_5coJ" role="3uHU7w" />
                            <node concept="37vLTw" id="5gsHVK_5coK" role="3uHU7B">
                              <ref role="3cqZAo" node="5gsHVK_5coE" resolve="parentFile" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="5gsHVK_5coL" role="2OqNvi">
                  <ref role="37wK5l" to="1ctc:~Stream.map(java.util.function.Function)" resolve="map" />
                  <node concept="1bVj0M" id="5gsHVK_5coM" role="37wK5m">
                    <node concept="37vLTG" id="5gsHVK_5coN" role="1bW2Oz">
                      <property role="TrG5h" value="parentFile" />
                      <node concept="3uibUv" id="5gsHVK_5coO" role="1tU5fm">
                        <ref role="3uigEE" to="guwi:~File" resolve="File" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="5gsHVK_5coP" role="1bW5cS">
                      <node concept="3clFbF" id="5gsHVK_5coQ" role="3cqZAp">
                        <node concept="2OqwBi" id="5gsHVK_5coR" role="3clFbG">
                          <node concept="37vLTw" id="5gsHVK_5coS" role="2Oq$k0">
                            <ref role="3cqZAo" node="5gsHVK_5coN" resolve="parentFile" />
                          </node>
                          <node concept="liA8E" id="5gsHVK_5coT" role="2OqNvi">
                            <ref role="37wK5l" to="guwi:~File.getPath()" resolve="getPath" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="5gsHVK_5coU" role="2OqNvi">
                <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                <node concept="2YIFZM" id="5gsHVK_5coV" role="37wK5m">
                  <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                  <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                  <node concept="17QB3L" id="5gsHVK_6fVD" role="3PaCim" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5gsHVK_3J7I" role="jymVt" />
    <node concept="3Tm1VV" id="5gsHVK_3DwJ" role="1B3o_S" />
    <node concept="3uibUv" id="5gsHVK_3Gxy" role="1zkMxy">
      <ref role="3uigEE" to="79ha:5A5jZrz799S" resolve="ProjectStrategyBase" />
    </node>
    <node concept="3clFb_" id="5gsHVK_3GJn" role="jymVt">
      <property role="TrG5h" value="construct" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3Tmbuc" id="5gsHVK_3GJp" role="1B3o_S" />
      <node concept="3uibUv" id="5gsHVK_3GJq" role="3clF45">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
      <node concept="2AHcQZ" id="5gsHVK_3GJr" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="37vLTG" id="5gsHVK_3GJs" role="3clF46">
        <property role="TrG5h" value="mpsPlatform" />
        <node concept="3uibUv" id="5gsHVK_3GJt" role="1tU5fm">
          <ref role="3uigEE" to="wyuk:~ComponentHost" resolve="ComponentHost" />
        </node>
        <node concept="2AHcQZ" id="5gsHVK_3GJu" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="5gsHVK_3GJv" role="3clF46">
        <property role="TrG5h" value="emptyProject" />
        <node concept="3uibUv" id="5gsHVK_3GJw" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
        <node concept="2AHcQZ" id="5gsHVK_3GJx" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="5gsHVK_3GJy" role="3clF47">
        <node concept="3SKdUt" id="5gsHVK_5$t3" role="3cqZAp">
          <node concept="1PaTwC" id="5gsHVK_5$t4" role="1aUNEU">
            <node concept="3oM_SD" id="5gsHVK_5_vV" role="1PaTwD">
              <property role="3oM_SC" value="https://youtrack.jetbrains.com/issue/MPS-24778" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6Jk_680Dg86" role="3cqZAp">
          <node concept="2YIFZM" id="5gsHVK_5rPj" role="3clFbG">
            <ref role="37wK5l" to="ab4o:~VfsRootAccess.allowRootAccess(com.intellij.openapi.Disposable,java.lang.String...)" resolve="allowRootAccess" />
            <ref role="1Pybhc" to="ab4o:~VfsRootAccess" resolve="VfsRootAccess" />
            <node concept="2YIFZM" id="5gsHVK_5rPk" role="37wK5m">
              <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
              <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
            </node>
            <node concept="2OqwBi" id="5gsHVK_5rPl" role="37wK5m">
              <node concept="37vLTw" id="5gsHVK_5rPm" role="2Oq$k0">
                <ref role="3cqZAo" node="5gsHVK_5cnD" resolve="myModuleDirs" />
              </node>
              <node concept="liA8E" id="5gsHVK_5rPn" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.toArray(java.lang.Object[])" resolve="toArray" />
                <node concept="2ShNRf" id="5gsHVK_5rPo" role="37wK5m">
                  <node concept="3$_iS1" id="5gsHVK_5rPp" role="2ShVmc">
                    <node concept="3$GHV9" id="5gsHVK_5rPq" role="3$GQph">
                      <node concept="2OqwBi" id="5gsHVK_5rPr" role="3$I4v7">
                        <node concept="37vLTw" id="5gsHVK_5rPs" role="2Oq$k0">
                          <ref role="3cqZAo" node="5gsHVK_5cnD" resolve="myModuleDirs" />
                        </node>
                        <node concept="liA8E" id="5gsHVK_5rPt" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                        </node>
                      </node>
                    </node>
                    <node concept="3uibUv" id="5gsHVK_5rPu" role="3$_nBY">
                      <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5EMxBKzYND9" role="3cqZAp">
          <node concept="1PaTwC" id="5EMxBKzYNDa" role="1aUNEU">
            <node concept="3oM_SD" id="5EMxBKzYNDb" role="1PaTwD">
              <property role="3oM_SC" value="FTR," />
            </node>
            <node concept="3oM_SD" id="5EMxBKzYODo" role="1PaTwD">
              <property role="3oM_SC" value="there's" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzYOEa" role="1PaTwD">
              <property role="3oM_SC" value="TestRootAccessInsight" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzYOF8" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzYOFo" role="1PaTwD">
              <property role="3oM_SC" value="does" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzYOFp" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzYOFq" role="1PaTwD">
              <property role="3oM_SC" value="same." />
            </node>
            <node concept="3oM_SD" id="5EMxBKzYOFU" role="1PaTwD">
              <property role="3oM_SC" value="However," />
            </node>
            <node concept="3oM_SD" id="5EMxBKzYOHC" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzYOHT" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzYOID" role="1PaTwD">
              <property role="3oM_SC" value="next" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzYOJF" role="1PaTwD">
              <property role="3oM_SC" value="code" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzYOKb" role="1PaTwD">
              <property role="3oM_SC" value="explicitly" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzYOLq" role="1PaTwD">
              <property role="3oM_SC" value="using" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzYOLU" role="1PaTwD">
              <property role="3oM_SC" value="java.io.File," />
            </node>
            <node concept="3oM_SD" id="5EMxBKzYONS" role="1PaTwD">
              <property role="3oM_SC" value="do" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzYOPm" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5EMxBKzYOQr" role="3cqZAp">
          <node concept="1PaTwC" id="5EMxBKzYOQs" role="1aUNEU">
            <node concept="3oM_SD" id="5EMxBKzYOQt" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzYQth" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzYQtz" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzYQt$" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzYQt_" role="1PaTwD">
              <property role="3oM_SC" value="still" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzYQu5" role="1PaTwD">
              <property role="3oM_SC" value="need" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzYQu6" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzYQu7" role="1PaTwD">
              <property role="3oM_SC" value="facilitate" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzYQv_" role="1PaTwD">
              <property role="3oM_SC" value="root" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzYQvQ" role="1PaTwD">
              <property role="3oM_SC" value="access," />
            </node>
            <node concept="3oM_SD" id="5EMxBKzYQwm" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzYQwQ" role="1PaTwD">
              <property role="3oM_SC" value="wonder." />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5gsHVK_3M5i" role="3cqZAp" />
        <node concept="3SKdUt" id="7ydKsop9iu1" role="3cqZAp">
          <node concept="1PaTwC" id="7ydKsop9iu2" role="1aUNEU">
            <node concept="3oM_SD" id="7ydKsop9juA" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="3oM_SD" id="7ydKsop9ju5" role="1PaTwD">
              <property role="3oM_SC" value="plain" />
            </node>
            <node concept="3oM_SD" id="7ydKsop9jwp" role="1PaTwD">
              <property role="3oM_SC" value="java.io-backed" />
            </node>
            <node concept="3oM_SD" id="7ydKsop9jwE" role="1PaTwD">
              <property role="3oM_SC" value="FS" />
            </node>
            <node concept="3oM_SD" id="7ydKsop9jxb" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="7ydKsop9jxc" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="7ydKsop9jxH" role="1PaTwD">
              <property role="3oM_SC" value="don't" />
            </node>
            <node concept="3oM_SD" id="7ydKsop9jxY" role="1PaTwD">
              <property role="3oM_SC" value="need" />
            </node>
            <node concept="3oM_SD" id="7ydKsop9jyf" role="1PaTwD">
              <property role="3oM_SC" value="anything" />
            </node>
            <node concept="3oM_SD" id="7ydKsop9jyg" role="1PaTwD">
              <property role="3oM_SC" value="but" />
            </node>
            <node concept="3oM_SD" id="7ydKsop9jyL" role="1PaTwD">
              <property role="3oM_SC" value="raw" />
            </node>
            <node concept="3oM_SD" id="7ydKsop9jzi" role="1PaTwD">
              <property role="3oM_SC" value="contents" />
            </node>
            <node concept="3oM_SD" id="7ydKsop9jzz" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="7ydKsop9jz$" role="1PaTwD">
              <property role="3oM_SC" value="these" />
            </node>
            <node concept="3oM_SD" id="7ydKsop9jz_" role="1PaTwD">
              <property role="3oM_SC" value="module" />
            </node>
            <node concept="3oM_SD" id="7ydKsop9j$6" role="1PaTwD">
              <property role="3oM_SC" value="jars," />
            </node>
            <node concept="3oM_SD" id="7ydKsop9j$B" role="1PaTwD">
              <property role="3oM_SC" value="no" />
            </node>
            <node concept="3oM_SD" id="7ydKsop9j_Y" role="1PaTwD">
              <property role="3oM_SC" value="change" />
            </node>
            <node concept="3oM_SD" id="7ydKsop9jC_" role="1PaTwD">
              <property role="3oM_SC" value="tracking" />
            </node>
            <node concept="3oM_SD" id="7ydKsop9jD8" role="1PaTwD">
              <property role="3oM_SC" value="or" />
            </node>
            <node concept="3oM_SD" id="7ydKsop9jDp" role="1PaTwD">
              <property role="3oM_SC" value="caching" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="25EyDezeLPw" role="3cqZAp">
          <node concept="3cpWsn" id="25EyDezeLPx" role="3cpWs9">
            <property role="TrG5h" value="localFS" />
            <node concept="3uibUv" id="25EyDezeLPy" role="1tU5fm">
              <ref role="3uigEE" to="3ju5:~IFileSystem" resolve="IFileSystem" />
            </node>
            <node concept="2OqwBi" id="25EyDezeLPz" role="33vP2m">
              <node concept="2OqwBi" id="25EyDezeLP$" role="2Oq$k0">
                <node concept="37vLTw" id="25EyDezeLP_" role="2Oq$k0">
                  <ref role="3cqZAo" node="5gsHVK_3GJs" resolve="mpsPlatform" />
                </node>
                <node concept="liA8E" id="25EyDezeLPA" role="2OqNvi">
                  <ref role="37wK5l" to="wyuk:~ComponentHost.findComponent(java.lang.Class)" resolve="findComponent" />
                  <node concept="3VsKOn" id="25EyDezeLPB" role="37wK5m">
                    <ref role="3VsUkX" to="3ju5:~VFSManager" resolve="VFSManager" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="25EyDezeLPC" role="2OqNvi">
                <ref role="37wK5l" to="3ju5:~VFSManager.getFileSystem(java.lang.String)" resolve="getFileSystem" />
                <node concept="10M0yZ" id="7ydKsop9evL" role="37wK5m">
                  <ref role="3cqZAo" to="3ju5:~VFSManager.JAVA_IO_FILE_FS" resolve="JAVA_IO_FILE_FS" />
                  <ref role="1PxDUh" to="3ju5:~VFSManager" resolve="VFSManager" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5gsHVK_5_DQ" role="3cqZAp" />
        <node concept="3cpWs8" id="7LkutxgThrq" role="3cqZAp">
          <node concept="3cpWsn" id="7LkutxgThrr" role="3cpWs9">
            <property role="TrG5h" value="mm" />
            <node concept="3uibUv" id="7LkutxgThrs" role="1tU5fm">
              <ref role="3uigEE" to="32g5:~ModulesMiner" resolve="ModulesMiner" />
            </node>
            <node concept="2ShNRf" id="7LkutxgTh_b" role="33vP2m">
              <node concept="1pGfFk" id="7LkutxgThU4" role="2ShVmc">
                <ref role="37wK5l" to="32g5:~ModulesMiner.&lt;init&gt;(jetbrains.mps.components.ComponentHost)" resolve="ModulesMiner" />
                <node concept="37vLTw" id="25EyDezeKfi" role="37wK5m">
                  <ref role="3cqZAo" node="5gsHVK_3GJs" resolve="mpsPlatform" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="7fR23Zqm3Ei" role="3cqZAp">
          <node concept="37vLTw" id="7fR23Zqm3Ej" role="2GsD0m">
            <ref role="3cqZAo" node="5gsHVK_62cf" resolve="myModuleFiles" />
          </node>
          <node concept="2GrKxI" id="7fR23Zqm3Ek" role="2Gsz3X">
            <property role="TrG5h" value="moduleFile" />
          </node>
          <node concept="3clFbS" id="7fR23Zqm3El" role="2LFqv$">
            <node concept="3clFbF" id="7LkutxgTkAE" role="3cqZAp">
              <node concept="2OqwBi" id="7LkutxgTkEA" role="3clFbG">
                <node concept="37vLTw" id="7LkutxgTkAC" role="2Oq$k0">
                  <ref role="3cqZAo" node="7LkutxgThrr" resolve="mm" />
                </node>
                <node concept="liA8E" id="7LkutxgTkKE" role="2OqNvi">
                  <ref role="37wK5l" to="32g5:~ModulesMiner.collectModules(jetbrains.mps.vfs.IFile)" resolve="collectModules" />
                  <node concept="2OqwBi" id="5gsHVK_6o8c" role="37wK5m">
                    <node concept="liA8E" id="5gsHVK_6o8d" role="2OqNvi">
                      <ref role="37wK5l" to="3ju5:~IFileSystem.getFile(java.io.File)" resolve="getFile" />
                      <node concept="2GrUjf" id="5gsHVK_6o8e" role="37wK5m">
                        <ref role="2Gs0qQ" node="7fR23Zqm3Ek" resolve="moduleFile" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="5gsHVK_6o8f" role="2Oq$k0">
                      <ref role="3cqZAo" node="25EyDezeLPx" resolve="localFS" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5gsHVK_5wzm" role="3cqZAp" />
        <node concept="3cpWs6" id="2BGPXkEvjS5" role="3cqZAp">
          <node concept="1rXfSq" id="2BGPXkEwJvF" role="3cqZAk">
            <ref role="37wK5l" to="79ha:2BGPXkEwDKI" resolve="loadProjectFromModuleHandles" />
            <node concept="37vLTw" id="2BGPXkEwQIi" role="37wK5m">
              <ref role="3cqZAo" node="5gsHVK_3GJv" resolve="emptyProject" />
            </node>
            <node concept="2OqwBi" id="7LkutxgTkRB" role="37wK5m">
              <node concept="37vLTw" id="7LkutxgTkNq" role="2Oq$k0">
                <ref role="3cqZAo" node="7LkutxgThrr" resolve="mm" />
              </node>
              <node concept="liA8E" id="7LkutxgTl2J" role="2OqNvi">
                <ref role="37wK5l" to="32g5:~ModulesMiner.getCollectedModules()" resolve="getCollectedModules" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5gsHVK_3GJz" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5gsHVK_3IUW" role="jymVt" />
    <node concept="3UR2Jj" id="5EMxBKzYQCn" role="lGtFl">
      <node concept="1PaTwC" id="1E1X3WHsCJ4" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsCJ5" role="1PaTwD">
          <property role="3oM_SC" value="Not" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCJ6" role="1PaTwD">
          <property role="3oM_SC" value="in" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCJ7" role="1PaTwD">
          <property role="3oM_SC" value="use" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCJ8" role="1PaTwD">
          <property role="3oM_SC" value="(test" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCJ9" role="1PaTwD">
          <property role="3oM_SC" value="launcher" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCJa" role="1PaTwD">
          <property role="3oM_SC" value="no" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCJb" role="1PaTwD">
          <property role="3oM_SC" value="longer" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCJc" role="1PaTwD">
          <property role="3oM_SC" value="loads" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCJd" role="1PaTwD">
          <property role="3oM_SC" value="test" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCJe" role="1PaTwD">
          <property role="3oM_SC" value="modules" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCJf" role="1PaTwD">
          <property role="3oM_SC" value="into" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCJg" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCJh" role="1PaTwD">
          <property role="3oM_SC" value="project" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCJi" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCJj" role="1PaTwD">
          <property role="3oM_SC" value="discover" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCJk" role="1PaTwD">
          <property role="3oM_SC" value="test" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCJl" role="1PaTwD">
          <property role="3oM_SC" value="classes)," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCJm" role="1PaTwD">
          <property role="3oM_SC" value="perhaps," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCJn" role="1PaTwD">
          <property role="3oM_SC" value="shall" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCJo" role="1PaTwD">
          <property role="3oM_SC" value="drop" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCJp" role="1PaTwD">
          <property role="3oM_SC" value="this" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCJq" role="1PaTwD">
          <property role="3oM_SC" value="one" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="HwplGLNXsw">
    <property role="TrG5h" value="FailureDetector" />
    <node concept="312cEg" id="HwplGLR8Qv" role="jymVt">
      <property role="TrG5h" value="errors" />
      <node concept="3Tm6S6" id="HwplGLR8Qw" role="1B3o_S" />
      <node concept="3uibUv" id="HwplGLR9Sw" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="17QB3L" id="HwplGLR9Zk" role="11_B2D" />
      </node>
      <node concept="2ShNRf" id="HwplGLRagZ" role="33vP2m">
        <node concept="1pGfFk" id="HwplGLRaJJ" role="2ShVmc">
          <property role="373rjd" value="true" />
          <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="HwplGM5ibG" role="jymVt" />
    <node concept="3Tm1VV" id="HwplGLNXsx" role="1B3o_S" />
    <node concept="3uibUv" id="HwplGLO09h" role="EKbjA">
      <ref role="3uigEE" to="bws1:~TestExecutionListener" resolve="TestExecutionListener" />
    </node>
    <node concept="3clFb_" id="HwplGLO0uO" role="jymVt">
      <property role="TrG5h" value="executionFinished" />
      <node concept="3Tm1VV" id="HwplGLO0uQ" role="1B3o_S" />
      <node concept="3cqZAl" id="HwplGLO0uS" role="3clF45" />
      <node concept="37vLTG" id="HwplGLO0uT" role="3clF46">
        <property role="TrG5h" value="testIdentifier" />
        <node concept="3uibUv" id="HwplGLO0uU" role="1tU5fm">
          <ref role="3uigEE" to="bws1:~TestIdentifier" resolve="TestIdentifier" />
        </node>
      </node>
      <node concept="37vLTG" id="HwplGLO0uV" role="3clF46">
        <property role="TrG5h" value="testExecutionResult" />
        <node concept="3uibUv" id="HwplGLO0uW" role="1tU5fm">
          <ref role="3uigEE" to="n4ib:~TestExecutionResult" resolve="TestExecutionResult" />
        </node>
      </node>
      <node concept="3clFbS" id="HwplGLO0uX" role="3clF47">
        <node concept="3clFbJ" id="HwplGLO3bX" role="3cqZAp">
          <node concept="3clFbC" id="HwplGLO59_" role="3clFbw">
            <node concept="Rm8GO" id="HwplGLO5O$" role="3uHU7w">
              <ref role="Rm8GQ" to="n4ib:~TestExecutionResult$Status.FAILED" resolve="FAILED" />
              <ref role="1Px2BO" to="n4ib:~TestExecutionResult$Status" resolve="TestExecutionResult.Status" />
            </node>
            <node concept="2OqwBi" id="HwplGLO3_r" role="3uHU7B">
              <node concept="37vLTw" id="HwplGLO3ok" role="2Oq$k0">
                <ref role="3cqZAo" node="HwplGLO0uV" resolve="testExecutionResult" />
              </node>
              <node concept="liA8E" id="HwplGLO3SE" role="2OqNvi">
                <ref role="37wK5l" to="n4ib:~TestExecutionResult.getStatus()" resolve="getStatus" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="HwplGLO3bZ" role="3clFbx">
            <node concept="3clFbF" id="HwplGLRZf6" role="3cqZAp">
              <node concept="2OqwBi" id="HwplGLS1oG" role="3clFbG">
                <node concept="37vLTw" id="HwplGLRZf4" role="2Oq$k0">
                  <ref role="3cqZAo" node="HwplGLR8Qv" resolve="errors" />
                </node>
                <node concept="liA8E" id="HwplGLS591" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                  <node concept="3cpWs3" id="6cj1r3kRkMt" role="37wK5m">
                    <node concept="2OqwBi" id="6cj1r3kRsHk" role="3uHU7w">
                      <node concept="37vLTw" id="6cj1r3kRrNU" role="2Oq$k0">
                        <ref role="3cqZAo" node="HwplGLO0uV" resolve="testExecutionResult" />
                      </node>
                      <node concept="liA8E" id="6cj1r3kRucT" role="2OqNvi">
                        <ref role="37wK5l" to="n4ib:~TestExecutionResult.toString()" resolve="toString" />
                      </node>
                    </node>
                    <node concept="3cpWs3" id="6cj1r3kRvFO" role="3uHU7B">
                      <node concept="Xl_RD" id="6cj1r3kRwx6" role="3uHU7w">
                        <property role="Xl_RC" value=" " />
                      </node>
                      <node concept="3cpWs3" id="HwplGLOO3U" role="3uHU7B">
                        <node concept="Xl_RD" id="HwplGLOIr_" role="3uHU7B">
                          <property role="Xl_RC" value="Test failure: " />
                        </node>
                        <node concept="2OqwBi" id="HwplGLOQwS" role="3uHU7w">
                          <node concept="37vLTw" id="HwplGLOPtR" role="2Oq$k0">
                            <ref role="3cqZAo" node="HwplGLO0uT" resolve="testIdentifier" />
                          </node>
                          <node concept="liA8E" id="HwplGLOREh" role="2OqNvi">
                            <ref role="37wK5l" to="bws1:~TestIdentifier.getDisplayName()" resolve="getDisplayName" />
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
        <node concept="3clFbF" id="k06EmAk231" role="3cqZAp">
          <node concept="2YIFZM" id="2cUAfn2YJZ6" role="3clFbG">
            <ref role="37wK5l" to="anz6:~TestLoggerFactory.onTestFinished(boolean,java.lang.String)" resolve="onTestFinished" />
            <ref role="1Pybhc" to="anz6:~TestLoggerFactory" resolve="TestLoggerFactory" />
            <node concept="3clFbC" id="2cUAfn2YJZ7" role="37wK5m">
              <node concept="Rm8GO" id="2cUAfn2YJZ8" role="3uHU7w">
                <ref role="Rm8GQ" to="n4ib:~TestExecutionResult$Status.SUCCESSFUL" resolve="SUCCESSFUL" />
                <ref role="1Px2BO" to="n4ib:~TestExecutionResult$Status" resolve="TestExecutionResult.Status" />
              </node>
              <node concept="2OqwBi" id="2cUAfn2YJZ9" role="3uHU7B">
                <node concept="37vLTw" id="2cUAfn2YJZa" role="2Oq$k0">
                  <ref role="3cqZAo" node="HwplGLO0uV" resolve="testExecutionResult" />
                </node>
                <node concept="liA8E" id="2cUAfn2YJZb" role="2OqNvi">
                  <ref role="37wK5l" to="n4ib:~TestExecutionResult.getStatus()" resolve="getStatus" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="2cUAfn2YJZc" role="37wK5m">
              <node concept="37vLTw" id="2cUAfn2YJZd" role="2Oq$k0">
                <ref role="3cqZAo" node="HwplGLO0uT" resolve="testIdentifier" />
              </node>
              <node concept="liA8E" id="2cUAfn2YJZe" role="2OqNvi">
                <ref role="37wK5l" to="bws1:~TestIdentifier.getDisplayName()" resolve="getDisplayName" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="HwplGLO0uY" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="HwplGLOcE9" role="jymVt" />
    <node concept="3clFb_" id="HwplGLOdda" role="jymVt">
      <property role="TrG5h" value="hasFailures" />
      <node concept="10P_77" id="HwplGLOdu9" role="3clF45" />
      <node concept="3Tm1VV" id="HwplGLOddd" role="1B3o_S" />
      <node concept="3clFbS" id="HwplGLOdde" role="3clF47">
        <node concept="3clFbF" id="HwplGLOePt" role="3cqZAp">
          <node concept="3fqX7Q" id="HwplGM63tJ" role="3clFbG">
            <node concept="2OqwBi" id="HwplGM63tL" role="3fr31v">
              <node concept="37vLTw" id="HwplGM63tM" role="2Oq$k0">
                <ref role="3cqZAo" node="HwplGLR8Qv" resolve="errors" />
              </node>
              <node concept="liA8E" id="HwplGM63tN" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.isEmpty()" resolve="isEmpty" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3OA_Uj9$W7_" role="jymVt" />
    <node concept="3clFb_" id="3OA_Uj9$WOu" role="jymVt">
      <property role="TrG5h" value="failuresCount" />
      <node concept="10Oyi0" id="3OA_Uj9$XyX" role="3clF45" />
      <node concept="3Tm1VV" id="3OA_Uj9$WOx" role="1B3o_S" />
      <node concept="3clFbS" id="3OA_Uj9$WOy" role="3clF47">
        <node concept="3clFbF" id="3OA_Uj9_39p" role="3cqZAp">
          <node concept="2OqwBi" id="3OA_Uj9_4_J" role="3clFbG">
            <node concept="37vLTw" id="3OA_Uj9_39o" role="2Oq$k0">
              <ref role="3cqZAo" node="HwplGLR8Qv" resolve="errors" />
            </node>
            <node concept="liA8E" id="3OA_Uj9_6qS" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="HwplGLRcKu" role="jymVt" />
    <node concept="3clFb_" id="HwplGLRdIa" role="jymVt">
      <property role="TrG5h" value="flushErrors" />
      <node concept="37vLTG" id="HwplGM5p9R" role="3clF46">
        <property role="TrG5h" value="callback" />
        <node concept="3uibUv" id="HwplGM5rPV" role="1tU5fm">
          <ref role="3uigEE" to="asz6:7MSVDs2AdGA" resolve="WorkerCallback" />
        </node>
      </node>
      <node concept="3cqZAl" id="HwplGLRdIc" role="3clF45" />
      <node concept="3Tm1VV" id="HwplGLRdId" role="1B3o_S" />
      <node concept="3clFbS" id="HwplGLRdIe" role="3clF47">
        <node concept="1DcWWT" id="HwplGLRj1a" role="3cqZAp">
          <node concept="3clFbS" id="HwplGLRj1d" role="2LFqv$">
            <node concept="3clFbF" id="HwplGM56GZ" role="3cqZAp">
              <node concept="2OqwBi" id="HwplGM58Vd" role="3clFbG">
                <node concept="37vLTw" id="HwplGM56GX" role="2Oq$k0">
                  <ref role="3cqZAo" node="HwplGM5p9R" resolve="callback" />
                </node>
                <node concept="liA8E" id="HwplGM5bML" role="2OqNvi">
                  <ref role="37wK5l" to="asz6:7MSVDs2AhAE" resolve="error" />
                  <node concept="37vLTw" id="HwplGM5dpT" role="37wK5m">
                    <ref role="3cqZAo" node="HwplGLRj1e" resolve="err" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="HwplGLRj1e" role="1Duv9x">
            <property role="TrG5h" value="err" />
            <node concept="17QB3L" id="HwplGLRj1i" role="1tU5fm" />
          </node>
          <node concept="37vLTw" id="HwplGLRj1j" role="1DdaDG">
            <ref role="3cqZAo" node="HwplGLR8Qv" resolve="errors" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3OA_Uj9eGqo">
    <property role="TrG5h" value="AbstractJUnit5Launcher" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="3OA_Uj9hjTH" role="jymVt" />
    <node concept="2tJIrI" id="3OA_Uj9eYgO" role="jymVt" />
    <node concept="3clFbW" id="3OA_Uj9hqKu" role="jymVt">
      <node concept="3cqZAl" id="3OA_Uj9hqKw" role="3clF45" />
      <node concept="3Tm1VV" id="3OA_Uj9hqKx" role="1B3o_S" />
      <node concept="3clFbS" id="3OA_Uj9hqKy" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="3OA_Uj9hoqG" role="jymVt" />
    <node concept="3clFb_" id="3OA_Uj9eZjE" role="jymVt">
      <property role="TrG5h" value="launchTests" />
      <property role="1EzhhJ" value="true" />
      <node concept="10Oyi0" id="3OA_Uj9_cAa" role="3clF45" />
      <node concept="3Tm1VV" id="3OA_Uj9eZjH" role="1B3o_S" />
      <node concept="3clFbS" id="3OA_Uj9eZjI" role="3clF47" />
      <node concept="P$JXv" id="3OA_Uj9_dxE" role="lGtFl">
        <node concept="x79VA" id="3OA_Uj9_dxH" role="3nqlJM">
          <property role="x79VB" value="" />
          <node concept="1PaTwC" id="1E1X3WHsCL4" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHsCL5" role="1PaTwD">
              <property role="3oM_SC" value="number" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsCL6" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsCL7" role="1PaTwD">
              <property role="3oM_SC" value="test" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsCL8" role="1PaTwD">
              <property role="3oM_SC" value="failures" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7XWzEIxwJ9v" role="jymVt" />
    <node concept="3clFb_" id="7XWzEIxwSUn" role="jymVt">
      <property role="TrG5h" value="launchTestsWithContextCL" />
      <node concept="37vLTG" id="7XWzEIxwVnv" role="3clF46">
        <property role="TrG5h" value="contextCL" />
        <node concept="3uibUv" id="7XWzEIxwVZI" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~ClassLoader" resolve="ClassLoader" />
        </node>
      </node>
      <node concept="37vLTG" id="7XWzEIxwUJn" role="3clF46">
        <property role="TrG5h" value="testClasses" />
        <node concept="3uibUv" id="7XWzEIxwUJo" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
          <node concept="3uibUv" id="7XWzEIxwUJp" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
            <node concept="3qTvmN" id="7XWzEIxwUJq" role="11_B2D" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7XWzEIxwUJr" role="3clF46">
        <property role="TrG5h" value="executionListener" />
        <node concept="3uibUv" id="7XWzEIxwUJs" role="1tU5fm">
          <ref role="3uigEE" to="bws1:~TestExecutionListener" resolve="TestExecutionListener" />
        </node>
      </node>
      <node concept="3clFbS" id="7XWzEIxwSUq" role="3clF47">
        <node concept="3clFbF" id="5TX$EBEbWNJ" role="3cqZAp">
          <node concept="1rXfSq" id="5TX$EBEbWNH" role="3clFbG">
            <ref role="37wK5l" node="5TX$EBEbOs$" resolve="launchTestsWithContextCL" />
            <node concept="37vLTw" id="5TX$EBEbYak" role="37wK5m">
              <ref role="3cqZAo" node="7XWzEIxwVnv" resolve="contextCL" />
            </node>
            <node concept="1rXfSq" id="5TX$EBEbZqd" role="37wK5m">
              <ref role="37wK5l" node="5TX$EBEbkMb" resolve="discover" />
              <node concept="37vLTw" id="5TX$EBEc0JX" role="37wK5m">
                <ref role="3cqZAo" node="7XWzEIxwUJn" resolve="testClasses" />
              </node>
            </node>
            <node concept="37vLTw" id="5TX$EBEc2_w" role="37wK5m">
              <ref role="3cqZAo" node="7XWzEIxwUJr" resolve="executionListener" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="7XWzEIxwPP9" role="1B3o_S" />
      <node concept="3cqZAl" id="7XWzEIxwSQT" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="5TX$EBEbQ2G" role="jymVt" />
    <node concept="3clFb_" id="5TX$EBEbOs$" role="jymVt">
      <property role="TrG5h" value="launchTestsWithContextCL" />
      <node concept="37vLTG" id="5TX$EBEbOs_" role="3clF46">
        <property role="TrG5h" value="contextCL" />
        <node concept="3uibUv" id="5TX$EBEbOsA" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~ClassLoader" resolve="ClassLoader" />
        </node>
      </node>
      <node concept="37vLTG" id="5TX$EBEbOsB" role="3clF46">
        <property role="TrG5h" value="tests" />
        <node concept="3uibUv" id="5TX$EBEbRAB" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="5TX$EBEbTa_" role="11_B2D">
            <ref role="3uigEE" to="n4ib:~DiscoverySelector" resolve="DiscoverySelector" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5TX$EBEbOsF" role="3clF46">
        <property role="TrG5h" value="executionListener" />
        <node concept="3uibUv" id="5TX$EBEbOsG" role="1tU5fm">
          <ref role="3uigEE" to="bws1:~TestExecutionListener" resolve="TestExecutionListener" />
        </node>
      </node>
      <node concept="3clFbS" id="5TX$EBEbOsH" role="3clF47">
        <node concept="3cpWs8" id="5TX$EBEbOsI" role="3cqZAp">
          <node concept="3cpWsn" id="5TX$EBEbOsJ" role="3cpWs9">
            <property role="TrG5h" value="contextClassLoader" />
            <node concept="3uibUv" id="5TX$EBEbOsK" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~ClassLoader" resolve="ClassLoader" />
            </node>
            <node concept="2OqwBi" id="5TX$EBEbOsL" role="33vP2m">
              <node concept="2YIFZM" id="5TX$EBEbOsM" role="2Oq$k0">
                <ref role="37wK5l" to="wyt6:~Thread.currentThread()" resolve="currentThread" />
                <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
              </node>
              <node concept="liA8E" id="5TX$EBEbOsN" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Thread.getContextClassLoader()" resolve="getContextClassLoader" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="5TX$EBEbOsO" role="3cqZAp">
          <node concept="3clFbS" id="5TX$EBEbOsP" role="1zxBo7">
            <node concept="3clFbF" id="5TX$EBEbOsQ" role="3cqZAp">
              <node concept="2OqwBi" id="5TX$EBEbOsR" role="3clFbG">
                <node concept="2YIFZM" id="5TX$EBEbOsS" role="2Oq$k0">
                  <ref role="37wK5l" to="wyt6:~Thread.currentThread()" resolve="currentThread" />
                  <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
                </node>
                <node concept="liA8E" id="5TX$EBEbOsT" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Thread.setContextClassLoader(java.lang.ClassLoader)" resolve="setContextClassLoader" />
                  <node concept="37vLTw" id="5TX$EBEbOsU" role="37wK5m">
                    <ref role="3cqZAo" node="5TX$EBEbOs_" resolve="contextCL" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5TX$EBEbOsV" role="3cqZAp">
              <node concept="1rXfSq" id="5TX$EBEbOsW" role="3clFbG">
                <ref role="37wK5l" node="3OA_Uj9fdje" resolve="launchTests" />
                <node concept="1rXfSq" id="5TX$EBEbOsX" role="37wK5m">
                  <ref role="37wK5l" node="HwplGM784G" resolve="buildRequest" />
                  <node concept="37vLTw" id="5TX$EBEbUSH" role="37wK5m">
                    <ref role="3cqZAo" node="5TX$EBEbOsB" resolve="tests" />
                  </node>
                </node>
                <node concept="37vLTw" id="5TX$EBEbOt0" role="37wK5m">
                  <ref role="3cqZAo" node="5TX$EBEbOsF" resolve="executionListener" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1wplmZ" id="5TX$EBEbOt1" role="1zxBo6">
            <node concept="3clFbS" id="5TX$EBEbOt2" role="1wplMD">
              <node concept="3clFbF" id="5TX$EBEbOt3" role="3cqZAp">
                <node concept="2OqwBi" id="5TX$EBEbOt4" role="3clFbG">
                  <node concept="2YIFZM" id="5TX$EBEbOt5" role="2Oq$k0">
                    <ref role="37wK5l" to="wyt6:~Thread.currentThread()" resolve="currentThread" />
                    <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
                  </node>
                  <node concept="liA8E" id="5TX$EBEbOt6" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Thread.setContextClassLoader(java.lang.ClassLoader)" resolve="setContextClassLoader" />
                    <node concept="37vLTw" id="5TX$EBEbOt7" role="37wK5m">
                      <ref role="3cqZAo" node="5TX$EBEbOsJ" resolve="contextClassLoader" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="5TX$EBEbOt8" role="1B3o_S" />
      <node concept="3cqZAl" id="5TX$EBEbOt9" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="3OA_Uj9eGrO" role="jymVt" />
    <node concept="3Tm1VV" id="3OA_Uj9eGqp" role="1B3o_S" />
    <node concept="3clFb_" id="3OA_Uj9fdje" role="jymVt">
      <property role="TrG5h" value="launchTests" />
      <node concept="3Tmbuc" id="3OA_Uj9f$xE" role="1B3o_S" />
      <node concept="3cqZAl" id="3OA_Uj9fdjg" role="3clF45" />
      <node concept="37vLTG" id="3OA_Uj9fdj6" role="3clF46">
        <property role="TrG5h" value="discoveryRequest" />
        <node concept="3uibUv" id="5TX$EBEb_KQ" role="1tU5fm">
          <ref role="3uigEE" to="bws1:~LauncherDiscoveryRequest" resolve="LauncherDiscoveryRequest" />
        </node>
      </node>
      <node concept="37vLTG" id="3OA_Uj9fdj4" role="3clF46">
        <property role="TrG5h" value="executionListener" />
        <node concept="3uibUv" id="3OA_Uj9fdj5" role="1tU5fm">
          <ref role="3uigEE" to="bws1:~TestExecutionListener" resolve="TestExecutionListener" />
        </node>
      </node>
      <node concept="3clFbS" id="3OA_Uj9fdhS" role="3clF47">
        <node concept="3cpWs8" id="2BBIwJJrGU8" role="3cqZAp">
          <node concept="3cpWsn" id="2BBIwJJrGU9" role="3cpWs9">
            <property role="TrG5h" value="builder" />
            <node concept="3uibUv" id="2BBIwJJrFVa" role="1tU5fm">
              <ref role="3uigEE" to="z4cc:~LauncherConfig$Builder" resolve="LauncherConfig.Builder" />
            </node>
            <node concept="2OqwBi" id="2BBIwJJrGUb" role="33vP2m">
              <property role="hSjvv" value="true" />
              <node concept="2OqwBi" id="2BBIwJJrGUc" role="2Oq$k0">
                <property role="hSjvv" value="true" />
                <node concept="2OqwBi" id="2BBIwJJrGUd" role="2Oq$k0">
                  <property role="hSjvv" value="true" />
                  <node concept="2OqwBi" id="2BBIwJJrGUe" role="2Oq$k0">
                    <property role="hSjvv" value="true" />
                    <node concept="2OqwBi" id="2BBIwJJrGUf" role="2Oq$k0">
                      <property role="hSjvv" value="true" />
                      <node concept="2YIFZM" id="2BBIwJJrGUg" role="2Oq$k0">
                        <ref role="37wK5l" to="z4cc:~LauncherConfig.builder()" resolve="builder" />
                        <ref role="1Pybhc" to="z4cc:~LauncherConfig" resolve="LauncherConfig" />
                      </node>
                      <node concept="liA8E" id="2BBIwJJrGUh" role="2OqNvi">
                        <ref role="37wK5l" to="z4cc:~LauncherConfig$Builder.enableTestEngineAutoRegistration(boolean)" resolve="enableTestEngineAutoRegistration" />
                        <node concept="3clFbT" id="2BBIwJJrGUi" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="2BBIwJJrGUj" role="2OqNvi">
                      <ref role="37wK5l" to="z4cc:~LauncherConfig$Builder.enablePostDiscoveryFilterAutoRegistration(boolean)" resolve="enablePostDiscoveryFilterAutoRegistration" />
                      <node concept="3clFbT" id="2BBIwJJrGUk" role="37wK5m" />
                    </node>
                  </node>
                  <node concept="liA8E" id="2BBIwJJrGUl" role="2OqNvi">
                    <ref role="37wK5l" to="z4cc:~LauncherConfig$Builder.enableLauncherSessionListenerAutoRegistration(boolean)" resolve="enableLauncherSessionListenerAutoRegistration" />
                    <node concept="3clFbT" id="2BBIwJJrGUm" role="37wK5m" />
                  </node>
                </node>
                <node concept="liA8E" id="2BBIwJJrGUn" role="2OqNvi">
                  <ref role="37wK5l" to="z4cc:~LauncherConfig$Builder.enableLauncherDiscoveryListenerAutoRegistration(boolean)" resolve="enableLauncherDiscoveryListenerAutoRegistration" />
                  <node concept="3clFbT" id="2BBIwJJrGUo" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="2BBIwJJrGUp" role="2OqNvi">
                <ref role="37wK5l" to="z4cc:~LauncherConfig$Builder.enableTestExecutionListenerAutoRegistration(boolean)" resolve="enableTestExecutionListenerAutoRegistration" />
                <node concept="3clFbT" id="2BBIwJJrGUq" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3OA_Uj9fdhT" role="3cqZAp">
          <node concept="3cpWsn" id="3OA_Uj9fdhU" role="3cpWs9">
            <property role="TrG5h" value="launcherConfig" />
            <node concept="3uibUv" id="3OA_Uj9fdhV" role="1tU5fm">
              <ref role="3uigEE" to="z4cc:~LauncherConfig" resolve="LauncherConfig" />
            </node>
            <node concept="2OqwBi" id="3OA_Uj9fdhW" role="33vP2m">
              <node concept="37vLTw" id="2BBIwJJrGUw" role="2Oq$k0">
                <ref role="3cqZAo" node="2BBIwJJrGU9" resolve="builder" />
              </node>
              <node concept="liA8E" id="3OA_Uj9fdij" role="2OqNvi">
                <ref role="37wK5l" to="z4cc:~LauncherConfig$Builder.build()" resolve="build" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2BBIwJJqYQk" role="3cqZAp" />
        <node concept="3J1_TO" id="63PiL8Q0lW2" role="3cqZAp">
          <node concept="3clFbS" id="63PiL8Q0lW4" role="1zxBo7">
            <node concept="3clFbF" id="5OG2WehV4c3" role="3cqZAp">
              <node concept="1rXfSq" id="5OG2WehV4c1" role="3clFbG">
                <ref role="37wK5l" node="5OG2WehUVwl" resolve="configureLauncherSession" />
                <node concept="37vLTw" id="5OG2WehV4XJ" role="37wK5m">
                  <ref role="3cqZAo" node="63PiL8Q0lW5" resolve="session" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3OA_Uj9fdik" role="3cqZAp">
              <node concept="3cpWsn" id="3OA_Uj9fdil" role="3cpWs9">
                <property role="TrG5h" value="launcher" />
                <node concept="3uibUv" id="3OA_Uj9fdim" role="1tU5fm">
                  <ref role="3uigEE" to="bws1:~Launcher" resolve="Launcher" />
                </node>
                <node concept="2OqwBi" id="3OA_Uj9fdin" role="33vP2m">
                  <node concept="liA8E" id="3OA_Uj9fdiq" role="2OqNvi">
                    <ref role="37wK5l" to="bws1:~LauncherSession.getLauncher()" resolve="getLauncher" />
                  </node>
                  <node concept="37vLTw" id="63PiL8Q0sDu" role="2Oq$k0">
                    <ref role="3cqZAo" node="63PiL8Q0lW5" resolve="session" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="3OA_Uj9fdir" role="3cqZAp">
              <node concept="3clFbS" id="3OA_Uj9fdis" role="3clFbx">
                <node concept="3clFbF" id="3OA_Uj9fdit" role="3cqZAp">
                  <node concept="2OqwBi" id="3OA_Uj9fdiu" role="3clFbG">
                    <node concept="37vLTw" id="3OA_Uj9fdiv" role="2Oq$k0">
                      <ref role="3cqZAo" node="3OA_Uj9fdil" resolve="launcher" />
                    </node>
                    <node concept="liA8E" id="3OA_Uj9fdiw" role="2OqNvi">
                      <ref role="37wK5l" to="bws1:~Launcher.registerTestExecutionListeners(org.junit.platform.launcher.TestExecutionListener...)" resolve="registerTestExecutionListeners" />
                      <node concept="1rXfSq" id="1W7Tdy_UBR7" role="37wK5m">
                        <ref role="37wK5l" node="1W7Tdy_UBR4" resolve="createTestExecutionListener" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1rXfSq" id="3OA_Uj9fdiz" role="3clFbw">
                <ref role="37wK5l" node="3OA_Uj9gCRT" resolve="isRunningOnTeamCity" />
              </node>
            </node>
            <node concept="3cpWs8" id="3OA_Uj9fdi$" role="3cqZAp">
              <node concept="3cpWsn" id="3OA_Uj9fdi_" role="3cpWs9">
                <property role="TrG5h" value="testReportsDir" />
                <node concept="3uibUv" id="3OA_Uj9fdiA" role="1tU5fm">
                  <ref role="3uigEE" to="guwi:~File" resolve="File" />
                </node>
                <node concept="1rXfSq" id="3OA_Uj9fdiB" role="33vP2m">
                  <ref role="37wK5l" node="3OA_Uj9gNKn" resolve="getTestReportsDir" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="3OA_Uj9fdiC" role="3cqZAp">
              <node concept="3clFbS" id="3OA_Uj9fdiD" role="3clFbx">
                <node concept="3clFbJ" id="51DD0tdPDc7" role="3cqZAp">
                  <node concept="3clFbS" id="51DD0tdPDc9" role="3clFbx">
                    <node concept="3clFbF" id="3OA_Uj9fdiE" role="3cqZAp">
                      <node concept="2OqwBi" id="3OA_Uj9fdiF" role="3clFbG">
                        <node concept="37vLTw" id="3OA_Uj9fdiG" role="2Oq$k0">
                          <ref role="3cqZAo" node="3OA_Uj9fdil" resolve="launcher" />
                        </node>
                        <node concept="liA8E" id="3OA_Uj9fdiH" role="2OqNvi">
                          <ref role="37wK5l" to="bws1:~Launcher.registerTestExecutionListeners(org.junit.platform.launcher.TestExecutionListener...)" resolve="registerTestExecutionListeners" />
                          <node concept="2ShNRf" id="51DD0tdJk8G" role="37wK5m">
                            <node concept="1pGfFk" id="51DD0tdJ$Ca" role="2ShVmc">
                              <property role="373rjd" value="true" />
                              <ref role="37wK5l" to="fojo:~OpenTestReportGeneratingListener.&lt;init&gt;()" resolve="OpenTestReportGeneratingListener" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="51DD0tdPJNr" role="3cqZAp" />
                  </node>
                  <node concept="1rXfSq" id="51DD0tdPDIr" role="3clFbw">
                    <ref role="37wK5l" node="51DD0tdNZPO" resolve="isOpenTestReport" />
                  </node>
                  <node concept="9aQIb" id="51DD0tdPFiK" role="9aQIa">
                    <node concept="3clFbS" id="51DD0tdPFiL" role="9aQI4">
                      <node concept="3clFbF" id="51DD0tdPFNU" role="3cqZAp">
                        <node concept="2OqwBi" id="51DD0tdPFNV" role="3clFbG">
                          <node concept="37vLTw" id="51DD0tdPFNW" role="2Oq$k0">
                            <ref role="3cqZAo" node="3OA_Uj9fdil" resolve="launcher" />
                          </node>
                          <node concept="liA8E" id="51DD0tdPFNX" role="2OqNvi">
                            <ref role="37wK5l" to="bws1:~Launcher.registerTestExecutionListeners(org.junit.platform.launcher.TestExecutionListener...)" resolve="registerTestExecutionListeners" />
                            <node concept="2ShNRf" id="51DD0tdPFNY" role="37wK5m">
                              <node concept="1pGfFk" id="51DD0tdPFNZ" role="2ShVmc">
                                <property role="373rjd" value="true" />
                                <ref role="37wK5l" to="7c1v:~LegacyXmlReportGeneratingListener.&lt;init&gt;(java.nio.file.Path,java.io.PrintWriter)" resolve="LegacyXmlReportGeneratingListener" />
                                <node concept="2OqwBi" id="51DD0tdPFO0" role="37wK5m">
                                  <node concept="37vLTw" id="51DD0tdPFO1" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3OA_Uj9fdi_" resolve="testReportsDir" />
                                  </node>
                                  <node concept="liA8E" id="51DD0tdPFO2" role="2OqNvi">
                                    <ref role="37wK5l" to="guwi:~File.toPath()" resolve="toPath" />
                                  </node>
                                </node>
                                <node concept="2ShNRf" id="51DD0tdPFO3" role="37wK5m">
                                  <node concept="1pGfFk" id="51DD0tdPFO4" role="2ShVmc">
                                    <property role="373rjd" value="true" />
                                    <ref role="37wK5l" to="guwi:~PrintWriter.&lt;init&gt;(java.io.OutputStream)" resolve="PrintWriter" />
                                    <node concept="10M0yZ" id="51DD0tdPFO5" role="37wK5m">
                                      <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                                      <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
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
              <node concept="3y3z36" id="3OA_Uj9fdiQ" role="3clFbw">
                <node concept="10Nm6u" id="3OA_Uj9fdiR" role="3uHU7w" />
                <node concept="37vLTw" id="3OA_Uj9fdiS" role="3uHU7B">
                  <ref role="3cqZAo" node="3OA_Uj9fdi_" resolve="testReportsDir" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="3OA_Uj9hzDG" role="3cqZAp">
              <node concept="3clFbS" id="3OA_Uj9hzDI" role="3clFbx">
                <node concept="3clFbF" id="3OA_Uj9fdiT" role="3cqZAp">
                  <node concept="2OqwBi" id="3OA_Uj9fdiU" role="3clFbG">
                    <node concept="37vLTw" id="3OA_Uj9fdiV" role="2Oq$k0">
                      <ref role="3cqZAo" node="3OA_Uj9fdil" resolve="launcher" />
                    </node>
                    <node concept="liA8E" id="3OA_Uj9fdiW" role="2OqNvi">
                      <ref role="37wK5l" to="bws1:~Launcher.registerTestExecutionListeners(org.junit.platform.launcher.TestExecutionListener...)" resolve="registerTestExecutionListeners" />
                      <node concept="37vLTw" id="3OA_Uj9fdjb" role="37wK5m">
                        <ref role="3cqZAo" node="3OA_Uj9fdj4" resolve="executionListener" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="3OA_Uj9h_cV" role="3clFbw">
                <node concept="10Nm6u" id="3OA_Uj9h_W2" role="3uHU7w" />
                <node concept="37vLTw" id="3OA_Uj9h$s5" role="3uHU7B">
                  <ref role="3cqZAo" node="3OA_Uj9fdj4" resolve="executionListener" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3OA_Uj9fdiY" role="3cqZAp">
              <node concept="2OqwBi" id="3OA_Uj9fdiZ" role="3clFbG">
                <node concept="37vLTw" id="3OA_Uj9fdj0" role="2Oq$k0">
                  <ref role="3cqZAo" node="3OA_Uj9fdil" resolve="launcher" />
                </node>
                <node concept="liA8E" id="3OA_Uj9fdj1" role="2OqNvi">
                  <ref role="37wK5l" to="bws1:~Launcher.execute(org.junit.platform.launcher.LauncherDiscoveryRequest,org.junit.platform.launcher.TestExecutionListener...)" resolve="execute" />
                  <node concept="37vLTw" id="5TX$EBEbGbq" role="37wK5m">
                    <ref role="3cqZAo" node="3OA_Uj9fdj6" resolve="discoveryRequest" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3J1hQo" id="63PiL8Q0lW5" role="3J1_TS">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="session" />
            <node concept="3uibUv" id="63PiL8Q0nby" role="1tU5fm">
              <ref role="3uigEE" to="bws1:~LauncherSession" resolve="LauncherSession" />
            </node>
            <node concept="2YIFZM" id="3OA_Uj9fdio" role="33vP2m">
              <ref role="37wK5l" to="z4cc:~LauncherFactory.openSession(org.junit.platform.launcher.core.LauncherConfig)" resolve="openSession" />
              <ref role="1Pybhc" to="z4cc:~LauncherFactory" resolve="LauncherFactory" />
              <node concept="37vLTw" id="3OA_Uj9fdip" role="37wK5m">
                <ref role="3cqZAo" node="3OA_Uj9fdhU" resolve="launcherConfig" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="3OA_Uj9fdjh" role="Sfmx6">
        <ref role="3uigEE" to="zi5z:~PreconditionViolationException" resolve="PreconditionViolationException" />
      </node>
    </node>
    <node concept="2tJIrI" id="5OG2WehURxR" role="jymVt" />
    <node concept="3clFb_" id="5OG2WehUVwl" role="jymVt">
      <property role="TrG5h" value="configureLauncherSession" />
      <node concept="3clFbS" id="5OG2WehUVwo" role="3clF47">
        <node concept="3SKdUt" id="5OG2WehV2fH" role="3cqZAp">
          <node concept="1PaTwC" id="5OG2WehV2fI" role="1aUNEU">
            <node concept="3oM_SD" id="5OG2WehV2TZ" role="1PaTwD">
              <property role="3oM_SC" value="no-op;" />
            </node>
            <node concept="3oM_SD" id="5OG2WehV2U0" role="1PaTwD">
              <property role="3oM_SC" value="intended" />
            </node>
            <node concept="3oM_SD" id="5OG2WehV2V2" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="5OG2WehV2V3" role="1PaTwD">
              <property role="3oM_SC" value="subclasses;" />
            </node>
            <node concept="3oM_SD" id="5OG2WehV5BP" role="1PaTwD">
              <property role="3oM_SC" value="simple" />
            </node>
            <node concept="3oM_SD" id="5OG2WehV5BQ" role="1PaTwD">
              <property role="3oM_SC" value="alternative" />
            </node>
            <node concept="3oM_SD" id="5OG2WehV5C7" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="5OG2WehV5C8" role="1PaTwD">
              <property role="3oM_SC" value="LauncherSessionListener" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="5OG2WehUTIk" role="1B3o_S" />
      <node concept="3cqZAl" id="5OG2WehUW$i" role="3clF45" />
      <node concept="37vLTG" id="5OG2WehV0Tu" role="3clF46">
        <property role="TrG5h" value="session" />
        <node concept="3uibUv" id="5OG2WehV0Tt" role="1tU5fm">
          <ref role="3uigEE" to="bws1:~LauncherSession" resolve="LauncherSession" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1W7Tdy_UD1Q" role="jymVt" />
    <node concept="3clFb_" id="1W7Tdy_UBR4" role="jymVt">
      <property role="TrG5h" value="createTestExecutionListener" />
      <node concept="3Tmbuc" id="1W7Tdy_UDJu" role="1B3o_S" />
      <node concept="3uibUv" id="1W7Tdy_UBR6" role="3clF45">
        <ref role="3uigEE" to="pzze:5gsHVKBei$L" resolve="JUnit5TestExecutionListener" />
      </node>
      <node concept="3clFbS" id="1W7Tdy_UBQZ" role="3clF47">
        <node concept="3cpWs6" id="1W7Tdy_UBR0" role="3cqZAp">
          <node concept="2ShNRf" id="1W7Tdy_UBR1" role="3cqZAk">
            <node concept="1pGfFk" id="1W7Tdy_UBR2" role="2ShVmc">
              <ref role="37wK5l" to="pzze:5gsHVKBei_z" resolve="JUnit5TestExecutionListener" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5TX$EBEbgs2" role="jymVt" />
    <node concept="3clFb_" id="5TX$EBEbkMb" role="jymVt">
      <property role="TrG5h" value="discover" />
      <node concept="37vLTG" id="HwplGM784_" role="3clF46">
        <property role="TrG5h" value="testClasses" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="HwplGM784A" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
          <node concept="3uibUv" id="HwplGM784B" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
            <node concept="3qTvmN" id="HwplGM784C" role="11_B2D" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="5TX$EBEbkMe" role="3clF47">
        <node concept="3cpWs6" id="5TX$EBEbppR" role="3cqZAp">
          <node concept="2OqwBi" id="5TX$EBEboea" role="3cqZAk">
            <property role="hSjvv" value="true" />
            <node concept="2OqwBi" id="5TX$EBEboeb" role="2Oq$k0">
              <property role="hSjvv" value="true" />
              <node concept="2OqwBi" id="5TX$EBEboec" role="2Oq$k0">
                <property role="hSjvv" value="true" />
                <node concept="37vLTw" id="5TX$EBEboed" role="2Oq$k0">
                  <ref role="3cqZAo" node="HwplGM784_" resolve="testClasses" />
                </node>
                <node concept="liA8E" id="5TX$EBEboee" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                </node>
              </node>
              <node concept="liA8E" id="5TX$EBEboef" role="2OqNvi">
                <ref role="37wK5l" to="1ctc:~Stream.map(java.util.function.Function)" resolve="map" />
                <node concept="1bVj0M" id="5TX$EBEboeg" role="37wK5m">
                  <node concept="3clFbS" id="5TX$EBEboeh" role="1bW5cS">
                    <node concept="3clFbF" id="5TX$EBEboei" role="3cqZAp">
                      <node concept="2YIFZM" id="5TX$EBEboej" role="3clFbG">
                        <ref role="37wK5l" to="s3rp:~DiscoverySelectors.selectClass(java.lang.Class)" resolve="selectClass" />
                        <ref role="1Pybhc" to="s3rp:~DiscoverySelectors" resolve="DiscoverySelectors" />
                        <node concept="37vLTw" id="5TX$EBEboek" role="37wK5m">
                          <ref role="3cqZAo" node="5TX$EBEboel" resolve="testClass" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTG" id="5TX$EBEboel" role="1bW2Oz">
                    <property role="TrG5h" value="testClass" />
                    <node concept="3uibUv" id="5TX$EBEboem" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                      <node concept="3qTvmN" id="5TX$EBEboen" role="11_B2D" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="5TX$EBEboeo" role="2OqNvi">
              <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
              <node concept="2YIFZM" id="5TX$EBEboep" role="37wK5m">
                <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                <node concept="3uibUv" id="5TX$EBEboeq" role="3PaCim">
                  <ref role="3uigEE" to="n4ib:~DiscoverySelector" resolve="DiscoverySelector" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="5TX$EBEbjs9" role="1B3o_S" />
      <node concept="3uibUv" id="5TX$EBEbkGB" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="5TX$EBEbkJq" role="11_B2D">
          <ref role="3uigEE" to="n4ib:~DiscoverySelector" resolve="DiscoverySelector" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3OA_Uj9fHXe" role="jymVt" />
    <node concept="3clFb_" id="HwplGM784G" role="jymVt">
      <property role="TrG5h" value="buildRequest" />
      <node concept="37vLTG" id="5TX$EBEbw0$" role="3clF46">
        <property role="TrG5h" value="testSelectors" />
        <node concept="3uibUv" id="5TX$EBEboe8" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="5TX$EBEboe9" role="11_B2D">
            <ref role="3uigEE" to="n4ib:~DiscoverySelector" resolve="DiscoverySelector" />
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="5TX$EBEbLw2" role="1B3o_S" />
      <node concept="3uibUv" id="HwplGM784I" role="3clF45">
        <ref role="3uigEE" to="bws1:~LauncherDiscoveryRequest" resolve="LauncherDiscoveryRequest" />
      </node>
      <node concept="3clFbS" id="HwplGM7841" role="3clF47">
        <node concept="3cpWs8" id="51DD0te2UxH" role="3cqZAp">
          <node concept="3cpWsn" id="51DD0te2UxI" role="3cpWs9">
            <property role="TrG5h" value="requestBuilder" />
            <node concept="3uibUv" id="51DD0tdPQ2Y" role="1tU5fm">
              <ref role="3uigEE" to="z4cc:~LauncherDiscoveryRequestBuilder" resolve="LauncherDiscoveryRequestBuilder" />
            </node>
            <node concept="2OqwBi" id="51DD0te2UxJ" role="33vP2m">
              <property role="hSjvv" value="true" />
              <node concept="2OqwBi" id="51DD0te2UxK" role="2Oq$k0">
                <property role="hSjvv" value="true" />
                <node concept="2OqwBi" id="51DD0te2UxL" role="2Oq$k0">
                  <property role="hSjvv" value="true" />
                  <node concept="2YIFZM" id="51DD0te2UxM" role="2Oq$k0">
                    <ref role="37wK5l" to="z4cc:~LauncherDiscoveryRequestBuilder.request()" resolve="request" />
                    <ref role="1Pybhc" to="z4cc:~LauncherDiscoveryRequestBuilder" resolve="LauncherDiscoveryRequestBuilder" />
                  </node>
                  <node concept="liA8E" id="51DD0te2UxN" role="2OqNvi">
                    <ref role="37wK5l" to="z4cc:~LauncherDiscoveryRequestBuilder.selectors(java.util.List)" resolve="selectors" />
                    <node concept="37vLTw" id="51DD0te2UxO" role="37wK5m">
                      <ref role="3cqZAo" node="5TX$EBEbw0$" resolve="testSelectors" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="51DD0te2UxP" role="2OqNvi">
                  <ref role="37wK5l" to="z4cc:~LauncherDiscoveryRequestBuilder.configurationParameter(java.lang.String,java.lang.String)" resolve="configurationParameter" />
                  <node concept="10M0yZ" id="6xO4sUWWRvH" role="37wK5m">
                    <ref role="3cqZAo" to="bws1:~LauncherConstants.CAPTURE_STDOUT_PROPERTY_NAME" resolve="CAPTURE_STDOUT_PROPERTY_NAME" />
                    <ref role="1PxDUh" to="bws1:~LauncherConstants" resolve="LauncherConstants" />
                  </node>
                  <node concept="Xl_RD" id="51DD0te2UxR" role="37wK5m">
                    <property role="Xl_RC" value="true" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="51DD0te2UxS" role="2OqNvi">
                <ref role="37wK5l" to="z4cc:~LauncherDiscoveryRequestBuilder.configurationParameter(java.lang.String,java.lang.String)" resolve="configurationParameter" />
                <node concept="10M0yZ" id="6xO4sUWX1mf" role="37wK5m">
                  <ref role="3cqZAo" to="bws1:~LauncherConstants.CAPTURE_STDERR_PROPERTY_NAME" resolve="CAPTURE_STDERR_PROPERTY_NAME" />
                  <ref role="1PxDUh" to="bws1:~LauncherConstants" resolve="LauncherConstants" />
                </node>
                <node concept="Xl_RD" id="51DD0te2UxU" role="37wK5m">
                  <property role="Xl_RC" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="51DD0te3dND" role="3cqZAp">
          <node concept="3cpWsn" id="51DD0te3dNE" role="3cpWs9">
            <property role="TrG5h" value="testReportsDir" />
            <node concept="3uibUv" id="51DD0te3cWH" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
            <node concept="1rXfSq" id="51DD0te3dNF" role="33vP2m">
              <ref role="37wK5l" node="3OA_Uj9gNKn" resolve="getTestReportsDir" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="51DD0te2Yp0" role="3cqZAp">
          <node concept="3clFbS" id="51DD0te2Yp2" role="3clFbx">
            <node concept="3clFbF" id="51DD0te30PU" role="3cqZAp">
              <node concept="37vLTI" id="51DD0te31ui" role="3clFbG">
                <node concept="2OqwBi" id="51DD0te36I9" role="37vLTx">
                  <property role="hSjvv" value="true" />
                  <node concept="2OqwBi" id="51DD0te32LA" role="2Oq$k0">
                    <property role="hSjvv" value="true" />
                    <node concept="37vLTw" id="51DD0te32eS" role="2Oq$k0">
                      <ref role="3cqZAo" node="51DD0te2UxI" resolve="requestBuilder" />
                    </node>
                    <node concept="liA8E" id="51DD0te33s_" role="2OqNvi">
                      <ref role="37wK5l" to="z4cc:~LauncherDiscoveryRequestBuilder.configurationParameter(java.lang.String,java.lang.String)" resolve="configurationParameter" />
                      <node concept="Xl_RD" id="51DD0te33Zx" role="37wK5m">
                        <property role="Xl_RC" value="junit.platform.reporting.open.xml.enabled" />
                      </node>
                      <node concept="Xl_RD" id="51DD0te35Ce" role="37wK5m">
                        <property role="Xl_RC" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="51DD0te396M" role="2OqNvi">
                    <ref role="37wK5l" to="z4cc:~LauncherDiscoveryRequestBuilder.configurationParameter(java.lang.String,java.lang.String)" resolve="configurationParameter" />
                    <node concept="Xl_RD" id="51DD0te39Le" role="37wK5m">
                      <property role="Xl_RC" value="junit.platform.reporting.output.dir" />
                    </node>
                    <node concept="2OqwBi" id="51DD0te3lo1" role="37wK5m">
                      <node concept="37vLTw" id="51DD0te3k_6" role="2Oq$k0">
                        <ref role="3cqZAo" node="51DD0te3dNE" resolve="testReportsDir" />
                      </node>
                      <node concept="liA8E" id="51DD0te3tlg" role="2OqNvi">
                        <ref role="37wK5l" to="guwi:~File.getAbsolutePath()" resolve="getAbsolutePath" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="51DD0te30PS" role="37vLTJ">
                  <ref role="3cqZAo" node="51DD0te2UxI" resolve="requestBuilder" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="51DD0te3eUA" role="3clFbw">
            <node concept="3y3z36" id="51DD0te3i3m" role="3uHU7B">
              <node concept="10Nm6u" id="51DD0te3iU1" role="3uHU7w" />
              <node concept="37vLTw" id="51DD0te3gUW" role="3uHU7B">
                <ref role="3cqZAo" node="51DD0te3dNE" resolve="testReportsDir" />
              </node>
            </node>
            <node concept="1rXfSq" id="51DD0te2ZRg" role="3uHU7w">
              <ref role="37wK5l" node="51DD0tdNZPO" resolve="isOpenTestReport" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="HwplGM784z" role="3cqZAp">
          <node concept="2OqwBi" id="HwplGM784t" role="3cqZAk">
            <property role="hSjvv" value="true" />
            <node concept="37vLTw" id="51DD0te2UxV" role="2Oq$k0">
              <ref role="3cqZAo" node="51DD0te2UxI" resolve="requestBuilder" />
            </node>
            <node concept="liA8E" id="HwplGM784y" role="2OqNvi">
              <ref role="37wK5l" to="z4cc:~LauncherDiscoveryRequestBuilder.build()" resolve="build" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3OA_Uj9fNJX" role="jymVt" />
    <node concept="3clFb_" id="3OA_Uj9gNKn" role="jymVt">
      <property role="TrG5h" value="getTestReportsDir" />
      <node concept="3uibUv" id="3OA_Uj9gZAt" role="3clF45">
        <ref role="3uigEE" to="guwi:~File" resolve="File" />
      </node>
      <node concept="3Tmbuc" id="3OA_Uj9h0j8" role="1B3o_S" />
      <node concept="3clFbS" id="3OA_Uj9gNKr" role="3clF47">
        <node concept="3cpWs6" id="3OA_Uj9h1uN" role="3cqZAp">
          <node concept="10Nm6u" id="3OA_Uj9h2nX" role="3cqZAk" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="51DD0tdO1rU" role="jymVt" />
    <node concept="3clFb_" id="51DD0tdNZPO" role="jymVt">
      <property role="TrG5h" value="isOpenTestReport" />
      <node concept="10P_77" id="51DD0tdO2Ap" role="3clF45" />
      <node concept="3Tmbuc" id="51DD0tdNZPQ" role="1B3o_S" />
      <node concept="3clFbS" id="51DD0tdNZPR" role="3clF47">
        <node concept="3cpWs6" id="51DD0tdNZPS" role="3cqZAp">
          <node concept="3clFbT" id="51DD0tdO7d7" role="3cqZAk" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3OA_Uj9gKSP" role="jymVt" />
    <node concept="3clFb_" id="3OA_Uj9gCRT" role="jymVt">
      <property role="TrG5h" value="isRunningOnTeamCity" />
      <node concept="3Tmbuc" id="3OA_Uj9gBZC" role="1B3o_S" />
      <node concept="10P_77" id="3OA_Uj9gCRP" role="3clF45" />
      <node concept="3clFbS" id="3OA_Uj9gCRN" role="3clF47">
        <node concept="3clFbF" id="3OA_Uj9Bo2k" role="3cqZAp">
          <node concept="3y3z36" id="3OA_Uj9Bxdd" role="3clFbG">
            <node concept="10Nm6u" id="3OA_Uj9BxUq" role="3uHU7w" />
            <node concept="2YIFZM" id="3OA_Uj9Buqm" role="3uHU7B">
              <ref role="37wK5l" to="wyt6:~System.getenv(java.lang.String)" resolve="getenv" />
              <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
              <node concept="Xl_RD" id="3OA_Uj9BvNN" role="37wK5m">
                <property role="Xl_RC" value="TEAMCITY_VERSION" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3OA_Uj9gzkO" role="jymVt" />
  </node>
  <node concept="312cEu" id="3OA_Uj9huWj">
    <property role="TrG5h" value="SimpleJUnit5Launcher" />
    <node concept="2tJIrI" id="3OA_Uj9hvrn" role="jymVt" />
    <node concept="312cEg" id="3OA_Uj9hwao" role="jymVt">
      <property role="TrG5h" value="myTestClasses" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3OA_Uj9hwap" role="1B3o_S" />
      <node concept="3uibUv" id="3OA_Uj9hwar" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
        <node concept="3uibUv" id="3OA_Uj9hwas" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="3qTvmN" id="3OA_Uj9hwat" role="11_B2D" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3OA_Uj9hwzp" role="jymVt" />
    <node concept="3clFbW" id="3OA_Uj9hvqr" role="jymVt">
      <node concept="37vLTG" id="3OA_Uj9hvJa" role="3clF46">
        <property role="TrG5h" value="testClasses" />
        <node concept="3uibUv" id="3OA_Uj9hvMi" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
          <node concept="3uibUv" id="3OA_Uj9hvSl" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
            <node concept="3qTvmN" id="3OA_Uj9hw5U" role="11_B2D" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="3OA_Uj9hvqt" role="3clF45" />
      <node concept="3Tm1VV" id="3OA_Uj9hvqu" role="1B3o_S" />
      <node concept="3clFbS" id="3OA_Uj9hvqv" role="3clF47">
        <node concept="3clFbF" id="3OA_Uj9hwau" role="3cqZAp">
          <node concept="37vLTI" id="3OA_Uj9hwaw" role="3clFbG">
            <node concept="37vLTw" id="5TX$EBEbckM" role="37vLTJ">
              <ref role="3cqZAo" node="3OA_Uj9hwao" resolve="myTestClasses" />
            </node>
            <node concept="37vLTw" id="3OA_Uj9hwa$" role="37vLTx">
              <ref role="3cqZAo" node="3OA_Uj9hvJa" resolve="testClasses" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3OA_Uj9hwDU" role="jymVt" />
    <node concept="3Tm1VV" id="3OA_Uj9huWk" role="1B3o_S" />
    <node concept="3uibUv" id="3OA_Uj9hv9B" role="1zkMxy">
      <ref role="3uigEE" node="3OA_Uj9eGqo" resolve="AbstractJUnit5Launcher" />
    </node>
    <node concept="3clFb_" id="3OA_Uj9hwJQ" role="jymVt">
      <property role="TrG5h" value="launchTests" />
      <node concept="10Oyi0" id="3OA_Uj9_mc9" role="3clF45" />
      <node concept="3Tm1VV" id="3OA_Uj9hwJS" role="1B3o_S" />
      <node concept="3clFbS" id="3OA_Uj9hwJU" role="3clF47">
        <node concept="3cpWs8" id="3OA_Uj9_kxf" role="3cqZAp">
          <node concept="3cpWsn" id="3OA_Uj9_kxg" role="3cpWs9">
            <property role="TrG5h" value="failureDetector" />
            <node concept="3uibUv" id="3OA_Uj9_kxh" role="1tU5fm">
              <ref role="3uigEE" node="HwplGLNXsw" resolve="FailureDetector" />
            </node>
            <node concept="2ShNRf" id="3OA_Uj9_kxi" role="33vP2m">
              <node concept="HV5vD" id="3OA_Uj9_kxj" role="2ShVmc">
                <ref role="HV5vE" node="HwplGLNXsw" resolve="FailureDetector" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5TX$EBEbffu" role="3cqZAp">
          <node concept="1PaTwC" id="5TX$EBEbffv" role="1aUNEU">
            <node concept="3oM_SD" id="5TX$EBEbfn3" role="1PaTwD">
              <property role="3oM_SC" value="perhaps," />
            </node>
            <node concept="3oM_SD" id="5TX$EBEbfo1" role="1PaTwD">
              <property role="3oM_SC" value="launchTestsWithContextCL," />
            </node>
            <node concept="3oM_SD" id="5TX$EBEbfyP" role="1PaTwD">
              <property role="3oM_SC" value="but" />
            </node>
            <node concept="3oM_SD" id="5TX$EBEbfzn" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="5TX$EBEbfzo" role="1PaTwD">
              <property role="3oM_SC" value="long" />
            </node>
            <node concept="3oM_SD" id="5TX$EBEbfzp" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="5TX$EBEbfzD" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="5TX$EBEbfzU" role="1PaTwD">
              <property role="3oM_SC" value="code" />
            </node>
            <node concept="3oM_SD" id="5TX$EBEbf$D" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="5TX$EBEbf_p" role="1PaTwD">
              <property role="3oM_SC" value="unused," />
            </node>
            <node concept="3oM_SD" id="5TX$EBEbf_T" role="1PaTwD">
              <property role="3oM_SC" value="no" />
            </node>
            <node concept="3oM_SD" id="5TX$EBEbf_U" role="1PaTwD">
              <property role="3oM_SC" value="idea" />
            </node>
            <node concept="3oM_SD" id="5TX$EBEbfBS" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="5TX$EBEbfBT" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="5TX$EBEbfC9" role="1PaTwD">
              <property role="3oM_SC" value="need" />
            </node>
            <node concept="3oM_SD" id="5TX$EBEbfCq" role="1PaTwD">
              <property role="3oM_SC" value="context" />
            </node>
            <node concept="3oM_SD" id="5TX$EBEbfEp" role="1PaTwD">
              <property role="3oM_SC" value="CL" />
            </node>
            <node concept="3oM_SD" id="5TX$EBEbfCU" role="1PaTwD">
              <property role="3oM_SC" value="or" />
            </node>
            <node concept="3oM_SD" id="5TX$EBEbfCV" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7XWzEIxx9yK" role="3cqZAp">
          <node concept="1rXfSq" id="7XWzEIxx9yI" role="3clFbG">
            <ref role="37wK5l" node="3OA_Uj9fdje" resolve="launchTests" />
            <node concept="1rXfSq" id="5TX$EBEbMJl" role="37wK5m">
              <ref role="37wK5l" node="HwplGM784G" resolve="buildRequest" />
              <node concept="1rXfSq" id="5TX$EBEbNqF" role="37wK5m">
                <ref role="37wK5l" node="5TX$EBEbkMb" resolve="discover" />
                <node concept="37vLTw" id="5TX$EBEbNES" role="37wK5m">
                  <ref role="3cqZAo" node="3OA_Uj9hwao" resolve="myTestClasses" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="7XWzEIxxg9o" role="37wK5m">
              <ref role="3cqZAo" node="3OA_Uj9_kxg" resolve="failureDetector" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="VnxRnAgBTN" role="3cqZAp">
          <node concept="2OqwBi" id="3OA_Uj9_lA1" role="3cqZAk">
            <node concept="37vLTw" id="3OA_Uj9_lo$" role="2Oq$k0">
              <ref role="3cqZAo" node="3OA_Uj9_kxg" resolve="failureDetector" />
            </node>
            <node concept="liA8E" id="3OA_Uj9_m3C" role="2OqNvi">
              <ref role="37wK5l" node="3OA_Uj9$WOu" resolve="failuresCount" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3OA_Uj9hwJV" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="VnxRnAglN1" role="jymVt" />
    <node concept="3clFb_" id="3OA_Uj9ztSV" role="jymVt">
      <property role="TrG5h" value="getTestReportsDir" />
      <node concept="3uibUv" id="3OA_Uj9ztSW" role="3clF45">
        <ref role="3uigEE" to="guwi:~File" resolve="File" />
      </node>
      <node concept="3Tmbuc" id="3OA_Uj9ztSX" role="1B3o_S" />
      <node concept="3clFbS" id="3OA_Uj9ztSY" role="3clF47">
        <node concept="3cpWs6" id="3OA_Uj9ztSZ" role="3cqZAp">
          <node concept="2ShNRf" id="3OA_Uj9zvzq" role="3cqZAk">
            <node concept="1pGfFk" id="3OA_Uj9zyHr" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
              <node concept="2YIFZM" id="3OA_Uj9zz7S" role="37wK5m">
                <ref role="37wK5l" to="wyt6:~System.getProperty(java.lang.String)" resolve="getProperty" />
                <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                <node concept="Xl_RD" id="3OA_Uj9zz86" role="37wK5m">
                  <property role="Xl_RC" value="user.dir" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3OA_Uj9zum_" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3OA_Uj9ztSl" role="jymVt" />
  </node>
  <node concept="3HP615" id="1wWWPEu9Bc8">
    <property role="TrG5h" value="JUnit5TestContributor" />
    <node concept="3clFb_" id="1wWWPEua5Su" role="jymVt">
      <property role="TrG5h" value="collectSelectors" />
      <node concept="3uibUv" id="1wWWPEua5Tr" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1wWWPEua5UH" role="11_B2D">
          <ref role="3uigEE" to="n4ib:~DiscoverySelector" resolve="DiscoverySelector" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1wWWPEua5Sx" role="1B3o_S" />
      <node concept="3clFbS" id="1wWWPEua5Sy" role="3clF47" />
      <node concept="3uibUv" id="5m2bsnoUMG8" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
    </node>
    <node concept="3Tm1VV" id="1wWWPEu9Bc9" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="1G0B_lkFwFK">
    <property role="TrG5h" value="TestDiscoveryContributor" />
    <node concept="312cEg" id="1G0B_lkFBht" role="jymVt">
      <property role="TrG5h" value="myPlatform" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1G0B_lkFBhu" role="1B3o_S" />
      <node concept="3uibUv" id="1G0B_lkFBhw" role="1tU5fm">
        <ref role="3uigEE" to="wyuk:~ComponentHost" resolve="ComponentHost" />
      </node>
    </node>
    <node concept="312cEg" id="1G0B_lkFBeL" role="jymVt">
      <property role="TrG5h" value="myTestPlan" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1G0B_lkFBeM" role="1B3o_S" />
      <node concept="3uibUv" id="1G0B_lkFBeO" role="1tU5fm">
        <ref role="3uigEE" to="asz6:5tXD4tyLjpu" resolve="TestData" />
      </node>
    </node>
    <node concept="312cEg" id="1G0B_lkHLOY" role="jymVt">
      <property role="TrG5h" value="myWorkerCallback" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1G0B_lkHLOZ" role="1B3o_S" />
      <node concept="3uibUv" id="1G0B_lkHLP1" role="1tU5fm">
        <ref role="3uigEE" to="asz6:7MSVDs2AdGA" resolve="WorkerCallback" />
      </node>
    </node>
    <node concept="2tJIrI" id="1G0B_lkFBl7" role="jymVt" />
    <node concept="3clFbW" id="1G0B_lkFwJS" role="jymVt">
      <node concept="3cqZAl" id="1G0B_lkFwJU" role="3clF45" />
      <node concept="3Tm1VV" id="1G0B_lkFwJV" role="1B3o_S" />
      <node concept="3clFbS" id="1G0B_lkFwJW" role="3clF47">
        <node concept="3clFbF" id="1G0B_lkFBeP" role="3cqZAp">
          <node concept="37vLTI" id="1G0B_lkFBeR" role="3clFbG">
            <node concept="37vLTw" id="1G0B_lkFBeU" role="37vLTJ">
              <ref role="3cqZAo" node="1G0B_lkFBeL" resolve="myTestPlan" />
            </node>
            <node concept="37vLTw" id="1G0B_lkFBeV" role="37vLTx">
              <ref role="3cqZAo" node="1G0B_lkFx2I" resolve="testPlan" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1G0B_lkFBhx" role="3cqZAp">
          <node concept="37vLTI" id="1G0B_lkFBhz" role="3clFbG">
            <node concept="37vLTw" id="1G0B_lkFBhA" role="37vLTJ">
              <ref role="3cqZAo" node="1G0B_lkFBht" resolve="myPlatform" />
            </node>
            <node concept="37vLTw" id="1G0B_lkFBhB" role="37vLTx">
              <ref role="3cqZAo" node="1G0B_lkFx16" resolve="mpsPlatform" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1G0B_lkHSUq" role="3cqZAp">
          <node concept="1PaTwC" id="1G0B_lkHSUr" role="1aUNEU">
            <node concept="3oM_SD" id="1G0B_lkHSUs" role="1PaTwD">
              <property role="3oM_SC" value="provisional," />
            </node>
            <node concept="3oM_SD" id="1G0B_lkHSY6" role="1PaTwD">
              <property role="3oM_SC" value="eventually" />
            </node>
            <node concept="3oM_SD" id="1G0B_lkHSYB" role="1PaTwD">
              <property role="3oM_SC" value="shall" />
            </node>
            <node concept="3oM_SD" id="1G0B_lkHSYR" role="1PaTwD">
              <property role="3oM_SC" value="report" />
            </node>
            <node concept="3oM_SD" id="1G0B_lkHSZ7" role="1PaTwD">
              <property role="3oM_SC" value="errors" />
            </node>
            <node concept="3oM_SD" id="1G0B_lkHSZo" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="1G0B_lkHSZR" role="1PaTwD">
              <property role="3oM_SC" value="Exception" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1G0B_lkHLP2" role="3cqZAp">
          <node concept="37vLTI" id="1G0B_lkHLP4" role="3clFbG">
            <node concept="37vLTw" id="1G0B_lkHLP7" role="37vLTJ">
              <ref role="3cqZAo" node="1G0B_lkHLOY" resolve="myWorkerCallback" />
            </node>
            <node concept="37vLTw" id="1G0B_lkHLP8" role="37vLTx">
              <ref role="3cqZAo" node="1G0B_lkHLHu" resolve="callback" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1G0B_lkFx16" role="3clF46">
        <property role="TrG5h" value="mpsPlatform" />
        <node concept="3uibUv" id="1G0B_lkFx15" role="1tU5fm">
          <ref role="3uigEE" to="wyuk:~ComponentHost" resolve="ComponentHost" />
        </node>
        <node concept="2AHcQZ" id="1G0B_lkFxdn" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="1G0B_lkFx2I" role="3clF46">
        <property role="TrG5h" value="testPlan" />
        <node concept="3uibUv" id="1G0B_lkFx4c" role="1tU5fm">
          <ref role="3uigEE" to="asz6:5tXD4tyLjpu" resolve="TestData" />
        </node>
        <node concept="2AHcQZ" id="1G0B_lkFxfh" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="1G0B_lkHLHu" role="3clF46">
        <property role="TrG5h" value="callback" />
        <node concept="3uibUv" id="1G0B_lkHLLi" role="1tU5fm">
          <ref role="3uigEE" to="asz6:7MSVDs2AdGA" resolve="WorkerCallback" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1G0B_lkFCub" role="jymVt" />
    <node concept="3Tm1VV" id="1G0B_lkFwFL" role="1B3o_S" />
    <node concept="3uibUv" id="1G0B_lkFwIC" role="EKbjA">
      <ref role="3uigEE" node="1wWWPEu9Bc8" resolve="JUnit5TestContributor" />
    </node>
    <node concept="3UR2Jj" id="1G0B_lkFxhi" role="lGtFl">
      <node concept="1PaTwC" id="1E1X3WHsCJr" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsCJs" role="1PaTwD">
          <property role="3oM_SC" value="Transforms" />
        </node>
        <node concept="1Vtdud" id="1E1X3WHsCJt" role="1PaTwD">
          <node concept="1VuXuv" id="1E1X3WHsCJu" role="1Vtduc">
            <node concept="VXe08" id="1G0B_lkFziT" role="1VuXuu">
              <ref role="VXe09" to="asz6:5tXD4tyLjpu" resolve="TestData" />
            </node>
            <node concept="1PaTwC" id="1E1X3WHsCJx" role="2JaDBN">
              <node concept="3oM_SD" id="1E1X3WHsCJy" role="1PaTwD">
                <property role="3oM_SC" value="" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCJz" role="1PaTwD">
          <property role="3oM_SC" value="into" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCJ$" role="1PaTwD">
          <property role="3oM_SC" value="JUnit5" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCJ_" role="1PaTwD">
          <property role="3oM_SC" value="selectors," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCJA" role="1PaTwD">
          <property role="3oM_SC" value="capable" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsCJB" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsCJC" role="1PaTwD">
          <property role="3oM_SC" value="" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCJD" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCJE" role="1PaTwD">
          <property role="3oM_SC" value="discover" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCJF" role="1PaTwD">
          <property role="3oM_SC" value="all" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCJG" role="1PaTwD">
          <property role="3oM_SC" value="tests" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCJH" role="1PaTwD">
          <property role="3oM_SC" value="in" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCJI" role="1PaTwD">
          <property role="3oM_SC" value="an" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCJJ" role="1PaTwD">
          <property role="3oM_SC" value="MPS" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCJK" role="1PaTwD">
          <property role="3oM_SC" value="module," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCJL" role="1PaTwD">
          <property role="3oM_SC" value="if" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCJM" role="1PaTwD">
          <property role="3oM_SC" value="requested" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCJN" role="1PaTwD">
          <property role="3oM_SC" value="(" />
        </node>
        <node concept="1Vtdud" id="1E1X3WHsCJO" role="1PaTwD">
          <node concept="1VuTSG" id="1E1X3WHsCJP" role="1Vtduc">
            <node concept="1PaTwC" id="1E1X3WHsCJS" role="2JaDBN">
              <node concept="3oM_SD" id="1E1X3WHsCJT" role="1PaTwD">
                <property role="3oM_SC" value="TestData.ModuleRecord.autoDiscovery" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCJU" role="1PaTwD">
          <property role="3oM_SC" value="" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsCJV" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsCJW" role="1PaTwD">
          <property role="3oM_SC" value="&lt;p&gt;" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsCJX" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsCJY" role="1PaTwD">
          <property role="3oM_SC" value="Now," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCJZ" role="1PaTwD">
          <property role="3oM_SC" value="we" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCK0" role="1PaTwD">
          <property role="3oM_SC" value="use" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCK1" role="1PaTwD">
          <property role="3oM_SC" value="ClassSelector" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCK2" role="1PaTwD">
          <property role="3oM_SC" value="and" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCK3" role="1PaTwD">
          <property role="3oM_SC" value="MethodSelector," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCK4" role="1PaTwD">
          <property role="3oM_SC" value="although" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCK5" role="1PaTwD">
          <property role="3oM_SC" value="we" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCK6" role="1PaTwD">
          <property role="3oM_SC" value="may" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCK7" role="1PaTwD">
          <property role="3oM_SC" value="end" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCK8" role="1PaTwD">
          <property role="3oM_SC" value="up" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCK9" role="1PaTwD">
          <property role="3oM_SC" value="with" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCKa" role="1PaTwD">
          <property role="3oM_SC" value="our" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCKb" role="1PaTwD">
          <property role="3oM_SC" value="own" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCKc" role="1PaTwD">
          <property role="3oM_SC" value="selectors," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCKd" role="1PaTwD">
          <property role="3oM_SC" value="if" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCKe" role="1PaTwD">
          <property role="3oM_SC" value="we" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCKf" role="1PaTwD">
          <property role="3oM_SC" value="manage" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCKg" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCKh" role="1PaTwD">
          <property role="3oM_SC" value="add" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCKi" role="1PaTwD">
          <property role="3oM_SC" value="custom" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCKj" role="1PaTwD">
          <property role="3oM_SC" value="TestEngine." />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="1G0B_lkFCxv" role="jymVt">
      <property role="TrG5h" value="collectSelectors" />
      <node concept="3uibUv" id="1G0B_lkFCxw" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1G0B_lkFCxx" role="11_B2D">
          <ref role="3uigEE" to="n4ib:~DiscoverySelector" resolve="DiscoverySelector" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1G0B_lkFCxy" role="1B3o_S" />
      <node concept="3uibUv" id="1G0B_lkFCx$" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
      <node concept="3clFbS" id="1G0B_lkFCx_" role="3clF47">
        <node concept="3SKdUt" id="5tXD4tz7tWg" role="3cqZAp">
          <node concept="1PaTwC" id="5tXD4tz7tWh" role="1aUNEU">
            <node concept="3oM_SD" id="5tXD4tz7tWi" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="5TX$EBEcrjh" role="1PaTwD">
              <property role="3oM_SC" value="resort" />
            </node>
            <node concept="3oM_SD" id="5TX$EBEcrk1" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="5TX$EBEcrlh" role="1PaTwD">
              <property role="3oM_SC" value="global" />
            </node>
            <node concept="3oM_SD" id="5TX$EBEcrli" role="1PaTwD">
              <property role="3oM_SC" value="repo" />
            </node>
            <node concept="3oM_SD" id="5TX$EBEcrq5" role="1PaTwD">
              <property role="3oM_SC" value="(test" />
            </node>
            <node concept="3oM_SD" id="5TX$EBEcrql" role="1PaTwD">
              <property role="3oM_SC" value="modules" />
            </node>
            <node concept="3oM_SD" id="5TX$EBEcrqm" role="1PaTwD">
              <property role="3oM_SC" value="come" />
            </node>
            <node concept="3oM_SD" id="5TX$EBEcrqQ" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="5TX$EBEcrqR" role="1PaTwD">
              <property role="3oM_SC" value="code," />
            </node>
            <node concept="3oM_SD" id="5TX$EBEcrr7" role="1PaTwD">
              <property role="3oM_SC" value="hence" />
            </node>
            <node concept="3oM_SD" id="5TX$EBEcrrR" role="1PaTwD">
              <property role="3oM_SC" value="expect" />
            </node>
            <node concept="3oM_SD" id="5TX$EBEcrsn" role="1PaTwD">
              <property role="3oM_SC" value="them" />
            </node>
            <node concept="3oM_SD" id="5TX$EBEcrso" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="5TX$EBEcrsC" role="1PaTwD">
              <property role="3oM_SC" value="show" />
            </node>
            <node concept="3oM_SD" id="5TX$EBEcrsD" role="1PaTwD">
              <property role="3oM_SC" value="up" />
            </node>
            <node concept="3oM_SD" id="5TX$EBEcrt9" role="1PaTwD">
              <property role="3oM_SC" value="there)," />
            </node>
            <node concept="3oM_SD" id="5TX$EBEcruG" role="1PaTwD">
              <property role="3oM_SC" value="however," />
            </node>
            <node concept="3oM_SD" id="5tXD4tz7vT2" role="1PaTwD">
              <property role="3oM_SC" value="shall" />
            </node>
            <node concept="3oM_SD" id="5tXD4tz7vT3" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5TX$EBEcrwa" role="3cqZAp">
          <node concept="1PaTwC" id="5TX$EBEcrvF" role="1aUNEU">
            <node concept="3oM_SD" id="5TX$EBEcrvE" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="5TX$EBEcucK" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="5TX$EBEcud2" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="5TX$EBEcudi" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="5TX$EBEcudj" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="5TX$EBEcud$" role="1PaTwD">
              <property role="3oM_SC" value="access" />
            </node>
            <node concept="3oM_SD" id="5tXD4tz7vTK" role="1PaTwD">
              <property role="3oM_SC" value="platform.find(LanguageRegistry).withModuleRuntime(modulePtr).loadClass()" />
            </node>
            <node concept="3oM_SD" id="5tXD4tz7wb4" role="1PaTwD">
              <property role="3oM_SC" value="or" />
            </node>
            <node concept="3oM_SD" id="5tXD4tz7wb5" role="1PaTwD">
              <property role="3oM_SC" value="findResource()," />
            </node>
            <node concept="3oM_SD" id="5tXD4tz7w7M" role="1PaTwD">
              <property role="3oM_SC" value="instead" />
            </node>
            <node concept="3oM_SD" id="5TX$EBEcvXC" role="1PaTwD">
              <property role="3oM_SC" value="(especially" />
            </node>
            <node concept="3oM_SD" id="5TX$EBEcvYo" role="1PaTwD">
              <property role="3oM_SC" value="when" />
            </node>
            <node concept="3oM_SD" id="5TX$EBEcvZ8" role="1PaTwD">
              <property role="3oM_SC" value="there's" />
            </node>
            <node concept="3oM_SD" id="5TX$EBEcvZC" role="1PaTwD">
              <property role="3oM_SC" value="explicit" />
            </node>
            <node concept="3oM_SD" id="5TX$EBEcvZS" role="1PaTwD">
              <property role="3oM_SC" value="list" />
            </node>
            <node concept="3oM_SD" id="5TX$EBEcw08" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="5TX$EBEcw09" role="1PaTwD">
              <property role="3oM_SC" value="tests" />
            </node>
            <node concept="3oM_SD" id="5TX$EBEcw5g" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="5TX$EBEcw35" role="1PaTwD">
              <property role="3oM_SC" value="TestData," />
            </node>
            <node concept="3oM_SD" id="5TX$EBEcw18" role="1PaTwD">
              <property role="3oM_SC" value="w/o" />
            </node>
            <node concept="3oM_SD" id="5TX$EBEcw1S" role="1PaTwD">
              <property role="3oM_SC" value="auto-discovery)" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5TX$EBEcufU" role="3cqZAp">
          <node concept="1PaTwC" id="5TX$EBEcufV" role="1aUNEU">
            <node concept="3oM_SD" id="5TX$EBEcufW" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1G0B_lkGitI" role="3cqZAp">
          <node concept="1PaTwC" id="1G0B_lkGitJ" role="1aUNEU">
            <node concept="3oM_SD" id="1G0B_lkGitK" role="1PaTwD">
              <property role="3oM_SC" value="XXX" />
            </node>
            <node concept="3oM_SD" id="1G0B_lkGjaK" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="1G0B_lkGjb1" role="1PaTwD">
              <property role="3oM_SC" value="whatever" />
            </node>
            <node concept="3oM_SD" id="1G0B_lkGjcx" role="1PaTwD">
              <property role="3oM_SC" value="reason," />
            </node>
            <node concept="3oM_SD" id="1G0B_lkGjcy" role="1PaTwD">
              <property role="3oM_SC" value="can't" />
            </node>
            <node concept="3oM_SD" id="1G0B_lkGjcz" role="1PaTwD">
              <property role="3oM_SC" value="parameterise" />
            </node>
            <node concept="3oM_SD" id="1G0B_lkGjdM" role="1PaTwD">
              <property role="3oM_SC" value="toList()," />
            </node>
            <node concept="3oM_SD" id="1G0B_lkGjf1" role="1PaTwD">
              <property role="3oM_SC" value="only" />
            </node>
            <node concept="3oM_SD" id="1G0B_lkGjfx" role="1PaTwD">
              <property role="3oM_SC" value="collect(Collectors)" />
            </node>
            <node concept="3oM_SD" id="1G0B_lkGjid" role="1PaTwD">
              <property role="3oM_SC" value="works" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="kdZzJSjNsa" role="3cqZAp">
          <node concept="3cpWsn" id="kdZzJSjNsb" role="3cpWs9">
            <property role="TrG5h" value="repository" />
            <node concept="3uibUv" id="kdZzJSjMza" role="1tU5fm">
              <ref role="3uigEE" to="w1kc:~MPSModuleRepository" resolve="MPSModuleRepository" />
            </node>
            <node concept="2OqwBi" id="kdZzJSjNsc" role="33vP2m">
              <node concept="37vLTw" id="kdZzJSjNsd" role="2Oq$k0">
                <ref role="3cqZAo" node="1G0B_lkFBht" resolve="myPlatform" />
              </node>
              <node concept="liA8E" id="kdZzJSjNse" role="2OqNvi">
                <ref role="37wK5l" to="wyuk:~ComponentHost.findComponent(java.lang.Class)" resolve="findComponent" />
                <node concept="3VsKOn" id="kdZzJSjNsf" role="37wK5m">
                  <ref role="3VsUkX" to="w1kc:~MPSModuleRepository" resolve="MPSModuleRepository" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1G0B_lkGL5$" role="3cqZAp">
          <node concept="3cpWsn" id="1G0B_lkGL5_" role="3cpWs9">
            <property role="TrG5h" value="tests" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="1G0B_lkGL5A" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="kdZzJSksf5" role="11_B2D">
                <ref role="3uigEE" to="n4ib:~DiscoverySelector" resolve="DiscoverySelector" />
              </node>
            </node>
            <node concept="2ShNRf" id="1G0B_lkGL5D" role="33vP2m">
              <node concept="1pGfFk" id="1G0B_lkGL5E" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="kdZzJSjVZe" role="3cqZAp" />
        <node concept="3cpWs8" id="1G0B_lkGL5F" role="3cqZAp">
          <node concept="3cpWsn" id="1G0B_lkGL5G" role="3cpWs9">
            <property role="TrG5h" value="visitor" />
            <node concept="3uibUv" id="1G0B_lkGL5H" role="1tU5fm">
              <ref role="3uigEE" node="5gsHVK_Jw60" resolve="TestDiscoveryVisitor" />
            </node>
            <node concept="2ShNRf" id="1G0B_lkGL5I" role="33vP2m">
              <node concept="YeOm9" id="1G0B_lkGL5J" role="2ShVmc">
                <node concept="1Y3b0j" id="1G0B_lkGL5K" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <property role="373rjd" value="true" />
                  <ref role="1Y3XeK" node="5gsHVK_Jw60" resolve="TestDiscoveryVisitor" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <node concept="3Tm1VV" id="1G0B_lkGL5L" role="1B3o_S" />
                  <node concept="3clFb_" id="1G0B_lkGL5M" role="jymVt">
                    <property role="TrG5h" value="visitTestRoot" />
                    <node concept="37vLTG" id="1G0B_lkGL5N" role="3clF46">
                      <property role="TrG5h" value="testRootNode" />
                      <node concept="3uibUv" id="1G0B_lkGL5O" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="1G0B_lkGL5P" role="3clF46">
                      <property role="TrG5h" value="testClassName" />
                      <node concept="17QB3L" id="1G0B_lkGL5Q" role="1tU5fm" />
                    </node>
                    <node concept="37vLTG" id="1G0B_lkGL5R" role="3clF46">
                      <property role="TrG5h" value="moduleClassLoader" />
                      <node concept="3uibUv" id="1G0B_lkGL5S" role="1tU5fm">
                        <ref role="3uigEE" to="wyt6:~ClassLoader" resolve="ClassLoader" />
                      </node>
                    </node>
                    <node concept="3cqZAl" id="1G0B_lkGL5T" role="3clF45" />
                    <node concept="3Tm1VV" id="1G0B_lkGL5U" role="1B3o_S" />
                    <node concept="3clFbS" id="1G0B_lkGL5V" role="3clF47">
                      <node concept="3J1_TO" id="1G0B_lkGL5W" role="3cqZAp">
                        <node concept="3clFbS" id="1G0B_lkGL5X" role="1zxBo7">
                          <node concept="3SKdUt" id="kdZzJSkOLs" role="3cqZAp">
                            <node concept="1PaTwC" id="kdZzJSkOLt" role="1aUNEU">
                              <node concept="3oM_SD" id="kdZzJSkQNj" role="1PaTwD">
                                <property role="3oM_SC" value="XXX" />
                              </node>
                              <node concept="3oM_SD" id="kdZzJSkQPd" role="1PaTwD">
                                <property role="3oM_SC" value="I" />
                              </node>
                              <node concept="3oM_SD" id="kdZzJSkQR8" role="1PaTwD">
                                <property role="3oM_SC" value="wonder" />
                              </node>
                              <node concept="3oM_SD" id="kdZzJSkQR9" role="1PaTwD">
                                <property role="3oM_SC" value="if" />
                              </node>
                              <node concept="3oM_SD" id="kdZzJSkQUH" role="1PaTwD">
                                <property role="3oM_SC" value="selectClass(CL," />
                              </node>
                              <node concept="3oM_SD" id="kdZzJSkR1$" role="1PaTwD">
                                <property role="3oM_SC" value="testClassName)" />
                              </node>
                              <node concept="3oM_SD" id="kdZzJSkR71" role="1PaTwD">
                                <property role="3oM_SC" value="would" />
                              </node>
                              <node concept="3oM_SD" id="kdZzJSkR7h" role="1PaTwD">
                                <property role="3oM_SC" value="be" />
                              </node>
                              <node concept="3oM_SD" id="kdZzJSkR7i" role="1PaTwD">
                                <property role="3oM_SC" value="smarter," />
                              </node>
                              <node concept="3oM_SD" id="kdZzJSkRcJ" role="1PaTwD">
                                <property role="3oM_SC" value="to" />
                              </node>
                              <node concept="3oM_SD" id="kdZzJSkRcK" role="1PaTwD">
                                <property role="3oM_SC" value="let" />
                              </node>
                              <node concept="3oM_SD" id="kdZzJSkRer" role="1PaTwD">
                                <property role="3oM_SC" value="JUnit" />
                              </node>
                              <node concept="3oM_SD" id="kdZzJSkRhZ" role="1PaTwD">
                                <property role="3oM_SC" value="deal" />
                              </node>
                              <node concept="3oM_SD" id="kdZzJSkRlj" role="1PaTwD">
                                <property role="3oM_SC" value="with" />
                              </node>
                              <node concept="3oM_SD" id="kdZzJSkRlk" role="1PaTwD">
                                <property role="3oM_SC" value="CNFE?" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="1G0B_lkGL5Y" role="3cqZAp">
                            <node concept="2OqwBi" id="1G0B_lkGL5Z" role="3clFbG">
                              <node concept="37vLTw" id="1G0B_lkGL60" role="2Oq$k0">
                                <ref role="3cqZAo" node="1G0B_lkGL5_" resolve="tests" />
                              </node>
                              <node concept="liA8E" id="1G0B_lkGL61" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                                <node concept="2YIFZM" id="kdZzJSkFzz" role="37wK5m">
                                  <ref role="37wK5l" to="s3rp:~DiscoverySelectors.selectClass(java.lang.Class)" resolve="selectClass" />
                                  <ref role="1Pybhc" to="s3rp:~DiscoverySelectors" resolve="DiscoverySelectors" />
                                  <node concept="2OqwBi" id="1G0B_lkGL62" role="37wK5m">
                                    <node concept="37vLTw" id="1G0B_lkGL63" role="2Oq$k0">
                                      <ref role="3cqZAo" node="1G0B_lkGL5R" resolve="moduleClassLoader" />
                                    </node>
                                    <node concept="liA8E" id="1G0B_lkGL64" role="2OqNvi">
                                      <ref role="37wK5l" to="wyt6:~ClassLoader.loadClass(java.lang.String)" resolve="loadClass" />
                                      <node concept="37vLTw" id="1G0B_lkGL65" role="37wK5m">
                                        <ref role="3cqZAo" node="1G0B_lkGL5P" resolve="testClassName" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbH" id="1G0B_lkGL66" role="3cqZAp" />
                        </node>
                        <node concept="3uVAMA" id="1G0B_lkGL67" role="1zxBo5">
                          <node concept="3clFbS" id="1G0B_lkGL68" role="1zc67A">
                            <node concept="3clFbF" id="1G0B_lkGL69" role="3cqZAp">
                              <node concept="2OqwBi" id="1G0B_lkGL6a" role="3clFbG">
                                <node concept="37vLTw" id="1G0B_lkGL6b" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1G0B_lkHLOY" resolve="myWorkerCallback" />
                                </node>
                                <node concept="liA8E" id="1G0B_lkGL6c" role="2OqNvi">
                                  <ref role="37wK5l" to="asz6:5tXD4tyH5RB" resolve="fatal" />
                                  <node concept="Xl_RD" id="1G0B_lkGL6d" role="37wK5m">
                                    <property role="Xl_RC" value="error building test suite" />
                                  </node>
                                  <node concept="37vLTw" id="1G0B_lkGL6e" role="37wK5m">
                                    <ref role="3cqZAo" node="1G0B_lkGL6f" resolve="e" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="XOnhg" id="1G0B_lkGL6f" role="1zc67B">
                            <property role="TrG5h" value="e" />
                            <node concept="nSUau" id="1G0B_lkGL6g" role="1tU5fm">
                              <node concept="3uibUv" id="1G0B_lkGL6h" role="nSUat">
                                <ref role="3uigEE" to="wyt6:~ClassNotFoundException" resolve="ClassNotFoundException" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="1G0B_lkGL6i" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1G0B_lkGTU$" role="3cqZAp">
          <node concept="2OqwBi" id="1G0B_lkGTU_" role="3clFbG">
            <node concept="2OqwBi" id="1G0B_lkGTUA" role="2Oq$k0">
              <node concept="37vLTw" id="1G0B_lkGTUB" role="2Oq$k0">
                <ref role="3cqZAo" node="kdZzJSjNsb" resolve="repository" />
              </node>
              <node concept="liA8E" id="1G0B_lkGTUC" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~MPSModuleRepository.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="1G0B_lkGTUD" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
              <node concept="1bVj0M" id="1G0B_lkGTUE" role="37wK5m">
                <node concept="3clFbS" id="1G0B_lkGTUF" role="1bW5cS">
                  <node concept="3cpWs8" id="kdZzJShNE5" role="3cqZAp">
                    <node concept="3cpWsn" id="kdZzJShNE6" role="3cpWs9">
                      <property role="TrG5h" value="clm" />
                      <property role="3TUv4t" value="true" />
                      <node concept="3uibUv" id="kdZzJShN1t" role="1tU5fm">
                        <ref role="3uigEE" to="3qmy:~ClassLoaderManager" resolve="ClassLoaderManager" />
                      </node>
                      <node concept="2OqwBi" id="kdZzJShNE7" role="33vP2m">
                        <node concept="37vLTw" id="kdZzJShNE8" role="2Oq$k0">
                          <ref role="3cqZAo" node="1G0B_lkFBht" resolve="myPlatform" />
                        </node>
                        <node concept="liA8E" id="kdZzJShNE9" role="2OqNvi">
                          <ref role="37wK5l" to="wyuk:~ComponentHost.findComponent(java.lang.Class)" resolve="findComponent" />
                          <node concept="3VsKOn" id="kdZzJShNEa" role="37wK5m">
                            <ref role="3VsUkX" to="3qmy:~ClassLoaderManager" resolve="ClassLoaderManager" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="1G0B_lkGTUG" role="3cqZAp">
                    <node concept="3cpWsn" id="1G0B_lkGTUH" role="3cpWs9">
                      <property role="TrG5h" value="discovery" />
                      <node concept="3uibUv" id="1G0B_lkGTUI" role="1tU5fm">
                        <ref role="3uigEE" node="5gsHVK_epY3" resolve="TestDiscovery" />
                      </node>
                      <node concept="2ShNRf" id="1G0B_lkGTUJ" role="33vP2m">
                        <node concept="1pGfFk" id="1G0B_lkGTUK" role="2ShVmc">
                          <ref role="37wK5l" node="5gsHVK_JKSL" resolve="TestDiscovery" />
                          <node concept="37vLTw" id="kdZzJShNEb" role="37wK5m">
                            <ref role="3cqZAo" node="kdZzJShNE6" resolve="clm" />
                          </node>
                          <node concept="2OqwBi" id="2lMuMRU7YW4" role="37wK5m">
                            <node concept="37vLTw" id="2lMuMRU7UUK" role="2Oq$k0">
                              <ref role="3cqZAo" node="1G0B_lkFBht" resolve="myPlatform" />
                            </node>
                            <node concept="liA8E" id="2lMuMRU8366" role="2OqNvi">
                              <ref role="37wK5l" to="wyuk:~ComponentHost.findComponent(java.lang.Class)" resolve="findComponent" />
                              <node concept="3VsKOn" id="2lMuMRU8deh" role="37wK5m">
                                <ref role="3VsUkX" to="4u8o:4chG8iItd4i" resolve="TestPlatform" />
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="1G0B_lkGTUR" role="37wK5m">
                            <ref role="3cqZAo" node="1G0B_lkGL5G" resolve="visitor" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="1G0B_lkGTUS" role="3cqZAp">
                    <node concept="3cpWsn" id="1G0B_lkGTUT" role="3cpWs9">
                      <property role="TrG5h" value="pf" />
                      <node concept="3uibUv" id="1G0B_lkGTUU" role="1tU5fm">
                        <ref role="3uigEE" to="pa15:~PersistenceRegistry" resolve="PersistenceRegistry" />
                      </node>
                      <node concept="2OqwBi" id="1G0B_lkGTUV" role="33vP2m">
                        <node concept="37vLTw" id="1G0B_lkH24o" role="2Oq$k0">
                          <ref role="3cqZAo" node="1G0B_lkFBht" resolve="myPlatform" />
                        </node>
                        <node concept="liA8E" id="1G0B_lkGTUZ" role="2OqNvi">
                          <ref role="37wK5l" to="wyuk:~ComponentHost.findComponent(java.lang.Class)" resolve="findComponent" />
                          <node concept="3VsKOn" id="1G0B_lkGTV0" role="37wK5m">
                            <ref role="3VsUkX" to="pa15:~PersistenceRegistry" resolve="PersistenceRegistry" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="1G0B_lkGTV1" role="3cqZAp" />
                  <node concept="1DcWWT" id="1G0B_lkGTV2" role="3cqZAp">
                    <node concept="3clFbS" id="1G0B_lkGTV3" role="2LFqv$">
                      <node concept="3cpWs8" id="1G0B_lkGTV4" role="3cqZAp">
                        <node concept="3cpWsn" id="1G0B_lkGTV5" role="3cpWs9">
                          <property role="TrG5h" value="testModule" />
                          <node concept="3uibUv" id="1G0B_lkGTV6" role="1tU5fm">
                            <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                          </node>
                          <node concept="2OqwBi" id="1G0B_lkGTV7" role="33vP2m">
                            <node concept="2OqwBi" id="1G0B_lkGTV8" role="2Oq$k0">
                              <node concept="37vLTw" id="1G0B_lkGTV9" role="2Oq$k0">
                                <ref role="3cqZAo" node="1G0B_lkGTUT" resolve="pf" />
                              </node>
                              <node concept="liA8E" id="1G0B_lkGTVa" role="2OqNvi">
                                <ref role="37wK5l" to="pa15:~PersistenceRegistry.createModuleReference(java.lang.String)" resolve="createModuleReference" />
                                <node concept="2OqwBi" id="1G0B_lkGTVb" role="37wK5m">
                                  <node concept="37vLTw" id="1G0B_lkGTVc" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1G0B_lkGTVX" resolve="tm" />
                                  </node>
                                  <node concept="2OwXpG" id="1G0B_lkGTVd" role="2OqNvi">
                                    <ref role="2Oxat5" to="asz6:5tXD4tyLsQx" resolve="modulePtr" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="liA8E" id="1G0B_lkGTVe" role="2OqNvi">
                              <ref role="37wK5l" to="lui2:~SModuleReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                              <node concept="37vLTw" id="1G0B_lkH8eF" role="37wK5m">
                                <ref role="3cqZAo" node="kdZzJSjNsb" resolve="repository" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="1G0B_lkGTVi" role="3cqZAp">
                        <node concept="3clFbS" id="1G0B_lkGTVj" role="3clFbx">
                          <node concept="3clFbF" id="1G0B_lkGTVk" role="3cqZAp">
                            <node concept="2OqwBi" id="1G0B_lkGTVl" role="3clFbG">
                              <node concept="37vLTw" id="1G0B_lkGTVm" role="2Oq$k0">
                                <ref role="3cqZAo" node="1G0B_lkHLOY" resolve="myWorkerCallback" />
                              </node>
                              <node concept="liA8E" id="1G0B_lkGTVn" role="2OqNvi">
                                <ref role="37wK5l" to="asz6:5tXD4tyH5RB" resolve="fatal" />
                                <node concept="2OqwBi" id="kdZzJSf_OV" role="37wK5m">
                                  <node concept="Xl_RD" id="1G0B_lkGTVo" role="2Oq$k0">
                                    <property role="Xl_RC" value="Can't find module %s in a repository" />
                                  </node>
                                  <node concept="2cAKMz" id="kdZzJSfDif" role="2OqNvi">
                                    <node concept="2OqwBi" id="kdZzJSfHFr" role="2cAKU6">
                                      <node concept="37vLTw" id="kdZzJSfFsI" role="2Oq$k0">
                                        <ref role="3cqZAo" node="1G0B_lkGTVX" resolve="tm" />
                                      </node>
                                      <node concept="2OwXpG" id="kdZzJSfKpy" role="2OqNvi">
                                        <ref role="2Oxat5" to="asz6:5tXD4tyLsQx" resolve="modulePtr" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="10Nm6u" id="1G0B_lkGTVp" role="37wK5m" />
                              </node>
                            </node>
                          </node>
                          <node concept="3N13vt" id="1G0B_lkGTVq" role="3cqZAp" />
                        </node>
                        <node concept="3clFbC" id="1G0B_lkGTVr" role="3clFbw">
                          <node concept="10Nm6u" id="1G0B_lkGTVs" role="3uHU7w" />
                          <node concept="37vLTw" id="1G0B_lkGTVt" role="3uHU7B">
                            <ref role="3cqZAo" node="1G0B_lkGTV5" resolve="testModule" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="kdZzJSb_mL" role="3cqZAp">
                        <node concept="3clFbS" id="kdZzJSb_mN" role="3clFbx">
                          <node concept="3clFbJ" id="kdZzJSfs4a" role="3cqZAp">
                            <node concept="3clFbS" id="kdZzJSfs4c" role="3clFbx">
                              <node concept="3clFbF" id="kdZzJSfwBX" role="3cqZAp">
                                <node concept="2OqwBi" id="kdZzJSfwBY" role="3clFbG">
                                  <node concept="37vLTw" id="kdZzJSfwBZ" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1G0B_lkHLOY" resolve="myWorkerCallback" />
                                  </node>
                                  <node concept="liA8E" id="kdZzJSfwC0" role="2OqNvi">
                                    <ref role="37wK5l" to="asz6:7MSVDs2AenN" resolve="warning" />
                                    <node concept="2OqwBi" id="kdZzJSfT55" role="37wK5m">
                                      <node concept="Xl_RD" id="kdZzJSfwC1" role="2Oq$k0">
                                        <property role="Xl_RC" value="Test module %s is not capable to load classes, ignored" />
                                      </node>
                                      <node concept="2cAKMz" id="kdZzJSfVUk" role="2OqNvi">
                                        <node concept="2OqwBi" id="kdZzJSg1rX" role="2cAKU6">
                                          <node concept="37vLTw" id="kdZzJSfY6r" role="2Oq$k0">
                                            <ref role="3cqZAo" node="1G0B_lkGTV5" resolve="testModule" />
                                          </node>
                                          <node concept="liA8E" id="kdZzJSg3K8" role="2OqNvi">
                                            <ref role="37wK5l" to="lui2:~SModule.getModuleName()" resolve="getModuleName" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3N13vt" id="kdZzJSgegg" role="3cqZAp" />
                            </node>
                            <node concept="3fqX7Q" id="1dWiSG74t18" role="3clFbw">
                              <node concept="2YIFZM" id="1dWiSG74t1a" role="3fr31v">
                                <ref role="37wK5l" to="z1c3:~SModuleOperations.classesAvailableToMPS(org.jetbrains.mps.openapi.module.SModule)" resolve="classesAvailableToMPS" />
                                <ref role="1Pybhc" to="z1c3:~SModuleOperations" resolve="SModuleOperations" />
                                <node concept="37vLTw" id="1dWiSG74t1b" role="37wK5m">
                                  <ref role="3cqZAo" node="1G0B_lkGTV5" resolve="testModule" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs8" id="kdZzJSbJup" role="3cqZAp">
                            <node concept="3cpWsn" id="kdZzJSbJus" role="3cpWs9">
                              <property role="TrG5h" value="noTestFacetAndTestModels" />
                              <node concept="10P_77" id="kdZzJSbJun" role="1tU5fm" />
                              <node concept="3clFbT" id="kdZzJSc0hM" role="33vP2m" />
                            </node>
                          </node>
                          <node concept="3clFbJ" id="1G0B_lkGTVu" role="3cqZAp">
                            <node concept="3clFbS" id="1G0B_lkGTVv" role="3clFbx">
                              <node concept="3clFbJ" id="7lll8WICLnv" role="3cqZAp">
                                <node concept="3clFbS" id="7lll8WICLnx" role="3clFbx">
                                  <node concept="3SKdUt" id="7lll8WICTGS" role="3cqZAp">
                                    <node concept="1PaTwC" id="7lll8WICTGT" role="1aUNEU">
                                      <node concept="3oM_SD" id="7lll8WICW6e" role="1PaTwD">
                                        <property role="3oM_SC" value="don't" />
                                      </node>
                                      <node concept="3oM_SD" id="7lll8WICZSq" role="1PaTwD">
                                        <property role="3oM_SC" value="expect" />
                                      </node>
                                      <node concept="3oM_SD" id="7lll8WID1h1" role="1PaTwD">
                                        <property role="3oM_SC" value="test" />
                                      </node>
                                      <node concept="3oM_SD" id="7lll8WID2DR" role="1PaTwD">
                                        <property role="3oM_SC" value="models" />
                                      </node>
                                      <node concept="3oM_SD" id="7lll8WID2E7" role="1PaTwD">
                                        <property role="3oM_SC" value="there," />
                                      </node>
                                      <node concept="3oM_SD" id="7lll8WID2E8" role="1PaTwD">
                                        <property role="3oM_SC" value="just" />
                                      </node>
                                      <node concept="3oM_SD" id="7lll8WID42Y" role="1PaTwD">
                                        <property role="3oM_SC" value="go" />
                                      </node>
                                      <node concept="3oM_SD" id="7lll8WID5r_" role="1PaTwD">
                                        <property role="3oM_SC" value="on" />
                                      </node>
                                      <node concept="3oM_SD" id="7lll8WID5rA" role="1PaTwD">
                                        <property role="3oM_SC" value="silently" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3N13vt" id="1G0B_lkGTVL" role="3cqZAp" />
                                </node>
                                <node concept="2ZW3vV" id="7lll8WICOoF" role="3clFbw">
                                  <node concept="3uibUv" id="7lll8WICQQz" role="2ZW6by">
                                    <ref role="3uigEE" to="w1kc:~Generator" resolve="Generator" />
                                  </node>
                                  <node concept="37vLTw" id="7lll8WICMQx" role="2ZW6bz">
                                    <ref role="3cqZAo" node="1G0B_lkGTV5" resolve="testModule" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbJ" id="kdZzJSdNbt" role="3cqZAp">
                                <node concept="3clFbS" id="kdZzJSdNbv" role="3clFbx">
                                  <node concept="3clFbF" id="1G0B_lkGTVy" role="3cqZAp">
                                    <node concept="2OqwBi" id="1G0B_lkGTVz" role="3clFbG">
                                      <node concept="37vLTw" id="1G0B_lkGTV$" role="2Oq$k0">
                                        <ref role="3cqZAo" node="1G0B_lkHLOY" resolve="myWorkerCallback" />
                                      </node>
                                      <node concept="liA8E" id="1G0B_lkGTV_" role="2OqNvi">
                                        <ref role="37wK5l" to="asz6:7MSVDs2AenN" resolve="warning" />
                                        <node concept="2OqwBi" id="1G0B_lkGTVA" role="37wK5m">
                                          <node concept="Xl_RD" id="1G0B_lkGTVB" role="2Oq$k0">
                                            <property role="Xl_RC" value="Module %s doesn't have 'Tests' facet, but got @tests models. Please add Tests facet to the module. MPS will ignore modules without the facet in future releases" />
                                          </node>
                                          <node concept="2cAKMz" id="1G0B_lkGTVC" role="2OqNvi">
                                            <node concept="2OqwBi" id="1G0B_lkGTVD" role="2cAKU6">
                                              <node concept="37vLTw" id="1G0B_lkGTVE" role="2Oq$k0">
                                                <ref role="3cqZAo" node="1G0B_lkGTV5" resolve="testModule" />
                                              </node>
                                              <node concept="liA8E" id="1G0B_lkGTVF" role="2OqNvi">
                                                <ref role="37wK5l" to="lui2:~SModule.getModuleName()" resolve="getModuleName" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3fqX7Q" id="kdZzJSdZWY" role="3clFbw">
                                  <node concept="2OqwBi" id="kdZzJSdZX0" role="3fr31v">
                                    <node concept="2OqwBi" id="kdZzJSdZX1" role="2Oq$k0">
                                      <node concept="37vLTw" id="kdZzJSdZX2" role="2Oq$k0">
                                        <ref role="3cqZAo" node="1G0B_lkGTV5" resolve="testModule" />
                                      </node>
                                      <node concept="liA8E" id="kdZzJSdZX3" role="2OqNvi">
                                        <ref role="37wK5l" to="lui2:~SModule.getModels(java.util.function.Predicate)" resolve="getModels" />
                                        <node concept="37Ijox" id="kdZzJSdZX4" role="37wK5m">
                                          <ref role="37Ijqf" to="w1kc:~SModelStereotype.isTestModel(org.jetbrains.mps.openapi.model.SModel)" resolve="isTestModel" />
                                          <node concept="2FaPjH" id="kdZzJSdZX5" role="wWaWy">
                                            <node concept="3uibUv" id="kdZzJSdZX6" role="2FaQuo">
                                              <ref role="3uigEE" to="w1kc:~SModelStereotype" resolve="SModelStereotype" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="kdZzJSdZX7" role="2OqNvi">
                                      <ref role="37wK5l" to="33ny:~Collection.isEmpty()" resolve="isEmpty" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="9aQIb" id="kdZzJSe1_v" role="9aQIa">
                                  <node concept="3clFbS" id="kdZzJSe1_w" role="9aQI4">
                                    <node concept="3clFbF" id="kdZzJSc3Ye" role="3cqZAp">
                                      <node concept="37vLTI" id="kdZzJSc6uc" role="3clFbG">
                                        <node concept="37vLTw" id="kdZzJSc3Yc" role="37vLTJ">
                                          <ref role="3cqZAo" node="kdZzJSbJus" resolve="noTestFacetAndTestModels" />
                                        </node>
                                        <node concept="3clFbT" id="kdZzJSe4LZ" role="37vLTx">
                                          <property role="3clFbU" value="true" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbH" id="kdZzJSc7K$" role="3cqZAp" />
                              <node concept="3SKdUt" id="7lll8WIDhWj" role="3cqZAp">
                                <node concept="1PaTwC" id="7lll8WIDhWk" role="1aUNEU">
                                  <node concept="3oM_SD" id="7lll8WIDhWl" role="1PaTwD">
                                    <property role="3oM_SC" value="fall-through," />
                                  </node>
                                  <node concept="3oM_SD" id="kdZzJSckbW" role="1PaTwD">
                                    <property role="3oM_SC" value="for" />
                                  </node>
                                  <node concept="3oM_SD" id="kdZzJSckcd" role="1PaTwD">
                                    <property role="3oM_SC" value="compatibility" />
                                  </node>
                                  <node concept="3oM_SD" id="kdZzJSckct" role="1PaTwD">
                                    <property role="3oM_SC" value="with" />
                                  </node>
                                  <node concept="3oM_SD" id="kdZzJSckcu" role="1PaTwD">
                                    <property role="3oM_SC" value="modules" />
                                  </node>
                                  <node concept="3oM_SD" id="kdZzJScl_x" role="1PaTwD">
                                    <property role="3oM_SC" value="that" />
                                  </node>
                                  <node concept="3oM_SD" id="kdZzJScpaw" role="1PaTwD">
                                    <property role="3oM_SC" value="got" />
                                  </node>
                                  <node concept="3oM_SD" id="kdZzJScqzk" role="1PaTwD">
                                    <property role="3oM_SC" value="tests" />
                                  </node>
                                  <node concept="3oM_SD" id="kdZzJScrW8" role="1PaTwD">
                                    <property role="3oM_SC" value="not" />
                                  </node>
                                  <node concept="3oM_SD" id="kdZzJScvHF" role="1PaTwD">
                                    <property role="3oM_SC" value="in" />
                                  </node>
                                  <node concept="3oM_SD" id="kdZzJScvHV" role="1PaTwD">
                                    <property role="3oM_SC" value="@tests" />
                                  </node>
                                  <node concept="3oM_SD" id="kdZzJScx6w" role="1PaTwD">
                                    <property role="3oM_SC" value="models" />
                                  </node>
                                  <node concept="3oM_SD" id="kdZzJSczSm" role="1PaTwD">
                                    <property role="3oM_SC" value="and" />
                                  </node>
                                  <node concept="3oM_SD" id="kdZzJSczSn" role="1PaTwD">
                                    <property role="3oM_SC" value="don't" />
                                  </node>
                                  <node concept="3oM_SD" id="kdZzJScF9X" role="1PaTwD">
                                    <property role="3oM_SC" value="bear" />
                                  </node>
                                  <node concept="3oM_SD" id="kdZzJScFad" role="1PaTwD">
                                    <property role="3oM_SC" value="Tests" />
                                  </node>
                                  <node concept="3oM_SD" id="kdZzJScLRu" role="1PaTwD">
                                    <property role="3oM_SC" value="facet" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbC" id="1G0B_lkGTVM" role="3clFbw">
                              <node concept="10Nm6u" id="1G0B_lkGTVN" role="3uHU7w" />
                              <node concept="2OqwBi" id="1G0B_lkGTVO" role="3uHU7B">
                                <node concept="37vLTw" id="1G0B_lkGTVP" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1G0B_lkGTV5" resolve="testModule" />
                                </node>
                                <node concept="liA8E" id="1G0B_lkGTVQ" role="2OqNvi">
                                  <ref role="37wK5l" to="lui2:~SModule.getFacet(java.lang.Class)" resolve="getFacet" />
                                  <node concept="3VsKOn" id="1G0B_lkGTVR" role="37wK5m">
                                    <ref role="3VsUkX" to="b0pz:~TestsFacet" resolve="TestsFacet" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs8" id="kdZzJScYqJ" role="3cqZAp">
                            <node concept="3cpWsn" id="kdZzJScYqH" role="3cpWs9">
                              <property role="3TUv4t" value="true" />
                              <property role="TrG5h" value="presentTests" />
                              <node concept="10Oyi0" id="kdZzJSd0Hz" role="1tU5fm" />
                              <node concept="2OqwBi" id="kdZzJSdcDO" role="33vP2m">
                                <node concept="37vLTw" id="kdZzJSd9GT" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1G0B_lkGL5_" resolve="tests" />
                                </node>
                                <node concept="liA8E" id="kdZzJSdeXU" role="2OqNvi">
                                  <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="1G0B_lkGTVS" role="3cqZAp">
                            <node concept="2OqwBi" id="1G0B_lkGTVT" role="3clFbG">
                              <node concept="37vLTw" id="1G0B_lkGTVU" role="2Oq$k0">
                                <ref role="3cqZAo" node="1G0B_lkGTUH" resolve="discovery" />
                              </node>
                              <node concept="liA8E" id="1G0B_lkGTVV" role="2OqNvi">
                                <ref role="37wK5l" node="5gsHVK_f8mO" resolve="surveyModule" />
                                <node concept="37vLTw" id="1G0B_lkGTVW" role="37wK5m">
                                  <ref role="3cqZAo" node="1G0B_lkGTV5" resolve="testModule" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbJ" id="kdZzJSdi1F" role="3cqZAp">
                            <node concept="3clFbS" id="kdZzJSdi1H" role="3clFbx">
                              <node concept="3clFbF" id="kdZzJSefxZ" role="3cqZAp">
                                <node concept="2OqwBi" id="kdZzJSefy1" role="3clFbG">
                                  <node concept="37vLTw" id="kdZzJSefy2" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1G0B_lkHLOY" resolve="myWorkerCallback" />
                                  </node>
                                  <node concept="liA8E" id="kdZzJSefy3" role="2OqNvi">
                                    <ref role="37wK5l" to="asz6:7MSVDs2AenN" resolve="warning" />
                                    <node concept="2OqwBi" id="kdZzJSefy4" role="37wK5m">
                                      <node concept="Xl_RD" id="kdZzJSefy5" role="2Oq$k0">
                                        <property role="Xl_RC" value="Module %s got neither 'Tests' facet, nor @tests models, yet contributed %d tests. Please add Tests facet to the module. MPS will ignore modules without the facet in future releases" />
                                      </node>
                                      <node concept="2cAKMz" id="kdZzJSefy6" role="2OqNvi">
                                        <node concept="2OqwBi" id="kdZzJSefy7" role="2cAKU6">
                                          <node concept="37vLTw" id="kdZzJSefy8" role="2Oq$k0">
                                            <ref role="3cqZAo" node="1G0B_lkGTV5" resolve="testModule" />
                                          </node>
                                          <node concept="liA8E" id="kdZzJSefy9" role="2OqNvi">
                                            <ref role="37wK5l" to="lui2:~SModule.getModuleName()" resolve="getModuleName" />
                                          </node>
                                        </node>
                                        <node concept="3cpWsd" id="kdZzJSezmZ" role="2cAKU6">
                                          <node concept="37vLTw" id="kdZzJSe_Vw" role="3uHU7w">
                                            <ref role="3cqZAo" node="kdZzJScYqH" resolve="presentTests" />
                                          </node>
                                          <node concept="2OqwBi" id="kdZzJSewIZ" role="3uHU7B">
                                            <node concept="37vLTw" id="kdZzJSewJ0" role="2Oq$k0">
                                              <ref role="3cqZAo" node="1G0B_lkGL5_" resolve="tests" />
                                            </node>
                                            <node concept="liA8E" id="kdZzJSewJ1" role="2OqNvi">
                                              <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="1Wc70l" id="kdZzJSdmRQ" role="3clFbw">
                              <node concept="3eOVzh" id="kdZzJSdsRI" role="3uHU7w">
                                <node concept="2OqwBi" id="kdZzJSdxUM" role="3uHU7w">
                                  <node concept="37vLTw" id="kdZzJSduYC" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1G0B_lkGL5_" resolve="tests" />
                                  </node>
                                  <node concept="liA8E" id="kdZzJSd_Wp" role="2OqNvi">
                                    <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                                  </node>
                                </node>
                                <node concept="37vLTw" id="kdZzJSdoqw" role="3uHU7B">
                                  <ref role="3cqZAo" node="kdZzJScYqH" resolve="presentTests" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="kdZzJSdktl" role="3uHU7B">
                                <ref role="3cqZAo" node="kdZzJSbJus" resolve="noTestFacetAndTestModels" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="kdZzJSbDc5" role="3clFbw">
                          <node concept="37vLTw" id="kdZzJSbASk" role="2Oq$k0">
                            <ref role="3cqZAo" node="1G0B_lkGTVX" resolve="tm" />
                          </node>
                          <node concept="2OwXpG" id="kdZzJSbF3E" role="2OqNvi">
                            <ref role="2Oxat5" to="asz6:5tXD4tyPGnf" resolve="autoDiscovery" />
                          </node>
                        </node>
                        <node concept="9aQIb" id="kdZzJScVsi" role="9aQIa">
                          <node concept="3clFbS" id="kdZzJScVsj" role="9aQI4">
                            <node concept="3SKdUt" id="kdZzJSeB$N" role="3cqZAp">
                              <node concept="1PaTwC" id="kdZzJSeB$O" role="1aUNEU">
                                <node concept="3oM_SD" id="kdZzJSeB$P" role="1PaTwD">
                                  <property role="3oM_SC" value="explicit" />
                                </node>
                                <node concept="3oM_SD" id="kdZzJSeEFs" role="1PaTwD">
                                  <property role="3oM_SC" value="set" />
                                </node>
                                <node concept="3oM_SD" id="kdZzJSeGeD" role="1PaTwD">
                                  <property role="3oM_SC" value="of" />
                                </node>
                                <node concept="3oM_SD" id="kdZzJSeGeT" role="1PaTwD">
                                  <property role="3oM_SC" value="tests" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="kdZzJSglbT" role="3cqZAp">
                              <node concept="3clFbS" id="kdZzJSglbV" role="3clFbx">
                                <node concept="3SKdUt" id="kdZzJSgDJD" role="3cqZAp">
                                  <node concept="1PaTwC" id="kdZzJSgDJE" role="1aUNEU">
                                    <node concept="3oM_SD" id="kdZzJSgFW1" role="1PaTwD">
                                      <property role="3oM_SC" value="if" />
                                    </node>
                                    <node concept="3oM_SD" id="kdZzJSgKj_" role="1PaTwD">
                                      <property role="3oM_SC" value="anyone" />
                                    </node>
                                    <node concept="3oM_SD" id="kdZzJSgRjt" role="1PaTwD">
                                      <property role="3oM_SC" value="explicitly" />
                                    </node>
                                    <node concept="3oM_SD" id="kdZzJSgRjH" role="1PaTwD">
                                      <property role="3oM_SC" value="listed" />
                                    </node>
                                    <node concept="3oM_SD" id="kdZzJSgU8M" role="1PaTwD">
                                      <property role="3oM_SC" value="tests" />
                                    </node>
                                    <node concept="3oM_SD" id="kdZzJSh00w" role="1PaTwD">
                                      <property role="3oM_SC" value="from" />
                                    </node>
                                    <node concept="3oM_SD" id="kdZzJSh2cq" role="1PaTwD">
                                      <property role="3oM_SC" value="a" />
                                    </node>
                                    <node concept="3oM_SD" id="kdZzJSh2cr" role="1PaTwD">
                                      <property role="3oM_SC" value="module" />
                                    </node>
                                    <node concept="3oM_SD" id="kdZzJShjcM" role="1PaTwD">
                                      <property role="3oM_SC" value="that" />
                                    </node>
                                    <node concept="3oM_SD" id="kdZzJShkOf" role="1PaTwD">
                                      <property role="3oM_SC" value="doesn't" />
                                    </node>
                                    <node concept="3oM_SD" id="kdZzJShoBm" role="1PaTwD">
                                      <property role="3oM_SC" value="support" />
                                    </node>
                                    <node concept="3oM_SD" id="kdZzJShoBA" role="1PaTwD">
                                      <property role="3oM_SC" value="CL," />
                                    </node>
                                    <node concept="3oM_SD" id="kdZzJShrV$" role="1PaTwD">
                                      <property role="3oM_SC" value="it's" />
                                    </node>
                                    <node concept="3oM_SD" id="kdZzJSh_mS" role="1PaTwD">
                                      <property role="3oM_SC" value="a" />
                                    </node>
                                    <node concept="3oM_SD" id="kdZzJSh_mT" role="1PaTwD">
                                      <property role="3oM_SC" value="severe" />
                                    </node>
                                    <node concept="3oM_SD" id="kdZzJShByN" role="1PaTwD">
                                      <property role="3oM_SC" value="error." />
                                    </node>
                                    <node concept="3oM_SD" id="kdZzJSgMvw" role="1PaTwD">
                                      <property role="3oM_SC" value="" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="kdZzJSgp_C" role="3cqZAp">
                                  <node concept="2OqwBi" id="kdZzJSgp_D" role="3clFbG">
                                    <node concept="37vLTw" id="kdZzJSgp_E" role="2Oq$k0">
                                      <ref role="3cqZAo" node="1G0B_lkHLOY" resolve="myWorkerCallback" />
                                    </node>
                                    <node concept="liA8E" id="kdZzJSgp_F" role="2OqNvi">
                                      <ref role="37wK5l" to="asz6:5tXD4tyH5RB" resolve="fatal" />
                                      <node concept="2OqwBi" id="kdZzJSgp_G" role="37wK5m">
                                        <node concept="Xl_RD" id="kdZzJSgp_H" role="2Oq$k0">
                                          <property role="Xl_RC" value="Test module %s is not capable to load classes, ignored" />
                                        </node>
                                        <node concept="2cAKMz" id="kdZzJSgp_I" role="2OqNvi">
                                          <node concept="2OqwBi" id="kdZzJSgp_J" role="2cAKU6">
                                            <node concept="37vLTw" id="kdZzJSgp_K" role="2Oq$k0">
                                              <ref role="3cqZAo" node="1G0B_lkGTV5" resolve="testModule" />
                                            </node>
                                            <node concept="liA8E" id="kdZzJSgp_L" role="2OqNvi">
                                              <ref role="37wK5l" to="lui2:~SModule.getModuleName()" resolve="getModuleName" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="10Nm6u" id="kdZzJSg$fn" role="37wK5m" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3N13vt" id="kdZzJSgp_M" role="3cqZAp" />
                              </node>
                              <node concept="3fqX7Q" id="kdZzJSgnn3" role="3clFbw">
                                <node concept="2YIFZM" id="kdZzJSgnn5" role="3fr31v">
                                  <ref role="37wK5l" to="z1c3:~SModuleOperations.classesAvailableToMPS(org.jetbrains.mps.openapi.module.SModule)" resolve="classesAvailableToMPS" />
                                  <ref role="1Pybhc" to="z1c3:~SModuleOperations" resolve="SModuleOperations" />
                                  <node concept="37vLTw" id="kdZzJSgnn6" role="37wK5m">
                                    <ref role="3cqZAo" node="1G0B_lkGTV5" resolve="testModule" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="kdZzJSi67V" role="3cqZAp">
                              <node concept="3cpWsn" id="kdZzJSi67W" role="3cpWs9">
                                <property role="TrG5h" value="mpsCL" />
                                <node concept="3uibUv" id="kdZzJSi5t5" role="1tU5fm">
                                  <ref role="3uigEE" to="3qmy:~MPSModuleClassLoader" resolve="MPSModuleClassLoader" />
                                </node>
                                <node concept="2OqwBi" id="kdZzJSi67X" role="33vP2m">
                                  <node concept="37vLTw" id="kdZzJSi67Y" role="2Oq$k0">
                                    <ref role="3cqZAo" node="kdZzJShNE6" resolve="clm" />
                                  </node>
                                  <node concept="liA8E" id="kdZzJSi67Z" role="2OqNvi">
                                    <ref role="37wK5l" to="3qmy:~ClassLoaderManager.getClassLoader(org.jetbrains.mps.openapi.module.SModule)" resolve="getClassLoader" />
                                    <node concept="37vLTw" id="kdZzJSi680" role="37wK5m">
                                      <ref role="3cqZAo" node="1G0B_lkGTV5" resolve="testModule" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="1DcWWT" id="kdZzJSeZ68" role="3cqZAp">
                              <node concept="3clFbS" id="kdZzJSeZ6b" role="2LFqv$">
                                <node concept="3J1_TO" id="kdZzJSihRs" role="3cqZAp">
                                  <node concept="3uVAMA" id="kdZzJSipDf" role="1zxBo5">
                                    <node concept="XOnhg" id="kdZzJSipDg" role="1zc67B">
                                      <property role="TrG5h" value="ex" />
                                      <node concept="nSUau" id="kdZzJSipDh" role="1tU5fm">
                                        <node concept="3uibUv" id="kdZzJSirR7" role="nSUat">
                                          <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3clFbS" id="kdZzJSipDi" role="1zc67A">
                                      <node concept="3clFbF" id="kdZzJSiwiD" role="3cqZAp">
                                        <node concept="2OqwBi" id="kdZzJSiz1Y" role="3clFbG">
                                          <node concept="37vLTw" id="kdZzJSiwiC" role="2Oq$k0">
                                            <ref role="3cqZAo" node="1G0B_lkHLOY" resolve="myWorkerCallback" />
                                          </node>
                                          <node concept="liA8E" id="kdZzJSiAfY" role="2OqNvi">
                                            <ref role="37wK5l" to="asz6:5tXD4tyH5RB" resolve="fatal" />
                                            <node concept="2OqwBi" id="kdZzJSiCuJ" role="37wK5m">
                                              <node concept="Xl_RD" id="kdZzJSiCuK" role="2Oq$k0">
                                                <property role="Xl_RC" value="error building test suite for module %s" />
                                              </node>
                                              <node concept="2cAKMz" id="kdZzJSiCuL" role="2OqNvi">
                                                <node concept="2OqwBi" id="kdZzJSiCuM" role="2cAKU6">
                                                  <node concept="37vLTw" id="kdZzJSiCuN" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="1G0B_lkGTV5" resolve="testModule" />
                                                  </node>
                                                  <node concept="liA8E" id="kdZzJSiCuO" role="2OqNvi">
                                                    <ref role="37wK5l" to="lui2:~SModule.getModuleName()" resolve="getModuleName" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="37vLTw" id="kdZzJSiQYW" role="37wK5m">
                                              <ref role="3cqZAo" node="kdZzJSipDg" resolve="ex" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbS" id="kdZzJSihRu" role="1zxBo7">
                                    <node concept="3cpWs8" id="kdZzJSj90f" role="3cqZAp">
                                      <node concept="3cpWsn" id="kdZzJSj90g" role="3cpWs9">
                                        <property role="TrG5h" value="testClass" />
                                        <node concept="3uibUv" id="kdZzJSj8jo" role="1tU5fm">
                                          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                                          <node concept="3qTvmN" id="kdZzJSj8jr" role="11_B2D" />
                                        </node>
                                        <node concept="2OqwBi" id="kdZzJSj90h" role="33vP2m">
                                          <node concept="37vLTw" id="kdZzJSj90i" role="2Oq$k0">
                                            <ref role="3cqZAo" node="kdZzJSi67W" resolve="mpsCL" />
                                          </node>
                                          <node concept="liA8E" id="kdZzJSj90j" role="2OqNvi">
                                            <ref role="37wK5l" to="3qmy:~MPSModuleClassLoader.loadOwnClass(java.lang.String)" resolve="loadOwnClass" />
                                            <node concept="2OqwBi" id="kdZzJSj90k" role="37wK5m">
                                              <node concept="37vLTw" id="kdZzJSj90l" role="2Oq$k0">
                                                <ref role="3cqZAo" node="kdZzJSeZ6c" resolve="tcr" />
                                              </node>
                                              <node concept="2OwXpG" id="kdZzJSj90m" role="2OqNvi">
                                                <ref role="2Oxat5" to="asz6:5tXD4tyLyAN" resolve="qualifiedName" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3clFbJ" id="kdZzJSjlp0" role="3cqZAp">
                                      <node concept="3clFbS" id="kdZzJSjlp2" role="3clFbx">
                                        <node concept="3SKdUt" id="kdZzJSlkHy" role="3cqZAp">
                                          <node concept="1PaTwC" id="kdZzJSlkHz" role="1aUNEU">
                                            <node concept="3oM_SD" id="kdZzJSlmJu" role="1PaTwD">
                                              <property role="3oM_SC" value="XXX" />
                                            </node>
                                            <node concept="3oM_SD" id="kdZzJSlqbZ" role="1PaTwD">
                                              <property role="3oM_SC" value="same" />
                                            </node>
                                            <node concept="3oM_SD" id="kdZzJSlqc1" role="1PaTwD">
                                              <property role="3oM_SC" value="as" />
                                            </node>
                                            <node concept="3oM_SD" id="kdZzJSlqch" role="1PaTwD">
                                              <property role="3oM_SC" value="above," />
                                            </node>
                                            <node concept="3oM_SD" id="kdZzJSlsbJ" role="1PaTwD">
                                              <property role="3oM_SC" value="CL" />
                                            </node>
                                            <node concept="3oM_SD" id="kdZzJSlwJE" role="1PaTwD">
                                              <property role="3oM_SC" value="+" />
                                            </node>
                                            <node concept="3oM_SD" id="kdZzJSlyJn" role="1PaTwD">
                                              <property role="3oM_SC" value="name," />
                                            </node>
                                            <node concept="3oM_SD" id="kdZzJSlAei" role="1PaTwD">
                                              <property role="3oM_SC" value="perhaps?" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3clFbF" id="kdZzJSkVfu" role="3cqZAp">
                                          <node concept="2OqwBi" id="kdZzJSl3DW" role="3clFbG">
                                            <node concept="37vLTw" id="kdZzJSkVfs" role="2Oq$k0">
                                              <ref role="3cqZAo" node="1G0B_lkGL5_" resolve="tests" />
                                            </node>
                                            <node concept="liA8E" id="kdZzJSl7Dy" role="2OqNvi">
                                              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                                              <node concept="2YIFZM" id="kdZzJSlcRk" role="37wK5m">
                                                <ref role="37wK5l" to="s3rp:~DiscoverySelectors.selectClass(java.lang.Class)" resolve="selectClass" />
                                                <ref role="1Pybhc" to="s3rp:~DiscoverySelectors" resolve="DiscoverySelectors" />
                                                <node concept="37vLTw" id="kdZzJSlfFc" role="37wK5m">
                                                  <ref role="3cqZAo" node="kdZzJSj90g" resolve="testClass" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="2OqwBi" id="kdZzJSjxHD" role="3clFbw">
                                        <node concept="2OqwBi" id="kdZzJSjq5T" role="2Oq$k0">
                                          <node concept="37vLTw" id="kdZzJSjnFs" role="2Oq$k0">
                                            <ref role="3cqZAo" node="kdZzJSeZ6c" resolve="tcr" />
                                          </node>
                                          <node concept="2OwXpG" id="kdZzJSjt$6" role="2OqNvi">
                                            <ref role="2Oxat5" to="asz6:5tXD4tyMv4C" resolve="tests" />
                                          </node>
                                        </node>
                                        <node concept="liA8E" id="kdZzJSjA2s" role="2OqNvi">
                                          <ref role="37wK5l" to="33ny:~List.isEmpty()" resolve="isEmpty" />
                                        </node>
                                      </node>
                                      <node concept="9aQIb" id="kdZzJSjCrA" role="9aQIa">
                                        <node concept="3clFbS" id="kdZzJSjCrB" role="9aQI4">
                                          <node concept="1DcWWT" id="kdZzJSlE4a" role="3cqZAp">
                                            <node concept="3clFbS" id="kdZzJSlE4d" role="2LFqv$">
                                              <node concept="3clFbF" id="kdZzJSmkrk" role="3cqZAp">
                                                <node concept="2OqwBi" id="kdZzJSmoaK" role="3clFbG">
                                                  <node concept="37vLTw" id="kdZzJSmkri" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="1G0B_lkGL5_" resolve="tests" />
                                                  </node>
                                                  <node concept="liA8E" id="kdZzJSmtsh" role="2OqNvi">
                                                    <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                                                    <node concept="2YIFZM" id="kdZzJSmzZ2" role="37wK5m">
                                                      <ref role="37wK5l" to="s3rp:~DiscoverySelectors.selectMethod(java.lang.Class,java.lang.String)" resolve="selectMethod" />
                                                      <ref role="1Pybhc" to="s3rp:~DiscoverySelectors" resolve="DiscoverySelectors" />
                                                      <node concept="37vLTw" id="kdZzJSmBwz" role="37wK5m">
                                                        <ref role="3cqZAo" node="kdZzJSj90g" resolve="testClass" />
                                                      </node>
                                                      <node concept="2OqwBi" id="kdZzJSmI6g" role="37wK5m">
                                                        <node concept="37vLTw" id="kdZzJSmFhK" role="2Oq$k0">
                                                          <ref role="3cqZAo" node="kdZzJSlE4e" resolve="tr" />
                                                        </node>
                                                        <node concept="2OwXpG" id="kdZzJSmL66" role="2OqNvi">
                                                          <ref role="2Oxat5" to="asz6:5tXD4tyLzSY" resolve="name" />
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="3cpWsn" id="kdZzJSlE4e" role="1Duv9x">
                                              <property role="TrG5h" value="tr" />
                                              <node concept="3uibUv" id="kdZzJSlE4i" role="1tU5fm">
                                                <ref role="3uigEE" to="asz6:5tXD4tyLkb5" resolve="TestData.TestRecord" />
                                              </node>
                                            </node>
                                            <node concept="2OqwBi" id="kdZzJSlE4j" role="1DdaDG">
                                              <node concept="37vLTw" id="kdZzJSlE4k" role="2Oq$k0">
                                                <ref role="3cqZAo" node="kdZzJSeZ6c" resolve="tcr" />
                                              </node>
                                              <node concept="2OwXpG" id="kdZzJSlE4l" role="2OqNvi">
                                                <ref role="2Oxat5" to="asz6:5tXD4tyMv4C" resolve="tests" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3cpWsn" id="kdZzJSeZ6c" role="1Duv9x">
                                <property role="TrG5h" value="tcr" />
                                <node concept="3uibUv" id="kdZzJSeZ6g" role="1tU5fm">
                                  <ref role="3uigEE" to="asz6:5tXD4tyLk6m" resolve="TestData.TestContainerRecord" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="kdZzJSeZ6h" role="1DdaDG">
                                <node concept="37vLTw" id="kdZzJSeZ6i" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1G0B_lkGTVX" resolve="tm" />
                                </node>
                                <node concept="2OwXpG" id="kdZzJSeZ6j" role="2OqNvi">
                                  <ref role="2Oxat5" to="asz6:5tXD4tyMttY" resolve="testCases" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWsn" id="1G0B_lkGTVX" role="1Duv9x">
                      <property role="TrG5h" value="tm" />
                      <node concept="3uibUv" id="1G0B_lkGTVY" role="1tU5fm">
                        <ref role="3uigEE" to="asz6:5tXD4tyLk2H" resolve="TestData.ModuleRecord" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1G0B_lkGTVZ" role="1DdaDG">
                      <node concept="37vLTw" id="1G0B_lkGTW0" role="2Oq$k0">
                        <ref role="3cqZAo" node="1G0B_lkFBeL" resolve="myTestPlan" />
                      </node>
                      <node concept="2OwXpG" id="1G0B_lkGTW1" role="2OqNvi">
                        <ref role="2Oxat5" to="asz6:5tXD4tyLDFE" resolve="testModules" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1G0B_lkHcHi" role="3cqZAp">
          <node concept="37vLTw" id="1G0B_lkHfeU" role="3cqZAk">
            <ref role="3cqZAo" node="1G0B_lkGL5_" resolve="tests" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1G0B_lkFCxA" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
</model>

