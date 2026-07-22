<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:4201854c-2b50-4609-9031-1ebdf87d3bf7(JavaCompilationXmlConflict.test.test@tests)">
  <persistence version="9" />
  <languages>
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="-1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="-1" />
    <use id="9f846aef-4e4a-4a84-828e-7e83fe2697f2" name="jetbrains.mps.build.mps.testManifest" version="-1" />
  </languages>
  <imports>
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="83ig" ref="920eaa0e-ecca-46bc-bee7-4e5c59213dd6/java:jetbrains.mps.testbench(Testbench/)" />
    <import index="fyhk" ref="920eaa0e-ecca-46bc-bee7-4e5c59213dd6/java:jetbrains.mps(Testbench/)" />
    <import index="ew0j" ref="920eaa0e-ecca-46bc-bee7-4e5c59213dd6/java:jetbrains.mps.tool.environment(Testbench/)" />
    <import index="rjhg" ref="49808fad-9d41-4b96-83fa-9231640f6b2b/java:org.junit(JUnit/)" />
    <import index="vqh0" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.make(MPS.Core/)" />
    <import index="mk8z" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.progress(MPS.Core/)" />
    <import index="et5u" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.messages(MPS.Core/)" />
    <import index="wwqx" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.logging(MPS.Core/)" />
    <import index="rbkg" ref="49808fad-9d41-4b96-83fa-9231640f6b2b/java:org.junit.jupiter.api.extension(JUnit/)" />
    <import index="4rfc" ref="r:3cf16c72-eb63-43af-9e50-31efa02178ea(jetbrains.mps.baseLanguage.unitTest.runtime)" />
    <import index="jtsr" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.project(MPS.OpenAPI/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
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
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA">
        <property id="6468716278899126575" name="isVolatile" index="2dlcS1" />
        <property id="6468716278899125786" name="isTransient" index="2dld4O" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
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
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
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
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
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
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
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
    <language id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest">
      <concept id="1171931690126" name="jetbrains.mps.baseLanguage.unitTest.structure.TestMethod" flags="ig" index="3s$Bmu">
        <property id="1171931690128" name="methodName" index="3s$Bm0" />
      </concept>
      <concept id="1171931851043" name="jetbrains.mps.baseLanguage.unitTest.structure.BTestCase" flags="ig" index="3s_ewN">
        <property id="1171931851045" name="testCaseName" index="3s_ewP" />
        <child id="1171931851044" name="testMethodList" index="3s_ewO" />
      </concept>
      <concept id="1171931858461" name="jetbrains.mps.baseLanguage.unitTest.structure.TestMethodList" flags="ng" index="3s_gsd">
        <child id="1171931858462" name="testMethod" index="3s_gse" />
      </concept>
      <concept id="1171981022339" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" flags="nn" index="3vwNmj">
        <child id="1171981057159" name="condition" index="3vwVQn" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="3s_ewN" id="7l0SErcZhR9">
    <property role="3s_ewP" value="TestCompilation" />
    <node concept="2AHcQZ" id="5CL$Hppr3SK" role="2AJF6D">
      <ref role="2AI5Lk" to="fyhk:~MPSLaunch" resolve="MPSLaunch" />
    </node>
    <node concept="2AHcQZ" id="6vgd21k4Ufr" role="2AJF6D">
      <ref role="2AI5Lk" to="rbkg:~ExtendWith" resolve="ExtendWith" />
      <node concept="2B6LJw" id="6vgd21k4WFp" role="2B76xF">
        <ref role="2B6OnR" to="rbkg:~ExtendWith.value()" resolve="value" />
        <node concept="3VsKOn" id="6vgd21k50Q0" role="2B70Vg">
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
        <property role="Xl_RC" value="testbench/modules/testCompilationJavaXmlConflict/" />
      </node>
    </node>
    <node concept="3Tm1VV" id="7l0SErcZhRa" role="1B3o_S" />
    <node concept="3s_gsd" id="7l0SErcZhRb" role="3s_ewO">
      <node concept="3s$Bmu" id="6bplqszixT$" role="3s_gse">
        <property role="3s$Bm0" value="compileSolution" />
        <node concept="3cqZAl" id="6bplqszixT_" role="3clF45" />
        <node concept="3Tm1VV" id="6bplqszixTA" role="1B3o_S" />
        <node concept="3clFbS" id="6bplqszixTB" role="3clF47">
          <node concept="3cpWs8" id="6bplqszizTz" role="3cqZAp">
            <node concept="3cpWsn" id="6bplqszizT$" role="3cpWs9">
              <property role="TrG5h" value="project" />
              <node concept="3uibUv" id="6bplqszizLp" role="1tU5fm">
                <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
              </node>
              <node concept="2OqwBi" id="6bplqszizT_" role="33vP2m">
                <node concept="37vLTw" id="6bplqszizTA" role="2Oq$k0">
                  <ref role="3cqZAo" to="83ig:~EnvironmentAwareTestCase.myEnvironment" resolve="myEnvironment" />
                </node>
                <node concept="liA8E" id="6bplqszizTB" role="2OqNvi">
                  <ref role="37wK5l" to="ew0j:~Environment.openProject(java.io.File)" resolve="openProject" />
                  <node concept="2ShNRf" id="6bplqszizTC" role="37wK5m">
                    <node concept="1pGfFk" id="6bplqszizTD" role="2ShVmc">
                      <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                      <node concept="37vLTw" id="6bplqszizTE" role="37wK5m">
                        <ref role="3cqZAo" node="7l0SErcZi0H" resolve="PROJECT_PATH" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="70nQ7d49qud" role="3cqZAp">
            <node concept="3cpWsn" id="70nQ7d49que" role="3cpWs9">
              <property role="TrG5h" value="maker" />
              <node concept="3uibUv" id="70nQ7d49q6H" role="1tU5fm">
                <ref role="3uigEE" to="vqh0:~ModuleMaker" resolve="ModuleMaker" />
              </node>
              <node concept="2ShNRf" id="70nQ7d49quf" role="33vP2m">
                <node concept="1pGfFk" id="70nQ7d49qug" role="2ShVmc">
                  <ref role="37wK5l" to="vqh0:~ModuleMaker.&lt;init&gt;(jetbrains.mps.messages.IMessageHandler)" resolve="ModuleMaker" />
                  <node concept="2OqwBi" id="6vAdUN5VDaG" role="37wK5m">
                    <node concept="2ShNRf" id="70nQ7d49quh" role="2Oq$k0">
                      <node concept="1pGfFk" id="70nQ7d49qui" role="2ShVmc">
                        <ref role="37wK5l" to="et5u:~LogHandler.&lt;init&gt;(jetbrains.mps.logging.Logger)" resolve="LogHandler" />
                        <node concept="2YIFZM" id="70nQ7d49quj" role="37wK5m">
                          <ref role="1Pybhc" to="wwqx:~Logger" resolve="Logger" />
                          <ref role="37wK5l" to="wwqx:~Logger.getLogger(java.lang.Class)" resolve="getLogger" />
                          <node concept="3VsKOn" id="70nQ7d49quk" role="37wK5m">
                            <ref role="3VsUkX" node="7l0SErcZhR9" resolve="TestCompilation_Test" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="6vAdUN5VDLd" role="2OqNvi">
                      <ref role="37wK5l" to="et5u:~IMessageHandler.restrict(jetbrains.mps.messages.MessageKind)" resolve="restrict" />
                      <node concept="Rm8GO" id="6vAdUN5VEBG" role="37wK5m">
                        <ref role="Rm8GQ" to="et5u:~MessageKind.ERROR" resolve="ERROR" />
                        <ref role="1Px2BO" to="et5u:~MessageKind" resolve="MessageKind" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="48$UdiXmug9" role="3cqZAp">
            <node concept="2OqwBi" id="48$UdiXmuGr" role="3clFbG">
              <node concept="2OqwBi" id="1$uisTXOXh5" role="2Oq$k0">
                <node concept="37vLTw" id="1$uisTXOXh6" role="2Oq$k0">
                  <ref role="3cqZAo" node="6bplqszizT$" resolve="project" />
                </node>
                <node concept="liA8E" id="1$uisTXOXh7" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
                </node>
              </node>
              <node concept="liA8E" id="48$UdiXmvc_" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
                <node concept="1bVj0M" id="48$UdiXmvM3" role="37wK5m">
                  <node concept="3clFbS" id="48$UdiXmvM4" role="1bW5cS">
                    <node concept="3cpWs8" id="6bplqszi$Ya" role="3cqZAp">
                      <node concept="3cpWsn" id="6bplqszi$Yb" role="3cpWs9">
                        <property role="TrG5h" value="projectModules" />
                        <node concept="3uibUv" id="6bplqszi$XC" role="1tU5fm">
                          <ref role="3uigEE" to="33ny:~List" resolve="List" />
                          <node concept="3uibUv" id="6bplqszi$XF" role="11_B2D">
                            <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="6bplqszi$Yc" role="33vP2m">
                          <node concept="37vLTw" id="6bplqszi$Yd" role="2Oq$k0">
                            <ref role="3cqZAo" node="6bplqszizT$" resolve="project" />
                          </node>
                          <node concept="liA8E" id="6bplqszi$Ye" role="2OqNvi">
                            <ref role="37wK5l" to="jtsr:~Project.getProjectModules()" resolve="getProjectModules" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="6bplqszi_Cf" role="3cqZAp">
                      <node concept="2YIFZM" id="6bplqszi_OI" role="3clFbG">
                        <ref role="37wK5l" to="rjhg:~Assume.assumeFalse(boolean)" resolve="assumeFalse" />
                        <ref role="1Pybhc" to="rjhg:~Assume" resolve="Assume" />
                        <node concept="2OqwBi" id="6bplqsziAFH" role="37wK5m">
                          <node concept="37vLTw" id="6bplqsziA9T" role="2Oq$k0">
                            <ref role="3cqZAo" node="6bplqszi$Yb" resolve="projectModules" />
                          </node>
                          <node concept="liA8E" id="6bplqsziBvj" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~List.isEmpty()" resolve="isEmpty" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="70nQ7d49r1y" role="3cqZAp">
                      <node concept="2OqwBi" id="70nQ7d49rl8" role="3clFbG">
                        <node concept="37vLTw" id="70nQ7d49r1w" role="2Oq$k0">
                          <ref role="3cqZAo" node="70nQ7d49que" resolve="maker" />
                        </node>
                        <node concept="liA8E" id="70nQ7d49rv5" role="2OqNvi">
                          <ref role="37wK5l" to="vqh0:~ModuleMaker.clean(java.util.Set,org.jetbrains.mps.openapi.util.ProgressMonitor)" resolve="clean" />
                          <node concept="2ShNRf" id="70nQ7d49srx" role="37wK5m">
                            <node concept="1pGfFk" id="70nQ7d49vbH" role="2ShVmc">
                              <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;(java.util.Collection)" resolve="HashSet" />
                              <node concept="37vLTw" id="70nQ7d49w9_" role="37wK5m">
                                <ref role="3cqZAo" node="6bplqszi$Yb" resolve="projectModules" />
                              </node>
                              <node concept="3uibUv" id="70nQ7d49wHE" role="1pMfVU">
                                <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                              </node>
                            </node>
                          </node>
                          <node concept="2ShNRf" id="70nQ7d49s4M" role="37wK5m">
                            <node concept="1pGfFk" id="70nQ7d49s4N" role="2ShVmc">
                              <ref role="37wK5l" to="mk8z:~EmptyProgressMonitor.&lt;init&gt;()" resolve="EmptyProgressMonitor" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="48$UdiXmxot" role="3cqZAp">
                      <node concept="2OqwBi" id="48$UdiXmxF7" role="3clFbG">
                        <node concept="37vLTw" id="48$UdiXmxor" role="2Oq$k0">
                          <ref role="3cqZAo" node="70nQ7d49que" resolve="maker" />
                        </node>
                        <node concept="liA8E" id="48$UdiXmylQ" role="2OqNvi">
                          <ref role="37wK5l" to="vqh0:~ModuleMaker.prepare(java.util.Collection,boolean,org.jetbrains.mps.openapi.util.ProgressMonitor)" resolve="prepare" />
                          <node concept="37vLTw" id="48$UdiXmz8G" role="37wK5m">
                            <ref role="3cqZAo" node="6bplqszi$Yb" resolve="projectModules" />
                          </node>
                          <node concept="3clFbT" id="48$UdiXmCof" role="37wK5m">
                            <property role="3clFbU" value="true" />
                          </node>
                          <node concept="2ShNRf" id="48$UdiXm$2a" role="37wK5m">
                            <node concept="1pGfFk" id="48$UdiXmAYj" role="2ShVmc">
                              <property role="373rjd" value="true" />
                              <ref role="37wK5l" to="mk8z:~EmptyProgressMonitor.&lt;init&gt;()" resolve="EmptyProgressMonitor" />
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
          <node concept="3clFbH" id="48$UdiXmtSG" role="3cqZAp" />
          <node concept="3cpWs8" id="1$uisTXOXgK" role="3cqZAp">
            <node concept="3cpWsn" id="1$uisTXOXgL" role="3cpWs9">
              <property role="TrG5h" value="result" />
              <node concept="3uibUv" id="1$uisTXOXeM" role="1tU5fm">
                <ref role="3uigEE" to="vqh0:~MPSCompilationResult" resolve="MPSCompilationResult" />
              </node>
              <node concept="2OqwBi" id="1$uisTXOXgS" role="33vP2m">
                <node concept="37vLTw" id="70nQ7d49qul" role="2Oq$k0">
                  <ref role="3cqZAo" node="70nQ7d49que" resolve="maker" />
                </node>
                <node concept="liA8E" id="1$uisTXOXgZ" role="2OqNvi">
                  <ref role="37wK5l" to="vqh0:~ModuleMaker.make(org.jetbrains.mps.openapi.util.ProgressMonitor)" resolve="make" />
                  <node concept="2ShNRf" id="1$uisTXOXh1" role="37wK5m">
                    <node concept="1pGfFk" id="1$uisTXOXh2" role="2ShVmc">
                      <ref role="37wK5l" to="mk8z:~EmptyProgressMonitor.&lt;init&gt;()" resolve="EmptyProgressMonitor" />
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
                  <ref role="3cqZAo" node="6bplqszizT$" resolve="project" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vwNmj" id="6bplqsziMnC" role="3cqZAp">
            <node concept="2OqwBi" id="6bplqsziMVJ" role="3vwVQn">
              <node concept="37vLTw" id="6bplqsziME9" role="2Oq$k0">
                <ref role="3cqZAo" node="1$uisTXOXgL" resolve="result" />
              </node>
              <node concept="liA8E" id="6bplqsziNb6" role="2OqNvi">
                <ref role="37wK5l" to="vqh0:~MPSCompilationResult.isOk()" resolve="isOk" />
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
    <property role="TrG5h" value="JavaCompilationXmlConflict" />
  </node>
</model>

