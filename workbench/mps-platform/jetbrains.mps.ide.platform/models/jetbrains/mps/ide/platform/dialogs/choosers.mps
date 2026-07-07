<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:bfb6ca7e-5411-4ee0-a5c0-1edd33370efd(jetbrains.mps.ide.platform.dialogs.choosers)">
  <persistence version="9" />
  <languages>
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="-1" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="3" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="-1" />
  </languages>
  <imports>
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="bd8o" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.application(MPS.IDEA/)" />
    <import index="jkm4" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.ui(MPS.IDEA/)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="1l1f" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ide.util.gotoByName(MPS.IDEA/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="2ymi" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ide.structureView(MPS.IDEA/)" />
    <import index="e8no" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.util.containers(MPS.IDEA/)" />
    <import index="f5fe" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ide.util.treeView.smartTree(MPS.IDEA/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="cuxm" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.workbench.goTo.ui(MPS.Platform/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="yha4" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.workbench.choose(MPS.Platform/)" />
    <import index="alof" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.project(MPS.Platform/)" />
    <import index="7fg" ref="8d17ee87-2ea6-4f4a-9bd4-751928af5412/java:com.intellij.ide.structureView.newStructureView(MPS.IDEA.Plugins/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
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
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
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
        <child id="4972241301747169160" name="typeArgument" index="3PaCim" />
      </concept>
      <concept id="1073063089578" name="jetbrains.mps.baseLanguage.structure.SuperMethodCall" flags="nn" index="3nyPlj" />
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
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
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1178893518978" name="jetbrains.mps.baseLanguage.structure.ThisConstructorInvocation" flags="nn" index="1VxSAg" />
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
      <concept id="2068944020170241612" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocComment" flags="ng" index="3UR2Jj" />
      <concept id="5085607816302529296" name="jetbrains.mps.baseLanguage.javadoc.structure.IHoldCommentLines" flags="ngI" index="1VezTd">
        <child id="5085607816302529587" name="commentBody" index="1Vez_I" />
      </concept>
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="2034914114981261497" name="jetbrains.mps.baseLanguage.logging.structure.LogLowLevelStatement" flags="ng" index="RRSsy">
        <property id="2034914114981261751" name="severity" index="RRSoG" />
        <child id="2034914114981261753" name="message" index="RRSoy" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="5045161044515397667" name="jetbrains.mps.lang.smodel.structure.Node_PointerOperation" flags="ng" index="iZEcu" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
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
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
    </language>
  </registry>
  <node concept="312cEu" id="m2MuEX6obZ">
    <property role="TrG5h" value="NodeChooserDialog" />
    <node concept="3Tm1VV" id="m2MuEX6oc0" role="1B3o_S" />
    <node concept="3uibUv" id="m2MuEX6oc5" role="1zkMxy">
      <ref role="3uigEE" to="jkm4:~DialogWrapper" resolve="DialogWrapper" />
    </node>
    <node concept="312cEg" id="m2MuEX6ppL" role="jymVt">
      <property role="TrG5h" value="myChooser" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="5mI2DYCrjvW" role="1tU5fm">
        <ref role="3uigEE" to="cuxm:~ChooseByNamePanel" resolve="ChooseByNamePanel" />
      </node>
      <node concept="3Tm6S6" id="m2MuEX6ppM" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="fweninYtz_" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myChosenElement" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="fweninYtde" role="1B3o_S" />
      <node concept="3uibUv" id="fweninYttD" role="1tU5fm">
        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
      </node>
    </node>
    <node concept="2tJIrI" id="fweninY3f$" role="jymVt" />
    <node concept="3clFbW" id="_Qgg$$utwA" role="jymVt">
      <node concept="37vLTG" id="_Qgg$$utwB" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="_Qgg$$utwC" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="_Qgg$$uSnO" role="3clF46">
        <property role="TrG5h" value="chooseByNameModel" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="3m2egpBFD$9" role="1tU5fm">
          <ref role="3uigEE" to="1l1f:~ChooseByNameModel" resolve="ChooseByNameModel" />
        </node>
      </node>
      <node concept="3cqZAl" id="_Qgg$$utwG" role="3clF45" />
      <node concept="3Tm1VV" id="_Qgg$$utwH" role="1B3o_S" />
      <node concept="3clFbS" id="_Qgg$$utwI" role="3clF47">
        <node concept="XkiVB" id="_Qgg$$utwJ" role="3cqZAp">
          <ref role="37wK5l" to="jkm4:~DialogWrapper.&lt;init&gt;(com.intellij.openapi.project.Project,boolean)" resolve="DialogWrapper" />
          <node concept="37vLTw" id="_Qgg$$utwK" role="37wK5m">
            <ref role="3cqZAo" node="_Qgg$$utwB" resolve="project" />
          </node>
          <node concept="3clFbT" id="_Qgg$$utwL" role="37wK5m">
            <property role="3clFbU" value="true" />
          </node>
        </node>
        <node concept="3clFbF" id="_Qgg$$utwM" role="3cqZAp">
          <node concept="1rXfSq" id="_Qgg$$utwN" role="3clFbG">
            <ref role="37wK5l" to="jkm4:~DialogWrapper.setTitle(java.lang.String)" resolve="setTitle" />
            <node concept="Xl_RD" id="_Qgg$$utwO" role="37wK5m">
              <property role="Xl_RC" value="Choose Node" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3m2egpBGjH9" role="3cqZAp" />
        <node concept="3clFbF" id="3m2egpBGj28" role="3cqZAp">
          <node concept="37vLTI" id="3m2egpBGj29" role="3clFbG">
            <node concept="37vLTw" id="3m2egpBGj2a" role="37vLTJ">
              <ref role="3cqZAo" node="m2MuEX6ppL" resolve="myChooser" />
            </node>
            <node concept="2YIFZM" id="3m2egpBGj2b" role="37vLTx">
              <ref role="1Pybhc" to="cuxm:~MpsPopupFactory" resolve="MpsPopupFactory" />
              <ref role="37wK5l" to="cuxm:~MpsPopupFactory.createPanelForNode(com.intellij.openapi.project.Project,com.intellij.ide.util.gotoByName.ChooseByNameModel,boolean)" resolve="createPanelForNode" />
              <node concept="37vLTw" id="3m2egpBGj2c" role="37wK5m">
                <ref role="3cqZAo" node="_Qgg$$utwB" resolve="project" />
              </node>
              <node concept="37vLTw" id="3m2egpBGtcV" role="37wK5m">
                <ref role="3cqZAo" node="_Qgg$$uSnO" resolve="chooseByNameModel" />
              </node>
              <node concept="3clFbT" id="3m2egpBGj2e" role="37wK5m">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3m2egpBGj2f" role="3cqZAp">
          <node concept="2OqwBi" id="3m2egpBGj2g" role="3clFbG">
            <node concept="37vLTw" id="3m2egpBGj2h" role="2Oq$k0">
              <ref role="3cqZAo" node="m2MuEX6ppL" resolve="myChooser" />
            </node>
            <node concept="liA8E" id="3m2egpBGj2i" role="2OqNvi">
              <ref role="37wK5l" to="1l1f:~ChooseByNameBase.invoke(com.intellij.ide.util.gotoByName.ChooseByNamePopupComponent$Callback,com.intellij.openapi.application.ModalityState,boolean)" resolve="invoke" />
              <node concept="2ShNRf" id="3m2egpBGj2j" role="37wK5m">
                <node concept="YeOm9" id="3m2egpBGj2k" role="2ShVmc">
                  <node concept="1Y3b0j" id="3m2egpBGj2l" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="1l1f:~ChooseByNamePopupComponent$Callback" resolve="ChooseByNamePopupComponent.Callback" />
                    <ref role="37wK5l" to="1l1f:~ChooseByNamePopupComponent$Callback.&lt;init&gt;()" resolve="ChooseByNamePopupComponent.Callback" />
                    <node concept="3Tm1VV" id="3m2egpBGj2m" role="1B3o_S" />
                    <node concept="3clFb_" id="3m2egpBGj2n" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="elementChosen" />
                      <property role="DiZV1" value="false" />
                      <node concept="3Tm1VV" id="3m2egpBGj2o" role="1B3o_S" />
                      <node concept="3cqZAl" id="3m2egpBGj2p" role="3clF45" />
                      <node concept="37vLTG" id="3m2egpBGj2q" role="3clF46">
                        <property role="TrG5h" value="element" />
                        <node concept="3uibUv" id="3m2egpBGj2r" role="1tU5fm">
                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="3m2egpBGj2s" role="3clF47">
                        <node concept="3clFbF" id="3m2egpBGj2C" role="3cqZAp">
                          <node concept="1rXfSq" id="3m2egpBGj2D" role="3clFbG">
                            <ref role="37wK5l" node="2QiWOxvvolx" resolve="doOKAction" />
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="3m2egpBGj2E" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2YIFZM" id="1P_k_VEn0g0" role="37wK5m">
                <ref role="37wK5l" to="bd8o:~ModalityState.any()" resolve="any" />
                <ref role="1Pybhc" to="bd8o:~ModalityState" resolve="ModalityState" />
              </node>
              <node concept="3clFbT" id="3m2egpBGj2H" role="37wK5m">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3m2egpBGj2I" role="3cqZAp" />
        <node concept="3clFbF" id="3m2egpBGj2J" role="3cqZAp">
          <node concept="1rXfSq" id="3m2egpBGj2K" role="3clFbG">
            <ref role="37wK5l" to="jkm4:~DialogWrapper.init()" resolve="init" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2QiWOxvv3B9" role="jymVt" />
    <node concept="2tJIrI" id="2QiWOxvv3Tk" role="jymVt" />
    <node concept="3clFb_" id="2QiWOxvvolx" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="doOKAction" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tmbuc" id="2QiWOxvvoly" role="1B3o_S" />
      <node concept="3cqZAl" id="2QiWOxvvol$" role="3clF45" />
      <node concept="3clFbS" id="2QiWOxvvol_" role="3clF47">
        <node concept="3cpWs8" id="2QiWOxvvpeM" role="3cqZAp">
          <node concept="3cpWsn" id="2QiWOxvvpeN" role="3cpWs9">
            <property role="TrG5h" value="element" />
            <node concept="3uibUv" id="2QiWOxvvpeO" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
            <node concept="2OqwBi" id="2QiWOxvvpxz" role="33vP2m">
              <node concept="37vLTw" id="2QiWOxvvpkD" role="2Oq$k0">
                <ref role="3cqZAo" node="m2MuEX6ppL" resolve="myChooser" />
              </node>
              <node concept="liA8E" id="2QiWOxvvpQn" role="2OqNvi">
                <ref role="37wK5l" to="1l1f:~ChooseByNameBase.getChosenElement()" resolve="getChosenElement" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3m2egpBGj2t" role="3cqZAp">
          <node concept="3clFbS" id="3m2egpBGj2u" role="3clFbx">
            <node concept="3clFbF" id="3m2egpBGj2v" role="3cqZAp">
              <node concept="37vLTI" id="3m2egpBGj2w" role="3clFbG">
                <node concept="10QFUN" id="3m2egpBGj2x" role="37vLTx">
                  <node concept="3uibUv" id="3m2egpBGj2y" role="10QFUM">
                    <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                  </node>
                  <node concept="37vLTw" id="3m2egpBGj2z" role="10QFUP">
                    <ref role="3cqZAo" node="2QiWOxvvpeN" resolve="element" />
                  </node>
                </node>
                <node concept="37vLTw" id="3m2egpBGj2$" role="37vLTJ">
                  <ref role="3cqZAo" node="fweninYtz_" resolve="myChosenElement" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="3m2egpBGj2_" role="3clFbw">
            <node concept="3uibUv" id="3m2egpBGj2A" role="2ZW6by">
              <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
            </node>
            <node concept="37vLTw" id="3m2egpBGj2B" role="2ZW6bz">
              <ref role="3cqZAo" node="2QiWOxvvpeN" resolve="element" />
            </node>
          </node>
          <node concept="9aQIb" id="2QiWOxvvrgu" role="9aQIa">
            <node concept="3clFbS" id="2QiWOxvvrgv" role="9aQI4">
              <node concept="RRSsy" id="2QiWOxvvriw" role="3cqZAp">
                <property role="RRSoG" value="gZ5fksE/warn" />
                <node concept="Xl_RD" id="2QiWOxvvriy" role="RRSoy">
                  <property role="Xl_RC" value="Only SNodeReference can be chosen" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2QiWOxvvoES" role="3cqZAp" />
        <node concept="3clFbF" id="2QiWOxvvolC" role="3cqZAp">
          <node concept="3nyPlj" id="2QiWOxvvolB" role="3clFbG">
            <ref role="37wK5l" to="jkm4:~DialogWrapper.doOKAction()" resolve="doOKAction" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2QiWOxvvolA" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="QFGVOaUkYF" role="jymVt" />
    <node concept="3clFbW" id="m2MuEX6oc1" role="jymVt">
      <node concept="37vLTG" id="m2MuEX6ocd" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="m2MuEX6ocf" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="m2MuEX6ocA" role="3clF46">
        <property role="TrG5h" value="nodes" />
        <property role="3TUv4t" value="true" />
        <node concept="A3Dl8" id="m2MuEX6ode" role="1tU5fm">
          <node concept="3uibUv" id="L4W0vZ$m8q" role="A3Ik2">
            <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="m2MuEX6oc2" role="3clF45" />
      <node concept="3Tm1VV" id="m2MuEX6oc3" role="1B3o_S" />
      <node concept="3clFbS" id="m2MuEX6oc4" role="3clF47">
        <node concept="1VxSAg" id="3m2egpBGkvG" role="3cqZAp">
          <ref role="37wK5l" node="_Qgg$$utwA" resolve="NodeChooserDialog" />
          <node concept="37vLTw" id="3m2egpBGkW7" role="37wK5m">
            <ref role="3cqZAo" node="m2MuEX6ocd" resolve="project" />
          </node>
          <node concept="2OqwBi" id="3m2egpBGpaw" role="37wK5m">
            <node concept="2OqwBi" id="3m2egpBGn8e" role="2Oq$k0">
              <node concept="2ShNRf" id="3m2egpBFGgb" role="2Oq$k0">
                <node concept="1pGfFk" id="3m2egpBFYUl" role="2ShVmc">
                  <ref role="37wK5l" to="yha4:~ChooseByNameData.&lt;init&gt;(jetbrains.mps.workbench.choose.ElementPresentation)" resolve="ChooseByNameData" />
                  <node concept="2ShNRf" id="3m2egpBFZDn" role="37wK5m">
                    <node concept="1pGfFk" id="3m2egpBG0Cj" role="2ShVmc">
                      <ref role="37wK5l" to="yha4:~NodesPresentation.&lt;init&gt;(org.jetbrains.mps.openapi.module.SRepository)" resolve="NodesPresentation" />
                      <node concept="2YIFZM" id="3m2egpBG1Q9" role="37wK5m">
                        <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                        <ref role="37wK5l" to="alof:~ProjectHelper.getProjectRepository(com.intellij.openapi.project.Project)" resolve="getProjectRepository" />
                        <node concept="37vLTw" id="3m2egpBG1Qa" role="37wK5m">
                          <ref role="3cqZAo" node="m2MuEX6ocd" resolve="project" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="3m2egpBGnJ$" role="2OqNvi">
                <ref role="37wK5l" to="yha4:~ChooseByNameData.derivePrompts(java.lang.String)" resolve="derivePrompts" />
                <node concept="Xl_RD" id="3m2egpBGocP" role="37wK5m">
                  <property role="Xl_RC" value="node" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="3m2egpBGqec" role="2OqNvi">
              <ref role="37wK5l" to="yha4:~ChooseByNameData.setScope(java.lang.Iterable,java.lang.Iterable)" resolve="setScope" />
              <node concept="37vLTw" id="3m2egpBG5Gi" role="37wK5m">
                <ref role="3cqZAo" node="m2MuEX6ocA" resolve="nodes" />
              </node>
              <node concept="2YIFZM" id="3m2egpBG7R3" role="37wK5m">
                <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                <ref role="37wK5l" to="33ny:~Collections.emptySet()" resolve="emptySet" />
                <node concept="3uibUv" id="3m2egpBG8tF" role="3PaCim">
                  <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="QFGVOaUenP" role="jymVt" />
    <node concept="3clFbW" id="L4W0vZ_00l" role="jymVt">
      <node concept="37vLTG" id="L4W0vZ_00m" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="L4W0vZ_00n" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="L4W0vZ_00o" role="3clF46">
        <property role="TrG5h" value="nodes" />
        <property role="3TUv4t" value="true" />
        <node concept="_YKpA" id="L4W0vZ_02a" role="1tU5fm">
          <node concept="3qUE_q" id="2H1iQD6rOQe" role="_ZDj9">
            <node concept="3Tqbb2" id="2H1iQD6rSb4" role="3qUE_r" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="L4W0vZ_00r" role="3clF45" />
      <node concept="3Tm1VV" id="L4W0vZ_00s" role="1B3o_S" />
      <node concept="3clFbS" id="L4W0vZ_00t" role="3clF47">
        <node concept="1VxSAg" id="L4W0vZ_02p" role="3cqZAp">
          <ref role="37wK5l" node="m2MuEX6oc1" resolve="NodeChooserDialog" />
          <node concept="37vLTw" id="2BHiRxgllhq" role="37wK5m">
            <ref role="3cqZAo" node="L4W0vZ_00m" resolve="project" />
          </node>
          <node concept="2OqwBi" id="L4W0vZ_02V" role="37wK5m">
            <node concept="37vLTw" id="2BHiRxgm9Hn" role="2Oq$k0">
              <ref role="3cqZAo" node="L4W0vZ_00o" resolve="nodes" />
            </node>
            <node concept="3$u5V9" id="L4W0vZ_039" role="2OqNvi">
              <node concept="1bVj0M" id="L4W0vZ_03a" role="23t8la">
                <node concept="3clFbS" id="L4W0vZ_03b" role="1bW5cS">
                  <node concept="3clFbF" id="L4W0vZ_03i" role="3cqZAp">
                    <node concept="2JrnkZ" id="7u2HgD1KsHG" role="3clFbG">
                      <node concept="2OqwBi" id="fweninWuUI" role="2JrQYb">
                        <node concept="37vLTw" id="fweninWuQP" role="2Oq$k0">
                          <ref role="3cqZAo" node="5W7E4fV0Y54" resolve="it" />
                        </node>
                        <node concept="iZEcu" id="fweninWv0f" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="5W7E4fV0Y54" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="5W7E4fV0Y55" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="QFGVOaUenQ" role="jymVt" />
    <node concept="3clFb_" id="m2MuEX6oc6" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="createCenterPanel" />
      <property role="DiZV1" value="false" />
      <node concept="3Tmbuc" id="m2MuEX6oc7" role="1B3o_S" />
      <node concept="3uibUv" id="m2MuEX6oc8" role="3clF45">
        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
      </node>
      <node concept="2AHcQZ" id="m2MuEX6oc9" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="m2MuEX6oca" role="3clF47">
        <node concept="3clFbF" id="30VS_eRpdzY" role="3cqZAp">
          <node concept="2OqwBi" id="30VS_eRpfll" role="3clFbG">
            <node concept="2OqwBi" id="30VS_eRpd$i" role="2Oq$k0">
              <node concept="37vLTw" id="2BHiRxeuSkc" role="2Oq$k0">
                <ref role="3cqZAo" node="m2MuEX6ppL" resolve="myChooser" />
              </node>
              <node concept="liA8E" id="30VS_eRpd$o" role="2OqNvi">
                <ref role="37wK5l" to="1l1f:~ChooseByNamePanel.getPanel()" resolve="getPanel" />
              </node>
            </node>
            <node concept="liA8E" id="30VS_eRpi0z" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setPreferredSize(java.awt.Dimension)" resolve="setPreferredSize" />
              <node concept="2ShNRf" id="30VS_eRpi0_" role="37wK5m">
                <node concept="1pGfFk" id="30VS_eRpi0D" role="2ShVmc">
                  <ref role="37wK5l" to="z60i:~Dimension.&lt;init&gt;(int,int)" resolve="Dimension" />
                  <node concept="3cmrfG" id="30VS_eRpi0F" role="37wK5m">
                    <property role="3cmrfH" value="400" />
                  </node>
                  <node concept="3cmrfG" id="30VS_eRpi0H" role="37wK5m">
                    <property role="3cmrfH" value="500" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5A8McZVgeMh" role="3cqZAp">
          <node concept="2OqwBi" id="$BWYFf6flL" role="3cqZAk">
            <node concept="37vLTw" id="2BHiRxeuC1B" role="2Oq$k0">
              <ref role="3cqZAo" node="m2MuEX6ppL" resolve="myChooser" />
            </node>
            <node concept="liA8E" id="$BWYFf6flT" role="2OqNvi">
              <ref role="37wK5l" to="1l1f:~ChooseByNamePanel.getPanel()" resolve="getPanel" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_SfOO" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="QFGVOaUenR" role="jymVt" />
    <node concept="3clFb_" id="L4W0vZ$xq2" role="jymVt">
      <property role="TrG5h" value="getResult" />
      <node concept="3Tm1VV" id="L4W0vZ$xq4" role="1B3o_S" />
      <node concept="3clFbS" id="L4W0vZ$xq5" role="3clF47">
        <node concept="3clFbJ" id="L4W0vZ$xq6" role="3cqZAp">
          <node concept="3y3z36" id="L4W0vZ$xq7" role="3clFbw">
            <node concept="1rXfSq" id="4hiugqyzbZa" role="3uHU7B">
              <ref role="37wK5l" to="jkm4:~DialogWrapper.getExitCode()" resolve="getExitCode" />
            </node>
            <node concept="10M0yZ" id="L4W0vZ$xq8" role="3uHU7w">
              <ref role="1PxDUh" to="jkm4:~DialogWrapper" resolve="DialogWrapper" />
              <ref role="3cqZAo" to="jkm4:~DialogWrapper.OK_EXIT_CODE" resolve="OK_EXIT_CODE" />
            </node>
          </node>
          <node concept="3clFbS" id="L4W0vZ$xqa" role="3clFbx">
            <node concept="3cpWs6" id="L4W0vZ$xqb" role="3cqZAp">
              <node concept="10Nm6u" id="L4W0vZ$xqc" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="L4W0vZ$xql" role="3cqZAp">
          <node concept="37vLTw" id="fweninYx78" role="3cqZAk">
            <ref role="3cqZAo" node="fweninYtz_" resolve="myChosenElement" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="L4W0vZ$xqv" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
      </node>
      <node concept="2AHcQZ" id="L4W0vZ$xqy" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="QFGVOaUenS" role="jymVt" />
    <node concept="3clFb_" id="29u3Sr2Sq1M" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getPreferredFocusedComponent" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="29u3Sr2Sq1N" role="1B3o_S" />
      <node concept="3uibUv" id="29u3Sr2Sq1O" role="3clF45">
        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
      </node>
      <node concept="2AHcQZ" id="29u3Sr2Sq1P" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="29u3Sr2Sq1Q" role="3clF47">
        <node concept="3clFbF" id="29u3Sr2Sq1U" role="3cqZAp">
          <node concept="2OqwBi" id="29u3Sr2Sq2e" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeufRd" role="2Oq$k0">
              <ref role="3cqZAo" node="m2MuEX6ppL" resolve="myChooser" />
            </node>
            <node concept="liA8E" id="29u3Sr2Sq2k" role="2OqNvi">
              <ref role="37wK5l" to="1l1f:~ChooseByNamePanel.getPreferredFocusedComponent()" resolve="getPreferredFocusedComponent" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="29u3Sr2Sq1R" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6IhgjCFSg6">
    <property role="TrG5h" value="TreeStructureActionsOwner" />
    <property role="1sVAO0" value="false" />
    <property role="1EXbeo" value="false" />
    <node concept="3uibUv" id="29Kzz1Rebcx" role="EKbjA">
      <ref role="3uigEE" to="7fg:~TreeActionsOwner" resolve="TreeActionsOwner" />
    </node>
    <node concept="3UR2Jj" id="6IhgjCFShF" role="lGtFl">
      <node concept="1PaTwC" id="1E1X3WHsE3C" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsE3D" role="1PaTwD">
          <property role="3oM_SC" value="*" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsE3E" role="1PaTwD">
          <property role="3oM_SC" value="@author" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsE3F" role="1PaTwD">
          <property role="3oM_SC" value="Konstantin" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsE3G" role="1PaTwD">
          <property role="3oM_SC" value="Bulenkov" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="6IhgjCFSg8" role="jymVt">
      <property role="TrG5h" value="myActions" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="6IhgjCFSg9" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="6IhgjCFSga" role="11_B2D">
          <ref role="3uigEE" to="f5fe:~TreeAction" resolve="TreeAction" />
        </node>
      </node>
      <node concept="3Tm6S6" id="6IhgjCFSgb" role="1B3o_S" />
      <node concept="2ShNRf" id="6IhgjCFSgc" role="33vP2m">
        <node concept="1pGfFk" id="6IhgjCFSgd" role="2ShVmc">
          <ref role="37wK5l" to="e8no:~HashSet.&lt;init&gt;()" resolve="HashSet" />
          <node concept="3uibUv" id="6IhgjCFSge" role="1pMfVU">
            <ref role="3uigEE" to="f5fe:~TreeAction" resolve="TreeAction" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="6IhgjCFSgf" role="jymVt">
      <property role="TrG5h" value="myModel" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="6IhgjCFSgg" role="1tU5fm">
        <ref role="3uigEE" to="2ymi:~StructureViewModel" resolve="StructureViewModel" />
      </node>
      <node concept="3Tm6S6" id="6IhgjCFSgh" role="1B3o_S" />
    </node>
    <node concept="3clFbW" id="6IhgjCFSgi" role="jymVt">
      <node concept="3cqZAl" id="6IhgjCFSgj" role="3clF45" />
      <node concept="37vLTG" id="6IhgjCFSgk" role="3clF46">
        <property role="TrG5h" value="model" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="6IhgjCFSgl" role="1tU5fm">
          <ref role="3uigEE" to="2ymi:~StructureViewModel" resolve="StructureViewModel" />
        </node>
      </node>
      <node concept="3clFbS" id="6IhgjCFSgm" role="3clF47">
        <node concept="3clFbF" id="6IhgjCFSgn" role="3cqZAp">
          <node concept="37vLTI" id="6IhgjCFSgo" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuXiH" role="37vLTJ">
              <ref role="3cqZAo" node="6IhgjCFSgf" resolve="myModel" />
            </node>
            <node concept="37vLTw" id="2BHiRxgmaUn" role="37vLTx">
              <ref role="3cqZAo" node="6IhgjCFSgk" resolve="model" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6IhgjCFSgr" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="setActionActive" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="6IhgjCFSgs" role="1B3o_S" />
      <node concept="3cqZAl" id="6IhgjCFSgt" role="3clF45" />
      <node concept="37vLTG" id="6IhgjCFSgu" role="3clF46">
        <property role="TrG5h" value="name" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="6IhgjCFSgv" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="6IhgjCFSgw" role="3clF46">
        <property role="TrG5h" value="state" />
        <property role="3TUv4t" value="false" />
        <node concept="10P_77" id="6IhgjCFSgx" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="6IhgjCFSgy" role="3clF47" />
      <node concept="2AHcQZ" id="3tYsUK_UAIN" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6IhgjCFSgz" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isActionActive" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="6IhgjCFSg$" role="1B3o_S" />
      <node concept="10P_77" id="6IhgjCFSg_" role="3clF45" />
      <node concept="37vLTG" id="6IhgjCFSgA" role="3clF46">
        <property role="TrG5h" value="name" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="6IhgjCFSgB" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="6IhgjCFSgC" role="3clF47">
        <node concept="1DcWWT" id="6IhgjCFSgD" role="3cqZAp">
          <node concept="2OqwBi" id="6IhgjCFSgE" role="1DdaDG">
            <node concept="37vLTw" id="2BHiRxeuPCu" role="2Oq$k0">
              <ref role="3cqZAo" node="6IhgjCFSgf" resolve="myModel" />
            </node>
            <node concept="liA8E" id="6IhgjCFSgG" role="2OqNvi">
              <ref role="37wK5l" to="f5fe:~TreeModel.getSorters()" resolve="getSorters" />
            </node>
          </node>
          <node concept="3cpWsn" id="6IhgjCFSgH" role="1Duv9x">
            <property role="TrG5h" value="sorter" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="6IhgjCFSgI" role="1tU5fm">
              <ref role="3uigEE" to="f5fe:~Sorter" resolve="Sorter" />
            </node>
          </node>
          <node concept="3clFbS" id="6IhgjCFSgJ" role="2LFqv$">
            <node concept="3clFbJ" id="6IhgjCFSgK" role="3cqZAp">
              <node concept="2OqwBi" id="6IhgjCFSgL" role="3clFbw">
                <node concept="2OqwBi" id="6IhgjCFSgM" role="2Oq$k0">
                  <node concept="37vLTw" id="3GM_nagTsvi" role="2Oq$k0">
                    <ref role="3cqZAo" node="6IhgjCFSgH" resolve="sorter" />
                  </node>
                  <node concept="liA8E" id="6IhgjCFSgO" role="2OqNvi">
                    <ref role="37wK5l" to="f5fe:~TreeAction.getName()" resolve="getName" />
                  </node>
                </node>
                <node concept="liA8E" id="6IhgjCFSgP" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                  <node concept="37vLTw" id="2BHiRxgmP47" role="37wK5m">
                    <ref role="3cqZAo" node="6IhgjCFSgA" resolve="name" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="6IhgjCFSgR" role="3clFbx">
                <node concept="3clFbJ" id="6IhgjCFSgS" role="3cqZAp">
                  <node concept="3fqX7Q" id="6IhgjCFSgT" role="3clFbw">
                    <node concept="2OqwBi" id="6IhgjCFSgU" role="3fr31v">
                      <node concept="37vLTw" id="3GM_nagTxDf" role="2Oq$k0">
                        <ref role="3cqZAo" node="6IhgjCFSgH" resolve="sorter" />
                      </node>
                      <node concept="liA8E" id="6IhgjCFSgW" role="2OqNvi">
                        <ref role="37wK5l" to="f5fe:~Sorter.isVisible()" resolve="isVisible" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="6IhgjCFSgX" role="3clFbx">
                    <node concept="3cpWs6" id="6IhgjCFSgY" role="3cqZAp">
                      <node concept="3clFbT" id="6IhgjCFSgZ" role="3cqZAk">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="6IhgjCFSh0" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeuq98" role="1DdaDG">
            <ref role="3cqZAo" node="6IhgjCFSg8" resolve="myActions" />
          </node>
          <node concept="3cpWsn" id="6IhgjCFSh2" role="1Duv9x">
            <property role="TrG5h" value="action" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="6IhgjCFSh3" role="1tU5fm">
              <ref role="3uigEE" to="f5fe:~TreeAction" resolve="TreeAction" />
            </node>
          </node>
          <node concept="3clFbS" id="6IhgjCFSh4" role="2LFqv$">
            <node concept="3clFbJ" id="6IhgjCFSh5" role="3cqZAp">
              <node concept="2OqwBi" id="6IhgjCFSh6" role="3clFbw">
                <node concept="2OqwBi" id="6IhgjCFSh7" role="2Oq$k0">
                  <node concept="37vLTw" id="3GM_nagTzAB" role="2Oq$k0">
                    <ref role="3cqZAo" node="6IhgjCFSh2" resolve="action" />
                  </node>
                  <node concept="liA8E" id="6IhgjCFSh9" role="2OqNvi">
                    <ref role="37wK5l" to="f5fe:~TreeAction.getName()" resolve="getName" />
                  </node>
                </node>
                <node concept="liA8E" id="6IhgjCFSha" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                  <node concept="37vLTw" id="2BHiRxglJTL" role="37wK5m">
                    <ref role="3cqZAo" node="6IhgjCFSgA" resolve="name" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="6IhgjCFShc" role="3clFbx">
                <node concept="3cpWs6" id="6IhgjCFShd" role="3cqZAp">
                  <node concept="3clFbT" id="6IhgjCFShe" role="3cqZAk">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6IhgjCFShf" role="3cqZAp">
          <node concept="2OqwBi" id="6IhgjCFShg" role="3cqZAk">
            <node concept="2YIFZM" id="5wk3WoD$MxO" role="2Oq$k0">
              <ref role="37wK5l" to="f5fe:~Sorter.getAlphaSorterId()" resolve="getAlphaSorterId" />
              <ref role="1Pybhc" to="f5fe:~Sorter" resolve="Sorter" />
            </node>
            <node concept="liA8E" id="6IhgjCFShi" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="37vLTw" id="2BHiRxgm6rZ" role="37wK5m">
                <ref role="3cqZAo" node="6IhgjCFSgA" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_UAIM" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6IhgjCFShk" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="setActionIncluded" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="6IhgjCFShl" role="1B3o_S" />
      <node concept="3cqZAl" id="6IhgjCFShm" role="3clF45" />
      <node concept="37vLTG" id="6IhgjCFShn" role="3clF46">
        <property role="TrG5h" value="filter" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="6IhgjCFSho" role="1tU5fm">
          <ref role="3uigEE" to="f5fe:~TreeAction" resolve="TreeAction" />
        </node>
      </node>
      <node concept="37vLTG" id="6IhgjCFShp" role="3clF46">
        <property role="TrG5h" value="selected" />
        <property role="3TUv4t" value="true" />
        <node concept="10P_77" id="6IhgjCFShq" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="6IhgjCFShr" role="3clF47">
        <node concept="3clFbJ" id="6IhgjCFShs" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxgmj1p" role="3clFbw">
            <ref role="3cqZAo" node="6IhgjCFShp" resolve="selected" />
          </node>
          <node concept="9aQIb" id="6IhgjCFShu" role="9aQIa">
            <node concept="3clFbS" id="6IhgjCFShv" role="9aQI4">
              <node concept="3clFbF" id="6IhgjCFShw" role="3cqZAp">
                <node concept="2OqwBi" id="6IhgjCFShx" role="3clFbG">
                  <node concept="37vLTw" id="2BHiRxeuOP_" role="2Oq$k0">
                    <ref role="3cqZAo" node="6IhgjCFSg8" resolve="myActions" />
                  </node>
                  <node concept="liA8E" id="6IhgjCFShz" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Set.remove(java.lang.Object)" resolve="remove" />
                    <node concept="37vLTw" id="2BHiRxgm9hS" role="37wK5m">
                      <ref role="3cqZAo" node="6IhgjCFShn" resolve="filter" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="6IhgjCFSh_" role="3clFbx">
            <node concept="3clFbF" id="6IhgjCFShA" role="3cqZAp">
              <node concept="2OqwBi" id="6IhgjCFShB" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxeueON" role="2Oq$k0">
                  <ref role="3cqZAo" node="6IhgjCFSg8" resolve="myActions" />
                </node>
                <node concept="liA8E" id="6IhgjCFShD" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="2BHiRxglguM" role="37wK5m">
                    <ref role="3cqZAo" node="6IhgjCFShn" resolve="filter" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

