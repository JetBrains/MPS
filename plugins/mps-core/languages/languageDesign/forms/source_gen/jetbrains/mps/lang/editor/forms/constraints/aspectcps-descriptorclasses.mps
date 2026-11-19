<?xml version="1.0" encoding="UTF-8"?>
<model ref="00000000-0000-4000-5f02-5beb5f025beb/i:f854e21(checkpoints/jetbrains.mps.lang.editor.forms.constraints@descriptorclasses)">
  <persistence version="9" />
  <attribute name="checkpoint" value="DescriptorClasses" />
  <attribute name="generation-plan" value="AspectCPS" />
  <attribute name="user-objects" value="true" />
  <languages />
  <imports>
    <import index="4i46" ref="r:de912216-b4aa-4118-a243-c861c965b4d9(jetbrains.mps.lang.editor.forms.constraints)" />
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="79pl" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.runtime.base(MPS.Core/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="tpcn" ref="r:00000000-0000-4000-0000-011c8959028b(jetbrains.mps.lang.structure.behavior)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="tpcb" ref="r:00000000-0000-4000-0000-011c89590297(jetbrains.mps.lang.editor.behavior)" />
    <import index="2k9e" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter.structure(MPS.Core/)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="35tq" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.scope(MPS.Core/)" />
    <import index="tpc2" ref="r:00000000-0000-4000-0000-011c8959029e(jetbrains.mps.lang.editor.structure)" />
    <import index="f55a" ref="r:8598bcb3-b739-42c2-b1fc-32c367683d7c(jetbrains.mps.lang.editor.forms.structure)" />
    <import index="ze1i" ref="8e98f4e2-decf-4e97-bf80-9109e8b759ee/java:jetbrains.mps.smodel.runtime(jetbrains.mps.lang.constraints.rules.runtime/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="79pm" ref="8e98f4e2-decf-4e97-bf80-9109e8b759ee/java:jetbrains.mps.smodel.runtime.base(jetbrains.mps.lang.constraints.rules.runtime/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="3235159848334022093" name="jetbrains.mps.lang.behavior.structure.Node_ConceptMethodCall" flags="nn" index="3zqWPK" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
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
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
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
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
        <child id="1201186121363" name="typeParameter" index="2Ghqu4" />
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
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
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
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="2644386474301421077" name="jetbrains.mps.lang.smodel.structure.LinkIdRefExpression" flags="nn" index="359W_D">
        <reference id="2644386474301421078" name="conceptDeclaration" index="359W_E" />
        <reference id="2644386474301421079" name="linkDeclaration" index="359W_F" />
      </concept>
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
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="5944356402132808749" name="jetbrains.mps.lang.smodel.structure.ConceptSwitchStatement" flags="nn" index="1_3QMa">
        <child id="6039268229365417680" name="defaultBlock" index="1prKM_" />
        <child id="5944356402132808753" name="case" index="1_3QMm" />
        <child id="5944356402132808752" name="expression" index="1_3QMn" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
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
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
    </language>
  </registry>
  <node concept="312cEu" id="0">
    <property role="TrG5h" value="CellModel_Checkbox_Constraints" />
    <uo k="s:originTrace" v="n:7569401714696478829" />
    <node concept="3Tm1VV" id="1" role="1B3o_S">
      <uo k="s:originTrace" v="n:7569401714696478829" />
    </node>
    <node concept="3uibUv" id="2" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:7569401714696478829" />
    </node>
    <node concept="3clFbW" id="3" role="jymVt">
      <uo k="s:originTrace" v="n:7569401714696478829" />
      <node concept="37vLTG" id="6" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:7569401714696478829" />
        <node concept="3uibUv" id="9" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:7569401714696478829" />
        </node>
      </node>
      <node concept="3cqZAl" id="7" role="3clF45">
        <uo k="s:originTrace" v="n:7569401714696478829" />
      </node>
      <node concept="3clFbS" id="8" role="3clF47">
        <uo k="s:originTrace" v="n:7569401714696478829" />
        <node concept="XkiVB" id="a" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:7569401714696478829" />
          <node concept="1BaE9c" id="c" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="CellModel_Checkbox$cL" />
            <uo k="s:originTrace" v="n:7569401714696478829" />
            <node concept="2YIFZM" id="e" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:7569401714696478829" />
              <node concept="11gdke" id="f" role="37wK5m">
                <property role="11gdj1" value="602c36adcc5547ffL" />
                <uo k="s:originTrace" v="n:7569401714696478829" />
              </node>
              <node concept="11gdke" id="g" role="37wK5m">
                <property role="11gdj1" value="8c4073d7f12f035cL" />
                <uo k="s:originTrace" v="n:7569401714696478829" />
              </node>
              <node concept="11gdke" id="h" role="37wK5m">
                <property role="11gdj1" value="455f8dda63d6378L" />
                <uo k="s:originTrace" v="n:7569401714696478829" />
              </node>
              <node concept="Xl_RD" id="i" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.editor.forms.structure.CellModel_Checkbox" />
                <uo k="s:originTrace" v="n:7569401714696478829" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="d" role="37wK5m">
            <ref role="3cqZAo" node="6" resolve="initContext" />
            <uo k="s:originTrace" v="n:7569401714696478829" />
          </node>
        </node>
        <node concept="3clFbF" id="b" role="3cqZAp">
          <uo k="s:originTrace" v="n:7569401714696478829" />
          <node concept="1rXfSq" id="j" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:7569401714696478829" />
            <node concept="2ShNRf" id="k" role="37wK5m">
              <uo k="s:originTrace" v="n:7569401714696478829" />
              <node concept="1pGfFk" id="l" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="n" resolve="CellModel_Checkbox_Constraints.RD1" />
                <uo k="s:originTrace" v="n:7569401714696478829" />
                <node concept="Xjq3P" id="m" role="37wK5m">
                  <uo k="s:originTrace" v="n:7569401714696478829" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4" role="jymVt">
      <uo k="s:originTrace" v="n:7569401714696478829" />
    </node>
    <node concept="312cEu" id="5" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:7569401714696478829" />
      <node concept="3clFbW" id="n" role="jymVt">
        <uo k="s:originTrace" v="n:7569401714696478829" />
        <node concept="37vLTG" id="q" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:7569401714696478829" />
          <node concept="3uibUv" id="t" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:7569401714696478829" />
          </node>
        </node>
        <node concept="3cqZAl" id="r" role="3clF45">
          <uo k="s:originTrace" v="n:7569401714696478829" />
        </node>
        <node concept="3clFbS" id="s" role="3clF47">
          <uo k="s:originTrace" v="n:7569401714696478829" />
          <node concept="XkiVB" id="u" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:7569401714696478829" />
            <node concept="1BaE9c" id="v" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="propertyDeclaration$ZFhh" />
              <uo k="s:originTrace" v="n:7569401714696478829" />
              <node concept="2YIFZM" id="z" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:7569401714696478829" />
                <node concept="11gdke" id="$" role="37wK5m">
                  <property role="11gdj1" value="602c36adcc5547ffL" />
                  <uo k="s:originTrace" v="n:7569401714696478829" />
                </node>
                <node concept="11gdke" id="_" role="37wK5m">
                  <property role="11gdj1" value="8c4073d7f12f035cL" />
                  <uo k="s:originTrace" v="n:7569401714696478829" />
                </node>
                <node concept="11gdke" id="A" role="37wK5m">
                  <property role="11gdj1" value="455f8dda63d6378L" />
                  <uo k="s:originTrace" v="n:7569401714696478829" />
                </node>
                <node concept="11gdke" id="B" role="37wK5m">
                  <property role="11gdj1" value="334adf8cb15f3fdfL" />
                  <uo k="s:originTrace" v="n:7569401714696478829" />
                </node>
                <node concept="Xl_RD" id="C" role="37wK5m">
                  <property role="Xl_RC" value="propertyDeclaration" />
                  <uo k="s:originTrace" v="n:7569401714696478829" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="w" role="37wK5m">
              <ref role="3cqZAo" node="q" resolve="container" />
              <uo k="s:originTrace" v="n:7569401714696478829" />
            </node>
            <node concept="3clFbT" id="x" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:7569401714696478829" />
            </node>
            <node concept="3clFbT" id="y" role="37wK5m">
              <uo k="s:originTrace" v="n:7569401714696478829" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="o" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:7569401714696478829" />
        <node concept="3Tm1VV" id="D" role="1B3o_S">
          <uo k="s:originTrace" v="n:7569401714696478829" />
        </node>
        <node concept="3uibUv" id="E" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:7569401714696478829" />
        </node>
        <node concept="2AHcQZ" id="F" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:7569401714696478829" />
        </node>
        <node concept="3clFbS" id="G" role="3clF47">
          <uo k="s:originTrace" v="n:7569401714696478829" />
          <node concept="3cpWs6" id="I" role="3cqZAp">
            <uo k="s:originTrace" v="n:7569401714696478829" />
            <node concept="2ShNRf" id="J" role="3cqZAk">
              <uo k="s:originTrace" v="n:6836281137582841207" />
              <node concept="YeOm9" id="K" role="2ShVmc">
                <uo k="s:originTrace" v="n:6836281137582841207" />
                <node concept="1Y3b0j" id="L" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:6836281137582841207" />
                  <node concept="3Tm1VV" id="M" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6836281137582841207" />
                  </node>
                  <node concept="3clFb_" id="N" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:6836281137582841207" />
                    <node concept="3Tm1VV" id="P" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582841207" />
                    </node>
                    <node concept="3uibUv" id="Q" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:6836281137582841207" />
                    </node>
                    <node concept="3clFbS" id="R" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582841207" />
                      <node concept="3cpWs6" id="T" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582841207" />
                        <node concept="2ShNRf" id="U" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582841207" />
                          <node concept="1pGfFk" id="V" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:6836281137582841207" />
                            <node concept="Xl_RD" id="W" role="37wK5m">
                              <property role="Xl_RC" value="r:de912216-b4aa-4118-a243-c861c965b4d9(jetbrains.mps.lang.editor.forms.constraints)" />
                              <uo k="s:originTrace" v="n:6836281137582841207" />
                            </node>
                            <node concept="Xl_RD" id="X" role="37wK5m">
                              <property role="Xl_RC" value="6836281137582841207" />
                              <uo k="s:originTrace" v="n:6836281137582841207" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="S" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582841207" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="O" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:6836281137582841207" />
                    <node concept="3Tm1VV" id="Y" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582841207" />
                    </node>
                    <node concept="3uibUv" id="Z" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:6836281137582841207" />
                    </node>
                    <node concept="37vLTG" id="10" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:6836281137582841207" />
                      <node concept="3uibUv" id="13" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:6836281137582841207" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="11" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582841207" />
                      <node concept="3cpWs8" id="14" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582841209" />
                        <node concept="3cpWsn" id="17" role="3cpWs9">
                          <property role="TrG5h" value="editorComponent" />
                          <uo k="s:originTrace" v="n:6836281137582841210" />
                          <node concept="3Tqbb2" id="18" role="1tU5fm">
                            <ref role="ehGHo" to="tpc2:fIwURLg" resolve="BaseEditorComponent" />
                            <uo k="s:originTrace" v="n:6836281137582841211" />
                          </node>
                          <node concept="2OqwBi" id="19" role="33vP2m">
                            <uo k="s:originTrace" v="n:6836281137582841212" />
                            <node concept="1DoJHT" id="1a" role="2Oq$k0">
                              <property role="1Dpdpm" value="getContextNode" />
                              <uo k="s:originTrace" v="n:6836281137582841240" />
                              <node concept="3uibUv" id="1c" role="1Ez5kq">
                                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                              </node>
                              <node concept="37vLTw" id="1d" role="1EMhIo">
                                <ref role="3cqZAo" node="10" resolve="_context" />
                              </node>
                            </node>
                            <node concept="2Xjw5R" id="1b" role="2OqNvi">
                              <uo k="s:originTrace" v="n:6836281137582841214" />
                              <node concept="1xIGOp" id="1e" role="1xVPHs">
                                <uo k="s:originTrace" v="n:6836281137582841215" />
                              </node>
                              <node concept="1xMEDy" id="1f" role="1xVPHs">
                                <uo k="s:originTrace" v="n:6836281137582841216" />
                                <node concept="chp4Y" id="1g" role="ri$Ld">
                                  <ref role="cht4Q" to="tpc2:fIwURLg" resolve="BaseEditorComponent" />
                                  <uo k="s:originTrace" v="n:6836281137582841217" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="15" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582841218" />
                        <node concept="3cpWsn" id="1h" role="3cpWs9">
                          <property role="TrG5h" value="editedConcept" />
                          <uo k="s:originTrace" v="n:6836281137582841219" />
                          <node concept="3Tqbb2" id="1i" role="1tU5fm">
                            <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                            <uo k="s:originTrace" v="n:6836281137582841220" />
                          </node>
                          <node concept="2OqwBi" id="1j" role="33vP2m">
                            <uo k="s:originTrace" v="n:6836281137582841221" />
                            <node concept="37vLTw" id="1k" role="2Oq$k0">
                              <ref role="3cqZAo" node="17" resolve="editorComponent" />
                              <uo k="s:originTrace" v="n:6836281137582841222" />
                            </node>
                            <node concept="3zqWPK" id="1l" role="2OqNvi">
                              <ref role="37wK5l" to="tpcb:67EYkym$wx3" resolve="getConceptDeclaration" />
                              <uo k="s:originTrace" v="n:8085146484218839831" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs6" id="16" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582841224" />
                        <node concept="2YIFZM" id="1m" role="3cqZAk">
                          <ref role="37wK5l" to="o8zo:3jEbQoczdCs" resolve="forResolvableElements" />
                          <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                          <uo k="s:originTrace" v="n:6836281137582841505" />
                          <node concept="2OqwBi" id="1n" role="37wK5m">
                            <uo k="s:originTrace" v="n:6836281137582841506" />
                            <node concept="2OqwBi" id="1o" role="2Oq$k0">
                              <uo k="s:originTrace" v="n:6836281137582841507" />
                              <node concept="37vLTw" id="1q" role="2Oq$k0">
                                <ref role="3cqZAo" node="1h" resolve="editedConcept" />
                                <uo k="s:originTrace" v="n:6836281137582841508" />
                              </node>
                              <node concept="3zqWPK" id="1r" role="2OqNvi">
                                <ref role="37wK5l" to="tpcn:hEwILLM" resolve="getPropertyDeclarations" />
                                <uo k="s:originTrace" v="n:8085146484218839833" />
                              </node>
                            </node>
                            <node concept="3zZkjj" id="1p" role="2OqNvi">
                              <uo k="s:originTrace" v="n:6836281137582841510" />
                              <node concept="1bVj0M" id="1s" role="23t8la">
                                <uo k="s:originTrace" v="n:6836281137582841511" />
                                <node concept="3clFbS" id="1t" role="1bW5cS">
                                  <uo k="s:originTrace" v="n:6836281137582841512" />
                                  <node concept="3clFbF" id="1v" role="3cqZAp">
                                    <uo k="s:originTrace" v="n:6836281137582841513" />
                                    <node concept="2OqwBi" id="1w" role="3clFbG">
                                      <uo k="s:originTrace" v="n:6836281137582841514" />
                                      <node concept="2OqwBi" id="1x" role="2Oq$k0">
                                        <uo k="s:originTrace" v="n:6836281137582841515" />
                                        <node concept="37vLTw" id="1z" role="2Oq$k0">
                                          <ref role="3cqZAo" node="1u" resolve="it" />
                                          <uo k="s:originTrace" v="n:6836281137582841516" />
                                        </node>
                                        <node concept="3TrEf2" id="1$" role="2OqNvi">
                                          <ref role="3Tt5mk" to="tpce:fKAX2Z_" resolve="dataType" />
                                          <uo k="s:originTrace" v="n:6836281137582841517" />
                                        </node>
                                      </node>
                                      <node concept="3zqWPK" id="1y" role="2OqNvi">
                                        <ref role="37wK5l" to="tpcn:hKtGpIQ" resolve="isSimpleBoolean" />
                                        <uo k="s:originTrace" v="n:8085146484218839835" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="gl6BB" id="1u" role="1bW2Oz">
                                  <property role="TrG5h" value="it" />
                                  <uo k="s:originTrace" v="n:6847626768367733987" />
                                  <node concept="2jxLKc" id="1_" role="1tU5fm">
                                    <uo k="s:originTrace" v="n:6847626768367733988" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="12" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582841207" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="H" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:7569401714696478829" />
        </node>
      </node>
      <node concept="3uibUv" id="p" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:7569401714696478829" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1A">
    <property role="3GE5qa" value="ui" />
    <property role="TrG5h" value="CheckboxUI_Text_Constraints" />
    <uo k="s:originTrace" v="n:332515575062128737" />
    <node concept="3Tm1VV" id="1B" role="1B3o_S">
      <uo k="s:originTrace" v="n:332515575062128737" />
    </node>
    <node concept="3uibUv" id="1C" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:332515575062128737" />
    </node>
    <node concept="3clFbW" id="1D" role="jymVt">
      <uo k="s:originTrace" v="n:332515575062128737" />
      <node concept="37vLTG" id="1G" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:332515575062128737" />
        <node concept="3uibUv" id="1J" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:332515575062128737" />
        </node>
      </node>
      <node concept="3cqZAl" id="1H" role="3clF45">
        <uo k="s:originTrace" v="n:332515575062128737" />
      </node>
      <node concept="3clFbS" id="1I" role="3clF47">
        <uo k="s:originTrace" v="n:332515575062128737" />
        <node concept="XkiVB" id="1K" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:332515575062128737" />
          <node concept="1BaE9c" id="1M" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="CheckboxUI_Text$kO" />
            <uo k="s:originTrace" v="n:332515575062128737" />
            <node concept="2YIFZM" id="1O" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:332515575062128737" />
              <node concept="11gdke" id="1P" role="37wK5m">
                <property role="11gdj1" value="602c36adcc5547ffL" />
                <uo k="s:originTrace" v="n:332515575062128737" />
              </node>
              <node concept="11gdke" id="1Q" role="37wK5m">
                <property role="11gdj1" value="8c4073d7f12f035cL" />
                <uo k="s:originTrace" v="n:332515575062128737" />
              </node>
              <node concept="11gdke" id="1R" role="37wK5m">
                <property role="11gdj1" value="1298d6f05780e83bL" />
                <uo k="s:originTrace" v="n:332515575062128737" />
              </node>
              <node concept="Xl_RD" id="1S" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.editor.forms.structure.CheckboxUI_Text" />
                <uo k="s:originTrace" v="n:332515575062128737" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="1N" role="37wK5m">
            <ref role="3cqZAo" node="1G" resolve="initContext" />
            <uo k="s:originTrace" v="n:332515575062128737" />
          </node>
        </node>
        <node concept="3clFbF" id="1L" role="3cqZAp">
          <uo k="s:originTrace" v="n:332515575062128737" />
          <node concept="1rXfSq" id="1T" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.setCanBeParent(jetbrains.mps.smodel.runtime.ConstraintFunction)" resolve="setCanBeParent" />
            <uo k="s:originTrace" v="n:332515575062128737" />
            <node concept="2ShNRf" id="1U" role="37wK5m">
              <uo k="s:originTrace" v="n:332515575062128737" />
              <node concept="YeOm9" id="1V" role="2ShVmc">
                <uo k="s:originTrace" v="n:332515575062128737" />
                <node concept="1Y3b0j" id="1W" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <uo k="s:originTrace" v="n:332515575062128737" />
                  <node concept="3Tm1VV" id="1X" role="1B3o_S">
                    <uo k="s:originTrace" v="n:332515575062128737" />
                  </node>
                  <node concept="3clFb_" id="1Y" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="invoke" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <uo k="s:originTrace" v="n:332515575062128737" />
                    <node concept="3Tm1VV" id="21" role="1B3o_S">
                      <uo k="s:originTrace" v="n:332515575062128737" />
                    </node>
                    <node concept="2AHcQZ" id="22" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:332515575062128737" />
                    </node>
                    <node concept="3uibUv" id="23" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      <uo k="s:originTrace" v="n:332515575062128737" />
                    </node>
                    <node concept="37vLTG" id="24" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <uo k="s:originTrace" v="n:332515575062128737" />
                      <node concept="3uibUv" id="27" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeParent" resolve="ConstraintContext_CanBeParent" />
                        <uo k="s:originTrace" v="n:332515575062128737" />
                      </node>
                      <node concept="2AHcQZ" id="28" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        <uo k="s:originTrace" v="n:332515575062128737" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="25" role="3clF46">
                      <property role="TrG5h" value="checkingNodeContext" />
                      <uo k="s:originTrace" v="n:332515575062128737" />
                      <node concept="3uibUv" id="29" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                        <uo k="s:originTrace" v="n:332515575062128737" />
                      </node>
                      <node concept="2AHcQZ" id="2a" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                        <uo k="s:originTrace" v="n:332515575062128737" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="26" role="3clF47">
                      <uo k="s:originTrace" v="n:332515575062128737" />
                      <node concept="3cpWs8" id="2b" role="3cqZAp">
                        <uo k="s:originTrace" v="n:332515575062128737" />
                        <node concept="3cpWsn" id="2g" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:332515575062128737" />
                          <node concept="10P_77" id="2h" role="1tU5fm">
                            <uo k="s:originTrace" v="n:332515575062128737" />
                          </node>
                          <node concept="1rXfSq" id="2i" role="33vP2m">
                            <ref role="37wK5l" node="1F" resolve="staticCanBeAParent" />
                            <uo k="s:originTrace" v="n:332515575062128737" />
                            <node concept="2OqwBi" id="2j" role="37wK5m">
                              <uo k="s:originTrace" v="n:332515575062128737" />
                              <node concept="37vLTw" id="2n" role="2Oq$k0">
                                <ref role="3cqZAo" node="24" resolve="context" />
                                <uo k="s:originTrace" v="n:332515575062128737" />
                              </node>
                              <node concept="liA8E" id="2o" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeParent.getNode()" resolve="getNode" />
                                <uo k="s:originTrace" v="n:332515575062128737" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="2k" role="37wK5m">
                              <uo k="s:originTrace" v="n:332515575062128737" />
                              <node concept="37vLTw" id="2p" role="2Oq$k0">
                                <ref role="3cqZAo" node="24" resolve="context" />
                                <uo k="s:originTrace" v="n:332515575062128737" />
                              </node>
                              <node concept="liA8E" id="2q" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeParent.getChildNode()" resolve="getChildNode" />
                                <uo k="s:originTrace" v="n:332515575062128737" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="2l" role="37wK5m">
                              <uo k="s:originTrace" v="n:332515575062128737" />
                              <node concept="37vLTw" id="2r" role="2Oq$k0">
                                <ref role="3cqZAo" node="24" resolve="context" />
                                <uo k="s:originTrace" v="n:332515575062128737" />
                              </node>
                              <node concept="liA8E" id="2s" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeParent.getChildConcept()" resolve="getChildConcept" />
                                <uo k="s:originTrace" v="n:332515575062128737" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="2m" role="37wK5m">
                              <uo k="s:originTrace" v="n:332515575062128737" />
                              <node concept="37vLTw" id="2t" role="2Oq$k0">
                                <ref role="3cqZAo" node="24" resolve="context" />
                                <uo k="s:originTrace" v="n:332515575062128737" />
                              </node>
                              <node concept="liA8E" id="2u" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeParent.getLink()" resolve="getLink" />
                                <uo k="s:originTrace" v="n:332515575062128737" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="2c" role="3cqZAp">
                        <uo k="s:originTrace" v="n:332515575062128737" />
                      </node>
                      <node concept="3clFbJ" id="2d" role="3cqZAp">
                        <uo k="s:originTrace" v="n:332515575062128737" />
                        <node concept="3clFbS" id="2v" role="3clFbx">
                          <uo k="s:originTrace" v="n:332515575062128737" />
                          <node concept="3clFbF" id="2x" role="3cqZAp">
                            <uo k="s:originTrace" v="n:332515575062128737" />
                            <node concept="2OqwBi" id="2y" role="3clFbG">
                              <uo k="s:originTrace" v="n:332515575062128737" />
                              <node concept="37vLTw" id="2z" role="2Oq$k0">
                                <ref role="3cqZAo" node="25" resolve="checkingNodeContext" />
                                <uo k="s:originTrace" v="n:332515575062128737" />
                              </node>
                              <node concept="liA8E" id="2$" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                                <uo k="s:originTrace" v="n:332515575062128737" />
                                <node concept="1dyn4i" id="2_" role="37wK5m">
                                  <property role="1dyqJU" value="canBeParentBreakingPoint" />
                                  <uo k="s:originTrace" v="n:332515575062128737" />
                                  <node concept="2ShNRf" id="2A" role="1dyrYi">
                                    <uo k="s:originTrace" v="n:332515575062128737" />
                                    <node concept="1pGfFk" id="2B" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:332515575062128737" />
                                      <node concept="Xl_RD" id="2C" role="37wK5m">
                                        <property role="Xl_RC" value="r:de912216-b4aa-4118-a243-c861c965b4d9(jetbrains.mps.lang.editor.forms.constraints)" />
                                        <uo k="s:originTrace" v="n:332515575062128737" />
                                      </node>
                                      <node concept="Xl_RD" id="2D" role="37wK5m">
                                        <property role="Xl_RC" value="332515575062128738" />
                                        <uo k="s:originTrace" v="n:332515575062128737" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Wc70l" id="2w" role="3clFbw">
                          <uo k="s:originTrace" v="n:332515575062128737" />
                          <node concept="3y3z36" id="2E" role="3uHU7w">
                            <uo k="s:originTrace" v="n:332515575062128737" />
                            <node concept="10Nm6u" id="2G" role="3uHU7w">
                              <uo k="s:originTrace" v="n:332515575062128737" />
                            </node>
                            <node concept="37vLTw" id="2H" role="3uHU7B">
                              <ref role="3cqZAo" node="25" resolve="checkingNodeContext" />
                              <uo k="s:originTrace" v="n:332515575062128737" />
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="2F" role="3uHU7B">
                            <uo k="s:originTrace" v="n:332515575062128737" />
                            <node concept="37vLTw" id="2I" role="3fr31v">
                              <ref role="3cqZAo" node="2g" resolve="result" />
                              <uo k="s:originTrace" v="n:332515575062128737" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="2e" role="3cqZAp">
                        <uo k="s:originTrace" v="n:332515575062128737" />
                      </node>
                      <node concept="3clFbF" id="2f" role="3cqZAp">
                        <uo k="s:originTrace" v="n:332515575062128737" />
                        <node concept="37vLTw" id="2J" role="3clFbG">
                          <ref role="3cqZAo" node="2g" resolve="result" />
                          <uo k="s:originTrace" v="n:332515575062128737" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="1Z" role="2Ghqu4">
                    <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeParent" resolve="ConstraintContext_CanBeParent" />
                    <uo k="s:originTrace" v="n:332515575062128737" />
                  </node>
                  <node concept="3uibUv" id="20" role="2Ghqu4">
                    <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    <uo k="s:originTrace" v="n:332515575062128737" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1E" role="jymVt">
      <uo k="s:originTrace" v="n:332515575062128737" />
    </node>
    <node concept="2YIFZL" id="1F" role="jymVt">
      <property role="TrG5h" value="staticCanBeAParent" />
      <uo k="s:originTrace" v="n:332515575062128737" />
      <node concept="10P_77" id="2K" role="3clF45">
        <uo k="s:originTrace" v="n:332515575062128737" />
      </node>
      <node concept="3Tm6S6" id="2L" role="1B3o_S">
        <uo k="s:originTrace" v="n:332515575062128737" />
      </node>
      <node concept="3clFbS" id="2M" role="3clF47">
        <uo k="s:originTrace" v="n:332515575062128739" />
        <node concept="3clFbJ" id="2R" role="3cqZAp">
          <uo k="s:originTrace" v="n:332515575062130601" />
          <node concept="3clFbS" id="2T" role="3clFbx">
            <uo k="s:originTrace" v="n:332515575062130603" />
            <node concept="3cpWs8" id="2V" role="3cqZAp">
              <uo k="s:originTrace" v="n:332515575062145801" />
              <node concept="3cpWsn" id="2X" role="3cpWs9">
                <property role="TrG5h" value="styleClassItemConcept" />
                <uo k="s:originTrace" v="n:332515575062145804" />
                <node concept="3bZ5Sz" id="2Y" role="1tU5fm">
                  <ref role="3bZ5Sy" to="tpc2:hgV6hR6" resolve="StyleClassItem" />
                  <uo k="s:originTrace" v="n:332515575062145799" />
                </node>
                <node concept="10QFUN" id="2Z" role="33vP2m">
                  <uo k="s:originTrace" v="n:332515575062151188" />
                  <node concept="37vLTw" id="30" role="10QFUP">
                    <ref role="3cqZAo" node="2P" resolve="childConcept" />
                    <uo k="s:originTrace" v="n:332515575062149487" />
                  </node>
                  <node concept="3bZ5Sz" id="31" role="10QFUM">
                    <ref role="3bZ5Sy" to="tpc2:hgV6hR6" resolve="StyleClassItem" />
                    <uo k="s:originTrace" v="n:332515575062151189" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="2W" role="3cqZAp">
              <uo k="s:originTrace" v="n:332515575062140413" />
              <node concept="1Wc70l" id="32" role="3cqZAk">
                <uo k="s:originTrace" v="n:332515575062167246" />
                <node concept="2OqwBi" id="33" role="3uHU7w">
                  <uo k="s:originTrace" v="n:332515575062169704" />
                  <node concept="37vLTw" id="35" role="2Oq$k0">
                    <ref role="3cqZAo" node="2X" resolve="styleClassItemConcept" />
                    <uo k="s:originTrace" v="n:332515575062168026" />
                  </node>
                  <node concept="3zqWPK" id="36" role="2OqNvi">
                    <ref role="37wK5l" to="tpcb:itlittOTkB" resolve="isApplicableInLayout" />
                    <uo k="s:originTrace" v="n:8085146484218839837" />
                    <node concept="35c_gC" id="37" role="37wK5m">
                      <ref role="35c_gD" to="tpc2:g6iRfq5" resolve="CellLayout_Horizontal" />
                      <uo k="s:originTrace" v="n:8085146484218839839" />
                    </node>
                  </node>
                </node>
                <node concept="1Wc70l" id="34" role="3uHU7B">
                  <uo k="s:originTrace" v="n:332515575062160715" />
                  <node concept="2OqwBi" id="38" role="3uHU7B">
                    <uo k="s:originTrace" v="n:332515575062154148" />
                    <node concept="37vLTw" id="3a" role="2Oq$k0">
                      <ref role="3cqZAo" node="2X" resolve="styleClassItemConcept" />
                      <uo k="s:originTrace" v="n:332515575062152878" />
                    </node>
                    <node concept="3zqWPK" id="3b" role="2OqNvi">
                      <ref role="37wK5l" to="tpcb:2u3gVK1lsco" resolve="isApplicableToCellConcept" />
                      <uo k="s:originTrace" v="n:8085146484218839840" />
                      <node concept="35c_gC" id="3c" role="37wK5m">
                        <ref role="35c_gD" to="tpc2:fBF0icI" resolve="CellModel_Constant" />
                        <uo k="s:originTrace" v="n:8085146484218839842" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="39" role="3uHU7w">
                    <uo k="s:originTrace" v="n:332515575062163107" />
                    <node concept="37vLTw" id="3d" role="2Oq$k0">
                      <ref role="3cqZAo" node="2X" resolve="styleClassItemConcept" />
                      <uo k="s:originTrace" v="n:332515575062161455" />
                    </node>
                    <node concept="3zqWPK" id="3e" role="2OqNvi">
                      <ref role="37wK5l" to="tpcb:itlittOTie" resolve="isApplicableForLayout" />
                      <uo k="s:originTrace" v="n:8085146484218839843" />
                      <node concept="10Nm6u" id="3f" role="37wK5m">
                        <uo k="s:originTrace" v="n:8085146484218839845" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="2U" role="3clFbw">
            <uo k="s:originTrace" v="n:332515575062137614" />
            <node concept="359W_D" id="3g" role="2Oq$k0">
              <ref role="359W_E" to="tpc2:hJF0Tl2" resolve="IStyleContainer" />
              <ref role="359W_F" to="tpc2:hJF10O6" resolve="styleItem" />
              <uo k="s:originTrace" v="n:332515575062133345" />
            </node>
            <node concept="liA8E" id="3h" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
              <uo k="s:originTrace" v="n:332515575062139402" />
              <node concept="37vLTw" id="3i" role="37wK5m">
                <ref role="3cqZAo" node="2Q" resolve="link" />
                <uo k="s:originTrace" v="n:332515575062139907" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2S" role="3cqZAp">
          <uo k="s:originTrace" v="n:332515575062129198" />
          <node concept="3clFbT" id="3j" role="3cqZAk">
            <property role="3clFbU" value="true" />
            <uo k="s:originTrace" v="n:332515575062129664" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2N" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:332515575062128737" />
        <node concept="3uibUv" id="3k" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:332515575062128737" />
        </node>
      </node>
      <node concept="37vLTG" id="2O" role="3clF46">
        <property role="TrG5h" value="childNode" />
        <uo k="s:originTrace" v="n:332515575062128737" />
        <node concept="3uibUv" id="3l" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:332515575062128737" />
        </node>
      </node>
      <node concept="37vLTG" id="2P" role="3clF46">
        <property role="TrG5h" value="childConcept" />
        <uo k="s:originTrace" v="n:332515575062128737" />
        <node concept="3uibUv" id="3m" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
          <uo k="s:originTrace" v="n:332515575062128737" />
        </node>
      </node>
      <node concept="37vLTG" id="2Q" role="3clF46">
        <property role="TrG5h" value="link" />
        <uo k="s:originTrace" v="n:332515575062128737" />
        <node concept="3uibUv" id="3n" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
          <uo k="s:originTrace" v="n:332515575062128737" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3o">
    <property role="TrG5h" value="ConstraintsAspectDescriptor" />
    <property role="3GE5qa" value="Constraints" />
    <node concept="3uibUv" id="3p" role="1zkMxy">
      <ref role="3uigEE" to="ze1i:~BaseConstraintsAspectDescriptor" resolve="BaseConstraintsAspectDescriptor" />
    </node>
    <node concept="3Tm1VV" id="3q" role="1B3o_S" />
    <node concept="3clFbW" id="3r" role="jymVt">
      <node concept="3cqZAl" id="3u" role="3clF45" />
      <node concept="3Tm1VV" id="3v" role="1B3o_S" />
      <node concept="3clFbS" id="3w" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="3s" role="jymVt" />
    <node concept="3clFb_" id="3t" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getConstraints" />
      <property role="DiZV1" value="false" />
      <node concept="2AHcQZ" id="3x" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="3y" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3Tm1VV" id="3z" role="1B3o_S" />
      <node concept="3uibUv" id="3$" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
      </node>
      <node concept="37vLTG" id="3_" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3bZ5Sz" id="3C" role="1tU5fm" />
        <node concept="2AHcQZ" id="3D" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="3A" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="3E" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
        </node>
        <node concept="2AHcQZ" id="3F" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="3B" role="3clF47">
        <node concept="1_3QMa" id="3G" role="3cqZAp">
          <node concept="37vLTw" id="3I" role="1_3QMn">
            <ref role="3cqZAo" node="3_" resolve="concept" />
          </node>
          <node concept="1pnPoh" id="3J" role="1_3QMm">
            <node concept="3clFbS" id="3M" role="1pnPq1">
              <node concept="3cpWs6" id="3O" role="3cqZAp">
                <node concept="2ShNRf" id="3P" role="3cqZAk">
                  <node concept="1pGfFk" id="3Q" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="3" resolve="CellModel_Checkbox_Constraints" />
                    <node concept="37vLTw" id="3R" role="37wK5m">
                      <ref role="3cqZAo" node="3A" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="3N" role="1pnPq6">
              <ref role="3gnhBz" to="f55a:hlYdQAfmdS" resolve="CellModel_Checkbox" />
            </node>
          </node>
          <node concept="1pnPoh" id="3K" role="1_3QMm">
            <node concept="3clFbS" id="3S" role="1pnPq1">
              <node concept="3cpWs6" id="3U" role="3cqZAp">
                <node concept="2ShNRf" id="3V" role="3cqZAk">
                  <node concept="1pGfFk" id="3W" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="1D" resolve="CheckboxUI_Text_Constraints" />
                    <node concept="37vLTw" id="3X" role="37wK5m">
                      <ref role="3cqZAo" node="3A" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="3T" role="1pnPq6">
              <ref role="3gnhBz" to="f55a:1aoPJ1nwewV" resolve="CheckboxUI_Text" />
            </node>
          </node>
          <node concept="3clFbS" id="3L" role="1prKM_" />
        </node>
        <node concept="3cpWs6" id="3H" role="3cqZAp">
          <node concept="10Nm6u" id="3Y" role="3cqZAk" />
        </node>
      </node>
    </node>
  </node>
  <node concept="39dXUE" id="3Z">
    <node concept="39e2AJ" id="40" role="39e2AI">
      <property role="39e3Y2" value="constraintClass" />
      <node concept="39e2AG" id="43" role="39e3Y0">
        <ref role="39e2AK" to="4i46:6$bUG5eHQ1H" resolve="CellModel_Checkbox_Constraints" />
        <node concept="385nmt" id="45" role="385vvn">
          <property role="385vuF" value="CellModel_Checkbox_Constraints" />
          <node concept="3u3nmq" id="47" role="385v07">
            <property role="3u3nmv" value="7569401714696478829" />
          </node>
        </node>
        <node concept="39e2AT" id="46" role="39e2AY">
          <ref role="39e2AS" node="0" resolve="CellModel_Checkbox_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="44" role="39e3Y0">
        <ref role="39e2AK" to="4i46:itlittRexx" resolve="CheckboxUI_Text_Constraints" />
        <node concept="385nmt" id="48" role="385vvn">
          <property role="385vuF" value="CheckboxUI_Text_Constraints" />
          <node concept="3u3nmq" id="4a" role="385v07">
            <property role="3u3nmv" value="332515575062128737" />
          </node>
        </node>
        <node concept="39e2AT" id="49" role="39e2AY">
          <ref role="39e2AS" node="1A" resolve="CheckboxUI_Text_Constraints" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="41" role="39e2AI">
      <property role="39e3Y2" value="constraintClassCons" />
      <node concept="39e2AG" id="4b" role="39e3Y0">
        <ref role="39e2AK" to="4i46:6$bUG5eHQ1H" resolve="CellModel_Checkbox_Constraints" />
        <node concept="385nmt" id="4d" role="385vvn">
          <property role="385vuF" value="CellModel_Checkbox_Constraints" />
          <node concept="3u3nmq" id="4f" role="385v07">
            <property role="3u3nmv" value="7569401714696478829" />
          </node>
        </node>
        <node concept="39e2AT" id="4e" role="39e2AY">
          <ref role="39e2AS" node="3" resolve="CellModel_Checkbox_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="4c" role="39e3Y0">
        <ref role="39e2AK" to="4i46:itlittRexx" resolve="CheckboxUI_Text_Constraints" />
        <node concept="385nmt" id="4g" role="385vvn">
          <property role="385vuF" value="CheckboxUI_Text_Constraints" />
          <node concept="3u3nmq" id="4i" role="385v07">
            <property role="3u3nmv" value="332515575062128737" />
          </node>
        </node>
        <node concept="39e2AT" id="4h" role="39e2AY">
          <ref role="39e2AS" node="1D" resolve="CheckboxUI_Text_Constraints" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="42" role="39e2AI">
      <property role="39e3Y2" value="aspectDescriptorClass" />
      <node concept="39e2AG" id="4j" role="39e3Y0">
        <property role="2mV_xN" value="true" />
        <node concept="39e2AT" id="4k" role="39e2AY">
          <ref role="39e2AS" node="3o" resolve="ConstraintsAspectDescriptor" />
        </node>
      </node>
    </node>
  </node>
</model>

