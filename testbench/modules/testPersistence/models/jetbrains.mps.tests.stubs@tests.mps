<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:04832cc3-1e0b-4e83-a27f-45bcca72211d(jetbrains.mps.tests.stubs@tests)">
  <persistence version="9" />
  <languages>
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="6" />
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="acfc188d-d5d6-4598-b370-6f4a983f05b2" name="jetbrains.mps.baseLanguage.methodReferences" version="0" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
  </languages>
  <imports>
    <import index="4rfc" ref="r:3cf16c72-eb63-43af-9e50-31efa02178ea(jetbrains.mps.baseLanguage.unitTest.runtime)" />
    <import index="rbkg" ref="49808fad-9d41-4b96-83fa-9231640f6b2b/java:org.junit.jupiter.api.extension(JUnit/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="w0gx" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project.structure.modules(MPS.Core/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="1ctc" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.stream(JDK/)" />
    <import index="fyhk" ref="920eaa0e-ecca-46bc-bee7-4e5c59213dd6/java:jetbrains.mps(Testbench/)" />
    <import index="83ig" ref="920eaa0e-ecca-46bc-bee7-4e5c59213dd6/java:jetbrains.mps.testbench(Testbench/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="ew0j" ref="920eaa0e-ecca-46bc-bee7-4e5c59213dd6/java:jetbrains.mps.tool.environment(Testbench/)" implicit="true" />
    <import index="wyuk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.components(MPS.Core/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="7485977462274819189" name="jetbrains.mps.baseLanguage.structure.FormatOperation" flags="ng" index="2cAKMz">
        <child id="7485977462274819664" name="arguments" index="2cAKU6" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1153417849900" name="jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression" flags="nn" index="2d3UOw" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
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
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123135" name="body" index="3clF47" />
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
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
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
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="446c26eb-2b7b-4bf0-9b35-f83fa582753e" name="jetbrains.mps.lang.modelapi">
      <concept id="361130699826193249" name="jetbrains.mps.lang.modelapi.structure.ModulePointer" flags="ng" index="1dCxOk">
        <property id="1863527487546097500" name="moduleId" index="1XweGW" />
        <property id="1863527487545993577" name="moduleName" index="1XxBO9" />
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
        <child id="8243879142738613219" name="beforeTest" index="1KhZu4" />
      </concept>
      <concept id="1171931858461" name="jetbrains.mps.baseLanguage.unitTest.structure.TestMethodList" flags="ng" index="3s_gsd">
        <child id="1171931858462" name="testMethod" index="3s_gse" />
      </concept>
      <concept id="1171981022339" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" flags="nn" index="3vwNmj">
        <child id="1171981057159" name="condition" index="3vwVQn" />
      </concept>
      <concept id="1171983834376" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertFalse" flags="nn" index="3vFxKo">
        <child id="1171983854940" name="condition" index="3vFALc" />
      </concept>
      <concept id="1172073500303" name="jetbrains.mps.baseLanguage.unitTest.structure.Message" flags="ng" index="3_1$Yv">
        <child id="1172073511101" name="message" index="3_1BAH" />
      </concept>
      <concept id="1172075514136" name="jetbrains.mps.baseLanguage.unitTest.structure.MessageHolder" flags="ngI" index="3_9gw8">
        <child id="1172075534298" name="message" index="3_9lra" />
      </concept>
      <concept id="8243879142738608185" name="jetbrains.mps.baseLanguage.unitTest.structure.BeforeTest" flags="in" index="1KhYhu" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1678062499342629858" name="jetbrains.mps.lang.smodel.structure.ModuleRefExpression" flags="ng" index="37shsh">
        <child id="1678062499342629861" name="moduleId" index="37shsm" />
      </concept>
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
  </registry>
  <node concept="3s_ewN" id="4B6mtDMVFqV">
    <property role="3s_ewP" value="CheckMPSStubModulesNotEmpty" />
    <node concept="312cEg" id="4B6mtDMVXDu" role="jymVt">
      <property role="TrG5h" value="myRepo" />
      <node concept="3Tm6S6" id="4B6mtDMVXDv" role="1B3o_S" />
      <node concept="3uibUv" id="4B6mtDMVWVK" role="1tU5fm">
        <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
      </node>
    </node>
    <node concept="3Tm1VV" id="4B6mtDMVFqW" role="1B3o_S" />
    <node concept="3s_gsd" id="4B6mtDMVFqX" role="3s_ewO">
      <node concept="3s$Bmu" id="4B6mtDMVU3i" role="3s_gse">
        <property role="3s$Bm0" value="mps37248" />
        <node concept="3cqZAl" id="4B6mtDMVU3j" role="3clF45" />
        <node concept="3Tm1VV" id="4B6mtDMVU3k" role="1B3o_S" />
        <node concept="3clFbS" id="4B6mtDMVU3l" role="3clF47">
          <node concept="3clFbF" id="3Gvyd6Joh2n" role="3cqZAp">
            <node concept="2OqwBi" id="3Gvyd6JokrI" role="3clFbG">
              <node concept="2OqwBi" id="3Gvyd6JohIO" role="2Oq$k0">
                <node concept="37vLTw" id="3Gvyd6Joh2l" role="2Oq$k0">
                  <ref role="3cqZAo" node="4B6mtDMVXDu" resolve="myRepo" />
                </node>
                <node concept="liA8E" id="3Gvyd6Jok2S" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
                </node>
              </node>
              <node concept="liA8E" id="3Gvyd6JokP$" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
                <node concept="1bVj0M" id="3Gvyd6Jol8a" role="37wK5m">
                  <node concept="3clFbS" id="3Gvyd6Jol8d" role="1bW5cS">
                    <node concept="3SKdUt" id="4B6mtDMXjqc" role="3cqZAp">
                      <node concept="1PaTwC" id="4B6mtDMXjqd" role="1aUNEU">
                        <node concept="3oM_SD" id="4B6mtDMXk4w" role="1PaTwD">
                          <property role="3oM_SC" value="few" />
                        </node>
                        <node concept="3oM_SD" id="4B6mtDMXk4I" role="1PaTwD">
                          <property role="3oM_SC" value="arbitrary" />
                        </node>
                        <node concept="3oM_SD" id="4B6mtDMXk4S" role="1PaTwD">
                          <property role="3oM_SC" value="r/o" />
                        </node>
                        <node concept="3oM_SD" id="4B6mtDMXk58" role="1PaTwD">
                          <property role="3oM_SC" value="stub" />
                        </node>
                        <node concept="3oM_SD" id="4B6mtDMXk5d" role="1PaTwD">
                          <property role="3oM_SC" value="modules" />
                        </node>
                        <node concept="3oM_SD" id="4B6mtDMXk5p" role="1PaTwD">
                          <property role="3oM_SC" value="just" />
                        </node>
                        <node concept="3oM_SD" id="4B6mtDMXk5A" role="1PaTwD">
                          <property role="3oM_SC" value="to" />
                        </node>
                        <node concept="3oM_SD" id="4B6mtDMXk5I" role="1PaTwD">
                          <property role="3oM_SC" value="be" />
                        </node>
                        <node concept="3oM_SD" id="4B6mtDMXk5R" role="1PaTwD">
                          <property role="3oM_SC" value="sure" />
                        </node>
                        <node concept="3oM_SD" id="4B6mtDMXk67" role="1PaTwD">
                          <property role="3oM_SC" value="there" />
                        </node>
                        <node concept="3oM_SD" id="4B6mtDMXk6o" role="1PaTwD">
                          <property role="3oM_SC" value="are" />
                        </node>
                        <node concept="3oM_SD" id="4B6mtDMXk6E" role="1PaTwD">
                          <property role="3oM_SC" value="some" />
                        </node>
                        <node concept="3oM_SD" id="4B6mtDMXk6X" role="1PaTwD">
                          <property role="3oM_SC" value="in" />
                        </node>
                        <node concept="3oM_SD" id="4B6mtDMXk7b" role="1PaTwD">
                          <property role="3oM_SC" value="the" />
                        </node>
                        <node concept="3oM_SD" id="4B6mtDMXk7q" role="1PaTwD">
                          <property role="3oM_SC" value="repository" />
                        </node>
                      </node>
                    </node>
                    <node concept="2Hmddi" id="4B6mtDMW073" role="3cqZAp">
                      <node concept="2OqwBi" id="4B6mtDMVZQy" role="2Hmdds">
                        <node concept="37shsh" id="4B6mtDMVZA$" role="2Oq$k0">
                          <node concept="1dCxOk" id="4B6mtDMVZCo" role="37shsm">
                            <property role="1XweGW" value="72acac8d-4dd3-4bac-a8ea-ee97162c24e8" />
                            <property role="1XxBO9" value="JAXB" />
                          </node>
                        </node>
                        <node concept="liA8E" id="4B6mtDMVZYm" role="2OqNvi">
                          <ref role="37wK5l" to="lui2:~SModuleReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                          <node concept="37vLTw" id="4B6mtDMW01L" role="37wK5m">
                            <ref role="3cqZAo" node="4B6mtDMVXDu" resolve="myRepo" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2Hmddi" id="4B6mtDMW0bq" role="3cqZAp">
                      <node concept="2OqwBi" id="4B6mtDMW0br" role="2Hmdds">
                        <node concept="37shsh" id="4B6mtDMW0bs" role="2Oq$k0">
                          <node concept="1dCxOk" id="4B6mtDMW0lt" role="37shsm">
                            <property role="1XweGW" value="6354ebe7-c22a-4a0f-ac54-50b52ab9b065" />
                            <property role="1XxBO9" value="JDK" />
                          </node>
                        </node>
                        <node concept="liA8E" id="4B6mtDMW0bu" role="2OqNvi">
                          <ref role="37wK5l" to="lui2:~SModuleReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                          <node concept="37vLTw" id="4B6mtDMW0bv" role="37wK5m">
                            <ref role="3cqZAo" node="4B6mtDMVXDu" resolve="myRepo" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2Hmddi" id="4B6mtDMW0bG" role="3cqZAp">
                      <node concept="2OqwBi" id="4B6mtDMW0bH" role="2Hmdds">
                        <node concept="37shsh" id="4B6mtDMW0bI" role="2Oq$k0">
                          <node concept="1dCxOk" id="4B6mtDMW0u4" role="37shsm">
                            <property role="1XweGW" value="f647e48e-4568-4f4c-b48a-1546492c6a2e" />
                            <property role="1XxBO9" value="org.jdom" />
                          </node>
                        </node>
                        <node concept="liA8E" id="4B6mtDMW0bK" role="2OqNvi">
                          <ref role="37wK5l" to="lui2:~SModuleReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                          <node concept="37vLTw" id="4B6mtDMW0bL" role="37wK5m">
                            <ref role="3cqZAo" node="4B6mtDMVXDu" resolve="myRepo" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2Hmddi" id="4B6mtDMW0eH" role="3cqZAp">
                      <node concept="2OqwBi" id="4B6mtDMW0eI" role="2Hmdds">
                        <node concept="37shsh" id="4B6mtDMW0eJ" role="2Oq$k0">
                          <node concept="1dCxOk" id="4B6mtDMW0Qi" role="37shsm">
                            <property role="1XweGW" value="920eaa0e-ecca-46bc-bee7-4e5c59213dd6" />
                            <property role="1XxBO9" value="Testbench" />
                          </node>
                        </node>
                        <node concept="liA8E" id="4B6mtDMW0eL" role="2OqNvi">
                          <ref role="37wK5l" to="lui2:~SModuleReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                          <node concept="37vLTw" id="4B6mtDMW0eM" role="37wK5m">
                            <ref role="3cqZAo" node="4B6mtDMVXDu" resolve="myRepo" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="4B6mtDMW0Sl" role="3cqZAp" />
                    <node concept="3cpWs8" id="4B6mtDMW1u8" role="3cqZAp">
                      <node concept="3cpWsn" id="4B6mtDMW1ub" role="3cpWs9">
                        <property role="TrG5h" value="stubModuleCount" />
                        <node concept="10Oyi0" id="4B6mtDMW1u6" role="1tU5fm" />
                        <node concept="3cmrfG" id="4B6mtDMW1G2" role="33vP2m">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                    </node>
                    <node concept="1DcWWT" id="4B6mtDMW2EF" role="3cqZAp">
                      <node concept="3clFbS" id="4B6mtDMW2EI" role="2LFqv$">
                        <node concept="3clFbJ" id="4B6mtDMW2Py" role="3cqZAp">
                          <node concept="1Wc70l" id="4B6mtDMW5w5" role="3clFbw">
                            <node concept="2ZW3vV" id="4B6mtDMW3kP" role="3uHU7B">
                              <node concept="3uibUv" id="4B6mtDMW3_Q" role="2ZW6by">
                                <ref role="3uigEE" to="z1c3:~Solution" resolve="Solution" />
                              </node>
                              <node concept="37vLTw" id="4B6mtDMW2UL" role="2ZW6bz">
                                <ref role="3cqZAo" node="4B6mtDMW2EJ" resolve="m" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="4B6mtDMW8jX" role="3uHU7w">
                              <node concept="1eOMI4" id="4B6mtDMW9On" role="2Oq$k0">
                                <node concept="10QFUN" id="4B6mtDMW9bE" role="1eOMHV">
                                  <node concept="3uibUv" id="4B6mtDMW9Uk" role="10QFUM">
                                    <ref role="3uigEE" to="w0gx:~SolutionDescriptor" resolve="SolutionDescriptor" />
                                  </node>
                                  <node concept="2OqwBi" id="4B6mtDMWb04" role="10QFUP">
                                    <node concept="1eOMI4" id="4B6mtDMW9lw" role="2Oq$k0">
                                      <node concept="10QFUN" id="4B6mtDMW6fi" role="1eOMHV">
                                        <node concept="3uibUv" id="4B6mtDMW6k7" role="10QFUM">
                                          <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                                        </node>
                                        <node concept="37vLTw" id="4B6mtDMW6sA" role="10QFUP">
                                          <ref role="3cqZAo" node="4B6mtDMW2EJ" resolve="m" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="4B6mtDMWbrq" role="2OqNvi">
                                      <ref role="37wK5l" to="z1c3:~AbstractModule.getModuleDescriptor()" resolve="getModuleDescriptor" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="liA8E" id="4B6mtDMWcth" role="2OqNvi">
                                <ref role="37wK5l" to="w0gx:~SolutionDescriptor.isReadOnlyStubModule()" resolve="isReadOnlyStubModule" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbS" id="4B6mtDMW2P$" role="3clFbx">
                            <node concept="3clFbF" id="4B6mtDMWcG1" role="3cqZAp">
                              <node concept="3uNrnE" id="4B6mtDMWfIR" role="3clFbG">
                                <node concept="37vLTw" id="4B6mtDMWfIT" role="2$L3a6">
                                  <ref role="3cqZAo" node="4B6mtDMW1ub" resolve="stubModuleCount" />
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="4B6mtDMWqox" role="3cqZAp">
                              <node concept="3cpWsn" id="4B6mtDMWqoy" role="3cpWs9">
                                <property role="TrG5h" value="stubModels" />
                                <node concept="3uibUv" id="4B6mtDMWqls" role="1tU5fm">
                                  <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                                  <node concept="3uibUv" id="4B6mtDMWqlv" role="11_B2D">
                                    <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="4B6mtDMWqoz" role="33vP2m">
                                  <node concept="37vLTw" id="4B6mtDMWqo$" role="2Oq$k0">
                                    <ref role="3cqZAo" node="4B6mtDMW2EJ" resolve="m" />
                                  </node>
                                  <node concept="liA8E" id="4B6mtDMWqo_" role="2OqNvi">
                                    <ref role="37wK5l" to="lui2:~SModule.getModels(java.util.function.Predicate)" resolve="getModels" />
                                    <node concept="37Ijox" id="4B6mtDMWqoA" role="37wK5m">
                                      <ref role="37Ijqf" to="w1kc:~SModelStereotype.isStubModel(org.jetbrains.mps.openapi.model.SModel)" resolve="isStubModel" />
                                      <node concept="2FaPjH" id="4B6mtDMWqoB" role="wWaWy">
                                        <node concept="3uibUv" id="4B6mtDMWqoC" role="2FaQuo">
                                          <ref role="3uigEE" to="w1kc:~SModelStereotype" resolve="SModelStereotype" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3vFxKo" id="4B6mtDMWvEZ" role="3cqZAp">
                              <node concept="2OqwBi" id="4B6mtDMWwTk" role="3vFALc">
                                <node concept="37vLTw" id="4B6mtDMWweH" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4B6mtDMWqoy" resolve="stubModels" />
                                </node>
                                <node concept="liA8E" id="4B6mtDMWysk" role="2OqNvi">
                                  <ref role="37wK5l" to="33ny:~Collection.isEmpty()" resolve="isEmpty" />
                                </node>
                              </node>
                              <node concept="3_1$Yv" id="4B6mtDMWDxP" role="3_9lra">
                                <node concept="2OqwBi" id="4B6mtDMWH0p" role="3_1BAH">
                                  <node concept="Xl_RD" id="4B6mtDMWE41" role="2Oq$k0">
                                    <property role="Xl_RC" value="No stub models in module %s, wrong jars?" />
                                  </node>
                                  <node concept="2cAKMz" id="4B6mtDMWIjz" role="2OqNvi">
                                    <node concept="2OqwBi" id="4B6mtDMWIDt" role="2cAKU6">
                                      <node concept="37vLTw" id="4B6mtDMWItD" role="2Oq$k0">
                                        <ref role="3cqZAo" node="4B6mtDMW2EJ" resolve="m" />
                                      </node>
                                      <node concept="liA8E" id="4B6mtDMWIUG" role="2OqNvi">
                                        <ref role="37wK5l" to="lui2:~SModule.getModuleName()" resolve="getModuleName" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3vwNmj" id="4B6mtDMWV1M" role="3cqZAp">
                              <node concept="2OqwBi" id="4B6mtDMWMlP" role="3vwVQn">
                                <node concept="2OqwBi" id="4B6mtDMWKF6" role="2Oq$k0">
                                  <node concept="37vLTw" id="4B6mtDMWJOZ" role="2Oq$k0">
                                    <ref role="3cqZAo" node="4B6mtDMWqoy" resolve="stubModels" />
                                  </node>
                                  <node concept="liA8E" id="4B6mtDMWLNt" role="2OqNvi">
                                    <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="4B6mtDMWNXt" role="2OqNvi">
                                  <ref role="37wK5l" to="1ctc:~Stream.anyMatch(java.util.function.Predicate)" resolve="anyMatch" />
                                  <node concept="1bVj0M" id="4B6mtDMWOhP" role="37wK5m">
                                    <node concept="gl6BB" id="4B6mtDMWOi7" role="1bW2Oz">
                                      <property role="TrG5h" value="s" />
                                      <node concept="2jxLKc" id="4B6mtDMWOi8" role="1tU5fm" />
                                    </node>
                                    <node concept="3clFbS" id="4B6mtDMWOib" role="1bW5cS">
                                      <node concept="3clFbF" id="4B6mtDMWOZv" role="3cqZAp">
                                        <node concept="2OqwBi" id="4B6mtDMWS_p" role="3clFbG">
                                          <node concept="2OqwBi" id="4B6mtDMWQA6" role="2Oq$k0">
                                            <node concept="2OqwBi" id="4B6mtDMWPim" role="2Oq$k0">
                                              <node concept="37vLTw" id="4B6mtDMWOZu" role="2Oq$k0">
                                                <ref role="3cqZAo" node="4B6mtDMWOi7" resolve="s" />
                                              </node>
                                              <node concept="liA8E" id="4B6mtDMWPRW" role="2OqNvi">
                                                <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
                                              </node>
                                            </node>
                                            <node concept="liA8E" id="4B6mtDMWS4u" role="2OqNvi">
                                              <ref role="37wK5l" to="wyt6:~Iterable.iterator()" resolve="iterator" />
                                            </node>
                                          </node>
                                          <node concept="liA8E" id="4B6mtDMWTVP" role="2OqNvi">
                                            <ref role="37wK5l" to="33ny:~Iterator.hasNext()" resolve="hasNext" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3_1$Yv" id="4B6mtDMX0$h" role="3_9lra">
                                <node concept="2OqwBi" id="4B6mtDMX3v_" role="3_1BAH">
                                  <node concept="Xl_RD" id="4B6mtDMX179" role="2Oq$k0">
                                    <property role="Xl_RC" value="Empty stub models in module %s" />
                                  </node>
                                  <node concept="2cAKMz" id="4B6mtDMX4Zu" role="2OqNvi">
                                    <node concept="2OqwBi" id="4B6mtDMX5Pj" role="2cAKU6">
                                      <node concept="37vLTw" id="4B6mtDMX5z_" role="2Oq$k0">
                                        <ref role="3cqZAo" node="4B6mtDMW2EJ" resolve="m" />
                                      </node>
                                      <node concept="liA8E" id="4B6mtDMX6sx" role="2OqNvi">
                                        <ref role="37wK5l" to="lui2:~SModule.getModuleName()" resolve="getModuleName" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWsn" id="4B6mtDMW2EJ" role="1Duv9x">
                        <property role="TrG5h" value="m" />
                        <node concept="3uibUv" id="4B6mtDMW2EN" role="1tU5fm">
                          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="4B6mtDMW2EO" role="1DdaDG">
                        <node concept="37vLTw" id="4B6mtDMW2EP" role="2Oq$k0">
                          <ref role="3cqZAo" node="4B6mtDMVXDu" resolve="myRepo" />
                        </node>
                        <node concept="liA8E" id="4B6mtDMW2EQ" role="2OqNvi">
                          <ref role="37wK5l" to="lui2:~SRepository.getModules()" resolve="getModules" />
                        </node>
                      </node>
                    </node>
                    <node concept="3SKdUt" id="4B6mtDMXo6q" role="3cqZAp">
                      <node concept="1PaTwC" id="4B6mtDMXo6r" role="1aUNEU">
                        <node concept="3oM_SD" id="4B6mtDMXu7G" role="1PaTwD">
                          <property role="3oM_SC" value="as" />
                        </node>
                        <node concept="3oM_SD" id="4B6mtDMXu7O" role="1PaTwD">
                          <property role="3oM_SC" value="of" />
                        </node>
                        <node concept="3oM_SD" id="4B6mtDMXu7S" role="1PaTwD">
                          <property role="3oM_SC" value="this" />
                        </node>
                        <node concept="3oM_SD" id="4B6mtDMXu7W" role="1PaTwD">
                          <property role="3oM_SC" value="writing," />
                        </node>
                        <node concept="3oM_SD" id="4B6mtDMXu8j" role="1PaTwD">
                          <property role="3oM_SC" value="there" />
                        </node>
                        <node concept="3oM_SD" id="4B6mtDMXu8p" role="1PaTwD">
                          <property role="3oM_SC" value="are" />
                        </node>
                        <node concept="3oM_SD" id="4B6mtDMXu8A" role="1PaTwD">
                          <property role="3oM_SC" value="25" />
                        </node>
                        <node concept="3oM_SD" id="4B6mtDMXu8O" role="1PaTwD">
                          <property role="3oM_SC" value="modules" />
                        </node>
                        <node concept="3oM_SD" id="4B6mtDMXu9x" role="1PaTwD">
                          <property role="3oM_SC" value="with" />
                        </node>
                        <node concept="3oM_SD" id="4B6mtDMXu9F" role="1PaTwD">
                          <property role="3oM_SC" value="&lt;readOnlyStubs/&gt;," />
                        </node>
                        <node concept="3oM_SD" id="xpDudkc0cR" role="1PaTwD">
                          <property role="3oM_SC" value="although" />
                        </node>
                        <node concept="3oM_SD" id="xpDudkc18C" role="1PaTwD">
                          <property role="3oM_SC" value="not" />
                        </node>
                        <node concept="3oM_SD" id="xpDudkc1t$" role="1PaTwD">
                          <property role="3oM_SC" value="of" />
                        </node>
                        <node concept="3oM_SD" id="xpDudkc1tM" role="1PaTwD">
                          <property role="3oM_SC" value="them" />
                        </node>
                        <node concept="3oM_SD" id="xpDudkc1v9" role="1PaTwD">
                          <property role="3oM_SC" value="are" />
                        </node>
                        <node concept="3oM_SD" id="xpDudkc1Nh" role="1PaTwD">
                          <property role="3oM_SC" value="visible" />
                        </node>
                        <node concept="3oM_SD" id="xpDudkc2c3" role="1PaTwD">
                          <property role="3oM_SC" value="for" />
                        </node>
                        <node concept="3oM_SD" id="xpDudkc2cl" role="1PaTwD">
                          <property role="3oM_SC" value="tests." />
                        </node>
                      </node>
                    </node>
                    <node concept="3vwNmj" id="4B6mtDMWgcj" role="3cqZAp">
                      <node concept="2d3UOw" id="xpDudkc2Nm" role="3vwVQn">
                        <node concept="37vLTw" id="4B6mtDMWgnh" role="3uHU7B">
                          <ref role="3cqZAo" node="4B6mtDMW1ub" resolve="stubModuleCount" />
                        </node>
                        <node concept="3cmrfG" id="4B6mtDMXkFH" role="3uHU7w">
                          <property role="3cmrfH" value="20" />
                        </node>
                      </node>
                      <node concept="3_1$Yv" id="1a$v7citPjw" role="3_9lra">
                        <node concept="2OqwBi" id="1a$v7citSUR" role="3_1BAH">
                          <node concept="Xl_RD" id="1a$v7citPBm" role="2Oq$k0">
                            <property role="Xl_RC" value="Found %d r/o stub modules, expected at least 20" />
                          </node>
                          <node concept="2cAKMz" id="1a$v7citUoy" role="2OqNvi">
                            <node concept="37vLTw" id="1a$v7citUFT" role="2cAKU6">
                              <ref role="3cqZAo" node="4B6mtDMW1ub" resolve="stubModuleCount" />
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
    </node>
    <node concept="3uibUv" id="4B6mtDMXWSE" role="1zkMxy">
      <ref role="3uigEE" to="83ig:~EnvironmentAwareTestCase" resolve="EnvironmentAwareTestCase" />
    </node>
    <node concept="2AHcQZ" id="4B6mtDMVPpF" role="2AJF6D">
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
    <node concept="1KhYhu" id="4B6mtDMVU4$" role="1KhZu4">
      <node concept="3clFbS" id="4B6mtDMVU4_" role="2VODD2">
        <node concept="3clFbF" id="4B6mtDMVXnK" role="3cqZAp">
          <node concept="37vLTI" id="4B6mtDMVXnM" role="3clFbG">
            <node concept="2OqwBi" id="4B6mtDMVX2G" role="37vLTx">
              <node concept="2OqwBi" id="4B6mtDMVX2H" role="2Oq$k0">
                <node concept="37vLTw" id="4B6mtDMVX2I" role="2Oq$k0">
                  <ref role="3cqZAo" to="83ig:~EnvironmentAwareTestCase.myEnvironment" resolve="myEnvironment" />
                </node>
                <node concept="liA8E" id="4B6mtDMVX2J" role="2OqNvi">
                  <ref role="37wK5l" to="ew0j:~Environment.getPlatform()" resolve="getPlatform" />
                </node>
              </node>
              <node concept="liA8E" id="4B6mtDMVX2K" role="2OqNvi">
                <ref role="37wK5l" to="wyuk:~ComponentHost.findComponent(java.lang.Class)" resolve="findComponent" />
                <node concept="3VsKOn" id="4B6mtDMVX2L" role="37wK5m">
                  <ref role="3VsUkX" to="w1kc:~MPSModuleRepository" resolve="MPSModuleRepository" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="4B6mtDMVXnQ" role="37vLTJ">
              <ref role="3cqZAo" node="4B6mtDMVXDu" resolve="myRepo" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

