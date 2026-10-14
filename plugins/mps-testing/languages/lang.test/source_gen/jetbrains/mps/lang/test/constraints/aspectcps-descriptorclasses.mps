<?xml version="1.0" encoding="UTF-8"?>
<model ref="00000000-0000-4000-5f02-5beb5f025beb/i:fc11309(checkpoints/jetbrains.mps.lang.test.constraints@descriptorclasses)">
  <persistence version="9" />
  <attribute name="checkpoint" value="DescriptorClasses" />
  <attribute name="generation-plan" value="AspectCPS" />
  <attribute name="user-objects" value="true" />
  <languages />
  <imports>
    <import index="tp5q" ref="r:00000000-0000-4000-0000-011c89590382(jetbrains.mps.lang.test.constraints)" />
    <import index="dush" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.persistence(MPS.OpenAPI/)" />
    <import index="tp5o" ref="r:00000000-0000-4000-0000-011c89590380(jetbrains.mps.lang.test.behavior)" />
    <import index="j809" ref="9abaaae2-decf-4e97-bf80-9109e8b759cc/java:jetbrains.mps.core.aspects.feedback.messages(jetbrains.mps.lang.messages.api/)" />
    <import index="79pl" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.runtime.base(MPS.Core/)" />
    <import index="j80a" ref="0a98f3e2-decf-4e97-bf80-9109eccc59bb/java:jetbrains.mps.core.aspects.feedback.messages(jetbrains.mps.lang.feedback.problem.rules/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="tp5g" ref="r:00000000-0000-4000-0000-011c89590388(jetbrains.mps.lang.test.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tpcn" ref="r:00000000-0000-4000-0000-011c8959028b(jetbrains.mps.lang.structure.behavior)" />
    <import index="o99v" ref="8e98f4e2-decf-4e97-bf80-9109e8b759ee/java:jetbrains.mps.core.aspects.constraints.rules(jetbrains.mps.lang.constraints.rules.runtime/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="tpe3" ref="r:00000000-0000-4000-0000-011c895902d7(jetbrains.mps.baseLanguage.unitTest.structure)" />
    <import index="1ctc" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.stream(JDK/)" />
    <import index="tpe5" ref="r:00000000-0000-4000-0000-011c895902d1(jetbrains.mps.baseLanguage.unitTest.behavior)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="35tq" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.scope(MPS.Core/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="79pm" ref="8e98f4e2-decf-4e97-bf80-9109e8b759ee/java:jetbrains.mps.smodel.runtime.base(jetbrains.mps.lang.constraints.rules.runtime/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="tqvn" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.tempmodel(MPS.Core/)" />
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="i8bi" ref="r:c3548bac-30eb-4a2a-937c-0111d5697309(jetbrains.mps.lang.smodel.generator.smodelAdapter)" />
    <import index="2k9e" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter.structure(MPS.Core/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="ze1i" ref="8e98f4e2-decf-4e97-bf80-9109e8b759ee/java:jetbrains.mps.smodel.runtime(jetbrains.mps.lang.constraints.rules.runtime/)" />
    <import index="pdwk" ref="8e98f4e2-decf-4e97-bf80-9109e8b759ee/java:jetbrains.mps.core.aspects.constraints.rules.kinds(jetbrains.mps.lang.constraints.rules.runtime/)" />
    <import index="9jwd" ref="9e9ef4e2-decf-4e97-bf80-9109e8b759bb/java:jetbrains.mps.core.aspects.feedback.api(jetbrains.mps.lang.feedback.api/)" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="3235159848334022093" name="jetbrains.mps.lang.behavior.structure.Node_ConceptMethodCall" flags="nn" index="3zqWPK" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
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
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
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
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="8353134822275456723" name="jetbrains.mps.baseLanguage.structure.HexLongLiteral" flags="ng" index="11gdke">
        <property id="8353134822275456796" name="hexValue" index="11gdj1" />
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
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="4269842503726207156" name="jetbrains.mps.baseLanguage.structure.LongLiteral" flags="nn" index="1adDum">
        <property id="4269842503726207157" name="value" index="1adDun" />
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
        <child id="4972241301747169160" name="typeArgument" index="3PaCim" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <property id="1211504562189" name="nestedName" index="jj94n" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1171903607971" name="jetbrains.mps.baseLanguage.structure.WildCardType" flags="in" index="3qTvmN" />
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
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
        <child id="1201186121363" name="typeParameter" index="2Ghqu4" />
      </concept>
    </language>
    <language id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots">
      <concept id="4079382982702596667" name="jetbrains.mps.baseLanguage.checkedDots.structure.CheckedDotExpression" flags="nn" index="2EnYce" />
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="5808518347809715508" name="jetbrains.mps.lang.generator.structure.GeneratorDebug_InputNode" flags="nn" index="385nmt">
        <property id="5808518347809748738" name="presentation" index="385vuF" />
        <child id="5808518347809747118" name="node" index="385v07" />
      </concept>
      <concept id="3864140621129707969" name="jetbrains.mps.lang.generator.structure.GeneratorDebug_Mappings" flags="nn" index="39dXUE">
        <child id="3864140621129713349" name="labels" index="39e2AI" />
      </concept>
      <concept id="3864140621129713351" name="jetbrains.mps.lang.generator.structure.GeneratorDebug_NodeMapEntry" flags="nn" index="39e2AG">
        <property id="5843998055530255671" name="isNewRoot" index="2mV_xN" />
        <reference id="3864140621129713371" name="inputOrigin" index="39e2AK" />
        <child id="5808518347809748862" name="inputNode" index="385vvn" />
        <child id="3864140621129713365" name="outputNode" index="39e2AY" />
      </concept>
      <concept id="3864140621129713348" name="jetbrains.mps.lang.generator.structure.GeneratorDebug_LabelEntry" flags="nn" index="39e2AJ">
        <property id="3864140621129715945" name="label" index="39e3Y2" />
        <child id="3864140621129715947" name="entries" index="39e3Y0" />
      </concept>
      <concept id="3864140621129713362" name="jetbrains.mps.lang.generator.structure.GeneratorDebug_NodeRef" flags="nn" index="39e2AT">
        <reference id="3864140621129713363" name="node" index="39e2AS" />
      </concept>
      <concept id="3637169702552512264" name="jetbrains.mps.lang.generator.structure.ElementaryNodeId" flags="ng" index="3u3nmq">
        <property id="3637169702552512269" name="nodeId" index="3u3nmv" />
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
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="5085607816302529296" name="jetbrains.mps.baseLanguage.javadoc.structure.IHoldCommentLines" flags="ngI" index="1VezTd">
        <child id="5085607816302529587" name="commentBody" index="1Vez_I" />
      </concept>
    </language>
    <language id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal">
      <concept id="1238251434034" name="jetbrains.mps.baseLanguageInternal.structure.ExtractToConstantExpression" flags="ng" index="1dyn4i">
        <property id="1238251449050" name="fieldName" index="1dyqJU" />
        <child id="1238251454130" name="expression" index="1dyrYi" />
      </concept>
      <concept id="4927083583736784422" name="jetbrains.mps.baseLanguageInternal.structure.ExtractToSingleConstantExpression" flags="ng" index="1BaE9c">
        <property id="3566113306135792467" name="baseContainerName" index="1ouuDV" />
        <property id="4927083583736815155" name="uniqueFieldName" index="1BaxDp" />
        <child id="4927083583736819744" name="expression" index="1Bazha" />
      </concept>
      <concept id="1174294166120" name="jetbrains.mps.baseLanguageInternal.structure.InternalPartialInstanceMethodCall" flags="nn" index="1DoJHT">
        <property id="1174294288199" name="methodName" index="1Dpdpm" />
        <child id="1174313653259" name="returnType" index="1Ez5kq" />
        <child id="1174317636233" name="instance" index="1EMhIo" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="4705942098322609812" name="jetbrains.mps.lang.smodel.structure.EnumMember_IsOperation" flags="ng" index="21noJN">
        <child id="4705942098322609813" name="member" index="21noJM" />
      </concept>
      <concept id="4705942098322467729" name="jetbrains.mps.lang.smodel.structure.EnumMemberReference" flags="ng" index="21nZrQ">
        <reference id="4705942098322467736" name="decl" index="21nZrZ" />
      </concept>
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="8758390115028452779" name="jetbrains.mps.lang.smodel.structure.Node_GetReferencesOperation" flags="nn" index="2z74zc" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1145567426890" name="jetbrains.mps.lang.smodel.structure.SNodeListCreator" flags="nn" index="2T8Vx0">
        <child id="1145567471833" name="createdType" index="2T96Bj" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="4124388153790980106" name="jetbrains.mps.lang.smodel.structure.Reference_GetTargetOperation" flags="nn" index="2ZHEkA" />
      <concept id="2644386474301421077" name="jetbrains.mps.lang.smodel.structure.LinkIdRefExpression" flags="nn" index="359W_D">
        <reference id="2644386474301421078" name="conceptDeclaration" index="359W_E" />
        <reference id="2644386474301421079" name="linkDeclaration" index="359W_F" />
      </concept>
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1154546920561" name="jetbrains.mps.lang.smodel.structure.OperationParm_ConceptList" flags="ng" index="3gmYPX">
        <child id="1154546920563" name="concept" index="3gmYPZ" />
      </concept>
      <concept id="1154546950173" name="jetbrains.mps.lang.smodel.structure.ConceptReference" flags="ng" index="3gn64h">
        <reference id="1154546997487" name="concept" index="3gnhBz" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="6039268229364358244" name="jetbrains.mps.lang.smodel.structure.ExactConceptCase" flags="ng" index="1pnPoh">
        <child id="6039268229364358388" name="body" index="1pnPq1" />
        <child id="6039268229364358387" name="concept" index="1pnPq6" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="5944356402132808749" name="jetbrains.mps.lang.smodel.structure.ConceptSwitchStatement" flags="nn" index="1_3QMa">
        <child id="6039268229365417680" name="defaultBlock" index="1prKM_" />
        <child id="5944356402132808753" name="case" index="1_3QMm" />
        <child id="5944356402132808752" name="expression" index="1_3QMn" />
      </concept>
      <concept id="1144195091934" name="jetbrains.mps.lang.smodel.structure.Node_IsRoleOperation" flags="nn" index="1BlSNk">
        <reference id="1144195362400" name="conceptOfParent" index="1BmUXE" />
        <reference id="1144195396777" name="linkInParent" index="1Bn3mz" />
      </concept>
      <concept id="1172323065820" name="jetbrains.mps.lang.smodel.structure.Node_GetConceptOperation" flags="nn" index="3NT_Vc" />
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="4222318806802425298" name="jetbrains.mps.lang.core.structure.SuppressErrorsAnnotation" flags="ng" index="15s5l7">
        <property id="8575328350543493365" name="message" index="huDt6" />
        <property id="2423417345669755629" name="filter" index="1eyWvh" />
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
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
    </language>
  </registry>
  <node concept="312cEu" id="0">
    <property role="TrG5h" value="AbstractTestNodeAnnotation_Constraints" />
    <uo k="s:originTrace" v="n:3143335925186804909" />
    <node concept="3Tm1VV" id="1" role="1B3o_S">
      <uo k="s:originTrace" v="n:3143335925186804909" />
    </node>
    <node concept="3uibUv" id="2" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:3143335925186804909" />
    </node>
    <node concept="3clFbW" id="3" role="jymVt">
      <uo k="s:originTrace" v="n:3143335925186804909" />
      <node concept="37vLTG" id="6" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:3143335925186804909" />
        <node concept="3uibUv" id="9" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:3143335925186804909" />
        </node>
      </node>
      <node concept="3cqZAl" id="7" role="3clF45">
        <uo k="s:originTrace" v="n:3143335925186804909" />
      </node>
      <node concept="3clFbS" id="8" role="3clF47">
        <uo k="s:originTrace" v="n:3143335925186804909" />
        <node concept="XkiVB" id="a" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:3143335925186804909" />
          <node concept="1BaE9c" id="c" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="AbstractTestNodeAnnotation$lh" />
            <uo k="s:originTrace" v="n:3143335925186804909" />
            <node concept="2YIFZM" id="e" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:3143335925186804909" />
              <node concept="11gdke" id="f" role="37wK5m">
                <property role="11gdj1" value="8585453e6bfb4d80L" />
                <uo k="s:originTrace" v="n:3143335925186804909" />
              </node>
              <node concept="11gdke" id="g" role="37wK5m">
                <property role="11gdj1" value="98deb16074f1d86cL" />
                <uo k="s:originTrace" v="n:3143335925186804909" />
              </node>
              <node concept="11gdke" id="h" role="37wK5m">
                <property role="11gdj1" value="11e0d52da47L" />
                <uo k="s:originTrace" v="n:3143335925186804909" />
              </node>
              <node concept="Xl_RD" id="i" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.test.structure.AbstractTestNodeAnnotation" />
                <uo k="s:originTrace" v="n:3143335925186804909" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="d" role="37wK5m">
            <ref role="3cqZAo" node="6" resolve="initContext" />
            <uo k="s:originTrace" v="n:3143335925186804909" />
          </node>
        </node>
        <node concept="3clFbF" id="b" role="3cqZAp">
          <uo k="s:originTrace" v="n:3143335925186804909" />
          <node concept="1rXfSq" id="j" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.setCanBeChildConstraint(jetbrains.mps.smodel.runtime.ConstraintFunction)" resolve="setCanBeChildConstraint" />
            <uo k="s:originTrace" v="n:3143335925186804909" />
            <node concept="2ShNRf" id="k" role="37wK5m">
              <uo k="s:originTrace" v="n:3143335925186804909" />
              <node concept="YeOm9" id="l" role="2ShVmc">
                <uo k="s:originTrace" v="n:3143335925186804909" />
                <node concept="1Y3b0j" id="m" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <uo k="s:originTrace" v="n:3143335925186804909" />
                  <node concept="3Tm1VV" id="n" role="1B3o_S">
                    <uo k="s:originTrace" v="n:3143335925186804909" />
                  </node>
                  <node concept="3clFb_" id="o" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="invoke" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <uo k="s:originTrace" v="n:3143335925186804909" />
                    <node concept="3Tm1VV" id="r" role="1B3o_S">
                      <uo k="s:originTrace" v="n:3143335925186804909" />
                    </node>
                    <node concept="2AHcQZ" id="s" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:3143335925186804909" />
                    </node>
                    <node concept="3uibUv" id="t" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      <uo k="s:originTrace" v="n:3143335925186804909" />
                    </node>
                    <node concept="37vLTG" id="u" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <uo k="s:originTrace" v="n:3143335925186804909" />
                      <node concept="3uibUv" id="x" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                        <uo k="s:originTrace" v="n:3143335925186804909" />
                      </node>
                      <node concept="2AHcQZ" id="y" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        <uo k="s:originTrace" v="n:3143335925186804909" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="v" role="3clF46">
                      <property role="TrG5h" value="checkingNodeContext" />
                      <uo k="s:originTrace" v="n:3143335925186804909" />
                      <node concept="3uibUv" id="z" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                        <uo k="s:originTrace" v="n:3143335925186804909" />
                      </node>
                      <node concept="2AHcQZ" id="$" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                        <uo k="s:originTrace" v="n:3143335925186804909" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="w" role="3clF47">
                      <uo k="s:originTrace" v="n:3143335925186804909" />
                      <node concept="3cpWs8" id="_" role="3cqZAp">
                        <uo k="s:originTrace" v="n:3143335925186804909" />
                        <node concept="3cpWsn" id="E" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:3143335925186804909" />
                          <node concept="10P_77" id="F" role="1tU5fm">
                            <uo k="s:originTrace" v="n:3143335925186804909" />
                          </node>
                          <node concept="1rXfSq" id="G" role="33vP2m">
                            <ref role="37wK5l" node="5" resolve="staticCanBeAChild" />
                            <uo k="s:originTrace" v="n:3143335925186804909" />
                            <node concept="2OqwBi" id="H" role="37wK5m">
                              <uo k="s:originTrace" v="n:3143335925186804909" />
                              <node concept="37vLTw" id="L" role="2Oq$k0">
                                <ref role="3cqZAo" node="u" resolve="context" />
                                <uo k="s:originTrace" v="n:3143335925186804909" />
                              </node>
                              <node concept="liA8E" id="M" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getNode()" resolve="getNode" />
                                <uo k="s:originTrace" v="n:3143335925186804909" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="I" role="37wK5m">
                              <uo k="s:originTrace" v="n:3143335925186804909" />
                              <node concept="37vLTw" id="N" role="2Oq$k0">
                                <ref role="3cqZAo" node="u" resolve="context" />
                                <uo k="s:originTrace" v="n:3143335925186804909" />
                              </node>
                              <node concept="liA8E" id="O" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getParentNode()" resolve="getParentNode" />
                                <uo k="s:originTrace" v="n:3143335925186804909" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="J" role="37wK5m">
                              <uo k="s:originTrace" v="n:3143335925186804909" />
                              <node concept="37vLTw" id="P" role="2Oq$k0">
                                <ref role="3cqZAo" node="u" resolve="context" />
                                <uo k="s:originTrace" v="n:3143335925186804909" />
                              </node>
                              <node concept="liA8E" id="Q" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getConcept()" resolve="getConcept" />
                                <uo k="s:originTrace" v="n:3143335925186804909" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="K" role="37wK5m">
                              <uo k="s:originTrace" v="n:3143335925186804909" />
                              <node concept="37vLTw" id="R" role="2Oq$k0">
                                <ref role="3cqZAo" node="u" resolve="context" />
                                <uo k="s:originTrace" v="n:3143335925186804909" />
                              </node>
                              <node concept="liA8E" id="S" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getLink()" resolve="getLink" />
                                <uo k="s:originTrace" v="n:3143335925186804909" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="A" role="3cqZAp">
                        <uo k="s:originTrace" v="n:3143335925186804909" />
                      </node>
                      <node concept="3clFbJ" id="B" role="3cqZAp">
                        <uo k="s:originTrace" v="n:3143335925186804909" />
                        <node concept="3clFbS" id="T" role="3clFbx">
                          <uo k="s:originTrace" v="n:3143335925186804909" />
                          <node concept="3clFbF" id="V" role="3cqZAp">
                            <uo k="s:originTrace" v="n:3143335925186804909" />
                            <node concept="2OqwBi" id="W" role="3clFbG">
                              <uo k="s:originTrace" v="n:3143335925186804909" />
                              <node concept="37vLTw" id="X" role="2Oq$k0">
                                <ref role="3cqZAo" node="v" resolve="checkingNodeContext" />
                                <uo k="s:originTrace" v="n:3143335925186804909" />
                              </node>
                              <node concept="liA8E" id="Y" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                                <uo k="s:originTrace" v="n:3143335925186804909" />
                                <node concept="1dyn4i" id="Z" role="37wK5m">
                                  <property role="1dyqJU" value="canBeChildBreakingPoint" />
                                  <uo k="s:originTrace" v="n:3143335925186804909" />
                                  <node concept="2ShNRf" id="10" role="1dyrYi">
                                    <uo k="s:originTrace" v="n:3143335925186804909" />
                                    <node concept="1pGfFk" id="11" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:3143335925186804909" />
                                      <node concept="Xl_RD" id="12" role="37wK5m">
                                        <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590382(jetbrains.mps.lang.test.constraints)" />
                                        <uo k="s:originTrace" v="n:3143335925186804909" />
                                      </node>
                                      <node concept="Xl_RD" id="13" role="37wK5m">
                                        <property role="Xl_RC" value="3143335925186804910" />
                                        <uo k="s:originTrace" v="n:3143335925186804909" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Wc70l" id="U" role="3clFbw">
                          <uo k="s:originTrace" v="n:3143335925186804909" />
                          <node concept="3y3z36" id="14" role="3uHU7w">
                            <uo k="s:originTrace" v="n:3143335925186804909" />
                            <node concept="10Nm6u" id="16" role="3uHU7w">
                              <uo k="s:originTrace" v="n:3143335925186804909" />
                            </node>
                            <node concept="37vLTw" id="17" role="3uHU7B">
                              <ref role="3cqZAo" node="v" resolve="checkingNodeContext" />
                              <uo k="s:originTrace" v="n:3143335925186804909" />
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="15" role="3uHU7B">
                            <uo k="s:originTrace" v="n:3143335925186804909" />
                            <node concept="37vLTw" id="18" role="3fr31v">
                              <ref role="3cqZAo" node="E" resolve="result" />
                              <uo k="s:originTrace" v="n:3143335925186804909" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="C" role="3cqZAp">
                        <uo k="s:originTrace" v="n:3143335925186804909" />
                      </node>
                      <node concept="3clFbF" id="D" role="3cqZAp">
                        <uo k="s:originTrace" v="n:3143335925186804909" />
                        <node concept="37vLTw" id="19" role="3clFbG">
                          <ref role="3cqZAo" node="E" resolve="result" />
                          <uo k="s:originTrace" v="n:3143335925186804909" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="p" role="2Ghqu4">
                    <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                    <uo k="s:originTrace" v="n:3143335925186804909" />
                  </node>
                  <node concept="3uibUv" id="q" role="2Ghqu4">
                    <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    <uo k="s:originTrace" v="n:3143335925186804909" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4" role="jymVt">
      <uo k="s:originTrace" v="n:3143335925186804909" />
    </node>
    <node concept="2YIFZL" id="5" role="jymVt">
      <property role="TrG5h" value="staticCanBeAChild" />
      <uo k="s:originTrace" v="n:3143335925186804909" />
      <node concept="10P_77" id="1a" role="3clF45">
        <uo k="s:originTrace" v="n:3143335925186804909" />
      </node>
      <node concept="3Tm6S6" id="1b" role="1B3o_S">
        <uo k="s:originTrace" v="n:3143335925186804909" />
      </node>
      <node concept="3clFbS" id="1c" role="3clF47">
        <uo k="s:originTrace" v="n:3143335925186804911" />
        <node concept="3cpWs8" id="1h" role="3cqZAp">
          <uo k="s:originTrace" v="n:2501421320959137297" />
          <node concept="3cpWsn" id="1k" role="3cpWs9">
            <property role="TrG5h" value="model" />
            <uo k="s:originTrace" v="n:2501421320959137298" />
            <node concept="3uibUv" id="1l" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
              <uo k="s:originTrace" v="n:2501421320959137528" />
            </node>
            <node concept="2OqwBi" id="1m" role="33vP2m">
              <uo k="s:originTrace" v="n:2501421320959137299" />
              <node concept="37vLTw" id="1n" role="2Oq$k0">
                <ref role="3cqZAo" node="1e" resolve="parentNode" />
                <uo k="s:originTrace" v="n:2501421320959137300" />
              </node>
              <node concept="I4A8Y" id="1o" role="2OqNvi">
                <uo k="s:originTrace" v="n:2501421320959137301" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1i" role="3cqZAp">
          <uo k="s:originTrace" v="n:2472582545956512952" />
          <node concept="3clFbS" id="1p" role="3clFbx">
            <uo k="s:originTrace" v="n:2472582545956512954" />
            <node concept="3cpWs6" id="1r" role="3cqZAp">
              <uo k="s:originTrace" v="n:2472582545956513224" />
              <node concept="3clFbT" id="1s" role="3cqZAk">
                <property role="3clFbU" value="true" />
                <uo k="s:originTrace" v="n:2472582545956513225" />
              </node>
            </node>
          </node>
          <node concept="2YIFZM" id="1q" role="3clFbw">
            <ref role="37wK5l" to="tqvn:~TemporaryModels.isTemporary(org.jetbrains.mps.openapi.model.SModel)" resolve="isTemporary" />
            <ref role="1Pybhc" to="tqvn:~TemporaryModels" resolve="TemporaryModels" />
            <uo k="s:originTrace" v="n:2472582545956511591" />
            <node concept="37vLTw" id="1t" role="37wK5m">
              <ref role="3cqZAo" node="1k" resolve="model" />
              <uo k="s:originTrace" v="n:2472582545956511704" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1j" role="3cqZAp">
          <uo k="s:originTrace" v="n:1225972903834105533" />
          <node concept="2OqwBi" id="1u" role="3cqZAk">
            <uo k="s:originTrace" v="n:1225972903834105534" />
            <node concept="35c_gC" id="1v" role="2Oq$k0">
              <ref role="35c_gD" to="tp5g:143xXLdhW$X" resolve="ITestAnnotationsContainer" />
              <uo k="s:originTrace" v="n:1225972903834105535" />
            </node>
            <node concept="3zqWPK" id="1w" role="2OqNvi">
              <ref role="37wK5l" to="tp5o:143xXLdhXGe" resolve="canAddTestAnnotation" />
              <uo k="s:originTrace" v="n:8085146484218845543" />
              <node concept="37vLTw" id="1x" role="37wK5m">
                <ref role="3cqZAo" node="1e" resolve="parentNode" />
                <uo k="s:originTrace" v="n:8085146484218845545" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1d" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:3143335925186804909" />
        <node concept="3uibUv" id="1y" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:3143335925186804909" />
        </node>
      </node>
      <node concept="37vLTG" id="1e" role="3clF46">
        <property role="TrG5h" value="parentNode" />
        <uo k="s:originTrace" v="n:3143335925186804909" />
        <node concept="3uibUv" id="1z" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:3143335925186804909" />
        </node>
      </node>
      <node concept="37vLTG" id="1f" role="3clF46">
        <property role="TrG5h" value="childConcept" />
        <uo k="s:originTrace" v="n:3143335925186804909" />
        <node concept="3uibUv" id="1$" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
          <uo k="s:originTrace" v="n:3143335925186804909" />
        </node>
      </node>
      <node concept="37vLTG" id="1g" role="3clF46">
        <property role="TrG5h" value="link" />
        <uo k="s:originTrace" v="n:3143335925186804909" />
        <node concept="3uibUv" id="1_" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
          <uo k="s:originTrace" v="n:3143335925186804909" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1A">
    <property role="TrG5h" value="ConstraintsAspectDescriptor" />
    <property role="3GE5qa" value="Constraints" />
    <node concept="3uibUv" id="1B" role="1zkMxy">
      <ref role="3uigEE" to="ze1i:~BaseConstraintsAspectDescriptor" resolve="BaseConstraintsAspectDescriptor" />
    </node>
    <node concept="3Tm1VV" id="1C" role="1B3o_S" />
    <node concept="3clFbW" id="1D" role="jymVt">
      <node concept="3cqZAl" id="1G" role="3clF45" />
      <node concept="3Tm1VV" id="1H" role="1B3o_S" />
      <node concept="3clFbS" id="1I" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="1E" role="jymVt" />
    <node concept="3clFb_" id="1F" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getConstraints" />
      <property role="DiZV1" value="false" />
      <node concept="2AHcQZ" id="1J" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="1K" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3Tm1VV" id="1L" role="1B3o_S" />
      <node concept="3uibUv" id="1M" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
      </node>
      <node concept="37vLTG" id="1N" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3bZ5Sz" id="1Q" role="1tU5fm" />
        <node concept="2AHcQZ" id="1R" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="1O" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="1S" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
        </node>
        <node concept="2AHcQZ" id="1T" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="1P" role="3clF47">
        <node concept="1_3QMa" id="1U" role="3cqZAp">
          <node concept="37vLTw" id="1W" role="1_3QMn">
            <ref role="3cqZAo" node="1N" resolve="concept" />
          </node>
          <node concept="1pnPoh" id="1X" role="1_3QMm">
            <node concept="3clFbS" id="29" role="1pnPq1">
              <node concept="3cpWs6" id="2b" role="3cqZAp">
                <node concept="2ShNRf" id="2c" role="3cqZAk">
                  <node concept="1pGfFk" id="2d" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="l1" resolve="TestNodeReference_Constraints" />
                    <node concept="37vLTw" id="2e" role="37wK5m">
                      <ref role="3cqZAo" node="1O" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="2a" role="1pnPq6">
              <ref role="3gnhBz" to="tp5g:hBxON8j" resolve="TestNodeReference" />
            </node>
          </node>
          <node concept="1pnPoh" id="1Y" role="1_3QMm">
            <node concept="3clFbS" id="2f" role="1pnPq1">
              <node concept="3cpWs6" id="2h" role="3cqZAp">
                <node concept="2ShNRf" id="2i" role="3cqZAk">
                  <node concept="1pGfFk" id="2j" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="h0" resolve="ScopesExpectedNode_Constraints" />
                    <node concept="37vLTw" id="2k" role="37wK5m">
                      <ref role="3cqZAo" node="1O" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="2g" role="1pnPq6">
              <ref role="3gnhBz" to="tp5g:3aUmKV2nYBN" resolve="ScopesExpectedNode" />
            </node>
          </node>
          <node concept="1pnPoh" id="1Z" role="1_3QMm">
            <node concept="3clFbS" id="2l" role="1pnPq1">
              <node concept="3cpWs6" id="2n" role="3cqZAp">
                <node concept="2ShNRf" id="2o" role="3cqZAk">
                  <node concept="1pGfFk" id="2p" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="iT" resolve="ScopesTest_Constraints" />
                    <node concept="37vLTw" id="2q" role="37wK5m">
                      <ref role="3cqZAo" node="1O" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="2m" role="1pnPq6">
              <ref role="3gnhBz" to="tp5g:so7passww9" resolve="ScopesTest" />
            </node>
          </node>
          <node concept="1pnPoh" id="20" role="1_3QMm">
            <node concept="3clFbS" id="2r" role="1pnPq1">
              <node concept="3cpWs6" id="2t" role="3cqZAp">
                <node concept="2ShNRf" id="2u" role="3cqZAk">
                  <node concept="1pGfFk" id="2v" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="c2" resolve="MigrationTestCase_Constraints" />
                    <node concept="37vLTw" id="2w" role="37wK5m">
                      <ref role="3cqZAo" node="1O" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="2s" role="1pnPq6">
              <ref role="3gnhBz" to="tp5g:4K12N3pJ$JB" resolve="MigrationTestCase" />
            </node>
          </node>
          <node concept="1pnPoh" id="21" role="1_3QMm">
            <node concept="3clFbS" id="2x" role="1pnPq1">
              <node concept="3cpWs6" id="2z" role="3cqZAp">
                <node concept="2ShNRf" id="2$" role="3cqZAk">
                  <node concept="1pGfFk" id="2_" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="az" resolve="MigrationReference_Constraints" />
                    <node concept="37vLTw" id="2A" role="37wK5m">
                      <ref role="3cqZAo" node="1O" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="2y" role="1pnPq6">
              <ref role="3gnhBz" to="tp5g:5JRx$mlRtY9" resolve="MigrationReference" />
            </node>
          </node>
          <node concept="1pnPoh" id="22" role="1_3QMm">
            <node concept="3clFbS" id="2B" role="1pnPq1">
              <node concept="3cpWs6" id="2D" role="3cqZAp">
                <node concept="2ShNRf" id="2E" role="3cqZAk">
                  <node concept="1pGfFk" id="2F" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="7_" resolve="IgnoreMigrationDataOption_Constraints" />
                    <node concept="37vLTw" id="2G" role="37wK5m">
                      <ref role="3cqZAo" node="1O" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="2C" role="1pnPq6">
              <ref role="3gnhBz" to="tp5g:5j9sOBrG_KN" resolve="IgnoreMigrationDataOption" />
            </node>
          </node>
          <node concept="1pnPoh" id="23" role="1_3QMm">
            <node concept="3clFbS" id="2H" role="1pnPq1">
              <node concept="3cpWs6" id="2J" role="3cqZAp">
                <node concept="2ShNRf" id="2K" role="3cqZAk">
                  <node concept="1pGfFk" id="2L" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="3" resolve="AbstractTestNodeAnnotation_Constraints" />
                    <node concept="37vLTw" id="2M" role="37wK5m">
                      <ref role="3cqZAo" node="1O" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="2I" role="1pnPq6">
              <ref role="3gnhBz" to="tp5g:hSdkHD7" resolve="AbstractTestNodeAnnotation" />
            </node>
          </node>
          <node concept="1pnPoh" id="24" role="1_3QMm">
            <node concept="3clFbS" id="2N" role="1pnPq1">
              <node concept="3cpWs6" id="2P" role="3cqZAp">
                <node concept="2ShNRf" id="2Q" role="3cqZAk">
                  <node concept="1pGfFk" id="2R" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="op" resolve="UnorderedChildrenRule_Constraints" />
                    <node concept="37vLTw" id="2S" role="37wK5m">
                      <ref role="3cqZAo" node="1O" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="2O" role="1pnPq6">
              <ref role="3gnhBz" to="tp5g:60ggPToKIiB" resolve="UnorderedChildrenRule" />
            </node>
          </node>
          <node concept="1pnPoh" id="25" role="1_3QMm">
            <node concept="3clFbS" id="2T" role="1pnPq1">
              <node concept="3cpWs6" id="2V" role="3cqZAp">
                <node concept="2ShNRf" id="2W" role="3cqZAk">
                  <node concept="1pGfFk" id="2X" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="65" resolve="IgnoreChildrenRule_Constraints" />
                    <node concept="37vLTw" id="2Y" role="37wK5m">
                      <ref role="3cqZAo" node="1O" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="2U" role="1pnPq6">
              <ref role="3gnhBz" to="tp5g:60ggPToKIiC" resolve="IgnoreChildrenRule" />
            </node>
          </node>
          <node concept="1pnPoh" id="26" role="1_3QMm">
            <node concept="3clFbS" id="2Z" role="1pnPq1">
              <node concept="3cpWs6" id="31" role="3cqZAp">
                <node concept="2ShNRf" id="32" role="3cqZAk">
                  <node concept="1pGfFk" id="33" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="93" resolve="IgnoreReferenceRule_Constraints" />
                    <node concept="37vLTw" id="34" role="37wK5m">
                      <ref role="3cqZAo" node="1O" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="30" role="1pnPq6">
              <ref role="3gnhBz" to="tp5g:60ggPToKIiD" resolve="IgnoreReferenceRule" />
            </node>
          </node>
          <node concept="1pnPoh" id="27" role="1_3QMm">
            <node concept="3clFbS" id="35" role="1pnPq1">
              <node concept="3cpWs6" id="37" role="3cqZAp">
                <node concept="2ShNRf" id="38" role="3cqZAk">
                  <node concept="1pGfFk" id="39" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="mX" resolve="UnorderedChildrenMark_Constraints" />
                    <node concept="37vLTw" id="3a" role="37wK5m">
                      <ref role="3cqZAo" node="1O" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="36" role="1pnPq6">
              <ref role="3gnhBz" to="tp5g:18QbqASogIe" resolve="UnorderedChildrenMark" />
            </node>
          </node>
          <node concept="3clFbS" id="28" role="1prKM_" />
        </node>
        <node concept="3cpWs6" id="1V" role="3cqZAp">
          <node concept="10Nm6u" id="3b" role="3cqZAk" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3c">
    <property role="3GE5qa" value="" />
    <property role="1EXbeo" value="true" />
    <property role="TrG5h" value="GeneratedFeedbackAspectConstraints" />
    <node concept="3Tm1VV" id="3d" role="1B3o_S" />
    <node concept="3uibUv" id="3e" role="EKbjA">
      <ref role="3uigEE" to="9jwd:~FeedbackAspect" resolve="FeedbackAspect" />
    </node>
    <node concept="3clFb_" id="3f" role="jymVt">
      <property role="TrG5h" value="getPerConceptDescriptors" />
      <node concept="3Tm1VV" id="3g" role="1B3o_S" />
      <node concept="3uibUv" id="3h" role="3clF45">
        <ref role="3uigEE" to="1ctc:~Stream" resolve="Stream" />
        <node concept="3uibUv" id="3l" role="11_B2D">
          <ref role="3uigEE" to="9jwd:~FeedbackPerConceptDescriptor" resolve="FeedbackPerConceptDescriptor" />
        </node>
      </node>
      <node concept="3clFbS" id="3i" role="3clF47">
        <node concept="3cpWs6" id="3m" role="3cqZAp">
          <node concept="2YIFZM" id="3n" role="3cqZAk">
            <ref role="1Pybhc" to="1ctc:~Stream" resolve="Stream" />
            <ref role="37wK5l" to="1ctc:~Stream.of(java.lang.Object)" resolve="of" />
            <node concept="2ShNRf" id="3o" role="37wK5m">
              <node concept="1pGfFk" id="3p" role="2ShVmc">
                <ref role="37wK5l" node="g9" resolve="ProjectExpression_ConstraintsFeedback" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3j" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="2AHcQZ" id="3k" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3q">
    <property role="TrG5h" value="GeneratedRulesConstraintsAspect" />
    <property role="1EXbeo" value="true" />
    <node concept="3Tm1VV" id="3r" role="1B3o_S" />
    <node concept="3uibUv" id="3s" role="EKbjA">
      <ref role="3uigEE" to="o99v:~RulesConstraintsAspect" resolve="RulesConstraintsAspect" />
    </node>
    <node concept="3clFb_" id="3t" role="jymVt">
      <property role="TrG5h" value="getDescriptor" />
      <node concept="3Tm1VV" id="3u" role="1B3o_S" />
      <node concept="37vLTG" id="3v" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3bZ5Sz" id="3$" role="1tU5fm" />
        <node concept="2AHcQZ" id="3_" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3uibUv" id="3w" role="3clF45">
        <ref role="3uigEE" to="o99v:~RulesConstraintsDescriptor" resolve="RulesConstraintsDescriptor" />
      </node>
      <node concept="3clFbS" id="3x" role="3clF47">
        <node concept="1_3QMa" id="3A" role="3cqZAp">
          <node concept="37vLTw" id="3C" role="1_3QMn">
            <ref role="3cqZAo" node="3v" resolve="concept" />
          </node>
          <node concept="1pnPoh" id="3D" role="1_3QMm">
            <node concept="3clFbS" id="3F" role="1pnPq1">
              <node concept="3cpWs6" id="3H" role="3cqZAp">
                <node concept="2ShNRf" id="3I" role="3cqZAk">
                  <node concept="HV5vD" id="3J" role="2ShVmc">
                    <ref role="HV5vE" node="dp" resolve="ProjectExpression_ConstraintRules" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="3G" role="1pnPq6">
              <ref role="3gnhBz" to="tp5g:hPjxXux" resolve="ProjectExpression" />
            </node>
          </node>
          <node concept="3clFbS" id="3E" role="1prKM_" />
        </node>
        <node concept="3cpWs6" id="3B" role="3cqZAp">
          <node concept="10Nm6u" id="3K" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3y" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="2AHcQZ" id="3z" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="39dXUE" id="3L">
    <node concept="39e2AJ" id="3M" role="39e2AI">
      <property role="39e3Y2" value="constraintClass" />
      <node concept="39e2AG" id="40" role="39e3Y0">
        <ref role="39e2AK" to="tp5q:2IvnPUIuVMH" resolve="AbstractTestNodeAnnotation_Constraints" />
        <node concept="385nmt" id="4b" role="385vvn">
          <property role="385vuF" value="AbstractTestNodeAnnotation_Constraints" />
          <node concept="3u3nmq" id="4d" role="385v07">
            <property role="3u3nmv" value="3143335925186804909" />
          </node>
        </node>
        <node concept="39e2AT" id="4c" role="39e2AY">
          <ref role="39e2AS" node="0" resolve="AbstractTestNodeAnnotation_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="41" role="39e3Y0">
        <ref role="39e2AK" to="tp5q:60ggPToMHXA" resolve="IgnoreChildrenRule_Constraints" />
        <node concept="385nmt" id="4e" role="385vvn">
          <property role="385vuF" value="IgnoreChildrenRule_Constraints" />
          <node concept="3u3nmq" id="4g" role="385v07">
            <property role="3u3nmv" value="6922106699764129638" />
          </node>
        </node>
        <node concept="39e2AT" id="4f" role="39e2AY">
          <ref role="39e2AS" node="62" resolve="IgnoreChildrenRule_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="42" role="39e3Y0">
        <ref role="39e2AK" to="tp5q:5j9sOBrG_Ld" resolve="IgnoreMigrationDataOption_Constraints" />
        <node concept="385nmt" id="4h" role="385vvn">
          <property role="385vuF" value="IgnoreMigrationDataOption_Constraints" />
          <node concept="3u3nmq" id="4j" role="385v07">
            <property role="3u3nmv" value="6109541130560494669" />
          </node>
        </node>
        <node concept="39e2AT" id="4i" role="39e2AY">
          <ref role="39e2AS" node="7y" resolve="IgnoreMigrationDataOption_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="43" role="39e3Y0">
        <ref role="39e2AK" to="tp5q:60ggPToMJpa" resolve="IgnoreReferenceRule_Constraints" />
        <node concept="385nmt" id="4k" role="385vvn">
          <property role="385vuF" value="IgnoreReferenceRule_Constraints" />
          <node concept="3u3nmq" id="4m" role="385v07">
            <property role="3u3nmv" value="6922106699764135498" />
          </node>
        </node>
        <node concept="39e2AT" id="4l" role="39e2AY">
          <ref role="39e2AS" node="90" resolve="IgnoreReferenceRule_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="44" role="39e3Y0">
        <ref role="39e2AK" to="tp5q:5JRx$mlSd8I" resolve="MigrationReference_Constraints" />
        <node concept="385nmt" id="4n" role="385vvn">
          <property role="385vuF" value="MigrationReference_Constraints" />
          <node concept="3u3nmq" id="4p" role="385v07">
            <property role="3u3nmv" value="6626913010124378670" />
          </node>
        </node>
        <node concept="39e2AT" id="4o" role="39e2AY">
          <ref role="39e2AS" node="aw" resolve="MigrationReference_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="45" role="39e3Y0">
        <ref role="39e2AK" to="tp5q:4K12N3pJCnt" resolve="MigrationTestCase_Constraints" />
        <node concept="385nmt" id="4q" role="385vvn">
          <property role="385vuF" value="MigrationTestCase_Constraints" />
          <node concept="3u3nmq" id="4s" role="385v07">
            <property role="3u3nmv" value="5476670926298711517" />
          </node>
        </node>
        <node concept="39e2AT" id="4r" role="39e2AY">
          <ref role="39e2AS" node="bZ" resolve="MigrationTestCase_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="46" role="39e3Y0">
        <ref role="39e2AK" to="tp5q:3iQxHqkinC$" resolve="ScopesExpectedNode_Constraints" />
        <node concept="385nmt" id="4t" role="385vvn">
          <property role="385vuF" value="ScopesExpectedNode_Constraints" />
          <node concept="3u3nmq" id="4v" role="385v07">
            <property role="3u3nmv" value="3798371591902558756" />
          </node>
        </node>
        <node concept="39e2AT" id="4u" role="39e2AY">
          <ref role="39e2AS" node="gX" resolve="ScopesExpectedNode_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="47" role="39e3Y0">
        <ref role="39e2AK" to="tp5q:4IvydoGvh7k" resolve="ScopesTest_Constraints" />
        <node concept="385nmt" id="4w" role="385vvn">
          <property role="385vuF" value="ScopesTest_Constraints" />
          <node concept="3u3nmq" id="4y" role="385v07">
            <property role="3u3nmv" value="5449224527592362452" />
          </node>
        </node>
        <node concept="39e2AT" id="4x" role="39e2AY">
          <ref role="39e2AS" node="iQ" resolve="ScopesTest_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="48" role="39e3Y0">
        <ref role="39e2AK" to="tp5q:hDMFIYG" resolve="TestNodeReference_Constraints" />
        <node concept="385nmt" id="4z" role="385vvn">
          <property role="385vuF" value="TestNodeReference_Constraints" />
          <node concept="3u3nmq" id="4_" role="385v07">
            <property role="3u3nmv" value="1213104844716" />
          </node>
        </node>
        <node concept="39e2AT" id="4$" role="39e2AY">
          <ref role="39e2AS" node="kY" resolve="TestNodeReference_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="49" role="39e3Y0">
        <ref role="39e2AK" to="tp5q:18QbqASWWCy" resolve="UnorderedChildrenMark_Constraints" />
        <node concept="385nmt" id="4A" role="385vvn">
          <property role="385vuF" value="UnorderedChildrenMark_Constraints" />
          <node concept="3u3nmq" id="4C" role="385v07">
            <property role="3u3nmv" value="1312286548400785954" />
          </node>
        </node>
        <node concept="39e2AT" id="4B" role="39e2AY">
          <ref role="39e2AS" node="mU" resolve="UnorderedChildrenMark_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="4a" role="39e3Y0">
        <ref role="39e2AK" to="tp5q:60ggPToMGx3" resolve="UnorderedChildrenRule_Constraints" />
        <node concept="385nmt" id="4D" role="385vvn">
          <property role="385vuF" value="UnorderedChildrenRule_Constraints" />
          <node concept="3u3nmq" id="4F" role="385v07">
            <property role="3u3nmv" value="6922106699764123715" />
          </node>
        </node>
        <node concept="39e2AT" id="4E" role="39e2AY">
          <ref role="39e2AS" node="om" resolve="UnorderedChildrenRule_Constraints" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="3N" role="39e2AI">
      <property role="39e3Y2" value="constraintClassCons" />
      <node concept="39e2AG" id="4G" role="39e3Y0">
        <ref role="39e2AK" to="tp5q:2IvnPUIuVMH" resolve="AbstractTestNodeAnnotation_Constraints" />
        <node concept="385nmt" id="4R" role="385vvn">
          <property role="385vuF" value="AbstractTestNodeAnnotation_Constraints" />
          <node concept="3u3nmq" id="4T" role="385v07">
            <property role="3u3nmv" value="3143335925186804909" />
          </node>
        </node>
        <node concept="39e2AT" id="4S" role="39e2AY">
          <ref role="39e2AS" node="3" resolve="AbstractTestNodeAnnotation_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="4H" role="39e3Y0">
        <ref role="39e2AK" to="tp5q:60ggPToMHXA" resolve="IgnoreChildrenRule_Constraints" />
        <node concept="385nmt" id="4U" role="385vvn">
          <property role="385vuF" value="IgnoreChildrenRule_Constraints" />
          <node concept="3u3nmq" id="4W" role="385v07">
            <property role="3u3nmv" value="6922106699764129638" />
          </node>
        </node>
        <node concept="39e2AT" id="4V" role="39e2AY">
          <ref role="39e2AS" node="65" resolve="IgnoreChildrenRule_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="4I" role="39e3Y0">
        <ref role="39e2AK" to="tp5q:5j9sOBrG_Ld" resolve="IgnoreMigrationDataOption_Constraints" />
        <node concept="385nmt" id="4X" role="385vvn">
          <property role="385vuF" value="IgnoreMigrationDataOption_Constraints" />
          <node concept="3u3nmq" id="4Z" role="385v07">
            <property role="3u3nmv" value="6109541130560494669" />
          </node>
        </node>
        <node concept="39e2AT" id="4Y" role="39e2AY">
          <ref role="39e2AS" node="7_" resolve="IgnoreMigrationDataOption_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="4J" role="39e3Y0">
        <ref role="39e2AK" to="tp5q:60ggPToMJpa" resolve="IgnoreReferenceRule_Constraints" />
        <node concept="385nmt" id="50" role="385vvn">
          <property role="385vuF" value="IgnoreReferenceRule_Constraints" />
          <node concept="3u3nmq" id="52" role="385v07">
            <property role="3u3nmv" value="6922106699764135498" />
          </node>
        </node>
        <node concept="39e2AT" id="51" role="39e2AY">
          <ref role="39e2AS" node="93" resolve="IgnoreReferenceRule_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="4K" role="39e3Y0">
        <ref role="39e2AK" to="tp5q:5JRx$mlSd8I" resolve="MigrationReference_Constraints" />
        <node concept="385nmt" id="53" role="385vvn">
          <property role="385vuF" value="MigrationReference_Constraints" />
          <node concept="3u3nmq" id="55" role="385v07">
            <property role="3u3nmv" value="6626913010124378670" />
          </node>
        </node>
        <node concept="39e2AT" id="54" role="39e2AY">
          <ref role="39e2AS" node="az" resolve="MigrationReference_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="4L" role="39e3Y0">
        <ref role="39e2AK" to="tp5q:4K12N3pJCnt" resolve="MigrationTestCase_Constraints" />
        <node concept="385nmt" id="56" role="385vvn">
          <property role="385vuF" value="MigrationTestCase_Constraints" />
          <node concept="3u3nmq" id="58" role="385v07">
            <property role="3u3nmv" value="5476670926298711517" />
          </node>
        </node>
        <node concept="39e2AT" id="57" role="39e2AY">
          <ref role="39e2AS" node="c2" resolve="MigrationTestCase_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="4M" role="39e3Y0">
        <ref role="39e2AK" to="tp5q:3iQxHqkinC$" resolve="ScopesExpectedNode_Constraints" />
        <node concept="385nmt" id="59" role="385vvn">
          <property role="385vuF" value="ScopesExpectedNode_Constraints" />
          <node concept="3u3nmq" id="5b" role="385v07">
            <property role="3u3nmv" value="3798371591902558756" />
          </node>
        </node>
        <node concept="39e2AT" id="5a" role="39e2AY">
          <ref role="39e2AS" node="h0" resolve="ScopesExpectedNode_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="4N" role="39e3Y0">
        <ref role="39e2AK" to="tp5q:4IvydoGvh7k" resolve="ScopesTest_Constraints" />
        <node concept="385nmt" id="5c" role="385vvn">
          <property role="385vuF" value="ScopesTest_Constraints" />
          <node concept="3u3nmq" id="5e" role="385v07">
            <property role="3u3nmv" value="5449224527592362452" />
          </node>
        </node>
        <node concept="39e2AT" id="5d" role="39e2AY">
          <ref role="39e2AS" node="iT" resolve="ScopesTest_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="4O" role="39e3Y0">
        <ref role="39e2AK" to="tp5q:hDMFIYG" resolve="TestNodeReference_Constraints" />
        <node concept="385nmt" id="5f" role="385vvn">
          <property role="385vuF" value="TestNodeReference_Constraints" />
          <node concept="3u3nmq" id="5h" role="385v07">
            <property role="3u3nmv" value="1213104844716" />
          </node>
        </node>
        <node concept="39e2AT" id="5g" role="39e2AY">
          <ref role="39e2AS" node="l1" resolve="TestNodeReference_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="4P" role="39e3Y0">
        <ref role="39e2AK" to="tp5q:18QbqASWWCy" resolve="UnorderedChildrenMark_Constraints" />
        <node concept="385nmt" id="5i" role="385vvn">
          <property role="385vuF" value="UnorderedChildrenMark_Constraints" />
          <node concept="3u3nmq" id="5k" role="385v07">
            <property role="3u3nmv" value="1312286548400785954" />
          </node>
        </node>
        <node concept="39e2AT" id="5j" role="39e2AY">
          <ref role="39e2AS" node="mX" resolve="UnorderedChildrenMark_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="4Q" role="39e3Y0">
        <ref role="39e2AK" to="tp5q:60ggPToMGx3" resolve="UnorderedChildrenRule_Constraints" />
        <node concept="385nmt" id="5l" role="385vvn">
          <property role="385vuF" value="UnorderedChildrenRule_Constraints" />
          <node concept="3u3nmq" id="5n" role="385v07">
            <property role="3u3nmv" value="6922106699764123715" />
          </node>
        </node>
        <node concept="39e2AT" id="5m" role="39e2AY">
          <ref role="39e2AS" node="op" resolve="UnorderedChildrenRule_Constraints" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="3O" role="39e2AI">
      <property role="39e3Y2" value="constraints2RootClass" />
      <node concept="39e2AG" id="5o" role="39e3Y0">
        <ref role="39e2AK" to="tp5q:6QkYQRK$tn4" resolve="ProjectExpression_ConstraintRules" />
        <node concept="385nmt" id="5p" role="385vvn">
          <property role="385vuF" value="ProjectExpression_ConstraintRules" />
          <node concept="3u3nmq" id="5r" role="385v07">
            <property role="3u3nmv" value="7896212496293418436" />
          </node>
        </node>
        <node concept="39e2AT" id="5q" role="39e2AY">
          <ref role="39e2AS" node="dp" resolve="ProjectExpression_ConstraintRules" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="3P" role="39e2AI">
      <property role="39e3Y2" value="defClass" />
      <node concept="39e2AG" id="5s" role="39e3Y0">
        <ref role="39e2AK" to="tp5q:6QkYQRK_6$R" resolve="testableAncestor" />
        <node concept="385nmt" id="5t" role="385vvn">
          <property role="385vuF" value="testableAncestor" />
          <node concept="3u3nmq" id="5v" role="385v07">
            <property role="3u3nmv" value="7896212496293587255" />
          </node>
        </node>
        <node concept="39e2AT" id="5u" role="39e2AY">
          <ref role="39e2AS" node="dy" resolve="ProjectExpression_ConstraintRules.Def_TestableAncestor7896212496293587255" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="3Q" role="39e2AI">
      <property role="39e3Y2" value="defGetValue" />
      <node concept="39e2AG" id="5w" role="39e3Y0">
        <ref role="39e2AK" to="tp5q:6QkYQRK_6$R" resolve="testableAncestor" />
        <node concept="385nmt" id="5x" role="385vvn">
          <property role="385vuF" value="testableAncestor" />
          <node concept="3u3nmq" id="5z" role="385v07">
            <property role="3u3nmv" value="7896212496293587255" />
          </node>
        </node>
        <node concept="39e2AT" id="5y" role="39e2AY">
          <ref role="39e2AS" node="e4" resolve="getValue" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="3R" role="39e2AI">
      <property role="39e3Y2" value="feedbackDescriptorCons" />
      <node concept="39e2AG" id="5$" role="39e3Y0">
        <ref role="39e2AK" to="tp5q:6QkYQRK$tn4" resolve="ProjectExpression_ConstraintRules" />
        <node concept="385nmt" id="5_" role="385vvn">
          <property role="385vuF" value="ProjectExpression_Feedback" />
          <node concept="3u3nmq" id="5B" role="385v07">
            <property role="3u3nmv" value="7896212496293418436" />
          </node>
        </node>
        <node concept="39e2AT" id="5A" role="39e2AY">
          <ref role="39e2AS" node="g9" resolve="ProjectExpression_ConstraintsFeedback" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="3S" role="39e2AI">
      <property role="39e3Y2" value="feedbackMember" />
      <node concept="39e2AG" id="5C" role="39e3Y0">
        <ref role="39e2AK" to="tp5q:6QkYQRK$tOq" />
        <node concept="385nmt" id="5D" role="385vvn">
          <property role="385vuF" value="show message" />
          <node concept="3u3nmq" id="5F" role="385v07">
            <property role="3u3nmv" value="7896212496293418436" />
          </node>
        </node>
        <node concept="39e2AT" id="5E" role="39e2AY">
          <ref role="39e2AS" node="g4" resolve="MSGPROVIDER_WhenConstraintRuleFails_l5xegm_a" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="3T" role="39e2AI">
      <property role="39e3Y2" value="ruleClass" />
      <node concept="39e2AG" id="5G" role="39e3Y0">
        <ref role="39e2AK" to="tp5q:6QkYQRK$tOr" />
        <node concept="385nmt" id="5H" role="385vvn">
          <property role="385vuF" value="&lt;no name&gt;[rule]" />
          <node concept="3u3nmq" id="5J" role="385v07">
            <property role="3u3nmv" value="7896212496293420315" />
          </node>
        </node>
        <node concept="39e2AT" id="5I" role="39e2AY">
          <ref role="39e2AS" node="d$" resolve="ProjectExpression_ConstraintRules.Rule_unnamed_5silxy_b0" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="3U" role="39e2AI">
      <property role="39e3Y2" value="ruleConstructor" />
      <node concept="39e2AG" id="5K" role="39e3Y0">
        <ref role="39e2AK" to="tp5q:6QkYQRK$tOr" />
        <node concept="385nmt" id="5L" role="385vvn">
          <property role="385vuF" value="&lt;no name&gt;[rule]" />
          <node concept="3u3nmq" id="5N" role="385v07">
            <property role="3u3nmv" value="7896212496293420315" />
          </node>
        </node>
        <node concept="39e2AT" id="5M" role="39e2AY">
          <ref role="39e2AS" node="eZ" resolve="ProjectExpression_ConstraintRules.Rule_unnamed_5silxy_b0" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="3V" role="39e2AI">
      <property role="39e3Y2" value="ruleField" />
      <node concept="39e2AG" id="5O" role="39e3Y0">
        <ref role="39e2AK" to="tp5q:6QkYQRK$tOr" />
        <node concept="385nmt" id="5P" role="385vvn">
          <property role="385vuF" value="&lt;no name&gt;[rule]" />
          <node concept="3u3nmq" id="5R" role="385v07">
            <property role="3u3nmv" value="7896212496293420315" />
          </node>
        </node>
        <node concept="39e2AT" id="5Q" role="39e2AY">
          <ref role="39e2AS" node="ds" resolve="check_id7896212496293420315" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="3W" role="39e2AI">
      <property role="39e3Y2" value="ruleID" />
      <node concept="39e2AG" id="5S" role="39e3Y0">
        <ref role="39e2AK" to="tp5q:6QkYQRK$tOr" />
        <node concept="385nmt" id="5T" role="385vvn">
          <property role="385vuF" value="&lt;no name&gt;[rule]" />
          <node concept="3u3nmq" id="5V" role="385v07">
            <property role="3u3nmv" value="7896212496293420315" />
          </node>
        </node>
        <node concept="39e2AT" id="5U" role="39e2AY">
          <ref role="39e2AS" node="eX" resolve="ID_unnamed_5silxy_b0" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="3X" role="39e2AI">
      <property role="39e3Y2" value="aspectDescriptorClass" />
      <node concept="39e2AG" id="5W" role="39e3Y0">
        <property role="2mV_xN" value="true" />
        <node concept="39e2AT" id="5X" role="39e2AY">
          <ref role="39e2AS" node="1A" resolve="ConstraintsAspectDescriptor" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="3Y" role="39e2AI">
      <property role="39e3Y2" value="feedbackAspectClass" />
      <node concept="39e2AG" id="5Y" role="39e3Y0">
        <property role="2mV_xN" value="true" />
        <node concept="39e2AT" id="5Z" role="39e2AY">
          <ref role="39e2AS" node="3c" resolve="GeneratedFeedbackAspectConstraints" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="3Z" role="39e2AI">
      <property role="39e3Y2" value="constraints2DescriptorClass" />
      <node concept="39e2AG" id="60" role="39e3Y0">
        <property role="2mV_xN" value="true" />
        <node concept="39e2AT" id="61" role="39e2AY">
          <ref role="39e2AS" node="3q" resolve="GeneratedRulesConstraintsAspect" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="62">
    <property role="TrG5h" value="IgnoreChildrenRule_Constraints" />
    <uo k="s:originTrace" v="n:6922106699764129638" />
    <node concept="3Tm1VV" id="63" role="1B3o_S">
      <uo k="s:originTrace" v="n:6922106699764129638" />
    </node>
    <node concept="3uibUv" id="64" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:6922106699764129638" />
    </node>
    <node concept="3clFbW" id="65" role="jymVt">
      <uo k="s:originTrace" v="n:6922106699764129638" />
      <node concept="37vLTG" id="68" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:6922106699764129638" />
        <node concept="3uibUv" id="6b" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:6922106699764129638" />
        </node>
      </node>
      <node concept="3cqZAl" id="69" role="3clF45">
        <uo k="s:originTrace" v="n:6922106699764129638" />
      </node>
      <node concept="3clFbS" id="6a" role="3clF47">
        <uo k="s:originTrace" v="n:6922106699764129638" />
        <node concept="XkiVB" id="6c" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:6922106699764129638" />
          <node concept="1BaE9c" id="6e" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="IgnoreChildrenRule$sR" />
            <uo k="s:originTrace" v="n:6922106699764129638" />
            <node concept="2YIFZM" id="6g" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:6922106699764129638" />
              <node concept="11gdke" id="6h" role="37wK5m">
                <property role="11gdj1" value="8585453e6bfb4d80L" />
                <uo k="s:originTrace" v="n:6922106699764129638" />
              </node>
              <node concept="11gdke" id="6i" role="37wK5m">
                <property role="11gdj1" value="98deb16074f1d86cL" />
                <uo k="s:originTrace" v="n:6922106699764129638" />
              </node>
              <node concept="11gdke" id="6j" role="37wK5m">
                <property role="11gdj1" value="6010435e58c2e4a8L" />
                <uo k="s:originTrace" v="n:6922106699764129638" />
              </node>
              <node concept="Xl_RD" id="6k" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.test.structure.IgnoreChildrenRule" />
                <uo k="s:originTrace" v="n:6922106699764129638" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="6f" role="37wK5m">
            <ref role="3cqZAo" node="68" resolve="initContext" />
            <uo k="s:originTrace" v="n:6922106699764129638" />
          </node>
        </node>
        <node concept="3clFbF" id="6d" role="3cqZAp">
          <uo k="s:originTrace" v="n:6922106699764129638" />
          <node concept="1rXfSq" id="6l" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:6922106699764129638" />
            <node concept="2ShNRf" id="6m" role="37wK5m">
              <uo k="s:originTrace" v="n:6922106699764129638" />
              <node concept="1pGfFk" id="6n" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="6p" resolve="IgnoreChildrenRule_Constraints.RD1" />
                <uo k="s:originTrace" v="n:6922106699764129638" />
                <node concept="Xjq3P" id="6o" role="37wK5m">
                  <uo k="s:originTrace" v="n:6922106699764129638" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="66" role="jymVt">
      <uo k="s:originTrace" v="n:6922106699764129638" />
    </node>
    <node concept="312cEu" id="67" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:6922106699764129638" />
      <node concept="3clFbW" id="6p" role="jymVt">
        <uo k="s:originTrace" v="n:6922106699764129638" />
        <node concept="37vLTG" id="6s" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:6922106699764129638" />
          <node concept="3uibUv" id="6v" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:6922106699764129638" />
          </node>
        </node>
        <node concept="3cqZAl" id="6t" role="3clF45">
          <uo k="s:originTrace" v="n:6922106699764129638" />
        </node>
        <node concept="3clFbS" id="6u" role="3clF47">
          <uo k="s:originTrace" v="n:6922106699764129638" />
          <node concept="XkiVB" id="6w" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:6922106699764129638" />
            <node concept="1BaE9c" id="6x" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="link$7Hy3" />
              <uo k="s:originTrace" v="n:6922106699764129638" />
              <node concept="2YIFZM" id="6_" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:6922106699764129638" />
                <node concept="11gdke" id="6A" role="37wK5m">
                  <property role="11gdj1" value="8585453e6bfb4d80L" />
                  <uo k="s:originTrace" v="n:6922106699764129638" />
                </node>
                <node concept="11gdke" id="6B" role="37wK5m">
                  <property role="11gdj1" value="98deb16074f1d86cL" />
                  <uo k="s:originTrace" v="n:6922106699764129638" />
                </node>
                <node concept="11gdke" id="6C" role="37wK5m">
                  <property role="11gdj1" value="6010435e58c2e4a8L" />
                  <uo k="s:originTrace" v="n:6922106699764129638" />
                </node>
                <node concept="11gdke" id="6D" role="37wK5m">
                  <property role="11gdj1" value="6010435e58c2e4adL" />
                  <uo k="s:originTrace" v="n:6922106699764129638" />
                </node>
                <node concept="Xl_RD" id="6E" role="37wK5m">
                  <property role="Xl_RC" value="link" />
                  <uo k="s:originTrace" v="n:6922106699764129638" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="6y" role="37wK5m">
              <ref role="3cqZAo" node="6s" resolve="container" />
              <uo k="s:originTrace" v="n:6922106699764129638" />
            </node>
            <node concept="3clFbT" id="6z" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:6922106699764129638" />
            </node>
            <node concept="3clFbT" id="6$" role="37wK5m">
              <uo k="s:originTrace" v="n:6922106699764129638" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="6q" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:6922106699764129638" />
        <node concept="3Tm1VV" id="6F" role="1B3o_S">
          <uo k="s:originTrace" v="n:6922106699764129638" />
        </node>
        <node concept="3uibUv" id="6G" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:6922106699764129638" />
        </node>
        <node concept="2AHcQZ" id="6H" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:6922106699764129638" />
        </node>
        <node concept="3clFbS" id="6I" role="3clF47">
          <uo k="s:originTrace" v="n:6922106699764129638" />
          <node concept="3cpWs6" id="6K" role="3cqZAp">
            <uo k="s:originTrace" v="n:6922106699764129638" />
            <node concept="2ShNRf" id="6L" role="3cqZAk">
              <uo k="s:originTrace" v="n:6922106699764129640" />
              <node concept="YeOm9" id="6M" role="2ShVmc">
                <uo k="s:originTrace" v="n:6922106699764129640" />
                <node concept="1Y3b0j" id="6N" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:6922106699764129640" />
                  <node concept="3Tm1VV" id="6O" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6922106699764129640" />
                  </node>
                  <node concept="3clFb_" id="6P" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:6922106699764129640" />
                    <node concept="3Tm1VV" id="6R" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6922106699764129640" />
                    </node>
                    <node concept="3uibUv" id="6S" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:6922106699764129640" />
                    </node>
                    <node concept="3clFbS" id="6T" role="3clF47">
                      <uo k="s:originTrace" v="n:6922106699764129640" />
                      <node concept="3cpWs6" id="6V" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6922106699764129640" />
                        <node concept="2ShNRf" id="6W" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6922106699764129640" />
                          <node concept="1pGfFk" id="6X" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:6922106699764129640" />
                            <node concept="Xl_RD" id="6Y" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590382(jetbrains.mps.lang.test.constraints)" />
                              <uo k="s:originTrace" v="n:6922106699764129640" />
                            </node>
                            <node concept="Xl_RD" id="6Z" role="37wK5m">
                              <property role="Xl_RC" value="6922106699764129640" />
                              <uo k="s:originTrace" v="n:6922106699764129640" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="6U" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6922106699764129640" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="6Q" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:6922106699764129640" />
                    <node concept="3Tm1VV" id="70" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6922106699764129640" />
                    </node>
                    <node concept="3uibUv" id="71" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:6922106699764129640" />
                    </node>
                    <node concept="37vLTG" id="72" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:6922106699764129640" />
                      <node concept="3uibUv" id="75" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:6922106699764129640" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="73" role="3clF47">
                      <uo k="s:originTrace" v="n:6922106699764129640" />
                      <node concept="3clFbF" id="76" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6922106699764129643" />
                        <node concept="2ShNRf" id="77" role="3clFbG">
                          <uo k="s:originTrace" v="n:6922106699764129645" />
                          <node concept="YeOm9" id="78" role="2ShVmc">
                            <uo k="s:originTrace" v="n:6922106699764129647" />
                            <node concept="1Y3b0j" id="79" role="YeSDq">
                              <property role="2bfB8j" value="true" />
                              <property role="373rjd" value="true" />
                              <property role="TrG5h" value="FilteringScope" />
                              <property role="jj94n" value="FilteringScope" />
                              <ref role="1Y3XeK" to="o8zo:3rV3sBXetA0" resolve="FilteringScope" />
                              <ref role="37wK5l" to="o8zo:3rV3sBXetA2" resolve="FilteringScope" />
                              <uo k="s:originTrace" v="n:6922106699764129650" />
                              <node concept="2OqwBi" id="7a" role="37wK5m">
                                <uo k="s:originTrace" v="n:6922106699764129652" />
                                <node concept="2OqwBi" id="7c" role="2Oq$k0">
                                  <node concept="37vLTw" id="7e" role="2Oq$k0">
                                    <ref role="3cqZAo" node="72" resolve="_context" />
                                  </node>
                                  <node concept="liA8E" id="7f" role="2OqNvi">
                                    <ref role="37wK5l" to="ze1i:~ReferenceConstraintsContext.getScopeEvaluationContext()" resolve="getScopeEvaluationContext" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="7d" role="2OqNvi">
                                  <ref role="37wK5l" to="ze1i:~EvaluateScopeContext.ofNodesDefault(org.jetbrains.mps.openapi.model.SModel,org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="ofNodesDefault" />
                                  <node concept="2OqwBi" id="7g" role="37wK5m">
                                    <node concept="37vLTw" id="7i" role="2Oq$k0">
                                      <ref role="3cqZAo" node="72" resolve="_context" />
                                    </node>
                                    <node concept="liA8E" id="7j" role="2OqNvi">
                                      <ref role="37wK5l" to="ze1i:~ReferenceConstraintsContext.getModel()" resolve="getModel" />
                                    </node>
                                  </node>
                                  <node concept="35c_gC" id="7h" role="37wK5m">
                                    <ref role="35c_gD" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFb_" id="7b" role="jymVt">
                                <property role="TrG5h" value="isExcluded" />
                                <uo k="s:originTrace" v="n:6922106699764129653" />
                                <node concept="3Tm1VV" id="7k" role="1B3o_S">
                                  <uo k="s:originTrace" v="n:6922106699764129657" />
                                </node>
                                <node concept="10P_77" id="7l" role="3clF45">
                                  <uo k="s:originTrace" v="n:6922106699764129658" />
                                </node>
                                <node concept="37vLTG" id="7m" role="3clF46">
                                  <property role="TrG5h" value="node" />
                                  <uo k="s:originTrace" v="n:6922106699764129659" />
                                  <node concept="3Tqbb2" id="7o" role="1tU5fm">
                                    <uo k="s:originTrace" v="n:6922106699764129661" />
                                  </node>
                                </node>
                                <node concept="3clFbS" id="7n" role="3clF47">
                                  <uo k="s:originTrace" v="n:6922106699764129662" />
                                  <node concept="3cpWs6" id="7p" role="3cqZAp">
                                    <uo k="s:originTrace" v="n:6922106699764129663" />
                                    <node concept="2OqwBi" id="7q" role="3cqZAk">
                                      <uo k="s:originTrace" v="n:6922106699764155061" />
                                      <node concept="2OqwBi" id="7r" role="2Oq$k0">
                                        <uo k="s:originTrace" v="n:6922106699764155064" />
                                        <node concept="1PxgMI" id="7t" role="2Oq$k0">
                                          <property role="1BlNFB" value="false" />
                                          <uo k="s:originTrace" v="n:6922106699764155067" />
                                          <node concept="37vLTw" id="7v" role="1m5AlR">
                                            <ref role="3cqZAo" node="7m" resolve="node" />
                                            <uo k="s:originTrace" v="n:6922106699764155070" />
                                          </node>
                                          <node concept="chp4Y" id="7w" role="3oSUPX">
                                            <ref role="cht4Q" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                                            <uo k="s:originTrace" v="n:6922106699764155071" />
                                          </node>
                                        </node>
                                        <node concept="3TrcHB" id="7u" role="2OqNvi">
                                          <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                                          <uo k="s:originTrace" v="n:6922106699764155072" />
                                        </node>
                                      </node>
                                      <node concept="21noJN" id="7s" role="2OqNvi">
                                        <uo k="s:originTrace" v="n:6922106699764155073" />
                                        <node concept="21nZrQ" id="7x" role="21noJM">
                                          <ref role="21nZrZ" to="tpce:3Ftr4R6BFyn" resolve="reference" />
                                          <uo k="s:originTrace" v="n:6922106699764155075" />
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
                    <node concept="2AHcQZ" id="74" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6922106699764129640" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6J" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:6922106699764129638" />
        </node>
      </node>
      <node concept="3uibUv" id="6r" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:6922106699764129638" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7y">
    <property role="3GE5qa" value="migration" />
    <property role="TrG5h" value="IgnoreMigrationDataOption_Constraints" />
    <uo k="s:originTrace" v="n:6109541130560494669" />
    <node concept="3Tm1VV" id="7z" role="1B3o_S">
      <uo k="s:originTrace" v="n:6109541130560494669" />
    </node>
    <node concept="3uibUv" id="7$" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:6109541130560494669" />
    </node>
    <node concept="3clFbW" id="7_" role="jymVt">
      <uo k="s:originTrace" v="n:6109541130560494669" />
      <node concept="37vLTG" id="7C" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:6109541130560494669" />
        <node concept="3uibUv" id="7F" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:6109541130560494669" />
        </node>
      </node>
      <node concept="3cqZAl" id="7D" role="3clF45">
        <uo k="s:originTrace" v="n:6109541130560494669" />
      </node>
      <node concept="3clFbS" id="7E" role="3clF47">
        <uo k="s:originTrace" v="n:6109541130560494669" />
        <node concept="XkiVB" id="7G" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:6109541130560494669" />
          <node concept="1BaE9c" id="7I" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="IgnoreMigrationDataOption$BF" />
            <uo k="s:originTrace" v="n:6109541130560494669" />
            <node concept="2YIFZM" id="7K" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:6109541130560494669" />
              <node concept="11gdke" id="7L" role="37wK5m">
                <property role="11gdj1" value="8585453e6bfb4d80L" />
                <uo k="s:originTrace" v="n:6109541130560494669" />
              </node>
              <node concept="11gdke" id="7M" role="37wK5m">
                <property role="11gdj1" value="98deb16074f1d86cL" />
                <uo k="s:originTrace" v="n:6109541130560494669" />
              </node>
              <node concept="11gdke" id="7N" role="37wK5m">
                <property role="11gdj1" value="54c97349dbb25c33L" />
                <uo k="s:originTrace" v="n:6109541130560494669" />
              </node>
              <node concept="Xl_RD" id="7O" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.test.structure.IgnoreMigrationDataOption" />
                <uo k="s:originTrace" v="n:6109541130560494669" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="7J" role="37wK5m">
            <ref role="3cqZAo" node="7C" resolve="initContext" />
            <uo k="s:originTrace" v="n:6109541130560494669" />
          </node>
        </node>
        <node concept="3clFbF" id="7H" role="3cqZAp">
          <uo k="s:originTrace" v="n:6109541130560494669" />
          <node concept="1rXfSq" id="7P" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.setCanBeChildConstraint(jetbrains.mps.smodel.runtime.ConstraintFunction)" resolve="setCanBeChildConstraint" />
            <uo k="s:originTrace" v="n:6109541130560494669" />
            <node concept="2ShNRf" id="7Q" role="37wK5m">
              <uo k="s:originTrace" v="n:6109541130560494669" />
              <node concept="YeOm9" id="7R" role="2ShVmc">
                <uo k="s:originTrace" v="n:6109541130560494669" />
                <node concept="1Y3b0j" id="7S" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <uo k="s:originTrace" v="n:6109541130560494669" />
                  <node concept="3Tm1VV" id="7T" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6109541130560494669" />
                  </node>
                  <node concept="3clFb_" id="7U" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="invoke" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <uo k="s:originTrace" v="n:6109541130560494669" />
                    <node concept="3Tm1VV" id="7X" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6109541130560494669" />
                    </node>
                    <node concept="2AHcQZ" id="7Y" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:6109541130560494669" />
                    </node>
                    <node concept="3uibUv" id="7Z" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      <uo k="s:originTrace" v="n:6109541130560494669" />
                    </node>
                    <node concept="37vLTG" id="80" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <uo k="s:originTrace" v="n:6109541130560494669" />
                      <node concept="3uibUv" id="83" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                        <uo k="s:originTrace" v="n:6109541130560494669" />
                      </node>
                      <node concept="2AHcQZ" id="84" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        <uo k="s:originTrace" v="n:6109541130560494669" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="81" role="3clF46">
                      <property role="TrG5h" value="checkingNodeContext" />
                      <uo k="s:originTrace" v="n:6109541130560494669" />
                      <node concept="3uibUv" id="85" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                        <uo k="s:originTrace" v="n:6109541130560494669" />
                      </node>
                      <node concept="2AHcQZ" id="86" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                        <uo k="s:originTrace" v="n:6109541130560494669" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="82" role="3clF47">
                      <uo k="s:originTrace" v="n:6109541130560494669" />
                      <node concept="3cpWs8" id="87" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6109541130560494669" />
                        <node concept="3cpWsn" id="8c" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:6109541130560494669" />
                          <node concept="10P_77" id="8d" role="1tU5fm">
                            <uo k="s:originTrace" v="n:6109541130560494669" />
                          </node>
                          <node concept="1rXfSq" id="8e" role="33vP2m">
                            <ref role="37wK5l" node="7B" resolve="staticCanBeAChild" />
                            <uo k="s:originTrace" v="n:6109541130560494669" />
                            <node concept="2OqwBi" id="8f" role="37wK5m">
                              <uo k="s:originTrace" v="n:6109541130560494669" />
                              <node concept="37vLTw" id="8j" role="2Oq$k0">
                                <ref role="3cqZAo" node="80" resolve="context" />
                                <uo k="s:originTrace" v="n:6109541130560494669" />
                              </node>
                              <node concept="liA8E" id="8k" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getNode()" resolve="getNode" />
                                <uo k="s:originTrace" v="n:6109541130560494669" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="8g" role="37wK5m">
                              <uo k="s:originTrace" v="n:6109541130560494669" />
                              <node concept="37vLTw" id="8l" role="2Oq$k0">
                                <ref role="3cqZAo" node="80" resolve="context" />
                                <uo k="s:originTrace" v="n:6109541130560494669" />
                              </node>
                              <node concept="liA8E" id="8m" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getParentNode()" resolve="getParentNode" />
                                <uo k="s:originTrace" v="n:6109541130560494669" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="8h" role="37wK5m">
                              <uo k="s:originTrace" v="n:6109541130560494669" />
                              <node concept="37vLTw" id="8n" role="2Oq$k0">
                                <ref role="3cqZAo" node="80" resolve="context" />
                                <uo k="s:originTrace" v="n:6109541130560494669" />
                              </node>
                              <node concept="liA8E" id="8o" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getConcept()" resolve="getConcept" />
                                <uo k="s:originTrace" v="n:6109541130560494669" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="8i" role="37wK5m">
                              <uo k="s:originTrace" v="n:6109541130560494669" />
                              <node concept="37vLTw" id="8p" role="2Oq$k0">
                                <ref role="3cqZAo" node="80" resolve="context" />
                                <uo k="s:originTrace" v="n:6109541130560494669" />
                              </node>
                              <node concept="liA8E" id="8q" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getLink()" resolve="getLink" />
                                <uo k="s:originTrace" v="n:6109541130560494669" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="88" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6109541130560494669" />
                      </node>
                      <node concept="3clFbJ" id="89" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6109541130560494669" />
                        <node concept="3clFbS" id="8r" role="3clFbx">
                          <uo k="s:originTrace" v="n:6109541130560494669" />
                          <node concept="3clFbF" id="8t" role="3cqZAp">
                            <uo k="s:originTrace" v="n:6109541130560494669" />
                            <node concept="2OqwBi" id="8u" role="3clFbG">
                              <uo k="s:originTrace" v="n:6109541130560494669" />
                              <node concept="37vLTw" id="8v" role="2Oq$k0">
                                <ref role="3cqZAo" node="81" resolve="checkingNodeContext" />
                                <uo k="s:originTrace" v="n:6109541130560494669" />
                              </node>
                              <node concept="liA8E" id="8w" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                                <uo k="s:originTrace" v="n:6109541130560494669" />
                                <node concept="1dyn4i" id="8x" role="37wK5m">
                                  <property role="1dyqJU" value="canBeChildBreakingPoint" />
                                  <uo k="s:originTrace" v="n:6109541130560494669" />
                                  <node concept="2ShNRf" id="8y" role="1dyrYi">
                                    <uo k="s:originTrace" v="n:6109541130560494669" />
                                    <node concept="1pGfFk" id="8z" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:6109541130560494669" />
                                      <node concept="Xl_RD" id="8$" role="37wK5m">
                                        <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590382(jetbrains.mps.lang.test.constraints)" />
                                        <uo k="s:originTrace" v="n:6109541130560494669" />
                                      </node>
                                      <node concept="Xl_RD" id="8_" role="37wK5m">
                                        <property role="Xl_RC" value="6109541130560494670" />
                                        <uo k="s:originTrace" v="n:6109541130560494669" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Wc70l" id="8s" role="3clFbw">
                          <uo k="s:originTrace" v="n:6109541130560494669" />
                          <node concept="3y3z36" id="8A" role="3uHU7w">
                            <uo k="s:originTrace" v="n:6109541130560494669" />
                            <node concept="10Nm6u" id="8C" role="3uHU7w">
                              <uo k="s:originTrace" v="n:6109541130560494669" />
                            </node>
                            <node concept="37vLTw" id="8D" role="3uHU7B">
                              <ref role="3cqZAo" node="81" resolve="checkingNodeContext" />
                              <uo k="s:originTrace" v="n:6109541130560494669" />
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="8B" role="3uHU7B">
                            <uo k="s:originTrace" v="n:6109541130560494669" />
                            <node concept="37vLTw" id="8E" role="3fr31v">
                              <ref role="3cqZAo" node="8c" resolve="result" />
                              <uo k="s:originTrace" v="n:6109541130560494669" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="8a" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6109541130560494669" />
                      </node>
                      <node concept="3clFbF" id="8b" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6109541130560494669" />
                        <node concept="37vLTw" id="8F" role="3clFbG">
                          <ref role="3cqZAo" node="8c" resolve="result" />
                          <uo k="s:originTrace" v="n:6109541130560494669" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="7V" role="2Ghqu4">
                    <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                    <uo k="s:originTrace" v="n:6109541130560494669" />
                  </node>
                  <node concept="3uibUv" id="7W" role="2Ghqu4">
                    <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    <uo k="s:originTrace" v="n:6109541130560494669" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7A" role="jymVt">
      <uo k="s:originTrace" v="n:6109541130560494669" />
    </node>
    <node concept="2YIFZL" id="7B" role="jymVt">
      <property role="TrG5h" value="staticCanBeAChild" />
      <uo k="s:originTrace" v="n:6109541130560494669" />
      <node concept="10P_77" id="8G" role="3clF45">
        <uo k="s:originTrace" v="n:6109541130560494669" />
      </node>
      <node concept="3Tm6S6" id="8H" role="1B3o_S">
        <uo k="s:originTrace" v="n:6109541130560494669" />
      </node>
      <node concept="3clFbS" id="8I" role="3clF47">
        <uo k="s:originTrace" v="n:6109541130560494671" />
        <node concept="3clFbF" id="8N" role="3cqZAp">
          <uo k="s:originTrace" v="n:6109541130560495140" />
          <node concept="1Wc70l" id="8O" role="3clFbG">
            <uo k="s:originTrace" v="n:6109541130560501485" />
            <node concept="17R0WA" id="8P" role="3uHU7w">
              <uo k="s:originTrace" v="n:6109541130560504327" />
              <node concept="359W_D" id="8R" role="3uHU7w">
                <ref role="359W_E" to="tp5g:4K12N3pJ$JB" resolve="MigrationTestCase" />
                <ref role="359W_F" to="tp5g:5j9sOBrGAXZ" resolve="option" />
                <uo k="s:originTrace" v="n:6109541130560505337" />
              </node>
              <node concept="37vLTw" id="8S" role="3uHU7B">
                <ref role="3cqZAo" node="8M" resolve="link" />
                <uo k="s:originTrace" v="n:6109541130560502271" />
              </node>
            </node>
            <node concept="2OqwBi" id="8Q" role="3uHU7B">
              <uo k="s:originTrace" v="n:6109541130560496225" />
              <node concept="37vLTw" id="8T" role="2Oq$k0">
                <ref role="3cqZAo" node="8K" resolve="parentNode" />
                <uo k="s:originTrace" v="n:6109541130560495139" />
              </node>
              <node concept="1mIQ4w" id="8U" role="2OqNvi">
                <uo k="s:originTrace" v="n:6109541130560497779" />
                <node concept="chp4Y" id="8V" role="cj9EA">
                  <ref role="cht4Q" to="tp5g:4K12N3pJ$JB" resolve="MigrationTestCase" />
                  <uo k="s:originTrace" v="n:6109541130560498595" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="8J" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:6109541130560494669" />
        <node concept="3uibUv" id="8W" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:6109541130560494669" />
        </node>
      </node>
      <node concept="37vLTG" id="8K" role="3clF46">
        <property role="TrG5h" value="parentNode" />
        <uo k="s:originTrace" v="n:6109541130560494669" />
        <node concept="3uibUv" id="8X" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:6109541130560494669" />
        </node>
      </node>
      <node concept="37vLTG" id="8L" role="3clF46">
        <property role="TrG5h" value="childConcept" />
        <uo k="s:originTrace" v="n:6109541130560494669" />
        <node concept="3uibUv" id="8Y" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
          <uo k="s:originTrace" v="n:6109541130560494669" />
        </node>
      </node>
      <node concept="37vLTG" id="8M" role="3clF46">
        <property role="TrG5h" value="link" />
        <uo k="s:originTrace" v="n:6109541130560494669" />
        <node concept="3uibUv" id="8Z" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
          <uo k="s:originTrace" v="n:6109541130560494669" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="90">
    <property role="TrG5h" value="IgnoreReferenceRule_Constraints" />
    <uo k="s:originTrace" v="n:6922106699764135498" />
    <node concept="3Tm1VV" id="91" role="1B3o_S">
      <uo k="s:originTrace" v="n:6922106699764135498" />
    </node>
    <node concept="3uibUv" id="92" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:6922106699764135498" />
    </node>
    <node concept="3clFbW" id="93" role="jymVt">
      <uo k="s:originTrace" v="n:6922106699764135498" />
      <node concept="37vLTG" id="96" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:6922106699764135498" />
        <node concept="3uibUv" id="99" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:6922106699764135498" />
        </node>
      </node>
      <node concept="3cqZAl" id="97" role="3clF45">
        <uo k="s:originTrace" v="n:6922106699764135498" />
      </node>
      <node concept="3clFbS" id="98" role="3clF47">
        <uo k="s:originTrace" v="n:6922106699764135498" />
        <node concept="XkiVB" id="9a" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:6922106699764135498" />
          <node concept="1BaE9c" id="9c" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="IgnoreReferenceRule$tm" />
            <uo k="s:originTrace" v="n:6922106699764135498" />
            <node concept="2YIFZM" id="9e" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:6922106699764135498" />
              <node concept="11gdke" id="9f" role="37wK5m">
                <property role="11gdj1" value="8585453e6bfb4d80L" />
                <uo k="s:originTrace" v="n:6922106699764135498" />
              </node>
              <node concept="11gdke" id="9g" role="37wK5m">
                <property role="11gdj1" value="98deb16074f1d86cL" />
                <uo k="s:originTrace" v="n:6922106699764135498" />
              </node>
              <node concept="11gdke" id="9h" role="37wK5m">
                <property role="11gdj1" value="6010435e58c2e4a9L" />
                <uo k="s:originTrace" v="n:6922106699764135498" />
              </node>
              <node concept="Xl_RD" id="9i" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.test.structure.IgnoreReferenceRule" />
                <uo k="s:originTrace" v="n:6922106699764135498" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="9d" role="37wK5m">
            <ref role="3cqZAo" node="96" resolve="initContext" />
            <uo k="s:originTrace" v="n:6922106699764135498" />
          </node>
        </node>
        <node concept="3clFbF" id="9b" role="3cqZAp">
          <uo k="s:originTrace" v="n:6922106699764135498" />
          <node concept="1rXfSq" id="9j" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:6922106699764135498" />
            <node concept="2ShNRf" id="9k" role="37wK5m">
              <uo k="s:originTrace" v="n:6922106699764135498" />
              <node concept="1pGfFk" id="9l" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="9n" resolve="IgnoreReferenceRule_Constraints.RD1" />
                <uo k="s:originTrace" v="n:6922106699764135498" />
                <node concept="Xjq3P" id="9m" role="37wK5m">
                  <uo k="s:originTrace" v="n:6922106699764135498" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="94" role="jymVt">
      <uo k="s:originTrace" v="n:6922106699764135498" />
    </node>
    <node concept="312cEu" id="95" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:6922106699764135498" />
      <node concept="3clFbW" id="9n" role="jymVt">
        <uo k="s:originTrace" v="n:6922106699764135498" />
        <node concept="37vLTG" id="9q" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:6922106699764135498" />
          <node concept="3uibUv" id="9t" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:6922106699764135498" />
          </node>
        </node>
        <node concept="3cqZAl" id="9r" role="3clF45">
          <uo k="s:originTrace" v="n:6922106699764135498" />
        </node>
        <node concept="3clFbS" id="9s" role="3clF47">
          <uo k="s:originTrace" v="n:6922106699764135498" />
          <node concept="XkiVB" id="9u" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:6922106699764135498" />
            <node concept="1BaE9c" id="9v" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="link$7HLz" />
              <uo k="s:originTrace" v="n:6922106699764135498" />
              <node concept="2YIFZM" id="9z" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:6922106699764135498" />
                <node concept="11gdke" id="9$" role="37wK5m">
                  <property role="11gdj1" value="8585453e6bfb4d80L" />
                  <uo k="s:originTrace" v="n:6922106699764135498" />
                </node>
                <node concept="11gdke" id="9_" role="37wK5m">
                  <property role="11gdj1" value="98deb16074f1d86cL" />
                  <uo k="s:originTrace" v="n:6922106699764135498" />
                </node>
                <node concept="11gdke" id="9A" role="37wK5m">
                  <property role="11gdj1" value="6010435e58c2e4a9L" />
                  <uo k="s:originTrace" v="n:6922106699764135498" />
                </node>
                <node concept="11gdke" id="9B" role="37wK5m">
                  <property role="11gdj1" value="6010435e58c2e4aeL" />
                  <uo k="s:originTrace" v="n:6922106699764135498" />
                </node>
                <node concept="Xl_RD" id="9C" role="37wK5m">
                  <property role="Xl_RC" value="link" />
                  <uo k="s:originTrace" v="n:6922106699764135498" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="9w" role="37wK5m">
              <ref role="3cqZAo" node="9q" resolve="container" />
              <uo k="s:originTrace" v="n:6922106699764135498" />
            </node>
            <node concept="3clFbT" id="9x" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:6922106699764135498" />
            </node>
            <node concept="3clFbT" id="9y" role="37wK5m">
              <uo k="s:originTrace" v="n:6922106699764135498" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="9o" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:6922106699764135498" />
        <node concept="3Tm1VV" id="9D" role="1B3o_S">
          <uo k="s:originTrace" v="n:6922106699764135498" />
        </node>
        <node concept="3uibUv" id="9E" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:6922106699764135498" />
        </node>
        <node concept="2AHcQZ" id="9F" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:6922106699764135498" />
        </node>
        <node concept="3clFbS" id="9G" role="3clF47">
          <uo k="s:originTrace" v="n:6922106699764135498" />
          <node concept="3cpWs6" id="9I" role="3cqZAp">
            <uo k="s:originTrace" v="n:6922106699764135498" />
            <node concept="2ShNRf" id="9J" role="3cqZAk">
              <uo k="s:originTrace" v="n:6922106699764135500" />
              <node concept="YeOm9" id="9K" role="2ShVmc">
                <uo k="s:originTrace" v="n:6922106699764135500" />
                <node concept="1Y3b0j" id="9L" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:6922106699764135500" />
                  <node concept="3Tm1VV" id="9M" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6922106699764135500" />
                  </node>
                  <node concept="3clFb_" id="9N" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:6922106699764135500" />
                    <node concept="3Tm1VV" id="9P" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6922106699764135500" />
                    </node>
                    <node concept="3uibUv" id="9Q" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:6922106699764135500" />
                    </node>
                    <node concept="3clFbS" id="9R" role="3clF47">
                      <uo k="s:originTrace" v="n:6922106699764135500" />
                      <node concept="3cpWs6" id="9T" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6922106699764135500" />
                        <node concept="2ShNRf" id="9U" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6922106699764135500" />
                          <node concept="1pGfFk" id="9V" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:6922106699764135500" />
                            <node concept="Xl_RD" id="9W" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590382(jetbrains.mps.lang.test.constraints)" />
                              <uo k="s:originTrace" v="n:6922106699764135500" />
                            </node>
                            <node concept="Xl_RD" id="9X" role="37wK5m">
                              <property role="Xl_RC" value="6922106699764135500" />
                              <uo k="s:originTrace" v="n:6922106699764135500" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="9S" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6922106699764135500" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="9O" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:6922106699764135500" />
                    <node concept="3Tm1VV" id="9Y" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6922106699764135500" />
                    </node>
                    <node concept="3uibUv" id="9Z" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:6922106699764135500" />
                    </node>
                    <node concept="37vLTG" id="a0" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:6922106699764135500" />
                      <node concept="3uibUv" id="a3" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:6922106699764135500" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="a1" role="3clF47">
                      <uo k="s:originTrace" v="n:6922106699764135500" />
                      <node concept="3clFbF" id="a4" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6922106699764135503" />
                        <node concept="2ShNRf" id="a5" role="3clFbG">
                          <uo k="s:originTrace" v="n:6922106699764135505" />
                          <node concept="YeOm9" id="a6" role="2ShVmc">
                            <uo k="s:originTrace" v="n:6922106699764135507" />
                            <node concept="1Y3b0j" id="a7" role="YeSDq">
                              <property role="2bfB8j" value="true" />
                              <property role="373rjd" value="true" />
                              <property role="TrG5h" value="FilteringScope" />
                              <property role="jj94n" value="FilteringScope" />
                              <ref role="1Y3XeK" to="o8zo:3rV3sBXetA0" resolve="FilteringScope" />
                              <ref role="37wK5l" to="o8zo:3rV3sBXetA2" resolve="FilteringScope" />
                              <uo k="s:originTrace" v="n:6922106699764135510" />
                              <node concept="2OqwBi" id="a8" role="37wK5m">
                                <uo k="s:originTrace" v="n:6922106699764135512" />
                                <node concept="2OqwBi" id="aa" role="2Oq$k0">
                                  <node concept="37vLTw" id="ac" role="2Oq$k0">
                                    <ref role="3cqZAo" node="a0" resolve="_context" />
                                  </node>
                                  <node concept="liA8E" id="ad" role="2OqNvi">
                                    <ref role="37wK5l" to="ze1i:~ReferenceConstraintsContext.getScopeEvaluationContext()" resolve="getScopeEvaluationContext" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="ab" role="2OqNvi">
                                  <ref role="37wK5l" to="ze1i:~EvaluateScopeContext.ofNodesDefault(org.jetbrains.mps.openapi.model.SModel,org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="ofNodesDefault" />
                                  <node concept="2OqwBi" id="ae" role="37wK5m">
                                    <node concept="37vLTw" id="ag" role="2Oq$k0">
                                      <ref role="3cqZAo" node="a0" resolve="_context" />
                                    </node>
                                    <node concept="liA8E" id="ah" role="2OqNvi">
                                      <ref role="37wK5l" to="ze1i:~ReferenceConstraintsContext.getModel()" resolve="getModel" />
                                    </node>
                                  </node>
                                  <node concept="35c_gC" id="af" role="37wK5m">
                                    <ref role="35c_gD" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFb_" id="a9" role="jymVt">
                                <property role="TrG5h" value="isExcluded" />
                                <uo k="s:originTrace" v="n:6922106699764135513" />
                                <node concept="3Tm1VV" id="ai" role="1B3o_S">
                                  <uo k="s:originTrace" v="n:6922106699764135517" />
                                </node>
                                <node concept="10P_77" id="aj" role="3clF45">
                                  <uo k="s:originTrace" v="n:6922106699764135518" />
                                </node>
                                <node concept="37vLTG" id="ak" role="3clF46">
                                  <property role="TrG5h" value="node" />
                                  <uo k="s:originTrace" v="n:6922106699764135519" />
                                  <node concept="3Tqbb2" id="am" role="1tU5fm">
                                    <uo k="s:originTrace" v="n:6922106699764135521" />
                                  </node>
                                </node>
                                <node concept="3clFbS" id="al" role="3clF47">
                                  <uo k="s:originTrace" v="n:6922106699764135522" />
                                  <node concept="3cpWs6" id="an" role="3cqZAp">
                                    <uo k="s:originTrace" v="n:6922106699764135523" />
                                    <node concept="2OqwBi" id="ao" role="3cqZAk">
                                      <uo k="s:originTrace" v="n:6922106699764160352" />
                                      <node concept="2OqwBi" id="ap" role="2Oq$k0">
                                        <uo k="s:originTrace" v="n:6922106699764160355" />
                                        <node concept="1PxgMI" id="ar" role="2Oq$k0">
                                          <property role="1BlNFB" value="false" />
                                          <uo k="s:originTrace" v="n:6922106699764160358" />
                                          <node concept="37vLTw" id="at" role="1m5AlR">
                                            <ref role="3cqZAo" node="ak" resolve="node" />
                                            <uo k="s:originTrace" v="n:6922106699764160361" />
                                          </node>
                                          <node concept="chp4Y" id="au" role="3oSUPX">
                                            <ref role="cht4Q" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                                            <uo k="s:originTrace" v="n:6922106699764160362" />
                                          </node>
                                        </node>
                                        <node concept="3TrcHB" id="as" role="2OqNvi">
                                          <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                                          <uo k="s:originTrace" v="n:6922106699764160363" />
                                        </node>
                                      </node>
                                      <node concept="21noJN" id="aq" role="2OqNvi">
                                        <uo k="s:originTrace" v="n:6922106699764160364" />
                                        <node concept="21nZrQ" id="av" role="21noJM">
                                          <ref role="21nZrZ" to="tpce:3Ftr4R6BFyo" resolve="aggregation" />
                                          <uo k="s:originTrace" v="n:6922106699764160366" />
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
                    <node concept="2AHcQZ" id="a2" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6922106699764135500" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="9H" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:6922106699764135498" />
        </node>
      </node>
      <node concept="3uibUv" id="9p" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:6922106699764135498" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="aw">
    <property role="3GE5qa" value="migration" />
    <property role="TrG5h" value="MigrationReference_Constraints" />
    <uo k="s:originTrace" v="n:6626913010124378670" />
    <node concept="3Tm1VV" id="ax" role="1B3o_S">
      <uo k="s:originTrace" v="n:6626913010124378670" />
    </node>
    <node concept="3uibUv" id="ay" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:6626913010124378670" />
    </node>
    <node concept="3clFbW" id="az" role="jymVt">
      <uo k="s:originTrace" v="n:6626913010124378670" />
      <node concept="37vLTG" id="aA" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:6626913010124378670" />
        <node concept="3uibUv" id="aD" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:6626913010124378670" />
        </node>
      </node>
      <node concept="3cqZAl" id="aB" role="3clF45">
        <uo k="s:originTrace" v="n:6626913010124378670" />
      </node>
      <node concept="3clFbS" id="aC" role="3clF47">
        <uo k="s:originTrace" v="n:6626913010124378670" />
        <node concept="XkiVB" id="aE" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:6626913010124378670" />
          <node concept="1BaE9c" id="aG" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="MigrationReference$R6" />
            <uo k="s:originTrace" v="n:6626913010124378670" />
            <node concept="2YIFZM" id="aI" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:6626913010124378670" />
              <node concept="11gdke" id="aJ" role="37wK5m">
                <property role="11gdj1" value="8585453e6bfb4d80L" />
                <uo k="s:originTrace" v="n:6626913010124378670" />
              </node>
              <node concept="11gdke" id="aK" role="37wK5m">
                <property role="11gdj1" value="98deb16074f1d86cL" />
                <uo k="s:originTrace" v="n:6626913010124378670" />
              </node>
              <node concept="11gdke" id="aL" role="37wK5m">
                <property role="11gdj1" value="5bf7864595dddf89L" />
                <uo k="s:originTrace" v="n:6626913010124378670" />
              </node>
              <node concept="Xl_RD" id="aM" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.test.structure.MigrationReference" />
                <uo k="s:originTrace" v="n:6626913010124378670" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="aH" role="37wK5m">
            <ref role="3cqZAo" node="aA" resolve="initContext" />
            <uo k="s:originTrace" v="n:6626913010124378670" />
          </node>
        </node>
        <node concept="3clFbF" id="aF" role="3cqZAp">
          <uo k="s:originTrace" v="n:6626913010124378670" />
          <node concept="1rXfSq" id="aN" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:6626913010124378670" />
            <node concept="2ShNRf" id="aO" role="37wK5m">
              <uo k="s:originTrace" v="n:6626913010124378670" />
              <node concept="1pGfFk" id="aP" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="aR" resolve="MigrationReference_Constraints.RD1" />
                <uo k="s:originTrace" v="n:6626913010124378670" />
                <node concept="Xjq3P" id="aQ" role="37wK5m">
                  <uo k="s:originTrace" v="n:6626913010124378670" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="a$" role="jymVt">
      <uo k="s:originTrace" v="n:6626913010124378670" />
    </node>
    <node concept="312cEu" id="a_" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:6626913010124378670" />
      <node concept="3clFbW" id="aR" role="jymVt">
        <uo k="s:originTrace" v="n:6626913010124378670" />
        <node concept="37vLTG" id="aV" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:6626913010124378670" />
          <node concept="3uibUv" id="aY" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:6626913010124378670" />
          </node>
        </node>
        <node concept="3cqZAl" id="aW" role="3clF45">
          <uo k="s:originTrace" v="n:6626913010124378670" />
        </node>
        <node concept="3clFbS" id="aX" role="3clF47">
          <uo k="s:originTrace" v="n:6626913010124378670" />
          <node concept="XkiVB" id="aZ" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:6626913010124378670" />
            <node concept="1BaE9c" id="b0" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="migration$XW2Z" />
              <uo k="s:originTrace" v="n:6626913010124378670" />
              <node concept="2YIFZM" id="b4" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:6626913010124378670" />
                <node concept="11gdke" id="b5" role="37wK5m">
                  <property role="11gdj1" value="8585453e6bfb4d80L" />
                  <uo k="s:originTrace" v="n:6626913010124378670" />
                </node>
                <node concept="11gdke" id="b6" role="37wK5m">
                  <property role="11gdj1" value="98deb16074f1d86cL" />
                  <uo k="s:originTrace" v="n:6626913010124378670" />
                </node>
                <node concept="11gdke" id="b7" role="37wK5m">
                  <property role="11gdj1" value="5bf7864595dddf89L" />
                  <uo k="s:originTrace" v="n:6626913010124378670" />
                </node>
                <node concept="11gdke" id="b8" role="37wK5m">
                  <property role="11gdj1" value="5bf7864595dddf8aL" />
                  <uo k="s:originTrace" v="n:6626913010124378670" />
                </node>
                <node concept="Xl_RD" id="b9" role="37wK5m">
                  <property role="Xl_RC" value="migration" />
                  <uo k="s:originTrace" v="n:6626913010124378670" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="b1" role="37wK5m">
              <ref role="3cqZAo" node="aV" resolve="container" />
              <uo k="s:originTrace" v="n:6626913010124378670" />
            </node>
            <node concept="3clFbT" id="b2" role="37wK5m">
              <uo k="s:originTrace" v="n:6626913010124378670" />
            </node>
            <node concept="3clFbT" id="b3" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:6626913010124378670" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="aS" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="validate" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:6626913010124378670" />
        <node concept="3Tm1VV" id="ba" role="1B3o_S">
          <uo k="s:originTrace" v="n:6626913010124378670" />
        </node>
        <node concept="10P_77" id="bb" role="3clF45">
          <uo k="s:originTrace" v="n:6626913010124378670" />
        </node>
        <node concept="37vLTG" id="bc" role="3clF46">
          <property role="TrG5h" value="referenceNode" />
          <property role="3TUv4t" value="true" />
          <uo k="s:originTrace" v="n:6626913010124378670" />
          <node concept="3Tqbb2" id="bh" role="1tU5fm">
            <uo k="s:originTrace" v="n:6626913010124378670" />
          </node>
        </node>
        <node concept="37vLTG" id="bd" role="3clF46">
          <property role="TrG5h" value="oldReferentNode" />
          <property role="3TUv4t" value="true" />
          <uo k="s:originTrace" v="n:6626913010124378670" />
          <node concept="3Tqbb2" id="bi" role="1tU5fm">
            <uo k="s:originTrace" v="n:6626913010124378670" />
          </node>
        </node>
        <node concept="37vLTG" id="be" role="3clF46">
          <property role="TrG5h" value="newReferentNode" />
          <property role="3TUv4t" value="true" />
          <uo k="s:originTrace" v="n:6626913010124378670" />
          <node concept="3Tqbb2" id="bj" role="1tU5fm">
            <uo k="s:originTrace" v="n:6626913010124378670" />
          </node>
        </node>
        <node concept="3clFbS" id="bf" role="3clF47">
          <uo k="s:originTrace" v="n:6626913010124378670" />
          <node concept="3cpWs6" id="bk" role="3cqZAp">
            <uo k="s:originTrace" v="n:6626913010124378670" />
            <node concept="3clFbT" id="bl" role="3cqZAk">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:6626913010124378670" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="bg" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:6626913010124378670" />
        </node>
      </node>
      <node concept="3clFb_" id="aT" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="onReferenceSet" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:6626913010124378670" />
        <node concept="3Tm1VV" id="bm" role="1B3o_S">
          <uo k="s:originTrace" v="n:6626913010124378670" />
        </node>
        <node concept="3cqZAl" id="bn" role="3clF45">
          <uo k="s:originTrace" v="n:6626913010124378670" />
        </node>
        <node concept="37vLTG" id="bo" role="3clF46">
          <property role="TrG5h" value="referenceNode" />
          <property role="3TUv4t" value="true" />
          <uo k="s:originTrace" v="n:6626913010124378670" />
          <node concept="3Tqbb2" id="bt" role="1tU5fm">
            <uo k="s:originTrace" v="n:6626913010124378670" />
          </node>
        </node>
        <node concept="37vLTG" id="bp" role="3clF46">
          <property role="TrG5h" value="oldReferentNode" />
          <property role="3TUv4t" value="true" />
          <uo k="s:originTrace" v="n:6626913010124378670" />
          <node concept="3Tqbb2" id="bu" role="1tU5fm">
            <uo k="s:originTrace" v="n:6626913010124378670" />
          </node>
        </node>
        <node concept="37vLTG" id="bq" role="3clF46">
          <property role="TrG5h" value="newReferentNode" />
          <property role="3TUv4t" value="true" />
          <uo k="s:originTrace" v="n:6626913010124378670" />
          <node concept="3Tqbb2" id="bv" role="1tU5fm">
            <uo k="s:originTrace" v="n:6626913010124378670" />
          </node>
        </node>
        <node concept="3clFbS" id="br" role="3clF47">
          <uo k="s:originTrace" v="n:6626913010124378674" />
          <node concept="3clFbJ" id="bw" role="3cqZAp">
            <uo k="s:originTrace" v="n:6626913010124378808" />
            <node concept="1Wc70l" id="bx" role="3clFbw">
              <uo k="s:originTrace" v="n:6626913010124392927" />
              <node concept="3clFbC" id="bz" role="3uHU7w">
                <uo k="s:originTrace" v="n:6626913010124421271" />
                <node concept="3cmrfG" id="b_" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                  <uo k="s:originTrace" v="n:6626913010124421394" />
                </node>
                <node concept="2OqwBi" id="bA" role="3uHU7B">
                  <uo k="s:originTrace" v="n:6626913010124406701" />
                  <node concept="2OqwBi" id="bB" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:6626913010124397002" />
                    <node concept="1PxgMI" id="bD" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:6626913010124395627" />
                      <node concept="chp4Y" id="bF" role="3oSUPX">
                        <ref role="cht4Q" to="tp5g:4K12N3pJ$JB" resolve="MigrationTestCase" />
                        <uo k="s:originTrace" v="n:6626913010124396014" />
                      </node>
                      <node concept="2OqwBi" id="bG" role="1m5AlR">
                        <uo k="s:originTrace" v="n:6626913010124393792" />
                        <node concept="37vLTw" id="bH" role="2Oq$k0">
                          <ref role="3cqZAo" node="bo" resolve="referenceNode" />
                          <uo k="s:originTrace" v="n:6626913010124393212" />
                        </node>
                        <node concept="1mfA1w" id="bI" role="2OqNvi">
                          <uo k="s:originTrace" v="n:6626913010124394226" />
                        </node>
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="bE" role="2OqNvi">
                      <ref role="3TtcxE" to="tp5g:5JRx$mlRSG2" resolve="migration" />
                      <uo k="s:originTrace" v="n:6626913010124399133" />
                    </node>
                  </node>
                  <node concept="34oBXx" id="bC" role="2OqNvi">
                    <uo k="s:originTrace" v="n:6626913010124411560" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="b$" role="3uHU7B">
                <uo k="s:originTrace" v="n:6626913010124379384" />
                <node concept="37vLTw" id="bJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="bo" resolve="referenceNode" />
                  <uo k="s:originTrace" v="n:6626913010124378828" />
                </node>
                <node concept="1BlSNk" id="bK" role="2OqNvi">
                  <ref role="1BmUXE" to="tp5g:4K12N3pJ$JB" resolve="MigrationTestCase" />
                  <ref role="1Bn3mz" to="tp5g:5JRx$mlRSG2" resolve="migration" />
                  <uo k="s:originTrace" v="n:6626913010124382076" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="by" role="3clFbx">
              <uo k="s:originTrace" v="n:6626913010124378810" />
              <node concept="3clFbF" id="bL" role="3cqZAp">
                <uo k="s:originTrace" v="n:6626913010124382201" />
                <node concept="37vLTI" id="bM" role="3clFbG">
                  <uo k="s:originTrace" v="n:6626913010124391310" />
                  <node concept="3cpWs3" id="bN" role="37vLTx">
                    <uo k="s:originTrace" v="n:6626913010124428359" />
                    <node concept="Xl_RD" id="bP" role="3uHU7w">
                      <property role="Xl_RC" value="_Test" />
                      <uo k="s:originTrace" v="n:6626913010124428750" />
                    </node>
                    <node concept="2OqwBi" id="bQ" role="3uHU7B">
                      <uo k="s:originTrace" v="n:6626913010124424420" />
                      <node concept="37vLTw" id="bR" role="2Oq$k0">
                        <ref role="3cqZAo" node="bq" resolve="newReferentNode" />
                        <uo k="s:originTrace" v="n:6626913010124423581" />
                      </node>
                      <node concept="3TrcHB" id="bS" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        <uo k="s:originTrace" v="n:6626913010124425390" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="bO" role="37vLTJ">
                    <uo k="s:originTrace" v="n:6626913010124386554" />
                    <node concept="1PxgMI" id="bT" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:6626913010124385706" />
                      <node concept="chp4Y" id="bV" role="3oSUPX">
                        <ref role="cht4Q" to="tp5g:4K12N3pJ$JB" resolve="MigrationTestCase" />
                        <uo k="s:originTrace" v="n:6626913010124385762" />
                      </node>
                      <node concept="2OqwBi" id="bW" role="1m5AlR">
                        <uo k="s:originTrace" v="n:6626913010124382653" />
                        <node concept="37vLTw" id="bX" role="2Oq$k0">
                          <ref role="3cqZAo" node="bo" resolve="referenceNode" />
                          <uo k="s:originTrace" v="n:6626913010124382200" />
                        </node>
                        <node concept="1mfA1w" id="bY" role="2OqNvi">
                          <uo k="s:originTrace" v="n:6626913010124383059" />
                        </node>
                      </node>
                    </node>
                    <node concept="3TrcHB" id="bU" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      <uo k="s:originTrace" v="n:6626913010124387660" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="bs" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:6626913010124378670" />
        </node>
      </node>
      <node concept="3uibUv" id="aU" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:6626913010124378670" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="bZ">
    <property role="3GE5qa" value="migration" />
    <property role="TrG5h" value="MigrationTestCase_Constraints" />
    <uo k="s:originTrace" v="n:5476670926298711517" />
    <node concept="3Tm1VV" id="c0" role="1B3o_S">
      <uo k="s:originTrace" v="n:5476670926298711517" />
    </node>
    <node concept="3uibUv" id="c1" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:5476670926298711517" />
    </node>
    <node concept="3clFbW" id="c2" role="jymVt">
      <uo k="s:originTrace" v="n:5476670926298711517" />
      <node concept="37vLTG" id="c5" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:5476670926298711517" />
        <node concept="3uibUv" id="c8" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:5476670926298711517" />
        </node>
      </node>
      <node concept="3cqZAl" id="c6" role="3clF45">
        <uo k="s:originTrace" v="n:5476670926298711517" />
      </node>
      <node concept="3clFbS" id="c7" role="3clF47">
        <uo k="s:originTrace" v="n:5476670926298711517" />
        <node concept="XkiVB" id="c9" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:5476670926298711517" />
          <node concept="1BaE9c" id="cb" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="MigrationTestCase$7Q" />
            <uo k="s:originTrace" v="n:5476670926298711517" />
            <node concept="2YIFZM" id="cd" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:5476670926298711517" />
              <node concept="11gdke" id="ce" role="37wK5m">
                <property role="11gdj1" value="8585453e6bfb4d80L" />
                <uo k="s:originTrace" v="n:5476670926298711517" />
              </node>
              <node concept="11gdke" id="cf" role="37wK5m">
                <property role="11gdj1" value="98deb16074f1d86cL" />
                <uo k="s:originTrace" v="n:5476670926298711517" />
              </node>
              <node concept="11gdke" id="cg" role="37wK5m">
                <property role="11gdj1" value="4c010b30d9be4be7L" />
                <uo k="s:originTrace" v="n:5476670926298711517" />
              </node>
              <node concept="Xl_RD" id="ch" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.test.structure.MigrationTestCase" />
                <uo k="s:originTrace" v="n:5476670926298711517" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="cc" role="37wK5m">
            <ref role="3cqZAo" node="c5" resolve="initContext" />
            <uo k="s:originTrace" v="n:5476670926298711517" />
          </node>
        </node>
        <node concept="3clFbF" id="ca" role="3cqZAp">
          <uo k="s:originTrace" v="n:5476670926298711517" />
          <node concept="1rXfSq" id="ci" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.PropertyConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:5476670926298711517" />
            <node concept="2ShNRf" id="cj" role="37wK5m">
              <uo k="s:originTrace" v="n:5476670926298711517" />
              <node concept="1pGfFk" id="ck" role="2ShVmc">
                <ref role="37wK5l" node="cm" resolve="MigrationTestCase_Constraints.CanNotRunInProcess_PD" />
                <uo k="s:originTrace" v="n:5476670926298711517" />
                <node concept="Xjq3P" id="cl" role="37wK5m">
                  <uo k="s:originTrace" v="n:5476670926298711517" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="c3" role="jymVt">
      <uo k="s:originTrace" v="n:5476670926298711517" />
    </node>
    <node concept="312cEu" id="c4" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="CanNotRunInProcess_PD" />
      <uo k="s:originTrace" v="n:5476670926298711517" />
      <node concept="3clFbW" id="cm" role="jymVt">
        <uo k="s:originTrace" v="n:5476670926298711517" />
        <node concept="3cqZAl" id="cq" role="3clF45">
          <uo k="s:originTrace" v="n:5476670926298711517" />
        </node>
        <node concept="3Tm1VV" id="cr" role="1B3o_S">
          <uo k="s:originTrace" v="n:5476670926298711517" />
        </node>
        <node concept="3clFbS" id="cs" role="3clF47">
          <uo k="s:originTrace" v="n:5476670926298711517" />
          <node concept="XkiVB" id="cu" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BasePropertyConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean,boolean)" resolve="BasePropertyConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:5476670926298711517" />
            <node concept="1BaE9c" id="cv" role="37wK5m">
              <property role="1ouuDV" value="PROPS" />
              <property role="1BaxDp" value="canNotRunInProcess$hiag" />
              <uo k="s:originTrace" v="n:5476670926298711517" />
              <node concept="2YIFZM" id="c$" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:5476670926298711517" />
                <node concept="11gdke" id="c_" role="37wK5m">
                  <property role="11gdj1" value="f61473f9130f42f6L" />
                  <uo k="s:originTrace" v="n:5476670926298711517" />
                </node>
                <node concept="11gdke" id="cA" role="37wK5m">
                  <property role="11gdj1" value="b98d6c438812c2f6L" />
                  <uo k="s:originTrace" v="n:5476670926298711517" />
                </node>
                <node concept="11gdke" id="cB" role="37wK5m">
                  <property role="11gdj1" value="11b2709bd56L" />
                  <uo k="s:originTrace" v="n:5476670926298711517" />
                </node>
                <node concept="11gdke" id="cC" role="37wK5m">
                  <property role="11gdj1" value="59337dc8dffe0d9dL" />
                  <uo k="s:originTrace" v="n:5476670926298711517" />
                </node>
                <node concept="Xl_RD" id="cD" role="37wK5m">
                  <property role="Xl_RC" value="canNotRunInProcess" />
                  <uo k="s:originTrace" v="n:5476670926298711517" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="cw" role="37wK5m">
              <ref role="3cqZAo" node="ct" resolve="container" />
              <uo k="s:originTrace" v="n:5476670926298711517" />
            </node>
            <node concept="3clFbT" id="cx" role="37wK5m">
              <uo k="s:originTrace" v="n:5476670926298711517" />
            </node>
            <node concept="3clFbT" id="cy" role="37wK5m">
              <uo k="s:originTrace" v="n:5476670926298711517" />
            </node>
            <node concept="3clFbT" id="cz" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:5476670926298711517" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="ct" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:5476670926298711517" />
          <node concept="3uibUv" id="cE" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:5476670926298711517" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="cn" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="validateValue" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:5476670926298711517" />
        <node concept="3Tm1VV" id="cF" role="1B3o_S">
          <uo k="s:originTrace" v="n:5476670926298711517" />
        </node>
        <node concept="10P_77" id="cG" role="3clF45">
          <uo k="s:originTrace" v="n:5476670926298711517" />
        </node>
        <node concept="37vLTG" id="cH" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:5476670926298711517" />
          <node concept="3Tqbb2" id="cM" role="1tU5fm">
            <uo k="s:originTrace" v="n:5476670926298711517" />
          </node>
        </node>
        <node concept="37vLTG" id="cI" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:5476670926298711517" />
          <node concept="3uibUv" id="cN" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            <uo k="s:originTrace" v="n:5476670926298711517" />
          </node>
        </node>
        <node concept="37vLTG" id="cJ" role="3clF46">
          <property role="TrG5h" value="checkingNodeContext" />
          <uo k="s:originTrace" v="n:5476670926298711517" />
          <node concept="3uibUv" id="cO" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
            <uo k="s:originTrace" v="n:5476670926298711517" />
          </node>
        </node>
        <node concept="3clFbS" id="cK" role="3clF47">
          <uo k="s:originTrace" v="n:5476670926298711517" />
          <node concept="3cpWs8" id="cP" role="3cqZAp">
            <uo k="s:originTrace" v="n:5476670926298711517" />
            <node concept="3cpWsn" id="cS" role="3cpWs9">
              <property role="TrG5h" value="result" />
              <uo k="s:originTrace" v="n:5476670926298711517" />
              <node concept="10P_77" id="cT" role="1tU5fm">
                <uo k="s:originTrace" v="n:5476670926298711517" />
              </node>
              <node concept="1rXfSq" id="cU" role="33vP2m">
                <ref role="37wK5l" node="co" resolve="staticValidateProperty" />
                <uo k="s:originTrace" v="n:5476670926298711517" />
                <node concept="37vLTw" id="cV" role="37wK5m">
                  <ref role="3cqZAo" node="cH" resolve="node" />
                  <uo k="s:originTrace" v="n:5476670926298711517" />
                </node>
                <node concept="2YIFZM" id="cW" role="37wK5m">
                  <ref role="1Pybhc" to="i8bi:5IkW5anFfnn" resolve="SPropertyOperations" />
                  <ref role="37wK5l" to="i8bi:7xvVBHRimm7" resolve="castBoolean" />
                  <uo k="s:originTrace" v="n:5476670926298711517" />
                  <node concept="37vLTw" id="cX" role="37wK5m">
                    <ref role="3cqZAo" node="cI" resolve="propertyValue" />
                    <uo k="s:originTrace" v="n:5476670926298711517" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="cQ" role="3cqZAp">
            <uo k="s:originTrace" v="n:5476670926298711517" />
            <node concept="3clFbS" id="cY" role="3clFbx">
              <uo k="s:originTrace" v="n:5476670926298711517" />
              <node concept="3clFbF" id="d0" role="3cqZAp">
                <uo k="s:originTrace" v="n:5476670926298711517" />
                <node concept="2OqwBi" id="d1" role="3clFbG">
                  <uo k="s:originTrace" v="n:5476670926298711517" />
                  <node concept="37vLTw" id="d2" role="2Oq$k0">
                    <ref role="3cqZAo" node="cJ" resolve="checkingNodeContext" />
                    <uo k="s:originTrace" v="n:5476670926298711517" />
                  </node>
                  <node concept="liA8E" id="d3" role="2OqNvi">
                    <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                    <uo k="s:originTrace" v="n:5476670926298711517" />
                    <node concept="2ShNRf" id="d4" role="37wK5m">
                      <uo k="s:originTrace" v="n:5476670926298711517" />
                      <node concept="1pGfFk" id="d5" role="2ShVmc">
                        <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                        <uo k="s:originTrace" v="n:5476670926298711517" />
                        <node concept="Xl_RD" id="d6" role="37wK5m">
                          <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590382(jetbrains.mps.lang.test.constraints)" />
                          <uo k="s:originTrace" v="n:5476670926298711517" />
                        </node>
                        <node concept="Xl_RD" id="d7" role="37wK5m">
                          <property role="Xl_RC" value="5476670926298732701" />
                          <uo k="s:originTrace" v="n:5476670926298711517" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="cZ" role="3clFbw">
              <uo k="s:originTrace" v="n:5476670926298711517" />
              <node concept="3y3z36" id="d8" role="3uHU7w">
                <uo k="s:originTrace" v="n:5476670926298711517" />
                <node concept="10Nm6u" id="da" role="3uHU7w">
                  <uo k="s:originTrace" v="n:5476670926298711517" />
                </node>
                <node concept="37vLTw" id="db" role="3uHU7B">
                  <ref role="3cqZAo" node="cJ" resolve="checkingNodeContext" />
                  <uo k="s:originTrace" v="n:5476670926298711517" />
                </node>
              </node>
              <node concept="3fqX7Q" id="d9" role="3uHU7B">
                <uo k="s:originTrace" v="n:5476670926298711517" />
                <node concept="37vLTw" id="dc" role="3fr31v">
                  <ref role="3cqZAo" node="cS" resolve="result" />
                  <uo k="s:originTrace" v="n:5476670926298711517" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="cR" role="3cqZAp">
            <uo k="s:originTrace" v="n:5476670926298711517" />
            <node concept="37vLTw" id="dd" role="3clFbG">
              <ref role="3cqZAo" node="cS" resolve="result" />
              <uo k="s:originTrace" v="n:5476670926298711517" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="cL" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:5476670926298711517" />
        </node>
      </node>
      <node concept="2YIFZL" id="co" role="jymVt">
        <property role="TrG5h" value="staticValidateProperty" />
        <uo k="s:originTrace" v="n:5476670926298711517" />
        <node concept="37vLTG" id="de" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:5476670926298711517" />
          <node concept="3Tqbb2" id="dj" role="1tU5fm">
            <uo k="s:originTrace" v="n:5476670926298711517" />
          </node>
        </node>
        <node concept="37vLTG" id="df" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:5476670926298711517" />
          <node concept="10P_77" id="dk" role="1tU5fm">
            <uo k="s:originTrace" v="n:5476670926298711517" />
          </node>
        </node>
        <node concept="10P_77" id="dg" role="3clF45">
          <uo k="s:originTrace" v="n:5476670926298711517" />
        </node>
        <node concept="3Tm6S6" id="dh" role="1B3o_S">
          <uo k="s:originTrace" v="n:5476670926298711517" />
        </node>
        <node concept="3clFbS" id="di" role="3clF47">
          <uo k="s:originTrace" v="n:5476670926298732702" />
          <node concept="3clFbF" id="dl" role="3cqZAp">
            <uo k="s:originTrace" v="n:5476670926298734247" />
            <node concept="3clFbC" id="dm" role="3clFbG">
              <uo k="s:originTrace" v="n:5476670926298736040" />
              <node concept="3clFbT" id="dn" role="3uHU7w">
                <property role="3clFbU" value="false" />
                <uo k="s:originTrace" v="n:5476670926298736050" />
              </node>
              <node concept="37vLTw" id="do" role="3uHU7B">
                <ref role="3cqZAo" node="df" resolve="propertyValue" />
                <uo k="s:originTrace" v="n:5476670926298734246" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="cp" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BasePropertyConstraintsDescriptor" resolve="BasePropertyConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:5476670926298711517" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="dp">
    <property role="1EXbeo" value="true" />
    <property role="TrG5h" value="ProjectExpression_ConstraintRules" />
    <property role="3GE5qa" value="expression" />
    <uo k="s:originTrace" v="n:7896212496293418436" />
    <node concept="Wx3nA" id="dq" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="CONCEPT" />
      <property role="3TUv4t" value="true" />
      <uo k="s:originTrace" v="n:7896212496293418436" />
      <node concept="3Tm6S6" id="dE" role="1B3o_S">
        <uo k="s:originTrace" v="n:7896212496293418436" />
      </node>
      <node concept="35c_gC" id="dF" role="33vP2m">
        <ref role="35c_gD" to="tp5g:hPjxXux" resolve="ProjectExpression" />
        <uo k="s:originTrace" v="n:7896212496293418436" />
      </node>
      <node concept="3uibUv" id="dG" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        <uo k="s:originTrace" v="n:7896212496293418436" />
      </node>
    </node>
    <node concept="2tJIrI" id="dr" role="jymVt">
      <uo k="s:originTrace" v="n:7896212496293418436" />
    </node>
    <node concept="Wx3nA" id="ds" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="check_id7896212496293420315" />
      <uo k="s:originTrace" v="n:7896212496293418436" />
      <node concept="3uibUv" id="dH" role="1tU5fm">
        <ref role="3uigEE" to="o99v:~Rule" resolve="Rule" />
        <uo k="s:originTrace" v="n:7896212496293418436" />
        <node concept="3uibUv" id="dK" role="11_B2D">
          <ref role="3uigEE" to="pdwk:~ContainmentContext" resolve="ContainmentContext" />
          <uo k="s:originTrace" v="n:7896212496293418436" />
        </node>
      </node>
      <node concept="3Tm1VV" id="dI" role="1B3o_S">
        <uo k="s:originTrace" v="n:7896212496293418436" />
      </node>
      <node concept="2ShNRf" id="dJ" role="33vP2m">
        <uo k="s:originTrace" v="n:7896212496293418436" />
        <node concept="1pGfFk" id="dL" role="2ShVmc">
          <ref role="37wK5l" node="eZ" resolve="ProjectExpression_ConstraintRules.Rule_unnamed_5silxy_b0" />
          <uo k="s:originTrace" v="n:7896212496293418436" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="dt" role="jymVt">
      <uo k="s:originTrace" v="n:7896212496293418436" />
    </node>
    <node concept="Wx3nA" id="du" role="jymVt">
      <property role="TrG5h" value="RULES" />
      <property role="3TUv4t" value="true" />
      <uo k="s:originTrace" v="n:7896212496293418436" />
      <node concept="3uibUv" id="dM" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <uo k="s:originTrace" v="n:7896212496293418436" />
        <node concept="3uibUv" id="dP" role="11_B2D">
          <ref role="3uigEE" to="o99v:~Rule" resolve="Rule" />
          <uo k="s:originTrace" v="n:7896212496293418436" />
          <node concept="3qTvmN" id="dQ" role="11_B2D">
            <uo k="s:originTrace" v="n:7896212496293418436" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="dN" role="1B3o_S">
        <uo k="s:originTrace" v="n:7896212496293418436" />
      </node>
      <node concept="2YIFZM" id="dO" role="33vP2m">
        <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
        <ref role="37wK5l" to="33ny:~Collections.unmodifiableList(java.util.List)" resolve="unmodifiableList" />
        <uo k="s:originTrace" v="n:7896212496293418436" />
        <node concept="2YIFZM" id="dR" role="37wK5m">
          <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
          <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
          <uo k="s:originTrace" v="n:7896212496293418436" />
          <node concept="3uibUv" id="dS" role="3PaCim">
            <ref role="3uigEE" to="o99v:~Rule" resolve="Rule" />
            <uo k="s:originTrace" v="n:7896212496293418436" />
            <node concept="3qTvmN" id="dU" role="11_B2D">
              <uo k="s:originTrace" v="n:7896212496293418436" />
            </node>
          </node>
          <node concept="37vLTw" id="dT" role="37wK5m">
            <ref role="3cqZAo" node="ds" resolve="check_id7896212496293420315" />
            <uo k="s:originTrace" v="n:7896212496293418436" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="dv" role="jymVt">
      <uo k="s:originTrace" v="n:7896212496293418436" />
    </node>
    <node concept="3clFb_" id="dw" role="jymVt">
      <property role="TrG5h" value="getDeclaredRules" />
      <uo k="s:originTrace" v="n:7896212496293418436" />
      <node concept="3Tm1VV" id="dV" role="1B3o_S">
        <uo k="s:originTrace" v="n:7896212496293418436" />
      </node>
      <node concept="2AHcQZ" id="dW" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        <uo k="s:originTrace" v="n:7896212496293418436" />
      </node>
      <node concept="3uibUv" id="dX" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <uo k="s:originTrace" v="n:7896212496293418436" />
        <node concept="3uibUv" id="e0" role="11_B2D">
          <ref role="3uigEE" to="o99v:~Rule" resolve="Rule" />
          <uo k="s:originTrace" v="n:7896212496293418436" />
          <node concept="3qTvmN" id="e1" role="11_B2D">
            <uo k="s:originTrace" v="n:7896212496293418436" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="dY" role="3clF47">
        <uo k="s:originTrace" v="n:7896212496293418436" />
        <node concept="3cpWs6" id="e2" role="3cqZAp">
          <uo k="s:originTrace" v="n:7896212496293418436" />
          <node concept="37vLTw" id="e3" role="3cqZAk">
            <ref role="3cqZAo" node="du" resolve="RULES" />
            <uo k="s:originTrace" v="n:7896212496293418436" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="dZ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:7896212496293418436" />
      </node>
    </node>
    <node concept="2tJIrI" id="dx" role="jymVt">
      <uo k="s:originTrace" v="n:7896212496293418436" />
    </node>
    <node concept="312cEu" id="dy" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="Def_TestableAncestor7896212496293587255" />
      <uo k="s:originTrace" v="n:7896212496293587255" />
      <node concept="2YIFZL" id="e4" role="jymVt">
        <property role="TrG5h" value="getValue" />
        <node concept="3clFbS" id="e8" role="3clF47">
          <node concept="3clFbJ" id="ee" role="3cqZAp">
            <node concept="3clFbS" id="eg" role="3clFbx">
              <node concept="3cpWs6" id="ei" role="3cqZAp">
                <node concept="10Nm6u" id="ej" role="3cqZAk" />
              </node>
            </node>
            <node concept="3fqX7Q" id="eh" role="3clFbw">
              <node concept="1rXfSq" id="ek" role="3fr31v">
                <ref role="37wK5l" node="e6" resolve="isDefined" />
                <node concept="37vLTw" id="el" role="37wK5m">
                  <ref role="3cqZAo" node="e9" resolve="context" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="ef" role="3cqZAp">
            <node concept="10QFUN" id="em" role="3cqZAk">
              <node concept="2OqwBi" id="en" role="10QFUP">
                <uo k="s:originTrace" v="n:7896212496293421165" />
                <node concept="2OqwBi" id="ep" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:1076865108597824873" />
                  <node concept="37vLTw" id="er" role="2Oq$k0">
                    <ref role="3cqZAo" node="e9" resolve="context" />
                  </node>
                  <node concept="liA8E" id="es" role="2OqNvi">
                    <ref role="37wK5l" to="pdwk:~ContainmentContext.getParentNode()" resolve="getParentNode" />
                  </node>
                </node>
                <node concept="2Xjw5R" id="eq" role="2OqNvi">
                  <uo k="s:originTrace" v="n:7896212496293421976" />
                  <node concept="1xIGOp" id="et" role="1xVPHs">
                    <uo k="s:originTrace" v="n:1076865108597824899" />
                  </node>
                  <node concept="1xMEDy" id="eu" role="1xVPHs">
                    <uo k="s:originTrace" v="n:7896212496293421978" />
                    <node concept="chp4Y" id="ev" role="ri$Ld">
                      <ref role="cht4Q" to="tpe3:hG8C14p" resolve="ITestable" />
                      <uo k="s:originTrace" v="n:7896212496293586236" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3Tqbb2" id="eo" role="10QFUM">
                <ref role="ehGHo" to="tpe3:hG8C14p" resolve="ITestable" />
                <uo k="s:originTrace" v="n:7896212496293587823" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="e9" role="3clF46">
          <property role="TrG5h" value="context" />
          <node concept="3uibUv" id="ew" role="1tU5fm">
            <ref role="3uigEE" to="pdwk:~ContainmentContext" resolve="ContainmentContext" />
          </node>
          <node concept="2AHcQZ" id="ex" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3Tqbb2" id="ea" role="3clF45">
          <ref role="ehGHo" to="tpe3:hG8C14p" resolve="ITestable" />
          <uo k="s:originTrace" v="n:7896212496293587823" />
        </node>
        <node concept="3Tm1VV" id="eb" role="1B3o_S" />
        <node concept="2AHcQZ" id="ec" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="P$JXv" id="ed" role="lGtFl">
          <node concept="1PaTwC" id="ey" role="1Vez_I">
            <node concept="3oM_SD" id="e$" role="1PaTwD">
              <property role="3oM_SC" value="null" />
            </node>
            <node concept="3oM_SD" id="e_" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="eA" role="1PaTwD">
              <property role="3oM_SC" value="an" />
            </node>
            <node concept="3oM_SD" id="eB" role="1PaTwD">
              <property role="3oM_SC" value="allowed" />
            </node>
            <node concept="3oM_SD" id="eC" role="1PaTwD">
              <property role="3oM_SC" value="value" />
            </node>
          </node>
          <node concept="1PaTwC" id="ez" role="1Vez_I">
            <node concept="3oM_SD" id="eD" role="1PaTwD">
              <property role="3oM_SC" value="though" />
            </node>
            <node concept="3oM_SD" id="eE" role="1PaTwD">
              <property role="3oM_SC" value="null" />
            </node>
            <node concept="3oM_SD" id="eF" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="eG" role="1PaTwD">
              <property role="3oM_SC" value="also" />
            </node>
            <node concept="3oM_SD" id="eH" role="1PaTwD">
              <property role="3oM_SC" value="returned" />
            </node>
            <node concept="3oM_SD" id="eI" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="eJ" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="eK" role="1PaTwD">
              <property role="3oM_SC" value="def" />
            </node>
            <node concept="3oM_SD" id="eL" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="eM" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="eN" role="1PaTwD">
              <property role="3oM_SC" value="defined" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="e5" role="jymVt" />
      <node concept="2YIFZL" id="e6" role="jymVt">
        <property role="TrG5h" value="isDefined" />
        <node concept="3clFbS" id="eO" role="3clF47">
          <node concept="3cpWs6" id="eS" role="3cqZAp">
            <node concept="3clFbT" id="eT" role="3cqZAk">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="eP" role="3clF46">
          <property role="TrG5h" value="context" />
          <node concept="3uibUv" id="eU" role="1tU5fm">
            <ref role="3uigEE" to="pdwk:~ContainmentContext" resolve="ContainmentContext" />
          </node>
          <node concept="2AHcQZ" id="eV" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="10P_77" id="eQ" role="3clF45" />
        <node concept="3Tm1VV" id="eR" role="1B3o_S" />
      </node>
      <node concept="3Tm1VV" id="e7" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="dz" role="jymVt" />
    <node concept="312cEu" id="d$" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="Rule_unnamed_5silxy_b0" />
      <uo k="s:originTrace" v="n:7896212496293420315" />
      <node concept="Wx3nA" id="eW" role="jymVt">
        <property role="TrG5h" value="SOURCE_NODE_REF" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="f7" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
        <node concept="3Tm6S6" id="f8" role="1B3o_S" />
        <node concept="2OqwBi" id="f9" role="33vP2m">
          <node concept="2YIFZM" id="fa" role="2Oq$k0">
            <ref role="1Pybhc" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
            <ref role="37wK5l" to="dush:~PersistenceFacade.getInstance()" resolve="getInstance" />
          </node>
          <node concept="liA8E" id="fb" role="2OqNvi">
            <ref role="37wK5l" to="dush:~PersistenceFacade.createNodeReference(java.lang.String)" resolve="createNodeReference" />
            <node concept="Xl_RD" id="fc" role="37wK5m">
              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590382(jetbrains.mps.lang.test.constraints)/7896212496293420315" />
            </node>
          </node>
        </node>
      </node>
      <node concept="Wx3nA" id="eX" role="jymVt">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="ID_unnamed_5silxy_b0" />
        <node concept="3uibUv" id="fd" role="1tU5fm">
          <ref role="3uigEE" to="o99v:~RuleId" resolve="RuleId" />
        </node>
        <node concept="3Tm1VV" id="fe" role="1B3o_S" />
        <node concept="2ShNRf" id="ff" role="33vP2m">
          <node concept="1pGfFk" id="fg" role="2ShVmc">
            <ref role="37wK5l" to="o99v:~RuleId.&lt;init&gt;(long,java.lang.Object)" resolve="RuleId" />
            <node concept="1adDum" id="fh" role="37wK5m">
              <property role="1adDun" value="7896212496293420315L" />
            </node>
            <node concept="37vLTw" id="fi" role="37wK5m">
              <ref role="3cqZAo" node="eW" resolve="SOURCE_NODE_REF" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="eY" role="jymVt" />
      <node concept="3clFbW" id="eZ" role="jymVt">
        <node concept="3cqZAl" id="fj" role="3clF45" />
        <node concept="3Tm1VV" id="fk" role="1B3o_S" />
        <node concept="3clFbS" id="fl" role="3clF47">
          <node concept="XkiVB" id="fm" role="3cqZAp">
            <ref role="37wK5l" to="o99v:~BaseRule.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.core.aspects.constraints.rules.RuleKind,jetbrains.mps.core.aspects.constraints.rules.RuleId,org.jetbrains.mps.openapi.model.SNodeReference)" resolve="BaseRule" />
            <node concept="37vLTw" id="fn" role="37wK5m">
              <ref role="3cqZAo" node="dq" resolve="CONCEPT" />
            </node>
            <node concept="Rm8GO" id="fo" role="37wK5m">
              <ref role="1Px2BO" to="pdwk:~PredefinedRuleKinds" resolve="PredefinedRuleKinds" />
              <ref role="Rm8GQ" to="pdwk:~PredefinedRuleKinds.CAN_BE_CHILD" resolve="CAN_BE_CHILD" />
            </node>
            <node concept="37vLTw" id="fp" role="37wK5m">
              <ref role="3cqZAo" node="eX" resolve="ID_unnamed_5silxy_b0" />
            </node>
            <node concept="37vLTw" id="fq" role="37wK5m">
              <ref role="3cqZAo" node="eW" resolve="SOURCE_NODE_REF" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="f0" role="jymVt" />
      <node concept="3Tm1VV" id="f1" role="1B3o_S" />
      <node concept="3clFb_" id="f2" role="jymVt">
        <property role="TrG5h" value="check" />
        <node concept="37vLTG" id="fr" role="3clF46">
          <property role="TrG5h" value="context" />
          <node concept="2AHcQZ" id="fw" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
          <node concept="3uibUv" id="fx" role="1tU5fm">
            <ref role="3uigEE" to="pdwk:~ContainmentContext" resolve="ContainmentContext" />
          </node>
        </node>
        <node concept="3Tm1VV" id="fs" role="1B3o_S" />
        <node concept="10P_77" id="ft" role="3clF45" />
        <node concept="3clFbS" id="fu" role="3clF47">
          <node concept="3cpWs6" id="fy" role="3cqZAp">
            <node concept="1Wc70l" id="fz" role="3cqZAk">
              <uo k="s:originTrace" v="n:7896212496293683524" />
              <node concept="3fqX7Q" id="f$" role="3uHU7w">
                <uo k="s:originTrace" v="n:7896212496293683981" />
                <node concept="2OqwBi" id="fA" role="3fr31v">
                  <uo k="s:originTrace" v="n:7896212496293685496" />
                  <node concept="2YIFZM" id="fB" role="2Oq$k0">
                    <ref role="37wK5l" node="e4" resolve="getValue" />
                    <ref role="1Pybhc" node="dy" resolve="ProjectExpression_ConstraintRules.Def_TestableAncestor7896212496293587255" />
                    <uo k="s:originTrace" v="n:7896212496293684099" />
                    <node concept="37vLTw" id="fD" role="37wK5m">
                      <ref role="3cqZAo" node="fr" resolve="context" />
                    </node>
                  </node>
                  <node concept="1mIQ4w" id="fC" role="2OqNvi">
                    <uo k="s:originTrace" v="n:7896212496293686017" />
                    <node concept="chp4Y" id="fE" role="cj9EA">
                      <ref role="cht4Q" to="tpe3:h3s_e$z" resolve="BTestCase" />
                      <uo k="s:originTrace" v="n:7896212496293686151" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="f_" role="3uHU7B">
                <uo k="s:originTrace" v="n:7896212496293591601" />
                <node concept="2OqwBi" id="fF" role="3uHU7B">
                  <uo k="s:originTrace" v="n:7896212496293423152" />
                  <node concept="3x8VRR" id="fH" role="2OqNvi">
                    <uo k="s:originTrace" v="n:7896212496293424119" />
                  </node>
                  <node concept="2YIFZM" id="fI" role="2Oq$k0">
                    <ref role="37wK5l" node="e4" resolve="getValue" />
                    <ref role="1Pybhc" node="dy" resolve="ProjectExpression_ConstraintRules.Def_TestableAncestor7896212496293587255" />
                    <uo k="s:originTrace" v="n:7896212496293590108" />
                    <node concept="37vLTw" id="fJ" role="37wK5m">
                      <ref role="3cqZAo" node="fr" resolve="context" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="fG" role="3uHU7w">
                  <uo k="s:originTrace" v="n:7896212496293593998" />
                  <node concept="2YIFZM" id="fK" role="2Oq$k0">
                    <ref role="37wK5l" node="e4" resolve="getValue" />
                    <ref role="1Pybhc" node="dy" resolve="ProjectExpression_ConstraintRules.Def_TestableAncestor7896212496293587255" />
                    <uo k="s:originTrace" v="n:7896212496293591832" />
                    <node concept="37vLTw" id="fM" role="37wK5m">
                      <ref role="3cqZAo" node="fr" resolve="context" />
                    </node>
                  </node>
                  <node concept="3zqWPK" id="fL" role="2OqNvi">
                    <ref role="37wK5l" to="tpe5:2RMg39tmiFh" resolve="isMpsStartRequired" />
                    <uo k="s:originTrace" v="n:8085146484218845546" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="fv" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="f3" role="jymVt" />
      <node concept="3clFb_" id="f4" role="jymVt">
        <property role="TrG5h" value="appliesTo" />
        <node concept="37vLTG" id="fN" role="3clF46">
          <property role="TrG5h" value="context" />
          <node concept="2AHcQZ" id="fS" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
          <node concept="3uibUv" id="fT" role="1tU5fm">
            <ref role="3uigEE" to="pdwk:~ContainmentContext" resolve="ContainmentContext" />
          </node>
        </node>
        <node concept="3Tm1VV" id="fO" role="1B3o_S" />
        <node concept="10P_77" id="fP" role="3clF45" />
        <node concept="3clFbS" id="fQ" role="3clF47">
          <node concept="3cpWs6" id="fU" role="3cqZAp">
            <node concept="3clFbT" id="fV" role="3cqZAk">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="fR" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="f5" role="jymVt" />
      <node concept="3uibUv" id="f6" role="1zkMxy">
        <ref role="3uigEE" to="o99v:~BaseRule" resolve="BaseRule" />
        <node concept="3uibUv" id="fW" role="11_B2D">
          <ref role="3uigEE" to="pdwk:~ContainmentContext" resolve="ContainmentContext" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="d_" role="jymVt" />
    <node concept="3clFbW" id="dA" role="jymVt">
      <property role="TrG5h" value="BaseConstraintsDescriptor2" />
      <uo k="s:originTrace" v="n:7896212496293418436" />
      <node concept="3cqZAl" id="fX" role="3clF45">
        <uo k="s:originTrace" v="n:7896212496293418436" />
      </node>
      <node concept="3clFbS" id="fY" role="3clF47">
        <uo k="s:originTrace" v="n:7896212496293418436" />
        <node concept="XkiVB" id="fZ" role="3cqZAp">
          <ref role="37wK5l" to="o99v:~BaseRulesConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseRulesConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:7896212496293418436" />
          <node concept="37vLTw" id="g0" role="37wK5m">
            <ref role="3cqZAo" node="dq" resolve="CONCEPT" />
            <uo k="s:originTrace" v="n:7896212496293418436" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="dB" role="1B3o_S">
      <uo k="s:originTrace" v="n:7896212496293418436" />
    </node>
    <node concept="3uibUv" id="dC" role="1zkMxy">
      <ref role="3uigEE" to="o99v:~BaseRulesConstraintsDescriptor" resolve="BaseRulesConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:7896212496293418436" />
    </node>
    <node concept="15s5l7" id="dD" role="lGtFl">
      <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: The classifier 'Generated_ConstraintsDescriptor2' must be declared abstract or implement abstract method 'getDeclaredRules' in 'RulesConstraintsDescriptor'&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/7861981782410371482]&quot;;" />
      <property role="huDt6" value="Error: The classifier 'Generated_ConstraintsDescriptor2' must be declared abstract or implement abstract method 'getDeclaredRules' in 'RulesConstraintsDescriptor'" />
      <uo k="s:originTrace" v="n:7896212496293418436" />
    </node>
  </node>
  <node concept="312cEu" id="g1">
    <property role="3GE5qa" value="expression" />
    <property role="1EXbeo" value="true" />
    <property role="TrG5h" value="ProjectExpression_ConstraintsFeedback" />
    <uo k="s:originTrace" v="n:7896212496293418436" />
    <node concept="Wx3nA" id="g2" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="CONCEPT" />
      <property role="3TUv4t" value="true" />
      <uo k="s:originTrace" v="n:7896212496293418436" />
      <node concept="3Tm6S6" id="gd" role="1B3o_S">
        <uo k="s:originTrace" v="n:7896212496293418436" />
      </node>
      <node concept="35c_gC" id="ge" role="33vP2m">
        <ref role="35c_gD" to="tp5g:hPjxXux" resolve="ProjectExpression" />
        <uo k="s:originTrace" v="n:7896212496293418436" />
      </node>
      <node concept="3uibUv" id="gf" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        <uo k="s:originTrace" v="n:7896212496293418436" />
      </node>
    </node>
    <node concept="2tJIrI" id="g3" role="jymVt">
      <uo k="s:originTrace" v="n:7896212496293418436" />
    </node>
    <node concept="Wx3nA" id="g4" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="MSGPROVIDER_WhenConstraintRuleFails_l5xegm_a" />
      <uo k="s:originTrace" v="n:7896212496293418436" />
      <node concept="3Tm6S6" id="gg" role="1B3o_S" />
      <node concept="2ShNRf" id="gh" role="33vP2m">
        <node concept="YeOm9" id="gj" role="2ShVmc">
          <node concept="1Y3b0j" id="gk" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" to="j809:~BaseMessageProvider" resolve="BaseMessageProvider" />
            <ref role="37wK5l" to="j809:~BaseMessageProvider.&lt;init&gt;(jetbrains.mps.core.aspects.feedback.problem.ProblemId)" resolve="BaseMessageProvider" />
            <node concept="2ShNRf" id="gl" role="37wK5m">
              <uo k="s:originTrace" v="n:7896212496293418436" />
              <node concept="1pGfFk" id="gp" role="2ShVmc">
                <ref role="37wK5l" to="j80a:~FailingRuleProblemId.&lt;init&gt;(jetbrains.mps.core.aspects.constraints.rules.RuleId)" resolve="FailingRuleProblemId" />
                <uo k="s:originTrace" v="n:7896212496293418436" />
                <node concept="10M0yZ" id="gq" role="37wK5m">
                  <ref role="3cqZAo" node="eX" resolve="ID_unnamed_5silxy_b0" />
                  <ref role="1PxDUh" node="d$" resolve="ProjectExpression_ConstraintRules.Rule_unnamed_5silxy_b0" />
                  <uo k="s:originTrace" v="n:7896212496293418436" />
                </node>
              </node>
            </node>
            <node concept="3Tm1VV" id="gm" role="1B3o_S" />
            <node concept="3clFb_" id="gn" role="jymVt">
              <property role="TrG5h" value="yieldMessage" />
              <node concept="3Tm1VV" id="gr" role="1B3o_S" />
              <node concept="2AHcQZ" id="gs" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
              </node>
              <node concept="3uibUv" id="gt" role="3clF45">
                <ref role="3uigEE" to="j809:~MessageProvider$Msg" resolve="MessageProvider.Msg" />
              </node>
              <node concept="37vLTG" id="gu" role="3clF46">
                <property role="TrG5h" value="context" />
                <node concept="3uibUv" id="gx" role="1tU5fm">
                  <ref role="3uigEE" to="pdwk:~ContainmentContext" resolve="ContainmentContext" />
                  <uo k="s:originTrace" v="n:7896212496293418436" />
                </node>
              </node>
              <node concept="3clFbS" id="gv" role="3clF47">
                <node concept="3cpWs6" id="gy" role="3cqZAp">
                  <node concept="2ShNRf" id="gz" role="3cqZAk">
                    <node concept="1pGfFk" id="g$" role="2ShVmc">
                      <ref role="37wK5l" to="j809:~MessageProvider$StringMsg.&lt;init&gt;(java.lang.String)" resolve="MessageProvider.StringMsg" />
                      <node concept="Xl_RD" id="g_" role="37wK5m">
                        <property role="Xl_RC" value="There is no MPS 'project' in this kind of ITestable node" />
                        <uo k="s:originTrace" v="n:7896212496293594956" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="gw" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3uibUv" id="go" role="2Ghqu4">
              <ref role="3uigEE" to="pdwk:~ContainmentContext" resolve="ContainmentContext" />
              <uo k="s:originTrace" v="n:7896212496293418436" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="gi" role="1tU5fm">
        <ref role="3uigEE" to="9jwd:~FeedbackProvider" resolve="FeedbackProvider" />
        <node concept="3uibUv" id="gA" role="11_B2D">
          <ref role="3uigEE" to="pdwk:~ContainmentContext" resolve="ContainmentContext" />
          <uo k="s:originTrace" v="n:7896212496293418436" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="g5" role="jymVt">
      <uo k="s:originTrace" v="n:7896212496293418436" />
    </node>
    <node concept="3Tm1VV" id="g6" role="1B3o_S">
      <uo k="s:originTrace" v="n:7896212496293418436" />
    </node>
    <node concept="Wx3nA" id="g7" role="jymVt">
      <property role="TrG5h" value="PROVIDERS" />
      <property role="3TUv4t" value="true" />
      <uo k="s:originTrace" v="n:7896212496293418436" />
      <node concept="3uibUv" id="gB" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <uo k="s:originTrace" v="n:7896212496293418436" />
        <node concept="3uibUv" id="gE" role="11_B2D">
          <ref role="3uigEE" to="9jwd:~FeedbackProvider" resolve="FeedbackProvider" />
          <uo k="s:originTrace" v="n:7896212496293418436" />
        </node>
      </node>
      <node concept="3Tm6S6" id="gC" role="1B3o_S">
        <uo k="s:originTrace" v="n:7896212496293418436" />
      </node>
      <node concept="2YIFZM" id="gD" role="33vP2m">
        <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
        <ref role="37wK5l" to="33ny:~Collections.unmodifiableList(java.util.List)" resolve="unmodifiableList" />
        <uo k="s:originTrace" v="n:7896212496293418436" />
        <node concept="2YIFZM" id="gF" role="37wK5m">
          <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
          <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
          <uo k="s:originTrace" v="n:7896212496293418436" />
          <node concept="3uibUv" id="gG" role="3PaCim">
            <ref role="3uigEE" to="9jwd:~FeedbackProvider" resolve="FeedbackProvider" />
            <uo k="s:originTrace" v="n:7896212496293418436" />
          </node>
          <node concept="37vLTw" id="gH" role="37wK5m">
            <ref role="3cqZAo" node="g4" resolve="MSGPROVIDER_WhenConstraintRuleFails_l5xegm_a" />
            <uo k="s:originTrace" v="n:7896212496293418436" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="g8" role="jymVt">
      <uo k="s:originTrace" v="n:7896212496293418436" />
    </node>
    <node concept="3clFbW" id="g9" role="jymVt">
      <property role="TrG5h" value="BaseMessageDescriptor" />
      <uo k="s:originTrace" v="n:7896212496293418436" />
      <node concept="3cqZAl" id="gI" role="3clF45">
        <uo k="s:originTrace" v="n:7896212496293418436" />
      </node>
      <node concept="3Tm1VV" id="gJ" role="1B3o_S">
        <uo k="s:originTrace" v="n:7896212496293418436" />
      </node>
      <node concept="3clFbS" id="gK" role="3clF47">
        <uo k="s:originTrace" v="n:7896212496293418436" />
        <node concept="XkiVB" id="gL" role="3cqZAp">
          <ref role="37wK5l" to="9jwd:~BaseFeedbackDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseFeedbackDescriptor" />
          <uo k="s:originTrace" v="n:7896212496293418436" />
          <node concept="37vLTw" id="gM" role="37wK5m">
            <ref role="3cqZAo" node="g2" resolve="CONCEPT" />
            <uo k="s:originTrace" v="n:7896212496293418436" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="ga" role="jymVt">
      <uo k="s:originTrace" v="n:7896212496293418436" />
    </node>
    <node concept="3clFb_" id="gb" role="jymVt">
      <property role="TrG5h" value="getDeclaredProviders" />
      <uo k="s:originTrace" v="n:7896212496293418436" />
      <node concept="3uibUv" id="gN" role="3clF45">
        <ref role="3uigEE" to="1ctc:~Stream" resolve="Stream" />
        <uo k="s:originTrace" v="n:7896212496293418436" />
        <node concept="3uibUv" id="gS" role="11_B2D">
          <ref role="3uigEE" to="9jwd:~FeedbackProvider" resolve="FeedbackProvider" />
          <uo k="s:originTrace" v="n:7896212496293418436" />
        </node>
      </node>
      <node concept="3Tm1VV" id="gO" role="1B3o_S">
        <uo k="s:originTrace" v="n:7896212496293418436" />
      </node>
      <node concept="3clFbS" id="gP" role="3clF47">
        <uo k="s:originTrace" v="n:7896212496293418436" />
        <node concept="3cpWs6" id="gT" role="3cqZAp">
          <uo k="s:originTrace" v="n:7896212496293418436" />
          <node concept="2OqwBi" id="gU" role="3cqZAk">
            <uo k="s:originTrace" v="n:7896212496293418436" />
            <node concept="37vLTw" id="gV" role="2Oq$k0">
              <ref role="3cqZAo" node="g7" resolve="PROVIDERS" />
              <uo k="s:originTrace" v="n:7896212496293418436" />
            </node>
            <node concept="liA8E" id="gW" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
              <uo k="s:originTrace" v="n:7896212496293418436" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="gQ" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        <uo k="s:originTrace" v="n:7896212496293418436" />
      </node>
      <node concept="2AHcQZ" id="gR" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:7896212496293418436" />
      </node>
    </node>
    <node concept="3uibUv" id="gc" role="1zkMxy">
      <ref role="3uigEE" to="9jwd:~BaseFeedbackDescriptor" resolve="BaseFeedbackDescriptor" />
      <uo k="s:originTrace" v="n:7896212496293418436" />
    </node>
  </node>
  <node concept="312cEu" id="gX">
    <property role="3GE5qa" value="scopes" />
    <property role="TrG5h" value="ScopesExpectedNode_Constraints" />
    <uo k="s:originTrace" v="n:3798371591902558756" />
    <node concept="3Tm1VV" id="gY" role="1B3o_S">
      <uo k="s:originTrace" v="n:3798371591902558756" />
    </node>
    <node concept="3uibUv" id="gZ" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:3798371591902558756" />
    </node>
    <node concept="3clFbW" id="h0" role="jymVt">
      <uo k="s:originTrace" v="n:3798371591902558756" />
      <node concept="37vLTG" id="h3" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:3798371591902558756" />
        <node concept="3uibUv" id="h6" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:3798371591902558756" />
        </node>
      </node>
      <node concept="3cqZAl" id="h4" role="3clF45">
        <uo k="s:originTrace" v="n:3798371591902558756" />
      </node>
      <node concept="3clFbS" id="h5" role="3clF47">
        <uo k="s:originTrace" v="n:3798371591902558756" />
        <node concept="XkiVB" id="h7" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:3798371591902558756" />
          <node concept="1BaE9c" id="h9" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="ScopesExpectedNode$ol" />
            <uo k="s:originTrace" v="n:3798371591902558756" />
            <node concept="2YIFZM" id="hb" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:3798371591902558756" />
              <node concept="11gdke" id="hc" role="37wK5m">
                <property role="11gdj1" value="8585453e6bfb4d80L" />
                <uo k="s:originTrace" v="n:3798371591902558756" />
              </node>
              <node concept="11gdke" id="hd" role="37wK5m">
                <property role="11gdj1" value="98deb16074f1d86cL" />
                <uo k="s:originTrace" v="n:3798371591902558756" />
              </node>
              <node concept="11gdke" id="he" role="37wK5m">
                <property role="11gdj1" value="32ba5b0ec25fe9f3L" />
                <uo k="s:originTrace" v="n:3798371591902558756" />
              </node>
              <node concept="Xl_RD" id="hf" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.test.structure.ScopesExpectedNode" />
                <uo k="s:originTrace" v="n:3798371591902558756" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="ha" role="37wK5m">
            <ref role="3cqZAo" node="h3" resolve="initContext" />
            <uo k="s:originTrace" v="n:3798371591902558756" />
          </node>
        </node>
        <node concept="3clFbF" id="h8" role="3cqZAp">
          <uo k="s:originTrace" v="n:3798371591902558756" />
          <node concept="1rXfSq" id="hg" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:3798371591902558756" />
            <node concept="2ShNRf" id="hh" role="37wK5m">
              <uo k="s:originTrace" v="n:3798371591902558756" />
              <node concept="1pGfFk" id="hi" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="hk" resolve="ScopesExpectedNode_Constraints.RD1" />
                <uo k="s:originTrace" v="n:3798371591902558756" />
                <node concept="Xjq3P" id="hj" role="37wK5m">
                  <uo k="s:originTrace" v="n:3798371591902558756" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="h1" role="jymVt">
      <uo k="s:originTrace" v="n:3798371591902558756" />
    </node>
    <node concept="312cEu" id="h2" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:3798371591902558756" />
      <node concept="3clFbW" id="hk" role="jymVt">
        <uo k="s:originTrace" v="n:3798371591902558756" />
        <node concept="37vLTG" id="hn" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:3798371591902558756" />
          <node concept="3uibUv" id="hq" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:3798371591902558756" />
          </node>
        </node>
        <node concept="3cqZAl" id="ho" role="3clF45">
          <uo k="s:originTrace" v="n:3798371591902558756" />
        </node>
        <node concept="3clFbS" id="hp" role="3clF47">
          <uo k="s:originTrace" v="n:3798371591902558756" />
          <node concept="XkiVB" id="hr" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:3798371591902558756" />
            <node concept="1BaE9c" id="hs" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="ref$RHE6" />
              <uo k="s:originTrace" v="n:3798371591902558756" />
              <node concept="2YIFZM" id="hw" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:3798371591902558756" />
                <node concept="11gdke" id="hx" role="37wK5m">
                  <property role="11gdj1" value="8585453e6bfb4d80L" />
                  <uo k="s:originTrace" v="n:3798371591902558756" />
                </node>
                <node concept="11gdke" id="hy" role="37wK5m">
                  <property role="11gdj1" value="98deb16074f1d86cL" />
                  <uo k="s:originTrace" v="n:3798371591902558756" />
                </node>
                <node concept="11gdke" id="hz" role="37wK5m">
                  <property role="11gdj1" value="32ba5b0ec25fe9f3L" />
                  <uo k="s:originTrace" v="n:3798371591902558756" />
                </node>
                <node concept="11gdke" id="h$" role="37wK5m">
                  <property role="11gdj1" value="383e5e55de89bc1fL" />
                  <uo k="s:originTrace" v="n:3798371591902558756" />
                </node>
                <node concept="Xl_RD" id="h_" role="37wK5m">
                  <property role="Xl_RC" value="ref" />
                  <uo k="s:originTrace" v="n:3798371591902558756" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="ht" role="37wK5m">
              <ref role="3cqZAo" node="hn" resolve="container" />
              <uo k="s:originTrace" v="n:3798371591902558756" />
            </node>
            <node concept="3clFbT" id="hu" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:3798371591902558756" />
            </node>
            <node concept="3clFbT" id="hv" role="37wK5m">
              <uo k="s:originTrace" v="n:3798371591902558756" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="hl" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:3798371591902558756" />
        <node concept="3Tm1VV" id="hA" role="1B3o_S">
          <uo k="s:originTrace" v="n:3798371591902558756" />
        </node>
        <node concept="3uibUv" id="hB" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:3798371591902558756" />
        </node>
        <node concept="2AHcQZ" id="hC" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:3798371591902558756" />
        </node>
        <node concept="3clFbS" id="hD" role="3clF47">
          <uo k="s:originTrace" v="n:3798371591902558756" />
          <node concept="3cpWs6" id="hF" role="3cqZAp">
            <uo k="s:originTrace" v="n:3798371591902558756" />
            <node concept="2ShNRf" id="hG" role="3cqZAk">
              <uo k="s:originTrace" v="n:6836281137582846233" />
              <node concept="YeOm9" id="hH" role="2ShVmc">
                <uo k="s:originTrace" v="n:6836281137582846233" />
                <node concept="1Y3b0j" id="hI" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:6836281137582846233" />
                  <node concept="3Tm1VV" id="hJ" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6836281137582846233" />
                  </node>
                  <node concept="3clFb_" id="hK" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:6836281137582846233" />
                    <node concept="3Tm1VV" id="hM" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582846233" />
                    </node>
                    <node concept="3uibUv" id="hN" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:6836281137582846233" />
                    </node>
                    <node concept="3clFbS" id="hO" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582846233" />
                      <node concept="3cpWs6" id="hQ" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582846233" />
                        <node concept="2ShNRf" id="hR" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582846233" />
                          <node concept="1pGfFk" id="hS" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:6836281137582846233" />
                            <node concept="Xl_RD" id="hT" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590382(jetbrains.mps.lang.test.constraints)" />
                              <uo k="s:originTrace" v="n:6836281137582846233" />
                            </node>
                            <node concept="Xl_RD" id="hU" role="37wK5m">
                              <property role="Xl_RC" value="6836281137582846233" />
                              <uo k="s:originTrace" v="n:6836281137582846233" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="hP" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582846233" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="hL" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:6836281137582846233" />
                    <node concept="3Tm1VV" id="hV" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582846233" />
                    </node>
                    <node concept="3uibUv" id="hW" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:6836281137582846233" />
                    </node>
                    <node concept="37vLTG" id="hX" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:6836281137582846233" />
                      <node concept="3uibUv" id="i0" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:6836281137582846233" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="hY" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582846233" />
                      <node concept="3cpWs8" id="i1" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582846322" />
                        <node concept="3cpWsn" id="i6" role="3cpWs9">
                          <property role="TrG5h" value="enclosingNode" />
                          <property role="3TUv4t" value="true" />
                          <uo k="s:originTrace" v="n:6836281137582846323" />
                          <node concept="3Tqbb2" id="i7" role="1tU5fm">
                            <uo k="s:originTrace" v="n:6836281137582846324" />
                          </node>
                          <node concept="1eOMI4" id="i8" role="33vP2m">
                            <uo k="s:originTrace" v="n:6836281137582846312" />
                            <node concept="3K4zz7" id="i9" role="1eOMHV">
                              <uo k="s:originTrace" v="n:6836281137582846313" />
                              <node concept="1DoJHT" id="ia" role="3K4E3e">
                                <property role="1Dpdpm" value="getContextNode" />
                                <uo k="s:originTrace" v="n:6836281137582846314" />
                                <node concept="3uibUv" id="id" role="1Ez5kq">
                                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                </node>
                                <node concept="37vLTw" id="ie" role="1EMhIo">
                                  <ref role="3cqZAo" node="hX" resolve="_context" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="ib" role="3K4Cdx">
                                <uo k="s:originTrace" v="n:6836281137582846315" />
                                <node concept="1DoJHT" id="if" role="2Oq$k0">
                                  <property role="1Dpdpm" value="getReferenceNode" />
                                  <uo k="s:originTrace" v="n:6836281137582846316" />
                                  <node concept="3uibUv" id="ih" role="1Ez5kq">
                                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                  </node>
                                  <node concept="37vLTw" id="ii" role="1EMhIo">
                                    <ref role="3cqZAo" node="hX" resolve="_context" />
                                  </node>
                                </node>
                                <node concept="3w_OXm" id="ig" role="2OqNvi">
                                  <uo k="s:originTrace" v="n:6836281137582846317" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="ic" role="3K4GZi">
                                <uo k="s:originTrace" v="n:6836281137582846318" />
                                <node concept="1DoJHT" id="ij" role="2Oq$k0">
                                  <property role="1Dpdpm" value="getReferenceNode" />
                                  <uo k="s:originTrace" v="n:6836281137582846319" />
                                  <node concept="3uibUv" id="il" role="1Ez5kq">
                                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                  </node>
                                  <node concept="37vLTw" id="im" role="1EMhIo">
                                    <ref role="3cqZAo" node="hX" resolve="_context" />
                                  </node>
                                </node>
                                <node concept="1mfA1w" id="ik" role="2OqNvi">
                                  <uo k="s:originTrace" v="n:6836281137582846320" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="i2" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582846235" />
                        <node concept="3clFbS" id="in" role="3clFbx">
                          <uo k="s:originTrace" v="n:6836281137582846236" />
                          <node concept="3cpWs6" id="ip" role="3cqZAp">
                            <uo k="s:originTrace" v="n:6836281137582846237" />
                            <node concept="10Nm6u" id="iq" role="3cqZAk">
                              <uo k="s:originTrace" v="n:6836281137582846238" />
                            </node>
                          </node>
                        </node>
                        <node concept="3fqX7Q" id="io" role="3clFbw">
                          <uo k="s:originTrace" v="n:6836281137582846239" />
                          <node concept="2OqwBi" id="ir" role="3fr31v">
                            <uo k="s:originTrace" v="n:6836281137582846240" />
                            <node concept="37vLTw" id="is" role="2Oq$k0">
                              <ref role="3cqZAo" node="i6" resolve="enclosingNode" />
                              <uo k="s:originTrace" v="n:6836281137582846325" />
                            </node>
                            <node concept="1mIQ4w" id="it" role="2OqNvi">
                              <uo k="s:originTrace" v="n:6836281137582846242" />
                              <node concept="chp4Y" id="iu" role="cj9EA">
                                <ref role="cht4Q" to="tp5g:so7passww9" resolve="ScopesTest" />
                                <uo k="s:originTrace" v="n:6836281137582846243" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="i3" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582846244" />
                        <node concept="3cpWsn" id="iv" role="3cpWs9">
                          <property role="TrG5h" value="scopesTest" />
                          <uo k="s:originTrace" v="n:6836281137582846245" />
                          <node concept="3Tqbb2" id="iw" role="1tU5fm">
                            <ref role="ehGHo" to="tp5g:so7passww9" resolve="ScopesTest" />
                            <uo k="s:originTrace" v="n:6836281137582846246" />
                          </node>
                          <node concept="1PxgMI" id="ix" role="33vP2m">
                            <uo k="s:originTrace" v="n:6836281137582846247" />
                            <node concept="chp4Y" id="iy" role="3oSUPX">
                              <ref role="cht4Q" to="tp5g:so7passww9" resolve="ScopesTest" />
                              <uo k="s:originTrace" v="n:6836281137582846248" />
                            </node>
                            <node concept="37vLTw" id="iz" role="1m5AlR">
                              <ref role="3cqZAo" node="i6" resolve="enclosingNode" />
                              <uo k="s:originTrace" v="n:6836281137582846326" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="i4" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582846250" />
                        <node concept="3cpWsn" id="i$" role="3cpWs9">
                          <property role="TrG5h" value="modelPlusImportedScope" />
                          <uo k="s:originTrace" v="n:6836281137582846251" />
                          <node concept="3uibUv" id="i_" role="1tU5fm">
                            <ref role="3uigEE" to="o8zo:7ipADkTfyIz" resolve="ModelPlusImportedScope" />
                            <uo k="s:originTrace" v="n:6836281137582846252" />
                          </node>
                          <node concept="2ShNRf" id="iA" role="33vP2m">
                            <uo k="s:originTrace" v="n:6836281137582846253" />
                            <node concept="1pGfFk" id="iB" role="2ShVmc">
                              <ref role="37wK5l" to="o8zo:4k9eBec$QVW" resolve="ModelPlusImportedScope" />
                              <uo k="s:originTrace" v="n:6836281137582846254" />
                              <node concept="2OqwBi" id="iC" role="37wK5m">
                                <uo k="s:originTrace" v="n:6836281137582846327" />
                                <node concept="1DoJHT" id="iF" role="2Oq$k0">
                                  <property role="1Dpdpm" value="getContextNode" />
                                  <uo k="s:originTrace" v="n:6836281137582846328" />
                                  <node concept="3uibUv" id="iH" role="1Ez5kq">
                                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                  </node>
                                  <node concept="37vLTw" id="iI" role="1EMhIo">
                                    <ref role="3cqZAo" node="hX" resolve="_context" />
                                  </node>
                                </node>
                                <node concept="I4A8Y" id="iG" role="2OqNvi">
                                  <uo k="s:originTrace" v="n:6836281137582846329" />
                                </node>
                              </node>
                              <node concept="3clFbT" id="iD" role="37wK5m">
                                <property role="3clFbU" value="false" />
                                <uo k="s:originTrace" v="n:6836281137582846256" />
                              </node>
                              <node concept="2EnYce" id="iE" role="37wK5m">
                                <uo k="s:originTrace" v="n:4091667478583475432" />
                                <node concept="2EnYce" id="iJ" role="2Oq$k0">
                                  <uo k="s:originTrace" v="n:4091667478583473652" />
                                  <node concept="2OqwBi" id="iL" role="2Oq$k0">
                                    <uo k="s:originTrace" v="n:6836281137582846258" />
                                    <node concept="37vLTw" id="iN" role="2Oq$k0">
                                      <ref role="3cqZAo" node="iv" resolve="scopesTest" />
                                      <uo k="s:originTrace" v="n:6836281137582846259" />
                                    </node>
                                    <node concept="3zqWPK" id="iO" role="2OqNvi">
                                      <ref role="37wK5l" to="tp5o:4IvydoGvimX" resolve="getCheckingReference" />
                                      <uo k="s:originTrace" v="n:8085146484218845541" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="iM" role="2OqNvi">
                                    <ref role="37wK5l" to="mhbf:~SReference.getLink()" resolve="getLink" />
                                    <uo k="s:originTrace" v="n:4091667478582896024" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="iK" role="2OqNvi">
                                  <ref role="37wK5l" to="c17a:~SAbstractLink.getTargetConcept()" resolve="getTargetConcept" />
                                  <uo k="s:originTrace" v="n:4091667478582901071" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs6" id="i5" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582846262" />
                        <node concept="37vLTw" id="iP" role="3cqZAk">
                          <ref role="3cqZAo" node="i$" resolve="modelPlusImportedScope" />
                          <uo k="s:originTrace" v="n:6836281137582846263" />
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="hZ" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582846233" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="hE" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:3798371591902558756" />
        </node>
      </node>
      <node concept="3uibUv" id="hm" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:3798371591902558756" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="iQ">
    <property role="3GE5qa" value="scopes" />
    <property role="TrG5h" value="ScopesTest_Constraints" />
    <uo k="s:originTrace" v="n:5449224527592362452" />
    <node concept="3Tm1VV" id="iR" role="1B3o_S">
      <uo k="s:originTrace" v="n:5449224527592362452" />
    </node>
    <node concept="3uibUv" id="iS" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:5449224527592362452" />
    </node>
    <node concept="3clFbW" id="iT" role="jymVt">
      <uo k="s:originTrace" v="n:5449224527592362452" />
      <node concept="37vLTG" id="iW" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:5449224527592362452" />
        <node concept="3uibUv" id="iZ" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:5449224527592362452" />
        </node>
      </node>
      <node concept="3cqZAl" id="iX" role="3clF45">
        <uo k="s:originTrace" v="n:5449224527592362452" />
      </node>
      <node concept="3clFbS" id="iY" role="3clF47">
        <uo k="s:originTrace" v="n:5449224527592362452" />
        <node concept="XkiVB" id="j0" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:5449224527592362452" />
          <node concept="1BaE9c" id="j2" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="ScopesTest$TD" />
            <uo k="s:originTrace" v="n:5449224527592362452" />
            <node concept="2YIFZM" id="j4" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:5449224527592362452" />
              <node concept="11gdke" id="j5" role="37wK5m">
                <property role="11gdj1" value="8585453e6bfb4d80L" />
                <uo k="s:originTrace" v="n:5449224527592362452" />
              </node>
              <node concept="11gdke" id="j6" role="37wK5m">
                <property role="11gdj1" value="98deb16074f1d86cL" />
                <uo k="s:originTrace" v="n:5449224527592362452" />
              </node>
              <node concept="11gdke" id="j7" role="37wK5m">
                <property role="11gdj1" value="7181d929c720809L" />
                <uo k="s:originTrace" v="n:5449224527592362452" />
              </node>
              <node concept="Xl_RD" id="j8" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.test.structure.ScopesTest" />
                <uo k="s:originTrace" v="n:5449224527592362452" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="j3" role="37wK5m">
            <ref role="3cqZAo" node="iW" resolve="initContext" />
            <uo k="s:originTrace" v="n:5449224527592362452" />
          </node>
        </node>
        <node concept="3clFbF" id="j1" role="3cqZAp">
          <uo k="s:originTrace" v="n:5449224527592362452" />
          <node concept="1rXfSq" id="j9" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:5449224527592362452" />
            <node concept="2ShNRf" id="ja" role="37wK5m">
              <uo k="s:originTrace" v="n:5449224527592362452" />
              <node concept="1pGfFk" id="jb" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="jd" resolve="ScopesTest_Constraints.RD1" />
                <uo k="s:originTrace" v="n:5449224527592362452" />
                <node concept="Xjq3P" id="jc" role="37wK5m">
                  <uo k="s:originTrace" v="n:5449224527592362452" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="iU" role="jymVt">
      <uo k="s:originTrace" v="n:5449224527592362452" />
    </node>
    <node concept="312cEu" id="iV" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:5449224527592362452" />
      <node concept="3clFbW" id="jd" role="jymVt">
        <uo k="s:originTrace" v="n:5449224527592362452" />
        <node concept="37vLTG" id="jg" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:5449224527592362452" />
          <node concept="3uibUv" id="jj" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:5449224527592362452" />
          </node>
        </node>
        <node concept="3cqZAl" id="jh" role="3clF45">
          <uo k="s:originTrace" v="n:5449224527592362452" />
        </node>
        <node concept="3clFbS" id="ji" role="3clF47">
          <uo k="s:originTrace" v="n:5449224527592362452" />
          <node concept="XkiVB" id="jk" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:5449224527592362452" />
            <node concept="1BaE9c" id="jl" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="checkingReference$LcK9" />
              <uo k="s:originTrace" v="n:5449224527592362452" />
              <node concept="2YIFZM" id="jp" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:5449224527592362452" />
                <node concept="11gdke" id="jq" role="37wK5m">
                  <property role="11gdj1" value="8585453e6bfb4d80L" />
                  <uo k="s:originTrace" v="n:5449224527592362452" />
                </node>
                <node concept="11gdke" id="jr" role="37wK5m">
                  <property role="11gdj1" value="98deb16074f1d86cL" />
                  <uo k="s:originTrace" v="n:5449224527592362452" />
                </node>
                <node concept="11gdke" id="js" role="37wK5m">
                  <property role="11gdj1" value="7181d929c720809L" />
                  <uo k="s:originTrace" v="n:5449224527592362452" />
                </node>
                <node concept="11gdke" id="jt" role="37wK5m">
                  <property role="11gdj1" value="4b9f88d62c795596L" />
                  <uo k="s:originTrace" v="n:5449224527592362452" />
                </node>
                <node concept="Xl_RD" id="ju" role="37wK5m">
                  <property role="Xl_RC" value="checkingReference" />
                  <uo k="s:originTrace" v="n:5449224527592362452" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="jm" role="37wK5m">
              <ref role="3cqZAo" node="jg" resolve="container" />
              <uo k="s:originTrace" v="n:5449224527592362452" />
            </node>
            <node concept="3clFbT" id="jn" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:5449224527592362452" />
            </node>
            <node concept="3clFbT" id="jo" role="37wK5m">
              <uo k="s:originTrace" v="n:5449224527592362452" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="je" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:5449224527592362452" />
        <node concept="3Tm1VV" id="jv" role="1B3o_S">
          <uo k="s:originTrace" v="n:5449224527592362452" />
        </node>
        <node concept="3uibUv" id="jw" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:5449224527592362452" />
        </node>
        <node concept="2AHcQZ" id="jx" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:5449224527592362452" />
        </node>
        <node concept="3clFbS" id="jy" role="3clF47">
          <uo k="s:originTrace" v="n:5449224527592362452" />
          <node concept="3cpWs6" id="j$" role="3cqZAp">
            <uo k="s:originTrace" v="n:5449224527592362452" />
            <node concept="2ShNRf" id="j_" role="3cqZAk">
              <uo k="s:originTrace" v="n:6836281137582846165" />
              <node concept="YeOm9" id="jA" role="2ShVmc">
                <uo k="s:originTrace" v="n:6836281137582846165" />
                <node concept="1Y3b0j" id="jB" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:6836281137582846165" />
                  <node concept="3Tm1VV" id="jC" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6836281137582846165" />
                  </node>
                  <node concept="3clFb_" id="jD" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:6836281137582846165" />
                    <node concept="3Tm1VV" id="jF" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582846165" />
                    </node>
                    <node concept="3uibUv" id="jG" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:6836281137582846165" />
                    </node>
                    <node concept="3clFbS" id="jH" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582846165" />
                      <node concept="3cpWs6" id="jJ" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582846165" />
                        <node concept="2ShNRf" id="jK" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582846165" />
                          <node concept="1pGfFk" id="jL" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:6836281137582846165" />
                            <node concept="Xl_RD" id="jM" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590382(jetbrains.mps.lang.test.constraints)" />
                              <uo k="s:originTrace" v="n:6836281137582846165" />
                            </node>
                            <node concept="Xl_RD" id="jN" role="37wK5m">
                              <property role="Xl_RC" value="6836281137582846165" />
                              <uo k="s:originTrace" v="n:6836281137582846165" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="jI" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582846165" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="jE" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:6836281137582846165" />
                    <node concept="3Tm1VV" id="jO" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582846165" />
                    </node>
                    <node concept="3uibUv" id="jP" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:6836281137582846165" />
                    </node>
                    <node concept="37vLTG" id="jQ" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:6836281137582846165" />
                      <node concept="3uibUv" id="jT" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:6836281137582846165" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="jR" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582846165" />
                      <node concept="3cpWs6" id="jU" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582846167" />
                        <node concept="2ShNRf" id="jW" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582846168" />
                          <node concept="YeOm9" id="jX" role="2ShVmc">
                            <uo k="s:originTrace" v="n:6836281137582846169" />
                            <node concept="1Y3b0j" id="jY" role="YeSDq">
                              <property role="2bfB8j" value="true" />
                              <ref role="37wK5l" to="o8zo:3fifI_xCtNA" resolve="Scope" />
                              <ref role="1Y3XeK" to="o8zo:3fifI_xCtN$" resolve="Scope" />
                              <uo k="s:originTrace" v="n:6836281137582846170" />
                              <node concept="3Tm1VV" id="jZ" role="1B3o_S">
                                <uo k="s:originTrace" v="n:6836281137582846171" />
                              </node>
                              <node concept="3clFb_" id="k0" role="jymVt">
                                <property role="1EzhhJ" value="false" />
                                <property role="TrG5h" value="getAvailableElements" />
                                <uo k="s:originTrace" v="n:6836281137582846172" />
                                <node concept="A3Dl8" id="k3" role="3clF45">
                                  <uo k="s:originTrace" v="n:6836281137582846173" />
                                  <node concept="3Tqbb2" id="k8" role="A3Ik2">
                                    <uo k="s:originTrace" v="n:6836281137582846174" />
                                  </node>
                                </node>
                                <node concept="3Tm1VV" id="k4" role="1B3o_S">
                                  <uo k="s:originTrace" v="n:6836281137582846175" />
                                </node>
                                <node concept="37vLTG" id="k5" role="3clF46">
                                  <property role="TrG5h" value="prefix" />
                                  <uo k="s:originTrace" v="n:6836281137582846176" />
                                  <node concept="17QB3L" id="k9" role="1tU5fm">
                                    <uo k="s:originTrace" v="n:6836281137582846177" />
                                  </node>
                                  <node concept="2AHcQZ" id="ka" role="2AJF6D">
                                    <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                                    <uo k="s:originTrace" v="n:6836281137582846178" />
                                  </node>
                                </node>
                                <node concept="3clFbS" id="k6" role="3clF47">
                                  <uo k="s:originTrace" v="n:6836281137582846179" />
                                  <node concept="3cpWs8" id="kb" role="3cqZAp">
                                    <uo k="s:originTrace" v="n:6836281137582846180" />
                                    <node concept="3cpWsn" id="ke" role="3cpWs9">
                                      <property role="TrG5h" value="nodes" />
                                      <uo k="s:originTrace" v="n:6836281137582846181" />
                                      <node concept="2I9FWS" id="kf" role="1tU5fm">
                                        <uo k="s:originTrace" v="n:6836281137582846182" />
                                      </node>
                                      <node concept="2ShNRf" id="kg" role="33vP2m">
                                        <uo k="s:originTrace" v="n:6836281137582846183" />
                                        <node concept="2T8Vx0" id="kh" role="2ShVmc">
                                          <uo k="s:originTrace" v="n:6836281137582846184" />
                                          <node concept="2I9FWS" id="ki" role="2T96Bj">
                                            <uo k="s:originTrace" v="n:6836281137582846185" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="2Gpval" id="kc" role="3cqZAp">
                                    <uo k="s:originTrace" v="n:6836281137582846186" />
                                    <node concept="2GrKxI" id="kj" role="2Gsz3X">
                                      <property role="TrG5h" value="reference" />
                                      <uo k="s:originTrace" v="n:6836281137582846187" />
                                    </node>
                                    <node concept="3clFbS" id="kk" role="2LFqv$">
                                      <uo k="s:originTrace" v="n:6836281137582846188" />
                                      <node concept="3clFbF" id="km" role="3cqZAp">
                                        <uo k="s:originTrace" v="n:6836281137582846189" />
                                        <node concept="2OqwBi" id="kn" role="3clFbG">
                                          <uo k="s:originTrace" v="n:6836281137582846190" />
                                          <node concept="37vLTw" id="ko" role="2Oq$k0">
                                            <ref role="3cqZAo" node="ke" resolve="nodes" />
                                            <uo k="s:originTrace" v="n:6836281137582846191" />
                                          </node>
                                          <node concept="TSZUe" id="kp" role="2OqNvi">
                                            <uo k="s:originTrace" v="n:6836281137582846192" />
                                            <node concept="2OqwBi" id="kq" role="25WWJ7">
                                              <uo k="s:originTrace" v="n:6836281137582846193" />
                                              <node concept="2GrUjf" id="kr" role="2Oq$k0">
                                                <ref role="2Gs0qQ" node="kj" resolve="reference" />
                                                <uo k="s:originTrace" v="n:6836281137582846194" />
                                              </node>
                                              <node concept="2ZHEkA" id="ks" role="2OqNvi">
                                                <uo k="s:originTrace" v="n:6836281137582846195" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="kl" role="2GsD0m">
                                      <uo k="s:originTrace" v="n:6836281137582846196" />
                                      <node concept="2OqwBi" id="kt" role="2Oq$k0">
                                        <uo k="s:originTrace" v="n:6836281137582846197" />
                                        <node concept="1PxgMI" id="kv" role="2Oq$k0">
                                          <uo k="s:originTrace" v="n:6836281137582846198" />
                                          <node concept="chp4Y" id="kx" role="3oSUPX">
                                            <ref role="cht4Q" to="tp5g:so7passww9" resolve="ScopesTest" />
                                            <uo k="s:originTrace" v="n:6836281137582846199" />
                                          </node>
                                          <node concept="1DoJHT" id="ky" role="1m5AlR">
                                            <property role="1Dpdpm" value="getContextNode" />
                                            <uo k="s:originTrace" v="n:6836281137582846200" />
                                            <node concept="3uibUv" id="kz" role="1Ez5kq">
                                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                            </node>
                                            <node concept="37vLTw" id="k$" role="1EMhIo">
                                              <ref role="3cqZAo" node="jQ" resolve="_context" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="1mfA1w" id="kw" role="2OqNvi">
                                          <uo k="s:originTrace" v="n:6836281137582846201" />
                                        </node>
                                      </node>
                                      <node concept="2z74zc" id="ku" role="2OqNvi">
                                        <uo k="s:originTrace" v="n:6836281137582846202" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3cpWs6" id="kd" role="3cqZAp">
                                    <uo k="s:originTrace" v="n:6836281137582846203" />
                                    <node concept="37vLTw" id="k_" role="3cqZAk">
                                      <ref role="3cqZAo" node="ke" resolve="nodes" />
                                      <uo k="s:originTrace" v="n:6836281137582846204" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="2AHcQZ" id="k7" role="2AJF6D">
                                  <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                  <uo k="s:originTrace" v="n:6836281137582846205" />
                                </node>
                              </node>
                              <node concept="3clFb_" id="k1" role="jymVt">
                                <property role="1EzhhJ" value="false" />
                                <property role="TrG5h" value="resolve" />
                                <uo k="s:originTrace" v="n:6836281137582846206" />
                                <node concept="3Tqbb2" id="kA" role="3clF45">
                                  <uo k="s:originTrace" v="n:6836281137582846207" />
                                </node>
                                <node concept="3Tm1VV" id="kB" role="1B3o_S">
                                  <uo k="s:originTrace" v="n:6836281137582846208" />
                                </node>
                                <node concept="37vLTG" id="kC" role="3clF46">
                                  <property role="TrG5h" value="contextNode" />
                                  <uo k="s:originTrace" v="n:6836281137582846209" />
                                  <node concept="3Tqbb2" id="kH" role="1tU5fm">
                                    <uo k="s:originTrace" v="n:6836281137582846210" />
                                  </node>
                                </node>
                                <node concept="37vLTG" id="kD" role="3clF46">
                                  <property role="TrG5h" value="refText" />
                                  <uo k="s:originTrace" v="n:6836281137582846211" />
                                  <node concept="17QB3L" id="kI" role="1tU5fm">
                                    <uo k="s:originTrace" v="n:6836281137582846212" />
                                  </node>
                                  <node concept="2AHcQZ" id="kJ" role="2AJF6D">
                                    <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                                    <uo k="s:originTrace" v="n:6836281137582846213" />
                                  </node>
                                </node>
                                <node concept="2AHcQZ" id="kE" role="2AJF6D">
                                  <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                                  <uo k="s:originTrace" v="n:6836281137582846214" />
                                </node>
                                <node concept="3clFbS" id="kF" role="3clF47">
                                  <uo k="s:originTrace" v="n:6836281137582846215" />
                                  <node concept="3cpWs6" id="kK" role="3cqZAp">
                                    <uo k="s:originTrace" v="n:6836281137582846216" />
                                    <node concept="10Nm6u" id="kL" role="3cqZAk">
                                      <uo k="s:originTrace" v="n:6836281137582846217" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="2AHcQZ" id="kG" role="2AJF6D">
                                  <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                  <uo k="s:originTrace" v="n:6836281137582846218" />
                                </node>
                              </node>
                              <node concept="3clFb_" id="k2" role="jymVt">
                                <property role="1EzhhJ" value="false" />
                                <property role="TrG5h" value="getReferenceText" />
                                <uo k="s:originTrace" v="n:6836281137582846219" />
                                <node concept="17QB3L" id="kM" role="3clF45">
                                  <uo k="s:originTrace" v="n:6836281137582846220" />
                                </node>
                                <node concept="3Tm1VV" id="kN" role="1B3o_S">
                                  <uo k="s:originTrace" v="n:6836281137582846221" />
                                </node>
                                <node concept="37vLTG" id="kO" role="3clF46">
                                  <property role="TrG5h" value="contextNode" />
                                  <uo k="s:originTrace" v="n:6836281137582846222" />
                                  <node concept="3Tqbb2" id="kT" role="1tU5fm">
                                    <uo k="s:originTrace" v="n:6836281137582846223" />
                                  </node>
                                </node>
                                <node concept="37vLTG" id="kP" role="3clF46">
                                  <property role="TrG5h" value="node" />
                                  <uo k="s:originTrace" v="n:6836281137582846224" />
                                  <node concept="3Tqbb2" id="kU" role="1tU5fm">
                                    <uo k="s:originTrace" v="n:6836281137582846225" />
                                  </node>
                                  <node concept="2AHcQZ" id="kV" role="2AJF6D">
                                    <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                                    <uo k="s:originTrace" v="n:6836281137582846226" />
                                  </node>
                                </node>
                                <node concept="2AHcQZ" id="kQ" role="2AJF6D">
                                  <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                                  <uo k="s:originTrace" v="n:6836281137582846227" />
                                </node>
                                <node concept="3clFbS" id="kR" role="3clF47">
                                  <uo k="s:originTrace" v="n:6836281137582846228" />
                                  <node concept="3cpWs6" id="kW" role="3cqZAp">
                                    <uo k="s:originTrace" v="n:6836281137582846229" />
                                    <node concept="10Nm6u" id="kX" role="3cqZAk">
                                      <uo k="s:originTrace" v="n:6836281137582846230" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="2AHcQZ" id="kS" role="2AJF6D">
                                  <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                  <uo k="s:originTrace" v="n:6836281137582846231" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="jV" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582846232" />
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="jS" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582846165" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="jz" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:5449224527592362452" />
        </node>
      </node>
      <node concept="3uibUv" id="jf" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:5449224527592362452" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="kY">
    <property role="TrG5h" value="TestNodeReference_Constraints" />
    <uo k="s:originTrace" v="n:1213104844716" />
    <node concept="3Tm1VV" id="kZ" role="1B3o_S">
      <uo k="s:originTrace" v="n:1213104844716" />
    </node>
    <node concept="3uibUv" id="l0" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:1213104844716" />
    </node>
    <node concept="3clFbW" id="l1" role="jymVt">
      <uo k="s:originTrace" v="n:1213104844716" />
      <node concept="37vLTG" id="l4" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:1213104844716" />
        <node concept="3uibUv" id="l7" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:1213104844716" />
        </node>
      </node>
      <node concept="3cqZAl" id="l5" role="3clF45">
        <uo k="s:originTrace" v="n:1213104844716" />
      </node>
      <node concept="3clFbS" id="l6" role="3clF47">
        <uo k="s:originTrace" v="n:1213104844716" />
        <node concept="XkiVB" id="l8" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:1213104844716" />
          <node concept="1BaE9c" id="la" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="TestNodeReference$hm" />
            <uo k="s:originTrace" v="n:1213104844716" />
            <node concept="2YIFZM" id="lc" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:1213104844716" />
              <node concept="11gdke" id="ld" role="37wK5m">
                <property role="11gdj1" value="8585453e6bfb4d80L" />
                <uo k="s:originTrace" v="n:1213104844716" />
              </node>
              <node concept="11gdke" id="le" role="37wK5m">
                <property role="11gdj1" value="98deb16074f1d86cL" />
                <uo k="s:originTrace" v="n:1213104844716" />
              </node>
              <node concept="11gdke" id="lf" role="37wK5m">
                <property role="11gdj1" value="119e1d33213L" />
                <uo k="s:originTrace" v="n:1213104844716" />
              </node>
              <node concept="Xl_RD" id="lg" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.test.structure.TestNodeReference" />
                <uo k="s:originTrace" v="n:1213104844716" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="lb" role="37wK5m">
            <ref role="3cqZAo" node="l4" resolve="initContext" />
            <uo k="s:originTrace" v="n:1213104844716" />
          </node>
        </node>
        <node concept="3clFbF" id="l9" role="3cqZAp">
          <uo k="s:originTrace" v="n:1213104844716" />
          <node concept="1rXfSq" id="lh" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:1213104844716" />
            <node concept="2ShNRf" id="li" role="37wK5m">
              <uo k="s:originTrace" v="n:1213104844716" />
              <node concept="1pGfFk" id="lj" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="ll" resolve="TestNodeReference_Constraints.RD1" />
                <uo k="s:originTrace" v="n:1213104844716" />
                <node concept="Xjq3P" id="lk" role="37wK5m">
                  <uo k="s:originTrace" v="n:1213104844716" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="l2" role="jymVt">
      <uo k="s:originTrace" v="n:1213104844716" />
    </node>
    <node concept="312cEu" id="l3" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:1213104844716" />
      <node concept="3clFbW" id="ll" role="jymVt">
        <uo k="s:originTrace" v="n:1213104844716" />
        <node concept="37vLTG" id="lo" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:1213104844716" />
          <node concept="3uibUv" id="lr" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1213104844716" />
          </node>
        </node>
        <node concept="3cqZAl" id="lp" role="3clF45">
          <uo k="s:originTrace" v="n:1213104844716" />
        </node>
        <node concept="3clFbS" id="lq" role="3clF47">
          <uo k="s:originTrace" v="n:1213104844716" />
          <node concept="XkiVB" id="ls" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1213104844716" />
            <node concept="1BaE9c" id="lt" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="declaration$hXIv" />
              <uo k="s:originTrace" v="n:1213104844716" />
              <node concept="2YIFZM" id="lx" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:1213104844716" />
                <node concept="11gdke" id="ly" role="37wK5m">
                  <property role="11gdj1" value="8585453e6bfb4d80L" />
                  <uo k="s:originTrace" v="n:1213104844716" />
                </node>
                <node concept="11gdke" id="lz" role="37wK5m">
                  <property role="11gdj1" value="98deb16074f1d86cL" />
                  <uo k="s:originTrace" v="n:1213104844716" />
                </node>
                <node concept="11gdke" id="l$" role="37wK5m">
                  <property role="11gdj1" value="119e1d33213L" />
                  <uo k="s:originTrace" v="n:1213104844716" />
                </node>
                <node concept="11gdke" id="l_" role="37wK5m">
                  <property role="11gdj1" value="119e1d356c6L" />
                  <uo k="s:originTrace" v="n:1213104844716" />
                </node>
                <node concept="Xl_RD" id="lA" role="37wK5m">
                  <property role="Xl_RC" value="declaration" />
                  <uo k="s:originTrace" v="n:1213104844716" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="lu" role="37wK5m">
              <ref role="3cqZAo" node="lo" resolve="container" />
              <uo k="s:originTrace" v="n:1213104844716" />
            </node>
            <node concept="3clFbT" id="lv" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:1213104844716" />
            </node>
            <node concept="3clFbT" id="lw" role="37wK5m">
              <uo k="s:originTrace" v="n:1213104844716" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="lm" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:1213104844716" />
        <node concept="3Tm1VV" id="lB" role="1B3o_S">
          <uo k="s:originTrace" v="n:1213104844716" />
        </node>
        <node concept="3uibUv" id="lC" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:1213104844716" />
        </node>
        <node concept="2AHcQZ" id="lD" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:1213104844716" />
        </node>
        <node concept="3clFbS" id="lE" role="3clF47">
          <uo k="s:originTrace" v="n:1213104844716" />
          <node concept="3cpWs6" id="lG" role="3cqZAp">
            <uo k="s:originTrace" v="n:1213104844716" />
            <node concept="2ShNRf" id="lH" role="3cqZAk">
              <uo k="s:originTrace" v="n:6836281137582846018" />
              <node concept="YeOm9" id="lI" role="2ShVmc">
                <uo k="s:originTrace" v="n:6836281137582846018" />
                <node concept="1Y3b0j" id="lJ" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:6836281137582846018" />
                  <node concept="3Tm1VV" id="lK" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6836281137582846018" />
                  </node>
                  <node concept="3clFb_" id="lL" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:6836281137582846018" />
                    <node concept="3Tm1VV" id="lN" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582846018" />
                    </node>
                    <node concept="3uibUv" id="lO" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:6836281137582846018" />
                    </node>
                    <node concept="3clFbS" id="lP" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582846018" />
                      <node concept="3cpWs6" id="lR" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582846018" />
                        <node concept="2ShNRf" id="lS" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582846018" />
                          <node concept="1pGfFk" id="lT" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:6836281137582846018" />
                            <node concept="Xl_RD" id="lU" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590382(jetbrains.mps.lang.test.constraints)" />
                              <uo k="s:originTrace" v="n:6836281137582846018" />
                            </node>
                            <node concept="Xl_RD" id="lV" role="37wK5m">
                              <property role="Xl_RC" value="6836281137582846018" />
                              <uo k="s:originTrace" v="n:6836281137582846018" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="lQ" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582846018" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="lM" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:6836281137582846018" />
                    <node concept="3Tm1VV" id="lW" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582846018" />
                    </node>
                    <node concept="3uibUv" id="lX" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:6836281137582846018" />
                    </node>
                    <node concept="37vLTG" id="lY" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:6836281137582846018" />
                      <node concept="3uibUv" id="m1" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:6836281137582846018" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="lZ" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582846018" />
                      <node concept="3clFbJ" id="m2" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582846020" />
                        <node concept="3clFbS" id="m7" role="3clFbx">
                          <uo k="s:originTrace" v="n:6836281137582846021" />
                          <node concept="3cpWs6" id="m9" role="3cqZAp">
                            <uo k="s:originTrace" v="n:6836281137582846022" />
                            <node concept="2YIFZM" id="ma" role="3cqZAk">
                              <ref role="37wK5l" to="o8zo:3jEbQoczdCs" resolve="forResolvableElements" />
                              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                              <uo k="s:originTrace" v="n:6836281137582846147" />
                              <node concept="2ShNRf" id="mb" role="37wK5m">
                                <uo k="s:originTrace" v="n:6836281137582846148" />
                                <node concept="2T8Vx0" id="mc" role="2ShVmc">
                                  <uo k="s:originTrace" v="n:6836281137582846149" />
                                  <node concept="2I9FWS" id="md" role="2T96Bj">
                                    <ref role="2I9WkF" to="tp5g:hBxLA2s" resolve="TestNodeAnnotation" />
                                    <uo k="s:originTrace" v="n:6836281137582846150" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3y3z36" id="m8" role="3clFbw">
                          <uo k="s:originTrace" v="n:6836281137582846026" />
                          <node concept="2OqwBi" id="me" role="3uHU7B">
                            <uo k="s:originTrace" v="n:6836281137582846027" />
                            <node concept="1DoJHT" id="mg" role="2Oq$k0">
                              <property role="1Dpdpm" value="getContextNode" />
                              <uo k="s:originTrace" v="n:6836281137582846070" />
                              <node concept="3uibUv" id="mi" role="1Ez5kq">
                                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                              </node>
                              <node concept="37vLTw" id="mj" role="1EMhIo">
                                <ref role="3cqZAo" node="lY" resolve="_context" />
                              </node>
                            </node>
                            <node concept="2Xjw5R" id="mh" role="2OqNvi">
                              <uo k="s:originTrace" v="n:6836281137582846029" />
                              <node concept="1xMEDy" id="mk" role="1xVPHs">
                                <uo k="s:originTrace" v="n:6836281137582846030" />
                                <node concept="chp4Y" id="ml" role="ri$Ld">
                                  <ref role="cht4Q" to="tp5g:hHqefK1" resolve="TestNode" />
                                  <uo k="s:originTrace" v="n:6836281137582846031" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="10Nm6u" id="mf" role="3uHU7w">
                            <uo k="s:originTrace" v="n:6836281137582846032" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="m3" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582846033" />
                        <node concept="3cpWsn" id="mm" role="3cpWs9">
                          <property role="TrG5h" value="test" />
                          <uo k="s:originTrace" v="n:6836281137582846034" />
                          <node concept="3Tqbb2" id="mn" role="1tU5fm">
                            <uo k="s:originTrace" v="n:6836281137582846035" />
                          </node>
                          <node concept="2OqwBi" id="mo" role="33vP2m">
                            <uo k="s:originTrace" v="n:6836281137582846036" />
                            <node concept="1DoJHT" id="mp" role="2Oq$k0">
                              <property role="1Dpdpm" value="getContextNode" />
                              <uo k="s:originTrace" v="n:6836281137582846071" />
                              <node concept="3uibUv" id="mr" role="1Ez5kq">
                                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                              </node>
                              <node concept="37vLTw" id="ms" role="1EMhIo">
                                <ref role="3cqZAo" node="lY" resolve="_context" />
                              </node>
                            </node>
                            <node concept="2Xjw5R" id="mq" role="2OqNvi">
                              <uo k="s:originTrace" v="n:6836281137582846038" />
                              <node concept="3gmYPX" id="mt" role="1xVPHs">
                                <uo k="s:originTrace" v="n:6836281137582846039" />
                                <node concept="3gn64h" id="mv" role="3gmYPZ">
                                  <ref role="3gnhBz" to="tp5g:hHlH9T6" resolve="NodesTestCase" />
                                  <uo k="s:originTrace" v="n:6836281137582846040" />
                                </node>
                                <node concept="3gn64h" id="mw" role="3gmYPZ">
                                  <ref role="3gnhBz" to="tp5g:hSLiM3w" resolve="EditorTestCase" />
                                  <uo k="s:originTrace" v="n:6836281137582846041" />
                                </node>
                              </node>
                              <node concept="1xIGOp" id="mu" role="1xVPHs">
                                <uo k="s:originTrace" v="n:6836281137582846042" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="m4" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582846043" />
                        <node concept="3cpWsn" id="mx" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:6836281137582846044" />
                          <node concept="2I9FWS" id="my" role="1tU5fm">
                            <ref role="2I9WkF" to="tp5g:hBxLA2s" resolve="TestNodeAnnotation" />
                            <uo k="s:originTrace" v="n:6836281137582846045" />
                          </node>
                          <node concept="2ShNRf" id="mz" role="33vP2m">
                            <uo k="s:originTrace" v="n:6836281137582846046" />
                            <node concept="2T8Vx0" id="m$" role="2ShVmc">
                              <uo k="s:originTrace" v="n:6836281137582846047" />
                              <node concept="2I9FWS" id="m_" role="2T96Bj">
                                <ref role="2I9WkF" to="tp5g:hBxLA2s" resolve="TestNodeAnnotation" />
                                <uo k="s:originTrace" v="n:6836281137582846048" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="m5" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582846049" />
                        <node concept="3y3z36" id="mA" role="3clFbw">
                          <uo k="s:originTrace" v="n:6836281137582846050" />
                          <node concept="10Nm6u" id="mC" role="3uHU7w">
                            <uo k="s:originTrace" v="n:6836281137582846051" />
                          </node>
                          <node concept="37vLTw" id="mD" role="3uHU7B">
                            <ref role="3cqZAo" node="mm" resolve="test" />
                            <uo k="s:originTrace" v="n:6836281137582846052" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="mB" role="3clFbx">
                          <uo k="s:originTrace" v="n:6836281137582846053" />
                          <node concept="2Gpval" id="mE" role="3cqZAp">
                            <uo k="s:originTrace" v="n:6836281137582846054" />
                            <node concept="2GrKxI" id="mF" role="2Gsz3X">
                              <property role="TrG5h" value="node" />
                              <uo k="s:originTrace" v="n:6836281137582846055" />
                            </node>
                            <node concept="2OqwBi" id="mG" role="2GsD0m">
                              <uo k="s:originTrace" v="n:6836281137582846056" />
                              <node concept="37vLTw" id="mI" role="2Oq$k0">
                                <ref role="3cqZAo" node="mm" resolve="test" />
                                <uo k="s:originTrace" v="n:6836281137582846057" />
                              </node>
                              <node concept="2Rf3mk" id="mJ" role="2OqNvi">
                                <uo k="s:originTrace" v="n:6836281137582846058" />
                                <node concept="1xMEDy" id="mK" role="1xVPHs">
                                  <uo k="s:originTrace" v="n:6836281137582846059" />
                                  <node concept="chp4Y" id="mM" role="ri$Ld">
                                    <ref role="cht4Q" to="tp5g:hBxLA2s" resolve="TestNodeAnnotation" />
                                    <uo k="s:originTrace" v="n:6836281137582846060" />
                                  </node>
                                </node>
                                <node concept="1xIGOp" id="mL" role="1xVPHs">
                                  <uo k="s:originTrace" v="n:6836281137582846061" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbS" id="mH" role="2LFqv$">
                              <uo k="s:originTrace" v="n:6836281137582846062" />
                              <node concept="3clFbF" id="mN" role="3cqZAp">
                                <uo k="s:originTrace" v="n:6836281137582846063" />
                                <node concept="2OqwBi" id="mO" role="3clFbG">
                                  <uo k="s:originTrace" v="n:6836281137582846064" />
                                  <node concept="37vLTw" id="mP" role="2Oq$k0">
                                    <ref role="3cqZAo" node="mx" resolve="result" />
                                    <uo k="s:originTrace" v="n:6836281137582846065" />
                                  </node>
                                  <node concept="TSZUe" id="mQ" role="2OqNvi">
                                    <uo k="s:originTrace" v="n:6836281137582846066" />
                                    <node concept="2GrUjf" id="mR" role="25WWJ7">
                                      <ref role="2Gs0qQ" node="mF" resolve="node" />
                                      <uo k="s:originTrace" v="n:6836281137582846067" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs6" id="m6" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582846068" />
                        <node concept="2YIFZM" id="mS" role="3cqZAk">
                          <ref role="37wK5l" to="o8zo:3jEbQoczdCs" resolve="forResolvableElements" />
                          <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                          <uo k="s:originTrace" v="n:6836281137582846163" />
                          <node concept="37vLTw" id="mT" role="37wK5m">
                            <ref role="3cqZAo" node="mx" resolve="result" />
                            <uo k="s:originTrace" v="n:6836281137582846164" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="m0" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582846018" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="lF" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:1213104844716" />
        </node>
      </node>
      <node concept="3uibUv" id="ln" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:1213104844716" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="mU">
    <property role="TrG5h" value="UnorderedChildrenMark_Constraints" />
    <uo k="s:originTrace" v="n:1312286548400785954" />
    <node concept="3Tm1VV" id="mV" role="1B3o_S">
      <uo k="s:originTrace" v="n:1312286548400785954" />
    </node>
    <node concept="3uibUv" id="mW" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:1312286548400785954" />
    </node>
    <node concept="3clFbW" id="mX" role="jymVt">
      <uo k="s:originTrace" v="n:1312286548400785954" />
      <node concept="37vLTG" id="n0" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:1312286548400785954" />
        <node concept="3uibUv" id="n3" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:1312286548400785954" />
        </node>
      </node>
      <node concept="3cqZAl" id="n1" role="3clF45">
        <uo k="s:originTrace" v="n:1312286548400785954" />
      </node>
      <node concept="3clFbS" id="n2" role="3clF47">
        <uo k="s:originTrace" v="n:1312286548400785954" />
        <node concept="XkiVB" id="n4" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:1312286548400785954" />
          <node concept="1BaE9c" id="n6" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="UnorderedChildrenMark$Ss" />
            <uo k="s:originTrace" v="n:1312286548400785954" />
            <node concept="2YIFZM" id="n8" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:1312286548400785954" />
              <node concept="11gdke" id="n9" role="37wK5m">
                <property role="11gdj1" value="8585453e6bfb4d80L" />
                <uo k="s:originTrace" v="n:1312286548400785954" />
              </node>
              <node concept="11gdke" id="na" role="37wK5m">
                <property role="11gdj1" value="98deb16074f1d86cL" />
                <uo k="s:originTrace" v="n:1312286548400785954" />
              </node>
              <node concept="11gdke" id="nb" role="37wK5m">
                <property role="11gdj1" value="12362da9b8610b8eL" />
                <uo k="s:originTrace" v="n:1312286548400785954" />
              </node>
              <node concept="Xl_RD" id="nc" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.test.structure.UnorderedChildrenMark" />
                <uo k="s:originTrace" v="n:1312286548400785954" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="n7" role="37wK5m">
            <ref role="3cqZAo" node="n0" resolve="initContext" />
            <uo k="s:originTrace" v="n:1312286548400785954" />
          </node>
        </node>
        <node concept="3clFbF" id="n5" role="3cqZAp">
          <uo k="s:originTrace" v="n:1312286548400785954" />
          <node concept="1rXfSq" id="nd" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:1312286548400785954" />
            <node concept="2ShNRf" id="ne" role="37wK5m">
              <uo k="s:originTrace" v="n:1312286548400785954" />
              <node concept="1pGfFk" id="nf" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="nh" resolve="UnorderedChildrenMark_Constraints.RD1" />
                <uo k="s:originTrace" v="n:1312286548400785954" />
                <node concept="Xjq3P" id="ng" role="37wK5m">
                  <uo k="s:originTrace" v="n:1312286548400785954" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="mY" role="jymVt">
      <uo k="s:originTrace" v="n:1312286548400785954" />
    </node>
    <node concept="312cEu" id="mZ" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:1312286548400785954" />
      <node concept="3clFbW" id="nh" role="jymVt">
        <uo k="s:originTrace" v="n:1312286548400785954" />
        <node concept="37vLTG" id="nk" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:1312286548400785954" />
          <node concept="3uibUv" id="nn" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1312286548400785954" />
          </node>
        </node>
        <node concept="3cqZAl" id="nl" role="3clF45">
          <uo k="s:originTrace" v="n:1312286548400785954" />
        </node>
        <node concept="3clFbS" id="nm" role="3clF47">
          <uo k="s:originTrace" v="n:1312286548400785954" />
          <node concept="XkiVB" id="no" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1312286548400785954" />
            <node concept="1BaE9c" id="np" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="link$HJ90" />
              <uo k="s:originTrace" v="n:1312286548400785954" />
              <node concept="2YIFZM" id="nt" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:1312286548400785954" />
                <node concept="11gdke" id="nu" role="37wK5m">
                  <property role="11gdj1" value="8585453e6bfb4d80L" />
                  <uo k="s:originTrace" v="n:1312286548400785954" />
                </node>
                <node concept="11gdke" id="nv" role="37wK5m">
                  <property role="11gdj1" value="98deb16074f1d86cL" />
                  <uo k="s:originTrace" v="n:1312286548400785954" />
                </node>
                <node concept="11gdke" id="nw" role="37wK5m">
                  <property role="11gdj1" value="12362da9b8610b8eL" />
                  <uo k="s:originTrace" v="n:1312286548400785954" />
                </node>
                <node concept="11gdke" id="nx" role="37wK5m">
                  <property role="11gdj1" value="12362da9b8dce85aL" />
                  <uo k="s:originTrace" v="n:1312286548400785954" />
                </node>
                <node concept="Xl_RD" id="ny" role="37wK5m">
                  <property role="Xl_RC" value="link" />
                  <uo k="s:originTrace" v="n:1312286548400785954" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="nq" role="37wK5m">
              <ref role="3cqZAo" node="nk" resolve="container" />
              <uo k="s:originTrace" v="n:1312286548400785954" />
            </node>
            <node concept="3clFbT" id="nr" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:1312286548400785954" />
            </node>
            <node concept="3clFbT" id="ns" role="37wK5m">
              <uo k="s:originTrace" v="n:1312286548400785954" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="ni" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:1312286548400785954" />
        <node concept="3Tm1VV" id="nz" role="1B3o_S">
          <uo k="s:originTrace" v="n:1312286548400785954" />
        </node>
        <node concept="3uibUv" id="n$" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:1312286548400785954" />
        </node>
        <node concept="2AHcQZ" id="n_" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:1312286548400785954" />
        </node>
        <node concept="3clFbS" id="nA" role="3clF47">
          <uo k="s:originTrace" v="n:1312286548400785954" />
          <node concept="3cpWs6" id="nC" role="3cqZAp">
            <uo k="s:originTrace" v="n:1312286548400785954" />
            <node concept="2ShNRf" id="nD" role="3cqZAk">
              <uo k="s:originTrace" v="n:1312286548400785956" />
              <node concept="YeOm9" id="nE" role="2ShVmc">
                <uo k="s:originTrace" v="n:1312286548400785956" />
                <node concept="1Y3b0j" id="nF" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:1312286548400785956" />
                  <node concept="3Tm1VV" id="nG" role="1B3o_S">
                    <uo k="s:originTrace" v="n:1312286548400785956" />
                  </node>
                  <node concept="3clFb_" id="nH" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:1312286548400785956" />
                    <node concept="3Tm1VV" id="nJ" role="1B3o_S">
                      <uo k="s:originTrace" v="n:1312286548400785956" />
                    </node>
                    <node concept="3uibUv" id="nK" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:1312286548400785956" />
                    </node>
                    <node concept="3clFbS" id="nL" role="3clF47">
                      <uo k="s:originTrace" v="n:1312286548400785956" />
                      <node concept="3cpWs6" id="nN" role="3cqZAp">
                        <uo k="s:originTrace" v="n:1312286548400785956" />
                        <node concept="2ShNRf" id="nO" role="3cqZAk">
                          <uo k="s:originTrace" v="n:1312286548400785956" />
                          <node concept="1pGfFk" id="nP" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:1312286548400785956" />
                            <node concept="Xl_RD" id="nQ" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590382(jetbrains.mps.lang.test.constraints)" />
                              <uo k="s:originTrace" v="n:1312286548400785956" />
                            </node>
                            <node concept="Xl_RD" id="nR" role="37wK5m">
                              <property role="Xl_RC" value="1312286548400785956" />
                              <uo k="s:originTrace" v="n:1312286548400785956" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="nM" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:1312286548400785956" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="nI" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:1312286548400785956" />
                    <node concept="3Tm1VV" id="nS" role="1B3o_S">
                      <uo k="s:originTrace" v="n:1312286548400785956" />
                    </node>
                    <node concept="3uibUv" id="nT" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:1312286548400785956" />
                    </node>
                    <node concept="37vLTG" id="nU" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:1312286548400785956" />
                      <node concept="3uibUv" id="nX" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:1312286548400785956" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="nV" role="3clF47">
                      <uo k="s:originTrace" v="n:1312286548400785956" />
                      <node concept="3clFbF" id="nY" role="3cqZAp">
                        <uo k="s:originTrace" v="n:1312286548401724160" />
                        <node concept="2YIFZM" id="nZ" role="3clFbG">
                          <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                          <ref role="37wK5l" to="o8zo:3jEbQoczdCs" resolve="forResolvableElements" />
                          <uo k="s:originTrace" v="n:1312286548401724162" />
                          <node concept="2OqwBi" id="o0" role="37wK5m">
                            <uo k="s:originTrace" v="n:1312286548401724163" />
                            <node concept="2OqwBi" id="o1" role="2Oq$k0">
                              <uo k="s:originTrace" v="n:1312286548401724166" />
                              <node concept="2OqwBi" id="o3" role="2Oq$k0">
                                <uo k="s:originTrace" v="n:1312286548401724169" />
                                <node concept="2OqwBi" id="o5" role="2Oq$k0">
                                  <uo k="s:originTrace" v="n:1312286548401724172" />
                                  <node concept="2OqwBi" id="o7" role="2Oq$k0">
                                    <uo k="s:originTrace" v="n:1312286548401724175" />
                                    <node concept="1DoJHT" id="o9" role="2Oq$k0">
                                      <property role="1Dpdpm" value="getReferenceNode" />
                                      <uo k="s:originTrace" v="n:1312286548401724178" />
                                      <node concept="3uibUv" id="ob" role="1Ez5kq">
                                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                      </node>
                                      <node concept="37vLTw" id="oc" role="1EMhIo">
                                        <ref role="3cqZAo" node="nU" resolve="_context" />
                                      </node>
                                    </node>
                                    <node concept="1mfA1w" id="oa" role="2OqNvi">
                                      <uo k="s:originTrace" v="n:1312286548401724179" />
                                    </node>
                                  </node>
                                  <node concept="3NT_Vc" id="o8" role="2OqNvi">
                                    <uo k="s:originTrace" v="n:1312286548401724180" />
                                  </node>
                                </node>
                                <node concept="2qgKlT" id="o6" role="2OqNvi">
                                  <ref role="37wK5l" to="tpcn:hEwILLp" resolve="getAggregationLinkDeclarations" />
                                  <uo k="s:originTrace" v="n:1312286548401724181" />
                                </node>
                              </node>
                              <node concept="3zZkjj" id="o4" role="2OqNvi">
                                <uo k="s:originTrace" v="n:1312286548401724182" />
                                <node concept="1bVj0M" id="od" role="23t8la">
                                  <uo k="s:originTrace" v="n:1312286548401724187" />
                                  <node concept="gl6BB" id="oe" role="1bW2Oz">
                                    <property role="TrG5h" value="it" />
                                    <uo k="s:originTrace" v="n:1312286548401724189" />
                                    <node concept="2jxLKc" id="og" role="1tU5fm">
                                      <uo k="s:originTrace" v="n:1312286548401724191" />
                                    </node>
                                  </node>
                                  <node concept="3clFbS" id="of" role="1bW5cS">
                                    <uo k="s:originTrace" v="n:1312286548401724192" />
                                    <node concept="3clFbF" id="oh" role="3cqZAp">
                                      <uo k="s:originTrace" v="n:1312286548401724193" />
                                      <node concept="3fqX7Q" id="oi" role="3clFbG">
                                        <uo k="s:originTrace" v="n:1312286548401724195" />
                                        <node concept="2OqwBi" id="oj" role="3fr31v">
                                          <uo k="s:originTrace" v="n:1312286548401724197" />
                                          <node concept="37vLTw" id="ok" role="2Oq$k0">
                                            <ref role="3cqZAo" node="oe" resolve="it" />
                                            <uo k="s:originTrace" v="n:1312286548401724200" />
                                          </node>
                                          <node concept="2qgKlT" id="ol" role="2OqNvi">
                                            <ref role="37wK5l" to="tpcn:hEwIfAt" resolve="isSingular" />
                                            <uo k="s:originTrace" v="n:1312286548401724201" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="ANE8D" id="o2" role="2OqNvi">
                              <uo k="s:originTrace" v="n:1312286548401724202" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="nW" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:1312286548400785956" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="nB" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:1312286548400785954" />
        </node>
      </node>
      <node concept="3uibUv" id="nj" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:1312286548400785954" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="om">
    <property role="TrG5h" value="UnorderedChildrenRule_Constraints" />
    <uo k="s:originTrace" v="n:6922106699764123715" />
    <node concept="3Tm1VV" id="on" role="1B3o_S">
      <uo k="s:originTrace" v="n:6922106699764123715" />
    </node>
    <node concept="3uibUv" id="oo" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:6922106699764123715" />
    </node>
    <node concept="3clFbW" id="op" role="jymVt">
      <uo k="s:originTrace" v="n:6922106699764123715" />
      <node concept="37vLTG" id="os" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:6922106699764123715" />
        <node concept="3uibUv" id="ov" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:6922106699764123715" />
        </node>
      </node>
      <node concept="3cqZAl" id="ot" role="3clF45">
        <uo k="s:originTrace" v="n:6922106699764123715" />
      </node>
      <node concept="3clFbS" id="ou" role="3clF47">
        <uo k="s:originTrace" v="n:6922106699764123715" />
        <node concept="XkiVB" id="ow" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:6922106699764123715" />
          <node concept="1BaE9c" id="oy" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="UnorderedChildrenRule$so" />
            <uo k="s:originTrace" v="n:6922106699764123715" />
            <node concept="2YIFZM" id="o$" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:6922106699764123715" />
              <node concept="11gdke" id="o_" role="37wK5m">
                <property role="11gdj1" value="8585453e6bfb4d80L" />
                <uo k="s:originTrace" v="n:6922106699764123715" />
              </node>
              <node concept="11gdke" id="oA" role="37wK5m">
                <property role="11gdj1" value="98deb16074f1d86cL" />
                <uo k="s:originTrace" v="n:6922106699764123715" />
              </node>
              <node concept="11gdke" id="oB" role="37wK5m">
                <property role="11gdj1" value="6010435e58c2e4a7L" />
                <uo k="s:originTrace" v="n:6922106699764123715" />
              </node>
              <node concept="Xl_RD" id="oC" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.test.structure.UnorderedChildrenRule" />
                <uo k="s:originTrace" v="n:6922106699764123715" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="oz" role="37wK5m">
            <ref role="3cqZAo" node="os" resolve="initContext" />
            <uo k="s:originTrace" v="n:6922106699764123715" />
          </node>
        </node>
        <node concept="3clFbF" id="ox" role="3cqZAp">
          <uo k="s:originTrace" v="n:6922106699764123715" />
          <node concept="1rXfSq" id="oD" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:6922106699764123715" />
            <node concept="2ShNRf" id="oE" role="37wK5m">
              <uo k="s:originTrace" v="n:6922106699764123715" />
              <node concept="1pGfFk" id="oF" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="oH" resolve="UnorderedChildrenRule_Constraints.RD1" />
                <uo k="s:originTrace" v="n:6922106699764123715" />
                <node concept="Xjq3P" id="oG" role="37wK5m">
                  <uo k="s:originTrace" v="n:6922106699764123715" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="oq" role="jymVt">
      <uo k="s:originTrace" v="n:6922106699764123715" />
    </node>
    <node concept="312cEu" id="or" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:6922106699764123715" />
      <node concept="3clFbW" id="oH" role="jymVt">
        <uo k="s:originTrace" v="n:6922106699764123715" />
        <node concept="37vLTG" id="oK" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:6922106699764123715" />
          <node concept="3uibUv" id="oN" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:6922106699764123715" />
          </node>
        </node>
        <node concept="3cqZAl" id="oL" role="3clF45">
          <uo k="s:originTrace" v="n:6922106699764123715" />
        </node>
        <node concept="3clFbS" id="oM" role="3clF47">
          <uo k="s:originTrace" v="n:6922106699764123715" />
          <node concept="XkiVB" id="oO" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:6922106699764123715" />
            <node concept="1BaE9c" id="oP" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="link$7Hiz" />
              <uo k="s:originTrace" v="n:6922106699764123715" />
              <node concept="2YIFZM" id="oT" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:6922106699764123715" />
                <node concept="11gdke" id="oU" role="37wK5m">
                  <property role="11gdj1" value="8585453e6bfb4d80L" />
                  <uo k="s:originTrace" v="n:6922106699764123715" />
                </node>
                <node concept="11gdke" id="oV" role="37wK5m">
                  <property role="11gdj1" value="98deb16074f1d86cL" />
                  <uo k="s:originTrace" v="n:6922106699764123715" />
                </node>
                <node concept="11gdke" id="oW" role="37wK5m">
                  <property role="11gdj1" value="6010435e58c2e4a7L" />
                  <uo k="s:originTrace" v="n:6922106699764123715" />
                </node>
                <node concept="11gdke" id="oX" role="37wK5m">
                  <property role="11gdj1" value="6010435e58c2e4acL" />
                  <uo k="s:originTrace" v="n:6922106699764123715" />
                </node>
                <node concept="Xl_RD" id="oY" role="37wK5m">
                  <property role="Xl_RC" value="link" />
                  <uo k="s:originTrace" v="n:6922106699764123715" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="oQ" role="37wK5m">
              <ref role="3cqZAo" node="oK" resolve="container" />
              <uo k="s:originTrace" v="n:6922106699764123715" />
            </node>
            <node concept="3clFbT" id="oR" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:6922106699764123715" />
            </node>
            <node concept="3clFbT" id="oS" role="37wK5m">
              <uo k="s:originTrace" v="n:6922106699764123715" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="oI" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:6922106699764123715" />
        <node concept="3Tm1VV" id="oZ" role="1B3o_S">
          <uo k="s:originTrace" v="n:6922106699764123715" />
        </node>
        <node concept="3uibUv" id="p0" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:6922106699764123715" />
        </node>
        <node concept="2AHcQZ" id="p1" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:6922106699764123715" />
        </node>
        <node concept="3clFbS" id="p2" role="3clF47">
          <uo k="s:originTrace" v="n:6922106699764123715" />
          <node concept="3cpWs6" id="p4" role="3cqZAp">
            <uo k="s:originTrace" v="n:6922106699764123715" />
            <node concept="2ShNRf" id="p5" role="3cqZAk">
              <uo k="s:originTrace" v="n:6922106699764123717" />
              <node concept="YeOm9" id="p6" role="2ShVmc">
                <uo k="s:originTrace" v="n:6922106699764123717" />
                <node concept="1Y3b0j" id="p7" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:6922106699764123717" />
                  <node concept="3Tm1VV" id="p8" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6922106699764123717" />
                  </node>
                  <node concept="3clFb_" id="p9" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:6922106699764123717" />
                    <node concept="3Tm1VV" id="pb" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6922106699764123717" />
                    </node>
                    <node concept="3uibUv" id="pc" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:6922106699764123717" />
                    </node>
                    <node concept="3clFbS" id="pd" role="3clF47">
                      <uo k="s:originTrace" v="n:6922106699764123717" />
                      <node concept="3cpWs6" id="pf" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6922106699764123717" />
                        <node concept="2ShNRf" id="pg" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6922106699764123717" />
                          <node concept="1pGfFk" id="ph" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:6922106699764123717" />
                            <node concept="Xl_RD" id="pi" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590382(jetbrains.mps.lang.test.constraints)" />
                              <uo k="s:originTrace" v="n:6922106699764123717" />
                            </node>
                            <node concept="Xl_RD" id="pj" role="37wK5m">
                              <property role="Xl_RC" value="6922106699764123717" />
                              <uo k="s:originTrace" v="n:6922106699764123717" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="pe" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6922106699764123717" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="pa" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:6922106699764123717" />
                    <node concept="3Tm1VV" id="pk" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6922106699764123717" />
                    </node>
                    <node concept="3uibUv" id="pl" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:6922106699764123717" />
                    </node>
                    <node concept="37vLTG" id="pm" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:6922106699764123717" />
                      <node concept="3uibUv" id="pp" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:6922106699764123717" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="pn" role="3clF47">
                      <uo k="s:originTrace" v="n:6922106699764123717" />
                      <node concept="3clFbF" id="pq" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6922106699764123720" />
                        <node concept="2ShNRf" id="pr" role="3clFbG">
                          <uo k="s:originTrace" v="n:6922106699764123722" />
                          <node concept="YeOm9" id="ps" role="2ShVmc">
                            <uo k="s:originTrace" v="n:6922106699764123724" />
                            <node concept="1Y3b0j" id="pt" role="YeSDq">
                              <property role="2bfB8j" value="true" />
                              <property role="373rjd" value="true" />
                              <property role="TrG5h" value="FilteringScope" />
                              <property role="jj94n" value="FilteringScope" />
                              <ref role="1Y3XeK" to="o8zo:3rV3sBXetA0" resolve="FilteringScope" />
                              <ref role="37wK5l" to="o8zo:3rV3sBXetA2" resolve="FilteringScope" />
                              <uo k="s:originTrace" v="n:6922106699764123727" />
                              <node concept="2OqwBi" id="pu" role="37wK5m">
                                <uo k="s:originTrace" v="n:6922106699764123729" />
                                <node concept="2OqwBi" id="pw" role="2Oq$k0">
                                  <node concept="37vLTw" id="py" role="2Oq$k0">
                                    <ref role="3cqZAo" node="pm" resolve="_context" />
                                  </node>
                                  <node concept="liA8E" id="pz" role="2OqNvi">
                                    <ref role="37wK5l" to="ze1i:~ReferenceConstraintsContext.getScopeEvaluationContext()" resolve="getScopeEvaluationContext" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="px" role="2OqNvi">
                                  <ref role="37wK5l" to="ze1i:~EvaluateScopeContext.ofNodesDefault(org.jetbrains.mps.openapi.model.SModel,org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="ofNodesDefault" />
                                  <node concept="2OqwBi" id="p$" role="37wK5m">
                                    <node concept="37vLTw" id="pA" role="2Oq$k0">
                                      <ref role="3cqZAo" node="pm" resolve="_context" />
                                    </node>
                                    <node concept="liA8E" id="pB" role="2OqNvi">
                                      <ref role="37wK5l" to="ze1i:~ReferenceConstraintsContext.getModel()" resolve="getModel" />
                                    </node>
                                  </node>
                                  <node concept="35c_gC" id="p_" role="37wK5m">
                                    <ref role="35c_gD" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFb_" id="pv" role="jymVt">
                                <property role="TrG5h" value="isExcluded" />
                                <uo k="s:originTrace" v="n:6922106699764123730" />
                                <node concept="3Tm1VV" id="pC" role="1B3o_S">
                                  <uo k="s:originTrace" v="n:6922106699764123734" />
                                </node>
                                <node concept="10P_77" id="pD" role="3clF45">
                                  <uo k="s:originTrace" v="n:6922106699764123735" />
                                </node>
                                <node concept="37vLTG" id="pE" role="3clF46">
                                  <property role="TrG5h" value="node" />
                                  <uo k="s:originTrace" v="n:6922106699764123736" />
                                  <node concept="3Tqbb2" id="pG" role="1tU5fm">
                                    <uo k="s:originTrace" v="n:6922106699764123738" />
                                  </node>
                                </node>
                                <node concept="3clFbS" id="pF" role="3clF47">
                                  <uo k="s:originTrace" v="n:6922106699764123739" />
                                  <node concept="3cpWs6" id="pH" role="3cqZAp">
                                    <uo k="s:originTrace" v="n:6922106699764123740" />
                                    <node concept="22lmx$" id="pI" role="3cqZAk">
                                      <uo k="s:originTrace" v="n:8418587318376764409" />
                                      <node concept="22lmx$" id="pJ" role="3uHU7B">
                                        <uo k="s:originTrace" v="n:8418587318376745086" />
                                        <node concept="2OqwBi" id="pL" role="3uHU7B">
                                          <uo k="s:originTrace" v="n:6922106699764149094" />
                                          <node concept="2OqwBi" id="pN" role="2Oq$k0">
                                            <uo k="s:originTrace" v="n:6922106699764149097" />
                                            <node concept="1PxgMI" id="pP" role="2Oq$k0">
                                              <property role="1BlNFB" value="false" />
                                              <uo k="s:originTrace" v="n:6922106699764149100" />
                                              <node concept="37vLTw" id="pR" role="1m5AlR">
                                                <ref role="3cqZAo" node="pE" resolve="node" />
                                                <uo k="s:originTrace" v="n:6922106699764149103" />
                                              </node>
                                              <node concept="chp4Y" id="pS" role="3oSUPX">
                                                <ref role="cht4Q" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                                                <uo k="s:originTrace" v="n:6922106699764149104" />
                                              </node>
                                            </node>
                                            <node concept="3TrcHB" id="pQ" role="2OqNvi">
                                              <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                                              <uo k="s:originTrace" v="n:6922106699764149105" />
                                            </node>
                                          </node>
                                          <node concept="21noJN" id="pO" role="2OqNvi">
                                            <uo k="s:originTrace" v="n:6922106699764149106" />
                                            <node concept="21nZrQ" id="pT" role="21noJM">
                                              <ref role="21nZrZ" to="tpce:3Ftr4R6BFyn" resolve="reference" />
                                              <uo k="s:originTrace" v="n:6922106699764149108" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="2OqwBi" id="pM" role="3uHU7w">
                                          <uo k="s:originTrace" v="n:8418587318376760552" />
                                          <node concept="2OqwBi" id="pU" role="2Oq$k0">
                                            <uo k="s:originTrace" v="n:8418587318376750714" />
                                            <node concept="1PxgMI" id="pW" role="2Oq$k0">
                                              <uo k="s:originTrace" v="n:8418587318376748497" />
                                              <node concept="chp4Y" id="pY" role="3oSUPX">
                                                <ref role="cht4Q" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                                                <uo k="s:originTrace" v="n:8418587318376749432" />
                                              </node>
                                              <node concept="37vLTw" id="pZ" role="1m5AlR">
                                                <ref role="3cqZAo" node="pE" resolve="node" />
                                                <uo k="s:originTrace" v="n:8418587318376747106" />
                                              </node>
                                            </node>
                                            <node concept="3TrcHB" id="pX" role="2OqNvi">
                                              <ref role="3TsBF5" to="tpce:3Ftr4R6BH8A" resolve="sourceCardinality" />
                                              <uo k="s:originTrace" v="n:8418587318376759380" />
                                            </node>
                                          </node>
                                          <node concept="21noJN" id="pV" role="2OqNvi">
                                            <uo k="s:originTrace" v="n:8418587318376762043" />
                                            <node concept="21nZrQ" id="q0" role="21noJM">
                                              <ref role="21nZrZ" to="tpce:3Ftr4R6BFyh" resolve="_0__1" />
                                              <uo k="s:originTrace" v="n:8418587318376762045" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="2OqwBi" id="pK" role="3uHU7w">
                                        <uo k="s:originTrace" v="n:8418587318376764732" />
                                        <node concept="2OqwBi" id="q1" role="2Oq$k0">
                                          <uo k="s:originTrace" v="n:8418587318376764733" />
                                          <node concept="1PxgMI" id="q3" role="2Oq$k0">
                                            <uo k="s:originTrace" v="n:8418587318376764734" />
                                            <node concept="chp4Y" id="q5" role="3oSUPX">
                                              <ref role="cht4Q" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                                              <uo k="s:originTrace" v="n:8418587318376764735" />
                                            </node>
                                            <node concept="37vLTw" id="q6" role="1m5AlR">
                                              <ref role="3cqZAo" node="pE" resolve="node" />
                                              <uo k="s:originTrace" v="n:8418587318376764736" />
                                            </node>
                                          </node>
                                          <node concept="3TrcHB" id="q4" role="2OqNvi">
                                            <ref role="3TsBF5" to="tpce:3Ftr4R6BH8A" resolve="sourceCardinality" />
                                            <uo k="s:originTrace" v="n:8418587318376764737" />
                                          </node>
                                        </node>
                                        <node concept="21noJN" id="q2" role="2OqNvi">
                                          <uo k="s:originTrace" v="n:8418587318376764738" />
                                          <node concept="21nZrQ" id="q7" role="21noJM">
                                            <ref role="21nZrZ" to="tpce:3Ftr4R6BFyi" resolve="_1" />
                                            <uo k="s:originTrace" v="n:8418587318376764739" />
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
                    <node concept="2AHcQZ" id="po" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6922106699764123717" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="p3" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:6922106699764123715" />
        </node>
      </node>
      <node concept="3uibUv" id="oJ" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:6922106699764123715" />
      </node>
    </node>
  </node>
</model>

