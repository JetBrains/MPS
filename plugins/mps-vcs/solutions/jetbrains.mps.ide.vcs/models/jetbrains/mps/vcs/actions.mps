<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:b2d164a2-987a-4229-af85-1f4f7d3ef996(jetbrains.mps.vcs.actions)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
  </languages>
  <imports>
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="7vf6" ref="86441d7a-e194-42da-81a5-2161ec62a379/java:jetbrains.mps.ide.projectPane.fileSystem(MPS.Workbench/)" />
    <import index="qkt" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.actionSystem(MPS.IDEA/)" />
    <import index="bnjk" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ide.projectView(MPS.IDEA/)" />
    <import index="jlff" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.vfs(MPS.IDEA/)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="alof" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.project(MPS.Platform/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="rvbb" ref="86441d7a-e194-42da-81a5-2161ec62a379/java:jetbrains.mps.ide.projectPane(MPS.Workbench/)" />
    <import index="ddhc" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ide(MPS.IDEA/)" />
    <import index="de5p" ref="f35cbfcb-ea50-4f20-9d5c-c765fbd8fd3b/java:com.intellij.openapi.vcs.actions(jetbrains.mps.vcs.idea.stubs/)" />
    <import index="s4aq" ref="f35cbfcb-ea50-4f20-9d5c-c765fbd8fd3b/java:com.intellij.openapi.vcs.changes.actions(jetbrains.mps.vcs.idea.stubs/)" />
    <import index="de5q" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.vcs.actions(MPS.IDEA/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1173175405605" name="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression" flags="nn" index="AH0OO">
        <child id="1173175577737" name="index" index="AHEQo" />
        <child id="1173175590490" name="array" index="AHHXb" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ngI" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
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
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
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
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
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
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1160998861373" name="jetbrains.mps.baseLanguage.structure.AssertStatement" flags="nn" index="1gVbGN">
        <child id="1160998896846" name="condition" index="1gVkn0" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1073063089578" name="jetbrains.mps.baseLanguage.structure.SuperMethodCall" flags="nn" index="3nyPlj" />
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
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1208890769693" name="jetbrains.mps.baseLanguage.structure.ArrayLengthOperation" flags="nn" index="1Rwk04" />
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
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
  <node concept="312cEu" id="6FKiTwA0IZ$">
    <property role="TrG5h" value="ShowInFileView" />
    <node concept="3Tm1VV" id="6FKiTwA0IZ_" role="1B3o_S" />
    <node concept="3uibUv" id="6FKiTwA0IZA" role="1zkMxy">
      <ref role="3uigEE" node="6FKiTwA0J3a" resolve="AbstractShowInFileView" />
    </node>
    <node concept="3clFbW" id="6FKiTwA0IZB" role="jymVt">
      <node concept="3Tm1VV" id="6FKiTwA0IZC" role="1B3o_S" />
      <node concept="3cqZAl" id="6FKiTwA0IZD" role="3clF45" />
      <node concept="3clFbS" id="6FKiTwA0IZE" role="3clF47" />
    </node>
    <node concept="3clFb_" id="6FKiTwA0IZF" role="jymVt">
      <property role="TrG5h" value="getView" />
      <node concept="3Tmbuc" id="6FKiTwA0IZG" role="1B3o_S" />
      <node concept="3uibUv" id="2GzqIVk2PPd" role="3clF45">
        <ref role="3uigEE" to="7vf6:~FileViewProjectPane" resolve="FileViewProjectPane" />
      </node>
      <node concept="37vLTG" id="6FKiTwA0IZI" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="6FKiTwA0IZJ" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3clFbS" id="6FKiTwA0IZK" role="3clF47">
        <node concept="3cpWs6" id="6FKiTwA0IZL" role="3cqZAp">
          <node concept="10QFUN" id="6FKiTwA0IZM" role="3cqZAk">
            <node concept="2OqwBi" id="6FKiTwA0IZN" role="10QFUP">
              <node concept="2YIFZM" id="6FKiTwA0IZO" role="2Oq$k0">
                <ref role="37wK5l" to="bnjk:~ProjectView.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
                <ref role="1Pybhc" to="bnjk:~ProjectView" resolve="ProjectView" />
                <node concept="37vLTw" id="2BHiRxgm91d" role="37wK5m">
                  <ref role="3cqZAo" node="6FKiTwA0IZI" resolve="project" />
                </node>
              </node>
              <node concept="liA8E" id="6FKiTwA0IZQ" role="2OqNvi">
                <ref role="37wK5l" to="bnjk:~ProjectView.getProjectViewPaneById(java.lang.String)" resolve="getProjectViewPaneById" />
                <node concept="10M0yZ" id="6FKiTwA0IZR" role="37wK5m">
                  <ref role="3cqZAo" to="7vf6:~FileViewProjectPane.ID" resolve="ID" />
                  <ref role="1PxDUh" to="7vf6:~FileViewProjectPane" resolve="FileViewProjectPane" />
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="2GzqIVk2PPc" role="10QFUM">
              <ref role="3uigEE" to="7vf6:~FileViewProjectPane" resolve="FileViewProjectPane" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_UA$q" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6FKiTwA0IZT" role="jymVt">
      <property role="TrG5h" value="getRoots" />
      <node concept="3Tmbuc" id="6FKiTwA0IZU" role="1B3o_S" />
      <node concept="3uibUv" id="6FKiTwA0IZV" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="6FKiTwA0IZW" role="11_B2D">
          <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
        </node>
      </node>
      <node concept="37vLTG" id="6FKiTwA0IZX" role="3clF46">
        <property role="TrG5h" value="vcsContext" />
        <node concept="3uibUv" id="6FKiTwA0IZY" role="1tU5fm">
          <ref role="3uigEE" to="de5q:~VcsContext" resolve="VcsContext" />
        </node>
      </node>
      <node concept="3clFbS" id="6FKiTwA0IZZ" role="3clF47">
        <node concept="3clFbJ" id="3FLm4EWtLt4" role="3cqZAp">
          <node concept="3clFbS" id="3FLm4EWtLt6" role="3clFbx">
            <node concept="3cpWs6" id="3FLm4EWtXQC" role="3cqZAp">
              <node concept="2YIFZM" id="3FLm4EWtCCl" role="3cqZAk">
                <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object)" resolve="singletonList" />
                <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                <node concept="2YIFZM" id="3FLm4EWtCCm" role="37wK5m">
                  <ref role="1Pybhc" to="4nm9:~ProjectUtil" resolve="ProjectUtil" />
                  <ref role="37wK5l" to="4nm9:~ProjectUtil.guessProjectDir(com.intellij.openapi.project.Project)" resolve="guessProjectDir" />
                  <node concept="2OqwBi" id="3FLm4EWtCCn" role="37wK5m">
                    <node concept="37vLTw" id="3FLm4EWtCCo" role="2Oq$k0">
                      <ref role="3cqZAo" node="6FKiTwA0IZX" resolve="vcsContext" />
                    </node>
                    <node concept="liA8E" id="3FLm4EWtCCp" role="2OqNvi">
                      <ref role="37wK5l" to="de5q:~VcsContext.getProject()" resolve="getProject" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="3FLm4EWtCC9" role="3clFbw">
            <node concept="3y3z36" id="3FLm4EWtCCa" role="3uHU7w">
              <node concept="10Nm6u" id="3FLm4EWtCCb" role="3uHU7w" />
              <node concept="2YIFZM" id="3FLm4EWtCCc" role="3uHU7B">
                <ref role="37wK5l" to="4nm9:~ProjectUtil.guessProjectDir(com.intellij.openapi.project.Project)" resolve="guessProjectDir" />
                <ref role="1Pybhc" to="4nm9:~ProjectUtil" resolve="ProjectUtil" />
                <node concept="2OqwBi" id="3FLm4EWtCCd" role="37wK5m">
                  <node concept="37vLTw" id="3FLm4EWtCCe" role="2Oq$k0">
                    <ref role="3cqZAo" node="6FKiTwA0IZX" resolve="vcsContext" />
                  </node>
                  <node concept="liA8E" id="3FLm4EWtCCf" role="2OqNvi">
                    <ref role="37wK5l" to="de5q:~VcsContext.getProject()" resolve="getProject" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="3FLm4EWtCCg" role="3uHU7B">
              <node concept="2OqwBi" id="3FLm4EWtCCh" role="3uHU7B">
                <node concept="37vLTw" id="3FLm4EWtCCi" role="2Oq$k0">
                  <ref role="3cqZAo" node="6FKiTwA0IZX" resolve="vcsContext" />
                </node>
                <node concept="liA8E" id="3FLm4EWtCCj" role="2OqNvi">
                  <ref role="37wK5l" to="de5q:~VcsContext.getProject()" resolve="getProject" />
                </node>
              </node>
              <node concept="10Nm6u" id="3FLm4EWtCCk" role="3uHU7w" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3FLm4EWtWZU" role="3cqZAp">
          <node concept="2YIFZM" id="3FLm4EWtXim" role="3cqZAk">
            <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_UA$r" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6FKiTwA0J3a">
    <property role="TrG5h" value="AbstractShowInFileView" />
    <property role="1sVAO0" value="true" />
    <node concept="3uibUv" id="2vCsXJ2NQZU" role="1zkMxy">
      <ref role="3uigEE" to="de5p:~AbstractVcsAction" resolve="AbstractVcsAction" />
    </node>
    <node concept="3clFbW" id="6FKiTwA0J3c" role="jymVt">
      <node concept="3cqZAl" id="6FKiTwA0J3d" role="3clF45" />
      <node concept="3clFbS" id="6FKiTwA0J3e" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="6_Mc0L7StHM" role="jymVt" />
    <node concept="3clFb_" id="6_Mc0L7Su$6" role="jymVt">
      <property role="TrG5h" value="getActionUpdateThread" />
      <node concept="3Tm1VV" id="6_Mc0L7Su$7" role="1B3o_S" />
      <node concept="2AHcQZ" id="6_Mc0L7Su$9" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="6_Mc0L7Su$a" role="3clF45">
        <ref role="3uigEE" to="qkt:~ActionUpdateThread" resolve="ActionUpdateThread" />
      </node>
      <node concept="3clFbS" id="6_Mc0L7Su$e" role="3clF47">
        <node concept="3clFbF" id="6_Mc0L7Sxn7" role="3cqZAp">
          <node concept="Rm8GO" id="6_Mc0L7SybO" role="3clFbG">
            <ref role="Rm8GQ" to="qkt:~ActionUpdateThread.BGT" resolve="BGT" />
            <ref role="1Px2BO" to="qkt:~ActionUpdateThread" resolve="ActionUpdateThread" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6_Mc0L7Su$f" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6FKiTwA0J3f" role="jymVt">
      <property role="TrG5h" value="actionPerformed" />
      <node concept="3Tmbuc" id="6FKiTwA0J3g" role="1B3o_S" />
      <node concept="3cqZAl" id="6FKiTwA0J3h" role="3clF45" />
      <node concept="37vLTG" id="6FKiTwA0J3i" role="3clF46">
        <property role="TrG5h" value="e" />
        <node concept="3uibUv" id="6FKiTwA0J3j" role="1tU5fm">
          <ref role="3uigEE" to="de5q:~VcsContext" resolve="VcsContext" />
        </node>
      </node>
      <node concept="3clFbS" id="6FKiTwA0J3k" role="3clF47">
        <node concept="3cpWs8" id="6FKiTwA0J3l" role="3cqZAp">
          <node concept="3cpWsn" id="6FKiTwA0J3m" role="3cpWs9">
            <property role="TrG5h" value="project" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="6FKiTwA0J3n" role="1tU5fm">
              <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
            </node>
            <node concept="2OqwBi" id="6FKiTwA0J3o" role="33vP2m">
              <node concept="37vLTw" id="2BHiRxglrgT" role="2Oq$k0">
                <ref role="3cqZAo" node="6FKiTwA0J3i" resolve="e" />
              </node>
              <node concept="liA8E" id="6FKiTwA0J3q" role="2OqNvi">
                <ref role="37wK5l" to="de5q:~VcsContext.getProject()" resolve="getProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6FKiTwA0J3r" role="3cqZAp">
          <node concept="3cpWsn" id="6FKiTwA0J3s" role="3cpWs9">
            <property role="TrG5h" value="selectedFile" />
            <node concept="3uibUv" id="6FKiTwA0J3t" role="1tU5fm">
              <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
            </node>
            <node concept="1rXfSq" id="4hiugqyyYzn" role="33vP2m">
              <ref role="37wK5l" node="6FKiTwA0J3O" resolve="calculateSelectedFile" />
              <node concept="37vLTw" id="2BHiRxgm70j" role="37wK5m">
                <ref role="3cqZAo" node="6FKiTwA0J3i" resolve="e" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6FKiTwA0J3w" role="3cqZAp">
          <node concept="3y3z36" id="6FKiTwA0J3x" role="3clFbw">
            <node concept="37vLTw" id="3GM_nagTxLK" role="3uHU7B">
              <ref role="3cqZAo" node="6FKiTwA0J3s" resolve="selectedFile" />
            </node>
            <node concept="10Nm6u" id="6FKiTwA0J3z" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="6FKiTwA0J3$" role="3clFbx">
            <node concept="1gVbGN" id="6FKiTwA0J3_" role="3cqZAp">
              <node concept="3y3z36" id="6FKiTwA0J3A" role="1gVkn0">
                <node concept="37vLTw" id="3GM_nagTx3o" role="3uHU7B">
                  <ref role="3cqZAo" node="6FKiTwA0J3m" resolve="project" />
                </node>
                <node concept="10Nm6u" id="6FKiTwA0J3C" role="3uHU7w" />
              </node>
            </node>
            <node concept="3cpWs8" id="6FKiTwA0J3D" role="3cqZAp">
              <node concept="3cpWsn" id="6FKiTwA0J3E" role="3cpWs9">
                <property role="TrG5h" value="view" />
                <node concept="3uibUv" id="6FKiTwA0J3F" role="1tU5fm">
                  <ref role="3uigEE" to="7vf6:~FileViewProjectPane" resolve="FileViewProjectPane" />
                </node>
                <node concept="1rXfSq" id="4hiugqyyOks" role="33vP2m">
                  <ref role="37wK5l" node="6FKiTwA0J4r" resolve="getView" />
                  <node concept="37vLTw" id="3GM_nagTB66" role="37wK5m">
                    <ref role="3cqZAo" node="6FKiTwA0J3m" resolve="project" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6FKiTwA0J3I" role="3cqZAp">
              <node concept="2OqwBi" id="6FKiTwA0J3J" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagTBjT" role="2Oq$k0">
                  <ref role="3cqZAo" node="6FKiTwA0J3E" resolve="view" />
                </node>
                <node concept="liA8E" id="6FKiTwA0J3L" role="2OqNvi">
                  <ref role="37wK5l" to="7vf6:~FileViewProjectPane.selectNode(com.intellij.openapi.vfs.VirtualFile,boolean)" resolve="selectNode" />
                  <node concept="37vLTw" id="3GM_nagTyhV" role="37wK5m">
                    <ref role="3cqZAo" node="6FKiTwA0J3s" resolve="selectedFile" />
                  </node>
                  <node concept="3clFbT" id="6FKiTwA0J3N" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_S6zC" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6FKiTwA0J3O" role="jymVt">
      <property role="TrG5h" value="calculateSelectedFile" />
      <node concept="3Tm6S6" id="6FKiTwA0J3P" role="1B3o_S" />
      <node concept="3uibUv" id="6FKiTwA0J3Q" role="3clF45">
        <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
      </node>
      <node concept="37vLTG" id="6FKiTwA0J3R" role="3clF46">
        <property role="TrG5h" value="e" />
        <node concept="3uibUv" id="6FKiTwA0J3S" role="1tU5fm">
          <ref role="3uigEE" to="de5q:~VcsContext" resolve="VcsContext" />
        </node>
      </node>
      <node concept="3clFbS" id="6FKiTwA0J3T" role="3clF47">
        <node concept="3cpWs8" id="6FKiTwA0J3U" role="3cqZAp">
          <node concept="3cpWsn" id="6FKiTwA0J3V" role="3cpWs9">
            <property role="TrG5h" value="selectedFiles" />
            <node concept="10Q1$e" id="6FKiTwA0J3W" role="1tU5fm">
              <node concept="3uibUv" id="6FKiTwA0J3X" role="10Q1$1">
                <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
              </node>
            </node>
            <node concept="2OqwBi" id="6FKiTwA0J3Y" role="33vP2m">
              <node concept="37vLTw" id="2BHiRxgmKHe" role="2Oq$k0">
                <ref role="3cqZAo" node="6FKiTwA0J3R" resolve="e" />
              </node>
              <node concept="liA8E" id="6FKiTwA0J40" role="2OqNvi">
                <ref role="37wK5l" to="de5q:~VcsContext.getSelectedFiles()" resolve="getSelectedFiles" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6FKiTwA0J41" role="3cqZAp">
          <node concept="3clFbC" id="6FKiTwA0J42" role="3clFbw">
            <node concept="2OqwBi" id="6FKiTwA0J43" role="3uHU7B">
              <node concept="37vLTw" id="3GM_nagTtA6" role="2Oq$k0">
                <ref role="3cqZAo" node="6FKiTwA0J3V" resolve="selectedFiles" />
              </node>
              <node concept="1Rwk04" id="6FKiTwA0J45" role="2OqNvi" />
            </node>
            <node concept="3cmrfG" id="6FKiTwA0J46" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3clFbS" id="6FKiTwA0J47" role="3clFbx">
            <node concept="3cpWs6" id="6FKiTwA0J48" role="3cqZAp">
              <node concept="10Nm6u" id="6FKiTwA0J49" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6FKiTwA0J4a" role="3cqZAp">
          <node concept="3clFbC" id="6FKiTwA0J4b" role="3clFbw">
            <node concept="2OqwBi" id="6FKiTwA0J4c" role="3uHU7B">
              <node concept="37vLTw" id="3GM_nagTtOw" role="2Oq$k0">
                <ref role="3cqZAo" node="6FKiTwA0J3V" resolve="selectedFiles" />
              </node>
              <node concept="1Rwk04" id="6FKiTwA0J4e" role="2OqNvi" />
            </node>
            <node concept="3cmrfG" id="6FKiTwA0J4f" role="3uHU7w">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
          <node concept="3clFbS" id="6FKiTwA0J4g" role="3clFbx">
            <node concept="3cpWs6" id="6FKiTwA0J4h" role="3cqZAp">
              <node concept="AH0OO" id="6FKiTwA0J4i" role="3cqZAk">
                <node concept="37vLTw" id="3GM_nagTzuK" role="AHHXb">
                  <ref role="3cqZAo" node="6FKiTwA0J3V" resolve="selectedFiles" />
                </node>
                <node concept="3cmrfG" id="6FKiTwA0J4k" role="AHEQo">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6FKiTwA0J4l" role="3cqZAp">
          <node concept="AH0OO" id="6FKiTwA0J4m" role="3cqZAk">
            <node concept="2YIFZM" id="6FKiTwA0J4n" role="AHHXb">
              <ref role="37wK5l" to="jlff:~VfsUtil.getCommonAncestors(com.intellij.openapi.vfs.VirtualFile[])" resolve="getCommonAncestors" />
              <ref role="1Pybhc" to="jlff:~VfsUtil" resolve="VfsUtil" />
              <node concept="37vLTw" id="3GM_nagT_0M" role="37wK5m">
                <ref role="3cqZAo" node="6FKiTwA0J3V" resolve="selectedFiles" />
              </node>
            </node>
            <node concept="3cmrfG" id="6FKiTwA0J4p" role="AHEQo">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6FKiTwA0J4q" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="3clFb_" id="6FKiTwA0J4r" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="getView" />
      <node concept="3Tmbuc" id="6FKiTwA0J4s" role="1B3o_S" />
      <node concept="3uibUv" id="6FKiTwA0J4t" role="3clF45">
        <ref role="3uigEE" to="7vf6:~FileViewProjectPane" resolve="FileViewProjectPane" />
      </node>
      <node concept="37vLTG" id="6FKiTwA0J4u" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="6FKiTwA0J4v" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3clFbS" id="6FKiTwA0J4w" role="3clF47" />
    </node>
    <node concept="3clFb_" id="6FKiTwA0J4x" role="jymVt">
      <property role="TrG5h" value="update" />
      <node concept="3Tmbuc" id="6FKiTwA0J4y" role="1B3o_S" />
      <node concept="3cqZAl" id="6FKiTwA0J4z" role="3clF45" />
      <node concept="37vLTG" id="6FKiTwA0J4$" role="3clF46">
        <property role="TrG5h" value="vcsContext" />
        <node concept="3uibUv" id="6FKiTwA0J4_" role="1tU5fm">
          <ref role="3uigEE" to="de5q:~VcsContext" resolve="VcsContext" />
        </node>
      </node>
      <node concept="37vLTG" id="6FKiTwA0J4A" role="3clF46">
        <property role="TrG5h" value="presentation" />
        <node concept="3uibUv" id="6FKiTwA0J4B" role="1tU5fm">
          <ref role="3uigEE" to="qkt:~Presentation" resolve="Presentation" />
        </node>
      </node>
      <node concept="3clFbS" id="6FKiTwA0J4C" role="3clF47">
        <node concept="3clFbJ" id="1$VOgPOJYf5" role="3cqZAp">
          <node concept="3clFbS" id="1$VOgPOJYf8" role="3clFbx">
            <node concept="3clFbF" id="1$VOgPOK3qm" role="3cqZAp">
              <node concept="2OqwBi" id="1$VOgPOK3qn" role="3clFbG">
                <node concept="37vLTw" id="1$VOgPOK3qo" role="2Oq$k0">
                  <ref role="3cqZAo" node="6FKiTwA0J4A" resolve="presentation" />
                </node>
                <node concept="liA8E" id="1$VOgPOK3qp" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~Presentation.setEnabled(boolean)" resolve="setEnabled" />
                  <node concept="3clFbT" id="1$VOgPOK3qq" role="37wK5m" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="1$VOgPOK3x3" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="1$VOgPOK3iC" role="3clFbw">
            <node concept="10Nm6u" id="1$VOgPOK3p6" role="3uHU7w" />
            <node concept="2OqwBi" id="1$VOgPOJZkn" role="3uHU7B">
              <node concept="37vLTw" id="1$VOgPOJZe6" role="2Oq$k0">
                <ref role="3cqZAo" node="6FKiTwA0J4$" resolve="vcsContext" />
              </node>
              <node concept="liA8E" id="1$VOgPOK3gk" role="2OqNvi">
                <ref role="37wK5l" to="de5q:~VcsContext.getProject()" resolve="getProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6FKiTwA0J4D" role="3cqZAp">
          <node concept="3cpWsn" id="6FKiTwA0J4E" role="3cpWs9">
            <property role="TrG5h" value="baseDirs" />
            <node concept="3uibUv" id="6FKiTwA0J4F" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="6FKiTwA0J4G" role="11_B2D">
                <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
              </node>
            </node>
            <node concept="1rXfSq" id="4hiugqyz81f" role="33vP2m">
              <ref role="37wK5l" node="6FKiTwA0J5e" resolve="getRoots" />
              <node concept="37vLTw" id="2BHiRxgll8h" role="37wK5m">
                <ref role="3cqZAo" node="6FKiTwA0J4$" resolve="vcsContext" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6FKiTwA0J4J" role="3cqZAp">
          <node concept="3cpWsn" id="6FKiTwA0J4K" role="3cpWs9">
            <property role="TrG5h" value="selectedFile" />
            <node concept="3uibUv" id="6FKiTwA0J4L" role="1tU5fm">
              <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
            </node>
            <node concept="1rXfSq" id="4hiugqyzhIk" role="33vP2m">
              <ref role="37wK5l" node="6FKiTwA0J3O" resolve="calculateSelectedFile" />
              <node concept="37vLTw" id="2BHiRxgmBFP" role="37wK5m">
                <ref role="3cqZAo" node="6FKiTwA0J4$" resolve="vcsContext" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6FKiTwA0J4O" role="3cqZAp">
          <node concept="3y3z36" id="6FKiTwA0J4P" role="3clFbw">
            <node concept="37vLTw" id="3GM_nagT$vi" role="3uHU7B">
              <ref role="3cqZAo" node="6FKiTwA0J4K" resolve="selectedFile" />
            </node>
            <node concept="10Nm6u" id="6FKiTwA0J4R" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="6FKiTwA0J4S" role="3clFbx">
            <node concept="1DcWWT" id="6FKiTwA0J4T" role="3cqZAp">
              <node concept="37vLTw" id="3GM_nagT_Rr" role="1DdaDG">
                <ref role="3cqZAo" node="6FKiTwA0J4E" resolve="baseDirs" />
              </node>
              <node concept="3cpWsn" id="6FKiTwA0J4V" role="1Duv9x">
                <property role="TrG5h" value="baseDir" />
                <node concept="3uibUv" id="6FKiTwA0J4W" role="1tU5fm">
                  <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
                </node>
              </node>
              <node concept="3clFbS" id="6FKiTwA0J4X" role="2LFqv$">
                <node concept="3clFbJ" id="6FKiTwA0J4Y" role="3cqZAp">
                  <node concept="1rXfSq" id="4hiugqyzhMb" role="3clFbw">
                    <ref role="37wK5l" node="6FKiTwA0J5l" resolve="canScroll" />
                    <node concept="37vLTw" id="3GM_nagTrGV" role="37wK5m">
                      <ref role="3cqZAo" node="6FKiTwA0J4V" resolve="baseDir" />
                    </node>
                    <node concept="37vLTw" id="3GM_nagTA_K" role="37wK5m">
                      <ref role="3cqZAo" node="6FKiTwA0J4K" resolve="selectedFile" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="6FKiTwA0J52" role="3clFbx">
                    <node concept="3clFbF" id="6FKiTwA0J53" role="3cqZAp">
                      <node concept="2OqwBi" id="6FKiTwA0J54" role="3clFbG">
                        <node concept="37vLTw" id="2BHiRxgm_n3" role="2Oq$k0">
                          <ref role="3cqZAo" node="6FKiTwA0J4A" resolve="presentation" />
                        </node>
                        <node concept="liA8E" id="6FKiTwA0J56" role="2OqNvi">
                          <ref role="37wK5l" to="qkt:~Presentation.setEnabled(boolean)" resolve="setEnabled" />
                          <node concept="3clFbT" id="6FKiTwA0J57" role="37wK5m">
                            <property role="3clFbU" value="true" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="6FKiTwA0J58" role="3cqZAp" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6FKiTwA0J59" role="3cqZAp">
          <node concept="2OqwBi" id="6FKiTwA0J5a" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgmj2b" role="2Oq$k0">
              <ref role="3cqZAo" node="6FKiTwA0J4A" resolve="presentation" />
            </node>
            <node concept="liA8E" id="6FKiTwA0J5c" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setEnabled(boolean)" resolve="setEnabled" />
              <node concept="3clFbT" id="6FKiTwA0J5d" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_S6zD" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6FKiTwA0J5e" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="getRoots" />
      <node concept="3Tmbuc" id="6FKiTwA0J5f" role="1B3o_S" />
      <node concept="3uibUv" id="6FKiTwA0J5g" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="6FKiTwA0J5h" role="11_B2D">
          <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
        </node>
      </node>
      <node concept="37vLTG" id="6FKiTwA0J5i" role="3clF46">
        <property role="TrG5h" value="vcsContext" />
        <node concept="3uibUv" id="6FKiTwA0J5j" role="1tU5fm">
          <ref role="3uigEE" to="de5q:~VcsContext" resolve="VcsContext" />
        </node>
      </node>
      <node concept="3clFbS" id="6FKiTwA0J5k" role="3clF47" />
    </node>
    <node concept="3clFb_" id="6FKiTwA0J5l" role="jymVt">
      <property role="TrG5h" value="canScroll" />
      <node concept="3Tm6S6" id="6FKiTwA0J5m" role="1B3o_S" />
      <node concept="10P_77" id="6FKiTwA0J5n" role="3clF45" />
      <node concept="37vLTG" id="6FKiTwA0J5o" role="3clF46">
        <property role="TrG5h" value="baseDir" />
        <node concept="3uibUv" id="6FKiTwA0J5p" role="1tU5fm">
          <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
        </node>
      </node>
      <node concept="37vLTG" id="6FKiTwA0J5q" role="3clF46">
        <property role="TrG5h" value="selectedFile" />
        <node concept="3uibUv" id="6FKiTwA0J5r" role="1tU5fm">
          <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
        </node>
        <node concept="2AHcQZ" id="6FKiTwA0J5s" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="6FKiTwA0J5t" role="3clF47">
        <node concept="3clFbJ" id="6FKiTwA0J5u" role="3cqZAp">
          <node concept="3y3z36" id="6FKiTwA0J5v" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxgmkI8" role="3uHU7B">
              <ref role="3cqZAo" node="6FKiTwA0J5o" resolve="baseDir" />
            </node>
            <node concept="10Nm6u" id="6FKiTwA0J5x" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="6FKiTwA0J5y" role="3clFbx">
            <node concept="3cpWs6" id="6FKiTwA0J5z" role="3cqZAp">
              <node concept="2YIFZM" id="6FKiTwA0J5$" role="3cqZAk">
                <ref role="37wK5l" to="jlff:~VfsUtilCore.isAncestor(com.intellij.openapi.vfs.VirtualFile,com.intellij.openapi.vfs.VirtualFile,boolean)" resolve="isAncestor" />
                <ref role="1Pybhc" to="jlff:~VfsUtil" resolve="VfsUtil" />
                <node concept="37vLTw" id="2BHiRxglFNY" role="37wK5m">
                  <ref role="3cqZAo" node="6FKiTwA0J5o" resolve="baseDir" />
                </node>
                <node concept="37vLTw" id="2BHiRxglIS2" role="37wK5m">
                  <ref role="3cqZAo" node="6FKiTwA0J5q" resolve="selectedFile" />
                </node>
                <node concept="3clFbT" id="6FKiTwA0J5B" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6FKiTwA0J5C" role="3cqZAp">
          <node concept="3clFbT" id="6FKiTwA0J5D" role="3cqZAk" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6FKiTwA0J6h">
    <property role="TrG5h" value="ShowInLogicalView" />
    <node concept="3Tm1VV" id="6FKiTwA0J6i" role="1B3o_S" />
    <node concept="3uibUv" id="2vCsXJ2NIbc" role="1zkMxy">
      <ref role="3uigEE" to="de5p:~AbstractVcsAction" resolve="AbstractVcsAction" />
    </node>
    <node concept="3clFbW" id="6FKiTwA0J6k" role="jymVt">
      <node concept="3Tm1VV" id="6FKiTwA0J6l" role="1B3o_S" />
      <node concept="3cqZAl" id="6FKiTwA0J6m" role="3clF45" />
      <node concept="3clFbS" id="6FKiTwA0J6n" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="6_Mc0L7Sn3Z" role="jymVt" />
    <node concept="2tJIrI" id="6_Mc0L7Sn6S" role="jymVt" />
    <node concept="3clFb_" id="6_Mc0L7SnCu" role="jymVt">
      <property role="TrG5h" value="getActionUpdateThread" />
      <node concept="3Tm1VV" id="6_Mc0L7SnCv" role="1B3o_S" />
      <node concept="2AHcQZ" id="6_Mc0L7SnCx" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="6_Mc0L7SnCy" role="3clF45">
        <ref role="3uigEE" to="qkt:~ActionUpdateThread" resolve="ActionUpdateThread" />
      </node>
      <node concept="3clFbS" id="6_Mc0L7SnCA" role="3clF47">
        <node concept="3clFbF" id="6_Mc0L7SnCD" role="3cqZAp">
          <node concept="Rm8GO" id="6_Mc0L7Sq5V" role="3clFbG">
            <ref role="Rm8GQ" to="qkt:~ActionUpdateThread.BGT" resolve="BGT" />
            <ref role="1Px2BO" to="qkt:~ActionUpdateThread" resolve="ActionUpdateThread" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6_Mc0L7SnCB" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="23viR04BEmO" role="jymVt" />
    <node concept="3clFb_" id="6FKiTwA0J6o" role="jymVt">
      <property role="TrG5h" value="actionPerformed" />
      <node concept="3Tmbuc" id="6FKiTwA0J6p" role="1B3o_S" />
      <node concept="3cqZAl" id="6FKiTwA0J6q" role="3clF45" />
      <node concept="37vLTG" id="6FKiTwA0J6r" role="3clF46">
        <property role="TrG5h" value="vcsContext" />
        <node concept="3uibUv" id="6FKiTwA0J6s" role="1tU5fm">
          <ref role="3uigEE" to="de5q:~VcsContext" resolve="VcsContext" />
        </node>
      </node>
      <node concept="3clFbS" id="6FKiTwA0J6t" role="3clF47">
        <node concept="3cpWs8" id="7cKnY6JuY_E" role="3cqZAp">
          <node concept="3cpWsn" id="7cKnY6JuY_F" role="3cpWs9">
            <property role="TrG5h" value="pp" />
            <node concept="3uibUv" id="7cKnY6JuY_G" role="1tU5fm">
              <ref role="3uigEE" to="rvbb:~ProjectPane" resolve="ProjectPane" />
            </node>
            <node concept="1rXfSq" id="7cKnY6JuY_H" role="33vP2m">
              <ref role="37wK5l" node="7cKnY6JuQpm" resolve="getProjectPane" />
              <node concept="37vLTw" id="7cKnY6JuYOC" role="37wK5m">
                <ref role="3cqZAo" node="6FKiTwA0J6r" resolve="vcsContext" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7cKnY6JuY_J" role="3cqZAp">
          <node concept="3cpWsn" id="7cKnY6JuY_K" role="3cpWs9">
            <property role="TrG5h" value="selectedFile" />
            <node concept="3uibUv" id="7cKnY6JuY_L" role="1tU5fm">
              <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
            </node>
            <node concept="1rXfSq" id="7cKnY6JuY_M" role="33vP2m">
              <ref role="37wK5l" node="6FKiTwA0J7O" resolve="getSelectedFile" />
              <node concept="37vLTw" id="7cKnY6JuZJQ" role="37wK5m">
                <ref role="3cqZAo" node="6FKiTwA0J6r" resolve="vcsContext" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7cKnY6JuYsy" role="3cqZAp" />
        <node concept="3clFbJ" id="6FKiTwA0J6D" role="3cqZAp">
          <node concept="22lmx$" id="1hsg_gwyGdQ" role="3clFbw">
            <node concept="3clFbC" id="1hsg_gwyGDT" role="3uHU7w">
              <node concept="10Nm6u" id="1hsg_gwyGHh" role="3uHU7w" />
              <node concept="37vLTw" id="7cKnY6Jv031" role="3uHU7B">
                <ref role="3cqZAo" node="7cKnY6JuY_F" resolve="pp" />
              </node>
            </node>
            <node concept="3clFbC" id="6FKiTwA0J6E" role="3uHU7B">
              <node concept="37vLTw" id="7cKnY6Jv01W" role="3uHU7B">
                <ref role="3cqZAo" node="7cKnY6JuY_K" resolve="selectedFile" />
              </node>
              <node concept="10Nm6u" id="6FKiTwA0J6G" role="3uHU7w" />
            </node>
          </node>
          <node concept="3clFbS" id="6FKiTwA0J6H" role="3clFbx">
            <node concept="3cpWs6" id="6FKiTwA0J6I" role="3cqZAp" />
          </node>
        </node>
        <node concept="3cpWs8" id="7cKnY6JuA3o" role="3cqZAp">
          <node concept="3cpWsn" id="7cKnY6JuA3p" role="3cpWs9">
            <property role="TrG5h" value="ctx" />
            <node concept="3uibUv" id="7cKnY6JuA3e" role="1tU5fm">
              <ref role="3uigEE" to="ddhc:~FileSelectInContext" resolve="FileSelectInContext" />
            </node>
            <node concept="2ShNRf" id="7cKnY6JuA3q" role="33vP2m">
              <node concept="1pGfFk" id="7cKnY6JuA3r" role="2ShVmc">
                <ref role="37wK5l" to="ddhc:~FileSelectInContext.&lt;init&gt;(com.intellij.openapi.project.Project,com.intellij.openapi.vfs.VirtualFile)" resolve="FileSelectInContext" />
                <node concept="2OqwBi" id="7cKnY6Jv0nT" role="37wK5m">
                  <node concept="37vLTw" id="7cKnY6Jv0fO" role="2Oq$k0">
                    <ref role="3cqZAo" node="7cKnY6JuY_F" resolve="pp" />
                  </node>
                  <node concept="liA8E" id="7cKnY6Jv0Ow" role="2OqNvi">
                    <ref role="37wK5l" to="rvbb:~BaseLogicalViewProjectPane.getProject()" resolve="getProject" />
                  </node>
                </node>
                <node concept="37vLTw" id="7cKnY6Jv0da" role="37wK5m">
                  <ref role="3cqZAo" node="7cKnY6JuY_K" resolve="selectedFile" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="7cKnY6Jv2q$" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXokE2" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXokE3" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokE4" role="1PaTwD">
              <property role="3oM_SC" value="assume" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokE5" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokE6" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokE7" role="1PaTwD">
              <property role="3oM_SC" value="an" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokE8" role="1PaTwD">
              <property role="3oM_SC" value="action" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokE9" role="1PaTwD">
              <property role="3oM_SC" value="when" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokEa" role="1PaTwD">
              <property role="3oM_SC" value="user" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokEb" role="1PaTwD">
              <property role="3oM_SC" value="want's" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokEc" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokEd" role="1PaTwD">
              <property role="3oM_SC" value="get" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokEe" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokEf" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokEg" role="1PaTwD">
              <property role="3oM_SC" value="node" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokEh" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokEi" role="1PaTwD">
              <property role="3oM_SC" value="ProjectPane," />
            </node>
            <node concept="3oM_SD" id="ATZLwXokEj" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokEk" role="1PaTwD">
              <property role="3oM_SC" value="just" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokEl" role="1PaTwD">
              <property role="3oM_SC" value="reveal" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokEm" role="1PaTwD">
              <property role="3oM_SC" value="it," />
            </node>
            <node concept="3oM_SD" id="ATZLwXokEn" role="1PaTwD">
              <property role="3oM_SC" value="hence" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokEo" role="1PaTwD">
              <property role="3oM_SC" value="requestFocus" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokEp" role="1PaTwD">
              <property role="3oM_SC" value="==" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokEq" role="1PaTwD">
              <property role="3oM_SC" value="true" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7cKnY6Jv1HC" role="3cqZAp">
          <node concept="2OqwBi" id="7cKnY6Jv0Ze" role="3clFbG">
            <node concept="2OqwBi" id="7cKnY6JuAMv" role="2Oq$k0">
              <node concept="37vLTw" id="7cKnY6Jv0Uv" role="2Oq$k0">
                <ref role="3cqZAo" node="7cKnY6JuY_F" resolve="pp" />
              </node>
              <node concept="liA8E" id="7cKnY6JuAMx" role="2OqNvi">
                <ref role="37wK5l" to="rvbb:~ProjectPane.createSelectInTarget()" resolve="createSelectInTarget" />
              </node>
            </node>
            <node concept="liA8E" id="7cKnY6Jv1eC" role="2OqNvi">
              <ref role="37wK5l" to="ddhc:~SelectInTarget.selectIn(com.intellij.ide.SelectInContext,boolean)" resolve="selectIn" />
              <node concept="37vLTw" id="7cKnY6Jv1k5" role="37wK5m">
                <ref role="3cqZAo" node="7cKnY6JuA3p" resolve="ctx" />
              </node>
              <node concept="3clFbT" id="7cKnY6Jv2eC" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_UwvW" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="23viR04BEmP" role="jymVt" />
    <node concept="3clFb_" id="6FKiTwA0J7O" role="jymVt">
      <property role="TrG5h" value="getSelectedFile" />
      <node concept="3Tm6S6" id="6FKiTwA0J7P" role="1B3o_S" />
      <node concept="3uibUv" id="6FKiTwA0J7Q" role="3clF45">
        <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
      </node>
      <node concept="37vLTG" id="6FKiTwA0J7R" role="3clF46">
        <property role="TrG5h" value="e" />
        <node concept="3uibUv" id="6FKiTwA0J7S" role="1tU5fm">
          <ref role="3uigEE" to="de5q:~VcsContext" resolve="VcsContext" />
        </node>
      </node>
      <node concept="3clFbS" id="6FKiTwA0J7T" role="3clF47">
        <node concept="3cpWs8" id="6FKiTwA0J7U" role="3cqZAp">
          <node concept="3cpWsn" id="6FKiTwA0J7V" role="3cpWs9">
            <property role="TrG5h" value="selectedFiles" />
            <node concept="10Q1$e" id="6FKiTwA0J7W" role="1tU5fm">
              <node concept="3uibUv" id="6FKiTwA0J7X" role="10Q1$1">
                <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
              </node>
            </node>
            <node concept="2OqwBi" id="6FKiTwA0J7Y" role="33vP2m">
              <node concept="37vLTw" id="2BHiRxgma3r" role="2Oq$k0">
                <ref role="3cqZAo" node="6FKiTwA0J7R" resolve="e" />
              </node>
              <node concept="liA8E" id="6FKiTwA0J80" role="2OqNvi">
                <ref role="37wK5l" to="de5q:~VcsContext.getSelectedFiles()" resolve="getSelectedFiles" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6FKiTwA0J81" role="3cqZAp">
          <node concept="3y3z36" id="7cKnY6Juk0v" role="3clFbw">
            <node concept="2OqwBi" id="6FKiTwA0J83" role="3uHU7B">
              <node concept="37vLTw" id="3GM_nagTvUZ" role="2Oq$k0">
                <ref role="3cqZAo" node="6FKiTwA0J7V" resolve="selectedFiles" />
              </node>
              <node concept="1Rwk04" id="6FKiTwA0J85" role="2OqNvi" />
            </node>
            <node concept="3cmrfG" id="7cKnY6JukmV" role="3uHU7w">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
          <node concept="3clFbS" id="6FKiTwA0J87" role="3clFbx">
            <node concept="3cpWs6" id="6FKiTwA0J88" role="3cqZAp">
              <node concept="10Nm6u" id="6FKiTwA0J89" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6FKiTwA0J8a" role="3cqZAp">
          <node concept="AH0OO" id="6FKiTwA0J8b" role="3cqZAk">
            <node concept="37vLTw" id="3GM_nagT_Ts" role="AHHXb">
              <ref role="3cqZAo" node="6FKiTwA0J7V" resolve="selectedFiles" />
            </node>
            <node concept="3cmrfG" id="6FKiTwA0J8d" role="AHEQo">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7cKnY6Jukny" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="7cKnY6JuLgW" role="jymVt" />
    <node concept="3clFb_" id="7cKnY6JuQpm" role="jymVt">
      <property role="TrG5h" value="getProjectPane" />
      <node concept="3clFbS" id="7cKnY6JuQpp" role="3clF47">
        <node concept="3cpWs8" id="7cKnY6JuRAb" role="3cqZAp">
          <node concept="3cpWsn" id="7cKnY6JuRAc" role="3cpWs9">
            <property role="TrG5h" value="project" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="7cKnY6JuRA8" role="1tU5fm">
              <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
            </node>
            <node concept="2OqwBi" id="7cKnY6JuRAd" role="33vP2m">
              <node concept="37vLTw" id="7cKnY6JuRAe" role="2Oq$k0">
                <ref role="3cqZAo" node="7cKnY6JuQ_$" resolve="ctx" />
              </node>
              <node concept="liA8E" id="7cKnY6JuRAf" role="2OqNvi">
                <ref role="37wK5l" to="de5q:~VcsContext.getProject()" resolve="getProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7cKnY6JuRDZ" role="3cqZAp">
          <node concept="3clFbS" id="7cKnY6JuRE1" role="3clFbx">
            <node concept="3cpWs6" id="7cKnY6JuROV" role="3cqZAp">
              <node concept="10Nm6u" id="7cKnY6JuS5q" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="7cKnY6JuRNv" role="3clFbw">
            <node concept="10Nm6u" id="7cKnY6JuROh" role="3uHU7w" />
            <node concept="37vLTw" id="7cKnY6JuRF7" role="3uHU7B">
              <ref role="3cqZAo" node="7cKnY6JuRAc" resolve="project" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6y_kxB1XZfD" role="3cqZAp">
          <node concept="3cpWsn" id="6y_kxB1XZfE" role="3cpWs9">
            <property role="TrG5h" value="mpsProject" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="6y_kxB1XZfA" role="1tU5fm">
              <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
            </node>
            <node concept="2YIFZM" id="1hsg_gwyEPv" role="33vP2m">
              <ref role="37wK5l" to="alof:~ProjectHelper.fromIdeaProject(com.intellij.openapi.project.Project)" resolve="fromIdeaProject" />
              <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
              <node concept="37vLTw" id="1hsg_gwyEPw" role="37wK5m">
                <ref role="3cqZAo" node="7cKnY6JuRAc" resolve="project" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7cKnY6JuUxN" role="3cqZAp">
          <node concept="3clFbS" id="7cKnY6JuUxP" role="3clFbx">
            <node concept="3cpWs6" id="7cKnY6JuUXk" role="3cqZAp">
              <node concept="10Nm6u" id="7cKnY6JuUXZ" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="7cKnY6JuUVH" role="3clFbw">
            <node concept="10Nm6u" id="7cKnY6JuUW6" role="3uHU7w" />
            <node concept="37vLTw" id="7cKnY6JuUKi" role="3uHU7B">
              <ref role="3cqZAo" node="6y_kxB1XZfE" resolve="mpsProject" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7cKnY6JuSKo" role="3cqZAp">
          <node concept="2YIFZM" id="7cKnY6JuTaw" role="3cqZAk">
            <ref role="1Pybhc" to="rvbb:~ProjectPane" resolve="ProjectPane" />
            <ref role="37wK5l" to="rvbb:~ProjectPane.getInstance(jetbrains.mps.project.Project)" resolve="getInstance" />
            <node concept="37vLTw" id="7cKnY6JuTRF" role="37wK5m">
              <ref role="3cqZAo" node="6y_kxB1XZfE" resolve="mpsProject" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7cKnY6JuLui" role="1B3o_S" />
      <node concept="3uibUv" id="7cKnY6JuQl$" role="3clF45">
        <ref role="3uigEE" to="rvbb:~ProjectPane" resolve="ProjectPane" />
      </node>
      <node concept="37vLTG" id="7cKnY6JuQ_$" role="3clF46">
        <property role="TrG5h" value="ctx" />
        <node concept="3uibUv" id="7cKnY6JuQ_z" role="1tU5fm">
          <ref role="3uigEE" to="de5q:~VcsContext" resolve="VcsContext" />
        </node>
      </node>
      <node concept="2AHcQZ" id="7cKnY6JuQXA" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="23viR04BEmQ" role="jymVt" />
    <node concept="3clFb_" id="6FKiTwA0J8e" role="jymVt">
      <property role="TrG5h" value="update" />
      <node concept="3Tmbuc" id="6FKiTwA0J8f" role="1B3o_S" />
      <node concept="3cqZAl" id="6FKiTwA0J8g" role="3clF45" />
      <node concept="37vLTG" id="6FKiTwA0J8h" role="3clF46">
        <property role="TrG5h" value="vcsContext" />
        <node concept="3uibUv" id="6FKiTwA0J8i" role="1tU5fm">
          <ref role="3uigEE" to="de5q:~VcsContext" resolve="VcsContext" />
        </node>
      </node>
      <node concept="37vLTG" id="6FKiTwA0J8j" role="3clF46">
        <property role="TrG5h" value="presentation" />
        <node concept="3uibUv" id="6FKiTwA0J8k" role="1tU5fm">
          <ref role="3uigEE" to="qkt:~Presentation" resolve="Presentation" />
        </node>
      </node>
      <node concept="3clFbS" id="6FKiTwA0J8l" role="3clF47">
        <node concept="3cpWs8" id="7cKnY6JuVfo" role="3cqZAp">
          <node concept="3cpWsn" id="7cKnY6JuVfp" role="3cpWs9">
            <property role="TrG5h" value="pp" />
            <node concept="3uibUv" id="7cKnY6JuVfq" role="1tU5fm">
              <ref role="3uigEE" to="rvbb:~ProjectPane" resolve="ProjectPane" />
            </node>
            <node concept="1rXfSq" id="7cKnY6JuViA" role="33vP2m">
              <ref role="37wK5l" node="7cKnY6JuQpm" resolve="getProjectPane" />
              <node concept="37vLTw" id="7cKnY6JuVn9" role="37wK5m">
                <ref role="3cqZAo" node="6FKiTwA0J8h" resolve="vcsContext" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6FKiTwA0J8m" role="3cqZAp">
          <node concept="3cpWsn" id="6FKiTwA0J8n" role="3cpWs9">
            <property role="TrG5h" value="selectedFile" />
            <node concept="3uibUv" id="6FKiTwA0J8o" role="1tU5fm">
              <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
            </node>
            <node concept="1rXfSq" id="4hiugqyyYvC" role="33vP2m">
              <ref role="37wK5l" node="6FKiTwA0J7O" resolve="getSelectedFile" />
              <node concept="37vLTw" id="2BHiRxgm6Ly" role="37wK5m">
                <ref role="3cqZAo" node="6FKiTwA0J8h" resolve="vcsContext" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6FKiTwA0J8r" role="3cqZAp">
          <node concept="2OqwBi" id="6FKiTwA0J8s" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgmjy$" role="2Oq$k0">
              <ref role="3cqZAo" node="6FKiTwA0J8j" resolve="presentation" />
            </node>
            <node concept="liA8E" id="6FKiTwA0J8u" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setEnabled(boolean)" resolve="setEnabled" />
              <node concept="1Wc70l" id="7cKnY6JuWDs" role="37wK5m">
                <node concept="2OqwBi" id="7cKnY6JuXwh" role="3uHU7w">
                  <node concept="2OqwBi" id="7cKnY6JuWRS" role="2Oq$k0">
                    <node concept="37vLTw" id="7cKnY6JuWFt" role="2Oq$k0">
                      <ref role="3cqZAo" node="7cKnY6JuVfp" resolve="pp" />
                    </node>
                    <node concept="liA8E" id="7cKnY6JuXkt" role="2OqNvi">
                      <ref role="37wK5l" to="rvbb:~ProjectPane.createSelectInTarget()" resolve="createSelectInTarget" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7cKnY6JuXBR" role="2OqNvi">
                    <ref role="37wK5l" to="ddhc:~SelectInTarget.canSelect(com.intellij.ide.SelectInContext)" resolve="canSelect" />
                    <node concept="2ShNRf" id="7cKnY6JuXE_" role="37wK5m">
                      <node concept="1pGfFk" id="7cKnY6JuXEA" role="2ShVmc">
                        <ref role="37wK5l" to="ddhc:~FileSelectInContext.&lt;init&gt;(com.intellij.openapi.project.Project,com.intellij.openapi.vfs.VirtualFile)" resolve="FileSelectInContext" />
                        <node concept="2OqwBi" id="7cKnY6JuXR0" role="37wK5m">
                          <node concept="37vLTw" id="7cKnY6JuXJs" role="2Oq$k0">
                            <ref role="3cqZAo" node="7cKnY6JuVfp" resolve="pp" />
                          </node>
                          <node concept="liA8E" id="7cKnY6JuYmk" role="2OqNvi">
                            <ref role="37wK5l" to="rvbb:~BaseLogicalViewProjectPane.getProject()" resolve="getProject" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="7cKnY6JuXEC" role="37wK5m">
                          <ref role="3cqZAo" node="6FKiTwA0J8n" resolve="selectedFile" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1Wc70l" id="7cKnY6JuWhi" role="3uHU7B">
                  <node concept="3y3z36" id="7cKnY6JuWdA" role="3uHU7B">
                    <node concept="37vLTw" id="7cKnY6JuW04" role="3uHU7B">
                      <ref role="3cqZAo" node="7cKnY6JuVfp" resolve="pp" />
                    </node>
                    <node concept="10Nm6u" id="7cKnY6JuWg6" role="3uHU7w" />
                  </node>
                  <node concept="3y3z36" id="7cKnY6JuW$Z" role="3uHU7w">
                    <node concept="37vLTw" id="7cKnY6JuWj3" role="3uHU7B">
                      <ref role="3cqZAo" node="6FKiTwA0J8n" resolve="selectedFile" />
                    </node>
                    <node concept="10Nm6u" id="7cKnY6JuWBL" role="3uHU7w" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_UwvX" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7pVeK7_8ojQ">
    <property role="TrG5h" value="SetExtensionChangesGroupingAction" />
    <node concept="3Tm1VV" id="7pVeK7_8ojR" role="1B3o_S" />
    <node concept="3uibUv" id="2vCsXJ2NKHg" role="1zkMxy">
      <ref role="3uigEE" to="s4aq:~SetChangesGroupingAction" resolve="SetChangesGroupingAction" />
    </node>
    <node concept="3clFb_" id="7pVeK7_8pgj" role="jymVt">
      <property role="TrG5h" value="getGroupingKey" />
      <node concept="3Tm1VV" id="7pVeK7_8pgk" role="1B3o_S" />
      <node concept="2AHcQZ" id="7pVeK7_8pgm" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="7pVeK7_8pgn" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="7pVeK7_8pgo" role="3clF47">
        <node concept="3clFbF" id="7pVeK7_8pZe" role="3cqZAp">
          <node concept="Xl_RD" id="6ef8kEM5QUM" role="3clFbG">
            <property role="Xl_RC" value="extension" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7pVeK7_8pgp" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="7pVeK7_8qyv" role="jymVt">
      <property role="TrG5h" value="update" />
      <node concept="3Tm1VV" id="7pVeK7_8qyw" role="1B3o_S" />
      <node concept="3cqZAl" id="7pVeK7_8qyy" role="3clF45" />
      <node concept="37vLTG" id="7pVeK7_8qyz" role="3clF46">
        <property role="TrG5h" value="e" />
        <node concept="3uibUv" id="7pVeK7_8qy$" role="1tU5fm">
          <ref role="3uigEE" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
        </node>
        <node concept="2AHcQZ" id="7pVeK7_8qy_" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="7pVeK7_8qyA" role="3clF47">
        <node concept="3clFbF" id="7pVeK7_8qyE" role="3cqZAp">
          <node concept="3nyPlj" id="7pVeK7_8qyD" role="3clFbG">
            <ref role="37wK5l" to="s4aq:~SetChangesGroupingAction.update(com.intellij.openapi.actionSystem.AnActionEvent)" resolve="update" />
            <node concept="37vLTw" id="7pVeK7_8qyC" role="37wK5m">
              <ref role="3cqZAo" node="7pVeK7_8qyz" resolve="e" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7pVeK7_8r87" role="3cqZAp">
          <node concept="2OqwBi" id="7pVeK7_8s0g" role="3clFbG">
            <node concept="2OqwBi" id="7pVeK7_8rh1" role="2Oq$k0">
              <node concept="37vLTw" id="7pVeK7_8r85" role="2Oq$k0">
                <ref role="3cqZAo" node="7pVeK7_8qyz" resolve="e" />
              </node>
              <node concept="liA8E" id="7pVeK7_8rJN" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="liA8E" id="7pVeK7_8se9" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setText(java.lang.String)" resolve="setText" />
              <node concept="Xl_RD" id="7pVeK7_8st0" role="37wK5m">
                <property role="Xl_RC" value="Extension" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7pVeK7_8trY" role="3cqZAp">
          <node concept="2OqwBi" id="7pVeK7_8ujd" role="3clFbG">
            <node concept="2OqwBi" id="7pVeK7_8t_r" role="2Oq$k0">
              <node concept="37vLTw" id="7pVeK7_8trW" role="2Oq$k0">
                <ref role="3cqZAo" node="7pVeK7_8qyz" resolve="e" />
              </node>
              <node concept="liA8E" id="7pVeK7_8u1P" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="liA8E" id="7pVeK7_8uAB" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setEnabledAndVisible(boolean)" resolve="setEnabledAndVisible" />
              <node concept="3clFbT" id="7pVeK7_8uYD" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7pVeK7_8qyB" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
</model>

