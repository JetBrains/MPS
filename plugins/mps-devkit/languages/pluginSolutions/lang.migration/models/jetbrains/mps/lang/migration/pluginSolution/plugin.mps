<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ecbd9874-078d-4efd-b8c2-31475fda8f48(jetbrains.mps.lang.migration.pluginSolution.plugin)">
  <persistence version="9" />
  <languages>
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="c7d5b9dd-a05f-4be2-bc73-f2e16994cc67" name="jetbrains.mps.baseLanguage.lightweightdsl" version="1" />
    <use id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation" version="5" />
    <use id="c0080a47-7e37-4558-bee9-9ae18e690549" name="jetbrains.mps.lang.extension" version="2" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="0" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="53vh" ref="r:53885008-7612-46ff-8b11-27f1d42c3adb(jetbrains.mps.lang.migration.structure)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="90d" ref="r:421d64ed-8024-497f-aeab-8bddeb389dd2(jetbrains.mps.lang.extension.methods)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="6f4m" ref="528ff3b9-5fc4-40dd-931f-c6ce3650640e/r:f69c3fa1-0e30-4980-84e2-190ae44e4c3d(jetbrains.mps.lang.migration.runtime/jetbrains.mps.lang.migration.runtime.base)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="g4jo" ref="r:d98d04fb-4a60-4106-81cf-6cb40b67de4d(jetbrains.mps.ide.findusages.model)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="yyf4" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.util(MPS.OpenAPI/)" />
    <import index="5nvm" ref="r:27bc780b-59b2-4d26-9db5-a38b63c35884(jetbrains.mps.refactoring.participant)" />
    <import index="4ugc" ref="r:bd779a69-a10b-4882-b646-c1303f2dd4f7(jetbrains.mps.refactoring.participant.plugin)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="vndm" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.language(MPS.Core/)" />
    <import index="3a50" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide(MPS.Platform/)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" implicit="true" />
    <import index="1ctc" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.stream(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="3235159848334022093" name="jetbrains.mps.lang.behavior.structure.Node_ConceptMethodCall" flags="nn" index="3zqWPK" />
    </language>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="7485977462274819189" name="jetbrains.mps.baseLanguage.structure.FormatOperation" flags="ng" index="2cAKMz">
        <child id="7485977462274819664" name="arguments" index="2cAKU6" />
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
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
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
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
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
      <concept id="1109279763828" name="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration" flags="ng" index="16euLQ" />
      <concept id="1109279851642" name="jetbrains.mps.baseLanguage.structure.GenericDeclaration" flags="ng" index="16eOlS">
        <child id="1109279881614" name="typeVariableDeclaration" index="16eVyc" />
      </concept>
      <concept id="1109283449304" name="jetbrains.mps.baseLanguage.structure.TypeVariableReference" flags="in" index="16syzq">
        <reference id="1109283546497" name="typeVariableDeclaration" index="16sUi3" />
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
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
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
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1073063089578" name="jetbrains.mps.baseLanguage.structure.SuperMethodCall" flags="nn" index="3nyPlj" />
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1171903607971" name="jetbrains.mps.baseLanguage.structure.WildCardType" flags="in" index="3qTvmN" />
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
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
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
        <child id="1201186121363" name="typeParameter" index="2Ghqu4" />
      </concept>
    </language>
    <language id="c0080a47-7e37-4558-bee9-9ae18e690549" name="jetbrains.mps.lang.extension">
      <concept id="6626851894249711936" name="jetbrains.mps.lang.extension.structure.ExtensionPointExpression" flags="nn" index="2O5UvJ">
        <reference id="6626851894249712469" name="extensionPoint" index="2O5UnU" />
      </concept>
      <concept id="3175313036448560967" name="jetbrains.mps.lang.extension.structure.GetExtensionObjectsOperation" flags="nn" index="SfwO_" />
      <concept id="126958800891274162" name="jetbrains.mps.lang.extension.structure.Extension" flags="ig" index="1lYeZD">
        <reference id="126958800891274597" name="extensionPoint" index="1lYe$Y" />
      </concept>
    </language>
    <language id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots">
      <concept id="4079382982702596667" name="jetbrains.mps.baseLanguage.checkedDots.structure.CheckedDotExpression" flags="nn" index="2EnYce" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="c7d5b9dd-a05f-4be2-bc73-f2e16994cc67" name="jetbrains.mps.baseLanguage.lightweightdsl">
      <concept id="3751132065236767083" name="jetbrains.mps.baseLanguage.lightweightdsl.structure.DependentTypeInstance" flags="ig" index="q3mfm">
        <reference id="3751132065236767084" name="decl" index="q3mfh" />
        <reference id="9097849371505568270" name="point" index="1QQUv3" />
      </concept>
      <concept id="3751132065236767060" name="jetbrains.mps.baseLanguage.lightweightdsl.structure.MethodInstance" flags="ig" index="q3mfD">
        <reference id="19209059688387895" name="decl" index="2VtyIY" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="5455284157994012186" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitLink" flags="ng" index="2pIpSj">
        <reference id="5455284157994012188" name="link" index="2pIpSl" />
        <child id="1595412875168045827" name="initValue" index="28nt2d" />
      </concept>
      <concept id="5455284157993911077" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitProperty" flags="ng" index="2pJxcG">
        <reference id="5455284157993911078" name="property" index="2pJxcJ" />
        <child id="1595412875168045201" name="initValue" index="28ntcv" />
      </concept>
      <concept id="5455284157993863837" name="jetbrains.mps.lang.quotation.structure.NodeBuilder" flags="nn" index="2pJPEk">
        <child id="5455284157993863838" name="quotedNode" index="2pJPEn" />
      </concept>
      <concept id="5455284157993863840" name="jetbrains.mps.lang.quotation.structure.NodeBuilderNode" flags="nn" index="2pJPED">
        <reference id="5455284157993910961" name="concept" index="2pJxaS" />
        <child id="5455284157993911099" name="values" index="2pJxcM" />
      </concept>
      <concept id="6985522012210254362" name="jetbrains.mps.lang.quotation.structure.NodeBuilderPropertyExpression" flags="nn" index="WxPPo">
        <child id="6985522012210254363" name="expression" index="WxPPp" />
      </concept>
      <concept id="8182547171709752110" name="jetbrains.mps.lang.quotation.structure.NodeBuilderExpression" flags="nn" index="36biLy">
        <child id="8182547171709752112" name="expression" index="36biLW" />
      </concept>
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="2034914114981261497" name="jetbrains.mps.baseLanguage.logging.structure.LogLowLevelStatement" flags="ng" index="RRSsy">
        <property id="2034914114981261751" name="severity" index="RRSoG" />
        <child id="2034914114981261753" name="message" index="RRSoy" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="5045161044515397667" name="jetbrains.mps.lang.smodel.structure.Node_PointerOperation" flags="ng" index="iZEcu" />
      <concept id="4497478346159780083" name="jetbrains.mps.lang.smodel.structure.LanguageRefExpression" flags="ng" index="pHN19">
        <child id="3542851458883491298" name="languageId" index="2V$M_3" />
      </concept>
      <concept id="8758390115028452779" name="jetbrains.mps.lang.smodel.structure.Node_GetReferencesOperation" flags="nn" index="2z74zc" />
      <concept id="1138757581985" name="jetbrains.mps.lang.smodel.structure.Link_SetNewChildOperation" flags="nn" index="zfrQC">
        <reference id="1139880128956" name="concept" index="1A9B2P" />
      </concept>
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="3542851458883438784" name="jetbrains.mps.lang.smodel.structure.LanguageId" flags="nn" index="2V$Bhx">
        <property id="3542851458883439831" name="namespace" index="2V$B1Q" />
        <property id="3542851458883439832" name="languageId" index="2V$B1T" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
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
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435808" name="initValue" index="HW$Y0" />
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="4611582986551314327" name="jetbrains.mps.baseLanguage.collections.structure.OfTypeOperation" flags="nn" index="UnYns">
        <child id="4611582986551314344" name="requestedType" index="UnYnz" />
      </concept>
      <concept id="1201792049884" name="jetbrains.mps.baseLanguage.collections.structure.TranslateOperation" flags="nn" index="3goQfb" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
      </concept>
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="9042586985346099698" name="jetbrains.mps.baseLanguage.collections.structure.MultiForEachStatement" flags="nn" index="1_o_46">
        <child id="9042586985346099734" name="forEach" index="1_o_by" />
      </concept>
      <concept id="9042586985346099733" name="jetbrains.mps.baseLanguage.collections.structure.MultiForEachPair" flags="ng" index="1_o_bx">
        <child id="9042586985346099778" name="variable" index="1_o_aQ" />
        <child id="9042586985346099735" name="input" index="1_o_bz" />
      </concept>
      <concept id="9042586985346099736" name="jetbrains.mps.baseLanguage.collections.structure.MultiForEachVariable" flags="ng" index="1_o_bG" />
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
      <concept id="8293956702609956630" name="jetbrains.mps.baseLanguage.collections.structure.MultiForEachVariableReference" flags="nn" index="3M$PaV">
        <reference id="8293956702609966325" name="variable" index="3M$S_o" />
      </concept>
      <concept id="1178894719932" name="jetbrains.mps.baseLanguage.collections.structure.DistinctOperation" flags="nn" index="1VAtEI" />
    </language>
  </registry>
  <node concept="2DaZZR" id="2uZcAeY9zAC" />
  <node concept="312cEu" id="3r9sVr9QSkh">
    <property role="TrG5h" value="MoveNodeRefactoringLogParticipant" />
    <node concept="2tJIrI" id="3r9sVr9QWQt" role="jymVt" />
    <node concept="1lYeZD" id="yGIPhwGlfh" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="MoveNodeRefactoringLogParticipant_extension" />
      <ref role="1lYe$Y" to="4ugc:3KqYwoBJieG" resolve="MoveNodeParticipantEP" />
      <node concept="3Tm1VV" id="yGIPhwGlfi" role="1B3o_S" />
      <node concept="q3mfD" id="yGIPhwGlfj" role="jymVt">
        <property role="TrG5h" value="get" />
        <ref role="2VtyIY" to="90d:3zLwYDe0svr" resolve="get" />
        <node concept="3Tm1VV" id="yGIPhwGlfk" role="1B3o_S" />
        <node concept="3clFbS" id="yGIPhwGlfl" role="3clF47">
          <node concept="3clFbF" id="yGIPhwGlfm" role="3cqZAp">
            <node concept="2ShNRf" id="yGIPhwGlfn" role="3clFbG">
              <node concept="HV5vD" id="yGIPhwGCrw" role="2ShVmc">
                <ref role="HV5vE" node="3r9sVr9QSkh" resolve="MoveNodeRefactoringLogParticipant" />
              </node>
            </node>
          </node>
        </node>
        <node concept="q3mfm" id="yGIPhwGlfp" role="3clF45">
          <ref role="q3mfh" to="90d:3zLwYDe0sv$" />
          <ref role="1QQUv3" node="yGIPhwGlfj" resolve="get" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="39r_V8zIWf7" role="jymVt" />
    <node concept="1lYeZD" id="39r_V8zIIpW" role="jymVt">
      <property role="TrG5h" value="MoveNodeParticipants" />
      <ref role="1lYe$Y" to="4ugc:39r_V8zIHX1" resolve="PersistentRefactoringParticipantsEP" />
      <node concept="3Tm1VV" id="39r_V8zIIpX" role="1B3o_S" />
      <node concept="q3mfD" id="39r_V8zIIq2" role="jymVt">
        <property role="TrG5h" value="get" />
        <ref role="2VtyIY" to="90d:3zLwYDe0svr" resolve="get" />
        <node concept="3Tm1VV" id="39r_V8zIIq4" role="1B3o_S" />
        <node concept="3clFbS" id="39r_V8zIIq6" role="3clF47">
          <node concept="3SKdUt" id="3D2IEK87rXR" role="3cqZAp">
            <node concept="1PaTwC" id="ATZLwXogFv" role="1aUNEU">
              <node concept="3oM_SD" id="ATZLwXogFw" role="1PaTwD">
                <property role="3oM_SC" value="here" />
              </node>
              <node concept="3oM_SD" id="ATZLwXogFx" role="1PaTwD">
                <property role="3oM_SC" value="lazyness" />
              </node>
              <node concept="3oM_SD" id="ATZLwXogFy" role="1PaTwD">
                <property role="3oM_SC" value="is" />
              </node>
              <node concept="3oM_SD" id="ATZLwXogFz" role="1PaTwD">
                <property role="3oM_SC" value="important" />
              </node>
              <node concept="3oM_SD" id="ATZLwXogF$" role="1PaTwD">
                <property role="3oM_SC" value="because" />
              </node>
              <node concept="3oM_SD" id="ATZLwXogF_" role="1PaTwD">
                <property role="3oM_SC" value="extension" />
              </node>
              <node concept="3oM_SD" id="ATZLwXogFA" role="1PaTwD">
                <property role="3oM_SC" value="objects" />
              </node>
              <node concept="3oM_SD" id="ATZLwXogFB" role="1PaTwD">
                <property role="3oM_SC" value="should" />
              </node>
              <node concept="3oM_SD" id="ATZLwXogFC" role="1PaTwD">
                <property role="3oM_SC" value="never" />
              </node>
              <node concept="3oM_SD" id="ATZLwXogFD" role="1PaTwD">
                <property role="3oM_SC" value="be" />
              </node>
              <node concept="3oM_SD" id="ATZLwXogFE" role="1PaTwD">
                <property role="3oM_SC" value="saved" />
              </node>
              <node concept="3oM_SD" id="ATZLwXogFF" role="1PaTwD">
                <property role="3oM_SC" value="for" />
              </node>
              <node concept="3oM_SD" id="ATZLwXogFG" role="1PaTwD">
                <property role="3oM_SC" value="long" />
              </node>
              <node concept="3oM_SD" id="ATZLwXogFH" role="1PaTwD">
                <property role="3oM_SC" value="time" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="39r_V8zIMrg" role="3cqZAp">
            <node concept="2OqwBi" id="39r_V8zMm9N" role="3clFbG">
              <node concept="2OqwBi" id="39r_V8zIJVA" role="2Oq$k0">
                <node concept="2OqwBi" id="39r_V8zIJ7G" role="2Oq$k0">
                  <node concept="2O5UvJ" id="39r_V8zIJ3B" role="2Oq$k0">
                    <ref role="2O5UnU" to="4ugc:3KqYwoBJieG" resolve="MoveNodeParticipantEP" />
                  </node>
                  <node concept="SfwO_" id="39r_V8zIJ9z" role="2OqNvi" />
                </node>
                <node concept="UnYns" id="39r_V8zIK4e" role="2OqNvi">
                  <node concept="3uibUv" id="39r_V8zIKcu" role="UnYnz">
                    <ref role="3uigEE" to="5nvm:5DMHUkptmAc" resolve="RefactoringParticipant.PersistentRefactoringParticipant" />
                  </node>
                </node>
              </node>
              <node concept="3$u5V9" id="39r_V8zMmoL" role="2OqNvi">
                <node concept="1bVj0M" id="39r_V8zMmoN" role="23t8la">
                  <node concept="3clFbS" id="39r_V8zMmoO" role="1bW5cS">
                    <node concept="3clFbF" id="39r_V8zMm_K" role="3cqZAp">
                      <node concept="10QFUN" id="39r_V8zMmE4" role="3clFbG">
                        <node concept="37vLTw" id="39r_V8zMmE2" role="10QFUP">
                          <ref role="3cqZAo" node="5W7E4fV0Xnq" resolve="it" />
                        </node>
                        <node concept="3uibUv" id="39r_V8zMmPm" role="10QFUM">
                          <ref role="3uigEE" to="5nvm:5DMHUkptmAc" resolve="RefactoringParticipant.PersistentRefactoringParticipant" />
                          <node concept="3qTvmN" id="39r_V8zMna9" role="11_B2D" />
                          <node concept="3qTvmN" id="39r_V8zMnox" role="11_B2D" />
                          <node concept="3qTvmN" id="4tSCs1lCh2u" role="11_B2D" />
                          <node concept="3qTvmN" id="4tSCs1lChmO" role="11_B2D" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="5W7E4fV0Xnq" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="5W7E4fV0Xnr" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="q3mfm" id="39r_V8zIIq7" role="3clF45">
          <ref role="1QQUv3" node="39r_V8zIIq2" resolve="get" />
          <ref role="q3mfh" to="90d:3zLwYDe0sv$" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3r9sVr9RTFw" role="jymVt" />
    <node concept="312cEg" id="3r9sVr9QYV3" role="jymVt">
      <property role="TrG5h" value="myDataCollector" />
      <node concept="3Tm6S6" id="3r9sVr9QYV4" role="1B3o_S" />
      <node concept="3uibUv" id="3r9sVr9QYV5" role="1tU5fm">
        <ref role="3uigEE" to="5nvm:3KqYwoBIIOx" resolve="MoveNodeRefactoringParticipant.MoveNodeRefactoringDataCollector" />
        <node concept="3uibUv" id="1DR1niB1uZx" role="11_B2D">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
        <node concept="3uibUv" id="1DR1niB1v$i" role="11_B2D">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
      <node concept="2ShNRf" id="3r9sVr9QYV6" role="33vP2m">
        <node concept="YeOm9" id="3r9sVr9QYV7" role="2ShVmc">
          <node concept="1Y3b0j" id="3r9sVr9QYV8" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <ref role="1Y3XeK" to="5nvm:3KqYwoBIIOx" resolve="MoveNodeRefactoringParticipant.MoveNodeRefactoringDataCollector" />
            <node concept="3Tm1VV" id="3r9sVr9QYV9" role="1B3o_S" />
            <node concept="3clFb_" id="3r9sVr9QYVa" role="jymVt">
              <property role="1EzhhJ" value="false" />
              <property role="TrG5h" value="beforeMove" />
              <node concept="3uibUv" id="1DR1niB1wCS" role="3clF45">
                <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
              </node>
              <node concept="3Tm1VV" id="3r9sVr9QYVb" role="1B3o_S" />
              <node concept="37vLTG" id="3r9sVr9QYVc" role="3clF46">
                <property role="TrG5h" value="nodeToMove" />
                <node concept="3Tqbb2" id="3r9sVr9QYVd" role="1tU5fm" />
              </node>
              <node concept="3clFbS" id="3r9sVr9QYVe" role="3clF47">
                <node concept="3clFbF" id="1DR1niB1z5$" role="3cqZAp">
                  <node concept="2OqwBi" id="3XR0QgVCmwL" role="3clFbG">
                    <node concept="37vLTw" id="3XR0QgVCmwK" role="2Oq$k0">
                      <ref role="3cqZAo" node="3r9sVr9QYVc" resolve="nodeToMove" />
                    </node>
                    <node concept="iZEcu" id="3XR0QgVCmwM" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFb_" id="3r9sVr9QYVf" role="jymVt">
              <property role="1EzhhJ" value="false" />
              <property role="TrG5h" value="afterMove" />
              <node concept="3uibUv" id="1DR1niB1xqj" role="3clF45">
                <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
              </node>
              <node concept="3Tm1VV" id="3r9sVr9QYVg" role="1B3o_S" />
              <node concept="37vLTG" id="3r9sVr9QYVh" role="3clF46">
                <property role="TrG5h" value="movedNode" />
                <node concept="3Tqbb2" id="3r9sVr9QYVi" role="1tU5fm" />
              </node>
              <node concept="3clFbS" id="3r9sVr9QYVj" role="3clF47">
                <node concept="3clFbF" id="1DR1niB1$2q" role="3cqZAp">
                  <node concept="2OqwBi" id="3XR0QgVCmwS" role="3clFbG">
                    <node concept="37vLTw" id="3XR0QgVCmwR" role="2Oq$k0">
                      <ref role="3cqZAo" node="3r9sVr9QYVh" resolve="movedNode" />
                    </node>
                    <node concept="iZEcu" id="3XR0QgVCmwT" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="1DR1niB1vRX" role="2Ghqu4">
              <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
            </node>
            <node concept="3uibUv" id="1DR1niB1vRY" role="2Ghqu4">
              <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1DR1niB1u49" role="jymVt" />
    <node concept="3clFb_" id="1DR1niB1oeh" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDataCollector" />
      <node concept="3uibUv" id="1DR1niB1oei" role="3clF45">
        <ref role="3uigEE" to="5nvm:3KqYwoBIIOx" resolve="MoveNodeRefactoringParticipant.MoveNodeRefactoringDataCollector" />
        <node concept="3uibUv" id="1DR1niB1oen" role="11_B2D">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
        <node concept="3uibUv" id="1DR1niB1oeo" role="11_B2D">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1DR1niB1oel" role="1B3o_S" />
      <node concept="3clFbS" id="1DR1niB1oep" role="3clF47">
        <node concept="3clFbF" id="1DR1niB1_$l" role="3cqZAp">
          <node concept="37vLTw" id="1DR1niB1_$j" role="3clFbG">
            <ref role="3cqZAo" node="3r9sVr9QYV3" resolve="myDataCollector" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3r9sVr9QZiq" role="jymVt" />
    <node concept="2tJIrI" id="3r9sVr9T1o6" role="jymVt" />
    <node concept="3clFb_" id="PXLOXmyHoH" role="jymVt">
      <property role="TrG5h" value="isApplicable" />
      <node concept="37vLTG" id="6gU0oA5O$ME" role="3clF46">
        <property role="TrG5h" value="initialStates" />
        <node concept="_YKpA" id="6gU0oA5O$MF" role="1tU5fm">
          <node concept="3uibUv" id="6gU0oA5O$MG" role="_ZDj9">
            <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="PXLOXmyZ7Z" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="PXLOXmyZ80" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="10P_77" id="PXLOXmyJFv" role="3clF45" />
      <node concept="3Tm1VV" id="PXLOXmyHoK" role="1B3o_S" />
      <node concept="3clFbS" id="PXLOXmyHoL" role="3clF47">
        <node concept="3cpWs8" id="PXLOXm$vK7" role="3cqZAp">
          <node concept="3cpWsn" id="PXLOXm$vK8" role="3cpWs9">
            <property role="TrG5h" value="sourceModule" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="PXLOXm$vK9" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
            </node>
            <node concept="2EnYce" id="6gU0oA5Qv5g" role="33vP2m">
              <node concept="2EnYce" id="6gU0oA5QxS7" role="2Oq$k0">
                <node concept="2OqwBi" id="6gU0oA5PCe9" role="2Oq$k0">
                  <node concept="2OqwBi" id="6gU0oA5OIgK" role="2Oq$k0">
                    <node concept="37vLTw" id="6gU0oA5OEOw" role="2Oq$k0">
                      <ref role="3cqZAo" node="6gU0oA5O$ME" resolve="initialStates" />
                    </node>
                    <node concept="1uHKPH" id="6gU0oA5P$lh" role="2OqNvi" />
                  </node>
                  <node concept="liA8E" id="6gU0oA5PEPw" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                    <node concept="37vLTw" id="6gU0oA5PHN_" role="37wK5m">
                      <ref role="3cqZAo" node="PXLOXmyZ7Z" resolve="repository" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="6gU0oA5PSRG" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                </node>
              </node>
              <node concept="liA8E" id="6gU0oA5PXSS" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="8k_uflYPaa" role="3cqZAp">
          <node concept="3fqX7Q" id="8k_uflZbby" role="3clFbw">
            <node concept="2ZW3vV" id="8k_uflZbbz" role="3fr31v">
              <node concept="3uibUv" id="8k_uflZbb$" role="2ZW6by">
                <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
              </node>
              <node concept="37vLTw" id="8k_uflZbb_" role="2ZW6bz">
                <ref role="3cqZAo" node="PXLOXm$vK8" resolve="sourceModule" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="8k_uflZ6kH" role="3clFbx">
            <node concept="3cpWs6" id="PXLOXm$vSK" role="3cqZAp">
              <node concept="3clFbT" id="8k_uflZ3UM" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="8k_uflYTSR" role="3cqZAp">
          <node concept="3clFbT" id="8k_uflZ1o7" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5F8F6pDdXXB" role="jymVt" />
    <node concept="3clFb_" id="6gU0oA5Oqes" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getAvailableOptions" />
      <node concept="37vLTG" id="6gU0oA5Oqet" role="3clF46">
        <property role="TrG5h" value="initialStates" />
        <node concept="_YKpA" id="6gU0oA5Oqeu" role="1tU5fm">
          <node concept="3uibUv" id="6gU0oA5OqeQ" role="_ZDj9">
            <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6gU0oA5Oqew" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="6gU0oA5Oqex" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6gU0oA5Oqey" role="1B3o_S" />
      <node concept="_YKpA" id="6gU0oA5Oqez" role="3clF45">
        <node concept="3uibUv" id="6gU0oA5Oqe$" role="_ZDj9">
          <ref role="3uigEE" to="5nvm:37Il31hWJ4Z" resolve="RefactoringParticipant.Option" />
        </node>
      </node>
      <node concept="3clFbS" id="6gU0oA5OqeR" role="3clF47">
        <node concept="3clFbJ" id="PXLOXmyuR7" role="3cqZAp">
          <node concept="3clFbS" id="PXLOXmyuR9" role="3clFbx">
            <node concept="3cpWs6" id="PXLOXmyvHP" role="3cqZAp">
              <node concept="2ShNRf" id="PXLOXmxSCr" role="3cqZAk">
                <node concept="Tc6Ow" id="PXLOXmyamK" role="2ShVmc">
                  <node concept="3uibUv" id="1$U7CScnZqR" role="HW$YZ">
                    <ref role="3uigEE" to="5nvm:37Il31hWJ4Z" resolve="RefactoringParticipant.Option" />
                  </node>
                  <node concept="37vLTw" id="6gU0oA5OwkD" role="HW$Y0">
                    <ref role="3cqZAo" node="5z_gLGeontD" resolve="OPTION" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="PXLOXmyziU" role="9aQIa">
            <node concept="3clFbS" id="PXLOXmyziV" role="9aQI4">
              <node concept="3cpWs6" id="PXLOXmy__A" role="3cqZAp">
                <node concept="2ShNRf" id="PXLOXmyBc8" role="3cqZAk">
                  <node concept="Tc6Ow" id="PXLOXmyBc9" role="2ShVmc">
                    <node concept="3uibUv" id="1$U7CSco0CK" role="HW$YZ">
                      <ref role="3uigEE" to="5nvm:37Il31hWJ4Z" resolve="RefactoringParticipant.Option" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1rXfSq" id="PXLOXmzbB$" role="3clFbw">
            <ref role="37wK5l" node="PXLOXmyHoH" resolve="isApplicable" />
            <node concept="37vLTw" id="6gU0oA5O$eW" role="37wK5m">
              <ref role="3cqZAo" node="6gU0oA5Oqet" resolve="initialStates" />
            </node>
            <node concept="37vLTw" id="PXLOXmzejH" role="37wK5m">
              <ref role="3cqZAo" node="6gU0oA5Oqew" resolve="repository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6gU0oA5OqeS" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="8k_ufm1he9" role="jymVt" />
    <node concept="2tJIrI" id="34P8w74Y6rs" role="jymVt" />
    <node concept="3clFb_" id="34P8w74Yhra" role="jymVt">
      <property role="TrG5h" value="getChanges" />
      <node concept="37vLTG" id="34P8w74Yhrb" role="3clF46">
        <property role="TrG5h" value="initialStates" />
        <node concept="_YKpA" id="34P8w74Yhrc" role="1tU5fm">
          <node concept="3uibUv" id="34P8w74Yhsm" role="_ZDj9">
            <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="34P8w74Yhre" role="3clF46">
        <property role="TrG5h" value="session" />
        <node concept="3uibUv" id="34P8w74Yhrf" role="1tU5fm">
          <ref role="3uigEE" to="5nvm:3KqYwoBJ0xf" resolve="RefactoringSession" />
        </node>
        <node concept="2AHcQZ" id="34P8w74Yhrg" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="34P8w74Yhrh" role="3clF46">
        <property role="TrG5h" value="selectedOptions" />
        <node concept="_YKpA" id="34P8w74Yhri" role="1tU5fm">
          <node concept="3uibUv" id="34P8w74Yhrj" role="_ZDj9">
            <ref role="3uigEE" to="5nvm:37Il31hWJ4Z" resolve="RefactoringParticipant.Option" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="34P8w74Yhrk" role="3clF46">
        <property role="TrG5h" value="progressMonitor" />
        <node concept="3uibUv" id="34P8w74Yhrl" role="1tU5fm">
          <ref role="3uigEE" to="yyf4:~ProgressMonitor" resolve="ProgressMonitor" />
        </node>
      </node>
      <node concept="3Tm1VV" id="34P8w74Yhrm" role="1B3o_S" />
      <node concept="_YKpA" id="34P8w74Yhrz" role="3clF45">
        <node concept="_YKpA" id="34P8w74Yhr$" role="_ZDj9">
          <node concept="3uibUv" id="34P8w74Yhr_" role="_ZDj9">
            <ref role="3uigEE" to="5nvm:3KqYwoBIKuf" resolve="RefactoringParticipant.Change" />
            <node concept="3uibUv" id="34P8w74Yhsk" role="11_B2D">
              <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
            </node>
            <node concept="3uibUv" id="34P8w74Yhsl" role="11_B2D">
              <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="34P8w74Yhsn" role="3clF47">
        <node concept="3clFbJ" id="8k_ufm1nfU" role="3cqZAp">
          <node concept="3clFbS" id="8k_ufm1nfV" role="3clFbx">
            <node concept="3SKdUt" id="34P8w74Zk3S" role="3cqZAp">
              <node concept="1PaTwC" id="34P8w74Zk3T" role="1aUNEU">
                <node concept="3oM_SD" id="34P8w74Zk3U" role="1PaTwD">
                  <property role="3oM_SC" value="FIXME" />
                </node>
                <node concept="3oM_SD" id="34P8w74ZoBL" role="1PaTwD">
                  <property role="3oM_SC" value="seems" />
                </node>
                <node concept="3oM_SD" id="34P8w74ZoCj" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="34P8w74ZoDh" role="1PaTwD">
                  <property role="3oM_SC" value="be" />
                </node>
                <node concept="3oM_SD" id="34P8w74ZoDi" role="1PaTwD">
                  <property role="3oM_SC" value="no-op," />
                </node>
                <node concept="3oM_SD" id="34P8w74ZoFt" role="1PaTwD">
                  <property role="3oM_SC" value="there's" />
                </node>
                <node concept="3oM_SD" id="34P8w74ZoPz" role="1PaTwD">
                  <property role="3oM_SC" value="isApplicable" />
                </node>
                <node concept="3oM_SD" id="34P8w74ZoSe" role="1PaTwD">
                  <property role="3oM_SC" value="check" />
                </node>
                <node concept="3oM_SD" id="34P8w74ZoSf" role="1PaTwD">
                  <property role="3oM_SC" value="prior" />
                </node>
                <node concept="3oM_SD" id="34P8w74ZoUW" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="34P8w74ZoWa" role="1PaTwD">
                  <property role="3oM_SC" value="this" />
                </node>
                <node concept="3oM_SD" id="34P8w74ZoZ7" role="1PaTwD">
                  <property role="3oM_SC" value="method" />
                </node>
                <node concept="3oM_SD" id="34P8w74ZoZo" role="1PaTwD">
                  <property role="3oM_SC" value="call" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="8k_ufm1nfW" role="3cqZAp">
              <node concept="2OqwBi" id="8k_ufm1Hs7" role="3cqZAk">
                <node concept="2OqwBi" id="8k_ufm1$w2" role="2Oq$k0">
                  <node concept="37vLTw" id="8k_ufm1y9a" role="2Oq$k0">
                    <ref role="3cqZAo" node="34P8w74Yhrb" resolve="initialStates" />
                  </node>
                  <node concept="3$u5V9" id="8k_ufm1BLG" role="2OqNvi">
                    <node concept="1bVj0M" id="8k_ufm1BLI" role="23t8la">
                      <node concept="3clFbS" id="8k_ufm1BLJ" role="1bW5cS">
                        <node concept="3clFbF" id="8k_ufm1Ev5" role="3cqZAp">
                          <node concept="1eOMI4" id="8k_ufm2kcj" role="3clFbG">
                            <node concept="10QFUN" id="8k_ufm2kck" role="1eOMHV">
                              <node concept="2ShNRf" id="8k_ufm2kce" role="10QFUP">
                                <node concept="Tc6Ow" id="8k_ufm2kcf" role="2ShVmc">
                                  <node concept="3uibUv" id="8k_ufm2kcg" role="HW$YZ">
                                    <ref role="3uigEE" to="5nvm:3KqYwoBIKuf" resolve="RefactoringParticipant.Change" />
                                    <node concept="3uibUv" id="8k_ufm2kch" role="11_B2D">
                                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                                    </node>
                                    <node concept="3uibUv" id="8k_ufm2kci" role="11_B2D">
                                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="_YKpA" id="8k_ufm2mUv" role="10QFUM">
                                <node concept="3uibUv" id="8k_ufm2q2a" role="_ZDj9">
                                  <ref role="3uigEE" to="5nvm:3KqYwoBIKuf" resolve="RefactoringParticipant.Change" />
                                  <node concept="3uibUv" id="8k_ufm2q2b" role="11_B2D">
                                    <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                                  </node>
                                  <node concept="3uibUv" id="8k_ufm2q2c" role="11_B2D">
                                    <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="5W7E4fV0Xns" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="5W7E4fV0Xnt" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="ANE8D" id="8k_ufm1KM0" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="8k_ufm1ng2" role="3clFbw">
            <node concept="3fqX7Q" id="8k_ufm1ng3" role="3uHU7B">
              <node concept="1rXfSq" id="8k_ufm1ng4" role="3fr31v">
                <ref role="37wK5l" node="PXLOXmyHoH" resolve="isApplicable" />
                <node concept="37vLTw" id="8k_ufm1rBF" role="37wK5m">
                  <ref role="3cqZAo" node="34P8w74Yhrb" resolve="initialStates" />
                </node>
                <node concept="2OqwBi" id="34P8w74Z5qI" role="37wK5m">
                  <node concept="37vLTw" id="8k_ufm1ng9" role="2Oq$k0">
                    <ref role="3cqZAo" node="34P8w74Yhre" resolve="session" />
                  </node>
                  <node concept="liA8E" id="34P8w74ZaAy" role="2OqNvi">
                    <ref role="37wK5l" to="5nvm:7VAzgTdnvUa" resolve="getRepository" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="8k_ufm1nga" role="3uHU7w">
              <node concept="2OqwBi" id="8k_ufm1ngb" role="3fr31v">
                <node concept="37vLTw" id="8k_ufm1ngc" role="2Oq$k0">
                  <ref role="3cqZAo" node="34P8w74Yhrh" resolve="selectedOptions" />
                </node>
                <node concept="3JPx81" id="8k_ufm1ngd" role="2OqNvi">
                  <node concept="37vLTw" id="34P8w74YyJK" role="25WWJ7">
                    <ref role="3cqZAo" node="5z_gLGeontD" resolve="OPTION" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="6gU0oA5Rffz" role="3cqZAp">
          <node concept="2GrKxI" id="6gU0oA5Rff_" role="2Gsz3X">
            <property role="TrG5h" value="module" />
          </node>
          <node concept="2OqwBi" id="6gU0oA5Rn80" role="2GsD0m">
            <node concept="2OqwBi" id="34P8w74YKI7" role="2Oq$k0">
              <node concept="37vLTw" id="3yvsPdSHxmM" role="2Oq$k0">
                <ref role="3cqZAo" node="34P8w74Yhre" resolve="session" />
              </node>
              <node concept="liA8E" id="34P8w74YPGr" role="2OqNvi">
                <ref role="37wK5l" to="5nvm:7VAzgTdnwdG" resolve="getSearchScope" />
              </node>
            </node>
            <node concept="liA8E" id="6gU0oA5Rr41" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~SearchScope.getModules()" resolve="getModules" />
            </node>
          </node>
          <node concept="3clFbS" id="6gU0oA5RffD" role="2LFqv$">
            <node concept="3clFbJ" id="6gU0oA5RriK" role="3cqZAp">
              <node concept="1Wc70l" id="6gU0oA5RrXw" role="3clFbw">
                <node concept="3fqX7Q" id="6gU0oA5RBZQ" role="3uHU7w">
                  <node concept="2YIFZM" id="2rjOGLWKV4v" role="3fr31v">
                    <ref role="37wK5l" to="6f4m:6gU0oA5RxQd" resolve="allRecordedDependenciesActual" />
                    <ref role="1Pybhc" to="6f4m:4JlWzK6VGnA" resolve="MigrationModuleUtil" />
                    <node concept="2GrUjf" id="2rjOGLWKV4w" role="37wK5m">
                      <ref role="2Gs0qQ" node="6gU0oA5Rff_" resolve="module" />
                    </node>
                  </node>
                </node>
                <node concept="2YIFZM" id="6gU0oA5RrsV" role="3uHU7B">
                  <ref role="37wK5l" to="6f4m:3UfGsecu97b" resolve="isModuleMigrateable" />
                  <ref role="1Pybhc" to="6f4m:4JlWzK6VGnA" resolve="MigrationModuleUtil" />
                  <node concept="2GrUjf" id="6gU0oA5RrJt" role="37wK5m">
                    <ref role="2Gs0qQ" node="6gU0oA5Rff_" resolve="module" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="6gU0oA5RriM" role="3clFbx">
                <node concept="3cpWs8" id="3yvsPdSKGy7" role="3cqZAp">
                  <node concept="3cpWsn" id="3yvsPdSKGy8" role="3cpWs9">
                    <property role="TrG5h" value="message" />
                    <node concept="17QB3L" id="3yvsPdSKGxT" role="1tU5fm" />
                    <node concept="3cpWs3" id="3yvsPdSKGy9" role="33vP2m">
                      <node concept="Xl_RD" id="3yvsPdSKGya" role="3uHU7w">
                        <property role="Xl_RC" value=" requires migration. It is recommended to run migration first and then restart refactoring." />
                      </node>
                      <node concept="3cpWs3" id="3yvsPdSKGyb" role="3uHU7B">
                        <node concept="Xl_RD" id="3yvsPdSKGyc" role="3uHU7B">
                          <property role="Xl_RC" value="Module " />
                        </node>
                        <node concept="2GrUjf" id="3yvsPdSKGyd" role="3uHU7w">
                          <ref role="2Gs0qQ" node="6gU0oA5Rff_" resolve="module" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="RRSsy" id="3jYQuSB37mp" role="3cqZAp">
                  <property role="RRSoG" value="gZ5fh_4/error" />
                  <node concept="37vLTw" id="3yvsPdSKUE0" role="RRSoy">
                    <ref role="3cqZAo" node="3yvsPdSKGy8" resolve="message" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="34P8w74Yhsv" role="3cqZAp">
          <node concept="3nyPlj" id="34P8w74Yhsu" role="3clFbG">
            <ref role="37wK5l" to="5nvm:34P8w7592FU" resolve="getChanges" />
            <node concept="37vLTw" id="34P8w74Yhsq" role="37wK5m">
              <ref role="3cqZAo" node="34P8w74Yhrb" resolve="initialStates" />
            </node>
            <node concept="37vLTw" id="34P8w74Yhsr" role="37wK5m">
              <ref role="3cqZAo" node="34P8w74Yhre" resolve="session" />
            </node>
            <node concept="37vLTw" id="34P8w74Yhss" role="37wK5m">
              <ref role="3cqZAo" node="34P8w74Yhrh" resolve="selectedOptions" />
            </node>
            <node concept="37vLTw" id="34P8w74Yhst" role="37wK5m">
              <ref role="3cqZAo" node="34P8w74Yhrk" resolve="progressMonitor" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="34P8w74Yhso" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="PXLOXm$e0t" role="jymVt" />
    <node concept="3clFb_" id="3r9sVr9QWlU" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getChanges" />
      <node concept="37vLTG" id="3r9sVr9QWlV" role="3clF46">
        <property role="TrG5h" value="initialState" />
        <node concept="3uibUv" id="3r9sVr9QWmf" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
      <node concept="37vLTG" id="3r9sVr9QWlX" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="3r9sVr9QWlY" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="PXLOXm$$gN" role="3clF46">
        <property role="TrG5h" value="selectedOptions" />
        <property role="3TUv4t" value="true" />
        <node concept="_YKpA" id="1$U7CScoaUL" role="1tU5fm">
          <node concept="3uibUv" id="1$U7CScobat" role="_ZDj9">
            <ref role="3uigEE" to="5nvm:37Il31hWJ4Z" resolve="RefactoringParticipant.Option" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3r9sVr9QWlZ" role="3clF46">
        <property role="TrG5h" value="searchScope" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="3r9sVr9QWm0" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SearchScope" resolve="SearchScope" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3r9sVr9QWm4" role="1B3o_S" />
      <node concept="_YKpA" id="3r9sVr9QWm6" role="3clF45">
        <node concept="3uibUv" id="3r9sVr9QWm7" role="_ZDj9">
          <ref role="3uigEE" to="5nvm:3KqYwoBIKuf" resolve="RefactoringParticipant.Change" />
          <node concept="3uibUv" id="3r9sVr9QWmg" role="11_B2D">
            <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
          </node>
          <node concept="3uibUv" id="3r9sVr9QWmh" role="11_B2D">
            <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="3r9sVr9QWmi" role="3clF47">
        <node concept="3cpWs8" id="1DR1niBbI4C" role="3cqZAp">
          <node concept="3cpWsn" id="1DR1niBbI4D" role="3cpWs9">
            <property role="TrG5h" value="sourceNode" />
            <property role="3TUv4t" value="true" />
            <node concept="3Tqbb2" id="1DR1niBbI4$" role="1tU5fm" />
            <node concept="2OqwBi" id="1DR1niBbI4F" role="33vP2m">
              <node concept="37vLTw" id="1DR1niBksi_" role="2Oq$k0">
                <ref role="3cqZAo" node="3r9sVr9QWlV" resolve="initialState" />
              </node>
              <node concept="liA8E" id="1DR1niBbI4H" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                <node concept="37vLTw" id="1DR1niBbI4I" role="37wK5m">
                  <ref role="3cqZAo" node="3r9sVr9QWlX" resolve="repository" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2wqpb2$PLNC" role="3cqZAp">
          <node concept="3cpWsn" id="2wqpb2$PLND" role="3cpWs9">
            <property role="TrG5h" value="sourceModule" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="3r9sVr9Rm2h" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
            </node>
            <node concept="2OqwBi" id="2wqpb2$PLNG" role="33vP2m">
              <node concept="2JrnkZ" id="2wqpb2$PLNH" role="2Oq$k0">
                <node concept="2OqwBi" id="2wqpb2$PLNI" role="2JrQYb">
                  <node concept="37vLTw" id="2wqpb2$REcr" role="2Oq$k0">
                    <ref role="3cqZAo" node="1DR1niBbI4D" resolve="sourceNode" />
                  </node>
                  <node concept="I4A8Y" id="2wqpb2$PLNO" role="2OqNvi" />
                </node>
              </node>
              <node concept="liA8E" id="2wqpb2$PLNP" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1jNyE7GYcS9" role="3cqZAp">
          <node concept="3cpWsn" id="1jNyE7GYcSa" role="3cpWs9">
            <property role="TrG5h" value="seq" />
            <node concept="A3Dl8" id="1jNyE7GYaVm" role="1tU5fm">
              <node concept="3uibUv" id="1jNyE7GYaV_" role="A3Ik2">
                <ref role="3uigEE" node="112yVMI$YQ8" resolve="SerializingParticipantState" />
                <node concept="3qTvmN" id="1jNyE7GYaVA" role="11_B2D" />
                <node concept="3qTvmN" id="1jNyE7GYaVB" role="11_B2D" />
                <node concept="3Tqbb2" id="1jNyE7GYaVC" role="11_B2D" />
                <node concept="3Tqbb2" id="1jNyE7GYaVD" role="11_B2D" />
              </node>
            </node>
            <node concept="2OqwBi" id="1jNyE7GYcSb" role="33vP2m">
              <node concept="2OqwBi" id="1jNyE7GYcSc" role="2Oq$k0">
                <node concept="2O5UvJ" id="1jNyE7GYcSd" role="2Oq$k0">
                  <ref role="2O5UnU" to="4ugc:3KqYwoBJieG" resolve="MoveNodeParticipantEP" />
                </node>
                <node concept="SfwO_" id="1jNyE7GYcSe" role="2OqNvi" />
              </node>
              <node concept="3$u5V9" id="1jNyE7GYcSf" role="2OqNvi">
                <node concept="1bVj0M" id="1jNyE7GYcSg" role="23t8la">
                  <node concept="3clFbS" id="1jNyE7GYcSh" role="1bW5cS">
                    <node concept="3cpWs6" id="1jNyE7GYcSi" role="3cqZAp">
                      <node concept="2YIFZM" id="1jNyE7GYcSj" role="3cqZAk">
                        <ref role="37wK5l" node="3r9sVr9Sor1" resolve="create" />
                        <ref role="1Pybhc" node="112yVMI$YQ8" resolve="SerializingParticipantState" />
                        <node concept="37vLTw" id="1jNyE7GYcSk" role="37wK5m">
                          <ref role="3cqZAo" node="5W7E4fV0Xnu" resolve="participant" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="5W7E4fV0Xnu" role="1bW2Oz">
                    <property role="TrG5h" value="participant" />
                    <node concept="2jxLKc" id="5W7E4fV0Xnv" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3r9sVr9SwHF" role="3cqZAp">
          <node concept="3cpWsn" id="3r9sVr9SwHG" role="3cpWs9">
            <property role="TrG5h" value="participantStates" />
            <property role="3TUv4t" value="true" />
            <node concept="_YKpA" id="3r9sVr9SCF1" role="1tU5fm">
              <node concept="3uibUv" id="3r9sVr9SCF3" role="_ZDj9">
                <ref role="3uigEE" node="112yVMI$YQ8" resolve="SerializingParticipantState" />
                <node concept="3qTvmN" id="3r9sVr9Y3Kq" role="11_B2D" />
                <node concept="3qTvmN" id="3r9sVr9Y4ph" role="11_B2D" />
                <node concept="3Tqbb2" id="7Ui8EnOQzU7" role="11_B2D" />
                <node concept="3Tqbb2" id="7Ui8EnOQ_xl" role="11_B2D" />
              </node>
            </node>
            <node concept="2OqwBi" id="3r9sVr9SC58" role="33vP2m">
              <node concept="2OqwBi" id="3r9sVr9WnWF" role="2Oq$k0">
                <node concept="37vLTw" id="1jNyE7GYcSn" role="2Oq$k0">
                  <ref role="3cqZAo" node="1jNyE7GYcSa" resolve="seq" />
                </node>
                <node concept="3zZkjj" id="3r9sVr9WoBD" role="2OqNvi">
                  <node concept="1bVj0M" id="3r9sVr9WoBF" role="23t8la">
                    <node concept="3clFbS" id="3r9sVr9WoBG" role="1bW5cS">
                      <node concept="3clFbF" id="3r9sVr9Wp6D" role="3cqZAp">
                        <node concept="3y3z36" id="3r9sVr9Wqmf" role="3clFbG">
                          <node concept="10Nm6u" id="3r9sVr9WqJB" role="3uHU7w" />
                          <node concept="37vLTw" id="3r9sVr9Wp6C" role="3uHU7B">
                            <ref role="3cqZAo" node="5W7E4fV0Xnw" resolve="it" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0Xnw" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="5W7E4fV0Xnx" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="3r9sVr9SCCr" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="yGIPhwJnc8" role="3cqZAp">
          <node concept="3clFbS" id="yGIPhwJnca" role="3clFbx">
            <node concept="3cpWs6" id="yGIPhwHz94" role="3cqZAp">
              <node concept="2ShNRf" id="yGIPhwH$x_" role="3cqZAk">
                <node concept="Tc6Ow" id="yGIPhwH$js" role="2ShVmc">
                  <node concept="3uibUv" id="yGIPhwH$jt" role="HW$YZ">
                    <ref role="3uigEE" to="5nvm:3KqYwoBIKuf" resolve="RefactoringParticipant.Change" />
                    <node concept="3uibUv" id="yGIPhwH$ju" role="11_B2D">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                    </node>
                    <node concept="3uibUv" id="yGIPhwH$jv" role="11_B2D">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="yGIPhwJp0N" role="3clFbw">
            <node concept="37vLTw" id="yGIPhwJovH" role="2Oq$k0">
              <ref role="3cqZAo" node="3r9sVr9SwHG" resolve="participantStates" />
            </node>
            <node concept="1v1jN8" id="yGIPhwJpOW" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs8" id="3r9sVr9SK_4" role="3cqZAp">
          <node concept="3cpWsn" id="3r9sVr9SK_5" role="3cpWs9">
            <property role="TrG5h" value="initialStates" />
            <property role="3TUv4t" value="true" />
            <node concept="_YKpA" id="3r9sVr9SK_6" role="1tU5fm">
              <node concept="3Tqbb2" id="3r9sVr9SK_7" role="_ZDj9" />
            </node>
            <node concept="2OqwBi" id="3r9sVr9SK_8" role="33vP2m">
              <node concept="2OqwBi" id="3r9sVr9SK_9" role="2Oq$k0">
                <node concept="37vLTw" id="3r9sVr9SK_a" role="2Oq$k0">
                  <ref role="3cqZAo" node="3r9sVr9SwHG" resolve="participantStates" />
                </node>
                <node concept="3$u5V9" id="3r9sVr9SK_b" role="2OqNvi">
                  <node concept="1bVj0M" id="3r9sVr9SK_c" role="23t8la">
                    <node concept="3clFbS" id="3r9sVr9SK_d" role="1bW5cS">
                      <node concept="3clFbF" id="3r9sVr9SK_e" role="3cqZAp">
                        <node concept="2OqwBi" id="3r9sVr9SK_f" role="3clFbG">
                          <node concept="37vLTw" id="3r9sVr9SK_g" role="2Oq$k0">
                            <ref role="3cqZAo" node="5W7E4fV0Xny" resolve="it" />
                          </node>
                          <node concept="liA8E" id="3r9sVr9SK_h" role="2OqNvi">
                            <ref role="37wK5l" node="3r9sVr9Shhn" resolve="getSerializedInitial" />
                            <node concept="37vLTw" id="3r9sVr9SLnw" role="37wK5m">
                              <ref role="3cqZAo" node="1DR1niBbI4D" resolve="sourceNode" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0Xny" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="5W7E4fV0Xnz" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="3r9sVr9SK_l" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3r9sVr9SJVU" role="3cqZAp" />
        <node concept="3SKdUt" id="4SG2RcUCoiH" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXogFI" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXogFJ" role="1PaTwD">
              <property role="3oM_SC" value="todo:" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogFK" role="1PaTwD">
              <property role="3oM_SC" value="write" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogFL" role="1PaTwD">
              <property role="3oM_SC" value="guard" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogFM" role="1PaTwD">
              <property role="3oM_SC" value="migration" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogFN" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogFO" role="1PaTwD">
              <property role="3oM_SC" value="'execute" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogFP" role="1PaTwD">
              <property role="3oM_SC" value="after'" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4SG2RcUCmWL" role="3cqZAp" />
        <node concept="3cpWs8" id="361hHoA2j_4" role="3cqZAp">
          <node concept="3cpWsn" id="361hHoA2j_5" role="3cpWs9">
            <property role="TrG5h" value="change" />
            <node concept="3uibUv" id="361hHoA2j_3" role="1tU5fm">
              <ref role="3uigEE" to="5nvm:3KqYwoBIKuf" resolve="RefactoringParticipant.Change" />
              <node concept="3uibUv" id="361hHoA2jxG" role="11_B2D">
                <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
              </node>
              <node concept="3uibUv" id="361hHoA2jxH" role="11_B2D">
                <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
              </node>
            </node>
            <node concept="2ShNRf" id="361hHoA2j_6" role="33vP2m">
              <node concept="YeOm9" id="361hHoA2j_7" role="2ShVmc">
                <node concept="1Y3b0j" id="361hHoA2j_8" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <ref role="1Y3XeK" to="5nvm:7tV5ZLw1f3b" resolve="MoveNodeRefactoringParticipant.ChangeBase" />
                  <node concept="3clFb_" id="5c9yDr4IBbG" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="getSearchResults" />
                    <property role="DiZV1" value="false" />
                    <node concept="3uibUv" id="5c9yDr4IBbH" role="3clF45">
                      <ref role="3uigEE" to="g4jo:J2bOg02HbG" resolve="SearchResults" />
                    </node>
                    <node concept="3Tm1VV" id="5c9yDr4IBbI" role="1B3o_S" />
                    <node concept="3clFbS" id="5c9yDr4IBbJ" role="3clF47">
                      <node concept="3cpWs6" id="5c9yDr4IBcv" role="3cqZAp">
                        <node concept="2YIFZM" id="1mw1E15QcY0" role="3cqZAk">
                          <ref role="37wK5l" to="g4jo:1mw1E15P9HQ" resolve="singleton" />
                          <ref role="1Pybhc" to="g4jo:J2bOg02HbG" resolve="SearchResults" />
                          <node concept="2ShNRf" id="1mw1E15QcY1" role="37wK5m">
                            <node concept="1pGfFk" id="1mw1E15QcY2" role="2ShVmc">
                              <ref role="37wK5l" to="g4jo:J2bOg02GIy" resolve="SearchResult" />
                              <node concept="3uibUv" id="1mw1E15QcY3" role="1pMfVU">
                                <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                              </node>
                              <node concept="37vLTw" id="1mw1E15QcY4" role="37wK5m">
                                <ref role="3cqZAo" node="2wqpb2$PLND" resolve="sourceModule" />
                              </node>
                              <node concept="Xl_RD" id="1mw1E15QcY5" role="37wK5m">
                                <property role="Xl_RC" value="refactoring log" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFb_" id="361hHoA2jA7" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="confirm" />
                    <node concept="3cqZAl" id="361hHoA2jA8" role="3clF45" />
                    <node concept="3Tm1VV" id="361hHoA2jA9" role="1B3o_S" />
                    <node concept="37vLTG" id="361hHoA2jAa" role="3clF46">
                      <property role="TrG5h" value="finalState" />
                      <node concept="3uibUv" id="361hHoA2jAb" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="361hHoA2jAe" role="3clF46">
                      <property role="TrG5h" value="refactoringSession" />
                      <node concept="3uibUv" id="361hHoA2jAf" role="1tU5fm">
                        <ref role="3uigEE" to="5nvm:3KqYwoBJ0xf" resolve="RefactoringSession" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="361hHoA2jAg" role="3clF47">
                      <node concept="3cpWs8" id="361hHoA2jAh" role="3cqZAp">
                        <node concept="3cpWsn" id="361hHoA2jAi" role="3cpWs9">
                          <property role="TrG5h" value="targetNode" />
                          <node concept="3Tqbb2" id="361hHoA2jAj" role="1tU5fm" />
                          <node concept="2OqwBi" id="361hHoA2jAl" role="33vP2m">
                            <node concept="37vLTw" id="361hHoA2jAm" role="2Oq$k0">
                              <ref role="3cqZAo" node="361hHoA2jAa" resolve="finalState" />
                            </node>
                            <node concept="liA8E" id="361hHoA2jAn" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                              <node concept="2OqwBi" id="34P8w74HJRz" role="37wK5m">
                                <node concept="37vLTw" id="361hHoA2jAo" role="2Oq$k0">
                                  <ref role="3cqZAo" node="361hHoA2jAe" resolve="refactoringSession" />
                                </node>
                                <node concept="liA8E" id="34P8w74HPif" role="2OqNvi">
                                  <ref role="37wK5l" to="5nvm:7VAzgTdnvUa" resolve="getRepository" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="3r9sVr9T8zR" role="3cqZAp">
                        <node concept="3cpWsn" id="3r9sVr9T8zS" role="3cpWs9">
                          <property role="TrG5h" value="logBuilder" />
                          <node concept="3uibUv" id="3r9sVr9T8zP" role="1tU5fm">
                            <ref role="3uigEE" node="3r9sVr9T2fE" resolve="LogBuilder" />
                          </node>
                          <node concept="2YIFZM" id="7Ui8EnOPDCZ" role="33vP2m">
                            <ref role="37wK5l" node="3r9sVr9T4a0" resolve="getBuilder" />
                            <ref role="1Pybhc" node="3r9sVr9T2fE" resolve="LogBuilder" />
                            <node concept="37vLTw" id="3r9sVr9T8zU" role="37wK5m">
                              <ref role="3cqZAo" node="361hHoA2jAe" resolve="refactoringSession" />
                            </node>
                            <node concept="37vLTw" id="4nVmAemkW51" role="37wK5m">
                              <ref role="3cqZAo" node="3r9sVr9QWlZ" resolve="searchScope" />
                            </node>
                            <node concept="37vLTw" id="3r9sVr9TQd6" role="37wK5m">
                              <ref role="3cqZAo" node="2wqpb2$PLND" resolve="sourceModule" />
                            </node>
                            <node concept="3cpWs3" id="5F8F6pDebr7" role="37wK5m">
                              <node concept="2OqwBi" id="5F8F6pDecGH" role="3uHU7w">
                                <node concept="37vLTw" id="5F8F6pDec7g" role="2Oq$k0">
                                  <ref role="3cqZAo" node="361hHoA2jAi" resolve="targetNode" />
                                </node>
                                <node concept="3zqWPK" id="70OdufORcmZ" role="2OqNvi">
                                  <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                                </node>
                              </node>
                              <node concept="3cpWs3" id="5F8F6pDe9LF" role="3uHU7B">
                                <node concept="3cpWs3" id="5F8F6pDe46C" role="3uHU7B">
                                  <node concept="Xl_RD" id="5F8F6pDe37d" role="3uHU7B">
                                    <property role="Xl_RC" value="Update References: " />
                                  </node>
                                  <node concept="2OqwBi" id="5F8F6pDe5cU" role="3uHU7w">
                                    <node concept="37vLTw" id="5F8F6pDe4E$" role="2Oq$k0">
                                      <ref role="3cqZAo" node="1DR1niBbI4D" resolve="sourceNode" />
                                    </node>
                                    <node concept="3zqWPK" id="70OdufORcn1" role="2OqNvi">
                                      <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="Xl_RD" id="5F8F6pDeahA" role="3uHU7w">
                                  <property role="Xl_RC" value="-&gt;" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="1$U7CScp9hI" role="3cqZAp">
                        <node concept="2OqwBi" id="1$U7CScp9zA" role="3clFbG">
                          <node concept="37vLTw" id="1$U7CScp9hG" role="2Oq$k0">
                            <ref role="3cqZAo" node="3r9sVr9T8zS" resolve="logBuilder" />
                          </node>
                          <node concept="liA8E" id="1$U7CScp9Km" role="2OqNvi">
                            <ref role="37wK5l" node="1$U7CScoLx$" resolve="addOptions" />
                            <node concept="37vLTw" id="1$U7CScp9MI" role="37wK5m">
                              <ref role="3cqZAo" node="PXLOXm$$gN" resolve="selectedOptions" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1_o_46" id="3r9sVr9TS2L" role="3cqZAp">
                        <node concept="3clFbS" id="3r9sVr9TS2N" role="2LFqv$">
                          <node concept="3clFbJ" id="1FSMaHekMkm" role="3cqZAp">
                            <node concept="3clFbS" id="1FSMaHekMko" role="3clFbx">
                              <node concept="3clFbF" id="3r9sVr9U9t7" role="3cqZAp">
                                <node concept="2OqwBi" id="3r9sVr9U9uD" role="3clFbG">
                                  <node concept="37vLTw" id="3r9sVr9U9t6" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3r9sVr9T8zS" resolve="logBuilder" />
                                  </node>
                                  <node concept="liA8E" id="3r9sVr9U9x5" role="2OqNvi">
                                    <ref role="37wK5l" node="3r9sVr9T9pQ" resolve="addPart" />
                                    <node concept="2OqwBi" id="3r9sVr9TTfM" role="37wK5m">
                                      <node concept="3M$PaV" id="6CwS8Cbjt4d" role="2Oq$k0">
                                        <ref role="3M$S_o" node="3r9sVr9TS2T" resolve="ps" />
                                      </node>
                                      <node concept="liA8E" id="3r9sVr9U8R7" role="2OqNvi">
                                        <ref role="37wK5l" node="3r9sVr9U4bA" resolve="getParticipant" />
                                      </node>
                                    </node>
                                    <node concept="3M$PaV" id="3r9sVr9U9FB" role="37wK5m">
                                      <ref role="3M$S_o" node="3r9sVr9TSxB" resolve="i" />
                                    </node>
                                    <node concept="2OqwBi" id="3r9sVr9SGRp" role="37wK5m">
                                      <node concept="3M$PaV" id="6CwS8Cbjuz4" role="2Oq$k0">
                                        <ref role="3M$S_o" node="3r9sVr9TS2T" resolve="ps" />
                                      </node>
                                      <node concept="liA8E" id="3r9sVr9SGRr" role="2OqNvi">
                                        <ref role="37wK5l" node="3r9sVr9S4DC" resolve="getSerializedFinal" />
                                        <node concept="37vLTw" id="3r9sVr9SGRs" role="37wK5m">
                                          <ref role="3cqZAo" node="361hHoA2jAi" resolve="targetNode" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3y3z36" id="1FSMaHekPgn" role="3clFbw">
                              <node concept="10Nm6u" id="1FSMaHekPm_" role="3uHU7w" />
                              <node concept="3M$PaV" id="1FSMaHekOT8" role="3uHU7B">
                                <ref role="3M$S_o" node="3r9sVr9TSxB" resolve="i" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1_o_bx" id="3r9sVr9TS2P" role="1_o_by">
                          <node concept="37vLTw" id="3r9sVr9TSwK" role="1_o_bz">
                            <ref role="3cqZAo" node="3r9sVr9SwHG" resolve="participantStates" />
                          </node>
                          <node concept="1_o_bG" id="3r9sVr9TS2T" role="1_o_aQ">
                            <property role="TrG5h" value="ps" />
                          </node>
                        </node>
                        <node concept="1_o_bx" id="3r9sVr9TSx_" role="1_o_by">
                          <node concept="37vLTw" id="3r9sVr9U99M" role="1_o_bz">
                            <ref role="3cqZAo" node="3r9sVr9SK_5" resolve="initialStates" />
                          </node>
                          <node concept="1_o_bG" id="3r9sVr9TSxB" role="1_o_aQ">
                            <property role="TrG5h" value="i" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3Tm1VV" id="361hHoA2jB$" role="1B3o_S" />
                  <node concept="3uibUv" id="361hHoA2jB_" role="2Ghqu4">
                    <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                  </node>
                  <node concept="3uibUv" id="361hHoA2jBA" role="2Ghqu4">
                    <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2wqpb2$M6mK" role="3cqZAp">
          <node concept="2ShNRf" id="3r9sVr9SDBW" role="3cqZAk">
            <node concept="Tc6Ow" id="3r9sVr9SDBO" role="2ShVmc">
              <node concept="3uibUv" id="3r9sVr9SDBP" role="HW$YZ">
                <ref role="3uigEE" to="5nvm:3KqYwoBIKuf" resolve="RefactoringParticipant.Change" />
                <node concept="3uibUv" id="3r9sVr9SDBQ" role="11_B2D">
                  <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                </node>
                <node concept="3uibUv" id="3r9sVr9SDBR" role="11_B2D">
                  <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                </node>
              </node>
              <node concept="37vLTw" id="3r9sVr9SEUj" role="HW$Y0">
                <ref role="3cqZAo" node="361hHoA2j_5" resolve="change" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3r9sVr9R0MH" role="jymVt" />
    <node concept="Wx3nA" id="5z_gLGeontD" role="jymVt">
      <property role="TrG5h" value="OPTION" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="1$U7CSco617" role="1tU5fm">
        <ref role="3uigEE" to="5nvm:37Il31hWJ4Z" resolve="RefactoringParticipant.Option" />
      </node>
      <node concept="3Tm1VV" id="5z_gLGeooR3" role="1B3o_S" />
      <node concept="2ShNRf" id="1$U7CSco618" role="33vP2m">
        <node concept="1pGfFk" id="1$U7CSco619" role="2ShVmc">
          <ref role="37wK5l" to="5nvm:37Il31hWKPu" resolve="RefactoringParticipant.Option" />
          <node concept="Xl_RD" id="1$U7CSco61a" role="37wK5m">
            <property role="Xl_RC" value="moveNode.options.writeRefactoringLog" />
          </node>
          <node concept="Xl_RD" id="1$U7CSco61b" role="37wK5m">
            <property role="Xl_RC" value="Write refactoring log" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1$U7CSco4S2" role="jymVt" />
    <node concept="3Tm1VV" id="3r9sVr9QSki" role="1B3o_S" />
    <node concept="3uibUv" id="3r9sVr9QTzJ" role="EKbjA">
      <ref role="3uigEE" to="5nvm:3KqYwoBJhhy" resolve="MoveNodeRefactoringParticipant" />
      <node concept="3uibUv" id="3r9sVr9QTFZ" role="11_B2D">
        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
      </node>
      <node concept="3uibUv" id="3r9sVr9QTOe" role="11_B2D">
        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
      </node>
    </node>
    <node concept="3uibUv" id="4GNx7T6Z4U5" role="1zkMxy">
      <ref role="3uigEE" to="5nvm:4GNx7T6VEiw" resolve="RefactoringParticipantBase" />
      <node concept="3uibUv" id="4GNx7T6Z7ZY" role="11_B2D">
        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
      </node>
      <node concept="3uibUv" id="4GNx7T6Zahn" role="11_B2D">
        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
      </node>
      <node concept="3Tqbb2" id="4GNx7T6ZdjJ" role="11_B2D" />
      <node concept="3Tqbb2" id="4GNx7T6ZfFu" role="11_B2D" />
    </node>
  </node>
  <node concept="312cEu" id="112yVMI$YQ8">
    <property role="2bfB8j" value="true" />
    <property role="TrG5h" value="SerializingParticipantState" />
    <node concept="312cEg" id="3r9sVr9VRwY" role="jymVt">
      <property role="TrG5h" value="myParticipant" />
      <node concept="3Tm6S6" id="3r9sVr9VRwZ" role="1B3o_S" />
      <node concept="3uibUv" id="3r9sVr9VRx0" role="1tU5fm">
        <ref role="3uigEE" to="5nvm:3KqYwoBIxpF" resolve="RefactoringParticipant" />
        <node concept="16syzq" id="3r9sVr9VRx1" role="11_B2D">
          <ref role="16sUi3" node="112yVMI_5nA" resolve="I" />
        </node>
        <node concept="16syzq" id="3r9sVr9VRx2" role="11_B2D">
          <ref role="16sUi3" node="112yVMI_5nC" resolve="F" />
        </node>
        <node concept="16syzq" id="7Ui8EnOQ1bZ" role="11_B2D">
          <ref role="16sUi3" node="7Ui8EnOPVMk" resolve="IP" />
        </node>
        <node concept="16syzq" id="7Ui8EnOQ2i$" role="11_B2D">
          <ref role="16sUi3" node="7Ui8EnOPWE5" resolve="FP" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="3r9sVr9Xogy" role="jymVt">
      <property role="TrG5h" value="myPersistentParticipant" />
      <node concept="3Tm6S6" id="3r9sVr9Xogz" role="1B3o_S" />
      <node concept="3uibUv" id="3r9sVr9Xog$" role="1tU5fm">
        <ref role="3uigEE" to="5nvm:5DMHUkptmAc" resolve="RefactoringParticipant.PersistentRefactoringParticipant" />
        <node concept="16syzq" id="3r9sVr9Xog_" role="11_B2D">
          <ref role="16sUi3" node="112yVMI_5nA" resolve="I" />
        </node>
        <node concept="16syzq" id="3r9sVr9XogA" role="11_B2D">
          <ref role="16sUi3" node="112yVMI_5nC" resolve="F" />
        </node>
        <node concept="16syzq" id="7Ui8EnOQr1$" role="11_B2D">
          <ref role="16sUi3" node="7Ui8EnOPVMk" resolve="IP" />
        </node>
        <node concept="16syzq" id="7Ui8EnOQrE7" role="11_B2D">
          <ref role="16sUi3" node="7Ui8EnOPWE5" resolve="FP" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="3r9sVr9Sor1" role="jymVt">
      <property role="TrG5h" value="create" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="3r9sVr9VZtb" role="3clF46">
        <property role="TrG5h" value="participant" />
        <node concept="3uibUv" id="3r9sVr9VZZQ" role="1tU5fm">
          <ref role="3uigEE" to="5nvm:3KqYwoBIxpF" resolve="RefactoringParticipant" />
          <node concept="16syzq" id="3r9sVr9VZZR" role="11_B2D">
            <ref role="16sUi3" node="3r9sVr9Snl$" resolve="I" />
          </node>
          <node concept="16syzq" id="3r9sVr9VZZS" role="11_B2D">
            <ref role="16sUi3" node="3r9sVr9Snl_" resolve="F" />
          </node>
          <node concept="16syzq" id="7Ui8EnOQl1k" role="11_B2D">
            <ref role="16sUi3" node="7Ui8EnOQ5vy" resolve="IP" />
          </node>
          <node concept="16syzq" id="7Ui8EnOQmgf" role="11_B2D">
            <ref role="16sUi3" node="7Ui8EnOQ66b" resolve="FP" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="3r9sVr9Slk4" role="3clF47">
        <node concept="3clFbJ" id="3r9sVr9XxhQ" role="3cqZAp">
          <node concept="3clFbS" id="3r9sVr9XxhS" role="3clFbx">
            <node concept="3cpWs6" id="3r9sVr9XxHr" role="3cqZAp">
              <node concept="10Nm6u" id="3r9sVr9Xy8y" role="3cqZAk" />
            </node>
          </node>
          <node concept="3fqX7Q" id="yGIPhwIQoB" role="3clFbw">
            <node concept="2ZW3vV" id="yGIPhwIQoC" role="3fr31v">
              <node concept="3uibUv" id="yGIPhwIQoD" role="2ZW6by">
                <ref role="3uigEE" to="5nvm:5DMHUkptmAc" resolve="RefactoringParticipant.PersistentRefactoringParticipant" />
              </node>
              <node concept="37vLTw" id="yGIPhwIQoE" role="2ZW6bz">
                <ref role="3cqZAo" node="3r9sVr9VZtb" resolve="participant" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3r9sVr9XzxJ" role="3cqZAp">
          <node concept="2ShNRf" id="3r9sVr9SpCV" role="3cqZAk">
            <node concept="1pGfFk" id="3r9sVr9Sq5h" role="2ShVmc">
              <ref role="37wK5l" node="3r9sVr9S2Cj" resolve="SerializingParticipantState" />
              <node concept="16syzq" id="3r9sVr9SqfP" role="1pMfVU">
                <ref role="16sUi3" node="3r9sVr9Snl$" resolve="I" />
              </node>
              <node concept="16syzq" id="3r9sVr9Sqrt" role="1pMfVU">
                <ref role="16sUi3" node="3r9sVr9Snl_" resolve="F" />
              </node>
              <node concept="16syzq" id="7Ui8EnOQ9pa" role="1pMfVU">
                <ref role="16sUi3" node="7Ui8EnOQ5vy" resolve="IP" />
              </node>
              <node concept="16syzq" id="7Ui8EnOQaGy" role="1pMfVU">
                <ref role="16sUi3" node="7Ui8EnOQ66b" resolve="FP" />
              </node>
              <node concept="37vLTw" id="3r9sVr9W3uB" role="37wK5m">
                <ref role="3cqZAo" node="3r9sVr9VZtb" resolve="participant" />
              </node>
              <node concept="10QFUN" id="3r9sVr9XwN0" role="37wK5m">
                <node concept="37vLTw" id="3r9sVr9XwMY" role="10QFUP">
                  <ref role="3cqZAo" node="3r9sVr9VZtb" resolve="participant" />
                </node>
                <node concept="3uibUv" id="3r9sVr9XwMQ" role="10QFUM">
                  <ref role="3uigEE" to="5nvm:5DMHUkptmAc" resolve="RefactoringParticipant.PersistentRefactoringParticipant" />
                  <node concept="16syzq" id="3r9sVr9XwMW" role="11_B2D">
                    <ref role="16sUi3" node="3r9sVr9Snl$" resolve="I" />
                  </node>
                  <node concept="16syzq" id="3r9sVr9XwMX" role="11_B2D">
                    <ref role="16sUi3" node="3r9sVr9Snl_" resolve="F" />
                  </node>
                  <node concept="16syzq" id="7Ui8EnOQgSQ" role="11_B2D">
                    <ref role="16sUi3" node="7Ui8EnOQ5vy" resolve="IP" />
                  </node>
                  <node concept="16syzq" id="7Ui8EnOQik_" role="11_B2D">
                    <ref role="16sUi3" node="7Ui8EnOQ66b" resolve="FP" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="3r9sVr9SoTD" role="3clF45">
        <ref role="3uigEE" node="112yVMI$YQ8" resolve="SerializingParticipantState" />
        <node concept="16syzq" id="3r9sVr9SphU" role="11_B2D">
          <ref role="16sUi3" node="3r9sVr9Snl$" resolve="I" />
        </node>
        <node concept="16syzq" id="3r9sVr9Spqh" role="11_B2D">
          <ref role="16sUi3" node="3r9sVr9Snl_" resolve="F" />
        </node>
        <node concept="16syzq" id="7Ui8EnOQ6L2" role="11_B2D">
          <ref role="16sUi3" node="7Ui8EnOQ5vy" resolve="IP" />
        </node>
        <node concept="16syzq" id="7Ui8EnOQ82a" role="11_B2D">
          <ref role="16sUi3" node="7Ui8EnOQ66b" resolve="FP" />
        </node>
      </node>
      <node concept="16euLQ" id="3r9sVr9Snl$" role="16eVyc">
        <property role="TrG5h" value="I" />
      </node>
      <node concept="16euLQ" id="3r9sVr9Snl_" role="16eVyc">
        <property role="TrG5h" value="F" />
      </node>
      <node concept="16euLQ" id="7Ui8EnOQ5vy" role="16eVyc">
        <property role="TrG5h" value="IP" />
      </node>
      <node concept="16euLQ" id="7Ui8EnOQ66b" role="16eVyc">
        <property role="TrG5h" value="FP" />
      </node>
      <node concept="3Tm1VV" id="3r9sVr9Slk3" role="1B3o_S" />
    </node>
    <node concept="3clFbW" id="3r9sVr9S2Cj" role="jymVt">
      <node concept="37vLTG" id="3r9sVr9XvHo" role="3clF46">
        <property role="TrG5h" value="participant" />
        <node concept="3uibUv" id="3r9sVr9XvHp" role="1tU5fm">
          <ref role="3uigEE" to="5nvm:3KqYwoBIxpF" resolve="RefactoringParticipant" />
          <node concept="16syzq" id="3r9sVr9XvHq" role="11_B2D">
            <ref role="16sUi3" node="112yVMI_5nA" resolve="I" />
          </node>
          <node concept="16syzq" id="3r9sVr9XvHr" role="11_B2D">
            <ref role="16sUi3" node="112yVMI_5nC" resolve="F" />
          </node>
          <node concept="16syzq" id="7Ui8EnOQcFb" role="11_B2D">
            <ref role="16sUi3" node="7Ui8EnOPVMk" resolve="IP" />
          </node>
          <node concept="16syzq" id="7Ui8EnOQe3b" role="11_B2D">
            <ref role="16sUi3" node="7Ui8EnOPWE5" resolve="FP" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3r9sVr9W2Oz" role="3clF46">
        <property role="TrG5h" value="participantPersistence" />
        <node concept="3uibUv" id="3r9sVr9W2O$" role="1tU5fm">
          <ref role="3uigEE" to="5nvm:5DMHUkptmAc" resolve="RefactoringParticipant.PersistentRefactoringParticipant" />
          <node concept="16syzq" id="3r9sVr9W2O_" role="11_B2D">
            <ref role="16sUi3" node="112yVMI_5nA" resolve="I" />
          </node>
          <node concept="16syzq" id="3r9sVr9W2OA" role="11_B2D">
            <ref role="16sUi3" node="112yVMI_5nC" resolve="F" />
          </node>
          <node concept="16syzq" id="7Ui8EnOQpwe" role="11_B2D">
            <ref role="16sUi3" node="7Ui8EnOPVMk" resolve="IP" />
          </node>
          <node concept="16syzq" id="7Ui8EnOQpSh" role="11_B2D">
            <ref role="16sUi3" node="7Ui8EnOPWE5" resolve="FP" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="3r9sVr9S2Cl" role="3clF45" />
      <node concept="3Tm1VV" id="3r9sVr9S2Cm" role="1B3o_S" />
      <node concept="3clFbS" id="3r9sVr9S2Cn" role="3clF47">
        <node concept="3clFbF" id="3r9sVr9W3aE" role="3cqZAp">
          <node concept="37vLTI" id="3r9sVr9W3kC" role="3clFbG">
            <node concept="37vLTw" id="3r9sVr9Xwko" role="37vLTx">
              <ref role="3cqZAo" node="3r9sVr9XvHo" resolve="participant" />
            </node>
            <node concept="37vLTw" id="3r9sVr9W3aC" role="37vLTJ">
              <ref role="3cqZAo" node="3r9sVr9VRwY" resolve="myParticipant" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3r9sVr9Xwtn" role="3cqZAp">
          <node concept="37vLTI" id="3r9sVr9XwBS" role="3clFbG">
            <node concept="37vLTw" id="3r9sVr9XwEF" role="37vLTx">
              <ref role="3cqZAo" node="3r9sVr9W2Oz" resolve="participantPersistence" />
            </node>
            <node concept="37vLTw" id="3r9sVr9XwxE" role="37vLTJ">
              <ref role="3cqZAo" node="3r9sVr9Xogy" resolve="myPersistentParticipant" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3r9sVr9U4bA" role="jymVt">
      <property role="TrG5h" value="getParticipant" />
      <node concept="3uibUv" id="3r9sVr9U73u" role="3clF45">
        <ref role="3uigEE" to="5nvm:5DMHUkptmAc" resolve="RefactoringParticipant.PersistentRefactoringParticipant" />
        <node concept="16syzq" id="3r9sVr9U7Tr" role="11_B2D">
          <ref role="16sUi3" node="112yVMI_5nA" resolve="I" />
        </node>
        <node concept="16syzq" id="3r9sVr9U81_" role="11_B2D">
          <ref role="16sUi3" node="112yVMI_5nC" resolve="F" />
        </node>
        <node concept="16syzq" id="7Ui8EnOQsuK" role="11_B2D">
          <ref role="16sUi3" node="7Ui8EnOPVMk" resolve="IP" />
        </node>
        <node concept="16syzq" id="7Ui8EnOQsQf" role="11_B2D">
          <ref role="16sUi3" node="7Ui8EnOPWE5" resolve="FP" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3r9sVr9U4bD" role="1B3o_S" />
      <node concept="3clFbS" id="3r9sVr9U4bE" role="3clF47">
        <node concept="3clFbF" id="3r9sVr9U8LH" role="3cqZAp">
          <node concept="37vLTw" id="3r9sVr9Xs19" role="3clFbG">
            <ref role="3cqZAo" node="3r9sVr9Xogy" resolve="myPersistentParticipant" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3r9sVr9Shhn" role="jymVt">
      <property role="TrG5h" value="getSerializedInitial" />
      <node concept="37vLTG" id="3r9sVr9Shho" role="3clF46">
        <property role="TrG5h" value="initialPoint" />
        <node concept="16syzq" id="7Ui8EnOQuSx" role="1tU5fm">
          <ref role="16sUi3" node="7Ui8EnOPVMk" resolve="IP" />
        </node>
      </node>
      <node concept="3Tqbb2" id="3r9sVr9Shhq" role="3clF45" />
      <node concept="3Tm1VV" id="3r9sVr9Shhr" role="1B3o_S" />
      <node concept="3clFbS" id="3r9sVr9Shhs" role="3clF47">
        <node concept="3cpWs8" id="1FSMaHe9Izh" role="3cqZAp">
          <node concept="3cpWsn" id="1FSMaHe9Izi" role="3cpWs9">
            <property role="TrG5h" value="initialState" />
            <node concept="16syzq" id="1FSMaHe9IyV" role="1tU5fm">
              <ref role="16sUi3" node="112yVMI_5nA" resolve="I" />
            </node>
            <node concept="2OqwBi" id="1FSMaHe9Izj" role="33vP2m">
              <node concept="2OqwBi" id="1FSMaHe9Izk" role="2Oq$k0">
                <node concept="37vLTw" id="1FSMaHe9Izl" role="2Oq$k0">
                  <ref role="3cqZAo" node="3r9sVr9VRwY" resolve="myParticipant" />
                </node>
                <node concept="liA8E" id="1FSMaHe9Izm" role="2OqNvi">
                  <ref role="37wK5l" to="5nvm:3KqYwoBJi4D" resolve="getDataCollector" />
                </node>
              </node>
              <node concept="liA8E" id="1FSMaHe9Izn" role="2OqNvi">
                <ref role="37wK5l" to="5nvm:5z_gLGeqYia" resolve="beforeMove" />
                <node concept="37vLTw" id="1FSMaHe9Izo" role="37wK5m">
                  <ref role="3cqZAo" node="3r9sVr9Shho" resolve="initialPoint" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1FSMaHe84LA" role="3cqZAp">
          <node concept="3clFbS" id="1FSMaHe84LC" role="3clFbx">
            <node concept="3cpWs6" id="1FSMaHe85$I" role="3cqZAp">
              <node concept="10Nm6u" id="1FSMaHe85Ex" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="1FSMaHe85kY" role="3clFbw">
            <node concept="10Nm6u" id="1FSMaHe85qK" role="3uHU7w" />
            <node concept="37vLTw" id="1FSMaHe9LkQ" role="3uHU7B">
              <ref role="3cqZAo" node="1FSMaHe9Izi" resolve="initialState" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1FSMaHe9LmE" role="3cqZAp">
          <node concept="2OqwBi" id="1FSMaHe9LmF" role="3cqZAk">
            <node concept="liA8E" id="1FSMaHe9LmG" role="2OqNvi">
              <ref role="37wK5l" to="5nvm:3KqYwoBKtUs" resolve="serializeInitialState" />
              <node concept="37vLTw" id="1FSMaHe9LmH" role="37wK5m">
                <ref role="3cqZAo" node="1FSMaHe9Izi" resolve="initialState" />
              </node>
            </node>
            <node concept="37vLTw" id="1FSMaHe9LmI" role="2Oq$k0">
              <ref role="3cqZAo" node="3r9sVr9Xogy" resolve="myPersistentParticipant" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3r9sVr9S4DC" role="jymVt">
      <property role="TrG5h" value="getSerializedFinal" />
      <node concept="37vLTG" id="2wqpb2$Nx8Q" role="3clF46">
        <property role="TrG5h" value="finalPoint" />
        <node concept="16syzq" id="7Ui8EnOQvyJ" role="1tU5fm">
          <ref role="16sUi3" node="7Ui8EnOPWE5" resolve="FP" />
        </node>
      </node>
      <node concept="3Tqbb2" id="3r9sVr9S6Kk" role="3clF45" />
      <node concept="3Tm1VV" id="3r9sVr9S4DF" role="1B3o_S" />
      <node concept="3clFbS" id="3r9sVr9S4DG" role="3clF47">
        <node concept="3cpWs8" id="1FSMaHekEae" role="3cqZAp">
          <node concept="3cpWsn" id="1FSMaHekEaf" role="3cpWs9">
            <property role="TrG5h" value="finalState" />
            <node concept="16syzq" id="1FSMaHekEBv" role="1tU5fm">
              <ref role="16sUi3" node="112yVMI_5nC" resolve="F" />
            </node>
            <node concept="2OqwBi" id="3r9sVr9Sa01" role="33vP2m">
              <node concept="2OqwBi" id="3r9sVr9Xv5k" role="2Oq$k0">
                <node concept="37vLTw" id="3r9sVr9W3Cz" role="2Oq$k0">
                  <ref role="3cqZAo" node="3r9sVr9VRwY" resolve="myParticipant" />
                </node>
                <node concept="liA8E" id="3r9sVr9Xvn0" role="2OqNvi">
                  <ref role="37wK5l" to="5nvm:3KqYwoBJi4D" resolve="getDataCollector" />
                </node>
              </node>
              <node concept="liA8E" id="3r9sVr9Sajh" role="2OqNvi">
                <ref role="37wK5l" to="5nvm:5z_gLGeqYig" resolve="afterMove" />
                <node concept="37vLTw" id="3r9sVr9SaoN" role="37wK5m">
                  <ref role="3cqZAo" node="2wqpb2$Nx8Q" resolve="finalPoint" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1FSMaHekEan" role="3cqZAp">
          <node concept="3clFbS" id="1FSMaHekEao" role="3clFbx">
            <node concept="3cpWs6" id="1FSMaHekEap" role="3cqZAp">
              <node concept="10Nm6u" id="1FSMaHekEaq" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="1FSMaHekEar" role="3clFbw">
            <node concept="10Nm6u" id="1FSMaHekEas" role="3uHU7w" />
            <node concept="37vLTw" id="1FSMaHekEat" role="3uHU7B">
              <ref role="3cqZAo" node="1FSMaHekEaf" resolve="finalState" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3r9sVr9S9E$" role="3cqZAp">
          <node concept="2OqwBi" id="3r9sVr9SgsA" role="3clFbG">
            <node concept="liA8E" id="3r9sVr9SgP8" role="2OqNvi">
              <ref role="37wK5l" to="5nvm:3KqYwoBIZR6" resolve="serializeFinalState" />
              <node concept="37vLTw" id="1FSMaHekGS4" role="37wK5m">
                <ref role="3cqZAo" node="1FSMaHekEaf" resolve="finalState" />
              </node>
            </node>
            <node concept="37vLTw" id="3r9sVr9XuSm" role="2Oq$k0">
              <ref role="3cqZAo" node="3r9sVr9Xogy" resolve="myPersistentParticipant" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="112yVMI$YQ9" role="1B3o_S" />
    <node concept="16euLQ" id="112yVMI_5nA" role="16eVyc">
      <property role="TrG5h" value="I" />
    </node>
    <node concept="16euLQ" id="112yVMI_5nC" role="16eVyc">
      <property role="TrG5h" value="F" />
    </node>
    <node concept="16euLQ" id="7Ui8EnOPVMk" role="16eVyc">
      <property role="TrG5h" value="IP" />
    </node>
    <node concept="16euLQ" id="7Ui8EnOPWE5" role="16eVyc">
      <property role="TrG5h" value="FP" />
    </node>
  </node>
  <node concept="312cEu" id="3r9sVr9T2fE">
    <property role="2bfB8j" value="false" />
    <property role="TrG5h" value="LogBuilder" />
    <node concept="Wx3nA" id="3r9sVr9T4ZE" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myId" />
      <node concept="3Tm6S6" id="3r9sVr9T4ZG" role="1B3o_S" />
      <node concept="17QB3L" id="3r9sVr9T59K" role="1tU5fm" />
      <node concept="Xl_RD" id="3r9sVr9T5aD" role="33vP2m">
        <property role="Xl_RC" value="refactoringSession.logBuilder" />
      </node>
    </node>
    <node concept="2YIFZL" id="3r9sVr9T4a0" role="jymVt">
      <property role="TrG5h" value="getBuilder" />
      <node concept="3uibUv" id="3r9sVr9T4lb" role="3clF45">
        <ref role="3uigEE" node="3r9sVr9T2fE" resolve="LogBuilder" />
      </node>
      <node concept="3Tm1VV" id="3r9sVr9T4a3" role="1B3o_S" />
      <node concept="3clFbS" id="3r9sVr9T4a4" role="3clF47">
        <node concept="3cpWs8" id="3r9sVr9Tqes" role="3cqZAp">
          <node concept="3cpWsn" id="3r9sVr9Tqet" role="3cpWs9">
            <property role="TrG5h" value="moduleBuilders" />
            <node concept="3rvAFt" id="3r9sVr9Tqej" role="1tU5fm">
              <node concept="3uibUv" id="3r9sVr9Tqep" role="3rvQeY">
                <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
              </node>
              <node concept="3uibUv" id="3r9sVr9TAxT" role="3rvSg0">
                <ref role="3uigEE" node="3r9sVr9T2fE" resolve="LogBuilder" />
              </node>
            </node>
            <node concept="10QFUN" id="3r9sVr9Tqeu" role="33vP2m">
              <node concept="2OqwBi" id="3r9sVr9Tqev" role="10QFUP">
                <node concept="37vLTw" id="3r9sVr9Tqew" role="2Oq$k0">
                  <ref role="3cqZAo" node="3r9sVr9T4$V" resolve="session" />
                </node>
                <node concept="liA8E" id="3r9sVr9Tqex" role="2OqNvi">
                  <ref role="37wK5l" to="5nvm:3KqYwoBJg7u" resolve="getObject" />
                  <node concept="37vLTw" id="7Ui8EnOQJqs" role="37wK5m">
                    <ref role="3cqZAo" node="3r9sVr9T4ZE" resolve="myId" />
                  </node>
                </node>
              </node>
              <node concept="3rvAFt" id="3r9sVr9TANK" role="10QFUM">
                <node concept="3uibUv" id="3r9sVr9TANN" role="3rvQeY">
                  <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
                </node>
                <node concept="3uibUv" id="3r9sVr9TIvy" role="3rvSg0">
                  <ref role="3uigEE" node="3r9sVr9T2fE" resolve="LogBuilder" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3r9sVr9T5PG" role="3cqZAp">
          <node concept="3clFbS" id="3r9sVr9T5PH" role="3clFbx">
            <node concept="3clFbF" id="3r9sVr9T6Qi" role="3cqZAp">
              <node concept="37vLTI" id="3r9sVr9TBKW" role="3clFbG">
                <node concept="2ShNRf" id="3r9sVr9TBWm" role="37vLTx">
                  <node concept="3rGOSV" id="3r9sVr9TBWa" role="2ShVmc">
                    <node concept="3uibUv" id="3r9sVr9TBWb" role="3rHrn6">
                      <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
                    </node>
                    <node concept="3uibUv" id="3r9sVr9TIGG" role="3rHtpV">
                      <ref role="3uigEE" node="3r9sVr9T2fE" resolve="LogBuilder" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="3r9sVr9Tr7B" role="37vLTJ">
                  <ref role="3cqZAo" node="3r9sVr9Tqet" resolve="moduleBuilders" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3r9sVr9T60J" role="3cqZAp">
              <node concept="2OqwBi" id="3r9sVr9T61H" role="3clFbG">
                <node concept="37vLTw" id="3r9sVr9T60I" role="2Oq$k0">
                  <ref role="3cqZAo" node="3r9sVr9T4$V" resolve="session" />
                </node>
                <node concept="liA8E" id="3r9sVr9T63u" role="2OqNvi">
                  <ref role="37wK5l" to="5nvm:3KqYwoBJgIa" resolve="putObject" />
                  <node concept="37vLTw" id="7Ui8EnOQJqA" role="37wK5m">
                    <ref role="3cqZAo" node="3r9sVr9T4ZE" resolve="myId" />
                  </node>
                  <node concept="37vLTw" id="3r9sVr9TrpZ" role="37wK5m">
                    <ref role="3cqZAo" node="3r9sVr9Tqet" resolve="moduleBuilders" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="3r9sVr9T5CH" role="3clFbw">
            <node concept="10Nm6u" id="3r9sVr9T5EN" role="3uHU7w" />
            <node concept="37vLTw" id="3r9sVr9Tr6x" role="3uHU7B">
              <ref role="3cqZAo" node="3r9sVr9Tqet" resolve="moduleBuilders" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3r9sVr9Ts1B" role="3cqZAp" />
        <node concept="3cpWs8" id="3r9sVr9Tsjh" role="3cqZAp">
          <node concept="3cpWsn" id="3r9sVr9Tsji" role="3cpWs9">
            <property role="TrG5h" value="builder" />
            <node concept="3EllGN" id="3r9sVr9TsPs" role="33vP2m">
              <node concept="2OqwBi" id="3r9sVr9TsSg" role="3ElVtu">
                <node concept="37vLTw" id="3r9sVr9TsQM" role="2Oq$k0">
                  <ref role="3cqZAo" node="3r9sVr9Tmjb" resolve="module" />
                </node>
                <node concept="liA8E" id="3r9sVr9TsYU" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~SModule.getModuleReference()" resolve="getModuleReference" />
                </node>
              </node>
              <node concept="37vLTw" id="3r9sVr9TsoX" role="3ElQJh">
                <ref role="3cqZAo" node="3r9sVr9Tqet" resolve="moduleBuilders" />
              </node>
            </node>
            <node concept="3uibUv" id="3r9sVr9TCH$" role="1tU5fm">
              <ref role="3uigEE" node="3r9sVr9T2fE" resolve="LogBuilder" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3r9sVr9TteC" role="3cqZAp">
          <node concept="3clFbS" id="3r9sVr9TteE" role="3clFbx">
            <node concept="3clFbF" id="3r9sVr9TEDe" role="3cqZAp">
              <node concept="37vLTI" id="3r9sVr9TF0B" role="3clFbG">
                <node concept="37vLTw" id="3r9sVr9TEI5" role="37vLTJ">
                  <ref role="3cqZAo" node="3r9sVr9Tsji" resolve="builder" />
                </node>
                <node concept="2ShNRf" id="3r9sVr9TtC1" role="37vLTx">
                  <node concept="1pGfFk" id="3r9sVr9TtC0" role="2ShVmc">
                    <ref role="37wK5l" node="3r9sVr9Ta$9" resolve="LogBuilder" />
                    <node concept="37vLTw" id="3r9sVr9TtDO" role="37wK5m">
                      <ref role="3cqZAo" node="3r9sVr9T4$V" resolve="session" />
                    </node>
                    <node concept="37vLTw" id="4nVmAemkUZE" role="37wK5m">
                      <ref role="3cqZAo" node="4nVmAemkRyh" resolve="searchScope" />
                    </node>
                    <node concept="1eOMI4" id="3r9sVr9Tu_8" role="37wK5m">
                      <node concept="10QFUN" id="3r9sVr9Tu_9" role="1eOMHV">
                        <node concept="37vLTw" id="3r9sVr9Tu_7" role="10QFUP">
                          <ref role="3cqZAo" node="3r9sVr9Tmjb" resolve="module" />
                        </node>
                        <node concept="3uibUv" id="3r9sVr9Tu_5" role="10QFUM">
                          <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="5zDh0PE_ULK" role="37wK5m">
                      <ref role="3cqZAo" node="5zDh0PE_UrO" resolve="caption" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3r9sVr9TtK5" role="3cqZAp">
              <node concept="37vLTI" id="3r9sVr9TtSe" role="3clFbG">
                <node concept="37vLTw" id="3r9sVr9TtTV" role="37vLTx">
                  <ref role="3cqZAo" node="3r9sVr9Tsji" resolve="builder" />
                </node>
                <node concept="3EllGN" id="3r9sVr9TtOB" role="37vLTJ">
                  <node concept="37vLTw" id="3r9sVr9TtK3" role="3ElQJh">
                    <ref role="3cqZAo" node="3r9sVr9Tqet" resolve="moduleBuilders" />
                  </node>
                  <node concept="2OqwBi" id="3r9sVr9TtQv" role="3ElVtu">
                    <node concept="37vLTw" id="3r9sVr9TtQw" role="2Oq$k0">
                      <ref role="3cqZAo" node="3r9sVr9Tmjb" resolve="module" />
                    </node>
                    <node concept="liA8E" id="3r9sVr9TtQx" role="2OqNvi">
                      <ref role="37wK5l" to="lui2:~SModule.getModuleReference()" resolve="getModuleReference" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="3r9sVr9THCz" role="3clFbw">
            <node concept="10Nm6u" id="3r9sVr9THNC" role="3uHU7w" />
            <node concept="37vLTw" id="3r9sVr9Ttkq" role="3uHU7B">
              <ref role="3cqZAo" node="3r9sVr9Tsji" resolve="builder" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3r9sVr9T7A_" role="3cqZAp">
          <node concept="37vLTw" id="3r9sVr9TtVw" role="3cqZAk">
            <ref role="3cqZAo" node="3r9sVr9Tsji" resolve="builder" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3r9sVr9T4$V" role="3clF46">
        <property role="TrG5h" value="session" />
        <node concept="3uibUv" id="3r9sVr9T4$U" role="1tU5fm">
          <ref role="3uigEE" to="5nvm:3KqYwoBJ0xf" resolve="RefactoringSession" />
        </node>
      </node>
      <node concept="37vLTG" id="4nVmAemkRyh" role="3clF46">
        <property role="TrG5h" value="searchScope" />
        <node concept="3uibUv" id="4nVmAemkSFJ" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SearchScope" resolve="SearchScope" />
        </node>
      </node>
      <node concept="37vLTG" id="3r9sVr9Tmjb" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="3uibUv" id="3r9sVr9Tmvc" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="37vLTG" id="5zDh0PE_UrO" role="3clF46">
        <property role="TrG5h" value="caption" />
        <node concept="3uibUv" id="5zDh0PE_UrP" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="2AHcQZ" id="5zDh0PE_UrQ" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="3r9sVr9TlA3" role="jymVt">
      <property role="TrG5h" value="myRefactoringStep" />
      <node concept="3Tm6S6" id="3r9sVr9TlA4" role="1B3o_S" />
      <node concept="3Tqbb2" id="3r9sVr9TlVe" role="1tU5fm">
        <ref role="ehGHo" to="53vh:1JTUOcBqQQf" resolve="RefactoringLog" />
      </node>
    </node>
    <node concept="3clFbW" id="3r9sVr9Ta$9" role="jymVt">
      <node concept="3cqZAl" id="3r9sVr9Ta$b" role="3clF45" />
      <node concept="3Tm6S6" id="1$U7CScoFWt" role="1B3o_S" />
      <node concept="3clFbS" id="3r9sVr9Ta$d" role="3clF47">
        <node concept="3cpWs8" id="3r9sVr9T$g8" role="3cqZAp">
          <node concept="3cpWsn" id="3r9sVr9T$g9" role="3cpWs9">
            <property role="TrG5h" value="moduleVersion" />
            <property role="3TUv4t" value="true" />
            <node concept="10Oyi0" id="3r9sVr9T$g1" role="1tU5fm" />
            <node concept="2OqwBi" id="3r9sVr9T$ga" role="33vP2m">
              <node concept="37vLTw" id="3r9sVr9T$gb" role="2Oq$k0">
                <ref role="3cqZAo" node="3r9sVr9Tu1$" resolve="module" />
              </node>
              <node concept="liA8E" id="3r9sVr9T$gc" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~AbstractModule.getModuleVersion()" resolve="getModuleVersion" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1j$ykQp3Nft" role="3cqZAp">
          <node concept="3cpWsn" id="1j$ykQp3Nfu" role="3cpWs9">
            <property role="TrG5h" value="refactoringName" />
            <node concept="17QB3L" id="1j$ykQp3Nfp" role="1tU5fm" />
            <node concept="2OqwBi" id="1j$ykQp3Nfv" role="33vP2m">
              <node concept="37vLTw" id="1j$ykQp3Nfw" role="2Oq$k0">
                <ref role="3cqZAo" node="3r9sVr9TaS8" resolve="session" />
              </node>
              <node concept="liA8E" id="1j$ykQp3Nfx" role="2OqNvi">
                <ref role="37wK5l" to="5nvm:7PqTV1oWyly" resolve="getRefactoringName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7PqTV1p286p" role="3cqZAp">
          <node concept="3cpWsn" id="7PqTV1p286s" role="3cpWs9">
            <property role="TrG5h" value="refactoringLogName" />
            <node concept="17QB3L" id="7PqTV1p286n" role="1tU5fm" />
            <node concept="3K4zz7" id="1j$ykQp3Pe_" role="33vP2m">
              <node concept="Xl_RD" id="1j$ykQp3PAA" role="3K4E3e">
                <property role="Xl_RC" value="RefactoringLog" />
              </node>
              <node concept="3clFbC" id="1j$ykQp3OAP" role="3K4Cdx">
                <node concept="10Nm6u" id="1j$ykQp3OYM" role="3uHU7w" />
                <node concept="37vLTw" id="1j$ykQp3O9v" role="3uHU7B">
                  <ref role="3cqZAo" node="1j$ykQp3Nfu" resolve="refactoringName" />
                </node>
              </node>
              <node concept="3cpWs3" id="1j$ykQp3T5d" role="3K4GZi">
                <node concept="Xl_RD" id="1j$ykQp3Tmv" role="3uHU7B">
                  <property role="Xl_RC" value="Refactor_" />
                </node>
                <node concept="2YIFZM" id="1j$ykQp3N5F" role="3uHU7w">
                  <ref role="1Pybhc" to="18ew:~NameUtil" resolve="NameUtil" />
                  <ref role="37wK5l" to="18ew:~NameUtil.toValidCamelIdentifier(java.lang.String)" resolve="toValidCamelIdentifier" />
                  <node concept="37vLTw" id="1j$ykQp3Nfy" role="37wK5m">
                    <ref role="3cqZAo" node="1j$ykQp3Nfu" resolve="refactoringName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1j$ykQp4Myw" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXogFQ" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXogFR" role="1PaTwD">
              <property role="3oM_SC" value="Keeping" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogFS" role="1PaTwD">
              <property role="3oM_SC" value="both" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogFT" role="1PaTwD">
              <property role="3oM_SC" value="name" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogFU" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogFV" role="1PaTwD">
              <property role="3oM_SC" value="session" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogFW" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogFX" role="1PaTwD">
              <property role="3oM_SC" value="caption" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogFY" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogFZ" role="1PaTwD">
              <property role="3oM_SC" value="constructor" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogG0" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogG1" role="1PaTwD">
              <property role="3oM_SC" value="redundant." />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1j$ykQp4Oqv" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXogG2" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXogG3" role="1PaTwD">
              <property role="3oM_SC" value="Currently" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogG4" role="1PaTwD">
              <property role="3oM_SC" value="name" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogG5" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogG6" role="1PaTwD">
              <property role="3oM_SC" value="session" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogG7" role="1PaTwD">
              <property role="3oM_SC" value="represents" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogG8" role="1PaTwD">
              <property role="3oM_SC" value="only" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogG9" role="1PaTwD">
              <property role="3oM_SC" value="refactoring" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogGa" role="1PaTwD">
              <property role="3oM_SC" value="kind:" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogGb" role="1PaTwD">
              <property role="3oM_SC" value="e.g." />
            </node>
            <node concept="3oM_SD" id="ATZLwXogGc" role="1PaTwD">
              <property role="3oM_SC" value="MoveStaticField," />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1j$ykQp4RTS" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXogGd" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXogGe" role="1PaTwD">
              <property role="3oM_SC" value="but" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogGf" role="1PaTwD">
              <property role="3oM_SC" value="action" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogGg" role="1PaTwD">
              <property role="3oM_SC" value="also" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogGh" role="1PaTwD">
              <property role="3oM_SC" value="points" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogGi" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogGj" role="1PaTwD">
              <property role="3oM_SC" value="node's" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogGk" role="1PaTwD">
              <property role="3oM_SC" value="name." />
            </node>
            <node concept="3oM_SD" id="ATZLwXogGl" role="1PaTwD">
              <property role="3oM_SC" value="But" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogGm" role="1PaTwD">
              <property role="3oM_SC" value="pushing" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogGn" role="1PaTwD">
              <property role="3oM_SC" value="caption" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogGo" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogGp" role="1PaTwD">
              <property role="3oM_SC" value="constructor" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogGq" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogGr" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogGs" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogGt" role="1PaTwD">
              <property role="3oM_SC" value="good" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogGu" role="1PaTwD">
              <property role="3oM_SC" value="way" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1j$ykQp4TLZ" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXogGv" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXogGw" role="1PaTwD">
              <property role="3oM_SC" value="because" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogGx" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogGy" role="1PaTwD">
              <property role="3oM_SC" value="relies" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogGz" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogG$" role="1PaTwD">
              <property role="3oM_SC" value="order" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogG_" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogGA" role="1PaTwD">
              <property role="3oM_SC" value="which" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogGB" role="1PaTwD">
              <property role="3oM_SC" value="getChanges()" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogGC" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogGD" role="1PaTwD">
              <property role="3oM_SC" value="called" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogGE" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogGF" role="1PaTwD">
              <property role="3oM_SC" value="node" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogGG" role="1PaTwD">
              <property role="3oM_SC" value="subtree." />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3r9sVr9Tm6G" role="3cqZAp">
          <node concept="37vLTI" id="3r9sVr9Tmd2" role="3clFbG">
            <node concept="2pJPEk" id="3r9sVr9TmfD" role="37vLTx">
              <node concept="2pJPED" id="3r9sVr9Tmha" role="2pJPEn">
                <ref role="2pJxaS" to="53vh:1JTUOcBqQQf" resolve="RefactoringLog" />
                <node concept="2pJxcG" id="6lH4CJIZm8C" role="2pJxcM">
                  <ref role="2pJxcJ" to="tpck:hnGE5uv" resolve="virtualPackage" />
                  <node concept="WxPPo" id="6bbvpKWHoNE" role="28ntcv">
                    <node concept="Xl_RD" id="6lH4CJIZmbM" role="WxPPp">
                      <property role="Xl_RC" value="refactoring" />
                    </node>
                  </node>
                </node>
                <node concept="2pJxcG" id="3r9sVr9TuAA" role="2pJxcM">
                  <ref role="2pJxcJ" to="53vh:1JTUOcBqQQh" resolve="fromVersion" />
                  <node concept="WxPPo" id="6bbvpKWHoNF" role="28ntcv">
                    <node concept="37vLTw" id="3r9sVr9T$ge" role="WxPPp">
                      <ref role="3cqZAo" node="3r9sVr9T$g9" resolve="moduleVersion" />
                    </node>
                  </node>
                </node>
                <node concept="2pJxcG" id="3r9sVr9TuTC" role="2pJxcM">
                  <ref role="2pJxcJ" to="tpck:h0TrG11" resolve="name" />
                  <node concept="WxPPo" id="6bbvpKWHoNG" role="28ntcv">
                    <node concept="3K4zz7" id="5zDh0PE_U1a" role="WxPPp">
                      <node concept="37vLTw" id="5zDh0PE_U9l" role="3K4GZi">
                        <ref role="3cqZAo" node="5zDh0PE_Jcz" resolve="caption" />
                      </node>
                      <node concept="3clFbC" id="5zDh0PE_TMT" role="3K4Cdx">
                        <node concept="10Nm6u" id="5zDh0PE_TWa" role="3uHU7w" />
                        <node concept="37vLTw" id="5zDh0PE_TwQ" role="3uHU7B">
                          <ref role="3cqZAo" node="5zDh0PE_Jcz" resolve="caption" />
                        </node>
                      </node>
                      <node concept="3cpWs3" id="1j$ykQp47K0" role="3K4E3e">
                        <node concept="3cpWs3" id="1j$ykQp47K1" role="3uHU7B">
                          <node concept="37vLTw" id="1j$ykQp47K2" role="3uHU7B">
                            <ref role="3cqZAo" node="7PqTV1p286s" resolve="refactoringLogName" />
                          </node>
                          <node concept="Xl_RD" id="1j$ykQp47K3" role="3uHU7w">
                            <property role="Xl_RC" value="_" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="1j$ykQp47R_" role="3uHU7w">
                          <ref role="3cqZAo" node="3r9sVr9T$g9" resolve="moduleVersion" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="3r9sVr9Tm6E" role="37vLTJ">
              <ref role="3cqZAo" node="3r9sVr9TlA3" resolve="myRefactoringStep" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3r9sVr9Tbm9" role="3cqZAp">
          <node concept="2OqwBi" id="3r9sVr9TbnF" role="3clFbG">
            <node concept="37vLTw" id="3r9sVr9Tlxo" role="2Oq$k0">
              <ref role="3cqZAo" node="3r9sVr9TaS8" resolve="session" />
            </node>
            <node concept="liA8E" id="3r9sVr9Tlky" role="2OqNvi">
              <ref role="37wK5l" to="5nvm:3KqYwoBJ0Rs" resolve="registerChange" />
              <node concept="1bVj0M" id="3r9sVr9Twqe" role="37wK5m">
                <node concept="3clFbS" id="3r9sVr9Twqf" role="1bW5cS">
                  <node concept="3SKdUt" id="3FLT10N9vMa" role="3cqZAp">
                    <node concept="1PaTwC" id="3FLT10N9vMb" role="1aUNEU">
                      <node concept="3oM_SD" id="3FLT10N9vMc" role="1PaTwD">
                        <property role="3oM_SC" value="FIXME" />
                      </node>
                      <node concept="3oM_SD" id="3FLT10N9wzO" role="1PaTwD">
                        <property role="3oM_SC" value="pretty" />
                      </node>
                      <node concept="3oM_SD" id="3FLT10N9zHp" role="1PaTwD">
                        <property role="3oM_SC" value="much" />
                      </node>
                      <node concept="3oM_SD" id="3FLT10N9$l$" role="1PaTwD">
                        <property role="3oM_SC" value="the" />
                      </node>
                      <node concept="3oM_SD" id="3FLT10N9$XJ" role="1PaTwD">
                        <property role="3oM_SC" value="same" />
                      </node>
                      <node concept="3oM_SD" id="3FLT10N9$XK" role="1PaTwD">
                        <property role="3oM_SC" value="code" />
                      </node>
                      <node concept="3oM_SD" id="3FLT10N9$XL" role="1PaTwD">
                        <property role="3oM_SC" value="in" />
                      </node>
                      <node concept="3oM_SD" id="3FLT10N9$XN" role="1PaTwD">
                        <property role="3oM_SC" value="LanguageStructureMigrationParticipant" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="3FLT10NajQw" role="3cqZAp">
                    <node concept="3cpWsn" id="3FLT10NajQx" role="3cpWs9">
                      <property role="TrG5h" value="lad" />
                      <node concept="3uibUv" id="3FLT10NajQy" role="1tU5fm">
                        <ref role="3uigEE" to="vndm:~LanguageAspectDescriptor" resolve="LanguageAspectDescriptor" />
                      </node>
                      <node concept="2YIFZM" id="3FLT10Namzu" role="33vP2m">
                        <ref role="37wK5l" to="vndm:~LanguageAspectSupport.getAspectDescriptorById(java.lang.String)" resolve="getAspectDescriptorById" />
                        <ref role="1Pybhc" to="vndm:~LanguageAspectSupport" resolve="LanguageAspectSupport" />
                        <node concept="Xl_RD" id="3FLT10Nanci" role="37wK5m">
                          <property role="Xl_RC" value="migration" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="3FLT10NavG0" role="3cqZAp">
                    <node concept="3cpWsn" id="3FLT10NavG1" role="3cpWs9">
                      <property role="TrG5h" value="aspectModels" />
                      <node concept="3uibUv" id="3FLT10Navuc" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                        <node concept="3uibUv" id="3FLT10Navuf" role="11_B2D">
                          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="3FLT10NavG2" role="33vP2m">
                        <node concept="37vLTw" id="3FLT10NavG3" role="2Oq$k0">
                          <ref role="3cqZAo" node="3FLT10NajQx" resolve="lad" />
                        </node>
                        <node concept="liA8E" id="3FLT10NavG4" role="2OqNvi">
                          <ref role="37wK5l" to="vndm:~LanguageAspectDescriptor.getAspectModels(org.jetbrains.mps.openapi.module.SModule)" resolve="getAspectModels" />
                          <node concept="37vLTw" id="3FLT10NavG5" role="37wK5m">
                            <ref role="3cqZAo" node="3r9sVr9Tu1$" resolve="module" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="3r9sVr9TwNA" role="3cqZAp">
                    <node concept="3cpWsn" id="3r9sVr9TwNB" role="3cpWs9">
                      <property role="TrG5h" value="migrationModel" />
                      <property role="3TUv4t" value="true" />
                      <node concept="3uibUv" id="3FLT10N9ZKU" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~Optional" resolve="Optional" />
                        <node concept="3uibUv" id="3FLT10NaRDq" role="11_B2D">
                          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="3FLT10Na48B" role="3cqZAp">
                    <node concept="3clFbS" id="3FLT10Na48D" role="3clFbx">
                      <node concept="3cpWs8" id="3FLT10Nbk9l" role="3cqZAp">
                        <node concept="3cpWsn" id="3FLT10Nbk9m" role="3cpWs9">
                          <property role="TrG5h" value="cac" />
                          <node concept="3uibUv" id="3FLT10Nbk9n" role="1tU5fm">
                            <ref role="3uigEE" to="vndm:~CreateAspectContext" resolve="CreateAspectContext" />
                          </node>
                          <node concept="2YIFZM" id="3FLT10NboS5" role="33vP2m">
                            <ref role="37wK5l" to="vndm:~CreateAspectContext.create(org.jetbrains.mps.openapi.module.SModule,jetbrains.mps.components.ComponentHost,java.util.function.Consumer)" resolve="create" />
                            <ref role="1Pybhc" to="vndm:~CreateAspectContext" resolve="CreateAspectContext" />
                            <node concept="37vLTw" id="3FLT10NbpKB" role="37wK5m">
                              <ref role="3cqZAo" node="3r9sVr9Tu1$" resolve="module" />
                            </node>
                            <node concept="2OqwBi" id="3FLT10NbxGg" role="37wK5m">
                              <node concept="2YIFZM" id="3FLT10Nbwod" role="2Oq$k0">
                                <ref role="37wK5l" to="3a50:~MPSCoreComponents.getInstance()" resolve="getInstance" />
                                <ref role="1Pybhc" to="3a50:~MPSCoreComponents" resolve="MPSCoreComponents" />
                              </node>
                              <node concept="liA8E" id="3FLT10NbyHS" role="2OqNvi">
                                <ref role="37wK5l" to="3a50:~MPSCoreComponents.getPlatform()" resolve="getPlatform" />
                              </node>
                            </node>
                            <node concept="10Nm6u" id="3FLT10NbA6g" role="37wK5m" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="3FLT10NbUmY" role="3cqZAp">
                        <node concept="2OqwBi" id="3FLT10NbVYi" role="3clFbG">
                          <node concept="37vLTw" id="3FLT10NbUmW" role="2Oq$k0">
                            <ref role="3cqZAo" node="3FLT10NajQx" resolve="lad" />
                          </node>
                          <node concept="liA8E" id="3FLT10NbXui" role="2OqNvi">
                            <ref role="37wK5l" to="vndm:~LanguageAspectDescriptor.create(jetbrains.mps.smodel.language.CreateAspectContext)" resolve="create" />
                            <node concept="37vLTw" id="3FLT10NbZfg" role="37wK5m">
                              <ref role="3cqZAo" node="3FLT10Nbk9m" resolve="cac" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="3FLT10NbB9K" role="3cqZAp">
                        <node concept="37vLTI" id="3FLT10NbGQw" role="3clFbG">
                          <node concept="37vLTw" id="3FLT10NbB9I" role="37vLTJ">
                            <ref role="3cqZAo" node="3r9sVr9TwNB" resolve="migrationModel" />
                          </node>
                          <node concept="2OqwBi" id="3FLT10NbPtS" role="37vLTx">
                            <node concept="2OqwBi" id="3FLT10NbM57" role="2Oq$k0">
                              <node concept="2OqwBi" id="3FLT10NbJn3" role="2Oq$k0">
                                <node concept="37vLTw" id="3FLT10NbJn4" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3FLT10NajQx" resolve="lad" />
                                </node>
                                <node concept="liA8E" id="3FLT10NbJn5" role="2OqNvi">
                                  <ref role="37wK5l" to="vndm:~LanguageAspectDescriptor.getAspectModels(org.jetbrains.mps.openapi.module.SModule)" resolve="getAspectModels" />
                                  <node concept="37vLTw" id="3FLT10NbJn6" role="37wK5m">
                                    <ref role="3cqZAo" node="3r9sVr9Tu1$" resolve="module" />
                                  </node>
                                </node>
                              </node>
                              <node concept="liA8E" id="3FLT10NbOh6" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                              </node>
                            </node>
                            <node concept="liA8E" id="3FLT10NbS6x" role="2OqNvi">
                              <ref role="37wK5l" to="1ctc:~Stream.findFirst()" resolve="findFirst" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3FLT10NaAOW" role="3clFbw">
                      <node concept="37vLTw" id="3FLT10Na$go" role="2Oq$k0">
                        <ref role="3cqZAo" node="3FLT10NavG1" resolve="aspectModels" />
                      </node>
                      <node concept="liA8E" id="3FLT10NaCh6" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Collection.isEmpty()" resolve="isEmpty" />
                      </node>
                    </node>
                    <node concept="9aQIb" id="3FLT10Na4TX" role="9aQIa">
                      <node concept="3clFbS" id="3FLT10Na4TY" role="9aQI4">
                        <node concept="3clFbF" id="3FLT10Na1FG" role="3cqZAp">
                          <node concept="37vLTI" id="3FLT10Na1FI" role="3clFbG">
                            <node concept="2OqwBi" id="3FLT10NaIN6" role="37vLTx">
                              <node concept="2OqwBi" id="3FLT10NaGI4" role="2Oq$k0">
                                <node concept="37vLTw" id="3FLT10NaF4J" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3FLT10NavG1" resolve="aspectModels" />
                                </node>
                                <node concept="liA8E" id="3FLT10NaM17" role="2OqNvi">
                                  <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                                </node>
                              </node>
                              <node concept="liA8E" id="3FLT10NaK0W" role="2OqNvi">
                                <ref role="37wK5l" to="1ctc:~Stream.findFirst()" resolve="findFirst" />
                              </node>
                            </node>
                            <node concept="37vLTw" id="3FLT10Na1FM" role="37vLTJ">
                              <ref role="3cqZAo" node="3r9sVr9TwNB" resolve="migrationModel" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="3FLT10Nb6Ke" role="3cqZAp">
                    <node concept="3clFbS" id="3FLT10Nb6Kg" role="3clFbx">
                      <node concept="RRSsy" id="3FLT10NbezF" role="3cqZAp">
                        <property role="RRSoG" value="gZ5fh_4/error" />
                        <node concept="Xl_RD" id="3FLT10NbezH" role="RRSoy">
                          <property role="Xl_RC" value="Can't create migration aspect" />
                        </node>
                      </node>
                      <node concept="3cpWs6" id="3FLT10Nbcrx" role="3cqZAp" />
                    </node>
                    <node concept="2OqwBi" id="3FLT10NbajE" role="3clFbw">
                      <node concept="37vLTw" id="3FLT10Nb7Ri" role="2Oq$k0">
                        <ref role="3cqZAo" node="3r9sVr9TwNB" resolve="migrationModel" />
                      </node>
                      <node concept="liA8E" id="3FLT10NbboD" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Optional.isEmpty()" resolve="isEmpty" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="3r9sVr9TwNH" role="3cqZAp">
                    <node concept="3cpWsn" id="3r9sVr9TwNI" role="3cpWs9">
                      <property role="TrG5h" value="mi" />
                      <node concept="3uibUv" id="3r9sVr9TwNJ" role="1tU5fm">
                        <ref role="3uigEE" to="w1kc:~ModelImports" resolve="ModelImports" />
                      </node>
                      <node concept="2ShNRf" id="3FLT10N9RqR" role="33vP2m">
                        <node concept="1pGfFk" id="3FLT10N9Vlb" role="2ShVmc">
                          <property role="373rjd" value="true" />
                          <ref role="37wK5l" to="w1kc:~ModelImports.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModel)" resolve="ModelImports" />
                          <node concept="2OqwBi" id="3FLT10NaS_h" role="37wK5m">
                            <node concept="37vLTw" id="3FLT10N9VZc" role="2Oq$k0">
                              <ref role="3cqZAo" node="3r9sVr9TwNB" resolve="migrationModel" />
                            </node>
                            <node concept="liA8E" id="3FLT10NaUgT" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~Optional.get()" resolve="get" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2Gpval" id="3r9sVr9TwNP" role="3cqZAp">
                    <node concept="2GrKxI" id="3r9sVr9TwNQ" role="2Gsz3X">
                      <property role="TrG5h" value="reference" />
                    </node>
                    <node concept="3clFbS" id="3r9sVr9TwNR" role="2LFqv$">
                      <node concept="3clFbJ" id="3r9sVr9TwNS" role="3cqZAp">
                        <node concept="3clFbS" id="3r9sVr9TwNT" role="3clFbx">
                          <node concept="3clFbF" id="3r9sVr9TwNU" role="3cqZAp">
                            <node concept="2OqwBi" id="3r9sVr9TwNV" role="3clFbG">
                              <node concept="37vLTw" id="3r9sVr9TwNW" role="2Oq$k0">
                                <ref role="3cqZAo" node="3r9sVr9TwNI" resolve="mi" />
                              </node>
                              <node concept="liA8E" id="3r9sVr9TwNX" role="2OqNvi">
                                <ref role="37wK5l" to="w1kc:~ModelImports.addModelImport(org.jetbrains.mps.openapi.model.SModelReference)" resolve="addModelImport" />
                                <node concept="2GrUjf" id="3r9sVr9TwNY" role="37wK5m">
                                  <ref role="2Gs0qQ" node="3r9sVr9TwNQ" resolve="reference" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3fqX7Q" id="3r9sVr9TwO0" role="3clFbw">
                          <node concept="2OqwBi" id="4H92mBGXJXO" role="3fr31v">
                            <node concept="2YIFZM" id="4H92mBGXIi9" role="2Oq$k0">
                              <ref role="1Pybhc" to="w1kc:~SModelOperations" resolve="SModelOperations" />
                              <ref role="37wK5l" to="w1kc:~SModelOperations.getImportedModelUIDs(org.jetbrains.mps.openapi.model.SModel)" resolve="getImportedModelUIDs" />
                              <node concept="2OqwBi" id="3FLT10NaXlE" role="37wK5m">
                                <node concept="37vLTw" id="4H92mBGXJ1u" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3r9sVr9TwNB" resolve="migrationModel" />
                                </node>
                                <node concept="liA8E" id="3FLT10Nb06U" role="2OqNvi">
                                  <ref role="37wK5l" to="33ny:~Optional.get()" resolve="get" />
                                </node>
                              </node>
                            </node>
                            <node concept="liA8E" id="4H92mBGXMeJ" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~List.contains(java.lang.Object)" resolve="contains" />
                              <node concept="2GrUjf" id="4H92mBGXMUD" role="37wK5m">
                                <ref role="2Gs0qQ" node="3r9sVr9TwNQ" resolve="reference" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3r9sVr9TwOk" role="2GsD0m">
                      <node concept="2OqwBi" id="3r9sVr9TwOl" role="2Oq$k0">
                        <node concept="2OqwBi" id="3r9sVr9TwOm" role="2Oq$k0">
                          <node concept="2OqwBi" id="3r9sVr9TwOn" role="2Oq$k0">
                            <node concept="37vLTw" id="3r9sVr9TyWB" role="2Oq$k0">
                              <ref role="3cqZAo" node="3r9sVr9TlA3" resolve="myRefactoringStep" />
                            </node>
                            <node concept="2Rf3mk" id="3r9sVr9TwOp" role="2OqNvi">
                              <node concept="1xIGOp" id="3r9sVr9TwOq" role="1xVPHs" />
                            </node>
                          </node>
                          <node concept="3goQfb" id="3r9sVr9TwOr" role="2OqNvi">
                            <node concept="1bVj0M" id="3r9sVr9TwOs" role="23t8la">
                              <node concept="3clFbS" id="3r9sVr9TwOt" role="1bW5cS">
                                <node concept="3clFbF" id="3r9sVr9TwOu" role="3cqZAp">
                                  <node concept="2OqwBi" id="3r9sVr9TwOv" role="3clFbG">
                                    <node concept="37vLTw" id="3r9sVr9TwOw" role="2Oq$k0">
                                      <ref role="3cqZAo" node="5W7E4fV0Xn$" resolve="it" />
                                    </node>
                                    <node concept="2z74zc" id="3r9sVr9TwOx" role="2OqNvi" />
                                  </node>
                                </node>
                              </node>
                              <node concept="gl6BB" id="5W7E4fV0Xn$" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="5W7E4fV0Xn_" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3$u5V9" id="3r9sVr9TwO$" role="2OqNvi">
                          <node concept="1bVj0M" id="3r9sVr9TwO_" role="23t8la">
                            <node concept="3clFbS" id="3r9sVr9TwOA" role="1bW5cS">
                              <node concept="3clFbF" id="3r9sVr9TwOB" role="3cqZAp">
                                <node concept="2OqwBi" id="3r9sVr9TwOC" role="3clFbG">
                                  <node concept="37vLTw" id="3r9sVr9TwOD" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5W7E4fV0XnA" resolve="it" />
                                  </node>
                                  <node concept="liA8E" id="3r9sVr9TwOE" role="2OqNvi">
                                    <ref role="37wK5l" to="mhbf:~SReference.getTargetSModelReference()" resolve="getTargetSModelReference" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="gl6BB" id="5W7E4fV0XnA" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="5W7E4fV0XnB" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1VAtEI" id="3r9sVr9TwOH" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="3clFbF" id="3r9sVr9TwOI" role="3cqZAp">
                    <node concept="2OqwBi" id="3r9sVr9TwOJ" role="3clFbG">
                      <node concept="37vLTw" id="3r9sVr9TwOK" role="2Oq$k0">
                        <ref role="3cqZAo" node="3r9sVr9TwNI" resolve="mi" />
                      </node>
                      <node concept="liA8E" id="3r9sVr9TwOL" role="2OqNvi">
                        <ref role="37wK5l" to="w1kc:~ModelImports.addUsedLanguage(org.jetbrains.mps.openapi.language.SLanguage)" resolve="addUsedLanguage" />
                        <node concept="pHN19" id="3r9sVr9TwOM" role="37wK5m">
                          <node concept="2V$Bhx" id="3r9sVr9TwON" role="2V$M_3">
                            <property role="2V$B1T" value="9882f4ad-1955-46fe-8269-94189e5dbbf2" />
                            <property role="2V$B1Q" value="jetbrains.mps.lang.migration.util" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="3r9sVr9TwOO" role="3cqZAp">
                    <node concept="2OqwBi" id="3r9sVr9TwOP" role="3clFbG">
                      <node concept="2OqwBi" id="3FLT10Nb1xw" role="2Oq$k0">
                        <node concept="37vLTw" id="3r9sVr9TwOQ" role="2Oq$k0">
                          <ref role="3cqZAo" node="3r9sVr9TwNB" resolve="migrationModel" />
                        </node>
                        <node concept="liA8E" id="3FLT10Nb2T$" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Optional.get()" resolve="get" />
                        </node>
                      </node>
                      <node concept="liA8E" id="3FLT10Na9aQ" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SModel.addRootNode(org.jetbrains.mps.openapi.model.SNode)" resolve="addRootNode" />
                        <node concept="37vLTw" id="3FLT10Na9NG" role="37wK5m">
                          <ref role="3cqZAo" node="3r9sVr9TlA3" resolve="myRefactoringStep" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="3r9sVr9TwOT" role="3cqZAp">
                    <node concept="2OqwBi" id="3r9sVr9TwOU" role="3clFbG">
                      <node concept="37vLTw" id="3r9sVr9TzBr" role="2Oq$k0">
                        <ref role="3cqZAo" node="3r9sVr9Tu1$" resolve="module" />
                      </node>
                      <node concept="liA8E" id="3r9sVr9TwOW" role="2OqNvi">
                        <ref role="37wK5l" to="z1c3:~AbstractModule.setModuleVersion(int)" resolve="setModuleVersion" />
                        <node concept="3cpWs3" id="3r9sVr9TwOX" role="37wK5m">
                          <node concept="3cmrfG" id="3r9sVr9TwOY" role="3uHU7w">
                            <property role="3cmrfH" value="1" />
                          </node>
                          <node concept="37vLTw" id="3r9sVr9T$gd" role="3uHU7B">
                            <ref role="3cqZAo" node="3r9sVr9T$g9" resolve="moduleVersion" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="4nVmAeml0cA" role="3cqZAp" />
                  <node concept="3cpWs8" id="4JlWzK6PWtC" role="3cqZAp">
                    <node concept="3cpWsn" id="4JlWzK6PWtD" role="3cpWs9">
                      <property role="TrG5h" value="modules" />
                      <node concept="A3Dl8" id="4JlWzK6PW$r" role="1tU5fm">
                        <node concept="3uibUv" id="4JlWzK6PW$t" role="A3Ik2">
                          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="4JlWzK6PWtE" role="33vP2m">
                        <node concept="37vLTw" id="4JlWzK6PWtF" role="2Oq$k0">
                          <ref role="3cqZAo" node="4nVmAemkP1o" resolve="searchScope" />
                        </node>
                        <node concept="liA8E" id="4JlWzK6PWtG" role="2OqNvi">
                          <ref role="37wK5l" to="lui2:~SearchScope.getModules()" resolve="getModules" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2Gpval" id="4nVmAemf0V5" role="3cqZAp">
                    <node concept="2GrKxI" id="4nVmAemf0V7" role="2Gsz3X">
                      <property role="TrG5h" value="m" />
                    </node>
                    <node concept="3clFbS" id="4nVmAemf0Vb" role="2LFqv$">
                      <node concept="3cpWs8" id="2rjOGLWMixU" role="3cqZAp">
                        <node concept="3cpWsn" id="2rjOGLWMixV" role="3cpWs9">
                          <property role="TrG5h" value="recordedDependencyVersions" />
                          <property role="3TUv4t" value="true" />
                          <node concept="3uibUv" id="2rjOGLWMi45" role="1tU5fm">
                            <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
                            <node concept="3uibUv" id="2rjOGLWMi4a" role="11_B2D">
                              <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
                            </node>
                            <node concept="3uibUv" id="2rjOGLWMi4b" role="11_B2D">
                              <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                            </node>
                          </node>
                          <node concept="2YIFZM" id="2rjOGLWMixW" role="33vP2m">
                            <ref role="37wK5l" to="6f4m:2rjOGLWv_u2" resolve="getRecordedDependencyVersions" />
                            <ref role="1Pybhc" to="6f4m:4JlWzK6VGnA" resolve="MigrationModuleUtil" />
                            <node concept="2GrUjf" id="2rjOGLWM$L4" role="37wK5m">
                              <ref role="2Gs0qQ" node="4nVmAemf0V7" resolve="m" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="2rjOGLWMr3v" role="3cqZAp">
                        <node concept="3clFbS" id="2rjOGLWMr3x" role="3clFbx">
                          <node concept="3N13vt" id="2rjOGLWMx87" role="3cqZAp" />
                        </node>
                        <node concept="3fqX7Q" id="2rjOGLWMs6U" role="3clFbw">
                          <node concept="2OqwBi" id="2rjOGLWLRvU" role="3fr31v">
                            <node concept="37vLTw" id="2rjOGLWMixY" role="2Oq$k0">
                              <ref role="3cqZAo" node="2rjOGLWMixV" resolve="recordedDependencyVersions" />
                            </node>
                            <node concept="liA8E" id="2rjOGLWLWd2" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~Map.containsKey(java.lang.Object)" resolve="containsKey" />
                              <node concept="2OqwBi" id="2rjOGLWLZH9" role="37wK5m">
                                <node concept="37vLTw" id="2rjOGLWLXRm" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3r9sVr9Tu1$" resolve="module" />
                                </node>
                                <node concept="liA8E" id="2rjOGLWM2ZG" role="2OqNvi">
                                  <ref role="37wK5l" to="z1c3:~AbstractModule.getModuleReference()" resolve="getModuleReference" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="2rjOGLWMbxZ" role="3cqZAp" />
                      <node concept="3cpWs8" id="6gU0oA5N_j2" role="3cqZAp">
                        <node concept="3cpWsn" id="6gU0oA5N_j3" role="3cpWs9">
                          <property role="TrG5h" value="depVersion" />
                          <node concept="10Oyi0" id="6gU0oA5N_it" role="1tU5fm" />
                          <node concept="2OqwBi" id="2rjOGLWMCoL" role="33vP2m">
                            <node concept="37vLTw" id="2rjOGLWMAJ0" role="2Oq$k0">
                              <ref role="3cqZAo" node="2rjOGLWMixV" resolve="recordedDependencyVersions" />
                            </node>
                            <node concept="liA8E" id="2rjOGLWMFId" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                              <node concept="2OqwBi" id="2rjOGLWMJma" role="37wK5m">
                                <node concept="37vLTw" id="2rjOGLWMGVQ" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3r9sVr9Tu1$" resolve="module" />
                                </node>
                                <node concept="liA8E" id="2rjOGLWMMFF" role="2OqNvi">
                                  <ref role="37wK5l" to="z1c3:~AbstractModule.getModuleReference()" resolve="getModuleReference" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="6gU0oA5NdRM" role="3cqZAp">
                        <node concept="3clFbS" id="6gU0oA5NdRO" role="3clFbx">
                          <node concept="RRSsy" id="3jYQuSB379N" role="3cqZAp">
                            <property role="RRSoG" value="gZ5fh_4/error" />
                            <node concept="2OqwBi" id="2rjOGLWMQtO" role="RRSoy">
                              <node concept="Xl_RD" id="2rjOGLWMQtP" role="2Oq$k0">
                                <property role="Xl_RC" value="Module %s depends on module %s with version %d, but current version is %d" />
                              </node>
                              <node concept="2cAKMz" id="2rjOGLWMQtQ" role="2OqNvi">
                                <node concept="2GrUjf" id="4nVmAemfmvF" role="2cAKU6">
                                  <ref role="2Gs0qQ" node="4nVmAemf0V7" resolve="m" />
                                </node>
                                <node concept="37vLTw" id="4nVmAemkFgI" role="2cAKU6">
                                  <ref role="3cqZAo" node="3r9sVr9Tu1$" resolve="module" />
                                </node>
                                <node concept="37vLTw" id="6gU0oA5NDDW" role="2cAKU6">
                                  <ref role="3cqZAo" node="6gU0oA5N_j3" resolve="depVersion" />
                                </node>
                                <node concept="37vLTw" id="4nVmAemkNfP" role="2cAKU6">
                                  <ref role="3cqZAo" node="3r9sVr9T$g9" resolve="moduleVersion" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3y3z36" id="6gU0oA5ND5i" role="3clFbw">
                          <node concept="37vLTw" id="4nVmAemkOeK" role="3uHU7B">
                            <ref role="3cqZAo" node="3r9sVr9T$g9" resolve="moduleVersion" />
                          </node>
                          <node concept="37vLTw" id="6gU0oA5N_j9" role="3uHU7w">
                            <ref role="3cqZAo" node="6gU0oA5N_j3" resolve="depVersion" />
                          </node>
                        </node>
                        <node concept="9aQIb" id="6gU0oA5NQnl" role="9aQIa">
                          <node concept="3clFbS" id="6gU0oA5NQnm" role="9aQI4">
                            <node concept="3clFbF" id="4JlWzK6Y80a" role="3cqZAp">
                              <node concept="2YIFZM" id="4JlWzK6Y8aO" role="3clFbG">
                                <ref role="1Pybhc" to="6f4m:4JlWzK6VGnA" resolve="MigrationModuleUtil" />
                                <ref role="37wK5l" to="6f4m:4JlWzK6Xy$4" resolve="recordDependencyVersion" />
                                <node concept="2GrUjf" id="4nVmAemfnaN" role="37wK5m">
                                  <ref role="2Gs0qQ" node="4nVmAemf0V7" resolve="m" />
                                </node>
                                <node concept="2OqwBi" id="4JlWzK6Y8aQ" role="37wK5m">
                                  <node concept="37vLTw" id="4nVmAemkFZQ" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3r9sVr9Tu1$" resolve="module" />
                                  </node>
                                  <node concept="liA8E" id="4JlWzK6Y8aS" role="2OqNvi">
                                    <ref role="37wK5l" to="z1c3:~AbstractModule.getModuleReference()" resolve="getModuleReference" />
                                  </node>
                                </node>
                                <node concept="3cpWs3" id="4JlWzK6Yel6" role="37wK5m">
                                  <node concept="37vLTw" id="4nVmAemkM4P" role="3uHU7B">
                                    <ref role="3cqZAo" node="3r9sVr9T$g9" resolve="moduleVersion" />
                                  </node>
                                  <node concept="3cmrfG" id="4JlWzK6Yerg" role="3uHU7w">
                                    <property role="3cmrfH" value="1" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="2rjOGLWMavH" role="2GsD0m">
                      <node concept="37vLTw" id="2rjOGLWMavI" role="2Oq$k0">
                        <ref role="3cqZAo" node="4JlWzK6PWtD" resolve="modules" />
                      </node>
                      <node concept="3zZkjj" id="2rjOGLWMavJ" role="2OqNvi">
                        <node concept="1bVj0M" id="2rjOGLWMavK" role="23t8la">
                          <node concept="3clFbS" id="2rjOGLWMavL" role="1bW5cS">
                            <node concept="3clFbF" id="2rjOGLWMavM" role="3cqZAp">
                              <node concept="2YIFZM" id="2rjOGLWMavN" role="3clFbG">
                                <ref role="37wK5l" to="6f4m:3UfGsecu97b" resolve="isModuleMigrateable" />
                                <ref role="1Pybhc" to="6f4m:4JlWzK6VGnA" resolve="MigrationModuleUtil" />
                                <node concept="37vLTw" id="2rjOGLWMavO" role="37wK5m">
                                  <ref role="3cqZAo" node="2rjOGLWMavP" resolve="m" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="gl6BB" id="2rjOGLWMavP" role="1bW2Oz">
                            <property role="TrG5h" value="m" />
                            <node concept="2jxLKc" id="2rjOGLWMavQ" role="1tU5fm" />
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
      <node concept="37vLTG" id="3r9sVr9TaS8" role="3clF46">
        <property role="TrG5h" value="session" />
        <node concept="3uibUv" id="3r9sVr9TaS7" role="1tU5fm">
          <ref role="3uigEE" to="5nvm:3KqYwoBJ0xf" resolve="RefactoringSession" />
        </node>
      </node>
      <node concept="37vLTG" id="4nVmAemkP1o" role="3clF46">
        <property role="TrG5h" value="searchScope" />
        <node concept="3uibUv" id="4nVmAemkQfC" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SearchScope" resolve="SearchScope" />
        </node>
      </node>
      <node concept="37vLTG" id="3r9sVr9Tu1$" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="3uibUv" id="3r9sVr9Tued" role="1tU5fm">
          <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
        </node>
      </node>
      <node concept="37vLTG" id="5zDh0PE_Jcz" role="3clF46">
        <property role="TrG5h" value="caption" />
        <node concept="3uibUv" id="5zDh0PE_Osq" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="2AHcQZ" id="5zDh0PE_Ow0" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3r9sVr9T9pQ" role="jymVt">
      <property role="TrG5h" value="addPart" />
      <node concept="37vLTG" id="3r9sVr9TLca" role="3clF46">
        <property role="TrG5h" value="participant" />
        <node concept="3uibUv" id="3r9sVr9TM4U" role="1tU5fm">
          <ref role="3uigEE" to="5nvm:5DMHUkptmAc" resolve="RefactoringParticipant.PersistentRefactoringParticipant" />
        </node>
      </node>
      <node concept="37vLTG" id="3r9sVr9TMdW" role="3clF46">
        <property role="TrG5h" value="initialState" />
        <node concept="3Tqbb2" id="3r9sVr9TMRG" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3r9sVr9TMTq" role="3clF46">
        <property role="TrG5h" value="finalState" />
        <node concept="3Tqbb2" id="3r9sVr9TNsp" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="3r9sVr9T9pS" role="3clF45" />
      <node concept="3Tm1VV" id="3r9sVr9T9pT" role="1B3o_S" />
      <node concept="3clFbS" id="3r9sVr9T9pU" role="3clF47">
        <node concept="3clFbF" id="3r9sVr9TNyW" role="3cqZAp">
          <node concept="2OqwBi" id="3r9sVr9TOgK" role="3clFbG">
            <node concept="2OqwBi" id="3r9sVr9TNAs" role="2Oq$k0">
              <node concept="37vLTw" id="3r9sVr9TNyV" role="2Oq$k0">
                <ref role="3cqZAo" node="3r9sVr9TlA3" resolve="myRefactoringStep" />
              </node>
              <node concept="3Tsc0h" id="6lH4CJIYA3V" role="2OqNvi">
                <ref role="3TtcxE" to="53vh:1JTUOcBqQQi" resolve="part" />
              </node>
            </node>
            <node concept="TSZUe" id="3r9sVr9TP8U" role="2OqNvi">
              <node concept="2pJPEk" id="39r_V8zMPmc" role="25WWJ7">
                <node concept="2pJPED" id="39r_V8zMPs6" role="2pJPEn">
                  <ref role="2pJxaS" to="53vh:2GZlO$G5z5o" resolve="RefactoringPart" />
                  <node concept="2pJxcG" id="39r_V8zMPCo" role="2pJxcM">
                    <ref role="2pJxcJ" to="53vh:39r_V8zIueE" resolve="participant" />
                    <node concept="WxPPo" id="6bbvpKWHoNH" role="28ntcv">
                      <node concept="2OqwBi" id="39r_V8zMPOl" role="WxPPp">
                        <node concept="37vLTw" id="39r_V8zMPLT" role="2Oq$k0">
                          <ref role="3cqZAo" node="3r9sVr9TLca" resolve="participant" />
                        </node>
                        <node concept="liA8E" id="39r_V8zMPTA" role="2OqNvi">
                          <ref role="37wK5l" to="5nvm:3KqYwoBJ2GJ" resolve="getId" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2pIpSj" id="39r_V8zMPZR" role="2pJxcM">
                    <ref role="2pIpSl" to="53vh:39r_V8zIueG" resolve="initialState" />
                    <node concept="36biLy" id="39r_V8zMQ7j" role="28nt2d">
                      <node concept="37vLTw" id="39r_V8zMQah" role="36biLW">
                        <ref role="3cqZAo" node="3r9sVr9TMdW" resolve="initialState" />
                      </node>
                    </node>
                  </node>
                  <node concept="2pIpSj" id="39r_V8zMQh5" role="2pJxcM">
                    <ref role="2pIpSl" to="53vh:39r_V8zIueI" resolve="finalState" />
                    <node concept="36biLy" id="39r_V8zMQ_p" role="28nt2d">
                      <node concept="37vLTw" id="39r_V8zMQCT" role="36biLW">
                        <ref role="3cqZAo" node="3r9sVr9TMTq" resolve="finalState" />
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
    <node concept="3clFb_" id="4JlWzK6Y51p" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getFromVersion" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="4JlWzK6Y51s" role="3clF47">
        <node concept="3clFbF" id="4JlWzK6Y5k$" role="3cqZAp">
          <node concept="2OqwBi" id="4JlWzK6Y7wi" role="3clFbG">
            <node concept="2OqwBi" id="4JlWzK6Y70y" role="2Oq$k0">
              <node concept="Xjq3P" id="4JlWzK6Y5kz" role="2Oq$k0" />
              <node concept="2OwXpG" id="4JlWzK6Y79Q" role="2OqNvi">
                <ref role="2Oxat5" node="3r9sVr9TlA3" resolve="myRefactoringStep" />
              </node>
            </node>
            <node concept="3TrcHB" id="4JlWzK6Y7K0" role="2OqNvi">
              <ref role="3TsBF5" to="53vh:1JTUOcBqQQh" resolve="fromVersion" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4JlWzK6Y3xj" role="1B3o_S" />
      <node concept="10Oyi0" id="4JlWzK6Y51n" role="3clF45" />
    </node>
    <node concept="3clFb_" id="1$U7CScoLx$" role="jymVt">
      <property role="TrG5h" value="addOptions" />
      <node concept="3cqZAl" id="1$U7CScoLxF" role="3clF45" />
      <node concept="3Tm1VV" id="1$U7CScoLxG" role="1B3o_S" />
      <node concept="3clFbS" id="1$U7CScoLxH" role="3clF47">
        <node concept="3clFbJ" id="1$U7CScp4zk" role="3cqZAp">
          <node concept="3clFbS" id="1$U7CScp4zl" role="3clFbx">
            <node concept="3clFbF" id="1$U7CScp7V$" role="3cqZAp">
              <node concept="2OqwBi" id="1$U7CScp8dC" role="3clFbG">
                <node concept="2OqwBi" id="1$U7CScp7ZB" role="2Oq$k0">
                  <node concept="37vLTw" id="1$U7CScp7Vz" role="2Oq$k0">
                    <ref role="3cqZAo" node="3r9sVr9TlA3" resolve="myRefactoringStep" />
                  </node>
                  <node concept="3TrEf2" id="1$U7CScp868" role="2OqNvi">
                    <ref role="3Tt5mk" to="53vh:37Il31hWzcW" resolve="options" />
                  </node>
                </node>
                <node concept="zfrQC" id="1$U7CScp8iE" role="2OqNvi">
                  <ref role="1A9B2P" to="53vh:37Il31hWzd0" resolve="RefactoringOptions" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1$U7CScp4zF" role="3clFbw">
            <node concept="2OqwBi" id="1$U7CScp4zG" role="2Oq$k0">
              <node concept="37vLTw" id="1$U7CScp4zH" role="2Oq$k0">
                <ref role="3cqZAo" node="3r9sVr9TlA3" resolve="myRefactoringStep" />
              </node>
              <node concept="3TrEf2" id="1$U7CScp4zI" role="2OqNvi">
                <ref role="3Tt5mk" to="53vh:37Il31hWzcW" resolve="options" />
              </node>
            </node>
            <node concept="3w_OXm" id="1$U7CScp7uu" role="2OqNvi" />
          </node>
        </node>
        <node concept="2Gpval" id="1$U7CScp3FL" role="3cqZAp">
          <node concept="2GrKxI" id="1$U7CScp3FN" role="2Gsz3X">
            <property role="TrG5h" value="option" />
          </node>
          <node concept="3clFbS" id="1$U7CScp3FP" role="2LFqv$">
            <node concept="3clFbJ" id="1$U7CScoXLM" role="3cqZAp">
              <node concept="3clFbS" id="1$U7CScoXLN" role="3clFbx">
                <node concept="3clFbF" id="1$U7CScoY8$" role="3cqZAp">
                  <node concept="2OqwBi" id="1$U7CScoYx5" role="3clFbG">
                    <node concept="2OqwBi" id="1$U7CScoY8A" role="2Oq$k0">
                      <node concept="2OqwBi" id="1$U7CScoY8B" role="2Oq$k0">
                        <node concept="37vLTw" id="1$U7CScoY8C" role="2Oq$k0">
                          <ref role="3cqZAo" node="3r9sVr9TlA3" resolve="myRefactoringStep" />
                        </node>
                        <node concept="3TrEf2" id="1$U7CScoY8D" role="2OqNvi">
                          <ref role="3Tt5mk" to="53vh:37Il31hWzcW" resolve="options" />
                        </node>
                      </node>
                      <node concept="3Tsc0h" id="1$U7CScoY8E" role="2OqNvi">
                        <ref role="3TtcxE" to="53vh:37Il31hWzd6" resolve="options" />
                      </node>
                    </node>
                    <node concept="TSZUe" id="1$U7CScp0xd" role="2OqNvi">
                      <node concept="2pJPEk" id="1$U7CScp0F9" role="25WWJ7">
                        <node concept="2pJPED" id="1$U7CScp0Ly" role="2pJPEn">
                          <ref role="2pJxaS" to="53vh:37Il31hWzd3" resolve="RefactoringOption" />
                          <node concept="2pJxcG" id="1$U7CScp0Xy" role="2pJxcM">
                            <ref role="2pJxcJ" to="53vh:37Il31hWzd4" resolve="optionId" />
                            <node concept="WxPPo" id="6bbvpKWHoNI" role="28ntcv">
                              <node concept="2OqwBi" id="1$U7CScp18d" role="WxPPp">
                                <node concept="2GrUjf" id="1$U7CScp4jE" role="2Oq$k0">
                                  <ref role="2Gs0qQ" node="1$U7CScp3FN" resolve="option" />
                                </node>
                                <node concept="liA8E" id="1$U7CScp1a8" role="2OqNvi">
                                  <ref role="37wK5l" to="5nvm:37Il31hWRNw" resolve="getId" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2pJxcG" id="1$U7CScp1h5" role="2pJxcM">
                            <ref role="2pJxcJ" to="53vh:37Il31hWKtO" resolve="description" />
                            <node concept="WxPPo" id="6bbvpKWHoNJ" role="28ntcv">
                              <node concept="2OqwBi" id="1$U7CScp1BJ" role="WxPPp">
                                <node concept="2GrUjf" id="1$U7CScp4lY" role="2Oq$k0">
                                  <ref role="2Gs0qQ" node="1$U7CScp3FN" resolve="option" />
                                </node>
                                <node concept="liA8E" id="1$U7CScp1DE" role="2OqNvi">
                                  <ref role="37wK5l" to="5nvm:37Il31hWTci" resolve="getDescription" />
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
              <node concept="3fqX7Q" id="1$U7CScoY2$" role="3clFbw">
                <node concept="2OqwBi" id="1$U7CScoY2A" role="3fr31v">
                  <node concept="2OqwBi" id="1$U7CScoY2B" role="2Oq$k0">
                    <node concept="2OqwBi" id="1$U7CScoY2C" role="2Oq$k0">
                      <node concept="2OqwBi" id="1$U7CScoY2D" role="2Oq$k0">
                        <node concept="37vLTw" id="1$U7CScoY2E" role="2Oq$k0">
                          <ref role="3cqZAo" node="3r9sVr9TlA3" resolve="myRefactoringStep" />
                        </node>
                        <node concept="3TrEf2" id="1$U7CScoY2F" role="2OqNvi">
                          <ref role="3Tt5mk" to="53vh:37Il31hWzcW" resolve="options" />
                        </node>
                      </node>
                      <node concept="3Tsc0h" id="1$U7CScoY2G" role="2OqNvi">
                        <ref role="3TtcxE" to="53vh:37Il31hWzd6" resolve="options" />
                      </node>
                    </node>
                    <node concept="3$u5V9" id="1$U7CScoY2H" role="2OqNvi">
                      <node concept="1bVj0M" id="1$U7CScoY2I" role="23t8la">
                        <node concept="3clFbS" id="1$U7CScoY2J" role="1bW5cS">
                          <node concept="3clFbF" id="1$U7CScoY2K" role="3cqZAp">
                            <node concept="2ShNRf" id="1$U7CScoY2L" role="3clFbG">
                              <node concept="1pGfFk" id="1$U7CScoY2M" role="2ShVmc">
                                <ref role="37wK5l" to="5nvm:37Il31hWKPu" resolve="RefactoringParticipant.Option" />
                                <node concept="2OqwBi" id="1$U7CScoY2N" role="37wK5m">
                                  <node concept="37vLTw" id="1$U7CScoY2O" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5W7E4fV0XnG" resolve="it" />
                                  </node>
                                  <node concept="3TrcHB" id="1$U7CScoY2P" role="2OqNvi">
                                    <ref role="3TsBF5" to="53vh:37Il31hWzd4" resolve="optionId" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="1$U7CScoY2Q" role="37wK5m">
                                  <node concept="37vLTw" id="1$U7CScoY2R" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5W7E4fV0XnG" resolve="it" />
                                  </node>
                                  <node concept="3TrcHB" id="1$U7CScoY2S" role="2OqNvi">
                                    <ref role="3TsBF5" to="53vh:37Il31hWKtO" resolve="description" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="5W7E4fV0XnG" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="5W7E4fV0XnH" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3JPx81" id="1$U7CScoY2V" role="2OqNvi">
                    <node concept="2GrUjf" id="1$U7CScp4cP" role="25WWJ7">
                      <ref role="2Gs0qQ" node="1$U7CScp3FN" resolve="option" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="1$U7CScp3Vi" role="2GsD0m">
            <ref role="3cqZAo" node="1$U7CScoQqR" resolve="selectedOptions" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1$U7CScoQqR" role="3clF46">
        <property role="TrG5h" value="selectedOptions" />
        <node concept="A3Dl8" id="1$U7CScp2Rg" role="1tU5fm">
          <node concept="3uibUv" id="1$U7CScp3ar" role="A3Ik2">
            <ref role="3uigEE" to="5nvm:37Il31hWJ4Z" resolve="RefactoringParticipant.Option" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="3r9sVr9T2fF" role="1B3o_S" />
  </node>
</model>

