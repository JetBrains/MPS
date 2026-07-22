<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:421aa162-4a3e-4562-abb3-e6f06db238bf(jetbrains.mps.migration@tests)">
  <persistence version="9" />
  <languages>
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="6" />
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="acfc188d-d5d6-4598-b370-6f4a983f05b2" name="jetbrains.mps.baseLanguage.methodReferences" version="0" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
  </languages>
  <imports>
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="jlff" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.vfs(MPS.IDEA/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="rjhg" ref="49808fad-9d41-4b96-83fa-9231640f6b2b/java:org.junit(JUnit/)" />
    <import index="3a50" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide(MPS.Platform/)" />
    <import index="bim2" ref="a5b1c28d-abeb-49a6-a58c-559039616d64/r:a9597bdf-0806-4a79-8ace-88240c6b9878(jetbrains.mps.migration.component/jetbrains.mps.ide.migration)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="bdll" ref="a5b1c28d-abeb-49a6-a58c-559039616d64/java:jetbrains.mps.migration.global(jetbrains.mps.migration.component/)" />
    <import index="83ig" ref="920eaa0e-ecca-46bc-bee7-4e5c59213dd6/java:jetbrains.mps.testbench(Testbench/)" />
    <import index="ymld" ref="920eaa0e-ecca-46bc-bee7-4e5c59213dd6/java:jetbrains.mps.testbench.junit.suites(Testbench/)" />
    <import index="fyhk" ref="920eaa0e-ecca-46bc-bee7-4e5c59213dd6/java:jetbrains.mps(Testbench/)" />
    <import index="tphd" ref="63b449db-0918-4a4a-a891-2c430ab133e4/java:org.junit.jupiter.params(org.junit.junit5/)" />
    <import index="c35q" ref="63b449db-0918-4a4a-a891-2c430ab133e4/java:org.junit.jupiter.params.provider(org.junit.junit5/)" />
    <import index="1ctc" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.stream(JDK/)" />
    <import index="rbkg" ref="49808fad-9d41-4b96-83fa-9231640f6b2b/java:org.junit.jupiter.api.extension(JUnit/)" />
    <import index="4rfc" ref="r:3cf16c72-eb63-43af-9e50-31efa02178ea(jetbrains.mps.baseLanguage.unitTest.runtime)" />
    <import index="ew0j" ref="920eaa0e-ecca-46bc-bee7-4e5c59213dd6/java:jetbrains.mps.tool.environment(Testbench/)" implicit="true" />
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
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1173175405605" name="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression" flags="nn" index="AH0OO">
        <child id="1173175577737" name="index" index="AHEQo" />
        <child id="1173175590490" name="array" index="AHHXb" />
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
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
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
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
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
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
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
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
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
      <concept id="8276990574909231788" name="jetbrains.mps.baseLanguage.structure.FinallyClause" flags="ng" index="1wplmZ">
        <child id="8276990574909234106" name="finallyBody" index="1wplMD" />
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
        <child id="8276990574886367509" name="finallyClause" index="1zxBo6" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="2580416627845338977" name="jetbrains.mps.baseLanguage.structure.ImplicitAnnotationInstanceValue" flags="ng" index="1SXeKx" />
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
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
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="2034914114981261497" name="jetbrains.mps.baseLanguage.logging.structure.LogLowLevelStatement" flags="ng" index="RRSsy">
        <property id="2034914114981261751" name="severity" index="RRSoG" />
        <child id="2034914114981261753" name="message" index="RRSoy" />
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
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
    </language>
  </registry>
  <node concept="312cEu" id="2PvwUKGLYNC">
    <property role="TrG5h" value="NoPendingMigrationsTest" />
    <property role="2bfB8j" value="true" />
    <node concept="3Tm1VV" id="2PvwUKGLYND" role="1B3o_S" />
    <node concept="3uibUv" id="4ZZ2R778fte" role="1zkMxy">
      <ref role="3uigEE" to="83ig:~EnvironmentAwareTestCase" resolve="EnvironmentAwareTestCase" />
    </node>
    <node concept="Wx3nA" id="2PvwUKGLYNL" role="jymVt">
      <property role="TrG5h" value="MARKER_FILE_NAME" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="4ZZ2R77avax" role="1tU5fm" />
      <node concept="Xl_RD" id="2PvwUKGLYNN" role="33vP2m">
        <property role="Xl_RC" value=".allow-pending-migrations" />
      </node>
      <node concept="3Tm6S6" id="2PvwUKGLYNO" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4ZZ2R777pSk" role="jymVt" />
    <node concept="312cEg" id="4ZZ2R777n7y" role="jymVt">
      <property role="TrG5h" value="myProjectDir" />
      <property role="3TUv4t" value="false" />
      <node concept="3uibUv" id="4ZZ2R779_QG" role="1tU5fm">
        <ref role="3uigEE" to="guwi:~File" resolve="File" />
      </node>
      <node concept="3Tm6S6" id="4ZZ2R777n7$" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="4ZZ2R777n7_" role="jymVt">
      <property role="TrG5h" value="myProject" />
      <property role="3TUv4t" value="false" />
      <node concept="3uibUv" id="4ZZ2R777n7A" role="1tU5fm">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
      <node concept="3Tm6S6" id="4ZZ2R777n7B" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2PvwUKGM0KW" role="jymVt" />
    <node concept="3clFbW" id="2PvwUKGLYNP" role="jymVt">
      <node concept="3cqZAl" id="2PvwUKGLYNQ" role="3clF45" />
      <node concept="3clFbS" id="2PvwUKGLYNT" role="3clF47">
        <node concept="3SKdUt" id="4ZZ2R77a$NU" role="3cqZAp">
          <node concept="1PaTwC" id="4ZZ2R77a$NV" role="1aUNEU">
            <node concept="3oM_SD" id="4ZZ2R77a$Ps" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="4ZZ2R77a$Pu" role="1PaTwD">
              <property role="3oM_SC" value="test" />
            </node>
            <node concept="3oM_SD" id="4ZZ2R77a$Qo" role="1PaTwD">
              <property role="3oM_SC" value="requires" />
            </node>
            <node concept="3oM_SD" id="4ZZ2R77a$SY" role="1PaTwD">
              <property role="3oM_SC" value="IDEA" />
            </node>
            <node concept="3oM_SD" id="4ZZ2R77a$TT" role="1PaTwD">
              <property role="3oM_SC" value="env" />
            </node>
            <node concept="3oM_SD" id="4ZZ2R77a$V4" role="1PaTwD">
              <property role="3oM_SC" value="configured" />
            </node>
            <node concept="3oM_SD" id="4ZZ2R77b82p" role="1PaTwD">
              <property role="3oM_SC" value="withJavaPlugin().withMigrationPlugin()" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4VdN96f$WND" role="3cqZAp">
          <node concept="1PaTwC" id="4VdN96f$WNE" role="1aUNEU">
            <node concept="3oM_SD" id="4VdN96f$XsN" role="1PaTwD">
              <property role="3oM_SC" value="java" />
            </node>
            <node concept="3oM_SD" id="4VdN96f$Xuq" role="1PaTwD">
              <property role="3oM_SC" value="plugin" />
            </node>
            <node concept="3oM_SD" id="4VdN96f$Xvk" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="4VdN96f$Xvo" role="1PaTwD">
              <property role="3oM_SC" value="necessary" />
            </node>
            <node concept="3oM_SD" id="4VdN96f$Xx9" role="1PaTwD">
              <property role="3oM_SC" value="just" />
            </node>
            <node concept="3oM_SD" id="4VdN96f$Xz2" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="4VdN96f$Xxf" role="1PaTwD">
              <property role="3oM_SC" value="testCloneModule" />
            </node>
            <node concept="3oM_SD" id="4ZZ2R77a_S5" role="1PaTwD">
              <property role="3oM_SC" value="project" />
            </node>
            <node concept="3oM_SD" id="4VdN96f$X_G" role="1PaTwD">
              <property role="3oM_SC" value="migration" />
            </node>
            <node concept="3oM_SD" id="4VdN96f$XAF" role="1PaTwD">
              <property role="3oM_SC" value="check" />
            </node>
            <node concept="3oM_SD" id="4VdN96f$XBF" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="4VdN96f$XBQ" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="4VdN96f$XCS" role="1PaTwD">
              <property role="3oM_SC" value="project" />
            </node>
            <node concept="3oM_SD" id="4VdN96f$XDV" role="1PaTwD">
              <property role="3oM_SC" value="uses" />
            </node>
            <node concept="3oM_SD" id="4VdN96f$XFe" role="1PaTwD">
              <property role="3oM_SC" value="java_source_stubs" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4ZZ2R77b861" role="3cqZAp">
          <node concept="1PaTwC" id="4ZZ2R77b862" role="1aUNEU">
            <node concept="3oM_SD" id="4ZZ2R77b87W" role="1PaTwD">
              <property role="3oM_SC" value="withMigrationPlugin()" />
            </node>
            <node concept="3oM_SD" id="4ZZ2R77b8cc" role="1PaTwD">
              <property role="3oM_SC" value="has" />
            </node>
            <node concept="3oM_SD" id="4ZZ2R77b8cg" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="4ZZ2R77b8da" role="1PaTwD">
              <property role="3oM_SC" value="include" />
            </node>
            <node concept="3oM_SD" id="4ZZ2R77b8iw" role="1PaTwD">
              <property role="3oM_SC" value="plugin" />
            </node>
            <node concept="3oM_SD" id="4ZZ2R77b8iC" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="4ZZ2R77b8e5" role="1PaTwD">
              <property role="3oM_SC" value="mps-project-migrations" />
            </node>
            <node concept="3oM_SD" id="4ZZ2R77b8gH" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="4ZZ2R77b8lj" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="4ZZ2R77b8lt" role="1PaTwD">
              <property role="3oM_SC" value="test" />
            </node>
            <node concept="3oM_SD" id="4ZZ2R77b8mu" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="4ZZ2R77b8mE" role="1PaTwD">
              <property role="3oM_SC" value="make" />
            </node>
            <node concept="3oM_SD" id="4ZZ2R77b8nH" role="1PaTwD">
              <property role="3oM_SC" value="any" />
            </node>
            <node concept="3oM_SD" id="4ZZ2R77b8nV" role="1PaTwD">
              <property role="3oM_SC" value="sense" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2PvwUKGLYNW" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2PvwUKGM84M" role="jymVt" />
    <node concept="3clFb_" id="4ZZ2R777Dsr" role="jymVt">
      <property role="TrG5h" value="noMigrationNeeded" />
      <node concept="37vLTG" id="2PvwUKGLYNR" role="3clF46">
        <property role="TrG5h" value="projectDir" />
        <node concept="17QB3L" id="4ZZ2R77axYb" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="4ZZ2R777Dst" role="3clF45" />
      <node concept="3Tm1VV" id="4ZZ2R777Dsu" role="1B3o_S" />
      <node concept="3clFbS" id="4ZZ2R777Dsv" role="3clF47">
        <node concept="3clFbF" id="4ZZ2R7783GO" role="3cqZAp">
          <node concept="37vLTI" id="4ZZ2R7786WC" role="3clFbG">
            <node concept="2ShNRf" id="4ZZ2R779Ej1" role="37vLTx">
              <node concept="1pGfFk" id="4ZZ2R779H$Z" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                <node concept="37vLTw" id="4ZZ2R779Jg8" role="37wK5m">
                  <ref role="3cqZAo" node="2PvwUKGLYNR" resolve="projectDir" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="4ZZ2R7783GM" role="37vLTJ">
              <ref role="3cqZAo" node="4ZZ2R777n7y" resolve="myProjectDir" />
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="4ZZ2R777VJH" role="3cqZAp">
          <node concept="3clFbS" id="4ZZ2R777VJI" role="1zxBo7">
            <node concept="3clFbF" id="4ZZ2R777Z3A" role="3cqZAp">
              <node concept="1rXfSq" id="4ZZ2R777Z3_" role="3clFbG">
                <ref role="37wK5l" node="2SnxzQPEmzm" resolve="openProject" />
              </node>
            </node>
            <node concept="3clFbF" id="4ZZ2R778bZw" role="3cqZAp">
              <node concept="1rXfSq" id="4ZZ2R778bZu" role="3clFbG">
                <ref role="37wK5l" node="2PvwUKGLYNX" resolve="_noMigrationNeeded" />
              </node>
            </node>
          </node>
          <node concept="1wplmZ" id="4ZZ2R777Xp6" role="1zxBo6">
            <node concept="3clFbS" id="4ZZ2R777Xp7" role="1wplMD">
              <node concept="3clFbF" id="4ZZ2R778dHi" role="3cqZAp">
                <node concept="1rXfSq" id="4ZZ2R778dHh" role="3clFbG">
                  <ref role="37wK5l" node="2SnxzQPEoiE" resolve="closeProject" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2PvwUKGLYNY" role="2AJF6D">
        <ref role="2AI5Lk" to="tphd:~ParameterizedTest" resolve="ParameterizedTest" />
      </node>
      <node concept="2AHcQZ" id="4ZZ2R776iYM" role="2AJF6D">
        <ref role="2AI5Lk" to="c35q:~MethodSource" resolve="MethodSource" />
      </node>
    </node>
    <node concept="2tJIrI" id="4ZZ2R777TM$" role="jymVt" />
    <node concept="3clFb_" id="2PvwUKGLYNX" role="jymVt">
      <property role="TrG5h" value="_noMigrationNeeded" />
      <node concept="3clFbS" id="2PvwUKGLYNZ" role="3clF47">
        <node concept="3clFbJ" id="2PvwUKGLYOa" role="3cqZAp">
          <node concept="2OqwBi" id="4ZZ2R77a2_B" role="3clFbw">
            <node concept="2ShNRf" id="4ZZ2R779Tgl" role="2Oq$k0">
              <node concept="1pGfFk" id="4ZZ2R779W6V" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.io.File,java.lang.String)" resolve="File" />
                <node concept="37vLTw" id="4ZZ2R779XJ1" role="37wK5m">
                  <ref role="3cqZAo" node="4ZZ2R777n7y" resolve="myProjectDir" />
                </node>
                <node concept="37vLTw" id="4ZZ2R77a0EC" role="37wK5m">
                  <ref role="3cqZAo" node="2PvwUKGLYNL" resolve="MARKER_FILE_NAME" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="4ZZ2R77a4zR" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~File.exists()" resolve="exists" />
            </node>
          </node>
          <node concept="9aQIb" id="2PvwUKGLYOt" role="9aQIa">
            <node concept="3clFbS" id="2PvwUKGLYOu" role="9aQI4">
              <node concept="RRSsy" id="4ZZ2R776Mh1" role="3cqZAp">
                <property role="RRSoG" value="h1akgim/info" />
                <node concept="3cpWs3" id="2PvwUKGM6IA" role="RRSoy">
                  <node concept="3cpWs3" id="2PvwUKGM6IB" role="3uHU7B">
                    <node concept="Xl_RD" id="2PvwUKGM6IC" role="3uHU7B">
                      <property role="Xl_RC" value="Project " />
                    </node>
                    <node concept="2OqwBi" id="4ZZ2R77afuF" role="3uHU7w">
                      <node concept="37vLTw" id="4ZZ2R77afuG" role="2Oq$k0">
                        <ref role="3cqZAo" node="4ZZ2R777n7y" resolve="myProjectDir" />
                      </node>
                      <node concept="liA8E" id="4ZZ2R77afuH" role="2OqNvi">
                        <ref role="37wK5l" to="guwi:~File.getName()" resolve="getName" />
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="2PvwUKGM6IF" role="3uHU7w">
                    <property role="Xl_RC" value=": should be tested" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2PvwUKGLYOg" role="3clFbx">
            <node concept="RRSsy" id="4ZZ2R776E9n" role="3cqZAp">
              <property role="RRSoG" value="h1akgim/info" />
              <node concept="3cpWs3" id="2PvwUKGMfG7" role="RRSoy">
                <node concept="3cpWs3" id="2PvwUKGMfG8" role="3uHU7B">
                  <node concept="3cpWs3" id="2PvwUKGMfG9" role="3uHU7B">
                    <node concept="3cpWs3" id="2PvwUKGMfGa" role="3uHU7B">
                      <node concept="Xl_RD" id="2PvwUKGMfGb" role="3uHU7B">
                        <property role="Xl_RC" value="Project " />
                      </node>
                      <node concept="2OqwBi" id="2PvwUKGMfGc" role="3uHU7w">
                        <node concept="37vLTw" id="2PvwUKGMfGd" role="2Oq$k0">
                          <ref role="3cqZAo" node="4ZZ2R777n7y" resolve="myProjectDir" />
                        </node>
                        <node concept="liA8E" id="2PvwUKGMfGe" role="2OqNvi">
                          <ref role="37wK5l" to="guwi:~File.getName()" resolve="getName" />
                        </node>
                      </node>
                    </node>
                    <node concept="Xl_RD" id="2PvwUKGMfGf" role="3uHU7w">
                      <property role="Xl_RC" value=": automatic migrations are not allowed (" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="4ZZ2R776HpN" role="3uHU7w">
                    <ref role="3cqZAo" node="2PvwUKGLYNL" resolve="MARKER_FILE_NAME" />
                  </node>
                </node>
                <node concept="Xl_RD" id="2PvwUKGMfGh" role="3uHU7w">
                  <property role="Xl_RC" value=" file is present in project dir)" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="2PvwUKGLYOs" role="3cqZAp" />
          </node>
        </node>
        <node concept="3cpWs8" id="2PvwUKGLYOB" role="3cqZAp">
          <node concept="3cpWsn" id="2PvwUKGLYOA" role="3cpWs9">
            <property role="TrG5h" value="migrationRequired" />
            <node concept="10Q1$e" id="2PvwUKGLYOD" role="1tU5fm">
              <node concept="10P_77" id="2PvwUKGLYOC" role="10Q1$1" />
            </node>
            <node concept="2ShNRf" id="2PvwUKGLYOI" role="33vP2m">
              <node concept="3g6Rrh" id="2PvwUKGLYOH" role="2ShVmc">
                <node concept="3clFbT" id="2PvwUKGLYOF" role="3g7hyw" />
                <node concept="3clFbT" id="2PvwUKGLYOG" role="3g7hyw" />
                <node concept="10P_77" id="2PvwUKGLYOE" role="3g7fb8" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2PvwUKGLYOK" role="3cqZAp">
          <node concept="3cpWsn" id="2PvwUKGLYOJ" role="3cpWs9">
            <property role="TrG5h" value="projectMigrations" />
            <node concept="3uibUv" id="2PvwUKGLYOL" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="17QB3L" id="4ZZ2R7771RM" role="11_B2D" />
            </node>
            <node concept="2ShNRf" id="2PvwUKGM0T5" role="33vP2m">
              <node concept="1pGfFk" id="2PvwUKGM0Ta" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2PvwUKGLYOP" role="3cqZAp">
          <node concept="3cpWsn" id="2PvwUKGLYOO" role="3cpWs9">
            <property role="TrG5h" value="moduleMigrations" />
            <node concept="3uibUv" id="2PvwUKGLYOQ" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="17QB3L" id="4ZZ2R7773tQ" role="11_B2D" />
            </node>
            <node concept="2ShNRf" id="2PvwUKGM0TA" role="33vP2m">
              <node concept="1pGfFk" id="2PvwUKGM0TF" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2PvwUKGLYOU" role="3cqZAp">
          <node concept="3cpWsn" id="2PvwUKGLYOT" role="3cpWs9">
            <property role="TrG5h" value="prepare" />
            <node concept="3uibUv" id="2PvwUKGLYOV" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
            </node>
            <node concept="1bVj0M" id="2PvwUKGLYOW" role="33vP2m">
              <node concept="3clFbS" id="2PvwUKGLYP$" role="1bW5cS">
                <node concept="9aQIb" id="2PvwUKGLYOX" role="3cqZAp">
                  <node concept="3clFbS" id="2PvwUKGLYOY" role="9aQI4">
                    <node concept="3cpWs8" id="2PvwUKGLYP0" role="3cqZAp">
                      <node concept="3cpWsn" id="2PvwUKGLYOZ" role="3cpWs9">
                        <property role="3TUv4t" value="true" />
                        <property role="TrG5h" value="migrationManager" />
                        <node concept="3uibUv" id="2PvwUKGLYP1" role="1tU5fm">
                          <ref role="3uigEE" to="bim2:36$CdjYcVqX" resolve="MigrationSetup" />
                        </node>
                        <node concept="2ShNRf" id="2PvwUKGMyJC" role="33vP2m">
                          <node concept="1pGfFk" id="2PvwUKGMyJW" role="2ShVmc">
                            <ref role="37wK5l" to="bim2:10yOEkEz6b" resolve="MigrationSetup" />
                            <node concept="1rXfSq" id="2PvwUKGMyJX" role="37wK5m">
                              <ref role="37wK5l" node="2SnxzQPEfIr" resolve="getContextProject" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="2PvwUKGLYP4" role="3cqZAp">
                      <node concept="37vLTI" id="2PvwUKGLYP5" role="3clFbG">
                        <node concept="AH0OO" id="2PvwUKGLYP6" role="37vLTJ">
                          <node concept="37vLTw" id="2PvwUKGLYP7" role="AHHXb">
                            <ref role="3cqZAo" node="2PvwUKGLYOA" resolve="migrationRequired" />
                          </node>
                          <node concept="3cmrfG" id="2PvwUKGLYP8" role="AHEQo">
                            <property role="3cmrfH" value="0" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="2PvwUKGMzU2" role="37vLTx">
                          <node concept="37vLTw" id="2PvwUKGM0Ty" role="2Oq$k0">
                            <ref role="3cqZAo" node="2PvwUKGLYOZ" resolve="migrationManager" />
                          </node>
                          <node concept="liA8E" id="2PvwUKGMzU3" role="2OqNvi">
                            <ref role="37wK5l" to="bim2:64uPopzcTz3" resolve="importVersionsUpdateRequired" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="2PvwUKGLYPa" role="3cqZAp">
                      <node concept="37vLTI" id="2PvwUKGLYPb" role="3clFbG">
                        <node concept="AH0OO" id="2PvwUKGLYPc" role="37vLTJ">
                          <node concept="37vLTw" id="2PvwUKGLYPd" role="AHHXb">
                            <ref role="3cqZAo" node="2PvwUKGLYOA" resolve="migrationRequired" />
                          </node>
                          <node concept="3cmrfG" id="2PvwUKGLYPe" role="AHEQo">
                            <property role="3cmrfH" value="1" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="2PvwUKGMw99" role="37vLTx">
                          <node concept="37vLTw" id="2PvwUKGM0U8" role="2Oq$k0">
                            <ref role="3cqZAo" node="2PvwUKGLYOZ" resolve="migrationManager" />
                          </node>
                          <node concept="liA8E" id="2PvwUKGMw9a" role="2OqNvi">
                            <ref role="37wK5l" to="bim2:1hucSHYiO1k" resolve="isMigrationRequired" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="2PvwUKGLYPg" role="3cqZAp">
                      <node concept="AH0OO" id="2PvwUKGLYPh" role="3clFbw">
                        <node concept="37vLTw" id="2PvwUKGLYPi" role="AHHXb">
                          <ref role="3cqZAo" node="2PvwUKGLYOA" resolve="migrationRequired" />
                        </node>
                        <node concept="3cmrfG" id="2PvwUKGLYPj" role="AHEQo">
                          <property role="3cmrfH" value="1" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="2PvwUKGLYPl" role="3clFbx">
                        <node concept="3clFbF" id="2PvwUKGO3Oo" role="3cqZAp">
                          <node concept="2OqwBi" id="2PvwUKGNEGl" role="3clFbG">
                            <node concept="2OqwBi" id="2PvwUKGNsJd" role="2Oq$k0">
                              <node concept="2OqwBi" id="2PvwUKGMyJz" role="2Oq$k0">
                                <node concept="37vLTw" id="2PvwUKGM10_" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2PvwUKGLYOZ" resolve="migrationManager" />
                                </node>
                                <node concept="liA8E" id="2PvwUKGMyJ$" role="2OqNvi">
                                  <ref role="37wK5l" to="bim2:4biA4YBvoAV" resolve="getProjectMigrations" />
                                </node>
                              </node>
                              <node concept="3$u5V9" id="2PvwUKGNunL" role="2OqNvi">
                                <node concept="37Ijox" id="2PvwUKGN_GR" role="23t8la">
                                  <ref role="37Ijqf" to="bdll:~ProjectMigration.getDescription()" resolve="getDescription" />
                                  <node concept="2FaPjH" id="2PvwUKGN_GT" role="wWaWy">
                                    <node concept="3uibUv" id="2PvwUKGN_GU" role="2FaQuo">
                                      <ref role="3uigEE" to="bdll:~ProjectMigration" resolve="ProjectMigration" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="2es0OD" id="2PvwUKGNHIa" role="2OqNvi">
                              <node concept="37Ijox" id="2PvwUKGNP_K" role="23t8la">
                                <ref role="37Ijqf" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                                <node concept="37vLTw" id="2PvwUKGNMcn" role="wWaWy">
                                  <ref role="3cqZAo" node="2PvwUKGLYOJ" resolve="projectMigrations" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="2PvwUKGOadD" role="3cqZAp">
                          <node concept="2OqwBi" id="2PvwUKGOmBs" role="3clFbG">
                            <node concept="2OqwBi" id="2PvwUKGOcx2" role="2Oq$k0">
                              <node concept="2OqwBi" id="2PvwUKGMxAh" role="2Oq$k0">
                                <node concept="37vLTw" id="2PvwUKGM0UB" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2PvwUKGLYOZ" resolve="migrationManager" />
                                </node>
                                <node concept="liA8E" id="2PvwUKGMxAi" role="2OqNvi">
                                  <ref role="37wK5l" to="bim2:7W$jB0VB3vJ" resolve="getModuleMigrations" />
                                </node>
                              </node>
                              <node concept="3$u5V9" id="2PvwUKGOfrV" role="2OqNvi">
                                <node concept="37Ijox" id="2PvwUKGM_pQ" role="23t8la">
                                  <ref role="37Ijqf" to="bim2:3xQJezs_t$l" resolve="caption" />
                                  <node concept="2FaPjH" id="2PvwUKGMyK5" role="wWaWy">
                                    <node concept="3uibUv" id="2PvwUKGMyK4" role="2FaQuo">
                                      <ref role="3uigEE" to="bim2:3xQJezs$iyQ" resolve="AppliedScript" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="2es0OD" id="2PvwUKGOqkr" role="2OqNvi">
                              <node concept="37Ijox" id="2PvwUKGM5FJ" role="23t8la">
                                <ref role="37Ijqf" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                                <node concept="37vLTw" id="2PvwUKGM0SC" role="wWaWy">
                                  <ref role="3cqZAo" node="2PvwUKGLYOO" resolve="moduleMigrations" />
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
        <node concept="3cpWs8" id="2PvwUKGLYPA" role="3cqZAp">
          <node concept="3cpWsn" id="2PvwUKGLYP_" role="3cpWs9">
            <property role="TrG5h" value="exception" />
            <node concept="3uibUv" id="2PvwUKGLYPB" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
            </node>
            <node concept="2YIFZM" id="2PvwUKGM0SQ" role="33vP2m">
              <ref role="1Pybhc" to="3a50:~ThreadUtils" resolve="ThreadUtils" />
              <ref role="37wK5l" to="3a50:~ThreadUtils.runInUIThreadAndWait(java.lang.Runnable)" resolve="runInUIThreadAndWait" />
              <node concept="2ShNRf" id="2PvwUKGMN2k" role="37wK5m">
                <node concept="1pGfFk" id="2PvwUKGMN2J" role="2ShVmc">
                  <ref role="37wK5l" to="w1kc:~ModelReadRunnable.&lt;init&gt;(org.jetbrains.mps.openapi.module.SRepository,java.lang.Runnable)" resolve="ModelReadRunnable" />
                  <node concept="2OqwBi" id="2PvwUKGMN2K" role="37wK5m">
                    <node concept="1rXfSq" id="2PvwUKGMN2L" role="2Oq$k0">
                      <ref role="37wK5l" node="2SnxzQPEfIr" resolve="getContextProject" />
                    </node>
                    <node concept="liA8E" id="2PvwUKGMN2M" role="2OqNvi">
                      <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="2PvwUKGMN2N" role="37wK5m">
                    <ref role="3cqZAo" node="2PvwUKGLYOT" resolve="prepare" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2PvwUKGLYPH" role="3cqZAp">
          <node concept="3y3z36" id="2PvwUKGLYPI" role="3clFbw">
            <node concept="37vLTw" id="2PvwUKGLYPJ" role="3uHU7B">
              <ref role="3cqZAo" node="2PvwUKGLYP_" resolve="exception" />
            </node>
            <node concept="10Nm6u" id="2PvwUKGLYPK" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="2PvwUKGLYPM" role="3clFbx">
            <node concept="YS8fn" id="2PvwUKGLYPP" role="3cqZAp">
              <node concept="2ShNRf" id="2PvwUKGM10D" role="YScLw">
                <node concept="1pGfFk" id="2PvwUKGM11_" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.Throwable)" resolve="RuntimeException" />
                  <node concept="37vLTw" id="2PvwUKGM11A" role="37wK5m">
                    <ref role="3cqZAo" node="2PvwUKGLYP_" resolve="exception" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2PvwUKGLYPR" role="3cqZAp">
          <node concept="3cpWsn" id="2PvwUKGLYPQ" role="3cpWs9">
            <property role="TrG5h" value="message" />
            <node concept="3uibUv" id="2PvwUKGLYPS" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
            </node>
            <node concept="2ShNRf" id="2PvwUKGM0Vz" role="33vP2m">
              <node concept="1pGfFk" id="2PvwUKGM0ZO" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;(java.lang.String)" resolve="StringBuilder" />
                <node concept="Xl_RD" id="2PvwUKGM0ZP" role="37wK5m">
                  <property role="Xl_RC" value="Pending:\n" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2PvwUKGLYPV" role="3cqZAp">
          <node concept="AH0OO" id="2PvwUKGLYPW" role="3clFbw">
            <node concept="37vLTw" id="2PvwUKGLYPX" role="AHHXb">
              <ref role="3cqZAo" node="2PvwUKGLYOA" resolve="migrationRequired" />
            </node>
            <node concept="3cmrfG" id="2PvwUKGLYPY" role="AHEQo">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3clFbS" id="2PvwUKGLYQ0" role="3clFbx">
            <node concept="3clFbF" id="2PvwUKGLYQ1" role="3cqZAp">
              <node concept="2OqwBi" id="2PvwUKGMhU7" role="3clFbG">
                <node concept="37vLTw" id="2PvwUKGM122" role="2Oq$k0">
                  <ref role="3cqZAo" node="2PvwUKGLYPQ" resolve="message" />
                </node>
                <node concept="liA8E" id="2PvwUKGMhU8" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                  <node concept="Xl_RD" id="2PvwUKGMhU9" role="37wK5m">
                    <property role="Xl_RC" value="Module re-saving required\n" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2PvwUKGLYQ4" role="3cqZAp">
          <node concept="2OqwBi" id="2PvwUKGMgN5" role="3clFbG">
            <node concept="37vLTw" id="2PvwUKGM0Ue" role="2Oq$k0">
              <ref role="3cqZAo" node="2PvwUKGLYPQ" resolve="message" />
            </node>
            <node concept="liA8E" id="2PvwUKGMgN6" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
              <node concept="Xl_RD" id="2PvwUKGMgN7" role="37wK5m">
                <property role="Xl_RC" value="Project migrations:\n" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="2PvwUKGLYQ7" role="3cqZAp">
          <node concept="37vLTw" id="2PvwUKGLYQi" role="1DdaDG">
            <ref role="3cqZAo" node="2PvwUKGLYOJ" resolve="projectMigrations" />
          </node>
          <node concept="3cpWsn" id="2PvwUKGLYQf" role="1Duv9x">
            <property role="TrG5h" value="pm" />
            <node concept="17QB3L" id="4ZZ2R77752k" role="1tU5fm" />
          </node>
          <node concept="3clFbS" id="2PvwUKGLYQ9" role="2LFqv$">
            <node concept="3clFbF" id="2PvwUKGLYQa" role="3cqZAp">
              <node concept="2OqwBi" id="2PvwUKGMlgX" role="3clFbG">
                <node concept="2OqwBi" id="2PvwUKGM4_D" role="2Oq$k0">
                  <node concept="37vLTw" id="2PvwUKGM0U0" role="2Oq$k0">
                    <ref role="3cqZAo" node="2PvwUKGLYPQ" resolve="message" />
                  </node>
                  <node concept="liA8E" id="2PvwUKGM4_E" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                    <node concept="37vLTw" id="2PvwUKGM4_F" role="37wK5m">
                      <ref role="3cqZAo" node="2PvwUKGLYQf" resolve="pm" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="2PvwUKGMlgY" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                  <node concept="Xl_RD" id="2PvwUKGMlgZ" role="37wK5m">
                    <property role="Xl_RC" value="\n" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2PvwUKGLYQj" role="3cqZAp">
          <node concept="2OqwBi" id="2PvwUKGMagn" role="3clFbG">
            <node concept="37vLTw" id="2PvwUKGM0SI" role="2Oq$k0">
              <ref role="3cqZAo" node="2PvwUKGLYPQ" resolve="message" />
            </node>
            <node concept="liA8E" id="2PvwUKGMago" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
              <node concept="Xl_RD" id="2PvwUKGMagp" role="37wK5m">
                <property role="Xl_RC" value="Module migrations:\n" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="2PvwUKGLYQm" role="3cqZAp">
          <node concept="37vLTw" id="2PvwUKGLYQx" role="1DdaDG">
            <ref role="3cqZAo" node="2PvwUKGLYOO" resolve="moduleMigrations" />
          </node>
          <node concept="3cpWsn" id="2PvwUKGLYQu" role="1Duv9x">
            <property role="TrG5h" value="mm" />
            <node concept="17QB3L" id="4ZZ2R7776AK" role="1tU5fm" />
          </node>
          <node concept="3clFbS" id="2PvwUKGLYQo" role="2LFqv$">
            <node concept="3clFbF" id="2PvwUKGLYQp" role="3cqZAp">
              <node concept="2OqwBi" id="2PvwUKGMmoI" role="3clFbG">
                <node concept="2OqwBi" id="2PvwUKGMdv5" role="2Oq$k0">
                  <node concept="37vLTw" id="2PvwUKGM0TK" role="2Oq$k0">
                    <ref role="3cqZAo" node="2PvwUKGLYPQ" resolve="message" />
                  </node>
                  <node concept="liA8E" id="2PvwUKGMdv6" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                    <node concept="37vLTw" id="2PvwUKGMdv7" role="37wK5m">
                      <ref role="3cqZAo" node="2PvwUKGLYQu" resolve="mm" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="2PvwUKGMmoJ" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                  <node concept="Xl_RD" id="2PvwUKGMmoK" role="37wK5m">
                    <property role="Xl_RC" value="\n" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2SaPHiJ5Fhx" role="3cqZAp">
          <node concept="2OqwBi" id="2SaPHiJ6R0X" role="3clFbG">
            <node concept="2OqwBi" id="2SaPHiJ6GXT" role="2Oq$k0">
              <node concept="2OqwBi" id="2SaPHiJ5JiD" role="2Oq$k0">
                <node concept="37vLTw" id="2SaPHiJ5Fhv" role="2Oq$k0">
                  <ref role="3cqZAo" node="2PvwUKGLYPQ" resolve="message" />
                </node>
                <node concept="liA8E" id="2SaPHiJ5M3g" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                  <node concept="Xl_RD" id="2SaPHiJ5Pdx" role="37wK5m">
                    <property role="Xl_RC" value="Project: " />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="2SaPHiJ6fuP" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                <node concept="2OqwBi" id="2SaPHiJ6lnI" role="37wK5m">
                  <node concept="1rXfSq" id="2SaPHiJ6hd4" role="2Oq$k0">
                    <ref role="37wK5l" node="2SnxzQPEfIr" resolve="getContextProject" />
                  </node>
                  <node concept="liA8E" id="2SaPHiJ6oG7" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~Project.getName()" resolve="getName" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="2SaPHiJ6xLu" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
              <node concept="Xl_RD" id="2SaPHiJ6xLv" role="37wK5m">
                <property role="Xl_RC" value="\n" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2PvwUKGLYQy" role="3cqZAp">
          <node concept="2YIFZM" id="2PvwUKGM0V0" role="3clFbG">
            <ref role="1Pybhc" to="rjhg:~Assert" resolve="Assert" />
            <ref role="37wK5l" to="rjhg:~Assert.assertFalse(java.lang.String,boolean)" resolve="assertFalse" />
            <node concept="2OqwBi" id="2PvwUKGM9cg" role="37wK5m">
              <node concept="37vLTw" id="2PvwUKGM0V2" role="2Oq$k0">
                <ref role="3cqZAo" node="2PvwUKGLYPQ" resolve="message" />
              </node>
              <node concept="liA8E" id="2PvwUKGM9ch" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~StringBuilder.toString()" resolve="toString" />
              </node>
            </node>
            <node concept="22lmx$" id="2PvwUKGM0V3" role="37wK5m">
              <node concept="AH0OO" id="2PvwUKGM0V4" role="3uHU7B">
                <node concept="37vLTw" id="2PvwUKGM0V5" role="AHHXb">
                  <ref role="3cqZAo" node="2PvwUKGLYOA" resolve="migrationRequired" />
                </node>
                <node concept="3cmrfG" id="2PvwUKGM0V6" role="AHEQo">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
              <node concept="AH0OO" id="2PvwUKGM0V7" role="3uHU7w">
                <node concept="37vLTw" id="2PvwUKGM0V8" role="AHHXb">
                  <ref role="3cqZAo" node="2PvwUKGLYOA" resolve="migrationRequired" />
                </node>
                <node concept="3cmrfG" id="2PvwUKGM0V9" role="AHEQo">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2PvwUKGLYQG" role="1B3o_S" />
      <node concept="3cqZAl" id="2PvwUKGLYQH" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4ZZ2R777itn" role="jymVt" />
    <node concept="3clFb_" id="2SnxzQPEmzm" role="jymVt">
      <property role="TrG5h" value="openProject" />
      <node concept="3cqZAl" id="2SnxzQPEmzo" role="3clF45" />
      <node concept="3Tm6S6" id="4ZZ2R777xgA" role="1B3o_S" />
      <node concept="3clFbS" id="2SnxzQPEmzq" role="3clF47">
        <node concept="3clFbF" id="MxMY3aheKe" role="3cqZAp">
          <node concept="37vLTI" id="MxMY3aheQy" role="3clFbG">
            <node concept="37vLTw" id="MxMY3aheKc" role="37vLTJ">
              <ref role="3cqZAo" node="4ZZ2R777n7_" resolve="myProject" />
            </node>
            <node concept="2OqwBi" id="2SnxzQPEodP" role="37vLTx">
              <node concept="37vLTw" id="4ZZ2R778rmm" role="2Oq$k0">
                <ref role="3cqZAo" to="83ig:~EnvironmentAwareTestCase.myEnvironment" resolve="myEnvironment" />
              </node>
              <node concept="liA8E" id="2SnxzQPEodR" role="2OqNvi">
                <ref role="37wK5l" to="ew0j:~Environment.openProject(java.io.File)" resolve="openProject" />
                <node concept="37vLTw" id="4ZZ2R77akO$" role="37wK5m">
                  <ref role="3cqZAo" node="4ZZ2R777n7y" resolve="myProjectDir" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="U3XrcI_OYu" role="3cqZAp">
          <node concept="2OqwBi" id="U3XrcIA3uT" role="3clFbG">
            <node concept="2ShNRf" id="U3XrcI_OYq" role="2Oq$k0">
              <node concept="1pGfFk" id="U3XrcIA2Yz" role="2ShVmc">
                <ref role="37wK5l" to="ymld:~TestMakeUtil.&lt;init&gt;(jetbrains.mps.core.platform.Platform)" resolve="TestMakeUtil" />
                <node concept="2OqwBi" id="U3XrcIA3ay" role="37wK5m">
                  <node concept="37vLTw" id="4ZZ2R778xZW" role="2Oq$k0">
                    <ref role="3cqZAo" to="83ig:~EnvironmentAwareTestCase.myEnvironment" resolve="myEnvironment" />
                  </node>
                  <node concept="liA8E" id="U3XrcIA3pR" role="2OqNvi">
                    <ref role="37wK5l" to="ew0j:~Environment.getPlatform()" resolve="getPlatform" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="U3XrcIA3_Z" role="2OqNvi">
              <ref role="37wK5l" to="ymld:~TestMakeUtil.make(jetbrains.mps.project.Project)" resolve="make" />
              <node concept="37vLTw" id="U3XrcIA3Ch" role="37wK5m">
                <ref role="3cqZAo" node="4ZZ2R777n7_" resolve="myProject" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2SnxzQPEooE" role="jymVt" />
    <node concept="3clFb_" id="2SnxzQPEoiE" role="jymVt">
      <property role="TrG5h" value="closeProject" />
      <node concept="3cqZAl" id="2SnxzQPEoiF" role="3clF45" />
      <node concept="3Tm6S6" id="4ZZ2R777$zW" role="1B3o_S" />
      <node concept="3clFbS" id="2SnxzQPEoiH" role="3clF47">
        <node concept="3clFbF" id="3Y8TONRH4Z1" role="3cqZAp">
          <node concept="2OqwBi" id="3Y8TONRH5aU" role="3clFbG">
            <node concept="37vLTw" id="4ZZ2R778AWG" role="2Oq$k0">
              <ref role="3cqZAo" to="83ig:~EnvironmentAwareTestCase.myEnvironment" resolve="myEnvironment" />
            </node>
            <node concept="liA8E" id="3Y8TONRH5pJ" role="2OqNvi">
              <ref role="37wK5l" to="ew0j:~Environment.closeProject(jetbrains.mps.project.Project)" resolve="closeProject" />
              <node concept="37vLTw" id="3Y8TONRH5ri" role="37wK5m">
                <ref role="3cqZAo" node="4ZZ2R777n7_" resolve="myProject" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5_2lT8zDiaQ" role="jymVt" />
    <node concept="3clFb_" id="2SnxzQPEfIr" role="jymVt">
      <property role="TrG5h" value="getContextProject" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="6lIwBnqizBt" role="3clF47">
        <node concept="3cpWs6" id="6lIwBnqizBu" role="3cqZAp">
          <node concept="37vLTw" id="2SnxzQPEmmy" role="3cqZAk">
            <ref role="3cqZAo" node="4ZZ2R777n7_" resolve="myProject" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="6lIwBnqizBx" role="3clF45">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
      <node concept="3Tm1VV" id="6lIwBnqizBw" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4ZZ2R77apF2" role="jymVt" />
    <node concept="2YIFZL" id="6lIwBnqiz$N" role="jymVt">
      <property role="TrG5h" value="noMigrationNeeded" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="6lIwBnqiz$R" role="3clF47">
        <node concept="3SKdUt" id="4ZZ2R77aTa3" role="3cqZAp">
          <node concept="1PaTwC" id="4ZZ2R77aTa4" role="1aUNEU">
            <node concept="3oM_SD" id="4ZZ2R77aTW_" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="4ZZ2R77aTXt" role="1PaTwD">
              <property role="3oM_SC" value="method" />
            </node>
            <node concept="3oM_SD" id="4ZZ2R77aU0c" role="1PaTwD">
              <property role="3oM_SC" value="supplies" />
            </node>
            <node concept="3oM_SD" id="4ZZ2R77aU16" role="1PaTwD">
              <property role="3oM_SC" value="parameters" />
            </node>
            <node concept="3oM_SD" id="4ZZ2R77aU21" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="4ZZ2R77aU2X" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="4ZZ2R77aU8$" role="1PaTwD">
              <property role="3oM_SC" value="test" />
            </node>
            <node concept="3oM_SD" id="4ZZ2R77aU8G" role="1PaTwD">
              <property role="3oM_SC" value="method" />
            </node>
            <node concept="3oM_SD" id="4ZZ2R77aU8P" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="4ZZ2R77aU9P" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="4ZZ2R77aUa0" role="1PaTwD">
              <property role="3oM_SC" value="same" />
            </node>
            <node concept="3oM_SD" id="4ZZ2R77aUb2" role="1PaTwD">
              <property role="3oM_SC" value="name" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4ZZ2R77aSIn" role="3cqZAp" />
        <node concept="3cpWs8" id="2SnxzQPDHRM" role="3cqZAp">
          <node concept="3cpWsn" id="2SnxzQPDHRN" role="3cpWs9">
            <property role="TrG5h" value="projectsDir" />
            <node concept="17QB3L" id="5_cVl4nNqbO" role="1tU5fm" />
            <node concept="2YIFZM" id="2SnxzQPDHRO" role="33vP2m">
              <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
              <ref role="37wK5l" to="wyt6:~System.getProperty(java.lang.String)" resolve="getProperty" />
              <node concept="Xl_RD" id="2SnxzQPDHRP" role="37wK5m">
                <property role="Xl_RC" value="projects_dir" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4ZZ2R77k0GS" role="3cqZAp">
          <node concept="2YIFZM" id="4ZZ2R77k1yF" role="3clFbG">
            <ref role="37wK5l" to="rjhg:~Assert.assertNotNull(java.lang.String,java.lang.Object)" resolve="assertNotNull" />
            <ref role="1Pybhc" to="rjhg:~Assert" resolve="Assert" />
            <node concept="Xl_RD" id="4ZZ2R77k2DI" role="37wK5m">
              <property role="Xl_RC" value="Need system property 'projects_dir'" />
            </node>
            <node concept="37vLTw" id="4ZZ2R77k1Oy" role="37wK5m">
              <ref role="3cqZAo" node="2SnxzQPDHRN" resolve="projectsDir" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2SnxzQPDX08" role="3cqZAp">
          <node concept="3cpWsn" id="2SnxzQPDX09" role="3cpWs9">
            <property role="TrG5h" value="projectsRoot" />
            <node concept="3uibUv" id="2SnxzQPDX05" role="1tU5fm">
              <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
            </node>
            <node concept="2OqwBi" id="2SnxzQPDX0a" role="33vP2m">
              <node concept="2YIFZM" id="2SnxzQPDX0b" role="2Oq$k0">
                <ref role="1Pybhc" to="jlff:~LocalFileSystem" resolve="LocalFileSystem" />
                <ref role="37wK5l" to="jlff:~LocalFileSystem.getInstance()" resolve="getInstance" />
              </node>
              <node concept="liA8E" id="2SnxzQPDX0c" role="2OqNvi">
                <ref role="37wK5l" to="jlff:~VirtualFileSystem.findFileByPath(java.lang.String)" resolve="findFileByPath" />
                <node concept="37vLTw" id="2SnxzQPDX0d" role="37wK5m">
                  <ref role="3cqZAo" node="2SnxzQPDHRN" resolve="projectsDir" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2SnxzQPE2H0" role="3cqZAp" />
        <node concept="3clFbH" id="4ZZ2R77aI9L" role="3cqZAp" />
        <node concept="3cpWs8" id="2SnxzQPE30P" role="3cqZAp">
          <node concept="3cpWsn" id="2SnxzQPE30V" role="3cpWs9">
            <property role="TrG5h" value="projects" />
            <node concept="2YIFZM" id="4ZZ2R77aLsT" role="33vP2m">
              <ref role="37wK5l" to="1ctc:~Stream.builder()" resolve="builder" />
              <ref role="1Pybhc" to="1ctc:~Stream" resolve="Stream" />
            </node>
            <node concept="3uibUv" id="4ZZ2R77aI_Q" role="1tU5fm">
              <ref role="3uigEE" to="1ctc:~Stream$Builder" resolve="Stream.Builder" />
              <node concept="17QB3L" id="4ZZ2R77aI_R" role="11_B2D" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2SnxzQPDScU" role="3cqZAp">
          <node concept="2YIFZM" id="2SnxzQPDSqn" role="3clFbG">
            <ref role="1Pybhc" to="jlff:~VfsUtil" resolve="VfsUtil" />
            <ref role="37wK5l" to="jlff:~VfsUtilCore.processFilesRecursively(com.intellij.openapi.vfs.VirtualFile,com.intellij.util.Processor)" resolve="processFilesRecursively" />
            <node concept="37vLTw" id="2SnxzQPDX0e" role="37wK5m">
              <ref role="3cqZAo" node="2SnxzQPDX09" resolve="projectsRoot" />
            </node>
            <node concept="1bVj0M" id="2SnxzQPDXNs" role="37wK5m">
              <node concept="3clFbS" id="2SnxzQPDXNu" role="1bW5cS">
                <node concept="3clFbJ" id="2SnxzQPDZs_" role="3cqZAp">
                  <node concept="3clFbS" id="2SnxzQPDZsB" role="3clFbx">
                    <node concept="3cpWs6" id="2SnxzQPE0qA" role="3cqZAp">
                      <node concept="3clFbT" id="2SnxzQPE0BX" role="3cqZAk">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="22lmx$" id="2SnxzQPE0dZ" role="3clFbw">
                    <node concept="3fqX7Q" id="2SnxzQPDZZm" role="3uHU7B">
                      <node concept="2OqwBi" id="2SnxzQPDZZo" role="3fr31v">
                        <node concept="37vLTw" id="2SnxzQPDZZp" role="2Oq$k0">
                          <ref role="3cqZAo" node="2SnxzQPDZ3X" resolve="file" />
                        </node>
                        <node concept="liA8E" id="2SnxzQPDZZq" role="2OqNvi">
                          <ref role="37wK5l" to="jlff:~VirtualFile.isValid()" resolve="isValid" />
                        </node>
                      </node>
                    </node>
                    <node concept="3fqX7Q" id="2SnxzQPDZDh" role="3uHU7w">
                      <node concept="2OqwBi" id="2SnxzQPDZDx" role="3fr31v">
                        <node concept="37vLTw" id="2SnxzQPDZDw" role="2Oq$k0">
                          <ref role="3cqZAo" node="2SnxzQPDZ3X" resolve="file" />
                        </node>
                        <node concept="liA8E" id="2SnxzQPDZDy" role="2OqNvi">
                          <ref role="37wK5l" to="jlff:~VirtualFile.isDirectory()" resolve="isDirectory" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="2SnxzQPE1bo" role="3cqZAp">
                  <node concept="1PaTwC" id="ATZLwXopA4" role="1aUNEU">
                    <node concept="3oM_SD" id="ATZLwXopA5" role="1PaTwD">
                      <property role="3oM_SC" value="is" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXopA6" role="1PaTwD">
                      <property role="3oM_SC" value="a" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXopA7" role="1PaTwD">
                      <property role="3oM_SC" value="project" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXopA8" role="1PaTwD">
                      <property role="3oM_SC" value="dir?" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="2SnxzQPE1QO" role="3cqZAp">
                  <node concept="3clFbS" id="2SnxzQPE1QQ" role="3clFbx">
                    <node concept="3cpWs6" id="2SnxzQPE2aW" role="3cqZAp">
                      <node concept="3clFbT" id="2SnxzQPE2pA" role="3cqZAk">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="3fqX7Q" id="2SnxzQPE1Xz" role="3clFbw">
                    <node concept="2OqwBi" id="2SnxzQPE23f" role="3fr31v">
                      <node concept="2OqwBi" id="2SnxzQPE23h" role="2Oq$k0">
                        <node concept="37vLTw" id="2SnxzQPE23i" role="2Oq$k0">
                          <ref role="3cqZAo" node="2SnxzQPDZ3X" resolve="file" />
                        </node>
                        <node concept="liA8E" id="2SnxzQPE23j" role="2OqNvi">
                          <ref role="37wK5l" to="jlff:~VirtualFile.getName()" resolve="getName" />
                        </node>
                      </node>
                      <node concept="liA8E" id="2SnxzQPE23l" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                        <node concept="10M0yZ" id="2mki3EcikEI" role="37wK5m">
                          <ref role="1PxDUh" to="4nm9:~Project" resolve="Project" />
                          <ref role="3cqZAo" to="4nm9:~Project.DIRECTORY_STORE_FOLDER" resolve="DIRECTORY_STORE_FOLDER" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="2SnxzQPEawg" role="3cqZAp">
                  <node concept="2OqwBi" id="2SnxzQPEaFy" role="3clFbG">
                    <node concept="37vLTw" id="2SnxzQPEawe" role="2Oq$k0">
                      <ref role="3cqZAo" node="2SnxzQPE30V" resolve="projects" />
                    </node>
                    <node concept="liA8E" id="2SnxzQPEaZI" role="2OqNvi">
                      <ref role="37wK5l" to="1ctc:~Stream$Builder.add(java.lang.Object)" resolve="add" />
                      <node concept="2OqwBi" id="2SnxzQPEd4u" role="37wK5m">
                        <node concept="2OqwBi" id="3WxHuKXmPjT" role="2Oq$k0">
                          <node concept="37vLTw" id="3WxHuKXmPjU" role="2Oq$k0">
                            <ref role="3cqZAo" node="2SnxzQPDZ3X" resolve="file" />
                          </node>
                          <node concept="liA8E" id="3WxHuKXmPjV" role="2OqNvi">
                            <ref role="37wK5l" to="jlff:~VirtualFile.getParent()" resolve="getParent" />
                          </node>
                        </node>
                        <node concept="liA8E" id="2SnxzQPEdhw" role="2OqNvi">
                          <ref role="37wK5l" to="jlff:~VirtualFile.getPath()" resolve="getPath" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="2SnxzQPE0IC" role="3cqZAp">
                  <node concept="3clFbT" id="2SnxzQPE0ID" role="3cqZAk">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="37vLTG" id="2SnxzQPDZ3X" role="1bW2Oz">
                <property role="TrG5h" value="file" />
                <node concept="3uibUv" id="2SnxzQPDZ3W" role="1tU5fm">
                  <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="30VUjpoa_Do" role="3cqZAp" />
        <node concept="3cpWs6" id="2SnxzQPEeb_" role="3cqZAp">
          <node concept="2OqwBi" id="4ZZ2R77aQDx" role="3cqZAk">
            <node concept="37vLTw" id="2SnxzQPEerU" role="2Oq$k0">
              <ref role="3cqZAo" node="2SnxzQPE30V" resolve="projects" />
            </node>
            <node concept="liA8E" id="4ZZ2R77aRzq" role="2OqNvi">
              <ref role="37wK5l" to="1ctc:~Stream$Builder.build()" resolve="build" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4ZZ2R77aEac" role="1B3o_S" />
      <node concept="3uibUv" id="4ZZ2R77aBNg" role="3clF45">
        <ref role="3uigEE" to="1ctc:~Stream" resolve="Stream" />
        <node concept="17QB3L" id="4ZZ2R77aD1V" role="11_B2D" />
      </node>
    </node>
    <node concept="2tJIrI" id="4ZZ2R77apJr" role="jymVt" />
    <node concept="2AHcQZ" id="4ZZ2R776chB" role="2AJF6D">
      <ref role="2AI5Lk" to="fyhk:~MPSLaunch" resolve="MPSLaunch" />
    </node>
    <node concept="2AHcQZ" id="3LuvecXm163" role="2AJF6D">
      <ref role="2AI5Lk" to="rbkg:~ExtendWith" resolve="ExtendWith" />
      <node concept="1SXeKx" id="3LuvecXmbq4" role="2B76xF">
        <ref role="2B6OnR" to="rbkg:~ExtendWith.value()" resolve="value" />
        <node concept="3VsKOn" id="3LuvecXmfOh" role="2B70Vg">
          <ref role="3VsUkX" to="4rfc:5gsHVKCieoX" resolve="EnvironmentAwareExtension" />
        </node>
      </node>
    </node>
  </node>
</model>

