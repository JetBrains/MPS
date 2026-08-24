<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c481ad16-14f9-48de-9f34-59089869d64f(jetbrains.mps.vcs.fs)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="3" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
  </languages>
  <imports>
    <import index="5mlj" ref="f57286e3-4e19-4d8d-8045-3900761f6530/java:git4idea.repo(jetbrains.mps.git4idea.stubs/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="rfhd" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.util.registry(MPS.IDEA/)" />
    <import index="jlff" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.vfs(MPS.IDEA/)" />
    <import index="snbe" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.util.io(MPS.IDEA/)" />
    <import index="z2p8" ref="f35cbfcb-ea50-4f20-9d5c-c765fbd8fd3b/java:com.intellij.dvcs(jetbrains.mps.vcs.idea.stubs/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="tkms" ref="f35cbfcb-ea50-4f20-9d5c-c765fbd8fd3b/java:com.intellij.dvcs.repo(jetbrains.mps.vcs.idea.stubs/)" implicit="true" />
    <import index="1m72" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.components(MPS.IDEA/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
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
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
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
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
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
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
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
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
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
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="5383422241790532083" name="tags" index="3nqlJM" />
      </concept>
      <concept id="5349172909345530174" name="jetbrains.mps.baseLanguage.javadoc.structure.AuthorBlockDocTag" flags="ng" index="P$Jll">
        <property id="5349172909345532826" name="text" index="P$JZL" />
      </concept>
      <concept id="2068944020170241612" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocComment" flags="ng" index="3UR2Jj" />
      <concept id="5085607816302529296" name="jetbrains.mps.baseLanguage.javadoc.structure.IHoldCommentLines" flags="ngI" index="1VezTd">
        <child id="5085607816302529587" name="commentBody" index="1Vez_I" />
      </concept>
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="2034914114981261497" name="jetbrains.mps.baseLanguage.logging.structure.LogLowLevelStatement" flags="ng" index="RRSsy">
        <child id="2034914114981261753" name="message" index="RRSoy" />
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
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="nn" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="24kmG9GcloI">
    <property role="TrG5h" value="ExternalVcsRepoSynchronization" />
    <property role="1EXbeo" value="true" />
    <node concept="312cEg" id="24kmG9Gco34" role="jymVt">
      <property role="TrG5h" value="myIJProject" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="24kmG9GcnfZ" role="1B3o_S" />
      <node concept="3uibUv" id="24kmG9Gco1Y" role="1tU5fm">
        <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
      </node>
    </node>
    <node concept="312cEg" id="24kmG9Gczs$" role="jymVt">
      <property role="TrG5h" value="myKnownRepoPaths" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="24kmG9GcsMn" role="1B3o_S" />
      <node concept="3uibUv" id="24kmG9GcxWE" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="24kmG9GcxXM" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="2ShNRf" id="24kmG9Gczyt" role="33vP2m">
        <node concept="1pGfFk" id="24kmG9GcMzm" role="2ShVmc">
          <property role="373rjd" value="true" />
          <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="24kmG9GcsKl" role="jymVt" />
    <node concept="3Tm1VV" id="24kmG9GcloJ" role="1B3o_S" />
    <node concept="3uibUv" id="6YkvhkwNU50" role="EKbjA">
      <ref role="3uigEE" to="5mlj:~GitRepositoryChangeListener" resolve="GitRepositoryChangeListener" />
    </node>
    <node concept="3clFbW" id="24kmG9Gco7e" role="jymVt">
      <node concept="3cqZAl" id="24kmG9Gco7f" role="3clF45" />
      <node concept="3Tm1VV" id="24kmG9Gco7g" role="1B3o_S" />
      <node concept="3clFbS" id="24kmG9Gco7h" role="3clF47">
        <node concept="3clFbF" id="24kmG9Gco7k" role="3cqZAp">
          <node concept="37vLTI" id="24kmG9Gco7l" role="3clFbG">
            <node concept="37vLTw" id="24kmG9Gcs_3" role="37vLTJ">
              <ref role="3cqZAo" node="24kmG9Gco34" resolve="myIJProject" />
            </node>
            <node concept="37vLTw" id="24kmG9Gco7p" role="37vLTx">
              <ref role="3cqZAo" node="24kmG9Gco7i" resolve="project" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="24kmG9Gco7i" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="24kmG9Gco7j" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
        <node concept="2AHcQZ" id="24kmG9GcsEU" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="24kmG9GcMAV" role="jymVt" />
    <node concept="2YIFZL" id="24kmG9GcMRI" role="jymVt">
      <property role="TrG5h" value="isFeatureEnabled" />
      <node concept="3clFbS" id="24kmG9GcMRL" role="3clF47">
        <node concept="3cpWs6" id="24kmG9GcMWI" role="3cqZAp">
          <node concept="2YIFZM" id="24kmG9GcNlB" role="3cqZAk">
            <ref role="1Pybhc" to="rfhd:~Registry" resolve="Registry" />
            <ref role="37wK5l" to="rfhd:~Registry.is(java.lang.String,boolean)" resolve="is" />
            <node concept="Xl_RD" id="24kmG9GcNnS" role="37wK5m">
              <property role="Xl_RC" value="mps.sync.external.git.repos" />
            </node>
            <node concept="3clFbT" id="24kmG9GcN$i" role="37wK5m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="24kmG9GcMJy" role="1B3o_S" />
      <node concept="10P_77" id="24kmG9GcMK6" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="24kmG9GcsIk" role="jymVt" />
    <node concept="3clFb_" id="24kmG9GcmGZ" role="jymVt">
      <property role="TrG5h" value="repositoryChanged" />
      <node concept="3Tm1VV" id="24kmG9GcmH0" role="1B3o_S" />
      <node concept="3cqZAl" id="24kmG9GcmH2" role="3clF45" />
      <node concept="37vLTG" id="24kmG9GcmH3" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="24kmG9GcmH4" role="1tU5fm">
          <ref role="3uigEE" to="5mlj:~GitRepository" resolve="GitRepository" />
        </node>
        <node concept="2AHcQZ" id="24kmG9GcmH5" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="24kmG9GcmH6" role="3clF47">
        <node concept="3clFbJ" id="24kmG9GcNA5" role="3cqZAp">
          <node concept="3fqX7Q" id="24kmG9GcNHZ" role="3clFbw">
            <node concept="1rXfSq" id="24kmG9GcNMC" role="3fr31v">
              <ref role="37wK5l" node="24kmG9GcMRI" resolve="isFeatureEnabled" />
            </node>
          </node>
          <node concept="3clFbS" id="24kmG9GcNA7" role="3clFbx">
            <node concept="3cpWs6" id="24kmG9GcNRt" role="3cqZAp" />
          </node>
        </node>
        <node concept="RRSsy" id="24kmG9GcO0T" role="3cqZAp">
          <node concept="3cpWs3" id="24kmG9GcP3u" role="RRSoy">
            <node concept="Xl_RD" id="24kmG9GcP3E" role="3uHU7w">
              <property role="Xl_RC" value=" has changed" />
            </node>
            <node concept="3cpWs3" id="24kmG9GcOmF" role="3uHU7B">
              <node concept="Xl_RD" id="24kmG9GcO0V" role="3uHU7B">
                <property role="Xl_RC" value="the repository" />
              </node>
              <node concept="2OqwBi" id="24kmG9GcOBH" role="3uHU7w">
                <node concept="37vLTw" id="24kmG9GcOmV" role="2Oq$k0">
                  <ref role="3cqZAo" node="24kmG9GcmH3" resolve="repository" />
                </node>
                <node concept="liA8E" id="24kmG9GcOOw" role="2OqNvi">
                  <ref role="37wK5l" to="tkms:~Repository.toLogString()" resolve="toLogString" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="24kmG9GcQFd" role="3cqZAp">
          <node concept="3cpWsn" id="24kmG9GcQFe" role="3cpWs9">
            <property role="TrG5h" value="root" />
            <node concept="3uibUv" id="24kmG9GcQFf" role="1tU5fm">
              <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
            </node>
            <node concept="2OqwBi" id="24kmG9GcR7U" role="33vP2m">
              <node concept="37vLTw" id="24kmG9GcQQA" role="2Oq$k0">
                <ref role="3cqZAo" node="24kmG9GcmH3" resolve="repository" />
              </node>
              <node concept="liA8E" id="24kmG9GcRfp" role="2OqNvi">
                <ref role="37wK5l" to="tkms:~Repository.getRoot()" resolve="getRoot" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="24kmG9GcSgL" role="3cqZAp">
          <node concept="3clFbS" id="24kmG9GcSgN" role="3clFbx">
            <node concept="RRSsy" id="24kmG9GcTjA" role="3cqZAp">
              <node concept="3cpWs3" id="24kmG9GcWia" role="RRSoy">
                <node concept="37vLTw" id="24kmG9GcWq6" role="3uHU7w">
                  <ref role="3cqZAo" node="24kmG9Gco34" resolve="myIJProject" />
                </node>
                <node concept="3cpWs3" id="24kmG9GcUGQ" role="3uHU7B">
                  <node concept="3cpWs3" id="24kmG9GcTX8" role="3uHU7B">
                    <node concept="Xl_RD" id="24kmG9GcTjC" role="3uHU7B">
                      <property role="Xl_RC" value="the repository " />
                    </node>
                    <node concept="2OqwBi" id="24kmG9GcUlM" role="3uHU7w">
                      <node concept="37vLTw" id="24kmG9GcUbG" role="2Oq$k0">
                        <ref role="3cqZAo" node="24kmG9GcmH3" resolve="repository" />
                      </node>
                      <node concept="liA8E" id="24kmG9GcUwJ" role="2OqNvi">
                        <ref role="37wK5l" to="tkms:~Repository.toLogString()" resolve="toLogString" />
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="24kmG9GcUH6" role="3uHU7w">
                    <property role="Xl_RC" value=" is ignored since it is under the project " />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="24kmG9GcXs1" role="3cqZAp" />
          </node>
          <node concept="1rXfSq" id="24kmG9GcSYG" role="3clFbw">
            <ref role="37wK5l" node="24kmG9GcSI$" resolve="isRepoUnderProject" />
            <node concept="37vLTw" id="24kmG9GcTd0" role="37wK5m">
              <ref role="3cqZAo" node="24kmG9GcQFe" resolve="root" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="24kmG9GcXGc" role="3cqZAp">
          <node concept="3clFbS" id="24kmG9GcXGe" role="3clFbx">
            <node concept="3SKdUt" id="24kmG9GdDjz" role="3cqZAp">
              <node concept="1PaTwC" id="24kmG9GdDj$" role="1aUNEU">
                <node concept="3oM_SD" id="24kmG9GdD$$" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="24kmG9GdDBi" role="1PaTwD">
                  <property role="3oM_SC" value="set" />
                </node>
                <node concept="3oM_SD" id="24kmG9GdD$A" role="1PaTwD">
                  <property role="3oM_SC" value="is" />
                </node>
                <node concept="3oM_SD" id="24kmG9GdD$D" role="1PaTwD">
                  <property role="3oM_SC" value="never" />
                </node>
                <node concept="3oM_SD" id="24kmG9GdD$H" role="1PaTwD">
                  <property role="3oM_SC" value="cleaned," />
                </node>
                <node concept="3oM_SD" id="24kmG9GdD$M" role="1PaTwD">
                  <property role="3oM_SC" value="but" />
                </node>
                <node concept="3oM_SD" id="24kmG9GdDAX" role="1PaTwD">
                  <property role="3oM_SC" value="vfs" />
                </node>
                <node concept="3oM_SD" id="24kmG9GdDAh" role="1PaTwD">
                  <property role="3oM_SC" value="itself" />
                </node>
                <node concept="3oM_SD" id="24kmG9GdDB7" role="1PaTwD">
                  <property role="3oM_SC" value="cannot" />
                </node>
                <node concept="3oM_SD" id="24kmG9GdDAr" role="1PaTwD">
                  <property role="3oM_SC" value="be" />
                </node>
                <node concept="3oM_SD" id="24kmG9GdDAA" role="1PaTwD">
                  <property role="3oM_SC" value="unloaded" />
                </node>
              </node>
            </node>
            <node concept="RRSsy" id="24kmG9Gd0Dd" role="3cqZAp">
              <node concept="3cpWs3" id="24kmG9Gd3jg" role="RRSoy">
                <node concept="Xl_RD" id="24kmG9Gd3jw" role="3uHU7w">
                  <property role="Xl_RC" value=" to vfs snapshot" />
                </node>
                <node concept="3cpWs3" id="24kmG9Gd2ax" role="3uHU7B">
                  <node concept="Xl_RD" id="24kmG9Gd0Df" role="3uHU7B">
                    <property role="Xl_RC" value="adding the git repository at " />
                  </node>
                  <node concept="2OqwBi" id="24kmG9Gd2Fn" role="3uHU7w">
                    <node concept="37vLTw" id="24kmG9Gd2aP" role="2Oq$k0">
                      <ref role="3cqZAo" node="24kmG9GcQFe" resolve="root" />
                    </node>
                    <node concept="liA8E" id="24kmG9Gd30r" role="2OqNvi">
                      <ref role="37wK5l" to="jlff:~VirtualFile.getCanonicalPath()" resolve="getCanonicalPath" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="24kmG9Gd4OX" role="3cqZAp">
              <node concept="2YIFZM" id="2vCsXJ2NIXY" role="3clFbG">
                <ref role="37wK5l" to="z2p8:~DvcsUtil.ensureAllChildrenInVfs(com.intellij.openapi.vfs.VirtualFile)" resolve="ensureAllChildrenInVfs" />
                <ref role="1Pybhc" to="z2p8:~DvcsUtil" resolve="DvcsUtil" />
                <node concept="37vLTw" id="2vCsXJ2NIXZ" role="37wK5m">
                  <ref role="3cqZAo" node="24kmG9GcQFe" resolve="root" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="24kmG9GcYvL" role="3clFbw">
            <node concept="37vLTw" id="24kmG9GcXXd" role="2Oq$k0">
              <ref role="3cqZAo" node="24kmG9Gczs$" resolve="myKnownRepoPaths" />
            </node>
            <node concept="liA8E" id="24kmG9GcZ6g" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
              <node concept="2OqwBi" id="24kmG9GcZM6" role="37wK5m">
                <node concept="37vLTw" id="24kmG9GcZtx" role="2Oq$k0">
                  <ref role="3cqZAo" node="24kmG9GcQFe" resolve="root" />
                </node>
                <node concept="liA8E" id="24kmG9Gd0pc" role="2OqNvi">
                  <ref role="37wK5l" to="jlff:~VirtualFile.getCanonicalPath()" resolve="getCanonicalPath" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="24kmG9GcmH7" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="24kmG9Gd643" role="jymVt" />
    <node concept="3clFb_" id="24kmG9GcSI$" role="jymVt">
      <property role="TrG5h" value="isRepoUnderProject" />
      <node concept="3clFbS" id="24kmG9GcSIB" role="3clF47">
        <node concept="3clFbJ" id="24kmG9Gd6$c" role="3cqZAp">
          <node concept="1Wc70l" id="24kmG9Gd8kE" role="3clFbw">
            <node concept="3y3z36" id="24kmG9Gda1o" role="3uHU7w">
              <node concept="10Nm6u" id="24kmG9Gdat4" role="3uHU7w" />
              <node concept="2OqwBi" id="24kmG9Gd99X" role="3uHU7B">
                <node concept="37vLTw" id="24kmG9Gd8yz" role="2Oq$k0">
                  <ref role="3cqZAo" node="24kmG9Gco34" resolve="myIJProject" />
                </node>
                <node concept="liA8E" id="24kmG9Gd9Ed" role="2OqNvi">
                  <ref role="37wK5l" to="4nm9:~Project.getBasePath()" resolve="getBasePath" />
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="24kmG9Gd6KJ" role="3uHU7B">
              <node concept="2OqwBi" id="24kmG9Gd7yl" role="3fr31v">
                <node concept="37vLTw" id="24kmG9Gd6VR" role="2Oq$k0">
                  <ref role="3cqZAo" node="24kmG9Gco34" resolve="myIJProject" />
                </node>
                <node concept="liA8E" id="24kmG9Gd7Wx" role="2OqNvi">
                  <ref role="37wK5l" to="1m72:~ComponentManager.isDisposed()" resolve="isDisposed" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="24kmG9Gd6$e" role="3clFbx">
            <node concept="3cpWs6" id="24kmG9GdaF4" role="3cqZAp">
              <node concept="2YIFZM" id="24kmG9Gdcu2" role="3cqZAk">
                <ref role="1Pybhc" to="snbe:~FileUtil" resolve="FileUtil" />
                <ref role="37wK5l" to="snbe:~FileUtil.isAncestor(java.lang.String,java.lang.String,boolean)" resolve="isAncestor" />
                <node concept="2OqwBi" id="24kmG9GdfcF" role="37wK5m">
                  <node concept="37vLTw" id="24kmG9Gde4s" role="2Oq$k0">
                    <ref role="3cqZAo" node="24kmG9Gco34" resolve="myIJProject" />
                  </node>
                  <node concept="liA8E" id="24kmG9Gdfwf" role="2OqNvi">
                    <ref role="37wK5l" to="4nm9:~Project.getBasePath()" resolve="getBasePath" />
                  </node>
                </node>
                <node concept="2OqwBi" id="24kmG9GdgDJ" role="37wK5m">
                  <node concept="37vLTw" id="24kmG9GdgdZ" role="2Oq$k0">
                    <ref role="3cqZAo" node="24kmG9GcSQ9" resolve="repoRootFile" />
                  </node>
                  <node concept="liA8E" id="24kmG9Gdi$s" role="2OqNvi">
                    <ref role="37wK5l" to="jlff:~VirtualFile.getPath()" resolve="getPath" />
                  </node>
                </node>
                <node concept="3clFbT" id="24kmG9GdiPu" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="24kmG9Gdj7d" role="3cqZAp">
          <node concept="3clFbT" id="24kmG9GdjAS" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm6S6" id="24kmG9GcSvj" role="1B3o_S" />
      <node concept="10P_77" id="24kmG9GcSwo" role="3clF45" />
      <node concept="37vLTG" id="24kmG9GcSQ9" role="3clF46">
        <property role="TrG5h" value="repoRootFile" />
        <node concept="3uibUv" id="24kmG9GcSQ8" role="1tU5fm">
          <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
        </node>
      </node>
    </node>
    <node concept="3UR2Jj" id="24kmG9GcmTz" role="lGtFl">
      <node concept="P$Jll" id="24kmG9Gcn5x" role="3nqlJM">
        <property role="P$JZL" value="" />
        <node concept="1PaTwC" id="1E1X3WHsDlz" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsDl$" role="1PaTwD">
            <property role="3oM_SC" value="apyshkin" />
          </node>
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsDl1" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsDl2" role="1PaTwD">
          <property role="3oM_SC" value="The" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDl3" role="1PaTwD">
          <property role="3oM_SC" value="problem" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDl4" role="1PaTwD">
          <property role="3oM_SC" value="is" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDl5" role="1PaTwD">
          <property role="3oM_SC" value="described" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDl6" role="1PaTwD">
          <property role="3oM_SC" value="here" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsDl7" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsDl8" role="1PaTwD">
          <property role="3oM_SC" value="&lt;a" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDl9" role="1PaTwD">
          <property role="3oM_SC" value="href=&quot;https://youtrack.jetbrains.com/issue/IDEA-229699/&gt;" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsDla" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsDlb" role="1PaTwD">
          <property role="3oM_SC" value="Provisionally," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDlc" role="1PaTwD">
          <property role="3oM_SC" value="we" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDld" role="1PaTwD">
          <property role="3oM_SC" value="are" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDle" role="1PaTwD">
          <property role="3oM_SC" value="going" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDlf" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDlg" role="1PaTwD">
          <property role="3oM_SC" value="add" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDlh" role="1PaTwD">
          <property role="3oM_SC" value="all" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDli" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDlj" role="1PaTwD">
          <property role="3oM_SC" value="external" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDlk" role="1PaTwD">
          <property role="3oM_SC" value="vcs" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDll" role="1PaTwD">
          <property role="3oM_SC" value="roots" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDlm" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDln" role="1PaTwD">
          <property role="3oM_SC" value="vfs." />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsDlo" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsDlp" role="1PaTwD">
          <property role="3oM_SC" value="The" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDlq" role="1PaTwD">
          <property role="3oM_SC" value="original" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDlr" role="1PaTwD">
          <property role="3oM_SC" value="issue" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDls" role="1PaTwD">
          <property role="3oM_SC" value="must" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDlt" role="1PaTwD">
          <property role="3oM_SC" value="be" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDlu" role="1PaTwD">
          <property role="3oM_SC" value="fixed" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDlv" role="1PaTwD">
          <property role="3oM_SC" value="using" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDlw" role="1PaTwD">
          <property role="3oM_SC" value="something" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDlx" role="1PaTwD">
          <property role="3oM_SC" value="like" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDly" role="1PaTwD">
          <property role="3oM_SC" value="fsnotifier" />
        </node>
      </node>
    </node>
  </node>
</model>

