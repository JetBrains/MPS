<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:05ff02e5-9836-4ae9-a454-eab43fa58c8f(jetbrains.mps.ide.httpsupport.manager.plugin)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="c0080a47-7e37-4558-bee9-9ae18e690549" name="jetbrains.mps.lang.extension" version="-1" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="-1" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="3" />
    <use id="515552c7-fcc0-4ab4-9789-2f3c49344e85" name="jetbrains.mps.baseLanguage.varVariable" version="0" />
  </languages>
  <imports>
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="je40" ref="r:120d1a1b-e2af-479c-bc61-72f0ecc88047(jetbrains.mps.ide.httpsupport.plugin)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="zf81" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.net(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="g1go" ref="b00f36f0-49b7-456c-8405-740447ebb192/java:com.intellij.util.io(MPS.IDEA.Modules/)" />
    <import index="fnpx" ref="b00f36f0-49b7-456c-8405-740447ebb192/java:com.intellij.notification(MPS.IDEA.Modules/)" />
    <import index="rfhd" ref="b00f36f0-49b7-456c-8405-740447ebb192/java:com.intellij.openapi.util.registry(MPS.IDEA.Modules/)" />
    <import index="zrh2" ref="b00f36f0-49b7-456c-8405-740447ebb192/java:com.intellij.application.options(MPS.IDEA.Modules/)" />
    <import index="9ti4" ref="b00f36f0-49b7-456c-8405-740447ebb192/java:com.intellij.openapi.extensions(MPS.IDEA.Modules/)" />
    <import index="bd8o" ref="b00f36f0-49b7-456c-8405-740447ebb192/java:com.intellij.openapi.application(MPS.IDEA.Modules/)" />
    <import index="9xw8" ref="b00f36f0-49b7-456c-8405-740447ebb192/java:io.netty.handler.codec.http(MPS.IDEA.Modules/)" />
    <import index="lqgf" ref="b00f36f0-49b7-456c-8405-740447ebb192/java:io.netty.channel(MPS.IDEA.Modules/)" />
    <import index="zn9m" ref="b00f36f0-49b7-456c-8405-740447ebb192/java:com.intellij.openapi.util(MPS.IDEA.Modules/)" />
    <import index="t6h5" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang.reflect(JDK/)" />
    <import index="iil0" ref="b00f36f0-49b7-456c-8405-740447ebb192/java:io.netty.buffer(MPS.IDEA.Modules/)" />
    <import index="ap92" ref="b00f36f0-49b7-456c-8405-740447ebb192/java:io.netty.util(MPS.IDEA.Modules/)" />
    <import index="iwnc" ref="b00f36f0-49b7-456c-8405-740447ebb192/java:org.jetbrains.io(MPS.IDEA.Modules/)" />
    <import index="e5vs" ref="b00f36f0-49b7-456c-8405-740447ebb192/java:org.jetbrains.ide(MPS.IDEA.Modules/)" />
    <import index="9w4s" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.util(MPS.IDEA/)" />
    <import index="zdap" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.util.text(MPS.IDEA/)" />
    <import index="rfhe" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.util.registry(MPS.IDEA/)" />
    <import index="zn9n" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.util(MPS.IDEA/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="2323553266850475941" name="jetbrains.mps.baseLanguage.structure.IHasModifiers" flags="ngI" index="2frcj7">
        <child id="2323553266850475953" name="modifiers" index="2frcjj" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ngI" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="4678410916365116210" name="jetbrains.mps.baseLanguage.structure.DefaultModifier" flags="ng" index="2JFqV2" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
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
        <child id="1164879685961" name="throwsItem" index="Sfmx6" />
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
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
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
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="5858074156537516430" name="jetbrains.mps.baseLanguage.javadoc.structure.ReturnBlockDocTag" flags="ng" index="x79VA">
        <property id="5858074156537516431" name="text" index="x79VB" />
      </concept>
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="5383422241790532083" name="tags" index="3nqlJM" />
      </concept>
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="5085607816302529296" name="jetbrains.mps.baseLanguage.javadoc.structure.IHoldCommentLines" flags="ngI" index="1VezTd">
        <child id="5085607816302529587" name="commentBody" index="1Vez_I" />
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
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1240325842691" name="jetbrains.mps.baseLanguage.collections.structure.AsSequenceOperation" flags="nn" index="39bAoz" />
    </language>
  </registry>
  <node concept="3HP615" id="7IkZ1uxyiq5">
    <property role="TrG5h" value="IHttpRequestHandler" />
    <node concept="2tJIrI" id="7IkZ1uxyvkG" role="jymVt" />
    <node concept="3clFb_" id="5dkEk59WQFn" role="jymVt">
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="canHandle" />
      <node concept="3clFbS" id="5dkEk59WQFq" role="3clF47">
        <node concept="3cpWs6" id="7Zu713oWXSm" role="3cqZAp">
          <node concept="3clFbT" id="7Zu713oWXUc" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5dkEk59WQFr" role="1B3o_S" />
      <node concept="10P_77" id="5dkEk59WQE_" role="3clF45" />
      <node concept="P$JXv" id="7Zu713oSw97" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHsBZt" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsBZu" role="1PaTwD">
            <property role="3oM_SC" value="Additional" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBZv" role="1PaTwD">
            <property role="3oM_SC" value="checks" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBZw" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBZx" role="1PaTwD">
            <property role="3oM_SC" value="verify" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBZy" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBZz" role="1PaTwD">
            <property role="3oM_SC" value="request" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBZ$" role="1PaTwD">
            <property role="3oM_SC" value="can" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBZ_" role="1PaTwD">
            <property role="3oM_SC" value="be" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBZA" role="1PaTwD">
            <property role="3oM_SC" value="handled." />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBZB" role="1PaTwD">
            <property role="3oM_SC" value="Otherwise," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBZC" role="1PaTwD">
            <property role="3oM_SC" value="it" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBZD" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBZE" role="1PaTwD">
            <property role="3oM_SC" value="passed" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBZF" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBZG" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBZH" role="1PaTwD">
            <property role="3oM_SC" value="next" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBZI" role="1PaTwD">
            <property role="3oM_SC" value="MPS" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBZJ" role="1PaTwD">
            <property role="3oM_SC" value="handler," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBZK" role="1PaTwD">
            <property role="3oM_SC" value="if" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBZL" role="1PaTwD">
            <property role="3oM_SC" value="any." />
          </node>
        </node>
      </node>
      <node concept="2JFqV2" id="7Zu713oWXNV" role="2frcjj" />
    </node>
    <node concept="2tJIrI" id="7Zu713oWCVy" role="jymVt" />
    <node concept="3clFb_" id="7Zu713oU8cb" role="jymVt">
      <property role="TrG5h" value="init" />
      <node concept="3clFbS" id="7Zu713oU8ce" role="3clF47" />
      <node concept="3Tm1VV" id="7Zu713oU81B" role="1B3o_S" />
      <node concept="10P_77" id="7Zu713oU8aP" role="3clF45" />
      <node concept="P$JXv" id="7Zu713oWCWV" role="lGtFl">
        <node concept="x79VA" id="7Zu713oWCWY" role="3nqlJM">
          <property role="x79VB" value="" />
          <node concept="1PaTwC" id="1E1X3WHsBZR" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHsBZS" role="1PaTwD">
              <property role="3oM_SC" value="false" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsBZT" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsBZU" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsBZV" role="1PaTwD">
              <property role="3oM_SC" value="request" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsBZW" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsBZX" role="1PaTwD">
              <property role="3oM_SC" value="malformed" />
            </node>
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsBZM" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsBZN" role="1PaTwD">
            <property role="3oM_SC" value="Initialize" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBZO" role="1PaTwD">
            <property role="3oM_SC" value="handler" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBZP" role="1PaTwD">
            <property role="3oM_SC" value="from" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBZQ" role="1PaTwD">
            <property role="3oM_SC" value="request" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5dkEk59WQuY" role="jymVt" />
    <node concept="3clFb_" id="7IkZ1uxyivm" role="jymVt">
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="handle" />
      <node concept="3clFbS" id="7IkZ1uxyivp" role="3clF47" />
      <node concept="3Tm1VV" id="7IkZ1uxyivq" role="1B3o_S" />
      <node concept="3cqZAl" id="5dkEk59WR5q" role="3clF45" />
      <node concept="3uibUv" id="2P0rHDDEmMS" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
    </node>
    <node concept="2tJIrI" id="5FAyHK_Fi5p" role="jymVt" />
    <node concept="3Tm1VV" id="7IkZ1uxyiq6" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="6GArDv5HYVM">
    <property role="TrG5h" value="HttpRequest" />
    <node concept="2tJIrI" id="1Hl7x1asWu_" role="jymVt" />
    <node concept="312cEg" id="6GArDv5I22B" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="request" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="6GArDv5Ipfy" role="1tU5fm">
        <ref role="3uigEE" to="9xw8:~HttpRequest" resolve="HttpRequest" />
      </node>
      <node concept="3Tm6S6" id="6GArDv5I22Q" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="6GArDv5I3px" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="decoder" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6GArDv5I26l" role="1B3o_S" />
      <node concept="3uibUv" id="6GArDv5I3pp" role="1tU5fm">
        <ref role="3uigEE" to="9xw8:~QueryStringDecoder" resolve="QueryStringDecoder" />
      </node>
    </node>
    <node concept="312cEg" id="5dkEk59WCkE" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="channel" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5dkEk59WzJQ" role="1B3o_S" />
      <node concept="3uibUv" id="5dkEk59WAQO" role="1tU5fm">
        <ref role="3uigEE" to="lqgf:~Channel" resolve="Channel" />
      </node>
    </node>
    <node concept="312cEg" id="1Hl7x1asgFn" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="segments" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1Hl7x1asfo5" role="1B3o_S" />
      <node concept="_YKpA" id="1Hl7x1asgCf" role="1tU5fm">
        <node concept="17QB3L" id="7Zu713p30Y2" role="_ZDj9" />
      </node>
    </node>
    <node concept="312cEg" id="5FAyHK_FAnl" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="referrerHost" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5FAyHK_F_IQ" role="1B3o_S" />
      <node concept="17QB3L" id="7Zu713p2YY6" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="5FAyHK_F_jd" role="jymVt" />
    <node concept="3Tm1VV" id="6GArDv5HYVN" role="1B3o_S" />
    <node concept="3clFbW" id="6GArDv5I3qC" role="jymVt">
      <node concept="3cqZAl" id="6GArDv5I3qD" role="3clF45" />
      <node concept="3Tm1VV" id="6GArDv5I3qE" role="1B3o_S" />
      <node concept="3clFbS" id="6GArDv5I3qG" role="3clF47">
        <node concept="3clFbF" id="6GArDv5I3Cd" role="3cqZAp">
          <node concept="37vLTI" id="6GArDv5I4I_" role="3clFbG">
            <node concept="37vLTw" id="6GArDv5I4LH" role="37vLTx">
              <ref role="3cqZAo" node="6GArDv5I3qJ" resolve="request" />
            </node>
            <node concept="2OqwBi" id="6GArDv5I3Gn" role="37vLTJ">
              <node concept="Xjq3P" id="6GArDv5I3Cc" role="2Oq$k0" />
              <node concept="2OwXpG" id="6GArDv5I4jI" role="2OqNvi">
                <ref role="2Oxat5" node="6GArDv5I22B" resolve="request" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6GArDv5I4Rh" role="3cqZAp">
          <node concept="37vLTI" id="6GArDv5I5AT" role="3clFbG">
            <node concept="37vLTw" id="6GArDv5I5E1" role="37vLTx">
              <ref role="3cqZAo" node="6GArDv5I3qT" resolve="decoder" />
            </node>
            <node concept="2OqwBi" id="6GArDv5I4Wn" role="37vLTJ">
              <node concept="Xjq3P" id="6GArDv5I4Rf" role="2Oq$k0" />
              <node concept="2OwXpG" id="6GArDv5I5c4" role="2OqNvi">
                <ref role="2Oxat5" node="6GArDv5I3px" resolve="decoder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5dkEk59WEJp" role="3cqZAp">
          <node concept="37vLTI" id="5dkEk59WGPr" role="3clFbG">
            <node concept="37vLTw" id="5dkEk59WGXI" role="37vLTx">
              <ref role="3cqZAo" node="5dkEk59WEsE" resolve="channel" />
            </node>
            <node concept="2OqwBi" id="5dkEk59WERl" role="37vLTJ">
              <node concept="Xjq3P" id="5dkEk59WEJn" role="2Oq$k0" />
              <node concept="2OwXpG" id="5dkEk59WEZC" role="2OqNvi">
                <ref role="2Oxat5" node="5dkEk59WCkE" resolve="channel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1Hl7x1ashhn" role="3cqZAp">
          <node concept="37vLTI" id="1Hl7x1askPD" role="3clFbG">
            <node concept="1rXfSq" id="1Hl7x1asP_$" role="37vLTx">
              <ref role="37wK5l" node="3sFACrPVVBp" resolve="getSegmentsFor" />
              <node concept="1rXfSq" id="1Hl7x1asQDC" role="37wK5m">
                <ref role="37wK5l" node="6GArDv5Iuw6" resolve="getPath" />
              </node>
            </node>
            <node concept="2OqwBi" id="1Hl7x1ashsW" role="37vLTJ">
              <node concept="Xjq3P" id="1Hl7x1ashhl" role="2Oq$k0" />
              <node concept="2OwXpG" id="1Hl7x1ashGW" role="2OqNvi">
                <ref role="2Oxat5" node="1Hl7x1asgFn" resolve="segments" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5FAyHK_FB2C" role="3cqZAp">
          <node concept="37vLTI" id="5FAyHK_FCdd" role="3clFbG">
            <node concept="1rXfSq" id="5FAyHK_FSzR" role="37vLTx">
              <ref role="37wK5l" node="5FAyHK_FEc$" resolve="getReferrerHost" />
              <node concept="37vLTw" id="5FAyHK_FSAp" role="37wK5m">
                <ref role="3cqZAo" node="6GArDv5I3qJ" resolve="request" />
              </node>
            </node>
            <node concept="2OqwBi" id="5FAyHK_FBkW" role="37vLTJ">
              <node concept="Xjq3P" id="5FAyHK_FB2A" role="2Oq$k0" />
              <node concept="2OwXpG" id="5FAyHK_FB$i" role="2OqNvi">
                <ref role="2Oxat5" node="5FAyHK_FAnl" resolve="referrerHost" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6GArDv5I3qJ" role="3clF46">
        <property role="TrG5h" value="request" />
        <node concept="3uibUv" id="6GArDv5Ip_3" role="1tU5fm">
          <ref role="3uigEE" to="9xw8:~HttpRequest" resolve="HttpRequest" />
        </node>
        <node concept="2AHcQZ" id="6GArDv5I5Lh" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="6GArDv5I3qT" role="3clF46">
        <property role="TrG5h" value="decoder" />
        <node concept="3uibUv" id="6GArDv5I3qS" role="1tU5fm">
          <ref role="3uigEE" to="9xw8:~QueryStringDecoder" resolve="QueryStringDecoder" />
        </node>
        <node concept="2AHcQZ" id="6GArDv5I5NA" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="5dkEk59WEsE" role="3clF46">
        <property role="TrG5h" value="channel" />
        <node concept="3uibUv" id="5dkEk59WEAI" role="1tU5fm">
          <ref role="3uigEE" to="lqgf:~Channel" resolve="Channel" />
        </node>
        <node concept="2AHcQZ" id="5dkEk59WEB8" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3uibUv" id="5FAyHK_FTwu" role="Sfmx6">
        <ref role="3uigEE" to="zf81:~URISyntaxException" resolve="URISyntaxException" />
      </node>
    </node>
    <node concept="2tJIrI" id="6GArDv5I3wo" role="jymVt" />
    <node concept="3clFb_" id="6GArDv5I6qD" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getParameterValue" />
      <node concept="3clFbS" id="6GArDv5I6qG" role="3clF47">
        <node concept="3cpWs6" id="6GArDv5Ildi" role="3cqZAp">
          <node concept="2OqwBi" id="6GArDv5IgFF" role="3cqZAk">
            <node concept="2OqwBi" id="6GArDv5I7fO" role="2Oq$k0">
              <node concept="37vLTw" id="6GArDv5I78X" role="2Oq$k0">
                <ref role="3cqZAo" node="6GArDv5I3px" resolve="decoder" />
              </node>
              <node concept="liA8E" id="6GArDv5I7ov" role="2OqNvi">
                <ref role="37wK5l" to="9xw8:~QueryStringDecoder.parameters()" resolve="parameters" />
              </node>
            </node>
            <node concept="liA8E" id="6GArDv5IhC8" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
              <node concept="37vLTw" id="6GArDv5IhTL" role="37wK5m">
                <ref role="3cqZAo" node="6GArDv5I735" resolve="key" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6GArDv5I6kR" role="1B3o_S" />
      <node concept="37vLTG" id="6GArDv5I735" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="17QB3L" id="6GArDv5I734" role="1tU5fm" />
      </node>
      <node concept="_YKpA" id="6GArDv5ImRA" role="3clF45">
        <node concept="17QB3L" id="7Zu713p2VQr" role="_ZDj9" />
      </node>
    </node>
    <node concept="2tJIrI" id="6GArDv5ItQm" role="jymVt" />
    <node concept="3clFb_" id="6GArDv5Iuw6" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getPath" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="6GArDv5Iuw9" role="3clF47">
        <node concept="3cpWs6" id="6GArDv5IuIx" role="3cqZAp">
          <node concept="2OqwBi" id="6GArDv5IuZq" role="3cqZAk">
            <node concept="37vLTw" id="6GArDv5IuKb" role="2Oq$k0">
              <ref role="3cqZAo" node="6GArDv5I3px" resolve="decoder" />
            </node>
            <node concept="liA8E" id="6GArDv5Iwtr" role="2OqNvi">
              <ref role="37wK5l" to="9xw8:~QueryStringDecoder.path()" resolve="path" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6GArDv5Iui5" role="1B3o_S" />
      <node concept="17QB3L" id="6GArDv5Iuw0" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="6GArDv5InBj" role="jymVt" />
    <node concept="3clFb_" id="1Hl7x1atdjC" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getSegments" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="1Hl7x1atdjF" role="3clF47">
        <node concept="3cpWs6" id="1Hl7x1atepn" role="3cqZAp">
          <node concept="37vLTw" id="1Hl7x1ateR$" role="3cqZAk">
            <ref role="3cqZAo" node="1Hl7x1asgFn" resolve="segments" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1Hl7x1atcLA" role="1B3o_S" />
      <node concept="_YKpA" id="1Hl7x1atdTa" role="3clF45">
        <node concept="17QB3L" id="7Zu713p2Weh" role="_ZDj9" />
      </node>
    </node>
    <node concept="2tJIrI" id="1Hl7x1atcfK" role="jymVt" />
    <node concept="3clFb_" id="6GArDv5InWj" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getReferrerHost" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="6GArDv5InWm" role="3clF47">
        <node concept="3cpWs6" id="6GArDv5Iona" role="3cqZAp">
          <node concept="37vLTw" id="5FAyHK_FCKK" role="3cqZAk">
            <ref role="3cqZAo" node="5FAyHK_FAnl" resolve="referrerHost" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6GArDv5InM6" role="1B3o_S" />
      <node concept="17QB3L" id="6GArDv5InWd" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="33sncJYNufz" role="jymVt" />
    <node concept="3clFb_" id="33sncJYNxJM" role="jymVt">
      <property role="TrG5h" value="getMethod" />
      <node concept="3clFbS" id="33sncJYNxJP" role="3clF47">
        <node concept="3cpWs6" id="33sncJYNyGP" role="3cqZAp">
          <node concept="2OqwBi" id="7Z2y3gaXibE" role="3cqZAk">
            <node concept="2OqwBi" id="33sncJYNzID" role="2Oq$k0">
              <node concept="37vLTw" id="33sncJYNyI3" role="2Oq$k0">
                <ref role="3cqZAo" node="6GArDv5I22B" resolve="request" />
              </node>
              <node concept="liA8E" id="33sncJYN$zk" role="2OqNvi">
                <ref role="37wK5l" to="9xw8:~HttpRequest.getMethod()" resolve="getMethod" />
              </node>
            </node>
            <node concept="liA8E" id="7Z2y3gaXj$a" role="2OqNvi">
              <ref role="37wK5l" to="9xw8:~HttpMethod.name()" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="33sncJYNwM1" role="1B3o_S" />
      <node concept="17QB3L" id="33sncJYNAxF" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="5FAyHK_BVR6" role="jymVt" />
    <node concept="3clFb_" id="5FAyHK_BXzF" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="sendResponse" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="5FAyHK_BXzI" role="3clF47">
        <node concept="3SKdUt" id="7wn_QEF__eG" role="3cqZAp">
          <node concept="1PaTwC" id="7wn_QEF__eH" role="1aUNEU">
            <node concept="3oM_SD" id="7wn_QEF__zy" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="7wn_QEF__z$" role="1PaTwD">
              <property role="3oM_SC" value="long" />
            </node>
            <node concept="3oM_SD" id="7wn_QEF__zB" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="7wn_QEF__zF" role="1PaTwD">
              <property role="3oM_SC" value="MPS.IDEA" />
            </node>
            <node concept="3oM_SD" id="7wn_QEF__zK" role="1PaTwD">
              <property role="3oM_SC" value="exposes" />
            </node>
            <node concept="3oM_SD" id="7wn_QEF__zQ" role="1PaTwD">
              <property role="3oM_SC" value="io.netty," />
            </node>
            <node concept="3oM_SD" id="7wn_QEF__zX" role="1PaTwD">
              <property role="3oM_SC" value="have" />
            </node>
            <node concept="3oM_SD" id="7wn_QEF__$5" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="7wn_QEF__$e" role="1PaTwD">
              <property role="3oM_SC" value="reference" />
            </node>
            <node concept="3oM_SD" id="7wn_QEF__$J" role="1PaTwD">
              <property role="3oM_SC" value="FullHttpResponse" />
            </node>
            <node concept="3oM_SD" id="7wn_QEF__$U" role="1PaTwD">
              <property role="3oM_SC" value="here" />
            </node>
            <node concept="3oM_SD" id="7wn_QEF___6" role="1PaTwD">
              <property role="3oM_SC" value="through" />
            </node>
            <node concept="3oM_SD" id="7wn_QEF___j" role="1PaTwD">
              <property role="3oM_SC" value="MPS.IDEA" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="7wn_QEF_ARO" role="3cqZAp">
          <node concept="1PaTwC" id="7wn_QEF_ARP" role="1aUNEU">
            <node concept="3oM_SD" id="7wn_QEF_C8m" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="7wn_QEF_C8o" role="1PaTwD">
              <property role="3oM_SC" value="satisfy" />
            </node>
            <node concept="3oM_SD" id="7wn_QEF_C8r" role="1PaTwD">
              <property role="3oM_SC" value="Responses.send" />
            </node>
            <node concept="3oM_SD" id="7wn_QEF_C8v" role="1PaTwD">
              <property role="3oM_SC" value="call" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5FAyHK_C47b" role="3cqZAp">
          <node concept="3cpWsn" id="5FAyHK_C47c" role="3cpWs9">
            <property role="TrG5h" value="response" />
            <node concept="3uibUv" id="5FAyHK_C47d" role="1tU5fm">
              <ref role="3uigEE" to="9xw8:~FullHttpResponse" resolve="FullHttpResponse" />
            </node>
            <node concept="2YIFZM" id="5FAyHK_C4aP" role="33vP2m">
              <ref role="1Pybhc" to="iwnc:~Responses" resolve="Responses" />
              <ref role="37wK5l" to="iwnc:~Responses.response(java.lang.String,io.netty.buffer.ByteBuf)" resolve="response" />
              <node concept="37vLTw" id="5FAyHK_C4cR" role="37wK5m">
                <ref role="3cqZAo" node="5FAyHK_BY3M" resolve="contentType" />
              </node>
              <node concept="37vLTw" id="5FAyHK_C4lj" role="37wK5m">
                <ref role="3cqZAo" node="5FAyHK_BYvr" resolve="buffer" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5FAyHK_C4Mp" role="3cqZAp">
          <node concept="2OqwBi" id="5FAyHK_C59D" role="3clFbG">
            <node concept="37vLTw" id="5FAyHK_C4Mn" role="2Oq$k0">
              <ref role="3cqZAo" node="5FAyHK_C47c" resolve="response" />
            </node>
            <node concept="liA8E" id="5FAyHK_C6rb" role="2OqNvi">
              <ref role="37wK5l" to="9xw8:~FullHttpResponse.setStatus(io.netty.handler.codec.http.HttpResponseStatus)" resolve="setStatus" />
              <node concept="37vLTw" id="5FAyHK_C6tJ" role="37wK5m">
                <ref role="3cqZAo" node="5FAyHK_C32t" resolve="status" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5FAyHK_C6Bx" role="3cqZAp">
          <node concept="2YIFZM" id="5FAyHK_C6Dm" role="3clFbG">
            <ref role="1Pybhc" to="iwnc:~Responses" resolve="Responses" />
            <ref role="37wK5l" to="iwnc:~Responses.send(io.netty.handler.codec.http.HttpResponse,io.netty.channel.Channel,io.netty.handler.codec.http.HttpRequest)" resolve="send" />
            <node concept="37vLTw" id="5FAyHK_C6FB" role="37wK5m">
              <ref role="3cqZAo" node="5FAyHK_C47c" resolve="response" />
            </node>
            <node concept="37vLTw" id="5FAyHK_C6Kd" role="37wK5m">
              <ref role="3cqZAo" node="5dkEk59WCkE" resolve="channel" />
            </node>
            <node concept="37vLTw" id="5FAyHK_C6WV" role="37wK5m">
              <ref role="3cqZAo" node="6GArDv5I22B" resolve="request" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5FAyHK_BVqa" role="1B3o_S" />
      <node concept="3cqZAl" id="5FAyHK_BXzx" role="3clF45" />
      <node concept="37vLTG" id="5FAyHK_C32t" role="3clF46">
        <property role="TrG5h" value="status" />
        <node concept="3uibUv" id="5FAyHK_C3Ac" role="1tU5fm">
          <ref role="3uigEE" to="9xw8:~HttpResponseStatus" resolve="HttpResponseStatus" />
        </node>
      </node>
      <node concept="37vLTG" id="5FAyHK_BY3M" role="3clF46">
        <property role="TrG5h" value="contentType" />
        <node concept="17QB3L" id="5FAyHK_BY3L" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5FAyHK_BYvr" role="3clF46">
        <property role="TrG5h" value="buffer" />
        <node concept="3uibUv" id="5FAyHK_C1$7" role="1tU5fm">
          <ref role="3uigEE" to="iil0:~ByteBuf" resolve="ByteBuf" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5YhakczIubC" role="jymVt" />
    <node concept="3clFb_" id="5YhakczIvRr" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="sendText" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="5YhakczIvRu" role="3clF47">
        <node concept="3clFbF" id="5YhakczIl4A" role="3cqZAp">
          <node concept="2OqwBi" id="5YhakczIl4B" role="3clFbG">
            <node concept="Xjq3P" id="5YhakczIlwP" role="2Oq$k0" />
            <node concept="liA8E" id="5YhakczIl4D" role="2OqNvi">
              <ref role="37wK5l" node="5FAyHK_BXzF" resolve="sendResponse" />
              <node concept="37vLTw" id="5YhakczImKW" role="37wK5m">
                <ref role="3cqZAo" node="5YhakczIwwe" resolve="status" />
              </node>
              <node concept="Xl_RD" id="5YhakczIl4F" role="37wK5m">
                <property role="Xl_RC" value="text/plain" />
              </node>
              <node concept="2YIFZM" id="5YhakczIl4G" role="37wK5m">
                <ref role="37wK5l" to="iil0:~Unpooled.copiedBuffer(java.lang.CharSequence,java.nio.charset.Charset)" resolve="copiedBuffer" />
                <ref role="1Pybhc" to="iil0:~Unpooled" resolve="Unpooled" />
                <node concept="37vLTw" id="5YhakczIzXq" role="37wK5m">
                  <ref role="3cqZAo" node="5YhakczIx0u" resolve="message" />
                </node>
                <node concept="10M0yZ" id="5YhakczIl4N" role="37wK5m">
                  <ref role="3cqZAo" to="ap92:~CharsetUtil.UTF_8" resolve="UTF_8" />
                  <ref role="1PxDUh" to="ap92:~CharsetUtil" resolve="CharsetUtil" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5YhakczIviT" role="1B3o_S" />
      <node concept="3cqZAl" id="5YhakczIvRi" role="3clF45" />
      <node concept="37vLTG" id="5YhakczIwwe" role="3clF46">
        <property role="TrG5h" value="status" />
        <node concept="3uibUv" id="5YhakczIwwd" role="1tU5fm">
          <ref role="3uigEE" to="9xw8:~HttpResponseStatus" resolve="HttpResponseStatus" />
        </node>
      </node>
      <node concept="37vLTG" id="5YhakczIx0u" role="3clF46">
        <property role="TrG5h" value="message" />
        <node concept="17QB3L" id="5YhakczIxxA" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="5YhakczIrWX" role="jymVt" />
    <node concept="3clFb_" id="5YhakczIim2" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="sendErrorResponse" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="5YhakczIim5" role="3clF47">
        <node concept="3clFbF" id="5YhakczI$6u" role="3cqZAp">
          <node concept="2OqwBi" id="5YhakczI$bw" role="3clFbG">
            <node concept="Xjq3P" id="5YhakczI$6t" role="2Oq$k0" />
            <node concept="liA8E" id="5YhakczI$iX" role="2OqNvi">
              <ref role="37wK5l" node="5YhakczIvRr" resolve="sendText" />
              <node concept="37vLTw" id="5YhakczI$qq" role="37wK5m">
                <ref role="3cqZAo" node="5YhakczIlOH" resolve="status" />
              </node>
              <node concept="3cpWs3" id="5YhakczIl4H" role="37wK5m">
                <node concept="3cpWs3" id="5YhakczIl4I" role="3uHU7B">
                  <node concept="Xl_RD" id="5YhakczIl4K" role="3uHU7w">
                    <property role="Xl_RC" value="\n\n" />
                  </node>
                  <node concept="37vLTw" id="5YhakczIq3D" role="3uHU7B">
                    <ref role="3cqZAo" node="5YhakczIiMf" resolve="message" />
                  </node>
                </node>
                <node concept="2YIFZM" id="5YhakczIl4L" role="3uHU7w">
                  <ref role="37wK5l" to="9w4s:~ExceptionUtil.getThrowableText(java.lang.Throwable)" resolve="getThrowableText" />
                  <ref role="1Pybhc" to="9w4s:~ExceptionUtil" resolve="ExceptionUtil" />
                  <node concept="37vLTw" id="5YhakczIqj1" role="37wK5m">
                    <ref role="3cqZAo" node="5YhakczIjaj" resolve="error" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5YhakczIhU4" role="1B3o_S" />
      <node concept="3cqZAl" id="5YhakczIile" role="3clF45" />
      <node concept="37vLTG" id="5YhakczIlOH" role="3clF46">
        <property role="TrG5h" value="status" />
        <node concept="3uibUv" id="5YhakczIlOI" role="1tU5fm">
          <ref role="3uigEE" to="9xw8:~HttpResponseStatus" resolve="HttpResponseStatus" />
        </node>
      </node>
      <node concept="37vLTG" id="5YhakczIiMf" role="3clF46">
        <property role="TrG5h" value="message" />
        <node concept="17QB3L" id="5YhakczIiMe" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5YhakczIjaj" role="3clF46">
        <property role="TrG5h" value="error" />
        <node concept="3uibUv" id="5YhakczIj$R" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1Hl7x1askXR" role="jymVt" />
    <node concept="2YIFZL" id="3sFACrPVVBp" role="jymVt">
      <property role="TrG5h" value="getSegmentsFor" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="3sFACrPVVBs" role="3clF47">
        <node concept="3clFbJ" id="5fiBL1fGHX0" role="3cqZAp">
          <node concept="3clFbS" id="5fiBL1fGHX2" role="3clFbx">
            <node concept="3clFbF" id="5fiBL1fGIQi" role="3cqZAp">
              <node concept="37vLTI" id="5fiBL1fGJnk" role="3clFbG">
                <node concept="2OqwBi" id="5fiBL1fGJG2" role="37vLTx">
                  <node concept="37vLTw" id="5fiBL1fGJxl" role="2Oq$k0">
                    <ref role="3cqZAo" node="3sFACrPVVOQ" resolve="path" />
                  </node>
                  <node concept="liA8E" id="5fiBL1fGJTN" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.substring(int)" resolve="substring" />
                    <node concept="3cmrfG" id="5fiBL1fGKC1" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="5fiBL1fGIQg" role="37vLTJ">
                  <ref role="3cqZAo" node="3sFACrPVVOQ" resolve="path" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5fiBL1fGIjF" role="3clFbw">
            <node concept="37vLTw" id="5fiBL1fGI44" role="2Oq$k0">
              <ref role="3cqZAo" node="3sFACrPVVOQ" resolve="path" />
            </node>
            <node concept="liA8E" id="5fiBL1fGI_l" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
              <node concept="Xl_RD" id="5fiBL1fGIFC" role="37wK5m">
                <property role="Xl_RC" value="/" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1Hl7x1asrZC" role="3cqZAp">
          <node concept="2OqwBi" id="5fiBL1fGMvA" role="3clFbG">
            <node concept="2OqwBi" id="1Hl7x1asGCt" role="2Oq$k0">
              <node concept="2OqwBi" id="3sFACrPWJVy" role="2Oq$k0">
                <node concept="37vLTw" id="3sFACrPWJyl" role="2Oq$k0">
                  <ref role="3cqZAo" node="3sFACrPVVOQ" resolve="path" />
                </node>
                <node concept="liA8E" id="5fiBL1fGDkK" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.split(java.lang.String)" resolve="split" />
                  <node concept="Xl_RD" id="5fiBL1fGDvI" role="37wK5m">
                    <property role="Xl_RC" value="/" />
                  </node>
                </node>
              </node>
              <node concept="39bAoz" id="1Hl7x1asImf" role="2OqNvi" />
            </node>
            <node concept="ANE8D" id="5fiBL1fGMCp" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1Hl7x1at93D" role="1B3o_S" />
      <node concept="37vLTG" id="3sFACrPVVOQ" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="17QB3L" id="3sFACrPVVOP" role="1tU5fm" />
      </node>
      <node concept="_YKpA" id="1Hl7x1aspvt" role="3clF45">
        <node concept="17QB3L" id="7Zu713p2WAb" role="_ZDj9" />
      </node>
    </node>
    <node concept="2tJIrI" id="1Hl7x1aso_5" role="jymVt" />
    <node concept="2YIFZL" id="5FAyHK_FEc$" role="jymVt">
      <property role="TrG5h" value="getReferrerHost" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="5FAyHK_FEcB" role="3clF47">
        <node concept="3cpWs8" id="5FAyHK_FnbW" role="3cqZAp">
          <node concept="3cpWsn" id="5FAyHK_FnbZ" role="3cpWs9">
            <property role="TrG5h" value="refferer" />
            <node concept="2YIFZM" id="7Z2y3gaSDDx" role="33vP2m">
              <ref role="37wK5l" to="g1go:~NettyKt.getOrigin(io.netty.handler.codec.http.HttpRequest)" resolve="getOrigin" />
              <ref role="1Pybhc" to="g1go:~NettyKt" resolve="NettyKt" />
              <node concept="37vLTw" id="7Z2y3gaSDDy" role="37wK5m">
                <ref role="3cqZAo" node="5FAyHK_FEFG" resolve="request" />
              </node>
            </node>
            <node concept="17QB3L" id="5FAyHK_FnbU" role="1tU5fm" />
          </node>
        </node>
        <node concept="3clFbJ" id="5FAyHK_FpDc" role="3cqZAp">
          <node concept="3clFbS" id="5FAyHK_FpDe" role="3clFbx">
            <node concept="3clFbF" id="5FAyHK_FraK" role="3cqZAp">
              <node concept="37vLTI" id="5FAyHK_FrZb" role="3clFbG">
                <node concept="2YIFZM" id="7mDgzTUY_Z6" role="37vLTx">
                  <ref role="37wK5l" to="g1go:~NettyKt.getReferrer(io.netty.handler.codec.http.HttpRequest)" resolve="getReferrer" />
                  <ref role="1Pybhc" to="g1go:~NettyKt" resolve="NettyKt" />
                  <node concept="37vLTw" id="7mDgzTUY_Z7" role="37wK5m">
                    <ref role="3cqZAo" node="5FAyHK_FEFG" resolve="request" />
                  </node>
                </node>
                <node concept="37vLTw" id="5FAyHK_FraI" role="37vLTJ">
                  <ref role="3cqZAo" node="5FAyHK_FnbZ" resolve="refferer" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="5FAyHK_Fr0F" role="3clFbw">
            <node concept="10Nm6u" id="5FAyHK_Fr2L" role="3uHU7w" />
            <node concept="37vLTw" id="5FAyHK_FpVy" role="3uHU7B">
              <ref role="3cqZAo" node="5FAyHK_FnbZ" resolve="refferer" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5FAyHK_FskM" role="3cqZAp" />
        <node concept="3clFbF" id="5FAyHK_FG6J" role="3cqZAp">
          <node concept="2YIFZM" id="5FAyHK_FWVI" role="3clFbG">
            <ref role="37wK5l" to="zdap:~StringUtil.nullize(java.lang.String)" resolve="nullize" />
            <ref role="1Pybhc" to="zdap:~StringUtil" resolve="StringUtil" />
            <node concept="3K4zz7" id="5yeCBqdORJ2" role="37wK5m">
              <node concept="3clFbC" id="5yeCBqdOSEJ" role="3K4Cdx">
                <node concept="10Nm6u" id="5yeCBqdOSFX" role="3uHU7w" />
                <node concept="37vLTw" id="5yeCBqdORNW" role="3uHU7B">
                  <ref role="3cqZAo" node="5FAyHK_FnbZ" resolve="refferer" />
                </node>
              </node>
              <node concept="10Nm6u" id="5yeCBqdOSKX" role="3K4E3e" />
              <node concept="2OqwBi" id="5FAyHK_FIP5" role="3K4GZi">
                <node concept="2ShNRf" id="5FAyHK_FHzd" role="2Oq$k0">
                  <node concept="1pGfFk" id="5FAyHK_FI8w" role="2ShVmc">
                    <ref role="37wK5l" to="zf81:~URI.&lt;init&gt;(java.lang.String)" resolve="URI" />
                    <node concept="37vLTw" id="5FAyHK_FId6" role="37wK5m">
                      <ref role="3cqZAo" node="5FAyHK_FnbZ" resolve="refferer" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="5FAyHK_FJvo" role="2OqNvi">
                  <ref role="37wK5l" to="zf81:~URI.getHost()" resolve="getHost" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5FAyHK_FEGv" role="1B3o_S" />
      <node concept="17QB3L" id="5FAyHK_FEcq" role="3clF45" />
      <node concept="37vLTG" id="5FAyHK_FEFG" role="3clF46">
        <property role="TrG5h" value="request" />
        <node concept="3uibUv" id="5FAyHK_FEFF" role="1tU5fm">
          <ref role="3uigEE" to="9xw8:~HttpRequest" resolve="HttpRequest" />
        </node>
      </node>
      <node concept="3uibUv" id="5FAyHK_FR$$" role="Sfmx6">
        <ref role="3uigEE" to="zf81:~URISyntaxException" resolve="URISyntaxException" />
      </node>
    </node>
  </node>
  <node concept="3HP615" id="3D_I_vuBX$7">
    <property role="TrG5h" value="IHttpRequestHandlerFactory" />
    <node concept="2tJIrI" id="3D_I_vuBX$T" role="jymVt" />
    <node concept="3clFb_" id="6qcSpWPQxIi" role="jymVt">
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getHandlerName" />
      <node concept="3clFbS" id="6qcSpWPQxIl" role="3clF47" />
      <node concept="3Tm1VV" id="6qcSpWPQxIm" role="1B3o_S" />
      <node concept="17QB3L" id="6qcSpWPQxHR" role="3clF45" />
      <node concept="2AHcQZ" id="6qcSpWPQ$Lr" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="3D_I_vuCkGH" role="jymVt" />
    <node concept="3clFb_" id="7Zu713oShTt" role="jymVt">
      <property role="TrG5h" value="getServicePrefix" />
      <node concept="3clFbS" id="7Zu713oShTw" role="3clF47" />
      <node concept="17QB3L" id="7Zu713oShS9" role="3clF45" />
      <node concept="P$JXv" id="7Zu713p31th" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHsBZY" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsBZZ" role="1PaTwD">
            <property role="3oM_SC" value="Returns" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC00" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC01" role="1PaTwD">
            <property role="3oM_SC" value="HTTP" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC02" role="1PaTwD">
            <property role="3oM_SC" value="prefix" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC03" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC04" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC05" role="1PaTwD">
            <property role="3oM_SC" value="supported" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC06" role="1PaTwD">
            <property role="3oM_SC" value="endpoint" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7Zu713oSwbq" role="jymVt" />
    <node concept="3clFb_" id="7Zu713oSmvf" role="jymVt">
      <property role="TrG5h" value="getSupportedMethods" />
      <node concept="3clFbS" id="7Zu713oSmvi" role="3clF47" />
      <node concept="_YKpA" id="7Zu713oSriD" role="3clF45">
        <node concept="17QB3L" id="7Zu713oSriE" role="_ZDj9" />
      </node>
      <node concept="P$JXv" id="7Zu713p31vP" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHsC07" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsC08" role="1PaTwD">
            <property role="3oM_SC" value="Returns" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC09" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC0a" role="1PaTwD">
            <property role="3oM_SC" value="list" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC0b" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC0c" role="1PaTwD">
            <property role="3oM_SC" value="supported" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC0d" role="1PaTwD">
            <property role="3oM_SC" value="methods" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC0e" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC0f" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC0g" role="1PaTwD">
            <property role="3oM_SC" value="supported" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC0h" role="1PaTwD">
            <property role="3oM_SC" value="endpoint" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7Zu713oSwxn" role="jymVt" />
    <node concept="3clFb_" id="3D_I_vuCcUR" role="jymVt">
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="create" />
      <node concept="3clFbS" id="3D_I_vuCcUU" role="3clF47" />
      <node concept="3Tm1VV" id="3D_I_vuCcUV" role="1B3o_S" />
      <node concept="3uibUv" id="3D_I_vuCd0s" role="3clF45">
        <ref role="3uigEE" node="7IkZ1uxyiq5" resolve="IHttpRequestHandler" />
      </node>
      <node concept="37vLTG" id="3D_I_vuCcY7" role="3clF46">
        <property role="TrG5h" value="request" />
        <node concept="3uibUv" id="3D_I_vuCcY6" role="1tU5fm">
          <ref role="3uigEE" node="6GArDv5HYVM" resolve="HttpRequest" />
        </node>
        <node concept="2AHcQZ" id="3D_I_vuCd9R" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3D_I_vuCd9b" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="3Tm1VV" id="3D_I_vuBX$8" role="1B3o_S" />
  </node>
</model>

