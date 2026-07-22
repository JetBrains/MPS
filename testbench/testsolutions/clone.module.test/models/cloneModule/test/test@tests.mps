<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:20ab6a94-5179-4062-a795-403815374f72(CloneModule.test.test@tests)">
  <persistence version="9" />
  <languages>
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="-1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="-1" />
    <use id="9f846aef-4e4a-4a84-828e-7e83fe2697f2" name="jetbrains.mps.build.mps.testManifest" version="-1" />
  </languages>
  <imports>
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="3ju5" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.vfs(MPS.Core/)" />
    <import index="6if8" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project.validation(MPS.Core/)" />
    <import index="bd8o" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.application(MPS.IDEA/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="dsk9" ref="r:8bdc9cf5-28de-48ab-8b85-36b2d96bc635(jetbrains.mps.ide.newModuleDialogs)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="z1c4" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="83ig" ref="920eaa0e-ecca-46bc-bee7-4e5c59213dd6/java:jetbrains.mps.testbench(Testbench/)" />
    <import index="fyhk" ref="920eaa0e-ecca-46bc-bee7-4e5c59213dd6/java:jetbrains.mps(Testbench/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="ends" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.persistence(MPS.Core/)" />
    <import index="ap4t" ref="215c4c45-ba99-49f5-9ab7-4b6901a63cfd/java:jetbrains.mps.generator(MPS.Generator/)" />
    <import index="b0pz" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project.facets(MPS.Core/)" />
    <import index="rbkg" ref="49808fad-9d41-4b96-83fa-9231640f6b2b/java:org.junit.jupiter.api.extension(JUnit/)" />
    <import index="4rfc" ref="r:3cf16c72-eb63-43af-9e50-31efa02178ea(jetbrains.mps.baseLanguage.unitTest.runtime)" />
    <import index="ew0j" ref="920eaa0e-ecca-46bc-bee7-4e5c59213dd6/java:jetbrains.mps.tool.environment(Testbench/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1224071154655" name="jetbrains.mps.baseLanguage.structure.AsExpression" flags="nn" index="0kSF2">
        <child id="1224071154657" name="classifierType" index="0kSFW" />
        <child id="1224071154656" name="expression" index="0kSFX" />
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
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA">
        <property id="6468716278899126575" name="isVolatile" index="2dlcS1" />
        <property id="6468716278899125786" name="isTransient" index="2dld4O" />
      </concept>
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
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
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
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
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
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="9f846aef-4e4a-4a84-828e-7e83fe2697f2" name="jetbrains.mps.build.mps.testManifest">
      <concept id="3298469228705179778" name="jetbrains.mps.build.mps.testManifest.structure.TestModuleManifest" flags="ng" index="2UguNb" />
    </language>
    <language id="446c26eb-2b7b-4bf0-9b35-f83fa582753e" name="jetbrains.mps.lang.modelapi">
      <concept id="361130699826193249" name="jetbrains.mps.lang.modelapi.structure.ModulePointer" flags="ng" index="1dCxOk">
        <property id="1863527487546097500" name="moduleId" index="1XweGW" />
        <property id="1863527487545993577" name="moduleName" index="1XxBO9" />
      </concept>
      <concept id="361130699826193248" name="jetbrains.mps.lang.modelapi.structure.ModelPointer" flags="ng" index="1dCxOl">
        <property id="1863527487546097494" name="modelId" index="1XweGQ" />
        <child id="679099339649067980" name="name" index="1j$8Uc" />
      </concept>
      <concept id="679099339649053840" name="jetbrains.mps.lang.modelapi.structure.ModelName" flags="ng" index="1j_P7g">
        <property id="679099339649053841" name="value" index="1j_P7h" />
      </concept>
    </language>
    <language id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest">
      <concept id="7080278351417106679" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertIsNotNull" flags="nn" index="2Hmddi">
        <child id="7080278351417106681" name="expression" index="2Hmdds" />
      </concept>
      <concept id="1171931690126" name="jetbrains.mps.baseLanguage.unitTest.structure.TestMethod" flags="ig" index="3s$Bmu">
        <property id="1171931690128" name="methodName" index="3s$Bm0" />
      </concept>
      <concept id="1171931851043" name="jetbrains.mps.baseLanguage.unitTest.structure.BTestCase" flags="ig" index="3s_ewN">
        <property id="1171931851045" name="testCaseName" index="3s_ewP" />
        <child id="1171931851044" name="testMethodList" index="3s_ewO" />
        <child id="8243879142738613220" name="afterTest" index="1KhZu3" />
        <child id="8243879142738613219" name="beforeTest" index="1KhZu4" />
      </concept>
      <concept id="1171931858461" name="jetbrains.mps.baseLanguage.unitTest.structure.TestMethodList" flags="ng" index="3s_gsd">
        <child id="1171931858462" name="testMethod" index="3s_gse" />
      </concept>
      <concept id="8427750732757990717" name="jetbrains.mps.baseLanguage.unitTest.structure.BinaryAssert" flags="nn" index="3tpDYu">
        <child id="8427750732757990725" name="actual" index="3tpDZA" />
        <child id="8427750732757990724" name="expected" index="3tpDZB" />
      </concept>
      <concept id="1171978097730" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertEquals" flags="nn" index="3vlDli" />
      <concept id="1171981022339" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" flags="nn" index="3vwNmj">
        <child id="1171981057159" name="condition" index="3vwVQn" />
      </concept>
      <concept id="1171983834376" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertFalse" flags="nn" index="3vFxKo">
        <child id="1171983854940" name="condition" index="3vFALc" />
      </concept>
      <concept id="1172017222794" name="jetbrains.mps.baseLanguage.unitTest.structure.Fail" flags="nn" index="3xETmq" />
      <concept id="1172073500303" name="jetbrains.mps.baseLanguage.unitTest.structure.Message" flags="ng" index="3_1$Yv">
        <child id="1172073511101" name="message" index="3_1BAH" />
      </concept>
      <concept id="1172075514136" name="jetbrains.mps.baseLanguage.unitTest.structure.MessageHolder" flags="ngI" index="3_9gw8">
        <child id="1172075534298" name="message" index="3_9lra" />
      </concept>
      <concept id="8243879142738608185" name="jetbrains.mps.baseLanguage.unitTest.structure.BeforeTest" flags="in" index="1KhYhu" />
      <concept id="8243879142738613213" name="jetbrains.mps.baseLanguage.unitTest.structure.AfterTest" flags="in" index="1KhZuU" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1678062499342629858" name="jetbrains.mps.lang.smodel.structure.ModuleRefExpression" flags="ng" index="37shsh">
        <child id="1678062499342629861" name="moduleId" index="37shsm" />
      </concept>
      <concept id="1863527487546129879" name="jetbrains.mps.lang.smodel.structure.ModelPointerExpression" flags="ng" index="1Xw6AR">
        <child id="1863527487546132519" name="modelRef" index="1XwpL7" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="4222318806802425298" name="jetbrains.mps.lang.core.structure.SuppressErrorsAnnotation" flags="ng" index="15s5l7" />
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
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1240687580870" name="jetbrains.mps.baseLanguage.collections.structure.JoinOperation" flags="nn" index="3uJxvA">
        <child id="1240687658305" name="delimiter" index="3uJOhx" />
      </concept>
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
    </language>
  </registry>
  <node concept="3s_ewN" id="7l0SErcZhR9">
    <property role="3s_ewP" value="CloneModule" />
    <node concept="2AHcQZ" id="5CL$Hppr3SK" role="2AJF6D">
      <ref role="2AI5Lk" to="fyhk:~MPSLaunch" resolve="MPSLaunch" />
    </node>
    <node concept="2AHcQZ" id="6vgd21k3pr3" role="2AJF6D">
      <ref role="2AI5Lk" to="rbkg:~ExtendWith" resolve="ExtendWith" />
      <node concept="2B6LJw" id="6vgd21k3x8f" role="2B76xF">
        <ref role="2B6OnR" to="rbkg:~ExtendWith.value()" resolve="value" />
        <node concept="3VsKOn" id="6vgd21k3_s1" role="2B70Vg">
          <ref role="3VsUkX" to="4rfc:5gsHVKCieoX" resolve="EnvironmentAwareExtension" />
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="7l0SErcZi0H" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="PROJECT_PATH" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7l0SErcZi0B" role="1B3o_S" />
      <node concept="17QB3L" id="7l0SErcZi0F" role="1tU5fm" />
      <node concept="Xl_RD" id="7l0SErcZi2l" role="33vP2m">
        <property role="Xl_RC" value="testbench/modules/testCloneModule/" />
      </node>
    </node>
    <node concept="3Tm1VV" id="7l0SErcZhRa" role="1B3o_S" />
    <node concept="3s_gsd" id="7l0SErcZhRb" role="3s_ewO">
      <node concept="3s$Bmu" id="7l0SErcZopE" role="3s_gse">
        <property role="3s$Bm0" value="cloneXMLSolution" />
        <node concept="3cqZAl" id="7l0SErcZopF" role="3clF45" />
        <node concept="3Tm1VV" id="7l0SErcZopG" role="1B3o_S" />
        <node concept="3clFbS" id="7l0SErcZopH" role="3clF47">
          <node concept="3clFbF" id="1rpDfGKrKQq" role="3cqZAp">
            <node concept="1rXfSq" id="1rpDfGKrKQp" role="3clFbG">
              <ref role="37wK5l" node="1rpDfGKrKQm" resolve="testModule" />
              <node concept="1rXfSq" id="Po8DArawLy" role="37wK5m">
                <ref role="37wK5l" node="Po8DAr9a09" resolve="resolveSolution" />
                <node concept="37vLTw" id="Po8DArawSb" role="37wK5m">
                  <ref role="3cqZAo" node="2tcv3DWpjtd" resolve="XML" />
                </node>
              </node>
              <node concept="10M0yZ" id="1rpDfGKrKPQ" role="37wK5m">
                <ref role="1PxDUh" to="z1c3:~MPSExtentions" resolve="MPSExtentions" />
                <ref role="3cqZAo" to="z1c3:~MPSExtentions.DOT_SOLUTION" resolve="DOT_SOLUTION" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="1rpDfGKrLxZ" role="3s_gse">
        <property role="3s$Bm0" value="clonePerRootSolution" />
        <node concept="3cqZAl" id="1rpDfGKrLy0" role="3clF45" />
        <node concept="3Tm1VV" id="1rpDfGKrLy1" role="1B3o_S" />
        <node concept="3clFbS" id="1rpDfGKrLy2" role="3clF47">
          <node concept="3clFbF" id="1rpDfGKrLy3" role="3cqZAp">
            <node concept="1rXfSq" id="1rpDfGKrLy4" role="3clFbG">
              <ref role="37wK5l" node="1rpDfGKrKQm" resolve="testModule" />
              <node concept="1rXfSq" id="Po8DArawZs" role="37wK5m">
                <ref role="37wK5l" node="Po8DAr9a09" resolve="resolveSolution" />
                <node concept="37vLTw" id="Po8DArax6r" role="37wK5m">
                  <ref role="3cqZAo" node="2tcv3DWplZW" resolve="PER_ROOT" />
                </node>
              </node>
              <node concept="10M0yZ" id="1rpDfGKrOv7" role="37wK5m">
                <ref role="1PxDUh" to="z1c3:~MPSExtentions" resolve="MPSExtentions" />
                <ref role="3cqZAo" to="z1c3:~MPSExtentions.DOT_SOLUTION" resolve="DOT_SOLUTION" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="1rpDfGKrLy7" role="3s_gse">
        <property role="3s$Bm0" value="cloneBinarySolution" />
        <node concept="3cqZAl" id="1rpDfGKrLy8" role="3clF45" />
        <node concept="3Tm1VV" id="1rpDfGKrLy9" role="1B3o_S" />
        <node concept="3clFbS" id="1rpDfGKrLya" role="3clF47">
          <node concept="3clFbF" id="1rpDfGKrLyb" role="3cqZAp">
            <node concept="1rXfSq" id="1rpDfGKrLyc" role="3clFbG">
              <ref role="37wK5l" node="1rpDfGKrKQm" resolve="testModule" />
              <node concept="1rXfSq" id="Po8DArazKx" role="37wK5m">
                <ref role="37wK5l" node="Po8DAr9a09" resolve="resolveSolution" />
                <node concept="37vLTw" id="Po8DArazRC" role="37wK5m">
                  <ref role="3cqZAo" node="2tcv3DWpozs" resolve="BINARY" />
                </node>
              </node>
              <node concept="10M0yZ" id="1rpDfGKrOvq" role="37wK5m">
                <ref role="3cqZAo" to="z1c3:~MPSExtentions.DOT_SOLUTION" resolve="DOT_SOLUTION" />
                <ref role="1PxDUh" to="z1c3:~MPSExtentions" resolve="MPSExtentions" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="1xOvOib5BuO" role="3s_gse">
        <property role="3s$Bm0" value="cloneFacets" />
        <node concept="3cqZAl" id="1xOvOib5BuP" role="3clF45" />
        <node concept="3Tm1VV" id="1xOvOib5BuQ" role="1B3o_S" />
        <node concept="3clFbS" id="1xOvOib5BuR" role="3clF47">
          <node concept="3cpWs8" id="1xOvOib5Cak" role="3cqZAp">
            <node concept="3cpWsn" id="1xOvOib5Cal" role="3cpWs9">
              <property role="TrG5h" value="copyFacetsModule" />
              <node concept="3uibUv" id="1xOvOib5KMg" role="1tU5fm">
                <ref role="3uigEE" to="z1c3:~Solution" resolve="Solution" />
              </node>
              <node concept="0kSF2" id="1xOvOib5KDI" role="33vP2m">
                <node concept="3uibUv" id="1xOvOib5KT7" role="0kSFW">
                  <ref role="3uigEE" to="z1c3:~Solution" resolve="Solution" />
                </node>
                <node concept="1rXfSq" id="1xOvOib5Cam" role="0kSFX">
                  <ref role="37wK5l" node="1rpDfGKrKQm" resolve="testModule" />
                  <node concept="1rXfSq" id="1xOvOib5Can" role="37wK5m">
                    <ref role="37wK5l" node="Po8DAr9a09" resolve="resolveSolution" />
                    <node concept="37vLTw" id="1xOvOib5Cao" role="37wK5m">
                      <ref role="3cqZAo" node="1xOvOib5sI4" resolve="FACETS" />
                    </node>
                  </node>
                  <node concept="10M0yZ" id="1xOvOib5Cap" role="37wK5m">
                    <ref role="1PxDUh" to="z1c3:~MPSExtentions" resolve="MPSExtentions" />
                    <ref role="3cqZAo" to="z1c3:~MPSExtentions.DOT_SOLUTION" resolve="DOT_SOLUTION" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1xOvOib5KZU" role="3cqZAp" />
          <node concept="3cpWs8" id="1xOvOib67o8" role="3cqZAp">
            <node concept="3cpWsn" id="1xOvOib67o9" role="3cpWs9">
              <property role="TrG5h" value="jmf" />
              <node concept="3uibUv" id="1xOvOib67o5" role="1tU5fm">
                <ref role="3uigEE" to="b0pz:~JavaModuleFacet" resolve="JavaModuleFacet" />
              </node>
              <node concept="2OqwBi" id="1xOvOib67oa" role="33vP2m">
                <node concept="37vLTw" id="1xOvOib67ob" role="2Oq$k0">
                  <ref role="3cqZAo" node="1xOvOib5Cal" resolve="copyFacetsModule" />
                </node>
                <node concept="liA8E" id="1xOvOib67oc" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~AbstractModule.getFacet(java.lang.Class)" resolve="getFacet" />
                  <node concept="3VsKOn" id="1xOvOib67od" role="37wK5m">
                    <ref role="3VsUkX" to="b0pz:~JavaModuleFacet" resolve="JavaModuleFacet" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2Hmddi" id="1xOvOib6c7Z" role="3cqZAp">
            <node concept="37vLTw" id="1xOvOib6dVL" role="2Hmdds">
              <ref role="3cqZAo" node="1xOvOib67o9" resolve="jmf" />
            </node>
          </node>
          <node concept="3vlDli" id="1xOvOib6jZt" role="3cqZAp">
            <node concept="2OqwBi" id="6IFtpuMk5Me" role="3tpDZA">
              <node concept="37vLTw" id="6IFtpuMk5AV" role="2Oq$k0">
                <ref role="3cqZAo" node="1xOvOib67o9" resolve="jmf" />
              </node>
              <node concept="liA8E" id="6IFtpuMk7Ve" role="2OqNvi">
                <ref role="37wK5l" to="b0pz:~JavaModuleFacet.getCompile()" resolve="getCompile" />
              </node>
            </node>
            <node concept="Rm8GO" id="2Z81NTQQZTj" role="3tpDZB">
              <ref role="Rm8GQ" to="b0pz:~JavaModuleFacet$Compile.MPS" resolve="MPS" />
              <ref role="1Px2BO" to="b0pz:~JavaModuleFacet$Compile" resolve="JavaModuleFacet.Compile" />
            </node>
          </node>
          <node concept="3SKdUt" id="2Z81NTQR0Xc" role="3cqZAp">
            <node concept="1PaTwC" id="2Z81NTQR0Xd" role="1aUNEU">
              <node concept="3oM_SD" id="2Z81NTQR17l" role="1PaTwD">
                <property role="3oM_SC" value="module" />
              </node>
              <node concept="3oM_SD" id="2Z81NTQR17n" role="1PaTwD">
                <property role="3oM_SC" value="used" />
              </node>
              <node concept="3oM_SD" id="2Z81NTQR17q" role="1PaTwD">
                <property role="3oM_SC" value="to" />
              </node>
              <node concept="3oM_SD" id="2Z81NTQR17u" role="1PaTwD">
                <property role="3oM_SC" value="have" />
              </node>
              <node concept="3oM_SD" id="2Z81NTQR17z" role="1PaTwD">
                <property role="3oM_SC" value="ideaPlugin" />
              </node>
              <node concept="3oM_SD" id="2Z81NTQR17D" role="1PaTwD">
                <property role="3oM_SC" value="facet," />
              </node>
              <node concept="3oM_SD" id="2Z81NTQR17K" role="1PaTwD">
                <property role="3oM_SC" value="which" />
              </node>
              <node concept="3oM_SD" id="2Z81NTQR17S" role="1PaTwD">
                <property role="3oM_SC" value="means" />
              </node>
              <node concept="3oM_SD" id="2Z81NTQR181" role="1PaTwD">
                <property role="3oM_SC" value="it" />
              </node>
              <node concept="3oM_SD" id="2Z81NTQR18b" role="1PaTwD">
                <property role="3oM_SC" value="got" />
              </node>
              <node concept="3oM_SD" id="2Z81NTQR18m" role="1PaTwD">
                <property role="3oM_SC" value="ManagedByContributor" />
              </node>
              <node concept="3oM_SD" id="2Z81NTQR18X" role="1PaTwD">
                <property role="3oM_SC" value="during" />
              </node>
              <node concept="3oM_SD" id="2Z81NTQR19a" role="1PaTwD">
                <property role="3oM_SC" value="migration" />
              </node>
            </node>
          </node>
          <node concept="3vlDli" id="2Z81NTQR02u" role="3cqZAp">
            <node concept="2OqwBi" id="2Z81NTQR02v" role="3tpDZA">
              <node concept="37vLTw" id="2Z81NTQR02w" role="2Oq$k0">
                <ref role="3cqZAo" node="1xOvOib67o9" resolve="jmf" />
              </node>
              <node concept="liA8E" id="2Z81NTQR02x" role="2OqNvi">
                <ref role="37wK5l" to="b0pz:~JavaModuleFacet.getLoadClasses()" resolve="getLoadClasses" />
              </node>
            </node>
            <node concept="Rm8GO" id="2Z81NTQR0Hf" role="3tpDZB">
              <ref role="Rm8GQ" to="b0pz:~JavaModuleFacet$LoadClasses.ManagedByContributor" resolve="ManagedByContributor" />
              <ref role="1Px2BO" to="b0pz:~JavaModuleFacet$LoadClasses" resolve="JavaModuleFacet.LoadClasses" />
            </node>
          </node>
          <node concept="3clFbH" id="6IFtpuMkaDE" role="3cqZAp" />
          <node concept="3cpWs8" id="6IFtpuMkiNg" role="3cqZAp">
            <node concept="3cpWsn" id="6IFtpuMkiNh" role="3cpWs9">
              <property role="TrG5h" value="customGenerationModuleFacet" />
              <node concept="3uibUv" id="6IFtpuMkiNi" role="1tU5fm">
                <ref role="3uigEE" to="ap4t:~CustomGenerationModuleFacet" resolve="CustomGenerationModuleFacet" />
              </node>
              <node concept="2OqwBi" id="6IFtpuMklb4" role="33vP2m">
                <node concept="37vLTw" id="6IFtpuMkkUb" role="2Oq$k0">
                  <ref role="3cqZAo" node="1xOvOib5Cal" resolve="copyFacetsModule" />
                </node>
                <node concept="liA8E" id="6IFtpuMkqUu" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~AbstractModule.getFacet(java.lang.Class)" resolve="getFacet" />
                  <node concept="3VsKOn" id="6IFtpuMkvOi" role="37wK5m">
                    <ref role="3VsUkX" to="ap4t:~CustomGenerationModuleFacet" resolve="CustomGenerationModuleFacet" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2Hmddi" id="6IFtpuMkHq$" role="3cqZAp">
            <node concept="37vLTw" id="6IFtpuMkJ8K" role="2Hmdds">
              <ref role="3cqZAo" node="6IFtpuMkiNh" resolve="customGenerationModuleFacet" />
            </node>
          </node>
          <node concept="3SKdUt" id="6IFtpuMl9H2" role="3cqZAp">
            <node concept="1PaTwC" id="ATZLwXopPZ" role="1aUNEU">
              <node concept="3oM_SD" id="ATZLwXopQ0" role="1PaTwD">
                <property role="3oM_SC" value="TODO" />
              </node>
              <node concept="3oM_SD" id="ATZLwXopQ1" role="1PaTwD">
                <property role="3oM_SC" value="Current" />
              </node>
              <node concept="3oM_SD" id="ATZLwXopQ2" role="1PaTwD">
                <property role="3oM_SC" value="behavior" />
              </node>
              <node concept="3oM_SD" id="ATZLwXopQ3" role="1PaTwD">
                <property role="3oM_SC" value="is" />
              </node>
              <node concept="3oM_SD" id="ATZLwXopQ4" role="1PaTwD">
                <property role="3oM_SC" value="that" />
              </node>
              <node concept="3oM_SD" id="ATZLwXopQ5" role="1PaTwD">
                <property role="3oM_SC" value="reference" />
              </node>
              <node concept="3oM_SD" id="ATZLwXopQ6" role="1PaTwD">
                <property role="3oM_SC" value="in" />
              </node>
              <node concept="3oM_SD" id="ATZLwXopQ7" role="1PaTwD">
                <property role="3oM_SC" value="facets" />
              </node>
              <node concept="3oM_SD" id="ATZLwXopQ8" role="1PaTwD">
                <property role="3oM_SC" value="is" />
              </node>
              <node concept="3oM_SD" id="ATZLwXopQ9" role="1PaTwD">
                <property role="3oM_SC" value="not" />
              </node>
              <node concept="3oM_SD" id="ATZLwXopQa" role="1PaTwD">
                <property role="3oM_SC" value="updated" />
              </node>
              <node concept="3oM_SD" id="ATZLwXopQb" role="1PaTwD">
                <property role="3oM_SC" value="in" />
              </node>
              <node concept="3oM_SD" id="ATZLwXopQc" role="1PaTwD">
                <property role="3oM_SC" value="module" />
              </node>
              <node concept="3oM_SD" id="ATZLwXopQd" role="1PaTwD">
                <property role="3oM_SC" value="clone" />
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="6IFtpuMlkuC" role="3cqZAp">
            <node concept="1PaTwC" id="ATZLwXopQe" role="1aUNEU">
              <node concept="3oM_SD" id="ATZLwXopQf" role="1PaTwD">
                <property role="3oM_SC" value="TODO" />
              </node>
              <node concept="3oM_SD" id="ATZLwXopQg" role="1PaTwD">
                <property role="3oM_SC" value="Fix" />
              </node>
              <node concept="3oM_SD" id="ATZLwXopQh" role="1PaTwD">
                <property role="3oM_SC" value="this" />
              </node>
              <node concept="3oM_SD" id="ATZLwXopQi" role="1PaTwD">
                <property role="3oM_SC" value="test" />
              </node>
              <node concept="3oM_SD" id="ATZLwXopQj" role="1PaTwD">
                <property role="3oM_SC" value="when" />
              </node>
              <node concept="3oM_SD" id="ATZLwXopQk" role="1PaTwD">
                <property role="3oM_SC" value="facets" />
              </node>
              <node concept="3oM_SD" id="ATZLwXopQl" role="1PaTwD">
                <property role="3oM_SC" value="copying" />
              </node>
              <node concept="3oM_SD" id="ATZLwXopQm" role="1PaTwD">
                <property role="3oM_SC" value="become" />
              </node>
              <node concept="3oM_SD" id="ATZLwXopQn" role="1PaTwD">
                <property role="3oM_SC" value="done" />
              </node>
              <node concept="3oM_SD" id="ATZLwXopQo" role="1PaTwD">
                <property role="3oM_SC" value="right" />
              </node>
            </node>
          </node>
          <node concept="3vlDli" id="6IFtpuMl0rW" role="3cqZAp">
            <node concept="1Xw6AR" id="6IFtpuMl2ww" role="3tpDZB">
              <node concept="1dCxOl" id="6IFtpuMl652" role="1XwpL7">
                <property role="1XweGQ" value="r:785f2a6c-c64a-4974-9501-91ce4789a01c" />
                <node concept="1j_P7g" id="6IFtpuMl653" role="1j$8Uc">
                  <property role="1j_P7h" value="FACETS.genplan@genplan" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="6IFtpuMlCoa" role="3tpDZA">
              <node concept="37vLTw" id="6IFtpuMlCaB" role="2Oq$k0">
                <ref role="3cqZAo" node="6IFtpuMkiNh" resolve="customGenerationModuleFacet" />
              </node>
              <node concept="liA8E" id="6IFtpuMlENB" role="2OqNvi">
                <ref role="37wK5l" to="ap4t:~CustomGenerationModuleFacet.getPlanModelReference()" resolve="getPlanModelReference" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="7l0SErcZoBR" role="3s_gse">
        <property role="3s$Bm0" value="cloneLanguage" />
        <node concept="3cqZAl" id="7l0SErcZoBS" role="3clF45" />
        <node concept="3Tm1VV" id="7l0SErcZoBT" role="1B3o_S" />
        <node concept="3clFbS" id="7l0SErcZoBU" role="3clF47">
          <node concept="3clFbF" id="1rpDfGKs7Sq" role="3cqZAp">
            <node concept="1rXfSq" id="1rpDfGKs7Sp" role="3clFbG">
              <ref role="37wK5l" node="1rpDfGKrKQm" resolve="testModule" />
              <node concept="1rXfSq" id="Po8DAra_hi" role="37wK5m">
                <ref role="37wK5l" node="Po8DAra8uy" resolve="resolveLanguage" />
                <node concept="37vLTw" id="Po8DAra_ox" role="37wK5m">
                  <ref role="3cqZAo" node="2tcv3DWpplp" resolve="TEST_LANG" />
                </node>
              </node>
              <node concept="10M0yZ" id="1rpDfGKs89J" role="37wK5m">
                <ref role="1PxDUh" to="z1c3:~MPSExtentions" resolve="MPSExtentions" />
                <ref role="3cqZAo" to="z1c3:~MPSExtentions.DOT_LANGUAGE" resolve="DOT_LANGUAGE" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="Po8DAr8baA" role="3s_gse">
        <property role="3s$Bm0" value="cloneLanguageWithAccessoryModels" />
        <node concept="3cqZAl" id="Po8DAr8baB" role="3clF45" />
        <node concept="3Tm1VV" id="Po8DAr8baC" role="1B3o_S" />
        <node concept="3clFbS" id="Po8DAr8baD" role="3clF47">
          <node concept="3cpWs8" id="Po8DAraB6r" role="3cqZAp">
            <node concept="3cpWsn" id="Po8DAraB6s" role="3cpWs9">
              <property role="TrG5h" value="originalLang" />
              <node concept="3uibUv" id="Po8DAraB6t" role="1tU5fm">
                <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
              </node>
              <node concept="1rXfSq" id="Po8DAraCuV" role="33vP2m">
                <ref role="37wK5l" node="Po8DAra8uy" resolve="resolveLanguage" />
                <node concept="37vLTw" id="Po8DAraCwv" role="37wK5m">
                  <ref role="3cqZAo" node="2tcv3DWprSH" resolve="TEST_LANG_ACCESORIES" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="Po8DAra_Cn" role="3cqZAp" />
          <node concept="3cpWs8" id="Po8DAr8F3t" role="3cqZAp">
            <node concept="3cpWsn" id="Po8DAr8F3u" role="3cpWs9">
              <property role="TrG5h" value="module" />
              <node concept="3uibUv" id="Po8DAr8F3v" role="1tU5fm">
                <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
              </node>
              <node concept="1rXfSq" id="Po8DAr8cnR" role="33vP2m">
                <ref role="37wK5l" node="1rpDfGKrKQm" resolve="testModule" />
                <node concept="37vLTw" id="Po8DAraFdx" role="37wK5m">
                  <ref role="3cqZAo" node="Po8DAraB6s" resolve="originalLang" />
                </node>
                <node concept="10M0yZ" id="Po8DAr8f3K" role="37wK5m">
                  <ref role="1PxDUh" to="z1c3:~MPSExtentions" resolve="MPSExtentions" />
                  <ref role="3cqZAo" to="z1c3:~MPSExtentions.DOT_LANGUAGE" resolve="DOT_LANGUAGE" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vwNmj" id="Po8DAr8IEJ" role="3cqZAp">
            <node concept="2ZW3vV" id="Po8DAr8KH3" role="3vwVQn">
              <node concept="3uibUv" id="Po8DAr8KXA" role="2ZW6by">
                <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
              </node>
              <node concept="37vLTw" id="Po8DAr8JNS" role="2ZW6bz">
                <ref role="3cqZAo" node="Po8DAr8F3u" resolve="module" />
              </node>
            </node>
            <node concept="3_1$Yv" id="Po8DArbd_O" role="3_9lra">
              <node concept="Xl_RD" id="Po8DArbeVA" role="3_1BAH">
                <property role="Xl_RC" value="Language clone is not a language" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="Po8DAr8NgJ" role="3cqZAp">
            <node concept="3cpWsn" id="Po8DAr8NgK" role="3cpWs9">
              <property role="TrG5h" value="clonedLang" />
              <node concept="3uibUv" id="Po8DAr8NgL" role="1tU5fm">
                <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
              </node>
              <node concept="0kSF2" id="Po8DAr8Pba" role="33vP2m">
                <node concept="3uibUv" id="Po8DAr8Pbd" role="0kSFW">
                  <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
                </node>
                <node concept="37vLTw" id="Po8DAr8OrN" role="0kSFX">
                  <ref role="3cqZAo" node="Po8DAr8F3u" resolve="module" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="Po8DAr93jH" role="3cqZAp" />
          <node concept="3cpWs8" id="Po8DAraIjR" role="3cqZAp">
            <node concept="3cpWsn" id="Po8DAraIjU" role="3cpWs9">
              <property role="TrG5h" value="originalAccesoryModels" />
              <property role="3TUv4t" value="false" />
              <node concept="3uibUv" id="Po8DAraO5v" role="1tU5fm">
                <ref role="3uigEE" to="33ny:~List" resolve="List" />
                <node concept="3uibUv" id="Po8DAraPNq" role="11_B2D">
                  <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="Po8DAraSxm" role="3cqZAp">
            <node concept="3cpWsn" id="Po8DAraSxs" role="3cpWs9">
              <property role="TrG5h" value="clonedAccesoryModels" />
              <property role="3TUv4t" value="false" />
              <node concept="3uibUv" id="Po8DAraSxu" role="1tU5fm">
                <ref role="3uigEE" to="33ny:~List" resolve="List" />
                <node concept="3uibUv" id="Po8DAraTXy" role="11_B2D">
                  <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4aJqNTb6rtq" role="3cqZAp">
            <node concept="1rXfSq" id="4aJqNTb6rto" role="3clFbG">
              <ref role="37wK5l" node="2_jX3OnKGFn" resolve="executeUnderLock" />
              <node concept="1bVj0M" id="4aJqNTb6rNO" role="37wK5m">
                <node concept="3clFbS" id="4aJqNTb6rNP" role="1bW5cS">
                  <node concept="3clFbF" id="4aJqNTb6jJu" role="3cqZAp">
                    <node concept="37vLTI" id="4aJqNTb6jJw" role="3clFbG">
                      <node concept="2OqwBi" id="Po8DAraKdF" role="37vLTx">
                        <node concept="37vLTw" id="Po8DAraJPh" role="2Oq$k0">
                          <ref role="3cqZAo" node="Po8DAraB6s" resolve="originalLang" />
                        </node>
                        <node concept="liA8E" id="Po8DAraLXm" role="2OqNvi">
                          <ref role="37wK5l" to="w1kc:~Language.getAccessoryModels()" resolve="getAccessoryModels" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="4aJqNTb6jJ$" role="37vLTJ">
                        <ref role="3cqZAo" node="Po8DAraIjU" resolve="originalAccesoryModels" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="4aJqNTb6l$6" role="3cqZAp">
                    <node concept="37vLTI" id="4aJqNTb6l$8" role="3clFbG">
                      <node concept="2OqwBi" id="Po8DAraVBA" role="37vLTx">
                        <node concept="37vLTw" id="Po8DAraVkV" role="2Oq$k0">
                          <ref role="3cqZAo" node="Po8DAr8NgK" resolve="clonedLang" />
                        </node>
                        <node concept="liA8E" id="Po8DAraXQ8" role="2OqNvi">
                          <ref role="37wK5l" to="w1kc:~Language.getAccessoryModels()" resolve="getAccessoryModels" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="4aJqNTb6l$c" role="37vLTJ">
                        <ref role="3cqZAo" node="Po8DAraSxs" resolve="clonedAccesoryModels" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3vlDli" id="Po8DArb1ks" role="3cqZAp">
            <node concept="2OqwBi" id="Po8DArb3ap" role="3tpDZB">
              <node concept="37vLTw" id="Po8DArb2Lf" role="2Oq$k0">
                <ref role="3cqZAo" node="Po8DAraIjU" resolve="originalAccesoryModels" />
              </node>
              <node concept="liA8E" id="Po8DArb5Hc" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
              </node>
            </node>
            <node concept="2OqwBi" id="Po8DArb8TO" role="3tpDZA">
              <node concept="37vLTw" id="Po8DArb8w0" role="2Oq$k0">
                <ref role="3cqZAo" node="Po8DAraSxs" resolve="clonedAccesoryModels" />
              </node>
              <node concept="liA8E" id="Po8DArbbuT" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
              </node>
            </node>
            <node concept="3_1$Yv" id="Po8DArbuZB" role="3_9lra">
              <node concept="Xl_RD" id="Po8DArbwpq" role="3_1BAH">
                <property role="Xl_RC" value="Different count of accessory models" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="Po8DArbzCJ" role="3cqZAp">
            <node concept="3cpWsn" id="Po8DArbzCM" role="3cpWs9">
              <property role="TrG5h" value="size" />
              <node concept="10Oyi0" id="Po8DArbzCH" role="1tU5fm" />
              <node concept="2OqwBi" id="Po8DArb_FD" role="33vP2m">
                <node concept="37vLTw" id="Po8DArb_aQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="Po8DAraIjU" resolve="originalAccesoryModels" />
                </node>
                <node concept="liA8E" id="Po8DArbChE" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1Dw8fO" id="Po8DArbFk8" role="3cqZAp">
            <node concept="3clFbS" id="Po8DArbFka" role="2LFqv$">
              <node concept="3cpWs8" id="4aJqNTb6f6W" role="3cqZAp">
                <node concept="3cpWsn" id="4aJqNTb6f6X" role="3cpWs9">
                  <property role="TrG5h" value="originalAccesoryModel" />
                  <node concept="3uibUv" id="4aJqNTb6f6_" role="1tU5fm">
                    <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                  </node>
                  <node concept="2OqwBi" id="4aJqNTb6f6Y" role="33vP2m">
                    <node concept="37vLTw" id="4aJqNTb6f6Z" role="2Oq$k0">
                      <ref role="3cqZAo" node="Po8DAraIjU" resolve="originalAccesoryModels" />
                    </node>
                    <node concept="liA8E" id="4aJqNTb6f70" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                      <node concept="37vLTw" id="4aJqNTb6f71" role="37wK5m">
                        <ref role="3cqZAo" node="Po8DArbFkb" resolve="i" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="4aJqNTb6hm0" role="3cqZAp">
                <node concept="3cpWsn" id="4aJqNTb6hm1" role="3cpWs9">
                  <property role="TrG5h" value="clonedAccesoryModel" />
                  <node concept="3uibUv" id="4aJqNTb6hlV" role="1tU5fm">
                    <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                  </node>
                  <node concept="2OqwBi" id="4aJqNTb6hm2" role="33vP2m">
                    <node concept="37vLTw" id="4aJqNTb6hm3" role="2Oq$k0">
                      <ref role="3cqZAo" node="Po8DAraSxs" resolve="clonedAccesoryModels" />
                    </node>
                    <node concept="liA8E" id="4aJqNTb6hm4" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                      <node concept="37vLTw" id="4aJqNTb6hm5" role="37wK5m">
                        <ref role="3cqZAo" node="Po8DArbFkb" resolve="i" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3vFxKo" id="Po8DArbKwe" role="3cqZAp">
                <node concept="2OqwBi" id="Po8DArbONT" role="3vFALc">
                  <node concept="37vLTw" id="4aJqNTb6f72" role="2Oq$k0">
                    <ref role="3cqZAo" node="4aJqNTb6f6X" resolve="originalAccesoryModel" />
                  </node>
                  <node concept="liA8E" id="Po8DArbUV1" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                    <node concept="37vLTw" id="4aJqNTb6hm6" role="37wK5m">
                      <ref role="3cqZAo" node="4aJqNTb6hm1" resolve="clonedAccesoryModel" />
                    </node>
                  </node>
                </node>
                <node concept="3_1$Yv" id="Po8DArc10k" role="3_9lra">
                  <node concept="Xl_RD" id="Po8DArc2x4" role="3_1BAH">
                    <property role="Xl_RC" value="Same accessory models" />
                  </node>
                </node>
              </node>
              <node concept="3vFxKo" id="Po8DArc2yh" role="3cqZAp">
                <node concept="2OqwBi" id="Po8DArc2yi" role="3vFALc">
                  <node concept="2OqwBi" id="Po8DArc553" role="2Oq$k0">
                    <node concept="37vLTw" id="4aJqNTb6f73" role="2Oq$k0">
                      <ref role="3cqZAo" node="4aJqNTb6f6X" resolve="originalAccesoryModel" />
                    </node>
                    <node concept="liA8E" id="Po8DArc7oo" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.getReference()" resolve="getReference" />
                    </node>
                  </node>
                  <node concept="liA8E" id="Po8DArc2yn" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                    <node concept="2OqwBi" id="Po8DArc9be" role="37wK5m">
                      <node concept="37vLTw" id="4aJqNTb6hm7" role="2Oq$k0">
                        <ref role="3cqZAo" node="4aJqNTb6hm1" resolve="clonedAccesoryModel" />
                      </node>
                      <node concept="liA8E" id="Po8DArcdAn" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SModel.getReference()" resolve="getReference" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3_1$Yv" id="Po8DArc2ys" role="3_9lra">
                  <node concept="Xl_RD" id="Po8DArc2yt" role="3_1BAH">
                    <property role="Xl_RC" value="Same accessory model references" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="Po8DArbFkb" role="1Duv9x">
              <property role="TrG5h" value="i" />
              <node concept="10Oyi0" id="Po8DArbFyo" role="1tU5fm" />
              <node concept="3cmrfG" id="Po8DArbFzv" role="33vP2m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
            <node concept="3eOVzh" id="Po8DArbG$R" role="1Dwp0S">
              <node concept="37vLTw" id="Po8DArbHWH" role="3uHU7w">
                <ref role="3cqZAo" node="Po8DArbzCM" resolve="size" />
              </node>
              <node concept="37vLTw" id="Po8DArbF$5" role="3uHU7B">
                <ref role="3cqZAo" node="Po8DArbFkb" resolve="i" />
              </node>
            </node>
            <node concept="3uNrnE" id="Po8DArbIWv" role="1Dwrff">
              <node concept="37vLTw" id="Po8DArbIWx" role="2$L3a6">
                <ref role="3cqZAo" node="Po8DArbFkb" resolve="i" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="1rpDfGKrJ9j" role="jymVt">
      <property role="TrG5h" value="SUFFIX" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="1rpDfGKrJ96" role="1tU5fm" />
      <node concept="3Tm6S6" id="1rpDfGKrJ95" role="1B3o_S" />
      <node concept="Xl_RD" id="1rpDfGKrJ97" role="33vP2m">
        <property role="Xl_RC" value="_testclone" />
      </node>
    </node>
    <node concept="312cEg" id="2_jX3OnHZgc" role="jymVt">
      <property role="TrG5h" value="clonedModulesDirectory" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="eg7rD" value="false" />
      <node concept="3uibUv" id="2_jX3OnHZgg" role="1tU5fm">
        <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
      </node>
      <node concept="3Tm6S6" id="2_jX3OnHZgf" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="7l0SErcZkaN" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="project" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="7l0SErcZkaz" role="1B3o_S" />
      <node concept="3uibUv" id="2Mi1qAhXUU" role="1tU5fm">
        <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
      </node>
    </node>
    <node concept="2tJIrI" id="1xOvOib5$jT" role="jymVt" />
    <node concept="Wx3nA" id="2tcv3DWpjtd" role="jymVt">
      <property role="TrG5h" value="XML" />
      <property role="2dlcS1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="2dld4O" value="false" />
      <node concept="3uibUv" id="2tcv3DWpjtg" role="1tU5fm">
        <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
      </node>
      <node concept="37shsh" id="2tcv3DWpjth" role="33vP2m">
        <node concept="1dCxOk" id="5ZqXG2n7xKW" role="37shsm">
          <property role="1XxBO9" value="XML" />
          <property role="1XweGW" value="04399201-cb79-4edc-8d1a-e2b946892642" />
        </node>
      </node>
      <node concept="3Tm6S6" id="2tcv3DWpjtf" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="2tcv3DWplZW" role="jymVt">
      <property role="TrG5h" value="PER_ROOT" />
      <property role="2dlcS1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="2dld4O" value="false" />
      <node concept="3uibUv" id="2tcv3DWplZZ" role="1tU5fm">
        <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
      </node>
      <node concept="37shsh" id="2tcv3DWpm00" role="33vP2m">
        <node concept="1dCxOk" id="5ZqXG2n7xKX" role="37shsm">
          <property role="1XxBO9" value="PER_ROOT" />
          <property role="1XweGW" value="1b06eede-ff4f-40f3-92e8-3cf27f8127bd" />
        </node>
      </node>
      <node concept="3Tm6S6" id="2tcv3DWplZY" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="2tcv3DWpozs" role="jymVt">
      <property role="TrG5h" value="BINARY" />
      <property role="2dlcS1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="2dld4O" value="false" />
      <node concept="3uibUv" id="2tcv3DWpozv" role="1tU5fm">
        <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
      </node>
      <node concept="37shsh" id="2tcv3DWpozw" role="33vP2m">
        <node concept="1dCxOk" id="5ZqXG2n7xKY" role="37shsm">
          <property role="1XxBO9" value="BINARY" />
          <property role="1XweGW" value="6c080adc-7c51-4b56-a8e2-17397071f3cc" />
        </node>
      </node>
      <node concept="3Tm6S6" id="2tcv3DWpozu" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="1xOvOib5sI4" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="FACETS" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1xOvOib5keJ" role="1B3o_S" />
      <node concept="3uibUv" id="1xOvOib5qmx" role="1tU5fm">
        <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
      </node>
      <node concept="37shsh" id="1xOvOib5vkO" role="33vP2m">
        <node concept="1dCxOk" id="5ZqXG2n7xKZ" role="37shsm">
          <property role="1XxBO9" value="FACETS" />
          <property role="1XweGW" value="7ce8a6e5-ae18-4e78-8ec6-bb6474929f4f" />
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="2tcv3DWpplp" role="jymVt">
      <property role="TrG5h" value="TEST_LANG" />
      <property role="2dlcS1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="2dld4O" value="false" />
      <node concept="3uibUv" id="2tcv3DWppls" role="1tU5fm">
        <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
      </node>
      <node concept="37shsh" id="2tcv3DWpplt" role="33vP2m">
        <node concept="1dCxOk" id="5ZqXG2n7xL0" role="37shsm">
          <property role="1XxBO9" value="TestLanguage" />
          <property role="1XweGW" value="d1ea9b08-060f-4f7d-83b7-0f97f71cbbf7" />
        </node>
      </node>
      <node concept="3Tm6S6" id="2tcv3DWpplr" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="2tcv3DWprSH" role="jymVt">
      <property role="TrG5h" value="TEST_LANG_ACCESORIES" />
      <property role="2dlcS1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="2dld4O" value="false" />
      <node concept="3uibUv" id="2tcv3DWprSK" role="1tU5fm">
        <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
      </node>
      <node concept="37shsh" id="2tcv3DWprSL" role="33vP2m">
        <node concept="1dCxOk" id="5ZqXG2n7xL1" role="37shsm">
          <property role="1XxBO9" value="TestLanguage_ACCESORIES" />
          <property role="1XweGW" value="eee56556-94d4-4d71-a8ea-0e2403133b8d" />
        </node>
      </node>
      <node concept="3Tm6S6" id="2tcv3DWprSJ" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2Q$HO4B47BT" role="jymVt" />
    <node concept="2YIFZL" id="2_jX3OnIRII" role="jymVt">
      <property role="TrG5h" value="checkModule" />
      <node concept="3cqZAl" id="2_jX3OnIRIK" role="3clF45" />
      <node concept="3Tm1VV" id="2_jX3OnIRIL" role="1B3o_S" />
      <node concept="3clFbS" id="2_jX3OnIRIM" role="3clF47">
        <node concept="3cpWs8" id="2_jX3OnIRVI" role="3cqZAp">
          <node concept="3cpWsn" id="2_jX3OnIRVJ" role="3cpWs9">
            <property role="TrG5h" value="processor" />
            <node concept="3uibUv" id="2_jX3OnIRVK" role="1tU5fm">
              <ref role="3uigEE" to="6if8:~MessageCollectProcessor" resolve="MessageCollectProcessor" />
              <node concept="3uibUv" id="KgjTrBn68S" role="11_B2D">
                <ref role="3uigEE" to="6if8:~ModuleValidationProblem" resolve="ModuleValidationProblem" />
              </node>
            </node>
            <node concept="2ShNRf" id="2_jX3OnIRVL" role="33vP2m">
              <node concept="1pGfFk" id="2_jX3OnIRVM" role="2ShVmc">
                <ref role="37wK5l" to="6if8:~MessageCollectProcessor.&lt;init&gt;()" resolve="MessageCollectProcessor" />
                <node concept="3uibUv" id="KgjTrBn6DI" role="1pMfVU">
                  <ref role="3uigEE" to="6if8:~ModuleValidationProblem" resolve="ModuleValidationProblem" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2_jX3OnIRVN" role="3cqZAp">
          <node concept="2YIFZM" id="2_jX3OnIRVO" role="3clFbG">
            <ref role="37wK5l" to="6if8:~ValidationUtil.validateModule(org.jetbrains.mps.openapi.module.SModule,org.jetbrains.mps.openapi.util.Processor)" resolve="validateModule" />
            <ref role="1Pybhc" to="6if8:~ValidationUtil" resolve="ValidationUtil" />
            <node concept="37vLTw" id="2_jX3OnIS9q" role="37wK5m">
              <ref role="3cqZAo" node="2_jX3OnIRVb" resolve="module" />
            </node>
            <node concept="37vLTw" id="2_jX3OnIRVQ" role="37wK5m">
              <ref role="3cqZAo" node="2_jX3OnIRVJ" resolve="processor" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2Q$HO4B63Yz" role="3cqZAp">
          <node concept="3cpWsn" id="2Q$HO4B63Y$" role="3cpWs9">
            <property role="TrG5h" value="errors" />
            <node concept="_YKpA" id="2Q$HO4B6a0R" role="1tU5fm">
              <node concept="17QB3L" id="2Q$HO4B6E5J" role="_ZDj9" />
            </node>
            <node concept="2OqwBi" id="2Q$HO4B63Y_" role="33vP2m">
              <node concept="37vLTw" id="2Q$HO4B63YA" role="2Oq$k0">
                <ref role="3cqZAo" node="2_jX3OnIRVJ" resolve="processor" />
              </node>
              <node concept="liA8E" id="2Q$HO4B63YB" role="2OqNvi">
                <ref role="37wK5l" to="6if8:~MessageCollectProcessor.getErrors()" resolve="getErrors" />
              </node>
            </node>
          </node>
          <node concept="15s5l7" id="2Q$HO4B6Leg" role="lGtFl" />
        </node>
        <node concept="3clFbF" id="2Q$HO4B67pU" role="3cqZAp">
          <node concept="2OqwBi" id="2Q$HO4B67UF" role="3clFbG">
            <node concept="37vLTw" id="2Q$HO4B67pS" role="2Oq$k0">
              <ref role="3cqZAo" node="2Q$HO4B63Y$" resolve="errors" />
            </node>
            <node concept="X8dFx" id="2Q$HO4B6q3g" role="2OqNvi">
              <node concept="2OqwBi" id="2Q$HO4B6q3i" role="25WWJ7">
                <node concept="37vLTw" id="2Q$HO4B6q3j" role="2Oq$k0">
                  <ref role="3cqZAo" node="2_jX3OnIRVJ" resolve="processor" />
                </node>
                <node concept="liA8E" id="2Q$HO4B6q3k" role="2OqNvi">
                  <ref role="37wK5l" to="6if8:~MessageCollectProcessor.getWarnings()" resolve="getWarnings" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2Q$HO4B6ing" role="3cqZAp" />
        <node concept="3vwNmj" id="2Q$HO4B7prO" role="3cqZAp">
          <node concept="2OqwBi" id="2eoJ2fRC3JT" role="3vwVQn">
            <node concept="37vLTw" id="2Q$HO4B63YE" role="2Oq$k0">
              <ref role="3cqZAo" node="2Q$HO4B63Y$" resolve="errors" />
            </node>
            <node concept="1v1jN8" id="2Q$HO4B6vAI" role="2OqNvi" />
          </node>
          <node concept="3_1$Yv" id="2Q$HO4B8xHr" role="3_9lra">
            <node concept="3cpWs3" id="2Q$HO4B8xHs" role="3_1BAH">
              <node concept="Xl_RD" id="2Q$HO4B8xHt" role="3uHU7B">
                <property role="Xl_RC" value="Cloned module has errors:\n\t" />
              </node>
              <node concept="2OqwBi" id="2Q$HO4B8xHu" role="3uHU7w">
                <node concept="37vLTw" id="2Q$HO4B8xHv" role="2Oq$k0">
                  <ref role="3cqZAo" node="2Q$HO4B63Y$" resolve="errors" />
                </node>
                <node concept="3uJxvA" id="2Q$HO4B8xHw" role="2OqNvi">
                  <node concept="Xl_RD" id="2Q$HO4B8xHx" role="3uJOhx">
                    <property role="Xl_RC" value="\n\t" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2_jX3OnIRVb" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="3uibUv" id="2_jX3OnIRVa" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2_jX3OnKEv5" role="jymVt" />
    <node concept="3clFb_" id="2_jX3OnKGFn" role="jymVt">
      <property role="TrG5h" value="executeUnderLock" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="2_jX3OnKGFp" role="3clF47">
        <node concept="3cpWs8" id="1rpDfGKrPZy" role="3cqZAp">
          <node concept="3cpWsn" id="1rpDfGKrPZC" role="3cpWs9">
            <property role="TrG5h" value="ref" />
            <node concept="3uibUv" id="1rpDfGKrPZP" role="1tU5fm">
              <ref role="3uigEE" to="18ew:~Reference" resolve="Reference" />
              <node concept="3uibUv" id="1rpDfGKrPZX" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
              </node>
            </node>
            <node concept="2ShNRf" id="1rpDfGKrQ0l" role="33vP2m">
              <node concept="1pGfFk" id="1rpDfGKs6IH" role="2ShVmc">
                <ref role="37wK5l" to="18ew:~Reference.&lt;init&gt;()" resolve="Reference" />
                <node concept="3uibUv" id="4QJbmJGUVsW" role="1pMfVU">
                  <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3XdPonscmun" role="3cqZAp">
          <node concept="2OqwBi" id="3XdPonscqS5" role="3clFbG">
            <node concept="2YIFZM" id="3XdPonscmyu" role="2Oq$k0">
              <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
              <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
            </node>
            <node concept="liA8E" id="3XdPonscrkt" role="2OqNvi">
              <ref role="37wK5l" to="bd8o:~Application.invokeAndWait(java.lang.Runnable,com.intellij.openapi.application.ModalityState)" resolve="invokeAndWait" />
              <node concept="1bVj0M" id="3XdPonscrlq" role="37wK5m">
                <node concept="3clFbS" id="3XdPonscrlr" role="1bW5cS">
                  <node concept="3clFbF" id="4LMS1PLcwHP" role="3cqZAp">
                    <node concept="2OqwBi" id="4LMS1PLcxlG" role="3clFbG">
                      <node concept="2OqwBi" id="4LMS1PLcwS1" role="2Oq$k0">
                        <node concept="37vLTw" id="4LMS1PLcwHO" role="2Oq$k0">
                          <ref role="3cqZAo" node="7l0SErcZkaN" resolve="project" />
                        </node>
                        <node concept="liA8E" id="4LMS1PLcxec" role="2OqNvi">
                          <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
                        </node>
                      </node>
                      <node concept="liA8E" id="4LMS1PLcxBy" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~ModelAccess.executeCommand(java.lang.Runnable)" resolve="executeCommand" />
                        <node concept="1bVj0M" id="1rpDfGKrPHy" role="37wK5m">
                          <node concept="3clFbS" id="1rpDfGKrPHz" role="1bW5cS">
                            <node concept="3J1_TO" id="1rpDfGKrPMX" role="3cqZAp">
                              <node concept="3clFbS" id="1rpDfGKrPMY" role="1zxBo7">
                                <node concept="3clFbF" id="1rpDfGKs7A7" role="3cqZAp">
                                  <node concept="2OqwBi" id="1rpDfGKs7GO" role="3clFbG">
                                    <node concept="37vLTw" id="1rpDfGKs7A6" role="2Oq$k0">
                                      <ref role="3cqZAo" node="2_jX3OnKGF_" resolve="runnable" />
                                    </node>
                                    <node concept="liA8E" id="1rpDfGKs7O4" role="2OqNvi">
                                      <ref role="37wK5l" to="wyt6:~Runnable.run()" resolve="run" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3uVAMA" id="1rpDfGKrPMZ" role="1zxBo5">
                                <node concept="XOnhg" id="1rpDfGKrPN0" role="1zc67B">
                                  <property role="3TUv4t" value="false" />
                                  <property role="TrG5h" value="t" />
                                  <node concept="nSUau" id="xvs04dIvpM" role="1tU5fm">
                                    <node concept="3uibUv" id="1rpDfGKrPN5" role="nSUat">
                                      <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbS" id="1rpDfGKrPN2" role="1zc67A">
                                  <node concept="3clFbF" id="1rpDfGKs6J5" role="3cqZAp">
                                    <node concept="2OqwBi" id="1rpDfGKs6Rf" role="3clFbG">
                                      <node concept="37vLTw" id="1rpDfGKs6J4" role="2Oq$k0">
                                        <ref role="3cqZAo" node="1rpDfGKrPZC" resolve="ref" />
                                      </node>
                                      <node concept="liA8E" id="1rpDfGKs6Z$" role="2OqNvi">
                                        <ref role="37wK5l" to="18ew:~Reference.set(java.lang.Object)" resolve="set" />
                                        <node concept="37vLTw" id="1rpDfGKs72y" role="37wK5m">
                                          <ref role="3cqZAo" node="1rpDfGKrPN0" resolve="t" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbH" id="3XdPonsckJ8" role="3cqZAp" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2YIFZM" id="3XdPonscrzm" role="37wK5m">
                <ref role="37wK5l" to="bd8o:~ModalityState.defaultModalityState()" resolve="defaultModalityState" />
                <ref role="1Pybhc" to="bd8o:~ModalityState" resolve="ModalityState" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1rpDfGKs784" role="3cqZAp">
          <node concept="3clFbS" id="1rpDfGKs786" role="3clFbx">
            <node concept="YS8fn" id="1rpDfGKs7_s" role="3cqZAp">
              <node concept="2ShNRf" id="1rpDfGKs9zR" role="YScLw">
                <node concept="1pGfFk" id="1rpDfGKs9Th" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.Throwable)" resolve="RuntimeException" />
                  <node concept="2OqwBi" id="1rpDfGKs8Jw" role="37wK5m">
                    <node concept="37vLTw" id="1rpDfGKs7_K" role="2Oq$k0">
                      <ref role="3cqZAo" node="1rpDfGKrPZC" resolve="ref" />
                    </node>
                    <node concept="liA8E" id="1rpDfGKs8YO" role="2OqNvi">
                      <ref role="37wK5l" to="18ew:~Reference.get()" resolve="get" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="1rpDfGKs7vv" role="3clFbw">
            <node concept="2OqwBi" id="1rpDfGKs7vx" role="3fr31v">
              <node concept="37vLTw" id="1rpDfGKs7vy" role="2Oq$k0">
                <ref role="3cqZAo" node="1rpDfGKrPZC" resolve="ref" />
              </node>
              <node concept="liA8E" id="1rpDfGKs7vz" role="2OqNvi">
                <ref role="37wK5l" to="18ew:~Reference.isNull()" resolve="isNull" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="2_jX3OnKGF$" role="3clF45" />
      <node concept="37vLTG" id="2_jX3OnKGF_" role="3clF46">
        <property role="TrG5h" value="runnable" />
        <node concept="3uibUv" id="2_jX3OnKHSk" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2_jX3OnKGFz" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1rpDfGKrMnX" role="jymVt" />
    <node concept="3clFb_" id="Po8DAr9a09" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="resolveSolution" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="Po8DAr9a0c" role="3clF47">
        <node concept="3cpWs8" id="Po8DAr9oAh" role="3cqZAp">
          <node concept="3cpWsn" id="Po8DAr9oAi" role="3cpWs9">
            <property role="TrG5h" value="module" />
            <node concept="3uibUv" id="Po8DAr9BLh" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Po8DAr9m5J" role="3cqZAp">
          <node concept="1rXfSq" id="Po8DAr9m5I" role="3clFbG">
            <ref role="37wK5l" node="2_jX3OnKGFn" resolve="executeUnderLock" />
            <node concept="1bVj0M" id="Po8DAr9m9e" role="37wK5m">
              <node concept="3clFbS" id="Po8DAr9m9f" role="1bW5cS">
                <node concept="3clFbF" id="Po8DAr9pUu" role="3cqZAp">
                  <node concept="37vLTI" id="Po8DAr9qi1" role="3clFbG">
                    <node concept="2OqwBi" id="Po8DAr9rBP" role="37vLTx">
                      <node concept="37vLTw" id="Po8DAr9rvt" role="2Oq$k0">
                        <ref role="3cqZAo" node="Po8DAr9a_C" resolve="moduleRef" />
                      </node>
                      <node concept="liA8E" id="Po8DAr9DUR" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~SModuleReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                        <node concept="2OqwBi" id="Po8DAr9EoE" role="37wK5m">
                          <node concept="37vLTw" id="Po8DAr9DYx" role="2Oq$k0">
                            <ref role="3cqZAo" node="7l0SErcZkaN" resolve="project" />
                          </node>
                          <node concept="liA8E" id="Po8DAr9GaF" role="2OqNvi">
                            <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="Po8DAr9pUs" role="37vLTJ">
                      <ref role="3cqZAo" node="Po8DAr9oAi" resolve="module" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3vwNmj" id="Po8DAr9LHH" role="3cqZAp">
          <node concept="2ZW3vV" id="Po8DAr9PH_" role="3vwVQn">
            <node concept="3uibUv" id="Po8DAr9PPl" role="2ZW6by">
              <ref role="3uigEE" to="z1c3:~Solution" resolve="Solution" />
            </node>
            <node concept="37vLTw" id="Po8DAr9Prm" role="2ZW6bz">
              <ref role="3cqZAo" node="Po8DAr9oAi" resolve="module" />
            </node>
          </node>
          <node concept="3_1$Yv" id="Po8DAr9TDq" role="3_9lra">
            <node concept="Xl_RD" id="Po8DAr9US_" role="3_1BAH">
              <property role="Xl_RC" value="Solution expected; Something wrong in test case" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="Po8DAr9ZFw" role="3cqZAp">
          <node concept="10QFUN" id="Po8DAra38k" role="3cqZAk">
            <node concept="37vLTw" id="Po8DAra38j" role="10QFUP">
              <ref role="3cqZAo" node="Po8DAr9oAi" resolve="module" />
            </node>
            <node concept="3uibUv" id="Po8DAra38i" role="10QFUM">
              <ref role="3uigEE" to="z1c3:~Solution" resolve="Solution" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="Po8DAr97aF" role="1B3o_S" />
      <node concept="3uibUv" id="Po8DAr9yqF" role="3clF45">
        <ref role="3uigEE" to="z1c3:~Solution" resolve="Solution" />
      </node>
      <node concept="37vLTG" id="Po8DAr9a_C" role="3clF46">
        <property role="TrG5h" value="moduleRef" />
        <node concept="3uibUv" id="Po8DAr9Car" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
        </node>
        <node concept="2AHcQZ" id="Po8DAr9ei6" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="Po8DAr9iRD" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="Po8DAra3Cn" role="jymVt" />
    <node concept="2tJIrI" id="Po8DArabZt" role="jymVt" />
    <node concept="3clFb_" id="Po8DAra8uy" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="resolveLanguage" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="Po8DAra8u_" role="3clF47">
        <node concept="3cpWs8" id="Po8DArah5u" role="3cqZAp">
          <node concept="3cpWsn" id="Po8DArah5v" role="3cpWs9">
            <property role="TrG5h" value="module" />
            <node concept="3uibUv" id="Po8DArah5w" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Po8DArah5x" role="3cqZAp">
          <node concept="1rXfSq" id="Po8DArah5y" role="3clFbG">
            <ref role="37wK5l" node="2_jX3OnKGFn" resolve="executeUnderLock" />
            <node concept="1bVj0M" id="Po8DArah5z" role="37wK5m">
              <node concept="3clFbS" id="Po8DArah5$" role="1bW5cS">
                <node concept="3clFbF" id="Po8DArah5_" role="3cqZAp">
                  <node concept="37vLTI" id="Po8DArah5A" role="3clFbG">
                    <node concept="2OqwBi" id="Po8DArah5B" role="37vLTx">
                      <node concept="37vLTw" id="Po8DArah5C" role="2Oq$k0">
                        <ref role="3cqZAo" node="Po8DAra96_" resolve="moduleRef" />
                      </node>
                      <node concept="liA8E" id="Po8DArah5D" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~SModuleReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                        <node concept="2OqwBi" id="Po8DArah5E" role="37wK5m">
                          <node concept="37vLTw" id="Po8DArah5F" role="2Oq$k0">
                            <ref role="3cqZAo" node="7l0SErcZkaN" resolve="project" />
                          </node>
                          <node concept="liA8E" id="Po8DArah5G" role="2OqNvi">
                            <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="Po8DArah5H" role="37vLTJ">
                      <ref role="3cqZAo" node="Po8DArah5v" resolve="module" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3vwNmj" id="Po8DArah5I" role="3cqZAp">
          <node concept="2ZW3vV" id="Po8DArah5J" role="3vwVQn">
            <node concept="3uibUv" id="Po8DAraiCT" role="2ZW6by">
              <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
            </node>
            <node concept="37vLTw" id="Po8DArah5L" role="2ZW6bz">
              <ref role="3cqZAo" node="Po8DArah5v" resolve="module" />
            </node>
          </node>
          <node concept="3_1$Yv" id="Po8DArah5M" role="3_9lra">
            <node concept="Xl_RD" id="Po8DArah5N" role="3_1BAH">
              <property role="Xl_RC" value="Language expected; Something wrong in test case" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="Po8DArah5O" role="3cqZAp">
          <node concept="10QFUN" id="Po8DArah5P" role="3cqZAk">
            <node concept="37vLTw" id="Po8DArah5Q" role="10QFUP">
              <ref role="3cqZAo" node="Po8DArah5v" resolve="module" />
            </node>
            <node concept="3uibUv" id="Po8DArajQT" role="10QFUM">
              <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="Po8DAra5y8" role="1B3o_S" />
      <node concept="3uibUv" id="Po8DAra7k4" role="3clF45">
        <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
      </node>
      <node concept="37vLTG" id="Po8DAra96_" role="3clF46">
        <property role="TrG5h" value="moduleRef" />
        <node concept="3uibUv" id="Po8DAra96$" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
        </node>
        <node concept="2AHcQZ" id="Po8DAraaMj" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="Po8DAradKr" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="Po8DAr95tD" role="jymVt" />
    <node concept="3clFb_" id="1rpDfGKrKQm" role="jymVt">
      <property role="TrG5h" value="testModule" />
      <node concept="3Tm6S6" id="1rpDfGKrKQn" role="1B3o_S" />
      <node concept="3uibUv" id="Po8DAr8gd$" role="3clF45">
        <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
      </node>
      <node concept="3clFbS" id="1rpDfGKrKPj" role="3clF47">
        <node concept="3cpWs8" id="Po8DAr8o4e" role="3cqZAp">
          <node concept="3cpWsn" id="Po8DAr8o4f" role="3cpWs9">
            <property role="TrG5h" value="clonedModule" />
            <node concept="3uibUv" id="Po8DAr8o4g" role="1tU5fm">
              <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1rpDfGKrKPk" role="3cqZAp">
          <node concept="1rXfSq" id="1rpDfGKrKPl" role="3clFbG">
            <ref role="37wK5l" node="2_jX3OnKGFn" resolve="executeUnderLock" />
            <node concept="1bVj0M" id="1rpDfGKrKPm" role="37wK5m">
              <node concept="3clFbS" id="1rpDfGKrKPn" role="1bW5cS">
                <node concept="3clFbH" id="1rpDfGKrKP$" role="3cqZAp" />
                <node concept="3cpWs8" id="1rpDfGKrKP_" role="3cqZAp">
                  <node concept="3cpWsn" id="1rpDfGKrKPA" role="3cpWs9">
                    <property role="TrG5h" value="clonedModuleName" />
                    <node concept="17QB3L" id="1rpDfGKrKPB" role="1tU5fm" />
                    <node concept="3cpWs3" id="1rpDfGKrKPC" role="33vP2m">
                      <node concept="37vLTw" id="1rpDfGKrKPD" role="3uHU7w">
                        <ref role="3cqZAo" node="1rpDfGKrJ9j" resolve="SUFFIX" />
                      </node>
                      <node concept="2OqwBi" id="1rpDfGKrKPE" role="3uHU7B">
                        <node concept="37vLTw" id="Po8DArapDZ" role="2Oq$k0">
                          <ref role="3cqZAo" node="1rpDfGKrKQB" resolve="originalModule" />
                        </node>
                        <node concept="liA8E" id="1rpDfGKrKPG" role="2OqNvi">
                          <ref role="37wK5l" to="z1c3:~AbstractModule.getModuleName()" resolve="getModuleName" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="1rpDfGKrKPH" role="3cqZAp" />
                <node concept="3cpWs8" id="1rpDfGKrKPI" role="3cqZAp">
                  <node concept="3cpWsn" id="1rpDfGKrKPJ" role="3cpWs9">
                    <property role="TrG5h" value="copyLocation" />
                    <node concept="3uibUv" id="1rpDfGKrKPK" role="1tU5fm">
                      <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                    </node>
                    <node concept="2OqwBi" id="1rpDfGKrKPL" role="33vP2m">
                      <node concept="2OqwBi" id="Vcu4Ju8iEs" role="2Oq$k0">
                        <node concept="37vLTw" id="1rpDfGKrKPM" role="2Oq$k0">
                          <ref role="3cqZAo" node="2_jX3OnHZgc" resolve="clonedModulesDirectory" />
                        </node>
                        <node concept="liA8E" id="Vcu4Ju8lhn" role="2OqNvi">
                          <ref role="37wK5l" to="3ju5:~IFile.findChild(java.lang.String)" resolve="findChild" />
                          <node concept="37vLTw" id="Vcu4Ju8no7" role="37wK5m">
                            <ref role="3cqZAo" node="1rpDfGKrKPA" resolve="clonedModuleName" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="1rpDfGKrKPN" role="2OqNvi">
                        <ref role="37wK5l" to="3ju5:~IFile.findChild(java.lang.String)" resolve="findChild" />
                        <node concept="3cpWs3" id="1rpDfGKrKPO" role="37wK5m">
                          <node concept="37vLTw" id="1rpDfGKrKPP" role="3uHU7B">
                            <ref role="3cqZAo" node="1rpDfGKrKPA" resolve="clonedModuleName" />
                          </node>
                          <node concept="37vLTw" id="1rpDfGKrOuP" role="3uHU7w">
                            <ref role="3cqZAo" node="1rpDfGKrOt_" resolve="moduleFileNameExtension" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="1rpDfGKrKPR" role="3cqZAp">
                  <node concept="3cpWsn" id="1rpDfGKrKPS" role="3cpWs9">
                    <property role="TrG5h" value="helper" />
                    <node concept="3uibUv" id="1rpDfGKrKPT" role="1tU5fm">
                      <ref role="3uigEE" to="dsk9:7l6b$KxsU5A" resolve="CopyModuleHelper" />
                    </node>
                    <node concept="2ShNRf" id="1rpDfGKrKPU" role="33vP2m">
                      <node concept="1pGfFk" id="1rpDfGKrKPV" role="2ShVmc">
                        <ref role="37wK5l" to="dsk9:7l6b$KxsUfF" resolve="CopyModuleHelper" />
                        <node concept="37vLTw" id="1rpDfGKrKPW" role="37wK5m">
                          <ref role="3cqZAo" node="7l0SErcZkaN" resolve="project" />
                        </node>
                        <node concept="37vLTw" id="Po8DArapYc" role="37wK5m">
                          <ref role="3cqZAo" node="1rpDfGKrKQB" resolve="originalModule" />
                        </node>
                        <node concept="37vLTw" id="1rpDfGKrKPY" role="37wK5m">
                          <ref role="3cqZAo" node="1rpDfGKrKPA" resolve="clonedModuleName" />
                        </node>
                        <node concept="37vLTw" id="1rpDfGKrKPZ" role="37wK5m">
                          <ref role="3cqZAo" node="1rpDfGKrKPJ" resolve="copyLocation" />
                        </node>
                        <node concept="Xl_RD" id="1rpDfGKrKQ0" role="37wK5m">
                          <property role="Xl_RC" value="" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3J1_TO" id="2Q$HO4Bf6nK" role="3cqZAp">
                  <node concept="3clFbS" id="2Q$HO4Bf6nL" role="1zxBo7">
                    <node concept="3clFbF" id="Po8DAr8vH3" role="3cqZAp">
                      <node concept="37vLTI" id="Po8DAr8woQ" role="3clFbG">
                        <node concept="37vLTw" id="Po8DAr8vH1" role="37vLTJ">
                          <ref role="3cqZAo" node="Po8DAr8o4f" resolve="clonedModule" />
                        </node>
                        <node concept="2OqwBi" id="Po8DAr8yYK" role="37vLTx">
                          <node concept="37vLTw" id="Po8DAr8xQf" role="2Oq$k0">
                            <ref role="3cqZAo" node="1rpDfGKrKPS" resolve="helper" />
                          </node>
                          <node concept="liA8E" id="Po8DAr8$C5" role="2OqNvi">
                            <ref role="37wK5l" to="dsk9:7l6b$KxsWq0" resolve="copy" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uVAMA" id="2Q$HO4Bf6nR" role="1zxBo5">
                    <node concept="XOnhg" id="2Q$HO4Bf6nV" role="1zc67B">
                      <property role="3TUv4t" value="false" />
                      <property role="TrG5h" value="e" />
                      <node concept="nSUau" id="xvs04dIvpO" role="1tU5fm">
                        <node concept="3uibUv" id="2Q$HO4Bf6nQ" role="nSUat">
                          <ref role="3uigEE" to="ends:~CopyNotSupportedException" resolve="CopyNotSupportedException" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="2Q$HO4Bf6nU" role="1zc67A">
                      <node concept="3xETmq" id="2Q$HO4Bfj_M" role="3cqZAp">
                        <node concept="3_1$Yv" id="2Q$HO4Bfmam" role="3_9lra">
                          <node concept="3cpWs3" id="60h7_mFTldc" role="3_1BAH">
                            <node concept="2OqwBi" id="60h7_mFTnPm" role="3uHU7w">
                              <node concept="37vLTw" id="60h7_mFTnnm" role="2Oq$k0">
                                <ref role="3cqZAo" node="2Q$HO4Bf6nV" resolve="e" />
                              </node>
                              <node concept="liA8E" id="60h7_mFTqQT" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~Throwable.getMessage()" resolve="getMessage" />
                              </node>
                            </node>
                            <node concept="3cpWs3" id="60h7_mFT9F5" role="3uHU7B">
                              <node concept="3cpWs3" id="2Q$HO4BftqN" role="3uHU7B">
                                <node concept="Xl_RD" id="2Q$HO4Bfo88" role="3uHU7B">
                                  <property role="Xl_RC" value="Cloning should be supported for module " />
                                </node>
                                <node concept="2OqwBi" id="2Q$HO4Bfw10" role="3uHU7w">
                                  <node concept="37vLTw" id="2Q$HO4BfvyP" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1rpDfGKrKQB" resolve="originalModule" />
                                  </node>
                                  <node concept="liA8E" id="2Q$HO4BfyiW" role="2OqNvi">
                                    <ref role="37wK5l" to="z1c3:~AbstractModule.getModuleName()" resolve="getModuleName" />
                                  </node>
                                </node>
                              </node>
                              <node concept="Xl_RD" id="60h7_mFTcjO" role="3uHU7w">
                                <property role="Xl_RC" value=". Actually got CopyNotSupportedException: " />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="2Q$HO4Benou" role="3cqZAp" />
                <node concept="2Hmddi" id="2Q$HO4B5ciP" role="3cqZAp">
                  <node concept="37vLTw" id="2Q$HO4B5ety" role="2Hmdds">
                    <ref role="3cqZAo" node="Po8DAr8o4f" resolve="clonedModule" />
                  </node>
                </node>
                <node concept="3vlDli" id="1rpDfGKrKQ8" role="3cqZAp">
                  <node concept="2OqwBi" id="1rpDfGKrKQ9" role="3tpDZB">
                    <node concept="37vLTw" id="Po8DAr8A7i" role="2Oq$k0">
                      <ref role="3cqZAo" node="Po8DAr8o4f" resolve="clonedModule" />
                    </node>
                    <node concept="liA8E" id="1rpDfGKrKQb" role="2OqNvi">
                      <ref role="37wK5l" to="z1c3:~AbstractModule.getModuleName()" resolve="getModuleName" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="1rpDfGKrKQc" role="3tpDZA">
                    <ref role="3cqZAo" node="1rpDfGKrKPA" resolve="clonedModuleName" />
                  </node>
                </node>
                <node concept="3clFbH" id="1rpDfGKrKQd" role="3cqZAp" />
                <node concept="3clFbF" id="1rpDfGKrKQe" role="3cqZAp">
                  <node concept="1rXfSq" id="1rpDfGKrKQf" role="3clFbG">
                    <ref role="37wK5l" node="2_jX3OnIRII" resolve="checkModule" />
                    <node concept="37vLTw" id="Po8DAraqit" role="37wK5m">
                      <ref role="3cqZAo" node="1rpDfGKrKQB" resolve="originalModule" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1rpDfGKrKQh" role="3cqZAp">
                  <node concept="1rXfSq" id="1rpDfGKrKQi" role="3clFbG">
                    <ref role="37wK5l" node="2_jX3OnIRII" resolve="checkModule" />
                    <node concept="37vLTw" id="Po8DAr8AsF" role="37wK5m">
                      <ref role="3cqZAo" node="Po8DAr8o4f" resolve="clonedModule" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="Po8DAr8BUs" role="3cqZAp">
          <node concept="37vLTw" id="Po8DAr8Do2" role="3cqZAk">
            <ref role="3cqZAo" node="Po8DAr8o4f" resolve="clonedModule" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1rpDfGKrKQB" role="3clF46">
        <property role="TrG5h" value="originalModule" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="Po8DArakoy" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
        </node>
        <node concept="2AHcQZ" id="1rpDfGKrLY3" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="1rpDfGKrOt_" role="3clF46">
        <property role="TrG5h" value="moduleFileNameExtension" />
        <node concept="17QB3L" id="Po8DAravd0" role="1tU5fm" />
      </node>
      <node concept="2AHcQZ" id="Po8DArarNt" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="1KhYhu" id="7l0SErcZmlQ" role="1KhZu4">
      <node concept="3clFbS" id="7l0SErcZmlR" role="2VODD2">
        <node concept="3clFbF" id="4uPaNIY9iOs" role="3cqZAp">
          <node concept="37vLTI" id="4uPaNIY9iS_" role="3clFbG">
            <node concept="37vLTw" id="7l0SErcZo9P" role="37vLTJ">
              <ref role="3cqZAo" node="7l0SErcZkaN" resolve="project" />
            </node>
            <node concept="1eOMI4" id="2Mi1qAhYp6" role="37vLTx">
              <node concept="10QFUN" id="2Mi1qAhYp3" role="1eOMHV">
                <node concept="3uibUv" id="2Mi1qAhYzY" role="10QFUM">
                  <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
                </node>
                <node concept="2OqwBi" id="4uPaNIY9iFu" role="10QFUP">
                  <node concept="37vLTw" id="nUYGvAFikg" role="2Oq$k0">
                    <ref role="3cqZAo" to="83ig:~EnvironmentAwareTestCase.myEnvironment" resolve="myEnvironment" />
                  </node>
                  <node concept="liA8E" id="4uPaNIY9iFw" role="2OqNvi">
                    <ref role="37wK5l" to="ew0j:~Environment.openProject(java.io.File)" resolve="openProject" />
                    <node concept="2ShNRf" id="4uPaNIY9iFx" role="37wK5m">
                      <node concept="1pGfFk" id="4uPaNIY9iFy" role="2ShVmc">
                        <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                        <node concept="37vLTw" id="7l0SErcZo7L" role="37wK5m">
                          <ref role="3cqZAo" node="7l0SErcZi0H" resolve="PROJECT_PATH" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2_jX3OnKJ9P" role="3cqZAp">
          <node concept="1rXfSq" id="2_jX3OnKJ9N" role="3clFbG">
            <ref role="37wK5l" node="2_jX3OnKGFn" resolve="executeUnderLock" />
            <node concept="1bVj0M" id="2_jX3OnKJe3" role="37wK5m">
              <node concept="3clFbS" id="2_jX3OnKJe4" role="1bW5cS">
                <node concept="3clFbF" id="2_jX3OnJT5v" role="3cqZAp">
                  <node concept="37vLTI" id="2_jX3OnHZQA" role="3clFbG">
                    <node concept="2YIFZM" id="2_jX3OnHZXB" role="37vLTx">
                      <ref role="1Pybhc" to="18ew:~IFileUtil" resolve="IFileUtil" />
                      <ref role="37wK5l" to="18ew:~IFileUtil.createTmpDir(jetbrains.mps.vfs.openapi.FileSystem)" resolve="createTmpDir" />
                      <node concept="2OqwBi" id="2Z81NTQQWEb" role="37wK5m">
                        <node concept="37vLTw" id="2Z81NTQQWc9" role="2Oq$k0">
                          <ref role="3cqZAo" node="7l0SErcZkaN" resolve="project" />
                        </node>
                        <node concept="liA8E" id="2Z81NTQQXk_" role="2OqNvi">
                          <ref role="37wK5l" to="z1c4:~MPSProject.getFileSystem()" resolve="getFileSystem" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="2_jX3OnHZxj" role="37vLTJ">
                      <ref role="3cqZAo" node="2_jX3OnHZgc" resolve="clonedModulesDirectory" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1KhZuU" id="2_jX3OnHT4p" role="1KhZu3">
      <node concept="3clFbS" id="2_jX3OnHT4q" role="2VODD2">
        <node concept="3clFbF" id="2_jX3OnKJVz" role="3cqZAp">
          <node concept="1rXfSq" id="2_jX3OnKJVx" role="3clFbG">
            <ref role="37wK5l" node="2_jX3OnKGFn" resolve="executeUnderLock" />
            <node concept="1bVj0M" id="2_jX3OnKK74" role="37wK5m">
              <node concept="3clFbS" id="2_jX3OnKK75" role="1bW5cS">
                <node concept="3clFbF" id="2_jX3OnKK81" role="3cqZAp">
                  <node concept="2OqwBi" id="2_jX3OnI0d$" role="3clFbG">
                    <node concept="37vLTw" id="2_jX3OnI09l" role="2Oq$k0">
                      <ref role="3cqZAo" node="2_jX3OnHZgc" resolve="clonedModulesDirectory" />
                    </node>
                    <node concept="liA8E" id="2_jX3OnI0rj" role="2OqNvi">
                      <ref role="37wK5l" to="3ju5:~IFile.delete()" resolve="delete" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="nUYGvAFkcD" role="3cqZAp">
          <node concept="2OqwBi" id="nUYGvAFkmR" role="3clFbG">
            <node concept="37vLTw" id="nUYGvAFkcB" role="2Oq$k0">
              <ref role="3cqZAo" to="83ig:~EnvironmentAwareTestCase.myEnvironment" resolve="myEnvironment" />
            </node>
            <node concept="liA8E" id="nUYGvAFmjF" role="2OqNvi">
              <ref role="37wK5l" to="ew0j:~Environment.closeProject(jetbrains.mps.project.Project)" resolve="closeProject" />
              <node concept="37vLTw" id="nUYGvAFmpk" role="37wK5m">
                <ref role="3cqZAo" node="7l0SErcZkaN" resolve="project" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="nUYGvAFhpM" role="1zkMxy">
      <ref role="3uigEE" to="83ig:~EnvironmentAwareTestCase" resolve="EnvironmentAwareTestCase" />
    </node>
  </node>
  <node concept="2UguNb" id="6rP_NjK3fBF">
    <property role="TrG5h" value="CloneModule" />
  </node>
</model>

