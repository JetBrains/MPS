<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a1e8c439-e997-416b-a5dc-df7c3fd41b00(jetbrains.mps.lang.editor.menus.extras.tests@tests)">
  <persistence version="9" />
  <languages>
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="1" />
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="6" />
    <use id="4eb772b0-4df3-414a-b894-63abeb912f56" name="jetbrains.mps.lang.editor.menus.testLanguage" version="0" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <use id="f015c5f8-7205-4441-9cc7-dc7ef28ea903" name="jetbrains.mps.lang.editor.menus.extras.testLanguage" version="0" />
  </languages>
  <imports>
    <import index="uddc" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.menus.transformation(MPS.Editor/)" />
    <import index="qwun" ref="r:a3b5964c-2d88-4fe7-9fde-b377ee252f13(jetbrains.mps.lang.editor.menus.extras.runtime)" />
    <import index="6rzo" ref="r:2f49f947-e2b6-4dd2-87ae-7938deb42899(jetbrains.mps.lang.editor.menus.extras.testLanguage.refactorings)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="u59o" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.menus.transformation(MPS.Editor/)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="ge2m" ref="r:bd8551c6-e2e3-4499-a261-45b0c886d1d1(jetbrains.mps.refactoring.framework)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="tp3j" ref="r:00000000-0000-4000-0000-011c89590353(jetbrains.mps.lang.intentions.structure)" />
    <import index="nht" ref="r:8d2a217a-f2d0-4d4a-b867-e2dd2ddb731c(jetbrains.mps.lang.editor.menus.extras.testLanguage.intentions)" />
    <import index="vd7r" ref="r:4f8193a2-048e-4ddf-b505-dfca00e8c910(jetbrains.mps.lang.editor.menus.tests@tests)" />
    <import index="qkt" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.actionSystem(MPS.IDEA/)" />
    <import index="nddn" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.intentions(MPS.Editor/)" />
    <import index="y38" ref="r:4c8c6241-8bf4-4d04-84a1-f7fd7fcbdc2c(jetbrains.mps.refactoring.runtime.access)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="3a50" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide(MPS.Platform/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="anz6" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.testFramework(MPS.IDEA/)" />
    <import index="btn2" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ide.impl(MPS.IDEA/)" />
    <import index="v23q" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi(MPS.IDEA/)" />
    <import index="zn9m" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.util(MPS.IDEA/)" />
    <import index="qq03" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.actions(MPS.Platform/)" />
    <import index="anz7" ref="320a7d92-2f09-4a63-9adc-ee2fc4d9ea30/java:com.intellij.testFramework(MPS.IDEA.testFramework/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tp3m" ref="r:00000000-0000-4000-0000-011c8959034e(jetbrains.mps.lang.intentions.behavior)" implicit="true" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test">
      <concept id="1229187653856" name="jetbrains.mps.lang.test.structure.EditorTestCase" flags="lg" index="LiM7Y">
        <child id="3143335925185262946" name="testNodeBefore" index="25YQCW" />
        <child id="1229187755283" name="code" index="LjaKd" />
      </concept>
      <concept id="1229194968594" name="jetbrains.mps.lang.test.structure.AnonymousCellAnnotation" flags="ng" index="LIFWc">
        <property id="6268941039745498163" name="selectionStart" index="p6zMq" />
        <property id="6268941039745498165" name="selectionEnd" index="p6zMs" />
        <property id="1229194968596" name="caretPosition" index="LIFWa" />
        <property id="1229194968595" name="cellId" index="LIFWd" />
        <property id="1932269937152561478" name="useLabelSelection" index="OXtK3" />
      </concept>
      <concept id="5773579205429866751" name="jetbrains.mps.lang.test.structure.EditorComponentExpression" flags="nn" index="369mXd" />
      <concept id="1225467090849" name="jetbrains.mps.lang.test.structure.ProjectExpression" flags="nn" index="1jxXqW" />
      <concept id="1216989428737" name="jetbrains.mps.lang.test.structure.TestNode" flags="ng" index="1qefOq">
        <child id="1216989461394" name="nodeToCheck" index="1qenE9" />
      </concept>
    </language>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="3235159848334022093" name="jetbrains.mps.lang.behavior.structure.Node_ConceptMethodCall" flags="nn" index="3zqWPK" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
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
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
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
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
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
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1073063089578" name="jetbrains.mps.baseLanguage.structure.SuperMethodCall" flags="nn" index="3nyPlj" />
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
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
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="4eb772b0-4df3-414a-b894-63abeb912f56" name="jetbrains.mps.lang.editor.menus.testLanguage">
      <concept id="2344528742722056854" name="jetbrains.mps.lang.editor.menus.testLanguage.structure.TransformationMenuTestConcept" flags="ng" index="rbkbI" />
    </language>
    <language id="446c26eb-2b7b-4bf0-9b35-f83fa582753e" name="jetbrains.mps.lang.modelapi">
      <concept id="4733039728785194814" name="jetbrains.mps.lang.modelapi.structure.NamedNodeReference" flags="ng" index="ZC_QK">
        <reference id="7256306938026143658" name="target" index="2aWVGs" />
      </concept>
    </language>
    <language id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest">
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
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="4497478346159780083" name="jetbrains.mps.lang.smodel.structure.LanguageRefExpression" flags="ng" index="pHN19">
        <child id="3542851458883491298" name="languageId" index="2V$M_3" />
      </concept>
      <concept id="7400021826774799413" name="jetbrains.mps.lang.smodel.structure.NodePointerExpression" flags="ng" index="2tJFMh">
        <child id="7400021826774799510" name="ref" index="2tJFKM" />
      </concept>
      <concept id="3542851458883438784" name="jetbrains.mps.lang.smodel.structure.LanguageId" flags="nn" index="2V$Bhx">
        <property id="3542851458883439831" name="namespace" index="2V$B1Q" />
        <property id="3542851458883439832" name="languageId" index="2V$B1T" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
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
  </registry>
  <node concept="LiM7Y" id="5UD30_PQEip">
    <property role="TrG5h" value="RefactoringMenuItemBase_InapplicableRefactoring_CannotExecute" />
    <node concept="3clFbS" id="5UD30_PQEiP" role="LjaKd">
      <node concept="3cpWs8" id="5UD30_PR7sm" role="3cqZAp">
        <node concept="3cpWsn" id="5UD30_PR7sn" role="3cpWs9">
          <property role="TrG5h" value="repository" />
          <node concept="3uibUv" id="5UD30_PR7sl" role="1tU5fm">
            <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
          </node>
          <node concept="2OqwBi" id="5UD30_PR7so" role="33vP2m">
            <node concept="2OqwBi" id="5UD30_PR7sp" role="2Oq$k0">
              <node concept="369mXd" id="5UD30_PR7sq" role="2Oq$k0" />
              <node concept="liA8E" id="5UD30_PR7sr" role="2OqNvi">
                <ref role="37wK5l" to="exr9:~EditorComponent.getEditorContext()" resolve="getEditorContext" />
              </node>
            </node>
            <node concept="liA8E" id="5UD30_PR7ss" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorContext.getRepository()" resolve="getRepository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cpWs8" id="FV_t59JDvA" role="3cqZAp">
        <node concept="3cpWsn" id="FV_t59JDvB" role="3cpWs9">
          <property role="TrG5h" value="dd" />
          <node concept="3uibUv" id="FV_t59JDno" role="1tU5fm">
            <ref role="3uigEE" to="v23q:~Disposable" resolve="Disposable" />
          </node>
          <node concept="2YIFZM" id="FV_t59JEb5" role="33vP2m">
            <ref role="37wK5l" to="zn9m:~Disposer.newDisposable()" resolve="newDisposable" />
            <ref role="1Pybhc" to="zn9m:~Disposer" resolve="Disposer" />
          </node>
        </node>
      </node>
      <node concept="3clFbF" id="FV_t59IS2w" role="3cqZAp">
        <node concept="2YIFZM" id="FV_t59ISFL" role="3clFbG">
          <ref role="37wK5l" to="btn2:~HeadlessDataManager.fallbackToProductionDataManager(com.intellij.openapi.Disposable)" resolve="fallbackToProductionDataManager" />
          <ref role="1Pybhc" to="btn2:~HeadlessDataManager" resolve="HeadlessDataManager" />
          <node concept="37vLTw" id="FV_t59JEs6" role="37wK5m">
            <ref role="3cqZAo" node="FV_t59JDvB" resolve="dd" />
          </node>
        </node>
      </node>
      <node concept="3clFbF" id="33NwAVMgqLy" role="3cqZAp">
        <node concept="2YIFZM" id="33NwAVMgqQ8" role="3clFbG">
          <ref role="37wK5l" to="3a50:~ThreadUtils.runInUIThreadAndWait(java.lang.Runnable)" resolve="runInUIThreadAndWait" />
          <ref role="1Pybhc" to="3a50:~ThreadUtils" resolve="ThreadUtils" />
          <node concept="2ShNRf" id="33NwAVMgqSg" role="37wK5m">
            <node concept="1pGfFk" id="33NwAVMgsjz" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="w1kc:~ModelReadRunnable.&lt;init&gt;(org.jetbrains.mps.openapi.module.SRepository,java.lang.Runnable)" resolve="ModelReadRunnable" />
              <node concept="37vLTw" id="33NwAVMgsmg" role="37wK5m">
                <ref role="3cqZAo" node="5UD30_PR7sn" resolve="repository" />
              </node>
              <node concept="1bVj0M" id="33NwAVMgsul" role="37wK5m">
                <node concept="3clFbS" id="33NwAVMgsup" role="1bW5cS">
                  <node concept="3cpWs8" id="5UD30_PSaib" role="3cqZAp">
                    <node concept="3cpWsn" id="5UD30_PSaic" role="3cpWs9">
                      <property role="TrG5h" value="refactoring" />
                      <node concept="3uibUv" id="5UD30_PSaid" role="1tU5fm">
                        <ref role="3uigEE" to="ge2m:4a0HOMfn9$I" resolve="IRefactoring" />
                      </node>
                      <node concept="2YIFZM" id="5UD30_PSaie" role="33vP2m">
                        <ref role="1Pybhc" node="5UD30_PS7nL" resolve="ActionLookupUtils" />
                        <ref role="37wK5l" node="5UD30_PS7pb" resolve="getRefactoring" />
                        <node concept="1jxXqW" id="4xB7mi2t6PQ" role="37wK5m" />
                        <node concept="2tJFMh" id="7uvxILPmWSq" role="37wK5m">
                          <node concept="ZC_QK" id="7uvxILPmWSp" role="2tJFKM">
                            <ref role="2aWVGs" to="6rzo:6K07tEmQO3" resolve="InapplicableRefactoring" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="5UD30_PSaih" role="3cqZAp" />
                  <node concept="3cpWs8" id="5UD30_PSaii" role="3cqZAp">
                    <node concept="3cpWsn" id="5UD30_PSaij" role="3cpWs9">
                      <property role="TrG5h" value="context" />
                      <node concept="3uibUv" id="5UD30_PSaik" role="1tU5fm">
                        <ref role="3uigEE" to="u59o:~DefaultTransformationMenuContext" resolve="DefaultTransformationMenuContext" />
                      </node>
                      <node concept="2YIFZM" id="5UD30_PSail" role="33vP2m">
                        <ref role="37wK5l" to="u59o:~DefaultTransformationMenuContext.createInitialContextForCell(jetbrains.mps.openapi.editor.cells.EditorCell,java.lang.String)" resolve="createInitialContextForCell" />
                        <ref role="1Pybhc" to="u59o:~DefaultTransformationMenuContext" resolve="DefaultTransformationMenuContext" />
                        <node concept="2OqwBi" id="5UD30_PSaim" role="37wK5m">
                          <node concept="369mXd" id="5UD30_PSain" role="2Oq$k0" />
                          <node concept="liA8E" id="5UD30_PSaio" role="2OqNvi">
                            <ref role="37wK5l" to="exr9:~EditorComponent.getSelectedCell()" resolve="getSelectedCell" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="5UD30_PSaip" role="37wK5m">
                          <property role="Xl_RC" value="irrelevant location" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="5UD30_PSaiq" role="3cqZAp" />
                  <node concept="3cpWs8" id="5UD30_PSair" role="3cqZAp">
                    <node concept="3cpWsn" id="5UD30_PSais" role="3cpWs9">
                      <property role="TrG5h" value="item" />
                      <node concept="3uibUv" id="5UD30_PSait" role="1tU5fm">
                        <ref role="3uigEE" to="uddc:~ActionItem" resolve="ActionItem" />
                      </node>
                      <node concept="2ShNRf" id="5UD30_PSaiu" role="33vP2m">
                        <node concept="1pGfFk" id="5UD30_PSaiv" role="2ShVmc">
                          <ref role="37wK5l" to="qwun:5UD30_PS2bh" resolve="RefactoringMenuItemBase" />
                          <node concept="37vLTw" id="5UD30_PSaiw" role="37wK5m">
                            <ref role="3cqZAo" node="5UD30_PSaij" resolve="context" />
                          </node>
                          <node concept="37vLTw" id="5UD30_PSaix" role="37wK5m">
                            <ref role="3cqZAo" node="5UD30_PSaic" resolve="refactoring" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3vFxKo" id="5UD30_PSaPJ" role="3cqZAp">
                    <node concept="2OqwBi" id="5UD30_PSaVp" role="3vFALc">
                      <node concept="37vLTw" id="5UD30_PSaVq" role="2Oq$k0">
                        <ref role="3cqZAo" node="5UD30_PSais" resolve="item" />
                      </node>
                      <node concept="liA8E" id="5UD30_PSaVr" role="2OqNvi">
                        <ref role="37wK5l" to="uddc:~ActionItem.canExecute(java.lang.String)" resolve="canExecute" />
                        <node concept="Xl_RD" id="5UD30_PSaVs" role="37wK5m">
                          <property role="Xl_RC" value="irrelevant pattern" />
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
      <node concept="3clFbF" id="FV_t59JEEh" role="3cqZAp">
        <node concept="2YIFZM" id="FV_t59JELk" role="3clFbG">
          <ref role="37wK5l" to="zn9m:~Disposer.dispose(com.intellij.openapi.Disposable)" resolve="dispose" />
          <ref role="1Pybhc" to="zn9m:~Disposer" resolve="Disposer" />
          <node concept="37vLTw" id="FV_t59JELm" role="37wK5m">
            <ref role="3cqZAo" node="FV_t59JDvB" resolve="dd" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="2aQPn0PnjxZ" role="25YQCW">
      <node concept="rbkbI" id="5UD30_PQEiL" role="1qenE9">
        <node concept="LIFWc" id="5UD30_PQEiM" role="lGtFl">
          <property role="LIFWa" value="0" />
          <property role="OXtK3" value="true" />
          <property role="p6zMq" value="0" />
          <property role="p6zMs" value="0" />
          <property role="LIFWd" value="ALIAS_EDITOR_COMPONENT" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5UD30_PRpLR">
    <property role="TrG5h" value="RefactoringMenuItemBase_ApplicableRefactoring_CanExecute" />
    <node concept="3clFbS" id="5UD30_PRpLU" role="LjaKd">
      <node concept="3cpWs8" id="5UD30_PRpLZ" role="3cqZAp">
        <node concept="3cpWsn" id="5UD30_PRpM0" role="3cpWs9">
          <property role="TrG5h" value="repository" />
          <property role="3TUv4t" value="true" />
          <node concept="3uibUv" id="5UD30_PRpM1" role="1tU5fm">
            <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
          </node>
          <node concept="2OqwBi" id="5UD30_PRpM2" role="33vP2m">
            <node concept="2OqwBi" id="5UD30_PRpM3" role="2Oq$k0">
              <node concept="369mXd" id="5UD30_PRpM4" role="2Oq$k0" />
              <node concept="liA8E" id="5UD30_PRpM5" role="2OqNvi">
                <ref role="37wK5l" to="exr9:~EditorComponent.getEditorContext()" resolve="getEditorContext" />
              </node>
            </node>
            <node concept="liA8E" id="5UD30_PRpM6" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorContext.getRepository()" resolve="getRepository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="33NwAVMgqfF" role="3cqZAp" />
      <node concept="3cpWs8" id="FV_t59JFNx" role="3cqZAp">
        <node concept="3cpWsn" id="FV_t59JFNy" role="3cpWs9">
          <property role="TrG5h" value="dd" />
          <node concept="3uibUv" id="FV_t59JFNz" role="1tU5fm">
            <ref role="3uigEE" to="v23q:~Disposable" resolve="Disposable" />
          </node>
          <node concept="2YIFZM" id="FV_t59JFN$" role="33vP2m">
            <ref role="37wK5l" to="zn9m:~Disposer.newDisposable()" resolve="newDisposable" />
            <ref role="1Pybhc" to="zn9m:~Disposer" resolve="Disposer" />
          </node>
        </node>
      </node>
      <node concept="3clFbF" id="FV_t59JF6P" role="3cqZAp">
        <node concept="2OqwBi" id="FV_t59JFqo" role="3clFbG">
          <node concept="2YIFZM" id="62cpFJvSwL6" role="2Oq$k0">
            <ref role="37wK5l" to="anz7:~TestApplicationManager.getInstance()" resolve="getInstance" />
            <ref role="1Pybhc" to="anz7:~TestApplicationManager" resolve="TestApplicationManager" />
          </node>
          <node concept="liA8E" id="FV_t59JFGc" role="2OqNvi">
            <ref role="37wK5l" to="anz7:~TestApplicationManager.setDataProvider(com.intellij.openapi.actionSystem.DataProvider,com.intellij.openapi.Disposable)" resolve="setDataProvider" />
            <node concept="2ShNRf" id="FV_t59JLRx" role="37wK5m">
              <node concept="YeOm9" id="FV_t59JVNh" role="2ShVmc">
                <node concept="1Y3b0j" id="FV_t59JVNk" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <property role="373rjd" value="true" />
                  <ref role="1Y3XeK" to="qkt:~DataProvider" resolve="DataProvider" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <node concept="3Tm1VV" id="FV_t59JVNl" role="1B3o_S" />
                  <node concept="3clFb_" id="FV_t59JVNz" role="jymVt">
                    <property role="TrG5h" value="getData" />
                    <node concept="3Tm1VV" id="FV_t59JVN$" role="1B3o_S" />
                    <node concept="2AHcQZ" id="FV_t59JVNA" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                    </node>
                    <node concept="3uibUv" id="FV_t59JVNB" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                    </node>
                    <node concept="37vLTG" id="FV_t59JVNC" role="3clF46">
                      <property role="TrG5h" value="key" />
                      <node concept="3uibUv" id="FV_t59JVND" role="1tU5fm">
                        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                      </node>
                      <node concept="2AHcQZ" id="FV_t59JVNE" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      </node>
                      <node concept="2AHcQZ" id="FV_t59JVNF" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NonNls" resolve="NonNls" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="FV_t59JVNG" role="3clF47">
                      <node concept="3clFbJ" id="FV_t59JW1V" role="3cqZAp">
                        <node concept="3clFbS" id="FV_t59JW1X" role="3clFbx">
                          <node concept="3cpWs6" id="FV_t59Kfkz" role="3cqZAp">
                            <node concept="1jxXqW" id="FV_t59Kfxh" role="3cqZAk" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="FV_t59KcRc" role="3clFbw">
                          <node concept="10M0yZ" id="7Ir98aEcVCN" role="2Oq$k0">
                            <ref role="1PxDUh" to="qq03:~MPSCommonDataKeys" resolve="MPSCommonDataKeys" />
                            <ref role="3cqZAo" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
                          </node>
                          <node concept="liA8E" id="FV_t59Kf5t" role="2OqNvi">
                            <ref role="37wK5l" to="qkt:~DataKey.is(java.lang.String)" resolve="is" />
                            <node concept="37vLTw" id="FV_t59Kfbw" role="37wK5m">
                              <ref role="3cqZAo" node="FV_t59JVNC" resolve="key" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs6" id="FV_t59KfJ5" role="3cqZAp">
                        <node concept="10Nm6u" id="FV_t59KfQ0" role="3cqZAk" />
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="FV_t59JVNI" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="FV_t59JG85" role="37wK5m">
              <ref role="3cqZAo" node="FV_t59JFNy" resolve="dd" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1QHqEK" id="FV_t59IIeT" role="3cqZAp">
        <node concept="1QHqEC" id="FV_t59IIeV" role="1QHqEI">
          <node concept="3clFbS" id="FV_t59IIeX" role="1bW5cS">
            <node concept="3cpWs8" id="5UD30_PS6BM" role="3cqZAp">
              <node concept="3cpWsn" id="5UD30_PS6BN" role="3cpWs9">
                <property role="TrG5h" value="refactoring" />
                <node concept="3uibUv" id="5UD30_PS6BJ" role="1tU5fm">
                  <ref role="3uigEE" to="ge2m:4a0HOMfn9$I" resolve="IRefactoring" />
                </node>
                <node concept="2YIFZM" id="5UD30_PS98L" role="33vP2m">
                  <ref role="37wK5l" node="5UD30_PS7pb" resolve="getRefactoring" />
                  <ref role="1Pybhc" node="5UD30_PS7nL" resolve="ActionLookupUtils" />
                  <node concept="1jxXqW" id="4xB7mi2t4Y7" role="37wK5m" />
                  <node concept="2tJFMh" id="7uvxILPmWSw" role="37wK5m">
                    <node concept="ZC_QK" id="7uvxILPmWSv" role="2tJFKM">
                      <ref role="2aWVGs" to="6rzo:5UD30_PRqjh" resolve="ApplicableRefactoring" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5UD30_PS65a" role="3cqZAp">
              <node concept="3cpWsn" id="5UD30_PS65b" role="3cpWs9">
                <property role="TrG5h" value="context" />
                <node concept="3uibUv" id="5UD30_PS659" role="1tU5fm">
                  <ref role="3uigEE" to="u59o:~DefaultTransformationMenuContext" resolve="DefaultTransformationMenuContext" />
                </node>
                <node concept="2YIFZM" id="5UD30_PS65c" role="33vP2m">
                  <ref role="1Pybhc" to="u59o:~DefaultTransformationMenuContext" resolve="DefaultTransformationMenuContext" />
                  <ref role="37wK5l" to="u59o:~DefaultTransformationMenuContext.createInitialContextForCell(jetbrains.mps.openapi.editor.cells.EditorCell,java.lang.String)" resolve="createInitialContextForCell" />
                  <node concept="2OqwBi" id="5UD30_PS65d" role="37wK5m">
                    <node concept="369mXd" id="5UD30_PS65e" role="2Oq$k0" />
                    <node concept="liA8E" id="5UD30_PS65f" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorComponent.getSelectedCell()" resolve="getSelectedCell" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="5UD30_PS65g" role="37wK5m">
                    <property role="Xl_RC" value="irrelevant location" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5UD30_PRpMk" role="3cqZAp">
              <node concept="3cpWsn" id="5UD30_PRpMl" role="3cpWs9">
                <property role="TrG5h" value="item" />
                <node concept="3uibUv" id="5UD30_PRXTA" role="1tU5fm">
                  <ref role="3uigEE" to="uddc:~ActionItem" resolve="ActionItem" />
                </node>
                <node concept="2ShNRf" id="5UD30_PRpMn" role="33vP2m">
                  <node concept="1pGfFk" id="5UD30_PRWeJ" role="2ShVmc">
                    <ref role="37wK5l" to="qwun:5UD30_PS2bh" resolve="RefactoringMenuItemBase" />
                    <node concept="37vLTw" id="5UD30_PS65h" role="37wK5m">
                      <ref role="3cqZAo" node="5UD30_PS65b" resolve="context" />
                    </node>
                    <node concept="37vLTw" id="5UD30_PS6BS" role="37wK5m">
                      <ref role="3cqZAo" node="5UD30_PS6BN" resolve="refactoring" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="33NwAVMgp0Y" role="3cqZAp" />
            <node concept="3vwNmj" id="5UD30_PRrA3" role="3cqZAp">
              <node concept="2OqwBi" id="5UD30_PRrKP" role="3vwVQn">
                <node concept="37vLTw" id="5UD30_PRYzo" role="2Oq$k0">
                  <ref role="3cqZAo" node="5UD30_PRpMl" resolve="item" />
                </node>
                <node concept="liA8E" id="5UD30_PRrKW" role="2OqNvi">
                  <ref role="37wK5l" to="uddc:~ActionItem.canExecute(java.lang.String)" resolve="canExecute" />
                  <node concept="Xl_RD" id="5UD30_PRrKX" role="37wK5m">
                    <property role="Xl_RC" value="irrelevant pattern" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTw" id="FV_t59IIAu" role="ukAjM">
          <ref role="3cqZAo" node="5UD30_PRpM0" resolve="repository" />
        </node>
      </node>
      <node concept="3clFbF" id="FV_t59JGj8" role="3cqZAp">
        <node concept="2YIFZM" id="FV_t59JGq1" role="3clFbG">
          <ref role="37wK5l" to="zn9m:~Disposer.dispose(com.intellij.openapi.Disposable)" resolve="dispose" />
          <ref role="1Pybhc" to="zn9m:~Disposer" resolve="Disposer" />
          <node concept="37vLTw" id="FV_t59JGtL" role="37wK5m">
            <ref role="3cqZAo" node="FV_t59JFNy" resolve="dd" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="2aQPn0Pnjy0" role="25YQCW">
      <node concept="rbkbI" id="5UD30_PRpLS" role="1qenE9">
        <node concept="LIFWc" id="5UD30_PRpLT" role="lGtFl">
          <property role="LIFWa" value="0" />
          <property role="OXtK3" value="true" />
          <property role="p6zMq" value="0" />
          <property role="p6zMs" value="0" />
          <property role="LIFWd" value="ALIAS_EDITOR_COMPONENT" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5UD30_PS7nL">
    <property role="TrG5h" value="ActionLookupUtils" />
    <node concept="2YIFZL" id="5UD30_PS7pb" role="jymVt">
      <property role="TrG5h" value="getRefactoring" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="5UD30_PS7pe" role="3clF47">
        <node concept="3cpWs8" id="5UD30_PS7$A" role="3cqZAp">
          <node concept="3cpWsn" id="5UD30_PS7$B" role="3cpWs9">
            <property role="TrG5h" value="refactoringNode" />
            <node concept="3Tqbb2" id="5UD30_PS7$C" role="1tU5fm">
              <ref role="ehGHo" to="tpck:h0TrEE$" resolve="INamedConcept" />
            </node>
            <node concept="10QFUN" id="5UD30_PS7$D" role="33vP2m">
              <node concept="2OqwBi" id="5UD30_PS7$E" role="10QFUP">
                <node concept="37vLTw" id="5UD30_PS7$F" role="2Oq$k0">
                  <ref role="3cqZAo" node="5UD30_PS7q8" resolve="refactoringReference" />
                </node>
                <node concept="liA8E" id="5UD30_PS7$G" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                  <node concept="2OqwBi" id="4xB7mi2t5r6" role="37wK5m">
                    <node concept="37vLTw" id="5UD30_PS7$H" role="2Oq$k0">
                      <ref role="3cqZAo" node="5UD30_PS7pE" resolve="project" />
                    </node>
                    <node concept="liA8E" id="4xB7mi2t6D5" role="2OqNvi">
                      <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3Tqbb2" id="5UD30_PS7$I" role="10QFUM">
                <ref role="ehGHo" to="tpck:h0TrEE$" resolve="INamedConcept" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="10tOJLdlBWq" role="3cqZAp">
          <node concept="2OqwBi" id="10tOJLdlAwD" role="3clFbG">
            <node concept="2YIFZM" id="6CS$e10D$6c" role="2Oq$k0">
              <ref role="37wK5l" to="y38:4xB7mi2r8bh" resolve="getInstance" />
              <ref role="1Pybhc" to="y38:3dEPKBAxz0O" resolve="RefactoringAccess" />
              <node concept="37vLTw" id="4xB7mi2t6Gs" role="37wK5m">
                <ref role="3cqZAo" node="5UD30_PS7pE" resolve="project" />
              </node>
            </node>
            <node concept="liA8E" id="10tOJLdlAGd" role="2OqNvi">
              <ref role="37wK5l" to="y38:10tOJLdhm35" resolve="getRefactoringByClassName" />
              <node concept="2OqwBi" id="5UD30_PS7$W" role="37wK5m">
                <node concept="37vLTw" id="5UD30_PS7$X" role="2Oq$k0">
                  <ref role="3cqZAo" node="5UD30_PS7$B" resolve="refactoringNode" />
                </node>
                <node concept="3zqWPK" id="70OdufORg7a" role="2OqNvi">
                  <ref role="37wK5l" to="tpcu:hEwIO9y" resolve="getFqName" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5UD30_PS7os" role="1B3o_S" />
      <node concept="3uibUv" id="5UD30_PS7oW" role="3clF45">
        <ref role="3uigEE" to="ge2m:4a0HOMfn9$I" resolve="IRefactoring" />
      </node>
      <node concept="37vLTG" id="5UD30_PS7pE" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="5UD30_PS7sR" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="5UD30_PS7q8" role="3clF46">
        <property role="TrG5h" value="refactoringReference" />
        <node concept="3uibUv" id="5UD30_PS7qx" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="5UD30_PTI1m" role="jymVt">
      <property role="TrG5h" value="getIntentionId" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="5UD30_PTI1p" role="3clF47">
        <node concept="3cpWs8" id="5UD30_PTIYT" role="3cqZAp">
          <node concept="3cpWsn" id="5UD30_PTIYW" role="3cpWs9">
            <property role="TrG5h" value="intentionNode" />
            <node concept="3Tqbb2" id="5UD30_PTIYS" role="1tU5fm">
              <ref role="ehGHo" to="tp3j:2c3oNEsfcpP" resolve="BaseIntentionDeclaration" />
            </node>
            <node concept="10QFUN" id="5UD30_PTKjd" role="33vP2m">
              <node concept="2OqwBi" id="5UD30_PTJso" role="10QFUP">
                <node concept="37vLTw" id="5UD30_PTJnJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="5UD30_PTI2X" resolve="intentionReference" />
                </node>
                <node concept="liA8E" id="5UD30_PTJFF" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                  <node concept="37vLTw" id="5UD30_PTJHZ" role="37wK5m">
                    <ref role="3cqZAo" node="5UD30_PTI28" resolve="repository" />
                  </node>
                </node>
              </node>
              <node concept="3Tqbb2" id="5UD30_PTKje" role="10QFUM">
                <ref role="ehGHo" to="tp3j:2c3oNEsfcpP" resolve="BaseIntentionDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5UD30_PTKxE" role="3cqZAp">
          <node concept="2OqwBi" id="5UD30_PTKGp" role="3clFbG">
            <node concept="37vLTw" id="5UD30_PTKxC" role="2Oq$k0">
              <ref role="3cqZAo" node="5UD30_PTIYW" resolve="intentionNode" />
            </node>
            <node concept="3zqWPK" id="70OdufORg7c" role="2OqNvi">
              <ref role="37wK5l" to="tp3m:2ytFvC$HDcE" resolve="getGeneratedId" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5UD30_PTHUr" role="1B3o_S" />
      <node concept="17QB3L" id="5UD30_PTHV6" role="3clF45" />
      <node concept="37vLTG" id="5UD30_PTI28" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="5UD30_PTI27" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="5UD30_PTI2X" role="3clF46">
        <property role="TrG5h" value="intentionReference" />
        <node concept="3uibUv" id="5UD30_PTI3m" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5UD30_PTFSJ">
    <property role="TrG5h" value="InapplicableIntention_NotIncludedInMenu" />
    <node concept="3clFbS" id="5UD30_PTG0_" role="LjaKd">
      <node concept="3clFbF" id="7GARn1zMLZM" role="3cqZAp">
        <node concept="2YIFZM" id="7GARn1zMLZN" role="3clFbG">
          <ref role="1Pybhc" to="vd7r:6K07tEmWQM" resolve="UsedLanguagesUtils" />
          <ref role="37wK5l" to="vd7r:6K07tEmWSn" resolve="assertLanguageUsed" />
          <node concept="369mXd" id="7GARn1zMLZO" role="37wK5m" />
          <node concept="pHN19" id="7GARn1zMLZP" role="37wK5m">
            <node concept="2V$Bhx" id="7GARn1zMLZQ" role="2V$M_3">
              <property role="2V$B1T" value="f015c5f8-7205-4441-9cc7-dc7ef28ea903" />
              <property role="2V$B1Q" value="jetbrains.mps.lang.editor.menus.extras.testLanguage" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="7GARn1zMLTm" role="3cqZAp" />
      <node concept="3cpWs8" id="5UD30_PTNlb" role="3cqZAp">
        <node concept="3cpWsn" id="5UD30_PTNlc" role="3cpWs9">
          <property role="TrG5h" value="repository" />
          <node concept="3uibUv" id="5UD30_PTNld" role="1tU5fm">
            <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
          </node>
          <node concept="2OqwBi" id="5UD30_PTNle" role="33vP2m">
            <node concept="2OqwBi" id="5UD30_PTNlf" role="2Oq$k0">
              <node concept="369mXd" id="5UD30_PTNlg" role="2Oq$k0" />
              <node concept="liA8E" id="5UD30_PTNlh" role="2OqNvi">
                <ref role="37wK5l" to="exr9:~EditorComponent.getEditorContext()" resolve="getEditorContext" />
              </node>
            </node>
            <node concept="liA8E" id="5UD30_PTNli" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorContext.getRepository()" resolve="getRepository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1QHqEK" id="5UD30_PTSUR" role="3cqZAp">
        <node concept="1QHqEC" id="5UD30_PTSUT" role="1QHqEI">
          <node concept="3clFbS" id="5UD30_PTSUV" role="1bW5cS">
            <node concept="3cpWs8" id="5UD30_PTG4m" role="3cqZAp">
              <node concept="3cpWsn" id="5UD30_PTG4n" role="3cpWs9">
                <property role="TrG5h" value="part" />
                <node concept="3uibUv" id="1OFqWOBMjnk" role="1tU5fm">
                  <ref role="3uigEE" to="qwun:E4JlmYmYOO" resolve="AbstractIntentionMenuPart" />
                </node>
                <node concept="2ShNRf" id="5UD30_PTG5A" role="33vP2m">
                  <node concept="YeOm9" id="5UD30_PTHr6" role="2ShVmc">
                    <node concept="1Y3b0j" id="5UD30_PTHr9" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="1Y3XeK" to="qwun:E4JlmYmYOO" resolve="AbstractIntentionMenuPart" />
                      <ref role="37wK5l" to="qwun:E4JlmYmYOT" resolve="AbstractIntentionMenuPart" />
                      <node concept="3Tm1VV" id="5UD30_PTHra" role="1B3o_S" />
                      <node concept="3clFb_" id="5UD30_PTHtn" role="jymVt">
                        <property role="TrG5h" value="createItem" />
                        <property role="1EzhhJ" value="false" />
                        <node concept="3Tmbuc" id="5UD30_PTHto" role="1B3o_S" />
                        <node concept="3uibUv" id="7Bgcg3woZkG" role="3clF45">
                          <ref role="3uigEE" to="uddc:~TransformationMenuItem" resolve="TransformationMenuItem" />
                        </node>
                        <node concept="37vLTG" id="5UD30_PTHtq" role="3clF46">
                          <property role="TrG5h" value="context" />
                          <node concept="3uibUv" id="5UD30_PTHtr" role="1tU5fm">
                            <ref role="3uigEE" to="uddc:~TransformationMenuContext" resolve="TransformationMenuContext" />
                          </node>
                          <node concept="2AHcQZ" id="5UD30_PTHts" role="2AJF6D">
                            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                          </node>
                        </node>
                        <node concept="37vLTG" id="5UD30_PTHtt" role="3clF46">
                          <property role="TrG5h" value="executable" />
                          <property role="3TUv4t" value="false" />
                          <node concept="3uibUv" id="1OFqWOBMjER" role="1tU5fm">
                            <ref role="3uigEE" to="nddn:~IntentionExecutable" resolve="IntentionExecutable" />
                          </node>
                          <node concept="2AHcQZ" id="5UD30_PTHtv" role="2AJF6D">
                            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="5UD30_PTHtz" role="2AJF6D">
                          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                        </node>
                        <node concept="3clFbS" id="5UD30_PTHt_" role="3clF47">
                          <node concept="3clFbF" id="5UD30_PTNVK" role="3cqZAp">
                            <node concept="2ShNRf" id="5UD30_PTNVI" role="3clFbG">
                              <node concept="1pGfFk" id="5UD30_PTO2B" role="2ShVmc">
                                <ref role="37wK5l" to="uddc:~ActionItemBase.&lt;init&gt;()" resolve="ActionItemBase" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="5UD30_PTHtA" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                      <node concept="2YIFZM" id="5UD30_PTN5$" role="37wK5m">
                        <ref role="1Pybhc" node="5UD30_PS7nL" resolve="ActionLookupUtils" />
                        <ref role="37wK5l" node="5UD30_PTI1m" resolve="getIntentionId" />
                        <node concept="37vLTw" id="5UD30_PTNrQ" role="37wK5m">
                          <ref role="3cqZAo" node="5UD30_PTNlc" resolve="repository" />
                        </node>
                        <node concept="2tJFMh" id="7uvxILPmWSu" role="37wK5m">
                          <node concept="ZC_QK" id="7uvxILPmWSt" role="2tJFKM">
                            <ref role="2aWVGs" to="nht:5UD30_PTF7R" resolve="InapplicableIntention" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5UD30_PTShI" role="3cqZAp" />
            <node concept="3cpWs8" id="5UD30_PTG0J" role="3cqZAp">
              <node concept="3cpWsn" id="5UD30_PTG0K" role="3cpWs9">
                <property role="TrG5h" value="context" />
                <node concept="3uibUv" id="5UD30_PTG0L" role="1tU5fm">
                  <ref role="3uigEE" to="u59o:~DefaultTransformationMenuContext" resolve="DefaultTransformationMenuContext" />
                </node>
                <node concept="2YIFZM" id="5UD30_PTG0M" role="33vP2m">
                  <ref role="37wK5l" to="u59o:~DefaultTransformationMenuContext.createInitialContextForCell(jetbrains.mps.openapi.editor.cells.EditorCell,java.lang.String)" resolve="createInitialContextForCell" />
                  <ref role="1Pybhc" to="u59o:~DefaultTransformationMenuContext" resolve="DefaultTransformationMenuContext" />
                  <node concept="2OqwBi" id="5UD30_PTG0N" role="37wK5m">
                    <node concept="369mXd" id="5UD30_PTG0O" role="2Oq$k0" />
                    <node concept="liA8E" id="5UD30_PTG0P" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorComponent.getSelectedCell()" resolve="getSelectedCell" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="5UD30_PTG0Q" role="37wK5m">
                    <property role="Xl_RC" value="irrelevant location" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5UD30_PTOlr" role="3cqZAp" />
            <node concept="3vlDli" id="5UD30_PTOzU" role="3cqZAp">
              <node concept="2OqwBi" id="5UD30_PTPZW" role="3tpDZA">
                <node concept="2OqwBi" id="5UD30_PTP89" role="2Oq$k0">
                  <node concept="37vLTw" id="5UD30_PTOZ3" role="2Oq$k0">
                    <ref role="3cqZAo" node="5UD30_PTG4n" resolve="part" />
                  </node>
                  <node concept="liA8E" id="5UD30_PTPAf" role="2OqNvi">
                    <ref role="37wK5l" to="qwun:E4JlmYmYP4" resolve="createItems" />
                    <node concept="37vLTw" id="5UD30_PTPH9" role="37wK5m">
                      <ref role="3cqZAo" node="5UD30_PTG0K" resolve="context" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="5UD30_PTRBK" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                </node>
              </node>
              <node concept="3cmrfG" id="5UD30_PTOSs" role="3tpDZB">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTw" id="5UD30_PTT5h" role="ukAjM">
          <ref role="3cqZAo" node="5UD30_PTNlc" resolve="repository" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="2aQPn0Pnjy1" role="25YQCW">
      <node concept="rbkbI" id="5UD30_PTFU1" role="1qenE9">
        <node concept="LIFWc" id="5UD30_PTFUk" role="lGtFl">
          <property role="LIFWa" value="0" />
          <property role="OXtK3" value="true" />
          <property role="p6zMq" value="0" />
          <property role="p6zMs" value="0" />
          <property role="LIFWd" value="ALIAS_EDITOR_COMPONENT" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="7GARn1zME4P">
    <property role="TrG5h" value="ApplicableIntention_IncludedInMenu" />
    <node concept="3clFbS" id="7GARn1zME4S" role="LjaKd">
      <node concept="3clFbF" id="7GARn1zML2L" role="3cqZAp">
        <node concept="2YIFZM" id="7GARn1zML2M" role="3clFbG">
          <ref role="1Pybhc" to="vd7r:6K07tEmWQM" resolve="UsedLanguagesUtils" />
          <ref role="37wK5l" to="vd7r:6K07tEmWSn" resolve="assertLanguageUsed" />
          <node concept="369mXd" id="7GARn1zML2N" role="37wK5m" />
          <node concept="pHN19" id="7GARn1zML2O" role="37wK5m">
            <node concept="2V$Bhx" id="7GARn1zML2P" role="2V$M_3">
              <property role="2V$B1T" value="f015c5f8-7205-4441-9cc7-dc7ef28ea903" />
              <property role="2V$B1Q" value="jetbrains.mps.lang.editor.menus.extras.testLanguage" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="7GARn1zMLxo" role="3cqZAp" />
      <node concept="3cpWs8" id="7GARn1zME4T" role="3cqZAp">
        <node concept="3cpWsn" id="7GARn1zME4U" role="3cpWs9">
          <property role="TrG5h" value="repository" />
          <node concept="3uibUv" id="7GARn1zME4V" role="1tU5fm">
            <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
          </node>
          <node concept="2OqwBi" id="7GARn1zME4W" role="33vP2m">
            <node concept="2OqwBi" id="7GARn1zME4X" role="2Oq$k0">
              <node concept="369mXd" id="7GARn1zME4Y" role="2Oq$k0" />
              <node concept="liA8E" id="7GARn1zME4Z" role="2OqNvi">
                <ref role="37wK5l" to="exr9:~EditorComponent.getEditorContext()" resolve="getEditorContext" />
              </node>
            </node>
            <node concept="liA8E" id="7GARn1zME50" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorContext.getRepository()" resolve="getRepository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1QHqEK" id="7GARn1zME51" role="3cqZAp">
        <node concept="1QHqEC" id="7GARn1zME52" role="1QHqEI">
          <node concept="3clFbS" id="7GARn1zME53" role="1bW5cS">
            <node concept="3cpWs8" id="7GARn1zME54" role="3cqZAp">
              <node concept="3cpWsn" id="7GARn1zME55" role="3cpWs9">
                <property role="TrG5h" value="part" />
                <node concept="3uibUv" id="1OFqWOBMirt" role="1tU5fm">
                  <ref role="3uigEE" to="qwun:E4JlmYmYOO" resolve="AbstractIntentionMenuPart" />
                </node>
                <node concept="2ShNRf" id="7GARn1zME57" role="33vP2m">
                  <node concept="YeOm9" id="7GARn1zME58" role="2ShVmc">
                    <node concept="1Y3b0j" id="7GARn1zME59" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="1Y3XeK" to="qwun:E4JlmYmYOO" resolve="AbstractIntentionMenuPart" />
                      <ref role="37wK5l" to="qwun:E4JlmYmYOT" resolve="AbstractIntentionMenuPart" />
                      <node concept="3Tm1VV" id="7GARn1zME5a" role="1B3o_S" />
                      <node concept="3clFb_" id="7GARn1zME5b" role="jymVt">
                        <property role="TrG5h" value="createItem" />
                        <property role="1EzhhJ" value="false" />
                        <node concept="3Tmbuc" id="7GARn1zME5c" role="1B3o_S" />
                        <node concept="3uibUv" id="7Bgcg3wp0eX" role="3clF45">
                          <ref role="3uigEE" to="uddc:~TransformationMenuItem" resolve="TransformationMenuItem" />
                        </node>
                        <node concept="37vLTG" id="7GARn1zME5e" role="3clF46">
                          <property role="TrG5h" value="context" />
                          <node concept="3uibUv" id="7GARn1zME5f" role="1tU5fm">
                            <ref role="3uigEE" to="uddc:~TransformationMenuContext" resolve="TransformationMenuContext" />
                          </node>
                          <node concept="2AHcQZ" id="7GARn1zME5g" role="2AJF6D">
                            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                          </node>
                        </node>
                        <node concept="37vLTG" id="7GARn1zME5h" role="3clF46">
                          <property role="TrG5h" value="executable" />
                          <property role="3TUv4t" value="false" />
                          <node concept="3uibUv" id="1OFqWOBMiVa" role="1tU5fm">
                            <ref role="3uigEE" to="nddn:~IntentionExecutable" resolve="IntentionExecutable" />
                          </node>
                          <node concept="2AHcQZ" id="7GARn1zME5j" role="2AJF6D">
                            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="7GARn1zME5k" role="2AJF6D">
                          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                        </node>
                        <node concept="3clFbS" id="7GARn1zME5l" role="3clF47">
                          <node concept="3clFbF" id="7GARn1zME5m" role="3cqZAp">
                            <node concept="2ShNRf" id="7GARn1zME5n" role="3clFbG">
                              <node concept="1pGfFk" id="7GARn1zME5o" role="2ShVmc">
                                <ref role="37wK5l" to="uddc:~ActionItemBase.&lt;init&gt;()" resolve="ActionItemBase" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="7GARn1zME5p" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                      <node concept="2YIFZM" id="7GARn1zME5q" role="37wK5m">
                        <ref role="1Pybhc" node="5UD30_PS7nL" resolve="ActionLookupUtils" />
                        <ref role="37wK5l" node="5UD30_PTI1m" resolve="getIntentionId" />
                        <node concept="37vLTw" id="7GARn1zME5r" role="37wK5m">
                          <ref role="3cqZAo" node="7GARn1zME4U" resolve="repository" />
                        </node>
                        <node concept="2tJFMh" id="7uvxILPmWSs" role="37wK5m">
                          <node concept="ZC_QK" id="7uvxILPmWSr" role="2tJFKM">
                            <ref role="2aWVGs" to="nht:5UD30_PTDmD" resolve="ApplicableIntention" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7GARn1zME5t" role="3cqZAp" />
            <node concept="3cpWs8" id="7GARn1zME5u" role="3cqZAp">
              <node concept="3cpWsn" id="7GARn1zME5v" role="3cpWs9">
                <property role="TrG5h" value="context" />
                <node concept="3uibUv" id="7GARn1zME5w" role="1tU5fm">
                  <ref role="3uigEE" to="u59o:~DefaultTransformationMenuContext" resolve="DefaultTransformationMenuContext" />
                </node>
                <node concept="2YIFZM" id="7GARn1zME5x" role="33vP2m">
                  <ref role="37wK5l" to="u59o:~DefaultTransformationMenuContext.createInitialContextForCell(jetbrains.mps.openapi.editor.cells.EditorCell,java.lang.String)" resolve="createInitialContextForCell" />
                  <ref role="1Pybhc" to="u59o:~DefaultTransformationMenuContext" resolve="DefaultTransformationMenuContext" />
                  <node concept="2OqwBi" id="7GARn1zME5y" role="37wK5m">
                    <node concept="369mXd" id="7GARn1zME5z" role="2Oq$k0" />
                    <node concept="liA8E" id="7GARn1zME5$" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorComponent.getSelectedCell()" resolve="getSelectedCell" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="7GARn1zME5_" role="37wK5m">
                    <property role="Xl_RC" value="irrelevant location" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7GARn1zME5A" role="3cqZAp" />
            <node concept="3vlDli" id="7GARn1zME5B" role="3cqZAp">
              <node concept="2OqwBi" id="7GARn1zME5C" role="3tpDZA">
                <node concept="2OqwBi" id="7GARn1zME5D" role="2Oq$k0">
                  <node concept="37vLTw" id="7GARn1zME5E" role="2Oq$k0">
                    <ref role="3cqZAo" node="7GARn1zME55" resolve="part" />
                  </node>
                  <node concept="liA8E" id="7GARn1zME5F" role="2OqNvi">
                    <ref role="37wK5l" to="qwun:E4JlmYmYP4" resolve="createItems" />
                    <node concept="37vLTw" id="7GARn1zME5G" role="37wK5m">
                      <ref role="3cqZAo" node="7GARn1zME5v" resolve="context" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="7GARn1zME5H" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                </node>
              </node>
              <node concept="3cmrfG" id="7GARn1zMEwI" role="3tpDZB">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTw" id="7GARn1zME5J" role="ukAjM">
          <ref role="3cqZAo" node="7GARn1zME4U" resolve="repository" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="2aQPn0Pnjy2" role="25YQCW">
      <node concept="rbkbI" id="7GARn1zME4Q" role="1qenE9">
        <node concept="LIFWc" id="7GARn1zME4R" role="lGtFl">
          <property role="LIFWa" value="0" />
          <property role="OXtK3" value="true" />
          <property role="p6zMq" value="0" />
          <property role="p6zMs" value="0" />
          <property role="LIFWd" value="ALIAS_EDITOR_COMPONENT" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="7GARn1zOQq5">
    <property role="TrG5h" value="PluginActionMenuItemBase_InapplicableAction_CannotExecute" />
    <node concept="3clFbS" id="7GARn1zOQq8" role="LjaKd">
      <node concept="3cpWs8" id="7GARn1zOQq9" role="3cqZAp">
        <node concept="3cpWsn" id="7GARn1zOQqa" role="3cpWs9">
          <property role="TrG5h" value="repository" />
          <node concept="3uibUv" id="7GARn1zOQqb" role="1tU5fm">
            <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
          </node>
          <node concept="2OqwBi" id="7GARn1zOQqc" role="33vP2m">
            <node concept="2OqwBi" id="7GARn1zOQqd" role="2Oq$k0">
              <node concept="369mXd" id="7GARn1zOQqe" role="2Oq$k0" />
              <node concept="liA8E" id="7GARn1zOQqf" role="2OqNvi">
                <ref role="37wK5l" to="exr9:~EditorComponent.getEditorContext()" resolve="getEditorContext" />
              </node>
            </node>
            <node concept="liA8E" id="7GARn1zOQqg" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorContext.getRepository()" resolve="getRepository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="7GARn1zOQqh" role="3cqZAp" />
      <node concept="1QHqEK" id="7GARn1zOQqi" role="3cqZAp">
        <node concept="1QHqEC" id="7GARn1zOQqj" role="1QHqEI">
          <node concept="3clFbS" id="7GARn1zOQqk" role="1bW5cS">
            <node concept="3cpWs8" id="7GARn1zPwPy" role="3cqZAp">
              <node concept="3cpWsn" id="7GARn1zPwPz" role="3cpWs9">
                <property role="TrG5h" value="action" />
                <node concept="3uibUv" id="7GARn1zPwP$" role="1tU5fm">
                  <ref role="3uigEE" to="qkt:~AnAction" resolve="AnAction" />
                </node>
                <node concept="2ShNRf" id="7GARn1zPwUV" role="33vP2m">
                  <node concept="YeOm9" id="7GARn1zPxe1" role="2ShVmc">
                    <node concept="1Y3b0j" id="7GARn1zPxe4" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="1Y3XeK" to="qkt:~AnAction" resolve="AnAction" />
                      <ref role="37wK5l" to="qkt:~AnAction.&lt;init&gt;()" resolve="AnAction" />
                      <node concept="3clFb_" id="7GARn1zPxz5" role="jymVt">
                        <property role="1EzhhJ" value="false" />
                        <property role="TrG5h" value="update" />
                        <property role="DiZV1" value="false" />
                        <property role="od$2w" value="false" />
                        <node concept="3Tm1VV" id="7GARn1zPxz6" role="1B3o_S" />
                        <node concept="3cqZAl" id="7GARn1zPxz8" role="3clF45" />
                        <node concept="37vLTG" id="7GARn1zPxz9" role="3clF46">
                          <property role="TrG5h" value="e" />
                          <node concept="3uibUv" id="7GARn1zPxza" role="1tU5fm">
                            <ref role="3uigEE" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="7GARn1zPxzc" role="3clF47">
                          <node concept="3clFbF" id="7GARn1zPxzg" role="3cqZAp">
                            <node concept="3nyPlj" id="7GARn1zPxzf" role="3clFbG">
                              <ref role="37wK5l" to="qkt:~AnAction.update(com.intellij.openapi.actionSystem.AnActionEvent)" resolve="update" />
                              <node concept="37vLTw" id="7GARn1zPxze" role="37wK5m">
                                <ref role="3cqZAo" node="7GARn1zPxz9" resolve="e" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="7GARn1zPxQo" role="3cqZAp">
                            <node concept="2OqwBi" id="7GARn1zPz26" role="3clFbG">
                              <node concept="2OqwBi" id="7GARn1zPypv" role="2Oq$k0">
                                <node concept="37vLTw" id="7GARn1zPxQm" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7GARn1zPxz9" resolve="e" />
                                </node>
                                <node concept="liA8E" id="7GARn1zPyXd" role="2OqNvi">
                                  <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
                                </node>
                              </node>
                              <node concept="liA8E" id="7GARn1zPzrK" role="2OqNvi">
                                <ref role="37wK5l" to="qkt:~Presentation.setEnabled(boolean)" resolve="setEnabled" />
                                <node concept="3clFbT" id="7GARn1zPzsX" role="37wK5m">
                                  <property role="3clFbU" value="false" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="7GARn1zPxzd" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                      <node concept="3Tm1VV" id="7GARn1zPxe5" role="1B3o_S" />
                      <node concept="3clFb_" id="7GARn1zPxe7" role="jymVt">
                        <property role="1EzhhJ" value="false" />
                        <property role="TrG5h" value="actionPerformed" />
                        <property role="DiZV1" value="false" />
                        <property role="od$2w" value="false" />
                        <node concept="3Tm1VV" id="7GARn1zPxe8" role="1B3o_S" />
                        <node concept="3cqZAl" id="7GARn1zPxea" role="3clF45" />
                        <node concept="37vLTG" id="7GARn1zPxeb" role="3clF46">
                          <property role="TrG5h" value="p0" />
                          <node concept="3uibUv" id="7GARn1zPxec" role="1tU5fm">
                            <ref role="3uigEE" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="7GARn1zPxed" role="3clF47" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7GARn1zOQqr" role="3cqZAp" />
            <node concept="3cpWs8" id="7GARn1zOQqs" role="3cqZAp">
              <node concept="3cpWsn" id="7GARn1zOQqt" role="3cpWs9">
                <property role="TrG5h" value="context" />
                <node concept="3uibUv" id="7GARn1zOQqu" role="1tU5fm">
                  <ref role="3uigEE" to="u59o:~DefaultTransformationMenuContext" resolve="DefaultTransformationMenuContext" />
                </node>
                <node concept="2YIFZM" id="7GARn1zOQqv" role="33vP2m">
                  <ref role="1Pybhc" to="u59o:~DefaultTransformationMenuContext" resolve="DefaultTransformationMenuContext" />
                  <ref role="37wK5l" to="u59o:~DefaultTransformationMenuContext.createInitialContextForCell(jetbrains.mps.openapi.editor.cells.EditorCell,java.lang.String)" resolve="createInitialContextForCell" />
                  <node concept="2OqwBi" id="7GARn1zOQqw" role="37wK5m">
                    <node concept="369mXd" id="7GARn1zOQqx" role="2Oq$k0" />
                    <node concept="liA8E" id="7GARn1zOQqy" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorComponent.getSelectedCell()" resolve="getSelectedCell" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="7GARn1zOQqz" role="37wK5m">
                    <property role="Xl_RC" value="irrelevant location" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7GARn1zOQq$" role="3cqZAp" />
            <node concept="3cpWs8" id="7GARn1zOQq_" role="3cqZAp">
              <node concept="3cpWsn" id="7GARn1zOQqA" role="3cpWs9">
                <property role="TrG5h" value="item" />
                <node concept="3uibUv" id="7GARn1zOQqB" role="1tU5fm">
                  <ref role="3uigEE" to="uddc:~ActionItem" resolve="ActionItem" />
                </node>
                <node concept="2ShNRf" id="7GARn1zOQqC" role="33vP2m">
                  <node concept="1pGfFk" id="7GARn1zOQqD" role="2ShVmc">
                    <ref role="37wK5l" to="qwun:20Jj4S2CkM2" resolve="PluginActionMenuItemBase" />
                    <node concept="37vLTw" id="7GARn1zPAye" role="37wK5m">
                      <ref role="3cqZAo" node="7GARn1zOQqt" resolve="context" />
                    </node>
                    <node concept="37vLTw" id="7GARn1zPztX" role="37wK5m">
                      <ref role="3cqZAo" node="7GARn1zPwPz" resolve="action" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3vFxKo" id="7GARn1zPmRe" role="3cqZAp">
              <node concept="2OqwBi" id="7GARn1zOQqH" role="3vFALc">
                <node concept="37vLTw" id="7GARn1zOQqI" role="2Oq$k0">
                  <ref role="3cqZAo" node="7GARn1zOQqA" resolve="item" />
                </node>
                <node concept="liA8E" id="7GARn1zOQqJ" role="2OqNvi">
                  <ref role="37wK5l" to="uddc:~ActionItem.canExecute(java.lang.String)" resolve="canExecute" />
                  <node concept="Xl_RD" id="7GARn1zOQqK" role="37wK5m">
                    <property role="Xl_RC" value="irrelevant pattern" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTw" id="7GARn1zOQqL" role="ukAjM">
          <ref role="3cqZAo" node="7GARn1zOQqa" resolve="repository" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="2aQPn0Pnjy3" role="25YQCW">
      <node concept="rbkbI" id="7GARn1zOQq6" role="1qenE9">
        <node concept="LIFWc" id="7GARn1zOQq7" role="lGtFl">
          <property role="LIFWa" value="0" />
          <property role="OXtK3" value="true" />
          <property role="p6zMq" value="0" />
          <property role="p6zMs" value="0" />
          <property role="LIFWd" value="ALIAS_EDITOR_COMPONENT" />
        </node>
      </node>
    </node>
  </node>
</model>

