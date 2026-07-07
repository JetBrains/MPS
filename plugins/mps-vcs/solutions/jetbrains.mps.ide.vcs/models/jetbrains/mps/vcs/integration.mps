<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:eec25685-8f1e-47c9-a9de-4a7ef6b504ec(jetbrains.mps.vcs.integration)">
  <persistence version="9" />
  <languages>
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="-1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
  </languages>
  <imports>
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="jlff" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.vfs(MPS.IDEA/)" />
    <import index="jlcu" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.vcs(MPS.IDEA/)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="1037" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.vcs.changes(MPS.IDEA/)" />
    <import index="bd8o" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.application(MPS.IDEA/)" />
    <import index="snbe" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.util.io(MPS.IDEA/)" />
    <import index="btn2" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ide.impl(MPS.IDEA/)" />
    <import index="4hrd" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.vfs(MPS.Platform/)" />
    <import index="zn9m" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.util(MPS.IDEA/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="z1c4" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="eoo2" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.nio.file(JDK/)" />
    <import index="alof" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.project(MPS.Platform/)" />
    <import index="uvcm" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.vfs.newvfs(MPS.IDEA/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="p3o1" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.vfs.newvfs.events(MPS.IDEA/)" />
    <import index="1ctc" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.stream(JDK/)" />
    <import index="82uw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.function(JDK/)" />
    <import index="2ny0" ref="86441d7a-e194-42da-81a5-2161ec62a379/java:jetbrains.mps.workbench.actions(MPS.Workbench/)" />
    <import index="nos0" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project.ex(MPS.IDEA/)" />
    <import index="rgfa" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing.tree(JDK/)" />
    <import index="lzb2" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui(MPS.IDEA/)" />
    <import index="cyi7" ref="f35cbfcb-ea50-4f20-9d5c-c765fbd8fd3b/java:com.intellij.openapi.vcs.changes.ui(jetbrains.mps.vcs.idea.stubs/)" />
    <import index="2lau" ref="b00f36f0-49b7-456c-8405-740447ebb192/java:com.intellij.openapi.vcs.checkout(MPS.IDEA.Modules/)" />
    <import index="hlwo" ref="b00f36f0-49b7-456c-8405-740447ebb192/java:com.intellij.openapi.vcs.merge(MPS.IDEA.Modules/)" />
    <import index="j86o" ref="b00f36f0-49b7-456c-8405-740447ebb192/java:com.intellij.openapi.vcs.impl(MPS.IDEA.Modules/)" />
    <import index="jlcv" ref="b00f36f0-49b7-456c-8405-740447ebb192/java:com.intellij.openapi.vcs(MPS.IDEA.Modules/)" />
    <import index="1038" ref="b00f36f0-49b7-456c-8405-740447ebb192/java:com.intellij.openapi.vcs.changes(MPS.IDEA.Modules/)" />
    <import index="lzb3" ref="b00f36f0-49b7-456c-8405-740447ebb192/java:com.intellij.ui(MPS.IDEA.Modules/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
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
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
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
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
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
      <concept id="1225271369338" name="jetbrains.mps.baseLanguage.structure.IsEmptyOperation" flags="nn" index="17RlXB" />
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
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
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
      <concept id="1171903916106" name="jetbrains.mps.baseLanguage.structure.UpperBoundType" flags="in" index="3qUE_q">
        <child id="1171903916107" name="bound" index="3qUE_r" />
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
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1208890769693" name="jetbrains.mps.baseLanguage.structure.ArrayLengthOperation" flags="nn" index="1Rwk04" />
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
        <child id="1201186121363" name="typeParameter" index="2Ghqu4" />
      </concept>
    </language>
    <language id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots">
      <concept id="4079382982702596667" name="jetbrains.mps.baseLanguage.checkedDots.structure.CheckedDotExpression" flags="nn" index="2EnYce" />
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
  <node concept="312cEu" id="33vUo2uvw57">
    <property role="TrG5h" value="ProjectCheckoutListener" />
    <node concept="3Tm1VV" id="33vUo2uvw58" role="1B3o_S" />
    <node concept="3uibUv" id="33vUo2uvw59" role="EKbjA">
      <ref role="3uigEE" to="2lau:~CheckoutListener" resolve="CheckoutListener" />
    </node>
    <node concept="3clFb_" id="33vUo2uvw5e" role="jymVt">
      <property role="TrG5h" value="processCheckedOutDirectory" />
      <node concept="3Tm1VV" id="33vUo2uvw5f" role="1B3o_S" />
      <node concept="10P_77" id="33vUo2uvw5g" role="3clF45" />
      <node concept="37vLTG" id="33vUo2uvw5h" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="33vUo2uvw5i" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
        <node concept="2AHcQZ" id="5bF_UrCy3gZ" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="33vUo2uvw5j" role="3clF46">
        <property role="TrG5h" value="directory" />
        <node concept="3uibUv" id="5bF_UrCy41H" role="1tU5fm">
          <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
        </node>
        <node concept="2AHcQZ" id="5bF_UrCy4lP" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="33vUo2uvw5l" role="3clF47">
        <node concept="3cpWs8" id="33vUo2uvw5m" role="3cqZAp">
          <node concept="3cpWsn" id="33vUo2uvw5n" role="3cpWs9">
            <property role="TrG5h" value="files" />
            <node concept="10Q1$e" id="33vUo2uvw5o" role="1tU5fm">
              <node concept="3uibUv" id="33vUo2uvw5p" role="10Q1$1">
                <ref role="3uigEE" to="guwi:~File" resolve="File" />
              </node>
            </node>
            <node concept="2OqwBi" id="33vUo2uvw5q" role="33vP2m">
              <node concept="liA8E" id="33vUo2uvw5s" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~File.listFiles(java.io.FilenameFilter)" resolve="listFiles" />
                <node concept="2ShNRf" id="33vUo2uvw5t" role="37wK5m">
                  <node concept="YeOm9" id="33vUo2uvw5u" role="2ShVmc">
                    <node concept="1Y3b0j" id="33vUo2uvw5v" role="YeSDq">
                      <property role="TrG5h" value="" />
                      <ref role="1Y3XeK" to="guwi:~FilenameFilter" resolve="FilenameFilter" />
                      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                      <node concept="3clFb_" id="33vUo2uvw5w" role="jymVt">
                        <property role="TrG5h" value="accept" />
                        <node concept="3Tm1VV" id="33vUo2uvw5x" role="1B3o_S" />
                        <node concept="10P_77" id="33vUo2uvw5y" role="3clF45" />
                        <node concept="37vLTG" id="33vUo2uvw5z" role="3clF46">
                          <property role="TrG5h" value="dir" />
                          <node concept="3uibUv" id="33vUo2uvw5$" role="1tU5fm">
                            <ref role="3uigEE" to="guwi:~File" resolve="File" />
                          </node>
                        </node>
                        <node concept="37vLTG" id="33vUo2uvw5_" role="3clF46">
                          <property role="TrG5h" value="name" />
                          <node concept="17QB3L" id="6sqsxb$$CU3" role="1tU5fm" />
                        </node>
                        <node concept="3clFbS" id="33vUo2uvw5B" role="3clF47">
                          <node concept="3cpWs6" id="33vUo2uvw5C" role="3cqZAp">
                            <node concept="1Wc70l" id="5bF_UrCy5xL" role="3cqZAk">
                              <node concept="2OqwBi" id="5bF_UrCy69P" role="3uHU7B">
                                <node concept="37vLTw" id="5bF_UrCy5Hi" role="2Oq$k0">
                                  <ref role="3cqZAo" node="33vUo2uvw5z" resolve="dir" />
                                </node>
                                <node concept="liA8E" id="5bF_UrCy6w6" role="2OqNvi">
                                  <ref role="37wK5l" to="guwi:~File.isFile()" resolve="isFile" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="33vUo2uvw5D" role="3uHU7w">
                                <node concept="37vLTw" id="2BHiRxgm6G_" role="2Oq$k0">
                                  <ref role="3cqZAo" node="33vUo2uvw5_" resolve="name" />
                                </node>
                                <node concept="liA8E" id="33vUo2uvw5F" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~String.endsWith(java.lang.String)" resolve="endsWith" />
                                  <node concept="10M0yZ" id="33vUo2uvw5G" role="37wK5m">
                                    <ref role="3cqZAo" to="z1c3:~MPSExtentions.DOT_MPS_PROJECT" resolve="DOT_MPS_PROJECT" />
                                    <ref role="1PxDUh" to="z1c3:~MPSExtentions" resolve="MPSExtentions" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="3tYsUK_RTXE" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="5bF_UrCy56K" role="2Oq$k0">
                <node concept="37vLTw" id="2BHiRxgm8qP" role="2Oq$k0">
                  <ref role="3cqZAo" node="33vUo2uvw5j" resolve="directory" />
                </node>
                <node concept="liA8E" id="5bF_UrCy5mZ" role="2OqNvi">
                  <ref role="37wK5l" to="eoo2:~Path.toFile()" resolve="toFile" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="33vUo2uvw5H" role="3cqZAp">
          <node concept="1Wc70l" id="33vUo2uvw5I" role="3clFbw">
            <node concept="3y3z36" id="33vUo2uvw5J" role="3uHU7B">
              <node concept="37vLTw" id="3GM_nagTAUl" role="3uHU7B">
                <ref role="3cqZAo" node="33vUo2uvw5n" resolve="files" />
              </node>
              <node concept="10Nm6u" id="33vUo2uvw5L" role="3uHU7w" />
            </node>
            <node concept="3eOSWO" id="33vUo2uvw5M" role="3uHU7w">
              <node concept="2OqwBi" id="33vUo2uvw5N" role="3uHU7B">
                <node concept="37vLTw" id="3GM_nagTzyR" role="2Oq$k0">
                  <ref role="3cqZAo" node="33vUo2uvw5n" resolve="files" />
                </node>
                <node concept="1Rwk04" id="33vUo2uvw5P" role="2OqNvi" />
              </node>
              <node concept="3cmrfG" id="33vUo2uvw5Q" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="33vUo2uvw5R" role="3clFbx">
            <node concept="3cpWs8" id="4Z7jVP8Lcvr" role="3cqZAp">
              <node concept="3cpWsn" id="4Z7jVP8Lcvq" role="3cpWs9">
                <property role="3TUv4t" value="true" />
                <property role="TrG5h" value="virtualFile" />
                <node concept="3uibUv" id="4Z7jVP8Lcvs" role="1tU5fm">
                  <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
                </node>
                <node concept="2OqwBi" id="4Z7jVP8LcUZ" role="33vP2m">
                  <node concept="AH0OO" id="4Z7jVP8Lcvu" role="2Oq$k0">
                    <node concept="37vLTw" id="4Z7jVP8Lcvv" role="AHHXb">
                      <ref role="3cqZAo" node="33vUo2uvw5n" resolve="files" />
                    </node>
                    <node concept="3cmrfG" id="4Z7jVP8Lcvw" role="AHEQo">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                  <node concept="liA8E" id="4Z7jVP8LdM$" role="2OqNvi">
                    <ref role="37wK5l" to="guwi:~File.toPath()" resolve="toPath" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="4Z7jVP8Lf3M" role="3cqZAp">
              <node concept="3clFbS" id="4Z7jVP8Lf3O" role="3clFbx">
                <node concept="3clFbF" id="4Z7jVP8LhvX" role="3cqZAp">
                  <node concept="2YIFZM" id="4Z7jVP8LhNH" role="3clFbG">
                    <ref role="37wK5l" to="btn2:~ProjectUtil.openProject(java.nio.file.Path,com.intellij.ide.impl.OpenProjectTask)" resolve="openProject" />
                    <ref role="1Pybhc" to="btn2:~ProjectUtil" resolve="ProjectUtil" />
                    <node concept="37vLTw" id="4Z7jVP8Lijg" role="37wK5m">
                      <ref role="3cqZAo" node="4Z7jVP8Lcvq" resolve="virtualFile" />
                    </node>
                    <node concept="2OqwBi" id="4Z7jVP8LiMR" role="37wK5m">
                      <node concept="2YIFZM" id="4Z7jVP8LiMS" role="2Oq$k0">
                        <ref role="1Pybhc" to="btn2:~OpenProjectTask" resolve="OpenProjectTask" />
                        <ref role="37wK5l" to="btn2:~OpenProjectTask.build()" resolve="build" />
                      </node>
                      <node concept="liA8E" id="4Z7jVP8LiMT" role="2OqNvi">
                        <ref role="37wK5l" to="btn2:~OpenProjectTask.withProjectToClose(com.intellij.openapi.project.Project)" resolve="withProjectToClose" />
                        <node concept="37vLTw" id="4Z7jVP8LiMU" role="37wK5m">
                          <ref role="3cqZAo" node="33vUo2uvw5h" resolve="project" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="4Z7jVP8Lf3N" role="3cqZAp" />
              </node>
              <node concept="2YIFZM" id="4Z7jVP8Lg8F" role="3clFbw">
                <ref role="37wK5l" to="2ny0:~OpenMPSProjectTrustProjectHelper.checkTrust(java.nio.file.Path)" resolve="checkTrust" />
                <ref role="1Pybhc" to="2ny0:~OpenMPSProjectTrustProjectHelper" resolve="OpenMPSProjectTrustProjectHelper" />
                <node concept="37vLTw" id="4Z7jVP8Lglr" role="37wK5m">
                  <ref role="3cqZAo" node="4Z7jVP8Lcvq" resolve="virtualFile" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="33vUo2uvw6m" role="3cqZAp">
              <node concept="3clFbT" id="33vUo2uvw6n" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="33vUo2uvw6o" role="3cqZAp">
          <node concept="3clFbT" id="33vUo2uvw6p" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_Sl2d" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="33vUo2uvKbY">
    <property role="TrG5h" value="ModuleVcsPathPresenter" />
    <node concept="3Tm1VV" id="33vUo2uvKbZ" role="1B3o_S" />
    <node concept="3uibUv" id="33vUo2uvKc0" role="1zkMxy">
      <ref role="3uigEE" to="j86o:~VcsPathPresenter" resolve="VcsPathPresenter" />
    </node>
    <node concept="312cEg" id="33vUo2uvKc1" role="jymVt">
      <property role="TrG5h" value="myProject" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="33vUo2uvKc2" role="1tU5fm">
        <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
      </node>
      <node concept="3Tm6S6" id="33vUo2uvKc3" role="1B3o_S" />
    </node>
    <node concept="3clFbW" id="33vUo2uvKc7" role="jymVt">
      <node concept="3Tm1VV" id="33vUo2uvKc8" role="1B3o_S" />
      <node concept="3cqZAl" id="33vUo2uvKc9" role="3clF45" />
      <node concept="37vLTG" id="33vUo2uvKca" role="3clF46">
        <property role="TrG5h" value="project" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="33vUo2uvKcb" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3clFbS" id="33vUo2uvKce" role="3clF47">
        <node concept="3clFbF" id="33vUo2uvKcf" role="3cqZAp">
          <node concept="37vLTI" id="33vUo2uvKcg" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeujR_" role="37vLTJ">
              <ref role="3cqZAo" node="33vUo2uvKc1" resolve="myProject" />
            </node>
            <node concept="37vLTw" id="2BHiRxghiZ8" role="37vLTx">
              <ref role="3cqZAo" node="33vUo2uvKca" resolve="project" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="33vUo2uvKcn" role="jymVt">
      <property role="TrG5h" value="getPresentableRelativePathFor" />
      <node concept="17QB3L" id="6sqsxb$$CU7" role="3clF45" />
      <node concept="3Tm1VV" id="33vUo2uvKco" role="1B3o_S" />
      <node concept="37vLTG" id="33vUo2uvKcq" role="3clF46">
        <property role="TrG5h" value="file" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="33vUo2uvKcr" role="1tU5fm">
          <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
        </node>
      </node>
      <node concept="3clFbS" id="33vUo2uvKcs" role="3clF47">
        <node concept="3clFbJ" id="33vUo2uvKct" role="3cqZAp">
          <node concept="3clFbC" id="33vUo2uvKcu" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxgm96Z" role="3uHU7B">
              <ref role="3cqZAo" node="33vUo2uvKcq" resolve="file" />
            </node>
            <node concept="10Nm6u" id="33vUo2uvKcw" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="33vUo2uvKcx" role="3clFbx">
            <node concept="3cpWs6" id="33vUo2uvKcy" role="3cqZAp">
              <node concept="Xl_RD" id="33vUo2uvKcz" role="3cqZAk">
                <property role="Xl_RC" value="" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="33vUo2uvKc$" role="3cqZAp">
          <node concept="2OqwBi" id="33vUo2uvKc_" role="3cqZAk">
            <node concept="2YIFZM" id="33vUo2uvKcA" role="2Oq$k0">
              <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
              <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
            </node>
            <node concept="liA8E" id="33vUo2uvKcB" role="2OqNvi">
              <ref role="37wK5l" to="bd8o:~Application.runReadAction(com.intellij.openapi.util.Computable)" resolve="runReadAction" />
              <node concept="2ShNRf" id="33vUo2uvKcC" role="37wK5m">
                <node concept="YeOm9" id="33vUo2uvKcD" role="2ShVmc">
                  <node concept="1Y3b0j" id="33vUo2uvKcE" role="YeSDq">
                    <property role="TrG5h" value="" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <ref role="1Y3XeK" to="zn9m:~Computable" resolve="Computable" />
                    <node concept="17QB3L" id="6sqsxb$$CU5" role="2Ghqu4" />
                    <node concept="3clFb_" id="33vUo2uvKcG" role="jymVt">
                      <property role="TrG5h" value="compute" />
                      <node concept="17QB3L" id="6sqsxb$$CU6" role="3clF45" />
                      <node concept="3Tm1VV" id="33vUo2uvKcH" role="1B3o_S" />
                      <node concept="3clFbS" id="33vUo2uvKcJ" role="3clF47">
                        <node concept="3cpWs8" id="33vUo2uvKcK" role="3cqZAp">
                          <node concept="3cpWsn" id="33vUo2uvKcL" role="3cpWs9">
                            <property role="TrG5h" value="baseDir" />
                            <node concept="3uibUv" id="33vUo2uvKcM" role="1tU5fm">
                              <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
                            </node>
                            <node concept="2YIFZM" id="3FLm4EWth5L" role="33vP2m">
                              <ref role="37wK5l" to="4nm9:~ProjectUtil.guessProjectDir(com.intellij.openapi.project.Project)" resolve="guessProjectDir" />
                              <ref role="1Pybhc" to="4nm9:~ProjectUtil" resolve="ProjectUtil" />
                              <node concept="37vLTw" id="3FLm4EWthbb" role="37wK5m">
                                <ref role="3cqZAo" node="33vUo2uvKc1" resolve="myProject" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="33vUo2uvKcQ" role="3cqZAp">
                          <node concept="3y3z36" id="33vUo2uvKcR" role="3clFbw">
                            <node concept="37vLTw" id="3GM_nagTsfx" role="3uHU7B">
                              <ref role="3cqZAo" node="33vUo2uvKcL" resolve="baseDir" />
                            </node>
                            <node concept="10Nm6u" id="33vUo2uvKcT" role="3uHU7w" />
                          </node>
                          <node concept="3clFbS" id="33vUo2uvKcU" role="3clFbx">
                            <node concept="3clFbJ" id="33vUo2uvKcV" role="3cqZAp">
                              <node concept="2YIFZM" id="41JhXQX7TdW" role="3clFbw">
                                <ref role="1Pybhc" to="jlff:~VfsUtil" resolve="VfsUtil" />
                                <ref role="37wK5l" to="jlff:~VfsUtilCore.isAncestor(com.intellij.openapi.vfs.VirtualFile,com.intellij.openapi.vfs.VirtualFile,boolean)" resolve="isAncestor" />
                                <node concept="37vLTw" id="3GM_nagT__h" role="37wK5m">
                                  <ref role="3cqZAo" node="33vUo2uvKcL" resolve="baseDir" />
                                </node>
                                <node concept="37vLTw" id="2BHiRxgm7b4" role="37wK5m">
                                  <ref role="3cqZAo" node="33vUo2uvKcq" resolve="file" />
                                </node>
                                <node concept="3clFbT" id="41JhXQX7TdZ" role="37wK5m">
                                  <property role="3clFbU" value="true" />
                                </node>
                              </node>
                              <node concept="3clFbS" id="33vUo2uvKd0" role="3clFbx">
                                <node concept="3cpWs6" id="33vUo2uvKd1" role="3cqZAp">
                                  <node concept="3cpWs3" id="33vUo2uvKd2" role="3cqZAk">
                                    <node concept="3cpWs3" id="33vUo2uvKd3" role="3uHU7B">
                                      <node concept="3cpWs3" id="33vUo2uvKd4" role="3uHU7B">
                                        <node concept="3cpWs3" id="33vUo2uvKd5" role="3uHU7B">
                                          <node concept="Xl_RD" id="33vUo2uvKd6" role="3uHU7B">
                                            <property role="Xl_RC" value="[" />
                                          </node>
                                          <node concept="2OqwBi" id="33vUo2uvKd7" role="3uHU7w">
                                            <node concept="37vLTw" id="2BHiRxeuFkD" role="2Oq$k0">
                                              <ref role="3cqZAo" node="33vUo2uvKc1" resolve="myProject" />
                                            </node>
                                            <node concept="liA8E" id="33vUo2uvKd9" role="2OqNvi">
                                              <ref role="37wK5l" to="4nm9:~Project.getName()" resolve="getName" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="Xl_RD" id="33vUo2uvKda" role="3uHU7w">
                                          <property role="Xl_RC" value="]" />
                                        </node>
                                      </node>
                                      <node concept="10M0yZ" id="33vUo2uvKdb" role="3uHU7w">
                                        <ref role="1PxDUh" to="guwi:~File" resolve="File" />
                                        <ref role="3cqZAo" to="guwi:~File.separator" resolve="separator" />
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="33vUo2uvKdc" role="3uHU7w">
                                      <node concept="37vLTw" id="2BHiRxglJVq" role="2Oq$k0">
                                        <ref role="3cqZAo" node="33vUo2uvKcq" resolve="file" />
                                      </node>
                                      <node concept="liA8E" id="33vUo2uvKde" role="2OqNvi">
                                        <ref role="37wK5l" to="jlff:~VirtualFile.getPath()" resolve="getPath" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1DcWWT" id="33vUo2uvKdf" role="3cqZAp">
                          <node concept="2OqwBi" id="33vUo2uvKdg" role="1DdaDG">
                            <node concept="liA8E" id="33vUo2uvKdi" role="2OqNvi">
                              <ref role="37wK5l" to="jlcv:~ProjectLevelVcsManager.getAllVcsRoots()" resolve="getAllVcsRoots" />
                            </node>
                            <node concept="2YIFZM" id="LSPZqiDtBn" role="2Oq$k0">
                              <ref role="37wK5l" to="jlcv:~ProjectLevelVcsManager.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
                              <ref role="1Pybhc" to="jlcv:~ProjectLevelVcsManager" resolve="ProjectLevelVcsManager" />
                              <node concept="37vLTw" id="LSPZqiDua6" role="37wK5m">
                                <ref role="3cqZAo" node="33vUo2uvKc1" resolve="myProject" />
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWsn" id="33vUo2uvKdj" role="1Duv9x">
                            <property role="TrG5h" value="root" />
                            <node concept="3uibUv" id="33vUo2uvKdk" role="1tU5fm">
                              <ref role="3uigEE" to="jlcv:~VcsRoot" resolve="VcsRoot" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="33vUo2uvKdl" role="2LFqv$">
                            <node concept="3clFbJ" id="33vUo2uvKdm" role="3cqZAp">
                              <node concept="2YIFZM" id="41JhXQX7Te0" role="3clFbw">
                                <ref role="1Pybhc" to="jlff:~VfsUtil" resolve="VfsUtil" />
                                <ref role="37wK5l" to="jlff:~VfsUtilCore.isAncestor(com.intellij.openapi.vfs.VirtualFile,com.intellij.openapi.vfs.VirtualFile,boolean)" resolve="isAncestor" />
                                <node concept="2OqwBi" id="41JhXQX7Te1" role="37wK5m">
                                  <node concept="liA8E" id="46_v$3HTXzJ" role="2OqNvi">
                                    <ref role="37wK5l" to="jlcv:~VcsRoot.getPath()" resolve="getPath" />
                                  </node>
                                  <node concept="37vLTw" id="3GM_nagT_V4" role="2Oq$k0">
                                    <ref role="3cqZAo" node="33vUo2uvKdj" resolve="root" />
                                  </node>
                                </node>
                                <node concept="37vLTw" id="2BHiRxgmJgE" role="37wK5m">
                                  <ref role="3cqZAo" node="33vUo2uvKcq" resolve="file" />
                                </node>
                                <node concept="3clFbT" id="41JhXQX7Te5" role="37wK5m">
                                  <property role="3clFbU" value="true" />
                                </node>
                              </node>
                              <node concept="3clFbS" id="33vUo2uvKdt" role="3clFbx">
                                <node concept="3cpWs6" id="33vUo2uvKdu" role="3cqZAp">
                                  <node concept="3cpWs3" id="33vUo2uvKdv" role="3cqZAk">
                                    <node concept="3cpWs3" id="33vUo2uvKdw" role="3uHU7B">
                                      <node concept="3cpWs3" id="33vUo2uvKdx" role="3uHU7B">
                                        <node concept="3cpWs3" id="33vUo2uvKdy" role="3uHU7B">
                                          <node concept="Xl_RD" id="33vUo2uvKdz" role="3uHU7B">
                                            <property role="Xl_RC" value="[" />
                                          </node>
                                          <node concept="2OqwBi" id="33vUo2uvKd$" role="3uHU7w">
                                            <node concept="2OqwBi" id="33vUo2uvKd_" role="2Oq$k0">
                                              <node concept="liA8E" id="46_v$3HTXVJ" role="2OqNvi">
                                                <ref role="37wK5l" to="jlcv:~VcsRoot.getPath()" resolve="getPath" />
                                              </node>
                                              <node concept="37vLTw" id="3GM_nagTzDf" role="2Oq$k0">
                                                <ref role="3cqZAo" node="33vUo2uvKdj" resolve="root" />
                                              </node>
                                            </node>
                                            <node concept="liA8E" id="33vUo2uvKdC" role="2OqNvi">
                                              <ref role="37wK5l" to="jlff:~VirtualFile.getName()" resolve="getName" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="Xl_RD" id="33vUo2uvKdD" role="3uHU7w">
                                          <property role="Xl_RC" value="]" />
                                        </node>
                                      </node>
                                      <node concept="10M0yZ" id="33vUo2uvKdE" role="3uHU7w">
                                        <ref role="1PxDUh" to="guwi:~File" resolve="File" />
                                        <ref role="3cqZAo" to="guwi:~File.separator" resolve="separator" />
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="33vUo2uvKdF" role="3uHU7w">
                                      <node concept="37vLTw" id="2BHiRxghfv8" role="2Oq$k0">
                                        <ref role="3cqZAo" node="33vUo2uvKcq" resolve="file" />
                                      </node>
                                      <node concept="liA8E" id="33vUo2uvKdH" role="2OqNvi">
                                        <ref role="37wK5l" to="jlff:~VirtualFile.getPath()" resolve="getPath" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs6" id="33vUo2uvKdI" role="3cqZAp">
                          <node concept="3cpWs3" id="33vUo2uvKdJ" role="3cqZAk">
                            <node concept="3cpWs3" id="33vUo2uvKdK" role="3uHU7B">
                              <node concept="Xl_RD" id="33vUo2uvKdL" role="3uHU7B">
                                <property role="Xl_RC" value="[]" />
                              </node>
                              <node concept="10M0yZ" id="33vUo2uvKdM" role="3uHU7w">
                                <ref role="1PxDUh" to="guwi:~File" resolve="File" />
                                <ref role="3cqZAo" to="guwi:~File.separator" resolve="separator" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="33vUo2uvKdN" role="3uHU7w">
                              <node concept="37vLTw" id="2BHiRxghf68" role="2Oq$k0">
                                <ref role="3cqZAo" node="33vUo2uvKcq" resolve="file" />
                              </node>
                              <node concept="liA8E" id="33vUo2uvKdP" role="2OqNvi">
                                <ref role="37wK5l" to="jlff:~VirtualFile.getPath()" resolve="getPath" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="3tYsUK_Sc_e" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_UvPX" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="7WyXo5rEorx" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="3clFb_" id="33vUo2uvKdQ" role="jymVt">
      <property role="TrG5h" value="getPresentableRelativePath" />
      <node concept="17QB3L" id="6sqsxb$$CU4" role="3clF45" />
      <node concept="3Tm1VV" id="33vUo2uvKdR" role="1B3o_S" />
      <node concept="37vLTG" id="33vUo2uvKdT" role="3clF46">
        <property role="TrG5h" value="fromRevision" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="33vUo2uvKdU" role="1tU5fm">
          <ref role="3uigEE" to="1038:~ContentRevision" resolve="ContentRevision" />
        </node>
      </node>
      <node concept="37vLTG" id="33vUo2uvKdV" role="3clF46">
        <property role="TrG5h" value="toRevision" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="33vUo2uvKdW" role="1tU5fm">
          <ref role="3uigEE" to="1038:~ContentRevision" resolve="ContentRevision" />
        </node>
      </node>
      <node concept="3clFbS" id="33vUo2uvKdX" role="3clF47">
        <node concept="3cpWs8" id="7WyXo5rEH4w" role="3cqZAp">
          <node concept="3cpWsn" id="7WyXo5rEH4x" role="3cpWs9">
            <property role="TrG5h" value="relativePath" />
            <node concept="17QB3L" id="7WyXo5rEHNQ" role="1tU5fm" />
            <node concept="2YIFZM" id="7WyXo5rEH4y" role="33vP2m">
              <ref role="37wK5l" to="snbe:~FileUtil.getRelativePath(java.io.File,java.io.File)" resolve="getRelativePath" />
              <ref role="1Pybhc" to="snbe:~FileUtil" resolve="FileUtil" />
              <node concept="2OqwBi" id="7WyXo5rEH4z" role="37wK5m">
                <node concept="2OqwBi" id="7WyXo5rEH4$" role="2Oq$k0">
                  <node concept="37vLTw" id="7WyXo5rEH4_" role="2Oq$k0">
                    <ref role="3cqZAo" node="33vUo2uvKdV" resolve="toRevision" />
                  </node>
                  <node concept="liA8E" id="7WyXo5rEH4A" role="2OqNvi">
                    <ref role="37wK5l" to="1038:~ContentRevision.getFile()" resolve="getFile" />
                  </node>
                </node>
                <node concept="liA8E" id="7WyXo5rEH4B" role="2OqNvi">
                  <ref role="37wK5l" to="jlcv:~FilePath.getIOFile()" resolve="getIOFile" />
                </node>
              </node>
              <node concept="2OqwBi" id="7WyXo5rEH4C" role="37wK5m">
                <node concept="2OqwBi" id="7WyXo5rEH4D" role="2Oq$k0">
                  <node concept="37vLTw" id="7WyXo5rEH4E" role="2Oq$k0">
                    <ref role="3cqZAo" node="33vUo2uvKdT" resolve="fromRevision" />
                  </node>
                  <node concept="liA8E" id="7WyXo5rEH4F" role="2OqNvi">
                    <ref role="37wK5l" to="1038:~ContentRevision.getFile()" resolve="getFile" />
                  </node>
                </node>
                <node concept="liA8E" id="7WyXo5rEH4G" role="2OqNvi">
                  <ref role="37wK5l" to="jlcv:~FilePath.getIOFile()" resolve="getIOFile" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="33vUo2uvKdY" role="3cqZAp">
          <node concept="3K4zz7" id="7WyXo5rEJCC" role="3cqZAk">
            <node concept="Xl_RD" id="7WyXo5rEKa8" role="3K4E3e">
              <property role="Xl_RC" value="" />
            </node>
            <node concept="37vLTw" id="7WyXo5rEKFz" role="3K4GZi">
              <ref role="3cqZAo" node="7WyXo5rEH4x" resolve="relativePath" />
            </node>
            <node concept="2OqwBi" id="7WyXo5rEIpe" role="3K4Cdx">
              <node concept="37vLTw" id="7WyXo5rEH4H" role="2Oq$k0">
                <ref role="3cqZAo" node="7WyXo5rEH4x" resolve="relativePath" />
              </node>
              <node concept="17RlXB" id="7WyXo5rEIW6" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_UvPW" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="7WyXo5rEoRg" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5ooWrzQB6jG">
    <property role="TrG5h" value="GeneratedFileConflictResolving" />
    <node concept="3Tm1VV" id="5ooWrzQB6jH" role="1B3o_S" />
    <node concept="312cEg" id="6y_kxB1UVmN" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myMpsProject" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6y_kxB1UVbF" role="1B3o_S" />
      <node concept="3uibUv" id="6y_kxB1UVlU" role="1tU5fm">
        <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
      </node>
    </node>
    <node concept="2tJIrI" id="6y_kxB1UUOY" role="jymVt" />
    <node concept="3clFbW" id="5ooWrzQBcSS" role="jymVt">
      <node concept="3cqZAl" id="5ooWrzQBcST" role="3clF45" />
      <node concept="3clFbS" id="5ooWrzQBcSW" role="3clF47">
        <node concept="3SKdUt" id="57iyDtTsNIU" role="3cqZAp">
          <node concept="1PaTwC" id="57iyDtTsNIV" role="1aUNEU">
            <node concept="3oM_SD" id="57iyDtTsNQX" role="1PaTwD">
              <property role="3oM_SC" value="file" />
            </node>
            <node concept="3oM_SD" id="57iyDtTsVcE" role="1PaTwD">
              <property role="3oM_SC" value="listener" />
            </node>
            <node concept="3oM_SD" id="57iyDtTsVcH" role="1PaTwD">
              <property role="3oM_SC" value="has" />
            </node>
            <node concept="3oM_SD" id="57iyDtTsVcT" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="57iyDtTsVcY" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="57iyDtTsVdc" role="1PaTwD">
              <property role="3oM_SC" value="subscribed" />
            </node>
            <node concept="3oM_SD" id="57iyDtTsVdr" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="57iyDtTsVdF" role="1PaTwD">
              <property role="3oM_SC" value="VFS_CHANGES" />
            </node>
            <node concept="3oM_SD" id="57iyDtTsVek" role="1PaTwD">
              <property role="3oM_SC" value="topic" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6y_kxB1UVyr" role="3cqZAp">
          <node concept="37vLTI" id="6y_kxB1UV_$" role="3clFbG">
            <node concept="37vLTw" id="6y_kxB1UVBk" role="37vLTx">
              <ref role="3cqZAo" node="6y_kxB1UTey" resolve="mpsProject" />
            </node>
            <node concept="37vLTw" id="6y_kxB1UVyp" role="37vLTJ">
              <ref role="3cqZAo" node="6y_kxB1UVmN" resolve="myMpsProject" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6y_kxB1UTey" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3uibUv" id="6y_kxB1UULR" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1ysYxhdmSkv" role="jymVt" />
    <node concept="3clFb_" id="5ooWrzQB8DP" role="jymVt">
      <property role="TrG5h" value="resolveIfNeeded" />
      <node concept="3cqZAl" id="5ooWrzQB8DQ" role="3clF45" />
      <node concept="3clFbS" id="5ooWrzQB8DS" role="3clF47">
        <node concept="3cpWs8" id="4jj2N358GwV" role="3cqZAp">
          <node concept="3cpWsn" id="4jj2N358GwW" role="3cpWs9">
            <property role="TrG5h" value="file" />
            <node concept="3uibUv" id="4jj2N358GwX" role="1tU5fm">
              <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
            </node>
            <node concept="2OqwBi" id="4jj2N358GwY" role="33vP2m">
              <node concept="37vLTw" id="2BHiRxgmv4z" role="2Oq$k0">
                <ref role="3cqZAo" node="5ooWrzQB8DU" resolve="e" />
              </node>
              <node concept="liA8E" id="4jj2N358Gx0" role="2OqNvi">
                <ref role="37wK5l" to="p3o1:~VFileEvent.getFile()" resolve="getFile" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="57iyDtTgfOM" role="3cqZAp">
          <node concept="3clFbS" id="57iyDtTgfOO" role="3clFbx">
            <node concept="3cpWs6" id="57iyDtTgiJ4" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="57iyDtTghiy" role="3clFbw">
            <node concept="10Nm6u" id="57iyDtTgi2z" role="3uHU7w" />
            <node concept="37vLTw" id="57iyDtTggyb" role="3uHU7B">
              <ref role="3cqZAo" node="4jj2N358GwW" resolve="file" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6PUZm6l9q9k" role="3cqZAp">
          <node concept="3cpWsn" id="6PUZm6l9q9l" role="3cpWs9">
            <property role="TrG5h" value="fs" />
            <node concept="3uibUv" id="6PUZm6l9oLS" role="1tU5fm">
              <ref role="3uigEE" to="4hrd:~IdeaFileSystem" resolve="IdeaFileSystem" />
            </node>
            <node concept="2OqwBi" id="6PUZm6l9q9m" role="33vP2m">
              <node concept="37vLTw" id="6PUZm6l9q9n" role="2Oq$k0">
                <ref role="3cqZAo" node="6y_kxB1UVmN" resolve="myMpsProject" />
              </node>
              <node concept="liA8E" id="6PUZm6l9q9o" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~MPSProject.getFileSystem()" resolve="getFileSystem" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6PUZm6l8yw3" role="3cqZAp">
          <node concept="3fqX7Q" id="6PUZm6l8yw4" role="3clFbw">
            <node concept="2OqwBi" id="6PUZm6l8yIX" role="3fr31v">
              <node concept="37vLTw" id="6PUZm6l8yIW" role="2Oq$k0">
                <ref role="3cqZAo" node="6PUZm6l9q9l" resolve="fs" />
              </node>
              <node concept="liA8E" id="6PUZm6l8yIY" role="2OqNvi">
                <ref role="37wK5l" to="4hrd:~IdeaFileSystem.canConvert(com.intellij.openapi.vfs.VirtualFile)" resolve="canConvert" />
                <node concept="37vLTw" id="6PUZm6l8yIZ" role="37wK5m">
                  <ref role="3cqZAo" node="4jj2N358GwW" resolve="file" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="6PUZm6l8yw9" role="3clFbx">
            <node concept="3cpWs6" id="6PUZm6l8ywa" role="3cqZAp" />
          </node>
        </node>
        <node concept="3clFbH" id="6PUZm6l9qup" role="3cqZAp" />
        <node concept="3clFbJ" id="4jj2N358Gqz" role="3cqZAp">
          <node concept="3clFbS" id="4jj2N358Gq$" role="3clFbx">
            <node concept="3cpWs6" id="4jj2N358Gxa" role="3cqZAp" />
          </node>
          <node concept="3y3z36" id="4jj2N358Gx6" role="3clFbw">
            <node concept="10Nm6u" id="4jj2N358Gx9" role="3uHU7w" />
            <node concept="2OqwBi" id="2tkR5cH5dng" role="3uHU7B">
              <node concept="2YIFZM" id="2tkR5cH5dmF" role="2Oq$k0">
                <ref role="1Pybhc" to="w1kc:~SModelFileTracker" resolve="SModelFileTracker" />
                <ref role="37wK5l" to="w1kc:~SModelFileTracker.getInstance(org.jetbrains.mps.openapi.module.SRepository)" resolve="getInstance" />
                <node concept="2OqwBi" id="6y_kxB1UVR1" role="37wK5m">
                  <node concept="37vLTw" id="6y_kxB1UVOf" role="2Oq$k0">
                    <ref role="3cqZAo" node="6y_kxB1UVmN" resolve="myMpsProject" />
                  </node>
                  <node concept="liA8E" id="6y_kxB1UVTR" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="2tkR5cH5dnE" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~SModelFileTracker.modelFor(jetbrains.mps.vfs.IFile)" resolve="modelFor" />
                <node concept="2OqwBi" id="V2e5CGXk8y" role="37wK5m">
                  <node concept="37vLTw" id="6PUZm6l9q9p" role="2Oq$k0">
                    <ref role="3cqZAo" node="6PUZm6l9q9l" resolve="fs" />
                  </node>
                  <node concept="liA8E" id="V2e5CGXkQe" role="2OqNvi">
                    <ref role="37wK5l" to="4hrd:~IdeaFileSystem.fromVirtualFile(com.intellij.openapi.vfs.VirtualFile)" resolve="fromVirtualFile" />
                    <node concept="37vLTw" id="V2e5CGXlxb" role="37wK5m">
                      <ref role="3cqZAo" node="4jj2N358GwW" resolve="file" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2tkR5cH5dr$" role="3cqZAp" />
        <node concept="3cpWs8" id="5ooWrzQBcR5" role="3cqZAp">
          <node concept="3cpWsn" id="5ooWrzQBcR6" role="3cpWs9">
            <property role="TrG5h" value="mergeProvider" />
            <node concept="3uibUv" id="2LiDtbYeDMp" role="1tU5fm">
              <ref role="3uigEE" to="hlwo:~MergeProvider" resolve="MergeProvider" />
            </node>
            <node concept="2EnYce" id="5ooWrzQBcR8" role="33vP2m">
              <node concept="2OqwBi" id="5ooWrzQBcRi" role="2Oq$k0">
                <node concept="2YIFZM" id="1ysYxhdn6Tq" role="2Oq$k0">
                  <ref role="37wK5l" to="jlcv:~ProjectLevelVcsManager.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
                  <ref role="1Pybhc" to="jlcv:~ProjectLevelVcsManager" resolve="ProjectLevelVcsManager" />
                  <node concept="2OqwBi" id="1ysYxhdn6Tr" role="37wK5m">
                    <node concept="37vLTw" id="1ysYxhdn6Ts" role="2Oq$k0">
                      <ref role="3cqZAo" node="6y_kxB1UVmN" resolve="myMpsProject" />
                    </node>
                    <node concept="liA8E" id="1ysYxhdn6Tt" role="2OqNvi">
                      <ref role="37wK5l" to="z1c4:~MPSProject.getProject()" resolve="getProject" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="5ooWrzQBcRk" role="2OqNvi">
                  <ref role="37wK5l" to="jlcv:~ProjectLevelVcsManager.getVcsFor(com.intellij.openapi.vfs.VirtualFile)" resolve="getVcsFor" />
                  <node concept="37vLTw" id="3GM_nagTBtc" role="37wK5m">
                    <ref role="3cqZAo" node="4jj2N358GwW" resolve="file" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="5ooWrzQBcRa" role="2OqNvi">
                <ref role="37wK5l" to="jlcv:~AbstractVcs.getMergeProvider()" resolve="getMergeProvider" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5ooWrzQB9LM" role="3cqZAp">
          <node concept="3clFbS" id="5ooWrzQB9LN" role="3clFbx">
            <node concept="3cpWs8" id="5ooWrzQBcKr" role="3cqZAp">
              <node concept="3cpWsn" id="5ooWrzQBcKs" role="3cpWs9">
                <property role="TrG5h" value="status" />
                <node concept="3uibUv" id="2LiDtbYeDIR" role="1tU5fm">
                  <ref role="3uigEE" to="jlcu:~FileStatus" resolve="FileStatus" />
                </node>
                <node concept="2OqwBi" id="5ooWrzQBcKu" role="33vP2m">
                  <node concept="2YIFZM" id="1ysYxhdn7gI" role="2Oq$k0">
                    <ref role="37wK5l" to="jlcu:~FileStatusManager.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
                    <ref role="1Pybhc" to="jlcu:~FileStatusManager" resolve="FileStatusManager" />
                    <node concept="2OqwBi" id="1ysYxhdn7gJ" role="37wK5m">
                      <node concept="37vLTw" id="1ysYxhdn7gK" role="2Oq$k0">
                        <ref role="3cqZAo" node="6y_kxB1UVmN" resolve="myMpsProject" />
                      </node>
                      <node concept="liA8E" id="1ysYxhdn7gL" role="2OqNvi">
                        <ref role="37wK5l" to="z1c4:~MPSProject.getProject()" resolve="getProject" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="5ooWrzQBcKx" role="2OqNvi">
                    <ref role="37wK5l" to="jlcu:~FileStatusManager.getStatus(com.intellij.openapi.vfs.VirtualFile)" resolve="getStatus" />
                    <node concept="37vLTw" id="3GM_nagTy6c" role="37wK5m">
                      <ref role="3cqZAo" node="4jj2N358GwW" resolve="file" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5ooWrzQBcJQ" role="3cqZAp">
              <node concept="22lmx$" id="5ooWrzQBcKO" role="3clFbw">
                <node concept="22lmx$" id="5ooWrzQBcK0" role="3uHU7B">
                  <node concept="3clFbC" id="5ooWrzQBcJW" role="3uHU7B">
                    <node concept="37vLTw" id="3GM_nagTuvb" role="3uHU7B">
                      <ref role="3cqZAo" node="5ooWrzQBcKs" resolve="status" />
                    </node>
                    <node concept="10M0yZ" id="5ooWrzQBcJZ" role="3uHU7w">
                      <ref role="1PxDUh" to="jlcu:~FileStatus" resolve="FileStatus" />
                      <ref role="3cqZAo" to="jlcu:~FileStatus.MERGED_WITH_CONFLICTS" resolve="MERGED_WITH_CONFLICTS" />
                    </node>
                  </node>
                  <node concept="3clFbC" id="5ooWrzQBcKB" role="3uHU7w">
                    <node concept="37vLTw" id="3GM_nagTudo" role="3uHU7B">
                      <ref role="3cqZAo" node="5ooWrzQBcKs" resolve="status" />
                    </node>
                    <node concept="10M0yZ" id="5ooWrzQBcKE" role="3uHU7w">
                      <ref role="1PxDUh" to="jlcu:~FileStatus" resolve="FileStatus" />
                      <ref role="3cqZAo" to="jlcu:~FileStatus.MERGED_WITH_BOTH_CONFLICTS" resolve="MERGED_WITH_BOTH_CONFLICTS" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="5ooWrzQBcKR" role="3uHU7w">
                  <node concept="10M0yZ" id="5ooWrzQBcKS" role="3uHU7w">
                    <ref role="1PxDUh" to="jlcu:~FileStatus" resolve="FileStatus" />
                    <ref role="3cqZAo" to="jlcu:~FileStatus.MERGED_WITH_PROPERTY_CONFLICTS" resolve="MERGED_WITH_PROPERTY_CONFLICTS" />
                  </node>
                  <node concept="37vLTw" id="3GM_nagTtvQ" role="3uHU7B">
                    <ref role="3cqZAo" node="5ooWrzQBcKs" resolve="status" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="5ooWrzQBcJS" role="3clFbx">
                <node concept="3clFbF" id="5ooWrzQBcRx" role="3cqZAp">
                  <node concept="2OqwBi" id="5ooWrzQBcRz" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagTx2N" role="2Oq$k0">
                      <ref role="3cqZAo" node="5ooWrzQBcR6" resolve="mergeProvider" />
                    </node>
                    <node concept="liA8E" id="5ooWrzQBcRB" role="2OqNvi">
                      <ref role="37wK5l" to="hlwo:~MergeProvider.conflictResolvedForFile(com.intellij.openapi.vfs.VirtualFile)" resolve="conflictResolvedForFile" />
                      <node concept="37vLTw" id="3GM_nagT_Ku" role="37wK5m">
                        <ref role="3cqZAo" node="4jj2N358GwW" resolve="file" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5ooWrzQBcS_" role="3cqZAp">
                  <node concept="2OqwBi" id="5ooWrzQBcSD" role="3clFbG">
                    <node concept="2YIFZM" id="1ysYxhdn7C6" role="2Oq$k0">
                      <ref role="37wK5l" to="1038:~VcsDirtyScopeManager.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
                      <ref role="1Pybhc" to="1038:~VcsDirtyScopeManager" resolve="VcsDirtyScopeManager" />
                      <node concept="2OqwBi" id="1ysYxhdn7C7" role="37wK5m">
                        <node concept="37vLTw" id="1ysYxhdn7C8" role="2Oq$k0">
                          <ref role="3cqZAo" node="6y_kxB1UVmN" resolve="myMpsProject" />
                        </node>
                        <node concept="liA8E" id="1ysYxhdn7C9" role="2OqNvi">
                          <ref role="37wK5l" to="z1c4:~MPSProject.getProject()" resolve="getProject" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="5ooWrzQBcSH" role="2OqNvi">
                      <ref role="37wK5l" to="1038:~VcsDirtyScopeManager.fileDirty(com.intellij.openapi.vfs.VirtualFile)" resolve="fileDirty" />
                      <node concept="37vLTw" id="3GM_nagT$7J" role="37wK5m">
                        <ref role="3cqZAo" node="4jj2N358GwW" resolve="file" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="5ooWrzQB9LR" role="3clFbw">
            <node concept="10Nm6u" id="5ooWrzQB9LU" role="3uHU7w" />
            <node concept="37vLTw" id="3GM_nagTz4S" role="3uHU7B">
              <ref role="3cqZAo" node="5ooWrzQBcR6" resolve="mergeProvider" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5ooWrzQB8DU" role="3clF46">
        <property role="TrG5h" value="e" />
        <node concept="3uibUv" id="2LiDtbYeDIP" role="1tU5fm">
          <ref role="3uigEE" to="p3o1:~VFileEvent" resolve="VFileEvent" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="57iyDtTsLE9" role="jymVt" />
    <node concept="312cEu" id="5ooWrzQB8Df" role="jymVt">
      <property role="TrG5h" value="FileListener" />
      <node concept="312cEg" id="1ysYxhdn90W" role="jymVt">
        <property role="TrG5h" value="myResolve" />
        <node concept="3Tm6S6" id="1ysYxhdn8Gs" role="1B3o_S" />
        <node concept="3uibUv" id="1ysYxhdn8Wy" role="1tU5fm">
          <ref role="3uigEE" node="5ooWrzQB6jG" resolve="GeneratedFileConflictResolving" />
        </node>
      </node>
      <node concept="312cEg" id="6LFiQrcLnK_" role="jymVt">
        <property role="TrG5h" value="myProject" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="6LFiQrcLjYQ" role="1B3o_S" />
        <node concept="3uibUv" id="6LFiQrcLnH4" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="2tJIrI" id="1ysYxhdn96T" role="jymVt" />
      <node concept="3Tm1VV" id="1ysYxhdmKYO" role="1B3o_S" />
      <node concept="3clFbW" id="5ooWrzQB8Dh" role="jymVt">
        <node concept="3cqZAl" id="5ooWrzQB8Di" role="3clF45" />
        <node concept="3Tm1VV" id="5ooWrzQB8Dj" role="1B3o_S" />
        <node concept="3clFbS" id="5ooWrzQB8Dk" role="3clF47">
          <node concept="3SKdUt" id="57iyDtTsVmj" role="3cqZAp">
            <node concept="1PaTwC" id="57iyDtTsVmk" role="1aUNEU">
              <node concept="3oM_SD" id="57iyDtTsVqh" role="1PaTwD">
                <property role="3oM_SC" value="VFS" />
              </node>
              <node concept="3oM_SD" id="57iyDtTsVqj" role="1PaTwD">
                <property role="3oM_SC" value="changes" />
              </node>
              <node concept="3oM_SD" id="57iyDtTsVqm" role="1PaTwD">
                <property role="3oM_SC" value="are" />
              </node>
              <node concept="3oM_SD" id="57iyDtTsVqq" role="1PaTwD">
                <property role="3oM_SC" value="app-wide," />
              </node>
              <node concept="3oM_SD" id="57iyDtTsVqv" role="1PaTwD">
                <property role="3oM_SC" value="it's" />
              </node>
              <node concept="3oM_SD" id="57iyDtTsVq_" role="1PaTwD">
                <property role="3oM_SC" value="odd" />
              </node>
              <node concept="3oM_SD" id="57iyDtTsVqG" role="1PaTwD">
                <property role="3oM_SC" value="to" />
              </node>
              <node concept="3oM_SD" id="57iyDtTsVr7" role="1PaTwD">
                <property role="3oM_SC" value="instantiate" />
              </node>
              <node concept="3oM_SD" id="57iyDtTsVrg" role="1PaTwD">
                <property role="3oM_SC" value="a" />
              </node>
              <node concept="3oM_SD" id="57iyDtTsVrq" role="1PaTwD">
                <property role="3oM_SC" value="listener" />
              </node>
              <node concept="3oM_SD" id="57iyDtTsVr_" role="1PaTwD">
                <property role="3oM_SC" value="per" />
              </node>
              <node concept="3oM_SD" id="57iyDtTsVrL" role="1PaTwD">
                <property role="3oM_SC" value="project," />
              </node>
              <node concept="3oM_SD" id="57iyDtTsVrY" role="1PaTwD">
                <property role="3oM_SC" value="but" />
              </node>
              <node concept="3oM_SD" id="57iyDtTsVsc" role="1PaTwD">
                <property role="3oM_SC" value="it's" />
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="57iyDtTsVzm" role="3cqZAp">
            <node concept="1PaTwC" id="57iyDtTsVzn" role="1aUNEU">
              <node concept="3oM_SD" id="57iyDtTsVC1" role="1PaTwD">
                <property role="3oM_SC" value="easier" />
              </node>
              <node concept="3oM_SD" id="57iyDtTsVCb" role="1PaTwD">
                <property role="3oM_SC" value="to" />
              </node>
              <node concept="3oM_SD" id="57iyDtTsVCe" role="1PaTwD">
                <property role="3oM_SC" value="migrate" />
              </node>
              <node concept="3oM_SD" id="57iyDtTsVCi" role="1PaTwD">
                <property role="3oM_SC" value="from" />
              </node>
              <node concept="3oM_SD" id="57iyDtTsVCv" role="1PaTwD">
                <property role="3oM_SC" value="legacy" />
              </node>
              <node concept="3oM_SD" id="57iyDtTsVDt" role="1PaTwD">
                <property role="3oM_SC" value="Component" />
              </node>
              <node concept="3oM_SD" id="57iyDtTsVDG" role="1PaTwD">
                <property role="3oM_SC" value="approach" />
              </node>
              <node concept="3oM_SD" id="57iyDtTsVDW" role="1PaTwD">
                <property role="3oM_SC" value="this" />
              </node>
              <node concept="3oM_SD" id="57iyDtTsVE5" role="1PaTwD">
                <property role="3oM_SC" value="way." />
              </node>
              <node concept="3oM_SD" id="57iyDtTsVEn" role="1PaTwD">
                <property role="3oM_SC" value="Refactor" />
              </node>
              <node concept="3oM_SD" id="57iyDtTsVEM" role="1PaTwD">
                <property role="3oM_SC" value="if" />
              </node>
              <node concept="3oM_SD" id="57iyDtTsVEY" role="1PaTwD">
                <property role="3oM_SC" value="you" />
              </node>
              <node concept="3oM_SD" id="57iyDtTsVFb" role="1PaTwD">
                <property role="3oM_SC" value="dare." />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6LFiQrcLpzw" role="3cqZAp">
            <node concept="37vLTI" id="6LFiQrcLpSX" role="3clFbG">
              <node concept="37vLTw" id="6LFiQrcLq8m" role="37vLTx">
                <ref role="3cqZAo" node="1ysYxhdmMPj" resolve="ideaProject" />
              </node>
              <node concept="37vLTw" id="6LFiQrcLpzu" role="37vLTJ">
                <ref role="3cqZAo" node="6LFiQrcLnK_" resolve="myProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="1ysYxhdmMPj" role="3clF46">
          <property role="TrG5h" value="ideaProject" />
          <node concept="3uibUv" id="1ysYxhdmMPi" role="1tU5fm">
            <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="1ysYxhdmOwt" role="jymVt" />
      <node concept="3clFb_" id="57iyDtTeY$f" role="jymVt">
        <property role="TrG5h" value="before" />
        <node concept="3Tm1VV" id="57iyDtTeY$h" role="1B3o_S" />
        <node concept="3cqZAl" id="57iyDtTeY$j" role="3clF45" />
        <node concept="37vLTG" id="57iyDtTeY$k" role="3clF46">
          <property role="TrG5h" value="events" />
          <node concept="3uibUv" id="57iyDtTeY$l" role="1tU5fm">
            <ref role="3uigEE" to="33ny:~List" resolve="List" />
            <node concept="3qUE_q" id="57iyDtTeY$m" role="11_B2D">
              <node concept="3uibUv" id="57iyDtTeY$n" role="3qUE_r">
                <ref role="3uigEE" to="p3o1:~VFileEvent" resolve="VFileEvent" />
              </node>
            </node>
          </node>
          <node concept="2AHcQZ" id="57iyDtTeY$o" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="57iyDtTeY$p" role="3clF47">
          <node concept="1DcWWT" id="57iyDtTgr7Y" role="3cqZAp">
            <node concept="3clFbS" id="57iyDtTgr7Z" role="2LFqv$">
              <node concept="3clFbJ" id="57iyDtTgr80" role="3cqZAp">
                <node concept="2ZW3vV" id="57iyDtTgr81" role="3clFbw">
                  <node concept="3uibUv" id="57iyDtTgr82" role="2ZW6by">
                    <ref role="3uigEE" to="p3o1:~VFileDeleteEvent" resolve="VFileDeleteEvent" />
                  </node>
                  <node concept="37vLTw" id="57iyDtTgr83" role="2ZW6bz">
                    <ref role="3cqZAo" node="57iyDtTgr8a" resolve="e" />
                  </node>
                </node>
                <node concept="3clFbS" id="57iyDtTgr84" role="3clFbx">
                  <node concept="3clFbF" id="57iyDtTgr85" role="3cqZAp">
                    <node concept="2OqwBi" id="57iyDtTgr86" role="3clFbG">
                      <node concept="liA8E" id="57iyDtTgr88" role="2OqNvi">
                        <ref role="37wK5l" node="5ooWrzQB8DP" resolve="resolveIfNeeded" />
                        <node concept="37vLTw" id="57iyDtTgr89" role="37wK5m">
                          <ref role="3cqZAo" node="57iyDtTgr8a" resolve="e" />
                        </node>
                      </node>
                      <node concept="1rXfSq" id="6LFiQrcLK0i" role="2Oq$k0">
                        <ref role="37wK5l" node="6LFiQrcLgL0" resolve="getResolver" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="57iyDtTgr8a" role="1Duv9x">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="57iyDtTgr8b" role="1tU5fm">
                <ref role="3uigEE" to="p3o1:~VFileEvent" resolve="VFileEvent" />
              </node>
            </node>
            <node concept="1rXfSq" id="57iyDtTgr8c" role="1DdaDG">
              <ref role="37wK5l" node="57iyDtTfe_K" resolve="fromOurFileSystem" />
              <node concept="37vLTw" id="57iyDtTgr8d" role="37wK5m">
                <ref role="3cqZAo" node="57iyDtTeY$k" resolve="events" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="57iyDtTeY$q" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="57iyDtTeY$x" role="jymVt">
        <property role="TrG5h" value="after" />
        <node concept="3Tm1VV" id="57iyDtTeY$z" role="1B3o_S" />
        <node concept="3cqZAl" id="57iyDtTeY$_" role="3clF45" />
        <node concept="37vLTG" id="57iyDtTeY$A" role="3clF46">
          <property role="TrG5h" value="events" />
          <node concept="3uibUv" id="57iyDtTeY$B" role="1tU5fm">
            <ref role="3uigEE" to="33ny:~List" resolve="List" />
            <node concept="3qUE_q" id="57iyDtTeY$C" role="11_B2D">
              <node concept="3uibUv" id="57iyDtTeY$D" role="3qUE_r">
                <ref role="3uigEE" to="p3o1:~VFileEvent" resolve="VFileEvent" />
              </node>
            </node>
          </node>
          <node concept="2AHcQZ" id="57iyDtTeY$E" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="57iyDtTeY$F" role="3clF47">
          <node concept="1DcWWT" id="57iyDtTfaFH" role="3cqZAp">
            <node concept="3clFbS" id="57iyDtTfaFK" role="2LFqv$">
              <node concept="3clFbJ" id="57iyDtTfcWE" role="3cqZAp">
                <node concept="2ZW3vV" id="57iyDtTfdKH" role="3clFbw">
                  <node concept="3uibUv" id="57iyDtTg3pF" role="2ZW6by">
                    <ref role="3uigEE" to="p3o1:~VFileContentChangeEvent" resolve="VFileContentChangeEvent" />
                  </node>
                  <node concept="37vLTw" id="57iyDtTfd5_" role="2ZW6bz">
                    <ref role="3cqZAo" node="57iyDtTfaFL" resolve="e" />
                  </node>
                </node>
                <node concept="3clFbS" id="57iyDtTfcWG" role="3clFbx">
                  <node concept="3clFbF" id="1ysYxhdnLp5" role="3cqZAp">
                    <node concept="2OqwBi" id="1ysYxhdnLy7" role="3clFbG">
                      <node concept="liA8E" id="1ysYxhdnLG1" role="2OqNvi">
                        <ref role="37wK5l" node="5ooWrzQB8DP" resolve="resolveIfNeeded" />
                        <node concept="37vLTw" id="1ysYxhdnLTu" role="37wK5m">
                          <ref role="3cqZAo" node="57iyDtTfaFL" resolve="e" />
                        </node>
                      </node>
                      <node concept="1rXfSq" id="6LFiQrcLI_y" role="2Oq$k0">
                        <ref role="37wK5l" node="6LFiQrcLgL0" resolve="getResolver" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="57iyDtTfaFL" role="1Duv9x">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="57iyDtTfbQT" role="1tU5fm">
                <ref role="3uigEE" to="p3o1:~VFileEvent" resolve="VFileEvent" />
              </node>
            </node>
            <node concept="1rXfSq" id="57iyDtTg2by" role="1DdaDG">
              <ref role="37wK5l" node="57iyDtTfe_K" resolve="fromOurFileSystem" />
              <node concept="37vLTw" id="57iyDtTg2Qw" role="37wK5m">
                <ref role="3cqZAo" node="57iyDtTeY$A" resolve="events" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="57iyDtTeY$G" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="6LFiQrcLa5v" role="jymVt" />
      <node concept="3clFb_" id="6LFiQrcLgL0" role="jymVt">
        <property role="TrG5h" value="getResolver" />
        <node concept="3clFbS" id="6LFiQrcLgL3" role="3clF47">
          <node concept="3SKdUt" id="6LFiQrcLLt4" role="3cqZAp">
            <node concept="1PaTwC" id="6LFiQrcLLt5" role="1aUNEU">
              <node concept="3oM_SD" id="6LFiQrcLMIG" role="1PaTwD">
                <property role="3oM_SC" value="postpone" />
              </node>
              <node concept="3oM_SD" id="6LFiQrcLMII" role="1PaTwD">
                <property role="3oM_SC" value="MPSProject" />
              </node>
              <node concept="3oM_SD" id="6LFiQrcLMIL" role="1PaTwD">
                <property role="3oM_SC" value="initialization" />
              </node>
              <node concept="3oM_SD" id="6LFiQrcLMJ0" role="1PaTwD">
                <property role="3oM_SC" value="until" />
              </node>
              <node concept="3oM_SD" id="6LFiQrcLMJ5" role="1PaTwD">
                <property role="3oM_SC" value="event" />
              </node>
              <node concept="3oM_SD" id="6LFiQrcLMJb" role="1PaTwD">
                <property role="3oM_SC" value="is" />
              </node>
              <node concept="3oM_SD" id="6LFiQrcLMJi" role="1PaTwD">
                <property role="3oM_SC" value="fromOurFileSystem," />
              </node>
              <node concept="3oM_SD" id="6LFiQrcLMJq" role="1PaTwD">
                <property role="3oM_SC" value="see" />
              </node>
              <node concept="3oM_SD" id="6LFiQrcLMJz" role="1PaTwD">
                <property role="3oM_SC" value="MPS-35533" />
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="6LFiQrcLSbB" role="3cqZAp">
            <node concept="1PaTwC" id="6LFiQrcLSbC" role="1aUNEU">
              <node concept="3oM_SD" id="6LFiQrcLTtq" role="1PaTwD">
                <property role="3oM_SC" value="no" />
              </node>
              <node concept="3oM_SD" id="6LFiQrcLTts" role="1PaTwD">
                <property role="3oM_SC" value="idea" />
              </node>
              <node concept="3oM_SD" id="6LFiQrcLTtv" role="1PaTwD">
                <property role="3oM_SC" value="what" />
              </node>
              <node concept="3oM_SD" id="6LFiQrcLTtz" role="1PaTwD">
                <property role="3oM_SC" value="a" />
              </node>
              <node concept="3oM_SD" id="6LFiQrcLTtC" role="1PaTwD">
                <property role="3oM_SC" value="proper" />
              </node>
              <node concept="3oM_SD" id="6LFiQrcLTtI" role="1PaTwD">
                <property role="3oM_SC" value="fix" />
              </node>
              <node concept="3oM_SD" id="6LFiQrcLTu6" role="1PaTwD">
                <property role="3oM_SC" value="would" />
              </node>
              <node concept="3oM_SD" id="6LFiQrcLTue" role="1PaTwD">
                <property role="3oM_SC" value="be," />
              </node>
              <node concept="3oM_SD" id="6LFiQrcLTun" role="1PaTwD">
                <property role="3oM_SC" value="as" />
              </node>
              <node concept="3oM_SD" id="6LFiQrcLTuS" role="1PaTwD">
                <property role="3oM_SC" value="MPS" />
              </node>
              <node concept="3oM_SD" id="6LFiQrcLTv3" role="1PaTwD">
                <property role="3oM_SC" value="needs" />
              </node>
              <node concept="3oM_SD" id="6LFiQrcLTvf" role="1PaTwD">
                <property role="3oM_SC" value="MPSProject" />
              </node>
              <node concept="3oM_SD" id="6LFiQrcLTvs" role="1PaTwD">
                <property role="3oM_SC" value="to" />
              </node>
              <node concept="3oM_SD" id="6LFiQrcLTvE" role="1PaTwD">
                <property role="3oM_SC" value="deal" />
              </node>
              <node concept="3oM_SD" id="6LFiQrcLTvT" role="1PaTwD">
                <property role="3oM_SC" value="with" />
              </node>
              <node concept="3oM_SD" id="6LFiQrcLTw9" role="1PaTwD">
                <property role="3oM_SC" value="IFile," />
              </node>
              <node concept="3oM_SD" id="6LFiQrcLTwq" role="1PaTwD">
                <property role="3oM_SC" value="while" />
              </node>
              <node concept="3oM_SD" id="6LFiQrcLTwG" role="1PaTwD">
                <property role="3oM_SC" value="IDEA" />
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="6LFiQrcLUVX" role="3cqZAp">
            <node concept="1PaTwC" id="6LFiQrcLUVY" role="1aUNEU">
              <node concept="3oM_SD" id="6LFiQrcLWfy" role="1PaTwD">
                <property role="3oM_SC" value="tracks" />
              </node>
              <node concept="3oM_SD" id="6LFiQrcLWfB" role="1PaTwD">
                <property role="3oM_SC" value="VFS" />
              </node>
              <node concept="3oM_SD" id="6LFiQrcLWfT" role="1PaTwD">
                <property role="3oM_SC" value="changes" />
              </node>
              <node concept="3oM_SD" id="6LFiQrcLWfE" role="1PaTwD">
                <property role="3oM_SC" value="w/o" />
              </node>
              <node concept="3oM_SD" id="6LFiQrcLWfI" role="1PaTwD">
                <property role="3oM_SC" value="a" />
              </node>
              <node concept="3oM_SD" id="6LFiQrcLWfN" role="1PaTwD">
                <property role="3oM_SC" value="project." />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="6LFiQrcLqks" role="3cqZAp">
            <node concept="3clFbC" id="6LFiQrcLtbH" role="3clFbw">
              <node concept="10Nm6u" id="6LFiQrcLuwR" role="3uHU7w" />
              <node concept="37vLTw" id="6LFiQrcLrJX" role="3uHU7B">
                <ref role="3cqZAo" node="1ysYxhdn90W" resolve="myResolve" />
              </node>
            </node>
            <node concept="3clFbS" id="6LFiQrcLqku" role="3clFbx">
              <node concept="3clFbF" id="1ysYxhdn9l4" role="3cqZAp">
                <node concept="37vLTI" id="1ysYxhdn9tB" role="3clFbG">
                  <node concept="2ShNRf" id="1ysYxhdn9_G" role="37vLTx">
                    <node concept="1pGfFk" id="1ysYxhdnKpl" role="2ShVmc">
                      <property role="373rjd" value="true" />
                      <ref role="37wK5l" node="5ooWrzQBcSS" resolve="GeneratedFileConflictResolving" />
                      <node concept="2YIFZM" id="1ysYxhdnL2s" role="37wK5m">
                        <ref role="37wK5l" to="alof:~ProjectHelper.fromIdeaProjectOrFail(com.intellij.openapi.project.Project)" resolve="fromIdeaProjectOrFail" />
                        <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                        <node concept="37vLTw" id="1ysYxhdnLdl" role="37wK5m">
                          <ref role="3cqZAo" node="6LFiQrcLnK_" resolve="myProject" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="1ysYxhdn9l3" role="37vLTJ">
                    <ref role="3cqZAo" node="1ysYxhdn90W" resolve="myResolve" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="6LFiQrcLyqK" role="3cqZAp">
            <node concept="37vLTw" id="6LFiQrcL_2Z" role="3cqZAk">
              <ref role="3cqZAo" node="1ysYxhdn90W" resolve="myResolve" />
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="6LFiQrcLeZd" role="1B3o_S" />
        <node concept="3uibUv" id="6LFiQrcLgyU" role="3clF45">
          <ref role="3uigEE" node="5ooWrzQB6jG" resolve="GeneratedFileConflictResolving" />
        </node>
      </node>
      <node concept="2tJIrI" id="57iyDtTfdZ1" role="jymVt" />
      <node concept="2YIFZL" id="57iyDtTfe_K" role="jymVt">
        <property role="TrG5h" value="fromOurFileSystem" />
        <node concept="37vLTG" id="57iyDtTffuk" role="3clF46">
          <property role="TrG5h" value="events" />
          <node concept="3uibUv" id="57iyDtTfful" role="1tU5fm">
            <ref role="3uigEE" to="33ny:~List" resolve="List" />
            <node concept="3qUE_q" id="57iyDtTffum" role="11_B2D">
              <node concept="3uibUv" id="57iyDtTffun" role="3qUE_r">
                <ref role="3uigEE" to="p3o1:~VFileEvent" resolve="VFileEvent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="57iyDtTfe_N" role="3clF47">
          <node concept="3SKdUt" id="57iyDtTsXi_" role="3cqZAp">
            <node concept="1PaTwC" id="57iyDtTsXiA" role="1aUNEU">
              <node concept="3oM_SD" id="57iyDtTsYNv" role="1PaTwD">
                <property role="3oM_SC" value="XXX" />
              </node>
              <node concept="3oM_SD" id="57iyDtTsYNx" role="1PaTwD">
                <property role="3oM_SC" value="this" />
              </node>
              <node concept="3oM_SD" id="57iyDtTsYN$" role="1PaTwD">
                <property role="3oM_SC" value="check" />
              </node>
              <node concept="3oM_SD" id="57iyDtTsYNC" role="1PaTwD">
                <property role="3oM_SC" value="looks" />
              </node>
              <node concept="3oM_SD" id="57iyDtTsYNU" role="1PaTwD">
                <property role="3oM_SC" value="suspicious" />
              </node>
              <node concept="3oM_SD" id="57iyDtTsYO0" role="1PaTwD">
                <property role="3oM_SC" value="to" />
              </node>
              <node concept="3oM_SD" id="57iyDtTsYO7" role="1PaTwD">
                <property role="3oM_SC" value="me," />
              </node>
              <node concept="3oM_SD" id="57iyDtTsYQ8" role="1PaTwD">
                <property role="3oM_SC" value="does" />
              </node>
              <node concept="3oM_SD" id="57iyDtTsYQh" role="1PaTwD">
                <property role="3oM_SC" value="IdeaFileSystem" />
              </node>
              <node concept="3oM_SD" id="57iyDtTsYQr" role="1PaTwD">
                <property role="3oM_SC" value="is" />
              </node>
              <node concept="3oM_SD" id="57iyDtTsYQA" role="1PaTwD">
                <property role="3oM_SC" value="truly" />
              </node>
              <node concept="3oM_SD" id="57iyDtTsYQM" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="57iyDtTsYRX" role="1PaTwD">
                <property role="3oM_SC" value="source" />
              </node>
              <node concept="3oM_SD" id="57iyDtTsYRd" role="1PaTwD">
                <property role="3oM_SC" value="for" />
              </node>
              <node concept="3oM_SD" id="57iyDtTsYRs" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="57iyDtTsYSd" role="1PaTwD">
                <property role="3oM_SC" value="events" />
              </node>
              <node concept="3oM_SD" id="57iyDtTsYSu" role="1PaTwD">
                <property role="3oM_SC" value="we" />
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="57iyDtTt0ei" role="3cqZAp">
            <node concept="1PaTwC" id="57iyDtTt0ej" role="1aUNEU">
              <node concept="3oM_SD" id="57iyDtTt0fd" role="1PaTwD">
                <property role="3oM_SC" value=" " />
              </node>
              <node concept="3oM_SD" id="57iyDtTt1vM" role="1PaTwD">
                <property role="3oM_SC" value="" />
              </node>
              <node concept="3oM_SD" id="57iyDtTt1Jk" role="1PaTwD">
                <property role="3oM_SC" value="care" />
              </node>
              <node concept="3oM_SD" id="57iyDtTt1Jw" role="1PaTwD">
                <property role="3oM_SC" value="to" />
              </node>
              <node concept="3oM_SD" id="57iyDtTt1J_" role="1PaTwD">
                <property role="3oM_SC" value="process" />
              </node>
              <node concept="3oM_SD" id="57iyDtTt1Kb" role="1PaTwD">
                <property role="3oM_SC" value="here?" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="57iyDtTfz9K" role="3cqZAp">
            <node concept="3cpWsn" id="57iyDtTfz9L" role="3cpWs9">
              <property role="TrG5h" value="p" />
              <node concept="3uibUv" id="57iyDtTfz9I" role="1tU5fm">
                <ref role="3uigEE" to="82uw:~Predicate" resolve="Predicate" />
                <node concept="3uibUv" id="7HcLEKXwOX_" role="11_B2D">
                  <ref role="3uigEE" to="p3o1:~VFileEvent" resolve="VFileEvent" />
                </node>
              </node>
              <node concept="2ShNRf" id="57iyDtTfzWA" role="33vP2m">
                <node concept="YeOm9" id="57iyDtTfZ7c" role="2ShVmc">
                  <node concept="1Y3b0j" id="57iyDtTfZ7f" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <property role="373rjd" value="true" />
                    <ref role="1Y3XeK" to="82uw:~Predicate" resolve="Predicate" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3Tm1VV" id="57iyDtTfZ7g" role="1B3o_S" />
                    <node concept="3clFb_" id="57iyDtTfZ7u" role="jymVt">
                      <property role="TrG5h" value="test" />
                      <node concept="3Tm1VV" id="57iyDtTfZ7v" role="1B3o_S" />
                      <node concept="10P_77" id="57iyDtTfZ7x" role="3clF45" />
                      <node concept="37vLTG" id="57iyDtTfZ7y" role="3clF46">
                        <property role="TrG5h" value="e" />
                        <node concept="3uibUv" id="57iyDtTfZ7G" role="1tU5fm">
                          <ref role="3uigEE" to="p3o1:~VFileEvent" resolve="VFileEvent" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="57iyDtTfZ7$" role="3clF47">
                        <node concept="3clFbF" id="57iyDtTfZyP" role="3cqZAp">
                          <node concept="2ZW3vV" id="6usFZJUE8ak" role="3clFbG">
                            <node concept="2OqwBi" id="32ypd$$pQs" role="2ZW6bz">
                              <node concept="37vLTw" id="32ypd$$oOt" role="2Oq$k0">
                                <ref role="3cqZAo" node="57iyDtTfZ7y" resolve="e" />
                              </node>
                              <node concept="liA8E" id="6usFZJUE6O9" role="2OqNvi">
                                <ref role="37wK5l" to="p3o1:~VFileEvent.getRequestor()" resolve="getRequestor" />
                              </node>
                            </node>
                            <node concept="3uibUv" id="6usFZJUEbsx" role="2ZW6by">
                              <ref role="3uigEE" to="4hrd:~MPSSavingRequestor" resolve="MPSSavingRequestor" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="57iyDtTfZ7A" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="57iyDtTfZ7F" role="2Ghqu4">
                      <ref role="3uigEE" to="p3o1:~VFileEvent" resolve="VFileEvent" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="57iyDtTffFZ" role="3cqZAp">
            <node concept="2OqwBi" id="57iyDtTgjsD" role="3clFbG">
              <node concept="2OqwBi" id="57iyDtTfhBk" role="2Oq$k0">
                <node concept="2OqwBi" id="57iyDtTffZg" role="2Oq$k0">
                  <node concept="37vLTw" id="57iyDtTffFY" role="2Oq$k0">
                    <ref role="3cqZAo" node="57iyDtTffuk" resolve="events" />
                  </node>
                  <node concept="liA8E" id="57iyDtTfhkd" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                  </node>
                </node>
                <node concept="liA8E" id="57iyDtTfj8c" role="2OqNvi">
                  <ref role="37wK5l" to="1ctc:~Stream.filter(java.util.function.Predicate)" resolve="filter" />
                  <node concept="37vLTw" id="57iyDtTg103" role="37wK5m">
                    <ref role="3cqZAo" node="57iyDtTfz9L" resolve="p" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="57iyDtTgmTV" role="2OqNvi">
                <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                <node concept="2YIFZM" id="57iyDtTgoyw" role="37wK5m">
                  <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                  <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                  <node concept="3uibUv" id="57iyDtTsFhi" role="3PaCim">
                    <ref role="3uigEE" to="p3o1:~VFileEvent" resolve="VFileEvent" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="57iyDtTfek7" role="1B3o_S" />
        <node concept="3uibUv" id="57iyDtTfeP4" role="3clF45">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="57iyDtTsIJK" role="11_B2D">
            <ref role="3uigEE" to="p3o1:~VFileEvent" resolve="VFileEvent" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="57iyDtTeYqo" role="EKbjA">
        <ref role="3uigEE" to="uvcm:~BulkFileListener" resolve="BulkFileListener" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="4Z7jVP8LjLL">
    <property role="TrG5h" value="ProjectDirMPSCheckoutListener" />
    <node concept="3Tm1VV" id="4Z7jVP8LjLM" role="1B3o_S" />
    <node concept="3uibUv" id="4Z7jVP8LjQl" role="EKbjA">
      <ref role="3uigEE" to="2lau:~CheckoutListener" resolve="CheckoutListener" />
    </node>
    <node concept="3clFb_" id="4Z7jVP8LjQL" role="jymVt">
      <property role="TrG5h" value="processCheckedOutDirectory" />
      <node concept="3Tm1VV" id="4Z7jVP8LjQM" role="1B3o_S" />
      <node concept="10P_77" id="4Z7jVP8LjQO" role="3clF45" />
      <node concept="37vLTG" id="4Z7jVP8LjQP" role="3clF46">
        <property role="TrG5h" value="project" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="4Z7jVP8LjQQ" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
        <node concept="2AHcQZ" id="4Z7jVP8LjQR" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="4Z7jVP8LjQS" role="3clF46">
        <property role="TrG5h" value="directory" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="4Z7jVP8LjQT" role="1tU5fm">
          <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
        </node>
        <node concept="2AHcQZ" id="4Z7jVP8LjQU" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="4Z7jVP8LjQV" role="3clF47">
        <node concept="3cpWs8" id="4Z7jVP8Lkyc" role="3cqZAp">
          <node concept="3cpWsn" id="4Z7jVP8Lkyb" role="3cpWs9">
            <property role="TrG5h" value="dotIdea" />
            <node concept="3uibUv" id="4Z7jVP8Lkyd" role="1tU5fm">
              <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
            </node>
            <node concept="2OqwBi" id="4Z7jVP8Lm12" role="33vP2m">
              <node concept="37vLTw" id="4Z7jVP8LlQI" role="2Oq$k0">
                <ref role="3cqZAo" node="4Z7jVP8LjQS" resolve="directory" />
              </node>
              <node concept="liA8E" id="4Z7jVP8Lm13" role="2OqNvi">
                <ref role="37wK5l" to="eoo2:~Path.resolve(java.lang.String)" resolve="resolve" />
                <node concept="10M0yZ" id="4Z7jVP8Lo_v" role="37wK5m">
                  <ref role="3cqZAo" to="4nm9:~Project.DIRECTORY_STORE_FOLDER" resolve="DIRECTORY_STORE_FOLDER" />
                  <ref role="1PxDUh" to="4nm9:~Project" resolve="Project" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4Z7jVP8Lkyg" role="3cqZAp">
          <node concept="3fqX7Q" id="4Z7jVP8Lkyh" role="3clFbw">
            <node concept="2YIFZM" id="4Z7jVP8LkDY" role="3fr31v">
              <ref role="1Pybhc" to="eoo2:~Files" resolve="Files" />
              <ref role="37wK5l" to="eoo2:~Files.exists(java.nio.file.Path,java.nio.file.LinkOption...)" resolve="exists" />
              <node concept="37vLTw" id="4Z7jVP8LkDZ" role="37wK5m">
                <ref role="3cqZAo" node="4Z7jVP8Lkyb" resolve="dotIdea" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="4Z7jVP8Lkyl" role="3clFbx">
            <node concept="3cpWs6" id="4Z7jVP8Lkym" role="3cqZAp">
              <node concept="3clFbT" id="4Z7jVP8Lkyn" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4Z7jVP8Lkyx" role="3cqZAp">
          <node concept="2YIFZM" id="4Z7jVP8LkEZ" role="3clFbw">
            <ref role="1Pybhc" to="2ny0:~OpenMPSProjectTrustProjectHelper" resolve="OpenMPSProjectTrustProjectHelper" />
            <ref role="37wK5l" to="2ny0:~OpenMPSProjectTrustProjectHelper.checkTrust(java.nio.file.Path)" resolve="checkTrust" />
            <node concept="37vLTw" id="4Z7jVP8LkF0" role="37wK5m">
              <ref role="3cqZAo" node="4Z7jVP8LjQS" resolve="directory" />
            </node>
          </node>
          <node concept="3clFbS" id="4Z7jVP8LkyA" role="3clFbx">
            <node concept="3clFbF" id="4Z7jVP8LkyB" role="3cqZAp">
              <node concept="2OqwBi" id="4Z7jVP8LmGu" role="3clFbG">
                <node concept="2YIFZM" id="4Z7jVP8Lm$C" role="2Oq$k0">
                  <ref role="1Pybhc" to="nos0:~ProjectManagerEx" resolve="ProjectManagerEx" />
                  <ref role="37wK5l" to="nos0:~ProjectManagerEx.getInstanceEx()" resolve="getInstanceEx" />
                </node>
                <node concept="liA8E" id="4Z7jVP8LmGv" role="2OqNvi">
                  <ref role="37wK5l" to="nos0:~ProjectManagerEx.openProject(java.nio.file.Path,com.intellij.ide.impl.OpenProjectTask)" resolve="openProject" />
                  <node concept="37vLTw" id="4Z7jVP8LmGw" role="37wK5m">
                    <ref role="3cqZAo" node="4Z7jVP8LjQS" resolve="directory" />
                  </node>
                  <node concept="2OqwBi" id="4Z7jVP8LmGx" role="37wK5m">
                    <node concept="2YIFZM" id="4Z7jVP8LmGy" role="2Oq$k0">
                      <ref role="1Pybhc" to="btn2:~OpenProjectTask" resolve="OpenProjectTask" />
                      <ref role="37wK5l" to="btn2:~OpenProjectTask.build()" resolve="build" />
                    </node>
                    <node concept="liA8E" id="4Z7jVP8LmGz" role="2OqNvi">
                      <ref role="37wK5l" to="btn2:~OpenProjectTask.withProjectToClose(com.intellij.openapi.project.Project)" resolve="withProjectToClose" />
                      <node concept="37vLTw" id="4Z7jVP8LmG$" role="37wK5m">
                        <ref role="3cqZAo" node="4Z7jVP8LjQP" resolve="project" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4Z7jVP8LkyZ" role="3cqZAp">
          <node concept="3clFbT" id="4Z7jVP8Lkz0" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
        <node concept="3clFbH" id="4Z7jVP8Lkos" role="3cqZAp" />
      </node>
      <node concept="2AHcQZ" id="4Z7jVP8LjQW" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2Qfj$4YV7PJ">
    <property role="TrG5h" value="NonMPSProjectCheckoutListener" />
    <node concept="3Tm1VV" id="2Qfj$4YV7PK" role="1B3o_S" />
    <node concept="3uibUv" id="2Qfj$4YV7PL" role="EKbjA">
      <ref role="3uigEE" to="2lau:~CheckoutListener" resolve="CheckoutListener" />
    </node>
    <node concept="3clFb_" id="2Qfj$4YV7PM" role="jymVt">
      <property role="TrG5h" value="processCheckedOutDirectory" />
      <node concept="3Tm1VV" id="2Qfj$4YV7PN" role="1B3o_S" />
      <node concept="10P_77" id="2Qfj$4YV7PO" role="3clF45" />
      <node concept="37vLTG" id="2Qfj$4YV7PP" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="2Qfj$4YV7PQ" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
        <node concept="2AHcQZ" id="2Qfj$4YV7PR" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="2Qfj$4YV7PS" role="3clF46">
        <property role="TrG5h" value="directory" />
        <node concept="3uibUv" id="2Qfj$4YV7PT" role="1tU5fm">
          <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
        </node>
        <node concept="2AHcQZ" id="2Qfj$4YV7PU" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="2Qfj$4YV7PV" role="3clF47">
        <node concept="3SKdUt" id="2Qfj$4YV7QV" role="3cqZAp">
          <node concept="1PaTwC" id="2Qfj$4YV7QW" role="1aUNEU">
            <node concept="3oM_SD" id="2Qfj$4YV7QX" role="1PaTwD">
              <property role="3oM_SC" value="This" />
            </node>
            <node concept="3oM_SD" id="2Qfj$4YV7QY" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="2Qfj$4YV7QZ" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="2Qfj$4YV7R0" role="1PaTwD">
              <property role="3oM_SC" value="an" />
            </node>
            <node concept="3oM_SD" id="2Qfj$4YV7R1" role="1PaTwD">
              <property role="3oM_SC" value="MPS" />
            </node>
            <node concept="3oM_SD" id="2Qfj$4YV7R2" role="1PaTwD">
              <property role="3oM_SC" value="project," />
            </node>
            <node concept="3oM_SD" id="2Qfj$4YV7R3" role="1PaTwD">
              <property role="3oM_SC" value="skip" />
            </node>
            <node concept="3oM_SD" id="2Qfj$4YV7R4" role="1PaTwD">
              <property role="3oM_SC" value="all" />
            </node>
            <node concept="3oM_SD" id="2Qfj$4YV7R5" role="1PaTwD">
              <property role="3oM_SC" value="subsequently" />
            </node>
            <node concept="3oM_SD" id="2Qfj$4YV7R6" role="1PaTwD">
              <property role="3oM_SC" value="registered" />
            </node>
            <node concept="3oM_SD" id="2Qfj$4YV7R7" role="1PaTwD">
              <property role="3oM_SC" value="checkout" />
            </node>
            <node concept="3oM_SD" id="2Qfj$4YV7R8" role="1PaTwD">
              <property role="3oM_SC" value="listeners" />
            </node>
            <node concept="3oM_SD" id="2Qfj$4YV7R9" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="2Qfj$4YV7Ra" role="1PaTwD">
              <property role="3oM_SC" value="mimic" />
            </node>
            <node concept="3oM_SD" id="2Qfj$4YV7Rb" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="2Qfj$4YV7Rc" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="2Qfj$4YV7Rd" role="1PaTwD">
              <property role="3oM_SC" value="PlatformProjectCheckoutListener" />
            </node>
            <node concept="3oM_SD" id="2Qfj$4YV7Re" role="1PaTwD">
              <property role="3oM_SC" value="here." />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2Qfj$4YV7Rf" role="3cqZAp">
          <node concept="2YIFZM" id="2Qfj$4YV7Rg" role="3clFbw">
            <ref role="1Pybhc" to="2ny0:~OpenMPSProjectTrustProjectHelper" resolve="OpenMPSProjectTrustProjectHelper" />
            <ref role="37wK5l" to="2ny0:~OpenMPSProjectTrustProjectHelper.checkTrust(java.nio.file.Path)" resolve="checkTrust" />
            <node concept="37vLTw" id="2Qfj$4YV7Rh" role="37wK5m">
              <ref role="3cqZAo" node="2Qfj$4YV7PS" resolve="directory" />
            </node>
          </node>
          <node concept="3clFbS" id="2Qfj$4YV7Ri" role="3clFbx">
            <node concept="3clFbF" id="2Qfj$4YV7Rj" role="3cqZAp">
              <node concept="2YIFZM" id="2Qfj$4YV7Rk" role="3clFbG">
                <ref role="37wK5l" to="btn2:~ProjectUtil.openOrImport(java.nio.file.Path,com.intellij.ide.impl.OpenProjectTask)" resolve="openOrImport" />
                <ref role="1Pybhc" to="btn2:~ProjectUtil" resolve="ProjectUtil" />
                <node concept="37vLTw" id="2Qfj$4YV7Rl" role="37wK5m">
                  <ref role="3cqZAo" node="2Qfj$4YV7PS" resolve="directory" />
                </node>
                <node concept="2OqwBi" id="2Qfj$4YV7Rm" role="37wK5m">
                  <node concept="2YIFZM" id="2Qfj$4YV7Rn" role="2Oq$k0">
                    <ref role="1Pybhc" to="btn2:~OpenProjectTask" resolve="OpenProjectTask" />
                    <ref role="37wK5l" to="btn2:~OpenProjectTask.build()" resolve="build" />
                  </node>
                  <node concept="liA8E" id="2Qfj$4YV7Ro" role="2OqNvi">
                    <ref role="37wK5l" to="btn2:~OpenProjectTask.withProjectToClose(com.intellij.openapi.project.Project)" resolve="withProjectToClose" />
                    <node concept="37vLTw" id="2Qfj$4YV7Rp" role="37wK5m">
                      <ref role="3cqZAo" node="2Qfj$4YV7PP" resolve="project" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2Qfj$4YV7Rq" role="3cqZAp" />
        <node concept="3cpWs6" id="2Qfj$4YV7Rr" role="3cqZAp">
          <node concept="3clFbT" id="2Qfj$4YV7Rs" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2Qfj$4YV7Rt" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7pVeK7_3X3A">
    <property role="TrG5h" value="ExtensionChangesGroupingPolicy" />
    <node concept="3clFbW" id="7pVeK7_429H" role="jymVt">
      <node concept="3cqZAl" id="7pVeK7_429J" role="3clF45" />
      <node concept="3Tm1VV" id="7pVeK7_429K" role="1B3o_S" />
      <node concept="3clFbS" id="7pVeK7_429L" role="3clF47">
        <node concept="XkiVB" id="4pDKQegjbTF" role="3cqZAp">
          <ref role="37wK5l" to="cyi7:~SimpleChangesGroupingPolicy.&lt;init&gt;(javax.swing.tree.DefaultTreeModel)" resolve="SimpleChangesGroupingPolicy" />
          <node concept="37vLTw" id="4pDKQegjc7i" role="37wK5m">
            <ref role="3cqZAo" node="7pVeK7_42RK" resolve="model" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7pVeK7_42RK" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="7pVeK7_42VD" role="1tU5fm">
          <ref role="3uigEE" to="rgfa:~DefaultTreeModel" resolve="DefaultTreeModel" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="7pVeK7_3X3B" role="1B3o_S" />
    <node concept="3clFb_" id="4pDKQegjczT" role="jymVt">
      <property role="TrG5h" value="getGroupRootValueFor" />
      <node concept="3Tmbuc" id="4pDKQegjczU" role="1B3o_S" />
      <node concept="2AHcQZ" id="4pDKQegjczW" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="4pDKQegjc$5" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="37vLTG" id="4pDKQegjczY" role="3clF46">
        <property role="TrG5h" value="nodePath" />
        <node concept="3uibUv" id="4pDKQegjczZ" role="1tU5fm">
          <ref role="3uigEE" to="cyi7:~StaticFilePath" resolve="StaticFilePath" />
        </node>
        <node concept="2AHcQZ" id="4pDKQegjc$0" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="4pDKQegjc$1" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="4pDKQegjc$2" role="1tU5fm">
          <ref role="3uigEE" to="cyi7:~ChangesBrowserNode" resolve="ChangesBrowserNode" />
          <node concept="3qTvmN" id="4pDKQegjc$3" role="11_B2D" />
        </node>
        <node concept="2AHcQZ" id="4pDKQegjc$4" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="4pDKQegjc$6" role="3clF47">
        <node concept="3cpWs8" id="4pDKQegl1mn" role="3cqZAp">
          <node concept="3cpWsn" id="4pDKQegl1mo" role="3cpWs9">
            <property role="TrG5h" value="filePath" />
            <node concept="3uibUv" id="4pDKQegl1mp" role="1tU5fm">
              <ref role="3uigEE" to="jlcu:~FilePath" resolve="FilePath" />
            </node>
            <node concept="2OqwBi" id="4pDKQegl1mq" role="33vP2m">
              <node concept="37vLTw" id="4pDKQegl1mr" role="2Oq$k0">
                <ref role="3cqZAo" node="4pDKQegjczY" resolve="nodePath" />
              </node>
              <node concept="liA8E" id="4pDKQegl1ms" role="2OqNvi">
                <ref role="37wK5l" to="cyi7:~StaticFilePath.getFilePath()" resolve="getFilePath" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4pDKQegl1mt" role="3cqZAp">
          <node concept="3cpWsn" id="4pDKQegl1mu" role="3cpWs9">
            <property role="TrG5h" value="extension" />
            <node concept="3uibUv" id="4pDKQegl1mv" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="1rXfSq" id="4pDKQegl1mw" role="33vP2m">
              <ref role="37wK5l" node="7pVeK7_4baj" resolve="getExtensionFor" />
              <node concept="37vLTw" id="4pDKQegl1mx" role="37wK5m">
                <ref role="3cqZAo" node="4pDKQegl1mo" resolve="filePath" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4pDKQeglm6N" role="3cqZAp">
          <node concept="37vLTw" id="4pDKQeglm6L" role="3clFbG">
            <ref role="3cqZAo" node="4pDKQegl1mu" resolve="extension" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4pDKQegjc$7" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4pDKQegjc$8" role="jymVt">
      <property role="TrG5h" value="createGroupRootNode" />
      <node concept="3Tmbuc" id="4pDKQegjc$9" role="1B3o_S" />
      <node concept="2AHcQZ" id="4pDKQegjc$b" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="4pDKQegjc$c" role="3clF45">
        <ref role="3uigEE" to="cyi7:~ChangesBrowserNode" resolve="ChangesBrowserNode" />
        <node concept="3qTvmN" id="4pDKQegjc$d" role="11_B2D" />
      </node>
      <node concept="37vLTG" id="4pDKQegjc$e" role="3clF46">
        <property role="TrG5h" value="ext" />
        <node concept="3uibUv" id="4pDKQegjc$h" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="2AHcQZ" id="4pDKQegjc$g" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="4pDKQegjc$i" role="3clF47">
        <node concept="3cpWs8" id="4pDKQeglI0W" role="3cqZAp">
          <node concept="3cpWsn" id="4pDKQeglI0X" role="3cpWs9">
            <property role="TrG5h" value="extNode" />
            <node concept="3uibUv" id="4pDKQeglG0T" role="1tU5fm">
              <ref role="3uigEE" node="7pVeK7_3bjr" resolve="ExtensionChangesBrowserNode" />
            </node>
            <node concept="2ShNRf" id="4pDKQeglI0Y" role="33vP2m">
              <node concept="1pGfFk" id="4pDKQeglI0Z" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="7pVeK7_3_1f" resolve="ExtensionChangesBrowserNode" />
                <node concept="37vLTw" id="4pDKQeglI10" role="37wK5m">
                  <ref role="3cqZAo" node="4pDKQegjc$e" resolve="ext" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4pDKQeglsLO" role="3cqZAp">
          <node concept="2OqwBi" id="4pDKQeglK0u" role="3clFbG">
            <node concept="37vLTw" id="4pDKQeglI11" role="2Oq$k0">
              <ref role="3cqZAo" node="4pDKQeglI0X" resolve="extNode" />
            </node>
            <node concept="liA8E" id="4pDKQeglMoc" role="2OqNvi">
              <ref role="37wK5l" to="cyi7:~ChangesBrowserNode.markAsHelperNode()" resolve="markAsHelperNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4pDKQegjc$l" role="3cqZAp">
          <node concept="37vLTw" id="4pDKQeglP4j" role="3clFbG">
            <ref role="3cqZAo" node="4pDKQeglI0X" resolve="extNode" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4pDKQegjc$j" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="7pVeK7_4baj" role="jymVt">
      <property role="TrG5h" value="getExtensionFor" />
      <node concept="3clFbS" id="7pVeK7_4bam" role="3clF47">
        <node concept="3clFbF" id="7pVeK7_4bGJ" role="3cqZAp">
          <node concept="2YIFZM" id="7pVeK7_4bQs" role="3clFbG">
            <ref role="37wK5l" to="snbe:~FileUtilRt.getExtension(java.lang.String)" resolve="getExtension" />
            <ref role="1Pybhc" to="snbe:~FileUtilRt" resolve="FileUtilRt" />
            <node concept="2OqwBi" id="7pVeK7_4cnS" role="37wK5m">
              <node concept="37vLTw" id="7pVeK7_4c7P" role="2Oq$k0">
                <ref role="3cqZAo" node="7pVeK7_4bo_" resolve="filePath" />
              </node>
              <node concept="liA8E" id="7pVeK7_4cwH" role="2OqNvi">
                <ref role="37wK5l" to="jlcu:~FilePath.getName()" resolve="getName" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7pVeK7_4aYJ" role="1B3o_S" />
      <node concept="3uibUv" id="7pVeK7_4b8t" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="37vLTG" id="7pVeK7_4bo_" role="3clF46">
        <property role="TrG5h" value="filePath" />
        <node concept="3uibUv" id="7pVeK7_4bo$" role="1tU5fm">
          <ref role="3uigEE" to="jlcu:~FilePath" resolve="FilePath" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7pVeK7_6AKP" role="jymVt" />
    <node concept="312cEu" id="7pVeK7_6CnE" role="jymVt">
      <property role="TrG5h" value="Factory" />
      <node concept="3Tm1VV" id="7pVeK7_6BR$" role="1B3o_S" />
      <node concept="3uibUv" id="2vCsXJ2NBPF" role="1zkMxy">
        <ref role="3uigEE" to="cyi7:~ChangesGroupingPolicyFactory" resolve="ChangesGroupingPolicyFactory" />
      </node>
      <node concept="3clFb_" id="7pVeK7_6DiC" role="jymVt">
        <property role="TrG5h" value="createGroupingPolicy" />
        <node concept="3Tm1VV" id="7pVeK7_6DiD" role="1B3o_S" />
        <node concept="2AHcQZ" id="7pVeK7_6DiF" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="7pVeK7_6DiG" role="3clF45">
          <ref role="3uigEE" to="cyi7:~ChangesGroupingPolicy" resolve="ChangesGroupingPolicy" />
        </node>
        <node concept="37vLTG" id="7pVeK7_6DiH" role="3clF46">
          <property role="TrG5h" value="project" />
          <node concept="3uibUv" id="7pVeK7_6DiI" role="1tU5fm">
            <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
          </node>
          <node concept="2AHcQZ" id="7pVeK7_6DiJ" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="37vLTG" id="7pVeK7_6DiK" role="3clF46">
          <property role="TrG5h" value="model" />
          <node concept="3uibUv" id="7pVeK7_6DiL" role="1tU5fm">
            <ref role="3uigEE" to="rgfa:~DefaultTreeModel" resolve="DefaultTreeModel" />
          </node>
          <node concept="2AHcQZ" id="7pVeK7_6DiM" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="7pVeK7_6DiN" role="3clF47">
          <node concept="3clFbF" id="7pVeK7_6EhU" role="3cqZAp">
            <node concept="2ShNRf" id="7pVeK7_6EhO" role="3clFbG">
              <node concept="1pGfFk" id="7pVeK7_6KNL" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="7pVeK7_429H" resolve="ExtensionChangesGroupingPolicy" />
                <node concept="37vLTw" id="7pVeK7_6Lga" role="37wK5m">
                  <ref role="3cqZAo" node="7pVeK7_6DiK" resolve="model" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="7pVeK7_6DiO" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="4pDKQegj07u" role="1zkMxy">
      <ref role="3uigEE" to="cyi7:~SimpleChangesGroupingPolicy" resolve="SimpleChangesGroupingPolicy" />
      <node concept="3uibUv" id="4pDKQeglCVV" role="11_B2D">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7pVeK7_3bjr">
    <property role="TrG5h" value="ExtensionChangesBrowserNode" />
    <node concept="3clFbW" id="7pVeK7_3_1f" role="jymVt">
      <node concept="3cqZAl" id="7pVeK7_3_1g" role="3clF45" />
      <node concept="3clFbS" id="7pVeK7_3_1i" role="3clF47">
        <node concept="XkiVB" id="7pVeK7_3_zv" role="3cqZAp">
          <ref role="37wK5l" to="cyi7:~ChangesBrowserNode.&lt;init&gt;(java.lang.Object)" resolve="ChangesBrowserNode" />
          <node concept="37vLTw" id="7pVeK7_3_WC" role="37wK5m">
            <ref role="3cqZAo" node="7pVeK7_3_ag" resolve="extension" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7pVeK7_3_1j" role="1B3o_S" />
      <node concept="37vLTG" id="7pVeK7_3_ag" role="3clF46">
        <property role="TrG5h" value="extension" />
        <node concept="3uibUv" id="7pVeK7_3_af" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="7pVeK7_3bjs" role="1B3o_S" />
    <node concept="3uibUv" id="7pVeK7_3zXg" role="1zkMxy">
      <ref role="3uigEE" to="cyi7:~ChangesBrowserNode" resolve="ChangesBrowserNode" />
      <node concept="3uibUv" id="7pVeK7_3$_Z" role="11_B2D">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="3clFb_" id="7pVeK7_3Bwo" role="jymVt">
      <property role="TrG5h" value="render" />
      <node concept="3Tm1VV" id="7pVeK7_3Bwp" role="1B3o_S" />
      <node concept="3cqZAl" id="7pVeK7_3Bwr" role="3clF45" />
      <node concept="37vLTG" id="7pVeK7_3Bws" role="3clF46">
        <property role="TrG5h" value="renderer" />
        <node concept="3uibUv" id="7pVeK7_3Bwt" role="1tU5fm">
          <ref role="3uigEE" to="cyi7:~ChangesBrowserNodeRenderer" resolve="ChangesBrowserNodeRenderer" />
        </node>
        <node concept="2AHcQZ" id="7pVeK7_3Bwu" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="7pVeK7_3Bwv" role="3clF46">
        <property role="TrG5h" value="selected" />
        <node concept="10P_77" id="7pVeK7_3Bww" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7pVeK7_3Bwx" role="3clF46">
        <property role="TrG5h" value="expanded" />
        <node concept="10P_77" id="7pVeK7_3Bwy" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7pVeK7_3Bwz" role="3clF46">
        <property role="TrG5h" value="hasFocus" />
        <node concept="10P_77" id="7pVeK7_3Bw$" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="7pVeK7_3Bw_" role="3clF47">
        <node concept="3clFbF" id="7pVeK7_3EMs" role="3cqZAp">
          <node concept="2OqwBi" id="7pVeK7_3Frk" role="3clFbG">
            <node concept="37vLTw" id="7pVeK7_3EMl" role="2Oq$k0">
              <ref role="3cqZAo" node="7pVeK7_3Bws" resolve="renderer" />
            </node>
            <node concept="liA8E" id="7pVeK7_3GYY" role="2OqNvi">
              <ref role="37wK5l" to="lzb3:~SimpleColoredComponent.append(java.lang.String,com.intellij.ui.SimpleTextAttributes)" resolve="append" />
              <node concept="1rXfSq" id="74zdNd$bqkw" role="37wK5m">
                <ref role="37wK5l" node="7pVeK7_3V4w" resolve="getTextPresentation" />
              </node>
              <node concept="10M0yZ" id="7pVeK7_3NoN" role="37wK5m">
                <ref role="3cqZAo" to="lzb2:~SimpleTextAttributes.REGULAR_ATTRIBUTES" resolve="REGULAR_ATTRIBUTES" />
                <ref role="1PxDUh" to="lzb2:~SimpleTextAttributes" resolve="SimpleTextAttributes" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7pVeK7_3Ohk" role="3cqZAp">
          <node concept="1rXfSq" id="7pVeK7_3Ohi" role="3clFbG">
            <ref role="37wK5l" to="cyi7:~ChangesBrowserNode.appendCount(com.intellij.ui.ColoredTreeCellRenderer)" resolve="appendCount" />
            <node concept="37vLTw" id="7pVeK7_3Pfk" role="37wK5m">
              <ref role="3cqZAo" node="7pVeK7_3Bws" resolve="renderer" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7pVeK7_3BwA" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="7pVeK7_3PTH" role="jymVt">
      <property role="TrG5h" value="compareUserObjects" />
      <node concept="3Tm1VV" id="7pVeK7_3PTI" role="1B3o_S" />
      <node concept="10Oyi0" id="7pVeK7_3PTK" role="3clF45" />
      <node concept="37vLTG" id="7pVeK7_3PTL" role="3clF46">
        <property role="TrG5h" value="o2" />
        <node concept="3uibUv" id="7pVeK7_3PTN" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="7pVeK7_3PTO" role="3clF47">
        <node concept="3clFbF" id="7pVeK7_3PTS" role="3cqZAp">
          <node concept="2YIFZM" id="2vCsXJ2NLi8" role="3clFbG">
            <ref role="37wK5l" to="cyi7:~ChangesBrowserNode.compareFileNames(java.lang.String,java.lang.String)" resolve="compareFileNames" />
            <ref role="1Pybhc" to="cyi7:~ChangesBrowserNode" resolve="ChangesBrowserNode" />
            <node concept="1rXfSq" id="2vCsXJ2NLi9" role="37wK5m">
              <ref role="37wK5l" to="cyi7:~ChangesBrowserNode.getUserObject()" resolve="getUserObject" />
            </node>
            <node concept="37vLTw" id="2vCsXJ2NLia" role="37wK5m">
              <ref role="3cqZAo" node="7pVeK7_3PTL" resolve="o2" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7pVeK7_3PTP" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="7pVeK7_3V4w" role="jymVt">
      <property role="TrG5h" value="getTextPresentation" />
      <node concept="3Tm1VV" id="7pVeK7_3V4x" role="1B3o_S" />
      <node concept="2AHcQZ" id="7pVeK7_3V4z" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nls" resolve="Nls" />
      </node>
      <node concept="3uibUv" id="7pVeK7_3V4$" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="7pVeK7_3V4_" role="3clF47">
        <node concept="3clFbF" id="7pVeK7_3WF9" role="3cqZAp">
          <node concept="3cpWs3" id="4$OYuYHi$ZA" role="3clFbG">
            <node concept="Xl_RD" id="4$OYuYHi_rF" role="3uHU7B">
              <property role="Xl_RC" value="." />
            </node>
            <node concept="1rXfSq" id="7pVeK7_3WF6" role="3uHU7w">
              <ref role="37wK5l" to="cyi7:~ChangesBrowserNode.getUserObject()" resolve="getUserObject" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7pVeK7_3V4A" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
</model>

