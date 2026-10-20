<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:5b264c00-4c6c-4ea3-adbc-463b994145ba(jetbrains.mps.migration.component)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="acfc188d-d5d6-4598-b370-6f4a983f05b2" name="jetbrains.mps.baseLanguage.methodReferences" version="0" />
  </languages>
  <imports>
    <import index="ze1i" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.runtime(MPS.Core/)" />
    <import index="wyuk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.components(MPS.Core/)" />
    <import index="4o98" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.core.platform(MPS.Core/)" />
    <import index="bim2" ref="a5b1c28d-abeb-49a6-a58c-559039616d64/r:a9597bdf-0806-4a79-8ace-88240c6b9878(jetbrains.mps.migration.component/jetbrains.mps.ide.migration)" />
    <import index="z1c3" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="z1c4" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="bd8o" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.application(MPS.IDEA/)" />
    <import index="fyhk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps(MPS.Core/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
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
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
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
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
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
      <concept id="1170075670744" name="jetbrains.mps.baseLanguage.structure.SynchronizedStatement" flags="nn" index="1HWtB8">
        <child id="1170075728144" name="expression" index="1HWFw0" />
        <child id="1170075736412" name="block" index="1HWHxc" />
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
  <node concept="312cEu" id="5eQdigY5suQ">
    <property role="TrG5h" value="ModuleActivator" />
    <node concept="312cEg" id="5eQdigY5t0_" role="jymVt">
      <property role="TrG5h" value="myPlatform" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5eQdigY5t0A" role="1B3o_S" />
      <node concept="3uibUv" id="5eQdigY5t0C" role="1tU5fm">
        <ref role="3uigEE" to="wyuk:~ComponentHost" resolve="ComponentHost" />
      </node>
    </node>
    <node concept="312cEg" id="5eQdigY5BlV" role="jymVt">
      <property role="TrG5h" value="myMigrationAccess" />
      <node concept="3Tm6S6" id="5eQdigY5Bb5" role="1B3o_S" />
      <node concept="3uibUv" id="5eQdigY5B_s" role="1tU5fm">
        <ref role="3uigEE" to="4o98:~DynamicComponentWarden$Token" resolve="DynamicComponentWarden.Token" />
      </node>
    </node>
    <node concept="2tJIrI" id="5eQdigY5t2N" role="jymVt" />
    <node concept="3clFbW" id="5eQdigY5sWb" role="jymVt">
      <node concept="37vLTG" id="5eQdigY5sXd" role="3clF46">
        <property role="TrG5h" value="mpsPlatform" />
        <node concept="3uibUv" id="5eQdigY5sZe" role="1tU5fm">
          <ref role="3uigEE" to="wyuk:~ComponentHost" resolve="ComponentHost" />
        </node>
      </node>
      <node concept="3cqZAl" id="5eQdigY5sWd" role="3clF45" />
      <node concept="3Tm1VV" id="5eQdigY5sWe" role="1B3o_S" />
      <node concept="3clFbS" id="5eQdigY5sWf" role="3clF47">
        <node concept="3clFbF" id="5eQdigY5t0D" role="3cqZAp">
          <node concept="37vLTI" id="5eQdigY5t0F" role="3clFbG">
            <node concept="37vLTw" id="5eQdigY5t0I" role="37vLTJ">
              <ref role="3cqZAo" node="5eQdigY5t0_" resolve="myPlatform" />
            </node>
            <node concept="37vLTw" id="5eQdigY5t0J" role="37vLTx">
              <ref role="3cqZAo" node="5eQdigY5sXd" resolve="mpsPlatform" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5eQdigY5t4I" role="jymVt" />
    <node concept="3clFb_" id="5eQdigY5_os" role="jymVt">
      <property role="TrG5h" value="activate" />
      <node concept="3cqZAl" id="5eQdigY5_ou" role="3clF45" />
      <node concept="3Tm1VV" id="5eQdigY5_ov" role="1B3o_S" />
      <node concept="3clFbS" id="5eQdigY5_ow" role="3clF47">
        <node concept="3clFbF" id="5eQdigY5C8$" role="3cqZAp">
          <node concept="37vLTI" id="5eQdigY5Cru" role="3clFbG">
            <node concept="2OqwBi" id="5eQdigY5F3w" role="37vLTx">
              <node concept="2OqwBi" id="5eQdigY5Eum" role="2Oq$k0">
                <node concept="37vLTw" id="5eQdigY5CAf" role="2Oq$k0">
                  <ref role="3cqZAo" node="5eQdigY5t0_" resolve="myPlatform" />
                </node>
                <node concept="liA8E" id="5eQdigY5EBP" role="2OqNvi">
                  <ref role="37wK5l" to="wyuk:~ComponentHost.findComponent(java.lang.Class)" resolve="findComponent" />
                  <node concept="3VsKOn" id="5eQdigY5ENc" role="37wK5m">
                    <ref role="3VsUkX" to="4o98:~DynamicComponentWarden" resolve="DynamicComponentWarden" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="5eQdigY5FfG" role="2OqNvi">
                <ref role="37wK5l" to="4o98:~DynamicComponentWarden.publish(java.lang.Class,jetbrains.mps.components.CoreComponent)" resolve="publish" />
                <node concept="3VsKOn" id="5eQdigY9rTz" role="37wK5m">
                  <ref role="3VsUkX" node="5eQdigY7jYd" resolve="MigrationAccess" />
                </node>
                <node concept="2ShNRf" id="5eQdigY9u5n" role="37wK5m">
                  <node concept="1pGfFk" id="5eQdigY9uWK" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="5eQdigY7klb" resolve="MigrationAccess" />
                    <node concept="2OqwBi" id="5eQdigY9vsF" role="37wK5m">
                      <node concept="37vLTw" id="5eQdigY9v8f" role="2Oq$k0">
                        <ref role="3cqZAo" node="5eQdigY5t0_" resolve="myPlatform" />
                      </node>
                      <node concept="liA8E" id="5eQdigY9vJB" role="2OqNvi">
                        <ref role="37wK5l" to="wyuk:~ComponentHost.findComponent(java.lang.Class)" resolve="findComponent" />
                        <node concept="3VsKOn" id="5eQdigY9w21" role="37wK5m">
                          <ref role="3VsUkX" to="z1c4:~ProjectManager" resolve="ProjectManager" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="5eQdigY5C8z" role="37vLTJ">
              <ref role="3cqZAo" node="5eQdigY5BlV" resolve="myMigrationAccess" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5eQdigY5_sp" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5eQdigY5ATW" role="jymVt" />
    <node concept="3clFb_" id="5eQdigY5AQc" role="jymVt">
      <property role="TrG5h" value="deactivate" />
      <node concept="3cqZAl" id="5eQdigY5AQd" role="3clF45" />
      <node concept="3Tm1VV" id="5eQdigY5AQe" role="1B3o_S" />
      <node concept="3clFbS" id="5eQdigY5AQf" role="3clF47">
        <node concept="3clFbF" id="5eQdigY5FmE" role="3cqZAp">
          <node concept="2OqwBi" id="5eQdigY5FwN" role="3clFbG">
            <node concept="37vLTw" id="5eQdigY5FmD" role="2Oq$k0">
              <ref role="3cqZAo" node="5eQdigY5BlV" resolve="myMigrationAccess" />
            </node>
            <node concept="liA8E" id="5eQdigY5FGB" role="2OqNvi">
              <ref role="37wK5l" to="4o98:~DynamicComponentWarden$Token.discard()" resolve="discard" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5eQdigY5FT6" role="3cqZAp">
          <node concept="37vLTI" id="5eQdigY5FZD" role="3clFbG">
            <node concept="10Nm6u" id="5eQdigY5G67" role="37vLTx" />
            <node concept="37vLTw" id="5eQdigY5FT4" role="37vLTJ">
              <ref role="3cqZAo" node="5eQdigY5BlV" resolve="myMigrationAccess" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5eQdigY5AQg" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="5eQdigY5suR" role="1B3o_S" />
    <node concept="3uibUv" id="5eQdigY5sVx" role="EKbjA">
      <ref role="3uigEE" to="ze1i:~ModuleRuntime$Activator" resolve="ModuleRuntime.Activator" />
    </node>
  </node>
  <node concept="312cEu" id="5eQdigY7jYd">
    <property role="TrG5h" value="MigrationAccess" />
    <node concept="2tJIrI" id="5eQdigY7kjT" role="jymVt" />
    <node concept="312cEg" id="5eQdigY7ko3" role="jymVt">
      <property role="TrG5h" value="myProjectManager" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5eQdigY7ko4" role="1B3o_S" />
      <node concept="3uibUv" id="5eQdigY7ko6" role="1tU5fm">
        <ref role="3uigEE" to="z1c4:~ProjectManager" resolve="ProjectManager" />
      </node>
    </node>
    <node concept="312cEg" id="5eQdigY7k$N" role="jymVt">
      <property role="TrG5h" value="myInstanceMap" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5eQdigY7kyy" role="1B3o_S" />
      <node concept="3uibUv" id="5eQdigY7kAE" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="3uibUv" id="5eQdigY7kBR" role="11_B2D">
          <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
        </node>
        <node concept="3uibUv" id="5eQdigY7kCZ" role="11_B2D">
          <ref role="3uigEE" to="bim2:4D3Y1hNxTJF" resolve="IStartupMigrationExecutor" />
        </node>
      </node>
      <node concept="2ShNRf" id="5eQdigY7kHU" role="33vP2m">
        <node concept="1pGfFk" id="5eQdigY7mCg" role="2ShVmc">
          <property role="373rjd" value="true" />
          <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="5eQdigY7n9r" role="jymVt">
      <property role="TrG5h" value="myProjectListener" />
      <node concept="3Tm6S6" id="5eQdigY7n9s" role="1B3o_S" />
      <node concept="3uibUv" id="5eQdigY7nfT" role="1tU5fm">
        <ref role="3uigEE" to="z1c4:~ProjectManagerListener" resolve="ProjectManagerListener" />
      </node>
    </node>
    <node concept="2tJIrI" id="5eQdigY7kss" role="jymVt" />
    <node concept="3clFbW" id="5eQdigY7klb" role="jymVt">
      <node concept="3cqZAl" id="5eQdigY7kld" role="3clF45" />
      <node concept="3Tm1VV" id="5eQdigY7kle" role="1B3o_S" />
      <node concept="3clFbS" id="5eQdigY7klf" role="3clF47">
        <node concept="3clFbF" id="5eQdigY7ko7" role="3cqZAp">
          <node concept="37vLTI" id="5eQdigY7ko9" role="3clFbG">
            <node concept="37vLTw" id="5eQdigY7koc" role="37vLTJ">
              <ref role="3cqZAo" node="5eQdigY7ko3" resolve="myProjectManager" />
            </node>
            <node concept="37vLTw" id="5eQdigY7kod" role="37vLTx">
              <ref role="3cqZAo" node="5eQdigY7kmH" resolve="projectManager" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5eQdigY7kmH" role="3clF46">
        <property role="TrG5h" value="projectManager" />
        <node concept="3uibUv" id="5eQdigY7kmG" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~ProjectManager" resolve="ProjectManager" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5eQdigY7k4E" role="jymVt" />
    <node concept="3clFb_" id="5eQdigY7mG9" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="3cqZAl" id="5eQdigY7mGb" role="3clF45" />
      <node concept="3Tm1VV" id="5eQdigY7mGc" role="1B3o_S" />
      <node concept="3clFbS" id="5eQdigY7mGd" role="3clF47">
        <node concept="3cpWs8" id="1rsxVBlvO8D" role="3cqZAp">
          <node concept="3cpWsn" id="1rsxVBlvO8B" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="known" />
            <node concept="3uibUv" id="1rsxVBlvP9L" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="1rsxVBlvQuK" role="11_B2D">
                <ref role="3uigEE" to="bim2:5SsFeroaajZ" resolve="MigrationTrigger" />
              </node>
            </node>
            <node concept="2ShNRf" id="1rsxVBlvUjn" role="33vP2m">
              <node concept="1pGfFk" id="1rsxVBlvX$M" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1HWtB8" id="5eQdigY8ZnC" role="3cqZAp">
          <node concept="Xjq3P" id="5eQdigY903w" role="1HWFw0" />
          <node concept="3clFbS" id="5eQdigY8ZnG" role="1HWHxc">
            <node concept="3clFbJ" id="5eQdigY7Y0j" role="3cqZAp">
              <node concept="3clFbC" id="1rsxVBlvJI5" role="3clFbw">
                <node concept="37vLTw" id="5eQdigY7YiL" role="3uHU7B">
                  <ref role="3cqZAo" node="5eQdigY7n9r" resolve="myProjectListener" />
                </node>
                <node concept="10Nm6u" id="5eQdigY7YYX" role="3uHU7w" />
              </node>
              <node concept="3clFbS" id="5eQdigY7Y0l" role="3clFbx">
                <node concept="3cpWs6" id="1rsxVBlvLiJ" role="3cqZAp" />
              </node>
            </node>
            <node concept="3clFbF" id="5eQdigY7ZhC" role="3cqZAp">
              <node concept="2OqwBi" id="5eQdigY7ZGS" role="3clFbG">
                <node concept="37vLTw" id="5eQdigY7ZhB" role="2Oq$k0">
                  <ref role="3cqZAo" node="5eQdigY7ko3" resolve="myProjectManager" />
                </node>
                <node concept="liA8E" id="5eQdigY804w" role="2OqNvi">
                  <ref role="37wK5l" to="z1c4:~ProjectManager.removeProjectListener(jetbrains.mps.project.ProjectManagerListener)" resolve="removeProjectListener" />
                  <node concept="37vLTw" id="5eQdigY80n_" role="37wK5m">
                    <ref role="3cqZAo" node="5eQdigY7n9r" resolve="myProjectListener" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5eQdigY816X" role="3cqZAp">
              <node concept="37vLTI" id="5eQdigY81x6" role="3clFbG">
                <node concept="10Nm6u" id="5eQdigY81Ot" role="37vLTx" />
                <node concept="37vLTw" id="5eQdigY816V" role="37vLTJ">
                  <ref role="3cqZAo" node="5eQdigY7n9r" resolve="myProjectListener" />
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="1rsxVBlw2ad" role="3cqZAp">
              <node concept="3clFbS" id="1rsxVBlw2ag" role="2LFqv$">
                <node concept="3cpWs8" id="1rsxVBlw7Up" role="3cqZAp">
                  <node concept="3cpWsn" id="1rsxVBlw7Uq" role="3cpWs9">
                    <property role="TrG5h" value="ee" />
                    <node concept="3uibUv" id="1rsxVBlw7nr" role="1tU5fm">
                      <ref role="3uigEE" to="bim2:4D3Y1hNxTJF" resolve="IStartupMigrationExecutor" />
                    </node>
                    <node concept="1rXfSq" id="1rsxVBlw7Ur" role="33vP2m">
                      <ref role="37wK5l" node="5eQdigY8bhx" resolve="forget" />
                      <node concept="37vLTw" id="1rsxVBlw7Us" role="37wK5m">
                        <ref role="3cqZAo" node="1rsxVBlw2ah" resolve="p" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="1rsxVBlwefY" role="3cqZAp">
                  <node concept="3clFbS" id="1rsxVBlweg0" role="3clFbx">
                    <node concept="3clFbF" id="1rsxVBlwjHW" role="3cqZAp">
                      <node concept="2OqwBi" id="1rsxVBlwlx_" role="3clFbG">
                        <node concept="37vLTw" id="1rsxVBlwjHU" role="2Oq$k0">
                          <ref role="3cqZAo" node="1rsxVBlvO8B" resolve="known" />
                        </node>
                        <node concept="liA8E" id="1rsxVBlwnKK" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                          <node concept="10QFUN" id="1rsxVBlwpgh" role="37wK5m">
                            <node concept="3uibUv" id="1rsxVBlwsbC" role="10QFUM">
                              <ref role="3uigEE" to="bim2:5SsFeroaajZ" resolve="MigrationTrigger" />
                            </node>
                            <node concept="37vLTw" id="1rsxVBlwqI$" role="10QFUP">
                              <ref role="3cqZAo" node="1rsxVBlw7Uq" resolve="ee" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2ZW3vV" id="1rsxVBlwh40" role="3clFbw">
                    <node concept="3uibUv" id="1rsxVBlwiu$" role="2ZW6by">
                      <ref role="3uigEE" to="bim2:5SsFeroaajZ" resolve="MigrationTrigger" />
                    </node>
                    <node concept="37vLTw" id="1rsxVBlwfq2" role="2ZW6bz">
                      <ref role="3cqZAo" node="1rsxVBlw7Uq" resolve="ee" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="1rsxVBlw2ah" role="1Duv9x">
                <property role="TrG5h" value="p" />
                <node concept="3uibUv" id="1rsxVBlw2al" role="1tU5fm">
                  <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
                </node>
              </node>
              <node concept="2ShNRf" id="1rsxVBlyTg4" role="1DdaDG">
                <node concept="1pGfFk" id="1rsxVBlyWWQ" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;(java.util.Collection)" resolve="ArrayList" />
                  <node concept="2OqwBi" id="1rsxVBlz2KF" role="37wK5m">
                    <node concept="37vLTw" id="1rsxVBlz2KG" role="2Oq$k0">
                      <ref role="3cqZAo" node="5eQdigY7k$N" resolve="myInstanceMap" />
                    </node>
                    <node concept="liA8E" id="1rsxVBlz2KH" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Map.keySet()" resolve="keySet" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1rsxVBlwGD9" role="3cqZAp">
          <node concept="1PaTwC" id="1rsxVBlwGDa" role="1aUNEU">
            <node concept="3oM_SD" id="1rsxVBlwHXu" role="1PaTwD">
              <property role="3oM_SC" value="events" />
            </node>
            <node concept="3oM_SD" id="1rsxVBlwHYG" role="1PaTwD">
              <property role="3oM_SC" value="outside" />
            </node>
            <node concept="3oM_SD" id="1rsxVBlwHZV" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="1rsxVBlwHZW" role="1PaTwD">
              <property role="3oM_SC" value="synchronized!" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1rsxVBlwzBk" role="3cqZAp">
          <node concept="2OqwBi" id="1rsxVBlw$Zb" role="3clFbG">
            <node concept="37vLTw" id="1rsxVBlwzBi" role="2Oq$k0">
              <ref role="3cqZAo" node="1rsxVBlvO8B" resolve="known" />
            </node>
            <node concept="liA8E" id="1rsxVBlwASi" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Iterable.forEach(java.util.function.Consumer)" resolve="forEach" />
              <node concept="37Ijox" id="1rsxVBlwCqd" role="37wK5m">
                <ref role="37Ijqf" to="bim2:1AzqgyAfalv" resolve="projectClosed" />
                <node concept="2FaPjH" id="1rsxVBlwCqf" role="wWaWy">
                  <node concept="3uibUv" id="1rsxVBlwCqg" role="2FaQuo">
                    <ref role="3uigEE" to="bim2:5SsFeroaajZ" resolve="MigrationTrigger" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5eQdigY7mXz" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5eQdigY7kgx" role="jymVt" />
    <node concept="3clFb_" id="5eQdigY7k5l" role="jymVt">
      <property role="TrG5h" value="get" />
      <node concept="3uibUv" id="5eQdigY7k8G" role="3clF45">
        <ref role="3uigEE" to="bim2:4D3Y1hNxTJF" resolve="IStartupMigrationExecutor" />
      </node>
      <node concept="3Tm1VV" id="5eQdigY7k5o" role="1B3o_S" />
      <node concept="3clFbS" id="5eQdigY7k5p" role="3clF47">
        <node concept="3cpWs8" id="5eQdigY7p7G" role="3cqZAp">
          <node concept="3cpWsn" id="5eQdigY7p7H" role="3cpWs9">
            <property role="TrG5h" value="rv" />
            <node concept="3uibUv" id="5eQdigY7oRt" role="1tU5fm">
              <ref role="3uigEE" to="bim2:4D3Y1hNxTJF" resolve="IStartupMigrationExecutor" />
            </node>
          </node>
        </node>
        <node concept="1HWtB8" id="5eQdigY7kei" role="3cqZAp">
          <node concept="Xjq3P" id="5eQdigY7kfP" role="1HWFw0" />
          <node concept="3clFbS" id="5eQdigY7kem" role="1HWHxc">
            <node concept="3clFbF" id="5eQdigYaafE" role="3cqZAp">
              <node concept="37vLTI" id="5eQdigYaafG" role="3clFbG">
                <node concept="2OqwBi" id="5eQdigY7p7I" role="37vLTx">
                  <node concept="37vLTw" id="5eQdigY7p7J" role="2Oq$k0">
                    <ref role="3cqZAo" node="5eQdigY7k$N" resolve="myInstanceMap" />
                  </node>
                  <node concept="liA8E" id="5eQdigY7p7K" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                    <node concept="37vLTw" id="5eQdigY7p7L" role="37wK5m">
                      <ref role="3cqZAo" node="5eQdigY7k9U" resolve="mpsProject" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="5eQdigYaafK" role="37vLTJ">
                  <ref role="3cqZAo" node="5eQdigY7p7H" resolve="rv" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5eQdigY7pQw" role="3cqZAp">
              <node concept="3clFbS" id="5eQdigY7pQy" role="3clFbx">
                <node concept="3cpWs6" id="5eQdigY7qLQ" role="3cqZAp">
                  <node concept="37vLTw" id="5eQdigY7rc7" role="3cqZAk">
                    <ref role="3cqZAo" node="5eQdigY7p7H" resolve="rv" />
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="5eQdigY7qjz" role="3clFbw">
                <node concept="10Nm6u" id="5eQdigY7quk" role="3uHU7w" />
                <node concept="37vLTw" id="5eQdigY7q4R" role="3uHU7B">
                  <ref role="3cqZAo" node="5eQdigY7p7H" resolve="rv" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="5eQdigY7Xz8" role="3cqZAp">
              <node concept="1PaTwC" id="5eQdigY7Xz9" role="1aUNEU">
                <node concept="3oM_SD" id="5eQdigY7XZB" role="1PaTwD">
                  <property role="3oM_SC" value="mimic" />
                </node>
                <node concept="3oM_SD" id="5eQdigY7XZH" role="1PaTwD">
                  <property role="3oM_SC" value="&lt;headless-implementation-class&gt;" />
                </node>
                <node concept="3oM_SD" id="5eQdigY7XZK" role="1PaTwD">
                  <property role="3oM_SC" value="from" />
                </node>
                <node concept="3oM_SD" id="5eQdigY7XZO" role="1PaTwD">
                  <property role="3oM_SC" value="plugin.xml" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5eQdigY7zrT" role="3cqZAp">
              <node concept="3clFbS" id="5eQdigY7zrV" role="3clFbx">
                <node concept="3SKdUt" id="5eQdigY7Q1B" role="3cqZAp">
                  <node concept="1PaTwC" id="5eQdigY7Q1C" role="1aUNEU">
                    <node concept="3oM_SD" id="5eQdigY7Qis" role="1PaTwD">
                      <property role="3oM_SC" value="not" />
                    </node>
                    <node concept="3oM_SD" id="5eQdigY7Qiu" role="1PaTwD">
                      <property role="3oM_SC" value="sure" />
                    </node>
                    <node concept="3oM_SD" id="5eQdigY7Qiy" role="1PaTwD">
                      <property role="3oM_SC" value="the" />
                    </node>
                    <node concept="3oM_SD" id="5eQdigY7QiL" role="1PaTwD">
                      <property role="3oM_SC" value="TestMode" />
                    </node>
                    <node concept="3oM_SD" id="5eQdigY7QiQ" role="1PaTwD">
                      <property role="3oM_SC" value="check" />
                    </node>
                    <node concept="3oM_SD" id="5eQdigY7QiW" role="1PaTwD">
                      <property role="3oM_SC" value="is" />
                    </node>
                    <node concept="3oM_SD" id="5eQdigY7Qj3" role="1PaTwD">
                      <property role="3oM_SC" value="necessary," />
                    </node>
                    <node concept="3oM_SD" id="5eQdigY7Qjb" role="1PaTwD">
                      <property role="3oM_SC" value="provided" />
                    </node>
                    <node concept="3oM_SD" id="5eQdigY7Qjk" role="1PaTwD">
                      <property role="3oM_SC" value="we" />
                    </node>
                    <node concept="3oM_SD" id="5eQdigY7Qju" role="1PaTwD">
                      <property role="3oM_SC" value="check" />
                    </node>
                    <node concept="3oM_SD" id="5eQdigY7QjD" role="1PaTwD">
                      <property role="3oM_SC" value="for" />
                    </node>
                    <node concept="3oM_SD" id="5eQdigY7QjP" role="1PaTwD">
                      <property role="3oM_SC" value="headless" />
                    </node>
                    <node concept="3oM_SD" id="5eQdigY7Qk2" role="1PaTwD">
                      <property role="3oM_SC" value="and" />
                    </node>
                    <node concept="3oM_SD" id="5eQdigY7Qkg" role="1PaTwD">
                      <property role="3oM_SC" value="IDEA's" />
                    </node>
                    <node concept="3oM_SD" id="5eQdigY7Qkv" role="1PaTwD">
                      <property role="3oM_SC" value="unittest" />
                    </node>
                    <node concept="3oM_SD" id="5eQdigY7QkJ" role="1PaTwD">
                      <property role="3oM_SC" value="mode," />
                    </node>
                    <node concept="3oM_SD" id="5eQdigY7Ql0" role="1PaTwD">
                      <property role="3oM_SC" value="just" />
                    </node>
                    <node concept="3oM_SD" id="5eQdigY7Qli" role="1PaTwD">
                      <property role="3oM_SC" value="copied" />
                    </node>
                    <node concept="3oM_SD" id="5eQdigY7Ql_" role="1PaTwD">
                      <property role="3oM_SC" value="from" />
                    </node>
                    <node concept="3oM_SD" id="5eQdigY7QlT" role="1PaTwD">
                      <property role="3oM_SC" value="MigrationTrigger.projectOpened()" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5eQdigY7TOr" role="3cqZAp">
                  <node concept="37vLTI" id="5eQdigY7UbJ" role="3clFbG">
                    <node concept="2ShNRf" id="5eQdigY7Utm" role="37vLTx">
                      <node concept="1pGfFk" id="5eQdigY7W7l" role="2ShVmc">
                        <property role="373rjd" value="true" />
                        <ref role="37wK5l" to="bim2:4D3Y1hNyLMS" resolve="HeadlessMigrationExecutor" />
                        <node concept="2OqwBi" id="5eQdigY7WpO" role="37wK5m">
                          <node concept="37vLTw" id="5eQdigY7WpP" role="2Oq$k0">
                            <ref role="3cqZAo" node="5eQdigY7k9U" resolve="mpsProject" />
                          </node>
                          <node concept="liA8E" id="5eQdigY7WpQ" role="2OqNvi">
                            <ref role="37wK5l" to="z1c3:~MPSProject.getProject()" resolve="getProject" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="5eQdigY7TOp" role="37vLTJ">
                      <ref role="3cqZAo" node="5eQdigY7p7H" resolve="rv" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="22lmx$" id="5eQdigY7N5j" role="3clFbw">
                <node concept="22lmx$" id="5eQdigY7KOn" role="3uHU7B">
                  <node concept="2OqwBi" id="5eQdigY7IUN" role="3uHU7B">
                    <node concept="2YIFZM" id="5eQdigY7IjD" role="2Oq$k0">
                      <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
                      <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
                    </node>
                    <node concept="liA8E" id="5eQdigY7JlU" role="2OqNvi">
                      <ref role="37wK5l" to="bd8o:~Application.isHeadlessEnvironment()" resolve="isHeadlessEnvironment" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="5eQdigY7LqM" role="3uHU7w">
                    <node concept="2YIFZM" id="5eQdigY7LqN" role="2Oq$k0">
                      <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
                      <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
                    </node>
                    <node concept="liA8E" id="5eQdigY7LqO" role="2OqNvi">
                      <ref role="37wK5l" to="bd8o:~Application.isUnitTestMode()" resolve="isUnitTestMode" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="1oo0A63Iyeb" role="3uHU7w">
                  <node concept="2YIFZM" id="1oo0A63IzXH" role="2Oq$k0">
                    <ref role="1Pybhc" to="fyhk:~RuntimeFlags" resolve="RuntimeFlags" />
                    <ref role="37wK5l" to="fyhk:~RuntimeFlags.getTestMode()" resolve="getTestMode" />
                  </node>
                  <node concept="liA8E" id="1oo0A63Iyed" role="2OqNvi">
                    <ref role="37wK5l" to="fyhk:~TestMode.isInsideTestEnvironment()" resolve="isInsideTestEnvironment" />
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="5eQdigY7St8" role="9aQIa">
                <node concept="3clFbS" id="5eQdigY7St9" role="9aQI4">
                  <node concept="3clFbF" id="5eQdigY7nm3" role="3cqZAp">
                    <node concept="37vLTI" id="5eQdigY7rVq" role="3clFbG">
                      <node concept="2ShNRf" id="5eQdigY7sdl" role="37vLTx">
                        <node concept="1pGfFk" id="5eQdigY7sRY" role="2ShVmc">
                          <property role="373rjd" value="true" />
                          <ref role="37wK5l" to="bim2:1AzqgyAfaNk" resolve="MigrationTrigger" />
                          <node concept="2OqwBi" id="5eQdigY7tCV" role="37wK5m">
                            <node concept="37vLTw" id="5eQdigY7t4K" role="2Oq$k0">
                              <ref role="3cqZAo" node="5eQdigY7k9U" resolve="mpsProject" />
                            </node>
                            <node concept="liA8E" id="5eQdigY7u1P" role="2OqNvi">
                              <ref role="37wK5l" to="z1c3:~MPSProject.getProject()" resolve="getProject" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="5eQdigY7p7M" role="37vLTJ">
                        <ref role="3cqZAo" node="5eQdigY7p7H" resolve="rv" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5eQdigY7uta" role="3cqZAp">
              <node concept="2OqwBi" id="5eQdigY7v5u" role="3clFbG">
                <node concept="37vLTw" id="5eQdigY7ut8" role="2Oq$k0">
                  <ref role="3cqZAo" node="5eQdigY7k$N" resolve="myInstanceMap" />
                </node>
                <node concept="liA8E" id="5eQdigY7wmX" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                  <node concept="37vLTw" id="5eQdigY7wED" role="37wK5m">
                    <ref role="3cqZAo" node="5eQdigY7k9U" resolve="mpsProject" />
                  </node>
                  <node concept="37vLTw" id="5eQdigY7xnh" role="37wK5m">
                    <ref role="3cqZAo" node="5eQdigY7p7H" resolve="rv" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5eQdigY82_e" role="3cqZAp">
              <node concept="3clFbS" id="5eQdigY82_g" role="3clFbx">
                <node concept="3clFbF" id="5eQdigY84wr" role="3cqZAp">
                  <node concept="37vLTI" id="5eQdigY85aq" role="3clFbG">
                    <node concept="2ShNRf" id="5eQdigY890b" role="37vLTx">
                      <node concept="HV5vD" id="5eQdigY89V0" role="2ShVmc">
                        <property role="373rjd" value="true" />
                        <ref role="HV5vE" node="5eQdigY87cp" resolve="MigrationAccess.PL" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="5eQdigY84wp" role="37vLTJ">
                      <ref role="3cqZAo" node="5eQdigY7n9r" resolve="myProjectListener" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5eQdigY85Ql" role="3cqZAp">
                  <node concept="2OqwBi" id="5eQdigY869U" role="3clFbG">
                    <node concept="37vLTw" id="5eQdigY85Qj" role="2Oq$k0">
                      <ref role="3cqZAo" node="5eQdigY7ko3" resolve="myProjectManager" />
                    </node>
                    <node concept="liA8E" id="5eQdigY86zM" role="2OqNvi">
                      <ref role="37wK5l" to="z1c4:~ProjectManager.addProjectListener(jetbrains.mps.project.ProjectManagerListener)" resolve="addProjectListener" />
                      <node concept="37vLTw" id="5eQdigY86S3" role="37wK5m">
                        <ref role="3cqZAo" node="5eQdigY7n9r" resolve="myProjectListener" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="5eQdigY83SG" role="3clFbw">
                <node concept="10Nm6u" id="5eQdigY84cz" role="3uHU7w" />
                <node concept="37vLTw" id="5eQdigY833Q" role="3uHU7B">
                  <ref role="3cqZAo" node="5eQdigY7n9r" resolve="myProjectListener" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5eQdigYaiSu" role="3cqZAp">
          <node concept="3clFbS" id="5eQdigYaiSv" role="3clFbx">
            <node concept="3clFbF" id="5eQdigYaiSw" role="3cqZAp">
              <node concept="2OqwBi" id="5eQdigYaiSx" role="3clFbG">
                <node concept="1eOMI4" id="5eQdigYaiSy" role="2Oq$k0">
                  <node concept="10QFUN" id="5eQdigYaiSz" role="1eOMHV">
                    <node concept="3uibUv" id="5eQdigYaiS$" role="10QFUM">
                      <ref role="3uigEE" to="bim2:5SsFeroaajZ" resolve="MigrationTrigger" />
                    </node>
                    <node concept="37vLTw" id="5eQdigYaiS_" role="10QFUP">
                      <ref role="3cqZAo" node="5eQdigY7p7H" resolve="rv" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="5eQdigYaiSA" role="2OqNvi">
                  <ref role="37wK5l" to="bim2:1AzqgyAfalq" resolve="projectOpened" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="5eQdigYaiSB" role="3clFbw">
            <node concept="3uibUv" id="5eQdigYaiSC" role="2ZW6by">
              <ref role="3uigEE" to="bim2:5SsFeroaajZ" resolve="MigrationTrigger" />
            </node>
            <node concept="37vLTw" id="5eQdigYalel" role="2ZW6bz">
              <ref role="3cqZAo" node="5eQdigY7p7H" resolve="rv" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5eQdigY7y3L" role="3cqZAp">
          <node concept="37vLTw" id="5eQdigY7yrR" role="3cqZAk">
            <ref role="3cqZAo" node="5eQdigY7p7H" resolve="rv" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5eQdigY7k9U" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3uibUv" id="5eQdigY7k9T" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1rsxVBlvlWc" role="jymVt" />
    <node concept="3clFb_" id="5eQdigY8bhx" role="jymVt">
      <property role="TrG5h" value="forget" />
      <node concept="3uibUv" id="1rsxVBlvpFC" role="3clF45">
        <ref role="3uigEE" to="bim2:4D3Y1hNxTJF" resolve="IStartupMigrationExecutor" />
      </node>
      <node concept="3clFbS" id="5eQdigY8bh_" role="3clF47">
        <node concept="3cpWs8" id="5eQdigY8gVN" role="3cqZAp">
          <node concept="3cpWsn" id="5eQdigY8gVO" role="3cpWs9">
            <property role="TrG5h" value="ee" />
            <node concept="3uibUv" id="5eQdigY8gAJ" role="1tU5fm">
              <ref role="3uigEE" to="bim2:4D3Y1hNxTJF" resolve="IStartupMigrationExecutor" />
            </node>
          </node>
        </node>
        <node concept="1HWtB8" id="5eQdigY8d7$" role="3cqZAp">
          <node concept="Xjq3P" id="5eQdigY8dsL" role="1HWFw0" />
          <node concept="3clFbS" id="5eQdigY8d7A" role="1HWHxc">
            <node concept="3clFbF" id="5eQdigY8ztN" role="3cqZAp">
              <node concept="37vLTI" id="5eQdigY8ztP" role="3clFbG">
                <node concept="2OqwBi" id="5eQdigY8gVP" role="37vLTx">
                  <node concept="37vLTw" id="5eQdigY8gVQ" role="2Oq$k0">
                    <ref role="3cqZAo" node="5eQdigY7k$N" resolve="myInstanceMap" />
                  </node>
                  <node concept="liA8E" id="5eQdigY8gVR" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Map.remove(java.lang.Object)" resolve="remove" />
                    <node concept="37vLTw" id="5eQdigY8gVS" role="37wK5m">
                      <ref role="3cqZAo" node="5eQdigY8cJr" resolve="mpsProject" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="5eQdigY8ztT" role="37vLTJ">
                  <ref role="3cqZAo" node="5eQdigY8gVO" resolve="ee" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5eQdigY8Khp" role="3cqZAp">
              <node concept="3clFbS" id="5eQdigY8Khr" role="3clFbx">
                <node concept="3clFbF" id="5eQdigY8MWO" role="3cqZAp">
                  <node concept="2OqwBi" id="5eQdigY8MWP" role="3clFbG">
                    <node concept="37vLTw" id="5eQdigY8MWQ" role="2Oq$k0">
                      <ref role="3cqZAo" node="5eQdigY7ko3" resolve="myProjectManager" />
                    </node>
                    <node concept="liA8E" id="5eQdigY8MWR" role="2OqNvi">
                      <ref role="37wK5l" to="z1c4:~ProjectManager.removeProjectListener(jetbrains.mps.project.ProjectManagerListener)" resolve="removeProjectListener" />
                      <node concept="37vLTw" id="5eQdigY8MWS" role="37wK5m">
                        <ref role="3cqZAo" node="5eQdigY7n9r" resolve="myProjectListener" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5eQdigY8MWT" role="3cqZAp">
                  <node concept="37vLTI" id="5eQdigY8MWU" role="3clFbG">
                    <node concept="10Nm6u" id="5eQdigY8MWV" role="37vLTx" />
                    <node concept="37vLTw" id="5eQdigY8MWW" role="37vLTJ">
                      <ref role="3cqZAo" node="5eQdigY7n9r" resolve="myProjectListener" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="5eQdigY9noV" role="3clFbw">
                <node concept="3y3z36" id="5eQdigY9pU$" role="3uHU7w">
                  <node concept="10Nm6u" id="5eQdigY9qHr" role="3uHU7w" />
                  <node concept="37vLTw" id="5eQdigY9oXd" role="3uHU7B">
                    <ref role="3cqZAo" node="5eQdigY7n9r" resolve="myProjectListener" />
                  </node>
                </node>
                <node concept="2OqwBi" id="5eQdigY8P2e" role="3uHU7B">
                  <node concept="37vLTw" id="5eQdigY8KL7" role="2Oq$k0">
                    <ref role="3cqZAo" node="5eQdigY7k$N" resolve="myInstanceMap" />
                  </node>
                  <node concept="liA8E" id="5eQdigY8QwM" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Map.isEmpty()" resolve="isEmpty" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1rsxVBlvAo1" role="3cqZAp">
          <node concept="37vLTw" id="1rsxVBlvBOq" role="3cqZAk">
            <ref role="3cqZAo" node="5eQdigY8gVO" resolve="ee" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5eQdigY8cJr" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3uibUv" id="5eQdigY8cJq" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1rsxVBlvnSf" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="5eQdigY7khg" role="jymVt" />
    <node concept="312cEu" id="5eQdigY87cp" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="PL" />
      <node concept="3clFb_" id="5eQdigY8D7T" role="jymVt">
        <property role="TrG5h" value="projectClosed" />
        <node concept="37vLTG" id="5eQdigY5JIF" role="3clF46">
          <property role="TrG5h" value="p" />
          <node concept="3uibUv" id="5eQdigY5JIE" role="1tU5fm">
            <ref role="3uigEE" to="z1c4:~Project" resolve="Project" />
          </node>
          <node concept="2AHcQZ" id="5eQdigY5JIG" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3cqZAl" id="5eQdigY8D7V" role="3clF45" />
        <node concept="3clFbS" id="5eQdigY8D7W" role="3clF47">
          <node concept="3cpWs8" id="1rsxVBlvCBG" role="3cqZAp">
            <node concept="3cpWsn" id="1rsxVBlvCBH" role="3cpWs9">
              <property role="TrG5h" value="ee" />
              <node concept="3uibUv" id="1rsxVBlvCbc" role="1tU5fm">
                <ref role="3uigEE" to="bim2:4D3Y1hNxTJF" resolve="IStartupMigrationExecutor" />
              </node>
              <node concept="1rXfSq" id="1rsxVBlvCBI" role="33vP2m">
                <ref role="37wK5l" node="5eQdigY8bhx" resolve="forget" />
                <node concept="37vLTw" id="1rsxVBlvCBJ" role="37wK5m">
                  <ref role="3cqZAo" node="5eQdigY5JIF" resolve="p" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="1rsxVBlwIO7" role="3cqZAp">
            <node concept="1PaTwC" id="1rsxVBlwIO8" role="1aUNEU">
              <node concept="3oM_SD" id="1rsxVBlwIO9" role="1PaTwD">
                <property role="3oM_SC" value="events" />
              </node>
              <node concept="3oM_SD" id="1rsxVBlwIOa" role="1PaTwD">
                <property role="3oM_SC" value="outside" />
              </node>
              <node concept="3oM_SD" id="1rsxVBlwIOb" role="1PaTwD">
                <property role="3oM_SC" value="of" />
              </node>
              <node concept="3oM_SD" id="1rsxVBlwIOc" role="1PaTwD">
                <property role="3oM_SC" value="synchronized!" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="5eQdigY8iwm" role="3cqZAp">
            <node concept="3clFbS" id="5eQdigY8iwo" role="3clFbx">
              <node concept="3clFbF" id="5eQdigY8vBt" role="3cqZAp">
                <node concept="2OqwBi" id="5eQdigY8y7Q" role="3clFbG">
                  <node concept="1eOMI4" id="5eQdigY8xzM" role="2Oq$k0">
                    <node concept="10QFUN" id="5eQdigY8xzJ" role="1eOMHV">
                      <node concept="3uibUv" id="5eQdigY8xzO" role="10QFUM">
                        <ref role="3uigEE" to="bim2:5SsFeroaajZ" resolve="MigrationTrigger" />
                      </node>
                      <node concept="37vLTw" id="5eQdigY8xzP" role="10QFUP">
                        <ref role="3cqZAo" node="1rsxVBlvCBH" resolve="ee" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="5eQdigY8y_A" role="2OqNvi">
                    <ref role="37wK5l" to="bim2:1AzqgyAfalv" resolve="projectClosed" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ZW3vV" id="5eQdigY8jsl" role="3clFbw">
              <node concept="3uibUv" id="5eQdigY8ssC" role="2ZW6by">
                <ref role="3uigEE" to="bim2:5SsFeroaajZ" resolve="MigrationTrigger" />
              </node>
              <node concept="37vLTw" id="5eQdigY8iXq" role="2ZW6bz">
                <ref role="3cqZAo" node="1rsxVBlvCBH" resolve="ee" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="5eQdigY8FmV" role="1B3o_S" />
        <node concept="2AHcQZ" id="5eQdigY8HNj" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3uibUv" id="5eQdigY88Jv" role="EKbjA">
        <ref role="3uigEE" to="z1c4:~ProjectManagerListener" resolve="ProjectManagerListener" />
      </node>
    </node>
    <node concept="3Tm1VV" id="5eQdigY7jYe" role="1B3o_S" />
    <node concept="3uibUv" id="5eQdigY7jYR" role="EKbjA">
      <ref role="3uigEE" to="wyuk:~CoreComponent" resolve="CoreComponent" />
    </node>
  </node>
</model>

