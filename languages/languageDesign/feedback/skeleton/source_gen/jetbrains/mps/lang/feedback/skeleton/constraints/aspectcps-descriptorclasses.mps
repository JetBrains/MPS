<?xml version="1.0" encoding="UTF-8"?>
<model ref="00000000-0000-4000-5f02-5beb5f025beb/i:f3c9d40(checkpoints/jetbrains.mps.lang.feedback.skeleton.constraints@descriptorclasses)">
  <persistence version="9" />
  <attribute name="checkpoint" value="DescriptorClasses" />
  <attribute name="generation-plan" value="AspectCPS" />
  <attribute name="user-objects" value="true" />
  <languages />
  <imports>
    <import index="eeon" ref="r:99749b65-b7fc-4566-b6a7-ca55328bd881(jetbrains.mps.lang.feedback.skeleton.constraints)" />
    <import index="wff5" ref="r:2ac18004-8536-478a-bf05-03a0f407633f(jetbrains.mps.lang.feedback.skeleton.structure)" />
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="79pl" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.runtime.base(MPS.Core/)" />
    <import index="tpcg" ref="r:00000000-0000-4000-0000-011c8959028c(jetbrains.mps.lang.structure.constraints)" />
    <import index="m5dg" ref="r:cc9efe31-86c5-4ceb-80d1-8a8efeb255e0(jetbrains.mps.lang.feedback.skeleton.plugin)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="2k9e" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter.structure(MPS.Core/)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="35tq" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.scope(MPS.Core/)" />
    <import index="ze1i" ref="8e98f4e2-decf-4e97-bf80-9109e8b759ee/java:jetbrains.mps.smodel.runtime(jetbrains.mps.lang.constraints.rules.runtime/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="79pm" ref="8e98f4e2-decf-4e97-bf80-9109e8b759ee/java:jetbrains.mps.smodel.runtime.base(jetbrains.mps.lang.constraints.rules.runtime/)" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="3235159848334022093" name="jetbrains.mps.lang.behavior.structure.Node_ConceptMethodCall" flags="nn" index="3zqWPK" />
    </language>
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
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
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
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
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
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
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
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
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
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
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
    <language id="69b8a993-9b87-4d96-bf0c-3559f4bb0c63" name="jetbrains.mps.lang.slanguage">
      <concept id="2030416617761226491" name="jetbrains.mps.lang.slanguage.structure.Model_IsAspectOperation" flags="nn" index="3zA4fs">
        <reference id="2030416617761226680" name="aspect" index="3zA4av" />
      </concept>
    </language>
    <language id="446c26eb-2b7b-4bf0-9b35-f83fa582753e" name="jetbrains.mps.lang.modelapi">
      <concept id="4733039728785194814" name="jetbrains.mps.lang.modelapi.structure.NamedNodeReference" flags="ng" index="ZC_QK">
        <reference id="7256306938026143658" name="target" index="2aWVGs" />
      </concept>
    </language>
    <language id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal">
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
      <concept id="7400021826774799413" name="jetbrains.mps.lang.smodel.structure.NodePointerExpression" flags="ng" index="2tJFMh">
        <child id="7400021826774799510" name="ref" index="2tJFKM" />
      </concept>
      <concept id="4065387505485742749" name="jetbrains.mps.lang.smodel.structure.AbstractPointerResolveOperation" flags="ng" index="2yCiFS">
        <child id="3648723375513868575" name="repositoryArg" index="Vysub" />
      </concept>
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="3648723375513868532" name="jetbrains.mps.lang.smodel.structure.NodePointer_ResolveOperation" flags="ng" index="Vyspw" />
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz">
        <reference id="6677504323281689839" name="conceptDeclaration" index="3bZ5Sy" />
      </concept>
      <concept id="1154546950173" name="jetbrains.mps.lang.smodel.structure.ConceptReference" flags="ng" index="3gn64h">
        <reference id="1154546997487" name="concept" index="3gnhBz" />
      </concept>
      <concept id="6039268229364358244" name="jetbrains.mps.lang.smodel.structure.ExactConceptCase" flags="ng" index="1pnPoh">
        <child id="6039268229364358388" name="body" index="1pnPq1" />
        <child id="6039268229364358387" name="concept" index="1pnPq6" />
      </concept>
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="5944356402132808749" name="jetbrains.mps.lang.smodel.structure.ConceptSwitchStatement" flags="nn" index="1_3QMa">
        <child id="6039268229365417680" name="defaultBlock" index="1prKM_" />
        <child id="5944356402132808753" name="case" index="1_3QMm" />
        <child id="5944356402132808752" name="expression" index="1_3QMn" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1235573135402" name="jetbrains.mps.baseLanguage.collections.structure.SingletonSequenceCreator" flags="nn" index="2HTt$P">
        <child id="1235573175711" name="elementType" index="2HTBi0" />
        <child id="1235573187520" name="singletonValue" index="2HTEbv" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="0">
    <property role="TrG5h" value="ConstraintsAspectDescriptor" />
    <property role="3GE5qa" value="Constraints" />
    <node concept="3uibUv" id="1" role="1zkMxy">
      <ref role="3uigEE" to="ze1i:~BaseConstraintsAspectDescriptor" resolve="BaseConstraintsAspectDescriptor" />
    </node>
    <node concept="3Tm1VV" id="2" role="1B3o_S" />
    <node concept="3clFbW" id="3" role="jymVt">
      <node concept="3cqZAl" id="6" role="3clF45" />
      <node concept="3Tm1VV" id="7" role="1B3o_S" />
      <node concept="3clFbS" id="8" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="4" role="jymVt" />
    <node concept="3clFb_" id="5" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getConstraints" />
      <property role="DiZV1" value="false" />
      <node concept="2AHcQZ" id="9" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="a" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3Tm1VV" id="b" role="1B3o_S" />
      <node concept="3uibUv" id="c" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
      </node>
      <node concept="37vLTG" id="d" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3bZ5Sz" id="g" role="1tU5fm" />
        <node concept="2AHcQZ" id="h" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="e" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="i" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
        </node>
        <node concept="2AHcQZ" id="j" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="f" role="3clF47">
        <node concept="1_3QMa" id="k" role="3cqZAp">
          <node concept="37vLTw" id="m" role="1_3QMn">
            <ref role="3cqZAo" node="d" resolve="concept" />
          </node>
          <node concept="1pnPoh" id="n" role="1_3QMm">
            <node concept="3clFbS" id="p" role="1pnPq1">
              <node concept="3cpWs6" id="r" role="3cqZAp">
                <node concept="2ShNRf" id="s" role="3cqZAk">
                  <node concept="1pGfFk" id="t" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="z" resolve="FeedbackPerConceptRoot_Constraints" />
                    <node concept="37vLTw" id="u" role="37wK5m">
                      <ref role="3cqZAo" node="e" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="q" role="1pnPq6">
              <ref role="3gnhBz" to="wff5:6kKc3mjFxo7" resolve="FeedbackPerConceptRoot" />
            </node>
          </node>
          <node concept="3clFbS" id="o" role="1prKM_" />
        </node>
        <node concept="3cpWs6" id="l" role="3cqZAp">
          <node concept="10Nm6u" id="v" role="3cqZAk" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="w">
    <property role="TrG5h" value="FeedbackPerConceptRoot_Constraints" />
    <uo k="s:originTrace" v="n:4754973013260675690" />
    <node concept="3Tm1VV" id="x" role="1B3o_S">
      <uo k="s:originTrace" v="n:4754973013260675690" />
    </node>
    <node concept="3uibUv" id="y" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:4754973013260675690" />
    </node>
    <node concept="3clFbW" id="z" role="jymVt">
      <uo k="s:originTrace" v="n:4754973013260675690" />
      <node concept="37vLTG" id="B" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:4754973013260675690" />
        <node concept="3uibUv" id="E" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:4754973013260675690" />
        </node>
      </node>
      <node concept="3cqZAl" id="C" role="3clF45">
        <uo k="s:originTrace" v="n:4754973013260675690" />
      </node>
      <node concept="3clFbS" id="D" role="3clF47">
        <uo k="s:originTrace" v="n:4754973013260675690" />
        <node concept="XkiVB" id="F" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:4754973013260675690" />
          <node concept="1BaE9c" id="I" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="FeedbackPerConceptRoot$Vm" />
            <uo k="s:originTrace" v="n:4754973013260675690" />
            <node concept="2YIFZM" id="K" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:4754973013260675690" />
              <node concept="11gdke" id="L" role="37wK5m">
                <property role="11gdj1" value="517077fde44f4338L" />
                <uo k="s:originTrace" v="n:4754973013260675690" />
              </node>
              <node concept="11gdke" id="M" role="37wK5m">
                <property role="11gdj1" value="a4751d29781dfdb8L" />
                <uo k="s:originTrace" v="n:4754973013260675690" />
              </node>
              <node concept="11gdke" id="N" role="37wK5m">
                <property role="11gdj1" value="6530303593ae1607L" />
                <uo k="s:originTrace" v="n:4754973013260675690" />
              </node>
              <node concept="Xl_RD" id="O" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.feedback.skeleton.structure.FeedbackPerConceptRoot" />
                <uo k="s:originTrace" v="n:4754973013260675690" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="J" role="37wK5m">
            <ref role="3cqZAo" node="B" resolve="initContext" />
            <uo k="s:originTrace" v="n:4754973013260675690" />
          </node>
        </node>
        <node concept="3clFbF" id="G" role="3cqZAp">
          <uo k="s:originTrace" v="n:4754973013260675690" />
          <node concept="1rXfSq" id="P" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.PropertyConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:4754973013260675690" />
            <node concept="2ShNRf" id="Q" role="37wK5m">
              <uo k="s:originTrace" v="n:4754973013260675690" />
              <node concept="1pGfFk" id="R" role="2ShVmc">
                <ref role="37wK5l" node="X" resolve="FeedbackPerConceptRoot_Constraints.Name_PD" />
                <uo k="s:originTrace" v="n:4754973013260675690" />
                <node concept="Xjq3P" id="S" role="37wK5m">
                  <uo k="s:originTrace" v="n:4754973013260675690" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="H" role="3cqZAp">
          <uo k="s:originTrace" v="n:4754973013260675690" />
          <node concept="1rXfSq" id="T" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:4754973013260675690" />
            <node concept="2ShNRf" id="U" role="37wK5m">
              <uo k="s:originTrace" v="n:4754973013260675690" />
              <node concept="1pGfFk" id="V" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="2k" resolve="FeedbackPerConceptRoot_Constraints.RD1" />
                <uo k="s:originTrace" v="n:4754973013260675690" />
                <node concept="Xjq3P" id="W" role="37wK5m">
                  <uo k="s:originTrace" v="n:4754973013260675690" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="$" role="jymVt">
      <uo k="s:originTrace" v="n:4754973013260675690" />
    </node>
    <node concept="312cEu" id="_" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="Name_PD" />
      <uo k="s:originTrace" v="n:4754973013260675690" />
      <node concept="3clFbW" id="X" role="jymVt">
        <uo k="s:originTrace" v="n:4754973013260675690" />
        <node concept="3cqZAl" id="10" role="3clF45">
          <uo k="s:originTrace" v="n:4754973013260675690" />
        </node>
        <node concept="3Tm1VV" id="11" role="1B3o_S">
          <uo k="s:originTrace" v="n:4754973013260675690" />
        </node>
        <node concept="3clFbS" id="12" role="3clF47">
          <uo k="s:originTrace" v="n:4754973013260675690" />
          <node concept="XkiVB" id="14" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BasePropertyConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean,boolean)" resolve="BasePropertyConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:4754973013260675690" />
            <node concept="1BaE9c" id="15" role="37wK5m">
              <property role="1ouuDV" value="PROPS" />
              <property role="1BaxDp" value="name$MnvL" />
              <uo k="s:originTrace" v="n:4754973013260675690" />
              <node concept="2YIFZM" id="1a" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:4754973013260675690" />
                <node concept="11gdke" id="1b" role="37wK5m">
                  <property role="11gdj1" value="ceab519525ea4f22L" />
                  <uo k="s:originTrace" v="n:4754973013260675690" />
                </node>
                <node concept="11gdke" id="1c" role="37wK5m">
                  <property role="11gdj1" value="9b92103b95ca8c0cL" />
                  <uo k="s:originTrace" v="n:4754973013260675690" />
                </node>
                <node concept="11gdke" id="1d" role="37wK5m">
                  <property role="11gdj1" value="110396eaaa4L" />
                  <uo k="s:originTrace" v="n:4754973013260675690" />
                </node>
                <node concept="11gdke" id="1e" role="37wK5m">
                  <property role="11gdj1" value="110396ec041L" />
                  <uo k="s:originTrace" v="n:4754973013260675690" />
                </node>
                <node concept="Xl_RD" id="1f" role="37wK5m">
                  <property role="Xl_RC" value="name" />
                  <uo k="s:originTrace" v="n:4754973013260675690" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="16" role="37wK5m">
              <ref role="3cqZAo" node="13" resolve="container" />
              <uo k="s:originTrace" v="n:4754973013260675690" />
            </node>
            <node concept="3clFbT" id="17" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:4754973013260675690" />
            </node>
            <node concept="3clFbT" id="18" role="37wK5m">
              <uo k="s:originTrace" v="n:4754973013260675690" />
            </node>
            <node concept="3clFbT" id="19" role="37wK5m">
              <uo k="s:originTrace" v="n:4754973013260675690" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="13" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:4754973013260675690" />
          <node concept="3uibUv" id="1g" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:4754973013260675690" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="Y" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getValue" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:4754973013260675690" />
        <node concept="3Tm1VV" id="1h" role="1B3o_S">
          <uo k="s:originTrace" v="n:4754973013260675690" />
        </node>
        <node concept="3uibUv" id="1i" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          <uo k="s:originTrace" v="n:4754973013260675690" />
        </node>
        <node concept="37vLTG" id="1j" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:4754973013260675690" />
          <node concept="3Tqbb2" id="1m" role="1tU5fm">
            <uo k="s:originTrace" v="n:4754973013260675690" />
          </node>
        </node>
        <node concept="2AHcQZ" id="1k" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:4754973013260675690" />
        </node>
        <node concept="3clFbS" id="1l" role="3clF47">
          <uo k="s:originTrace" v="n:7291380803380188372" />
          <node concept="3cpWs8" id="1n" role="3cqZAp">
            <uo k="s:originTrace" v="n:1213100929839" />
            <node concept="3cpWsn" id="1t" role="3cpWs9">
              <property role="TrG5h" value="conceptName" />
              <uo k="s:originTrace" v="n:1213100929840" />
              <node concept="17QB3L" id="1u" role="1tU5fm">
                <uo k="s:originTrace" v="n:4853609160932866520" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="1o" role="3cqZAp">
            <uo k="s:originTrace" v="n:1213100934016" />
            <node concept="3clFbS" id="1v" role="3clFbx">
              <uo k="s:originTrace" v="n:1213100934017" />
              <node concept="3clFbF" id="1y" role="3cqZAp">
                <uo k="s:originTrace" v="n:1213100946736" />
                <node concept="37vLTI" id="1z" role="3clFbG">
                  <uo k="s:originTrace" v="n:1213100947769" />
                  <node concept="2OqwBi" id="1$" role="37vLTx">
                    <uo k="s:originTrace" v="n:1213100952543" />
                    <node concept="2OqwBi" id="1A" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:1213100949414" />
                      <node concept="37vLTw" id="1C" role="2Oq$k0">
                        <ref role="3cqZAo" node="1j" resolve="node" />
                        <uo k="s:originTrace" v="n:1213100949163" />
                      </node>
                      <node concept="3TrEf2" id="1D" role="2OqNvi">
                        <ref role="3Tt5mk" to="wff5:6f2WQqsTmPt" resolve="concept" />
                        <uo k="s:originTrace" v="n:1156124709979210432" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="1B" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      <uo k="s:originTrace" v="n:1213100953109" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="1_" role="37vLTJ">
                    <ref role="3cqZAo" node="1t" resolve="conceptName" />
                    <uo k="s:originTrace" v="n:4265636116363094972" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="1w" role="3clFbw">
              <uo k="s:originTrace" v="n:1213100937665" />
              <node concept="2OqwBi" id="1E" role="2Oq$k0">
                <uo k="s:originTrace" v="n:1213100934911" />
                <node concept="37vLTw" id="1G" role="2Oq$k0">
                  <ref role="3cqZAo" node="1j" resolve="node" />
                  <uo k="s:originTrace" v="n:6465435720988325133" />
                </node>
                <node concept="3TrEf2" id="1H" role="2OqNvi">
                  <ref role="3Tt5mk" to="wff5:6f2WQqsTmPt" resolve="concept" />
                  <uo k="s:originTrace" v="n:4754973013260680356" />
                </node>
              </node>
              <node concept="3x8VRR" id="1F" role="2OqNvi">
                <uo k="s:originTrace" v="n:1213100939075" />
              </node>
            </node>
            <node concept="9aQIb" id="1x" role="9aQIa">
              <uo k="s:originTrace" v="n:1213100942967" />
              <node concept="3clFbS" id="1I" role="9aQI4">
                <uo k="s:originTrace" v="n:1213100942968" />
                <node concept="3clFbF" id="1J" role="3cqZAp">
                  <uo k="s:originTrace" v="n:1213100955391" />
                  <node concept="37vLTI" id="1K" role="3clFbG">
                    <uo k="s:originTrace" v="n:1213100956627" />
                    <node concept="Xl_RD" id="1L" role="37vLTx">
                      <property role="Xl_RC" value="???" />
                      <uo k="s:originTrace" v="n:1213100957193" />
                    </node>
                    <node concept="37vLTw" id="1M" role="37vLTJ">
                      <ref role="3cqZAo" node="1t" resolve="conceptName" />
                      <uo k="s:originTrace" v="n:4265636116363075180" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1p" role="3cqZAp">
            <uo k="s:originTrace" v="n:3731679174936486556" />
            <node concept="3cpWsn" id="1N" role="3cpWs9">
              <property role="TrG5h" value="model" />
              <uo k="s:originTrace" v="n:3731679174936486557" />
              <node concept="H_c77" id="1O" role="1tU5fm">
                <uo k="s:originTrace" v="n:3731679174936483537" />
              </node>
              <node concept="2OqwBi" id="1P" role="33vP2m">
                <uo k="s:originTrace" v="n:3731679174936486558" />
                <node concept="37vLTw" id="1Q" role="2Oq$k0">
                  <ref role="3cqZAo" node="1j" resolve="node" />
                  <uo k="s:originTrace" v="n:3731679174936486559" />
                </node>
                <node concept="I4A8Y" id="1R" role="2OqNvi">
                  <uo k="s:originTrace" v="n:3731679174936486560" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="1q" role="3cqZAp">
            <uo k="s:originTrace" v="n:8018723092205924861" />
            <node concept="3clFbS" id="1S" role="3clFbx">
              <uo k="s:originTrace" v="n:8018723092205924863" />
              <node concept="3cpWs6" id="1U" role="3cqZAp">
                <uo k="s:originTrace" v="n:8018723092205929313" />
                <node concept="3cpWs3" id="1V" role="3cqZAk">
                  <uo k="s:originTrace" v="n:8018723092205931252" />
                  <node concept="Xl_RD" id="1W" role="3uHU7w">
                    <property role="Xl_RC" value="_Feedback" />
                    <uo k="s:originTrace" v="n:8018723092205931436" />
                  </node>
                  <node concept="37vLTw" id="1X" role="3uHU7B">
                    <ref role="3cqZAo" node="1t" resolve="conceptName" />
                    <uo k="s:originTrace" v="n:8018723092205929496" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="22lmx$" id="1T" role="3clFbw">
              <uo k="s:originTrace" v="n:3731679174936488509" />
              <node concept="3clFbC" id="1Y" role="3uHU7B">
                <uo k="s:originTrace" v="n:3731679174936489460" />
                <node concept="10Nm6u" id="20" role="3uHU7w">
                  <uo k="s:originTrace" v="n:3731679174936489470" />
                </node>
                <node concept="37vLTw" id="21" role="3uHU7B">
                  <ref role="3cqZAo" node="1N" resolve="model" />
                  <uo k="s:originTrace" v="n:3731679174936488727" />
                </node>
              </node>
              <node concept="2OqwBi" id="1Z" role="3uHU7w">
                <uo k="s:originTrace" v="n:8018723092205928460" />
                <node concept="37vLTw" id="22" role="2Oq$k0">
                  <ref role="3cqZAo" node="1N" resolve="model" />
                  <uo k="s:originTrace" v="n:3731679174936486561" />
                </node>
                <node concept="3zA4fs" id="23" role="2OqNvi">
                  <ref role="3zA4av" to="m5dg:5sUTrySNtVx" resolve="feedback" />
                  <uo k="s:originTrace" v="n:8018723092205928964" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1r" role="3cqZAp">
            <uo k="s:originTrace" v="n:8018723092205889657" />
            <node concept="3cpWsn" id="24" role="3cpWs9">
              <property role="TrG5h" value="simpleName" />
              <uo k="s:originTrace" v="n:8018723092205889658" />
              <node concept="3uibUv" id="25" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                <uo k="s:originTrace" v="n:8018723092205889615" />
              </node>
              <node concept="2YIFZM" id="26" role="33vP2m">
                <ref role="37wK5l" to="18ew:~NameUtil.capitalize(java.lang.String)" resolve="capitalize" />
                <ref role="1Pybhc" to="18ew:~NameUtil" resolve="NameUtil" />
                <uo k="s:originTrace" v="n:8018723092205921244" />
                <node concept="2OqwBi" id="27" role="37wK5m">
                  <uo k="s:originTrace" v="n:8018723092205889659" />
                  <node concept="2OqwBi" id="28" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:8018723092205889660" />
                    <node concept="2JrnkZ" id="2a" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:8018723092205889661" />
                      <node concept="37vLTw" id="2c" role="2JrQYb">
                        <ref role="3cqZAo" node="1N" resolve="model" />
                        <uo k="s:originTrace" v="n:3731679174936486562" />
                      </node>
                    </node>
                    <node concept="liA8E" id="2b" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                      <uo k="s:originTrace" v="n:8018723092205889665" />
                    </node>
                  </node>
                  <node concept="liA8E" id="29" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SModelName.getSimpleName()" resolve="getSimpleName" />
                    <uo k="s:originTrace" v="n:8018723092205889666" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="1s" role="3cqZAp">
            <uo k="s:originTrace" v="n:1213100959039" />
            <node concept="3cpWs3" id="2d" role="3cqZAk">
              <uo k="s:originTrace" v="n:8018723092205881740" />
              <node concept="Xl_RD" id="2e" role="3uHU7w">
                <property role="Xl_RC" value="Feedback" />
                <uo k="s:originTrace" v="n:1213100961951" />
              </node>
              <node concept="3cpWs3" id="2f" role="3uHU7B">
                <uo k="s:originTrace" v="n:8018723092205935131" />
                <node concept="37vLTw" id="2g" role="3uHU7w">
                  <ref role="3cqZAo" node="24" resolve="simpleName" />
                  <uo k="s:originTrace" v="n:8018723092205889667" />
                </node>
                <node concept="3cpWs3" id="2h" role="3uHU7B">
                  <uo k="s:originTrace" v="n:1213100961401" />
                  <node concept="37vLTw" id="2i" role="3uHU7B">
                    <ref role="3cqZAo" node="1t" resolve="conceptName" />
                    <uo k="s:originTrace" v="n:4265636116363074589" />
                  </node>
                  <node concept="Xl_RD" id="2j" role="3uHU7w">
                    <property role="Xl_RC" value="_" />
                    <uo k="s:originTrace" v="n:8018723092205935329" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="Z" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BasePropertyConstraintsDescriptor" resolve="BasePropertyConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:4754973013260675690" />
      </node>
    </node>
    <node concept="312cEu" id="A" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:4754973013260675690" />
      <node concept="3clFbW" id="2k" role="jymVt">
        <uo k="s:originTrace" v="n:4754973013260675690" />
        <node concept="37vLTG" id="2n" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:4754973013260675690" />
          <node concept="3uibUv" id="2q" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:4754973013260675690" />
          </node>
        </node>
        <node concept="3cqZAl" id="2o" role="3clF45">
          <uo k="s:originTrace" v="n:4754973013260675690" />
        </node>
        <node concept="3clFbS" id="2p" role="3clF47">
          <uo k="s:originTrace" v="n:4754973013260675690" />
          <node concept="XkiVB" id="2r" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:4754973013260675690" />
            <node concept="1BaE9c" id="2s" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="concept$NMNv" />
              <uo k="s:originTrace" v="n:4754973013260675690" />
              <node concept="2YIFZM" id="2w" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:4754973013260675690" />
                <node concept="11gdke" id="2x" role="37wK5m">
                  <property role="11gdj1" value="517077fde44f4338L" />
                  <uo k="s:originTrace" v="n:4754973013260675690" />
                </node>
                <node concept="11gdke" id="2y" role="37wK5m">
                  <property role="11gdj1" value="a4751d29781dfdb8L" />
                  <uo k="s:originTrace" v="n:4754973013260675690" />
                </node>
                <node concept="11gdke" id="2z" role="37wK5m">
                  <property role="11gdj1" value="6530303593ae1607L" />
                  <uo k="s:originTrace" v="n:4754973013260675690" />
                </node>
                <node concept="11gdke" id="2$" role="37wK5m">
                  <property role="11gdj1" value="63c2f3669ce56d5dL" />
                  <uo k="s:originTrace" v="n:4754973013260675690" />
                </node>
                <node concept="Xl_RD" id="2_" role="37wK5m">
                  <property role="Xl_RC" value="concept" />
                  <uo k="s:originTrace" v="n:4754973013260675690" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2t" role="37wK5m">
              <ref role="3cqZAo" node="2n" resolve="container" />
              <uo k="s:originTrace" v="n:4754973013260675690" />
            </node>
            <node concept="3clFbT" id="2u" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:4754973013260675690" />
            </node>
            <node concept="3clFbT" id="2v" role="37wK5m">
              <uo k="s:originTrace" v="n:4754973013260675690" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="2l" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:4754973013260675690" />
        <node concept="3Tm1VV" id="2A" role="1B3o_S">
          <uo k="s:originTrace" v="n:4754973013260675690" />
        </node>
        <node concept="3uibUv" id="2B" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:4754973013260675690" />
        </node>
        <node concept="2AHcQZ" id="2C" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:4754973013260675690" />
        </node>
        <node concept="3clFbS" id="2D" role="3clF47">
          <uo k="s:originTrace" v="n:4754973013260675690" />
          <node concept="3cpWs6" id="2F" role="3cqZAp">
            <uo k="s:originTrace" v="n:4754973013260675690" />
            <node concept="2ShNRf" id="2G" role="3cqZAk">
              <uo k="s:originTrace" v="n:6836281137582781546" />
              <node concept="YeOm9" id="2H" role="2ShVmc">
                <uo k="s:originTrace" v="n:6836281137582781546" />
                <node concept="1Y3b0j" id="2I" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:6836281137582781546" />
                  <node concept="3Tm1VV" id="2J" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6836281137582781546" />
                  </node>
                  <node concept="3clFb_" id="2K" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:6836281137582781546" />
                    <node concept="3Tm1VV" id="2M" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582781546" />
                    </node>
                    <node concept="3uibUv" id="2N" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:6836281137582781546" />
                    </node>
                    <node concept="3clFbS" id="2O" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582781546" />
                      <node concept="3cpWs6" id="2Q" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582781546" />
                        <node concept="2ShNRf" id="2R" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582781546" />
                          <node concept="1pGfFk" id="2S" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:6836281137582781546" />
                            <node concept="Xl_RD" id="2T" role="37wK5m">
                              <property role="Xl_RC" value="r:99749b65-b7fc-4566-b6a7-ca55328bd881(jetbrains.mps.lang.feedback.skeleton.constraints)" />
                              <uo k="s:originTrace" v="n:6836281137582781546" />
                            </node>
                            <node concept="Xl_RD" id="2U" role="37wK5m">
                              <property role="Xl_RC" value="6836281137582781546" />
                              <uo k="s:originTrace" v="n:6836281137582781546" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="2P" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582781546" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="2L" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:6836281137582781546" />
                    <node concept="3Tm1VV" id="2V" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582781546" />
                    </node>
                    <node concept="3uibUv" id="2W" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:6836281137582781546" />
                    </node>
                    <node concept="37vLTG" id="2X" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:6836281137582781546" />
                      <node concept="3uibUv" id="30" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:6836281137582781546" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="2Y" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582781546" />
                      <node concept="3clFbJ" id="31" role="3cqZAp">
                        <uo k="s:originTrace" v="n:1054866243102455995" />
                        <node concept="3clFbS" id="35" role="3clFbx">
                          <uo k="s:originTrace" v="n:1054866243102455997" />
                          <node concept="3cpWs8" id="37" role="3cqZAp">
                            <uo k="s:originTrace" v="n:1054866243102493704" />
                            <node concept="3cpWsn" id="39" role="3cpWs9">
                              <property role="TrG5h" value="seq" />
                              <uo k="s:originTrace" v="n:1054866243102493705" />
                              <node concept="A3Dl8" id="3a" role="1tU5fm">
                                <uo k="s:originTrace" v="n:1054866243102493617" />
                                <node concept="3Tqbb2" id="3c" role="A3Ik2">
                                  <uo k="s:originTrace" v="n:1054866243102493620" />
                                </node>
                              </node>
                              <node concept="2ShNRf" id="3b" role="33vP2m">
                                <uo k="s:originTrace" v="n:1054866243102493706" />
                                <node concept="2HTt$P" id="3d" role="2ShVmc">
                                  <uo k="s:originTrace" v="n:1054866243102493707" />
                                  <node concept="3Tqbb2" id="3e" role="2HTBi0">
                                    <uo k="s:originTrace" v="n:1054866243102493708" />
                                  </node>
                                  <node concept="2OqwBi" id="3f" role="2HTEbv">
                                    <uo k="s:originTrace" v="n:1054866243102493709" />
                                    <node concept="2tJFMh" id="3g" role="2Oq$k0">
                                      <uo k="s:originTrace" v="n:1054866243102493710" />
                                      <node concept="ZC_QK" id="3i" role="2tJFKM">
                                        <ref role="2aWVGs" to="tpck:gw2VY9q" resolve="BaseConcept" />
                                        <uo k="s:originTrace" v="n:1054866243102493711" />
                                      </node>
                                    </node>
                                    <node concept="Vyspw" id="3h" role="2OqNvi">
                                      <uo k="s:originTrace" v="n:1054866243102493712" />
                                      <node concept="2OqwBi" id="3j" role="Vysub">
                                        <uo k="s:originTrace" v="n:1054866243102493713" />
                                        <node concept="2JrnkZ" id="3k" role="2Oq$k0">
                                          <uo k="s:originTrace" v="n:1054866243102493714" />
                                          <node concept="2OqwBi" id="3m" role="2JrQYb">
                                            <uo k="s:originTrace" v="n:1054866243102493715" />
                                            <node concept="1DoJHT" id="3n" role="2Oq$k0">
                                              <property role="1Dpdpm" value="getContextNode" />
                                              <uo k="s:originTrace" v="n:1054866243102493716" />
                                              <node concept="3uibUv" id="3p" role="1Ez5kq">
                                                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                              </node>
                                              <node concept="37vLTw" id="3q" role="1EMhIo">
                                                <ref role="3cqZAo" node="2X" resolve="_context" />
                                              </node>
                                            </node>
                                            <node concept="I4A8Y" id="3o" role="2OqNvi">
                                              <uo k="s:originTrace" v="n:1054866243102493717" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="liA8E" id="3l" role="2OqNvi">
                                          <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
                                          <uo k="s:originTrace" v="n:1054866243102493718" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs6" id="38" role="3cqZAp">
                            <uo k="s:originTrace" v="n:1054866243102461274" />
                            <node concept="2YIFZM" id="3r" role="3cqZAk">
                              <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                              <uo k="s:originTrace" v="n:1054866243102497842" />
                              <node concept="37vLTw" id="3s" role="37wK5m">
                                <ref role="3cqZAo" node="39" resolve="seq" />
                                <uo k="s:originTrace" v="n:1054866243102498367" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="36" role="3clFbw">
                          <uo k="s:originTrace" v="n:1054866243102457265" />
                          <node concept="1DoJHT" id="3t" role="2Oq$k0">
                            <property role="1Dpdpm" value="getContextNode" />
                            <uo k="s:originTrace" v="n:1054866243102456203" />
                            <node concept="3uibUv" id="3v" role="1Ez5kq">
                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                            </node>
                            <node concept="37vLTw" id="3w" role="1EMhIo">
                              <ref role="3cqZAo" node="2X" resolve="_context" />
                            </node>
                          </node>
                          <node concept="3zqWPK" id="3u" role="2OqNvi">
                            <ref role="37wK5l" to="tpcu:hEwIMij" resolve="isInTemplates" />
                            <uo k="s:originTrace" v="n:8085146484218852328" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="32" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582785367" />
                        <node concept="3cpWsn" id="3x" role="3cpWs9">
                          <property role="TrG5h" value="acd" />
                          <uo k="s:originTrace" v="n:6836281137582785368" />
                          <node concept="3bZ5Sz" id="3y" role="1tU5fm">
                            <ref role="3bZ5Sy" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                            <uo k="s:originTrace" v="n:6836281137582785369" />
                          </node>
                          <node concept="35c_gC" id="3z" role="33vP2m">
                            <ref role="35c_gD" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                            <uo k="s:originTrace" v="n:6836281137582785370" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="33" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582785371" />
                        <node concept="3fqX7Q" id="3$" role="3clFbw">
                          <uo k="s:originTrace" v="n:6836281137582785372" />
                          <node concept="2ZW3vV" id="3A" role="3fr31v">
                            <uo k="s:originTrace" v="n:6836281137582785373" />
                            <node concept="3uibUv" id="3B" role="2ZW6by">
                              <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
                              <uo k="s:originTrace" v="n:6836281137582785374" />
                            </node>
                            <node concept="2OqwBi" id="3C" role="2ZW6bz">
                              <uo k="s:originTrace" v="n:6836281137582785375" />
                              <node concept="2JrnkZ" id="3D" role="2Oq$k0">
                                <uo k="s:originTrace" v="n:6836281137582785376" />
                                <node concept="2OqwBi" id="3F" role="2JrQYb">
                                  <uo k="s:originTrace" v="n:6836281137582785377" />
                                  <node concept="1DoJHT" id="3G" role="2Oq$k0">
                                    <property role="1Dpdpm" value="getContextNode" />
                                    <uo k="s:originTrace" v="n:6836281137582785378" />
                                    <node concept="3uibUv" id="3I" role="1Ez5kq">
                                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                    </node>
                                    <node concept="37vLTw" id="3J" role="1EMhIo">
                                      <ref role="3cqZAo" node="2X" resolve="_context" />
                                    </node>
                                  </node>
                                  <node concept="I4A8Y" id="3H" role="2OqNvi">
                                    <uo k="s:originTrace" v="n:6836281137582785379" />
                                  </node>
                                </node>
                              </node>
                              <node concept="liA8E" id="3E" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                                <uo k="s:originTrace" v="n:6836281137582785380" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbS" id="3_" role="3clFbx">
                          <uo k="s:originTrace" v="n:6836281137582785381" />
                          <node concept="3cpWs6" id="3K" role="3cqZAp">
                            <uo k="s:originTrace" v="n:6836281137582785382" />
                            <node concept="2ShNRf" id="3L" role="3cqZAk">
                              <uo k="s:originTrace" v="n:6836281137582785383" />
                              <node concept="1pGfFk" id="3M" role="2ShVmc">
                                <ref role="37wK5l" to="o8zo:4k9eBec$QVW" resolve="ModelPlusImportedScope" />
                                <uo k="s:originTrace" v="n:6836281137582785384" />
                                <node concept="2OqwBi" id="3N" role="37wK5m">
                                  <uo k="s:originTrace" v="n:6836281137582785385" />
                                  <node concept="1DoJHT" id="3Q" role="2Oq$k0">
                                    <property role="1Dpdpm" value="getContextNode" />
                                    <uo k="s:originTrace" v="n:6836281137582785386" />
                                    <node concept="3uibUv" id="3S" role="1Ez5kq">
                                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                    </node>
                                    <node concept="37vLTw" id="3T" role="1EMhIo">
                                      <ref role="3cqZAo" node="2X" resolve="_context" />
                                    </node>
                                  </node>
                                  <node concept="I4A8Y" id="3R" role="2OqNvi">
                                    <uo k="s:originTrace" v="n:6836281137582785387" />
                                  </node>
                                </node>
                                <node concept="3clFbT" id="3O" role="37wK5m">
                                  <property role="3clFbU" value="true" />
                                  <uo k="s:originTrace" v="n:6836281137582785388" />
                                </node>
                                <node concept="37vLTw" id="3P" role="37wK5m">
                                  <ref role="3cqZAo" node="3x" resolve="acd" />
                                  <uo k="s:originTrace" v="n:6836281137582785389" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="34" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582785390" />
                        <node concept="2YIFZM" id="3U" role="3clFbG">
                          <ref role="37wK5l" to="tpcg:6dmIS6Msokd" resolve="forConceptsInSameLanguage" />
                          <ref role="1Pybhc" to="tpcg:6dmIS6MscR9" resolve="Scopes" />
                          <uo k="s:originTrace" v="n:6836281137582785391" />
                          <node concept="2OqwBi" id="3V" role="37wK5m">
                            <uo k="s:originTrace" v="n:6836281137582785392" />
                            <node concept="1DoJHT" id="3X" role="2Oq$k0">
                              <property role="1Dpdpm" value="getContextNode" />
                              <uo k="s:originTrace" v="n:6836281137582785393" />
                              <node concept="3uibUv" id="3Z" role="1Ez5kq">
                                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                              </node>
                              <node concept="37vLTw" id="40" role="1EMhIo">
                                <ref role="3cqZAo" node="2X" resolve="_context" />
                              </node>
                            </node>
                            <node concept="I4A8Y" id="3Y" role="2OqNvi">
                              <uo k="s:originTrace" v="n:6836281137582785394" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="3W" role="37wK5m">
                            <ref role="3cqZAo" node="3x" resolve="acd" />
                            <uo k="s:originTrace" v="n:6836281137582785395" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="2Z" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582781546" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2E" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:4754973013260675690" />
        </node>
      </node>
      <node concept="3uibUv" id="2m" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:4754973013260675690" />
      </node>
    </node>
  </node>
  <node concept="39dXUE" id="41">
    <node concept="39e2AJ" id="42" role="39e2AI">
      <property role="39e3Y2" value="constraintClass" />
      <node concept="39e2AG" id="45" role="39e3Y0">
        <ref role="39e2AK" to="eeon:47X3GcVYaDE" resolve="FeedbackPerConceptRoot_Constraints" />
        <node concept="385nmt" id="46" role="385vvn">
          <property role="385vuF" value="FeedbackPerConceptRoot_Constraints" />
          <node concept="3u3nmq" id="48" role="385v07">
            <property role="3u3nmv" value="4754973013260675690" />
          </node>
        </node>
        <node concept="39e2AT" id="47" role="39e2AY">
          <ref role="39e2AS" node="w" resolve="FeedbackPerConceptRoot_Constraints" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="43" role="39e2AI">
      <property role="39e3Y2" value="constraintClassCons" />
      <node concept="39e2AG" id="49" role="39e3Y0">
        <ref role="39e2AK" to="eeon:47X3GcVYaDE" resolve="FeedbackPerConceptRoot_Constraints" />
        <node concept="385nmt" id="4a" role="385vvn">
          <property role="385vuF" value="FeedbackPerConceptRoot_Constraints" />
          <node concept="3u3nmq" id="4c" role="385v07">
            <property role="3u3nmv" value="4754973013260675690" />
          </node>
        </node>
        <node concept="39e2AT" id="4b" role="39e2AY">
          <ref role="39e2AS" node="z" resolve="FeedbackPerConceptRoot_Constraints" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="44" role="39e2AI">
      <property role="39e3Y2" value="aspectDescriptorClass" />
      <node concept="39e2AG" id="4d" role="39e3Y0">
        <property role="2mV_xN" value="true" />
        <node concept="39e2AT" id="4e" role="39e2AY">
          <ref role="39e2AS" node="0" resolve="ConstraintsAspectDescriptor" />
        </node>
      </node>
    </node>
  </node>
</model>

