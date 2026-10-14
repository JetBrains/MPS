<?xml version="1.0" encoding="UTF-8"?>
<model ref="00000000-0000-4000-5f02-5beb5f025beb/i:fc11269(checkpoints/jetbrains.mps.lang.generator.constraints@descriptorclasses)">
  <persistence version="9" />
  <attribute name="checkpoint" value="DescriptorClasses" />
  <attribute name="generation-plan" value="AspectCPS" />
  <attribute name="user-objects" value="true" />
  <languages />
  <imports>
    <import index="tpfi" ref="r:00000000-0000-4000-0000-011c895902e2(jetbrains.mps.lang.generator.constraints)" />
    <import index="tp3t" ref="r:00000000-0000-4000-0000-011c89590345(jetbrains.mps.lang.pattern.structure)" />
    <import index="dush" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.persistence(MPS.OpenAPI/)" />
    <import index="j809" ref="9abaaae2-decf-4e97-bf80-9109e8b759cc/java:jetbrains.mps.core.aspects.feedback.messages(jetbrains.mps.lang.messages.api/)" />
    <import index="79pl" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.runtime.base(MPS.Core/)" />
    <import index="j80a" ref="0a98f3e2-decf-4e97-bf80-9109eccc59bb/java:jetbrains.mps.core.aspects.feedback.messages(jetbrains.mps.lang.feedback.problem.rules/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="tpcn" ref="r:00000000-0000-4000-0000-011c8959028b(jetbrains.mps.lang.structure.behavior)" />
    <import index="o99v" ref="8e98f4e2-decf-4e97-bf80-9109e8b759ee/java:jetbrains.mps.core.aspects.constraints.rules(jetbrains.mps.lang.constraints.rules.runtime/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="1ctc" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.stream(JDK/)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="35tq" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.scope(MPS.Core/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="79pm" ref="8e98f4e2-decf-4e97-bf80-9109e8b759ee/java:jetbrains.mps.smodel.runtime.base(jetbrains.mps.lang.constraints.rules.runtime/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="tpfh" ref="r:00000000-0000-4000-0000-011c895902e1(jetbrains.mps.lang.generator.behavior)" />
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="tpf8" ref="r:00000000-0000-4000-0000-011c895902e8(jetbrains.mps.lang.generator.structure)" />
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
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1761385620274348152" name="jetbrains.mps.lang.smodel.structure.SConceptTypeCastExpression" flags="nn" index="2CBFar" />
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1171310072040" name="jetbrains.mps.lang.smodel.structure.Node_GetContainingRootOperation" flags="nn" index="2Rxl7S" />
      <concept id="1145567426890" name="jetbrains.mps.lang.smodel.structure.SNodeListCreator" flags="nn" index="2T8Vx0">
        <child id="1145567471833" name="createdType" index="2T96Bj" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz">
        <reference id="6677504323281689839" name="conceptDeclaraton" index="3bZ5Sy" />
      </concept>
      <concept id="1154546950173" name="jetbrains.mps.lang.smodel.structure.ConceptReference" flags="ng" index="3gn64h">
        <reference id="1154546997487" name="concept" index="3gnhBz" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="6039268229364358244" name="jetbrains.mps.lang.smodel.structure.ExactConceptCase" flags="ng" index="1pnPoh">
        <child id="6039268229364358388" name="body" index="1pnPq1" />
        <child id="6039268229364358387" name="concept" index="1pnPq6" />
      </concept>
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="5944356402132808749" name="jetbrains.mps.lang.smodel.structure.ConceptSwitchStatement" flags="nn" index="1_3QMa">
        <child id="6039268229365417680" name="defaultBlock" index="1prKM_" />
        <child id="5944356402132808753" name="case" index="1_3QMm" />
        <child id="5944356402132808752" name="expression" index="1_3QMn" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
      </concept>
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
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
    </language>
  </registry>
  <node concept="312cEu" id="0">
    <property role="3GE5qa" value="macro.namespace" />
    <property role="TrG5h" value="AbstractNodeMacroNamespace_Constraints" />
    <uo k="s:originTrace" v="n:2880994019885266656" />
    <node concept="3Tm1VV" id="1" role="1B3o_S">
      <uo k="s:originTrace" v="n:2880994019885266656" />
    </node>
    <node concept="3uibUv" id="2" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:2880994019885266656" />
    </node>
    <node concept="3clFbW" id="3" role="jymVt">
      <uo k="s:originTrace" v="n:2880994019885266656" />
      <node concept="37vLTG" id="6" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:2880994019885266656" />
        <node concept="3uibUv" id="9" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:2880994019885266656" />
        </node>
      </node>
      <node concept="3cqZAl" id="7" role="3clF45">
        <uo k="s:originTrace" v="n:2880994019885266656" />
      </node>
      <node concept="3clFbS" id="8" role="3clF47">
        <uo k="s:originTrace" v="n:2880994019885266656" />
        <node concept="XkiVB" id="a" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:2880994019885266656" />
          <node concept="1BaE9c" id="c" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="AbstractNodeMacroNamespace$Cq" />
            <uo k="s:originTrace" v="n:2880994019885266656" />
            <node concept="2YIFZM" id="e" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:2880994019885266656" />
              <node concept="11gdke" id="f" role="37wK5m">
                <property role="11gdj1" value="b401a68083254110L" />
                <uo k="s:originTrace" v="n:2880994019885266656" />
              </node>
              <node concept="11gdke" id="g" role="37wK5m">
                <property role="11gdj1" value="8fd384331ff25befL" />
                <uo k="s:originTrace" v="n:2880994019885266656" />
              </node>
              <node concept="11gdke" id="h" role="37wK5m">
                <property role="11gdj1" value="27fb58cc0349297eL" />
                <uo k="s:originTrace" v="n:2880994019885266656" />
              </node>
              <node concept="Xl_RD" id="i" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.generator.structure.AbstractNodeMacroNamespace" />
                <uo k="s:originTrace" v="n:2880994019885266656" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="d" role="37wK5m">
            <ref role="3cqZAo" node="6" resolve="initContext" />
            <uo k="s:originTrace" v="n:2880994019885266656" />
          </node>
        </node>
        <node concept="3clFbF" id="b" role="3cqZAp">
          <uo k="s:originTrace" v="n:2880994019885266656" />
          <node concept="1rXfSq" id="j" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.setCanBeChildConstraint(jetbrains.mps.smodel.runtime.ConstraintFunction)" resolve="setCanBeChildConstraint" />
            <uo k="s:originTrace" v="n:2880994019885266656" />
            <node concept="2ShNRf" id="k" role="37wK5m">
              <uo k="s:originTrace" v="n:2880994019885266656" />
              <node concept="YeOm9" id="l" role="2ShVmc">
                <uo k="s:originTrace" v="n:2880994019885266656" />
                <node concept="1Y3b0j" id="m" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <uo k="s:originTrace" v="n:2880994019885266656" />
                  <node concept="3Tm1VV" id="n" role="1B3o_S">
                    <uo k="s:originTrace" v="n:2880994019885266656" />
                  </node>
                  <node concept="3clFb_" id="o" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="invoke" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <uo k="s:originTrace" v="n:2880994019885266656" />
                    <node concept="3Tm1VV" id="r" role="1B3o_S">
                      <uo k="s:originTrace" v="n:2880994019885266656" />
                    </node>
                    <node concept="2AHcQZ" id="s" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:2880994019885266656" />
                    </node>
                    <node concept="3uibUv" id="t" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      <uo k="s:originTrace" v="n:2880994019885266656" />
                    </node>
                    <node concept="37vLTG" id="u" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <uo k="s:originTrace" v="n:2880994019885266656" />
                      <node concept="3uibUv" id="x" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                        <uo k="s:originTrace" v="n:2880994019885266656" />
                      </node>
                      <node concept="2AHcQZ" id="y" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        <uo k="s:originTrace" v="n:2880994019885266656" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="v" role="3clF46">
                      <property role="TrG5h" value="checkingNodeContext" />
                      <uo k="s:originTrace" v="n:2880994019885266656" />
                      <node concept="3uibUv" id="z" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                        <uo k="s:originTrace" v="n:2880994019885266656" />
                      </node>
                      <node concept="2AHcQZ" id="$" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                        <uo k="s:originTrace" v="n:2880994019885266656" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="w" role="3clF47">
                      <uo k="s:originTrace" v="n:2880994019885266656" />
                      <node concept="3cpWs8" id="_" role="3cqZAp">
                        <uo k="s:originTrace" v="n:2880994019885266656" />
                        <node concept="3cpWsn" id="E" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:2880994019885266656" />
                          <node concept="10P_77" id="F" role="1tU5fm">
                            <uo k="s:originTrace" v="n:2880994019885266656" />
                          </node>
                          <node concept="1rXfSq" id="G" role="33vP2m">
                            <ref role="37wK5l" node="5" resolve="staticCanBeAChild" />
                            <uo k="s:originTrace" v="n:2880994019885266656" />
                            <node concept="2OqwBi" id="H" role="37wK5m">
                              <uo k="s:originTrace" v="n:2880994019885266656" />
                              <node concept="37vLTw" id="L" role="2Oq$k0">
                                <ref role="3cqZAo" node="u" resolve="context" />
                                <uo k="s:originTrace" v="n:2880994019885266656" />
                              </node>
                              <node concept="liA8E" id="M" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getNode()" resolve="getNode" />
                                <uo k="s:originTrace" v="n:2880994019885266656" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="I" role="37wK5m">
                              <uo k="s:originTrace" v="n:2880994019885266656" />
                              <node concept="37vLTw" id="N" role="2Oq$k0">
                                <ref role="3cqZAo" node="u" resolve="context" />
                                <uo k="s:originTrace" v="n:2880994019885266656" />
                              </node>
                              <node concept="liA8E" id="O" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getParentNode()" resolve="getParentNode" />
                                <uo k="s:originTrace" v="n:2880994019885266656" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="J" role="37wK5m">
                              <uo k="s:originTrace" v="n:2880994019885266656" />
                              <node concept="37vLTw" id="P" role="2Oq$k0">
                                <ref role="3cqZAo" node="u" resolve="context" />
                                <uo k="s:originTrace" v="n:2880994019885266656" />
                              </node>
                              <node concept="liA8E" id="Q" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getConcept()" resolve="getConcept" />
                                <uo k="s:originTrace" v="n:2880994019885266656" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="K" role="37wK5m">
                              <uo k="s:originTrace" v="n:2880994019885266656" />
                              <node concept="37vLTw" id="R" role="2Oq$k0">
                                <ref role="3cqZAo" node="u" resolve="context" />
                                <uo k="s:originTrace" v="n:2880994019885266656" />
                              </node>
                              <node concept="liA8E" id="S" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getLink()" resolve="getLink" />
                                <uo k="s:originTrace" v="n:2880994019885266656" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="A" role="3cqZAp">
                        <uo k="s:originTrace" v="n:2880994019885266656" />
                      </node>
                      <node concept="3clFbJ" id="B" role="3cqZAp">
                        <uo k="s:originTrace" v="n:2880994019885266656" />
                        <node concept="3clFbS" id="T" role="3clFbx">
                          <uo k="s:originTrace" v="n:2880994019885266656" />
                          <node concept="3clFbF" id="V" role="3cqZAp">
                            <uo k="s:originTrace" v="n:2880994019885266656" />
                            <node concept="2OqwBi" id="W" role="3clFbG">
                              <uo k="s:originTrace" v="n:2880994019885266656" />
                              <node concept="37vLTw" id="X" role="2Oq$k0">
                                <ref role="3cqZAo" node="v" resolve="checkingNodeContext" />
                                <uo k="s:originTrace" v="n:2880994019885266656" />
                              </node>
                              <node concept="liA8E" id="Y" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                                <uo k="s:originTrace" v="n:2880994019885266656" />
                                <node concept="1dyn4i" id="Z" role="37wK5m">
                                  <property role="1dyqJU" value="canBeChildBreakingPoint" />
                                  <uo k="s:originTrace" v="n:2880994019885266656" />
                                  <node concept="2ShNRf" id="10" role="1dyrYi">
                                    <uo k="s:originTrace" v="n:2880994019885266656" />
                                    <node concept="1pGfFk" id="11" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:2880994019885266656" />
                                      <node concept="Xl_RD" id="12" role="37wK5m">
                                        <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c895902e2(jetbrains.mps.lang.generator.constraints)" />
                                        <uo k="s:originTrace" v="n:2880994019885266656" />
                                      </node>
                                      <node concept="Xl_RD" id="13" role="37wK5m">
                                        <property role="Xl_RC" value="2880994019885266657" />
                                        <uo k="s:originTrace" v="n:2880994019885266656" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Wc70l" id="U" role="3clFbw">
                          <uo k="s:originTrace" v="n:2880994019885266656" />
                          <node concept="3y3z36" id="14" role="3uHU7w">
                            <uo k="s:originTrace" v="n:2880994019885266656" />
                            <node concept="10Nm6u" id="16" role="3uHU7w">
                              <uo k="s:originTrace" v="n:2880994019885266656" />
                            </node>
                            <node concept="37vLTw" id="17" role="3uHU7B">
                              <ref role="3cqZAo" node="v" resolve="checkingNodeContext" />
                              <uo k="s:originTrace" v="n:2880994019885266656" />
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="15" role="3uHU7B">
                            <uo k="s:originTrace" v="n:2880994019885266656" />
                            <node concept="37vLTw" id="18" role="3fr31v">
                              <ref role="3cqZAo" node="E" resolve="result" />
                              <uo k="s:originTrace" v="n:2880994019885266656" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="C" role="3cqZAp">
                        <uo k="s:originTrace" v="n:2880994019885266656" />
                      </node>
                      <node concept="3clFbF" id="D" role="3cqZAp">
                        <uo k="s:originTrace" v="n:2880994019885266656" />
                        <node concept="37vLTw" id="19" role="3clFbG">
                          <ref role="3cqZAo" node="E" resolve="result" />
                          <uo k="s:originTrace" v="n:2880994019885266656" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="p" role="2Ghqu4">
                    <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                    <uo k="s:originTrace" v="n:2880994019885266656" />
                  </node>
                  <node concept="3uibUv" id="q" role="2Ghqu4">
                    <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    <uo k="s:originTrace" v="n:2880994019885266656" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4" role="jymVt">
      <uo k="s:originTrace" v="n:2880994019885266656" />
    </node>
    <node concept="2YIFZL" id="5" role="jymVt">
      <property role="TrG5h" value="staticCanBeAChild" />
      <uo k="s:originTrace" v="n:2880994019885266656" />
      <node concept="10P_77" id="1a" role="3clF45">
        <uo k="s:originTrace" v="n:2880994019885266656" />
      </node>
      <node concept="3Tm6S6" id="1b" role="1B3o_S">
        <uo k="s:originTrace" v="n:2880994019885266656" />
      </node>
      <node concept="3clFbS" id="1c" role="3clF47">
        <uo k="s:originTrace" v="n:2880994019885266658" />
        <node concept="3cpWs8" id="1h" role="3cqZAp">
          <uo k="s:originTrace" v="n:1501378878163829653" />
          <node concept="3cpWsn" id="1o" role="3cpWs9">
            <property role="TrG5h" value="templateQueryAncestor" />
            <uo k="s:originTrace" v="n:1501378878163829654" />
            <node concept="3Tqbb2" id="1p" role="1tU5fm">
              <ref role="ehGHo" to="tpf8:hHd3awK" resolve="TemplateQueryBase" />
              <uo k="s:originTrace" v="n:1501378878163829623" />
            </node>
            <node concept="2OqwBi" id="1q" role="33vP2m">
              <uo k="s:originTrace" v="n:1501378878163829655" />
              <node concept="37vLTw" id="1r" role="2Oq$k0">
                <ref role="3cqZAo" node="1e" resolve="parentNode" />
                <uo k="s:originTrace" v="n:1501378878163829656" />
              </node>
              <node concept="2Xjw5R" id="1s" role="2OqNvi">
                <uo k="s:originTrace" v="n:1501378878163829657" />
                <node concept="1xMEDy" id="1t" role="1xVPHs">
                  <uo k="s:originTrace" v="n:1501378878163829658" />
                  <node concept="chp4Y" id="1u" role="ri$Ld">
                    <ref role="cht4Q" to="tpf8:hHd3awK" resolve="TemplateQueryBase" />
                    <uo k="s:originTrace" v="n:1501378878163829659" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1i" role="3cqZAp">
          <uo k="s:originTrace" v="n:4419897590416943882" />
          <node concept="3cpWsn" id="1v" role="3cpWs9">
            <property role="TrG5h" value="nsConcept" />
            <uo k="s:originTrace" v="n:4419897590416943883" />
            <node concept="3bZ5Sz" id="1w" role="1tU5fm">
              <ref role="3bZ5Sy" to="tpf8:2vVmcK3ii_Y" resolve="AbstractNodeMacroNamespace" />
              <uo k="s:originTrace" v="n:4419897590416941928" />
            </node>
            <node concept="2CBFar" id="1x" role="33vP2m">
              <uo k="s:originTrace" v="n:4419897590416943884" />
              <node concept="chp4Y" id="1y" role="3oSUPX">
                <ref role="cht4Q" to="tpf8:2vVmcK3ii_Y" resolve="AbstractNodeMacroNamespace" />
                <uo k="s:originTrace" v="n:4419897590416943885" />
              </node>
              <node concept="37vLTw" id="1z" role="1m5AlR">
                <ref role="3cqZAo" node="1f" resolve="childConcept" />
                <uo k="s:originTrace" v="n:4419897590416943886" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1j" role="3cqZAp">
          <uo k="s:originTrace" v="n:1501378878163831509" />
        </node>
        <node concept="3SKdUt" id="1k" role="3cqZAp">
          <uo k="s:originTrace" v="n:1501378878163843883" />
          <node concept="1PaTwC" id="1$" role="1aUNEU">
            <uo k="s:originTrace" v="n:1501378878163843884" />
            <node concept="3oM_SD" id="1_" role="1PaTwD">
              <property role="3oM_SC" value="Expression" />
              <uo k="s:originTrace" v="n:1501378878163843885" />
            </node>
            <node concept="3oM_SD" id="1A" role="1PaTwD">
              <property role="3oM_SC" value="in" />
              <uo k="s:originTrace" v="n:1501378878163844005" />
            </node>
            <node concept="3oM_SD" id="1B" role="1PaTwD">
              <property role="3oM_SC" value="a" />
              <uo k="s:originTrace" v="n:1501378878163844009" />
            </node>
            <node concept="3oM_SD" id="1C" role="1PaTwD">
              <property role="3oM_SC" value="query" />
              <uo k="s:originTrace" v="n:1501378878163844014" />
            </node>
            <node concept="3oM_SD" id="1D" role="1PaTwD">
              <property role="3oM_SC" value="+" />
              <uo k="s:originTrace" v="n:1501378878163844020" />
            </node>
            <node concept="3oM_SD" id="1E" role="1PaTwD">
              <property role="3oM_SC" value="enclosed" />
              <uo k="s:originTrace" v="n:1501378878163844037" />
            </node>
            <node concept="3oM_SD" id="1F" role="1PaTwD">
              <property role="3oM_SC" value="in" />
              <uo k="s:originTrace" v="n:1501378878163844085" />
            </node>
            <node concept="3oM_SD" id="1G" role="1PaTwD">
              <property role="3oM_SC" value="a" />
              <uo k="s:originTrace" v="n:1501378878163844094" />
            </node>
            <node concept="3oM_SD" id="1H" role="1PaTwD">
              <property role="3oM_SC" value="LOOP" />
              <uo k="s:originTrace" v="n:1501378878163844104" />
            </node>
            <node concept="3oM_SD" id="1I" role="1PaTwD">
              <property role="3oM_SC" value="macro" />
              <uo k="s:originTrace" v="n:1501378878163844170" />
            </node>
            <node concept="3oM_SD" id="1J" role="1PaTwD">
              <property role="3oM_SC" value="(start" />
              <uo k="s:originTrace" v="n:1501378878163844192" />
            </node>
            <node concept="3oM_SD" id="1K" role="1PaTwD">
              <property role="3oM_SC" value="search" />
              <uo k="s:originTrace" v="n:1501378878163844215" />
            </node>
            <node concept="3oM_SD" id="1L" role="1PaTwD">
              <property role="3oM_SC" value="of" />
              <uo k="s:originTrace" v="n:1501378878163844239" />
            </node>
            <node concept="3oM_SD" id="1M" role="1PaTwD">
              <property role="3oM_SC" value="the" />
              <uo k="s:originTrace" v="n:1501378878163844254" />
            </node>
            <node concept="3oM_SD" id="1N" role="1PaTwD">
              <property role="3oM_SC" value="loop" />
              <uo k="s:originTrace" v="n:1501378878163844270" />
            </node>
            <node concept="3oM_SD" id="1O" role="1PaTwD">
              <property role="3oM_SC" value="from" />
              <uo k="s:originTrace" v="n:1501378878163844297" />
            </node>
            <node concept="3oM_SD" id="1P" role="1PaTwD">
              <property role="3oM_SC" value="the" />
              <uo k="s:originTrace" v="n:1501378878163844325" />
            </node>
            <node concept="3oM_SD" id="1Q" role="1PaTwD">
              <property role="3oM_SC" value="parent" />
              <uo k="s:originTrace" v="n:1501378878163844344" />
            </node>
            <node concept="3oM_SD" id="1R" role="1PaTwD">
              <property role="3oM_SC" value="template" />
              <uo k="s:originTrace" v="n:1501378878163844364" />
            </node>
            <node concept="3oM_SD" id="1S" role="1PaTwD">
              <property role="3oM_SC" value="query)" />
              <uo k="s:originTrace" v="n:1501378878163844395" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1l" role="3cqZAp">
          <uo k="s:originTrace" v="n:8347736528125981214" />
          <node concept="3clFbS" id="1T" role="3clFbx">
            <uo k="s:originTrace" v="n:8347736528125981216" />
            <node concept="3cpWs6" id="1V" role="3cqZAp">
              <uo k="s:originTrace" v="n:1501378878163831682" />
              <node concept="2OqwBi" id="1W" role="3cqZAk">
                <uo k="s:originTrace" v="n:2880994019887731758" />
                <node concept="2OqwBi" id="1X" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:2880994019888397016" />
                  <node concept="37vLTw" id="1Z" role="2Oq$k0">
                    <ref role="3cqZAo" node="1v" resolve="nsConcept" />
                    <uo k="s:originTrace" v="n:4419897590416944216" />
                  </node>
                  <node concept="3zqWPK" id="20" role="2OqNvi">
                    <ref role="37wK5l" to="tpfh:2vVmcK3rHVe" resolve="getTargetMacroOfConceptFrom" />
                    <uo k="s:originTrace" v="n:8085146484218859029" />
                    <node concept="2OqwBi" id="21" role="37wK5m">
                      <uo k="s:originTrace" v="n:8085146484218859031" />
                      <node concept="37vLTw" id="23" role="2Oq$k0">
                        <ref role="3cqZAo" node="1v" resolve="nsConcept" />
                        <uo k="s:originTrace" v="n:8085146484218859032" />
                      </node>
                      <node concept="2qgKlT" id="24" role="2OqNvi">
                        <ref role="37wK5l" to="tpfh:2vVmcK3iiCI" resolve="getMacroConcept" />
                        <uo k="s:originTrace" v="n:8085146484218859033" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="22" role="37wK5m">
                      <ref role="3cqZAo" node="1o" resolve="templateQueryAncestor" />
                      <uo k="s:originTrace" v="n:8085146484218859034" />
                    </node>
                  </node>
                </node>
                <node concept="3x8VRR" id="1Y" role="2OqNvi">
                  <uo k="s:originTrace" v="n:2880994019887732194" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1U" role="3clFbw">
            <uo k="s:originTrace" v="n:1501378878163835425" />
            <node concept="37vLTw" id="25" role="2Oq$k0">
              <ref role="3cqZAo" node="1o" resolve="templateQueryAncestor" />
              <uo k="s:originTrace" v="n:1501378878163832518" />
            </node>
            <node concept="3x8VRR" id="26" role="2OqNvi">
              <uo k="s:originTrace" v="n:1501378878163838647" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1m" role="3cqZAp">
          <uo k="s:originTrace" v="n:8347736528126014921" />
          <node concept="1PaTwC" id="27" role="1aUNEU">
            <uo k="s:originTrace" v="n:8347736528126014922" />
            <node concept="3oM_SD" id="28" role="1PaTwD">
              <property role="3oM_SC" value="namespace" />
              <uo k="s:originTrace" v="n:8347736528126014923" />
            </node>
            <node concept="3oM_SD" id="29" role="1PaTwD">
              <property role="3oM_SC" value="expression" />
              <uo k="s:originTrace" v="n:8347736528126016690" />
            </node>
            <node concept="3oM_SD" id="2a" role="1PaTwD">
              <property role="3oM_SC" value="could" />
              <uo k="s:originTrace" v="n:8347736528126016714" />
            </node>
            <node concept="3oM_SD" id="2b" role="1PaTwD">
              <property role="3oM_SC" value="be" />
              <uo k="s:originTrace" v="n:8347736528126016719" />
            </node>
            <node concept="3oM_SD" id="2c" role="1PaTwD">
              <property role="3oM_SC" value="part" />
              <uo k="s:originTrace" v="n:8347736528126016725" />
            </node>
            <node concept="3oM_SD" id="2d" role="1PaTwD">
              <property role="3oM_SC" value="of" />
              <uo k="s:originTrace" v="n:8347736528126016742" />
            </node>
            <node concept="3oM_SD" id="2e" role="1PaTwD">
              <property role="3oM_SC" value="template" />
              <uo k="s:originTrace" v="n:8347736528126016750" />
            </node>
            <node concept="3oM_SD" id="2f" role="1PaTwD">
              <property role="3oM_SC" value="call" />
              <uo k="s:originTrace" v="n:8347736528126016779" />
            </node>
            <node concept="3oM_SD" id="2g" role="1PaTwD">
              <property role="3oM_SC" value="argument" />
              <uo k="s:originTrace" v="n:8347736528126016789" />
            </node>
            <node concept="3oM_SD" id="2h" role="1PaTwD">
              <property role="3oM_SC" value="expression" />
              <uo k="s:originTrace" v="n:8347736528126016810" />
            </node>
            <node concept="3oM_SD" id="2i" role="1PaTwD">
              <property role="3oM_SC" value="not" />
              <uo k="s:originTrace" v="n:8347736528126016832" />
            </node>
            <node concept="3oM_SD" id="2j" role="1PaTwD">
              <property role="3oM_SC" value="nested" />
              <uo k="s:originTrace" v="n:8347736528126016855" />
            </node>
            <node concept="3oM_SD" id="2k" role="1PaTwD">
              <property role="3oM_SC" value="inside" />
              <uo k="s:originTrace" v="n:8347736528126016869" />
            </node>
            <node concept="3oM_SD" id="2l" role="1PaTwD">
              <property role="3oM_SC" value="a" />
              <uo k="s:originTrace" v="n:8347736528126016904" />
            </node>
            <node concept="3oM_SD" id="2m" role="1PaTwD">
              <property role="3oM_SC" value="query" />
              <uo k="s:originTrace" v="n:8347736528126016920" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1n" role="3cqZAp">
          <uo k="s:originTrace" v="n:8347736528125985842" />
          <node concept="2OqwBi" id="2n" role="3cqZAk">
            <uo k="s:originTrace" v="n:8347736528126009550" />
            <node concept="2OqwBi" id="2o" role="2Oq$k0">
              <uo k="s:originTrace" v="n:8347736528126002529" />
              <node concept="37vLTw" id="2q" role="2Oq$k0">
                <ref role="3cqZAo" node="1d" resolve="node" />
                <uo k="s:originTrace" v="n:8347736528125999359" />
              </node>
              <node concept="3zqWPK" id="2r" role="2OqNvi">
                <ref role="37wK5l" to="tpfh:2vVmcK3imJA" resolve="getTargetMacro" />
                <uo k="s:originTrace" v="n:8085146484218859037" />
              </node>
            </node>
            <node concept="3x8VRR" id="2p" role="2OqNvi">
              <uo k="s:originTrace" v="n:7337830102090855442" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1d" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:2880994019885266656" />
        <node concept="3uibUv" id="2s" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:2880994019885266656" />
        </node>
      </node>
      <node concept="37vLTG" id="1e" role="3clF46">
        <property role="TrG5h" value="parentNode" />
        <uo k="s:originTrace" v="n:2880994019885266656" />
        <node concept="3uibUv" id="2t" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:2880994019885266656" />
        </node>
      </node>
      <node concept="37vLTG" id="1f" role="3clF46">
        <property role="TrG5h" value="childConcept" />
        <uo k="s:originTrace" v="n:2880994019885266656" />
        <node concept="3uibUv" id="2u" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
          <uo k="s:originTrace" v="n:2880994019885266656" />
        </node>
      </node>
      <node concept="37vLTG" id="1g" role="3clF46">
        <property role="TrG5h" value="link" />
        <uo k="s:originTrace" v="n:2880994019885266656" />
        <node concept="3uibUv" id="2v" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
          <uo k="s:originTrace" v="n:2880994019885266656" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2w">
    <property role="TrG5h" value="ConstraintsAspectDescriptor" />
    <property role="3GE5qa" value="Constraints" />
    <node concept="3uibUv" id="2x" role="1zkMxy">
      <ref role="3uigEE" to="ze1i:~BaseConstraintsAspectDescriptor" resolve="BaseConstraintsAspectDescriptor" />
    </node>
    <node concept="3Tm1VV" id="2y" role="1B3o_S" />
    <node concept="3clFbW" id="2z" role="jymVt">
      <node concept="3cqZAl" id="2A" role="3clF45" />
      <node concept="3Tm1VV" id="2B" role="1B3o_S" />
      <node concept="3clFbS" id="2C" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="2$" role="jymVt" />
    <node concept="3clFb_" id="2_" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getConstraints" />
      <property role="DiZV1" value="false" />
      <node concept="2AHcQZ" id="2D" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="2E" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3Tm1VV" id="2F" role="1B3o_S" />
      <node concept="3uibUv" id="2G" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
      </node>
      <node concept="37vLTG" id="2H" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3bZ5Sz" id="2K" role="1tU5fm" />
        <node concept="2AHcQZ" id="2L" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="2I" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="2M" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
        </node>
        <node concept="2AHcQZ" id="2N" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="2J" role="3clF47">
        <node concept="1_3QMa" id="2O" role="3cqZAp">
          <node concept="37vLTw" id="2Q" role="1_3QMn">
            <ref role="3cqZAo" node="2H" resolve="concept" />
          </node>
          <node concept="1pnPoh" id="2R" role="1_3QMm">
            <node concept="3clFbS" id="37" role="1pnPq1">
              <node concept="3cpWs6" id="39" role="3cqZAp">
                <node concept="2ShNRf" id="3a" role="3cqZAk">
                  <node concept="1pGfFk" id="3b" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="iK" resolve="Root_MappingRule_Constraints" />
                    <node concept="37vLTw" id="3c" role="37wK5m">
                      <ref role="3cqZAo" node="2I" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="38" role="1pnPq6">
              <ref role="3gnhBz" to="tpf8:gZlhOrr" resolve="Root_MappingRule" />
            </node>
          </node>
          <node concept="1pnPoh" id="2S" role="1_3QMm">
            <node concept="3clFbS" id="3d" role="1pnPq1">
              <node concept="3cpWs6" id="3f" role="3cqZAp">
                <node concept="2ShNRf" id="3g" role="3cqZAk">
                  <node concept="1pGfFk" id="3h" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="4_" resolve="CreateRootRule_Constraints" />
                    <node concept="37vLTw" id="3i" role="37wK5m">
                      <ref role="3cqZAo" node="2I" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="3e" role="1pnPq6">
              <ref role="3gnhBz" to="tpf8:gYVPola" resolve="CreateRootRule" />
            </node>
          </node>
          <node concept="1pnPoh" id="2T" role="1_3QMm">
            <node concept="3clFbS" id="3j" role="1pnPq1">
              <node concept="3cpWs6" id="3l" role="3cqZAp">
                <node concept="2ShNRf" id="3m" role="3cqZAk">
                  <node concept="1pGfFk" id="3n" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="rE" resolve="TemplateArgumentQueryExpression_Constraints" />
                    <node concept="37vLTw" id="3o" role="37wK5m">
                      <ref role="3cqZAo" node="2I" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="3k" role="1pnPq6">
              <ref role="3gnhBz" to="tpf8:3w1cHt2UcMK" resolve="TemplateArgumentQueryExpression" />
            </node>
          </node>
          <node concept="1pnPoh" id="2U" role="1_3QMm">
            <node concept="3clFbS" id="3p" role="1pnPq1">
              <node concept="3cpWs6" id="3r" role="3cqZAp">
                <node concept="2ShNRf" id="3s" role="3cqZAk">
                  <node concept="1pGfFk" id="3t" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="n7" resolve="TemplateArgumentPatternVarRefExpression_Constraints" />
                    <node concept="37vLTw" id="3u" role="37wK5m">
                      <ref role="3cqZAo" node="2I" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="3q" role="1pnPq6">
              <ref role="3gnhBz" to="tpf8:42YwEPgeNM8" resolve="TemplateArgumentPatternVarRefExpression" />
            </node>
          </node>
          <node concept="1pnPoh" id="2V" role="1_3QMm">
            <node concept="3clFbS" id="3v" role="1pnPq1">
              <node concept="3cpWs6" id="3x" role="3cqZAp">
                <node concept="2ShNRf" id="3y" role="3cqZAk">
                  <node concept="1pGfFk" id="3z" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="pX" resolve="TemplateArgumentPropertyPatternRefExpression_Constraints" />
                    <node concept="37vLTw" id="3$" role="37wK5m">
                      <ref role="3cqZAo" node="2I" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="3w" role="1pnPq6">
              <ref role="3gnhBz" to="tpf8:4bn6ZJF6_RB" resolve="TemplateArgumentPropertyPatternRefExpression" />
            </node>
          </node>
          <node concept="1pnPoh" id="2W" role="1_3QMm">
            <node concept="3clFbS" id="3_" role="1pnPq1">
              <node concept="3cpWs6" id="3B" role="3cqZAp">
                <node concept="2ShNRf" id="3C" role="3cqZAk">
                  <node concept="1pGfFk" id="3D" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="jW" resolve="TemplateArgumentLinkPatternRefExpression_Constraints" />
                    <node concept="37vLTw" id="3E" role="37wK5m">
                      <ref role="3cqZAo" node="2I" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="3A" role="1pnPq6">
              <ref role="3gnhBz" to="tpf8:4bn6ZJF6_RC" resolve="TemplateArgumentLinkPatternRefExpression" />
            </node>
          </node>
          <node concept="1pnPoh" id="2X" role="1_3QMm">
            <node concept="3clFbS" id="3F" role="1pnPq1">
              <node concept="3cpWs6" id="3H" role="3cqZAp">
                <node concept="2ShNRf" id="3I" role="3cqZAk">
                  <node concept="1pGfFk" id="3J" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="9r" resolve="GeneratorParameterReference_Constraints" />
                    <node concept="37vLTw" id="3K" role="37wK5m">
                      <ref role="3cqZAo" node="2I" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="3G" role="1pnPq6">
              <ref role="3gnhBz" to="tpf8:$79JWCfbYa" resolve="GeneratorParameterReference" />
            </node>
          </node>
          <node concept="1pnPoh" id="2Y" role="1_3QMm">
            <node concept="3clFbS" id="3L" role="1pnPq1">
              <node concept="3cpWs6" id="3N" role="3cqZAp">
                <node concept="2ShNRf" id="3O" role="3cqZAk">
                  <node concept="1pGfFk" id="3P" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="lD" resolve="TemplateArgumentParameterExpression_Constraints" />
                    <node concept="37vLTw" id="3Q" role="37wK5m">
                      <ref role="3cqZAo" node="2I" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="3M" role="1pnPq6">
              <ref role="3gnhBz" to="tpf8:4lQlo5qukTT" resolve="TemplateArgumentParameterExpression" />
            </node>
          </node>
          <node concept="1pnPoh" id="2Z" role="1_3QMm">
            <node concept="3clFbS" id="3R" role="1pnPq1">
              <node concept="3cpWs6" id="3T" role="3cqZAp">
                <node concept="2ShNRf" id="3U" role="3cqZAk">
                  <node concept="1pGfFk" id="3V" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="wl" resolve="TemplateSwitchMacro_Constraints" />
                    <node concept="37vLTw" id="3W" role="37wK5m">
                      <ref role="3cqZAo" node="2I" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="3S" role="1pnPq6">
              <ref role="3gnhBz" to="tpf8:QzR6Tht7mj" resolve="TemplateSwitchMacro" />
            </node>
          </node>
          <node concept="1pnPoh" id="30" role="1_3QMm">
            <node concept="3clFbS" id="3X" role="1pnPq1">
              <node concept="3cpWs6" id="3Z" role="3cqZAp">
                <node concept="2ShNRf" id="40" role="3cqZAk">
                  <node concept="1pGfFk" id="41" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="tT" resolve="TemplateCallMacro_Constraints" />
                    <node concept="37vLTw" id="42" role="37wK5m">
                      <ref role="3cqZAo" node="2I" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="3Y" role="1pnPq6">
              <ref role="3gnhBz" to="tpf8:1jRYachIf5f" resolve="TemplateCallMacro" />
            </node>
          </node>
          <node concept="1pnPoh" id="31" role="1_3QMm">
            <node concept="3clFbS" id="43" role="1pnPq1">
              <node concept="3cpWs6" id="45" role="3cqZAp">
                <node concept="2ShNRf" id="46" role="3cqZAk">
                  <node concept="1pGfFk" id="47" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="v7" resolve="TemplateDeclarationReference_Constraints" />
                    <node concept="37vLTw" id="48" role="37wK5m">
                      <ref role="3cqZAo" node="2I" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="44" role="1pnPq6">
              <ref role="3gnhBz" to="tpf8:h0j$61m" resolve="TemplateDeclarationReference" />
            </node>
          </node>
          <node concept="1pnPoh" id="32" role="1_3QMm">
            <node concept="3clFbS" id="49" role="1pnPq1">
              <node concept="3cpWs6" id="4b" role="3cqZAp">
                <node concept="2ShNRf" id="4c" role="3cqZAk">
                  <node concept="1pGfFk" id="4d" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="xz" resolve="TemplateSwitch_Constraints" />
                    <node concept="37vLTw" id="4e" role="37wK5m">
                      <ref role="3cqZAo" node="2I" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="4a" role="1pnPq6">
              <ref role="3gnhBz" to="tpf8:gcjVnq8" resolve="TemplateSwitch" />
            </node>
          </node>
          <node concept="1pnPoh" id="33" role="1_3QMm">
            <node concept="3clFbS" id="4f" role="1pnPq1">
              <node concept="3cpWs6" id="4h" role="3cqZAp">
                <node concept="2ShNRf" id="4i" role="3cqZAk">
                  <node concept="1pGfFk" id="4j" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="fD" resolve="ReferenceReductionRule_Constraints" />
                    <node concept="37vLTw" id="4k" role="37wK5m">
                      <ref role="3cqZAo" node="2I" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="4g" role="1pnPq6">
              <ref role="3gnhBz" to="tpf8:7u6$QPxIdFU" resolve="ReferenceReductionRule" />
            </node>
          </node>
          <node concept="1pnPoh" id="34" role="1_3QMm">
            <node concept="3clFbS" id="4l" role="1pnPq1">
              <node concept="3cpWs6" id="4n" role="3cqZAp">
                <node concept="2ShNRf" id="4o" role="3cqZAk">
                  <node concept="1pGfFk" id="4p" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="t4" resolve="TemplateArgumentVarRefExpression2_Constraints" />
                    <node concept="37vLTw" id="4q" role="37wK5m">
                      <ref role="3cqZAo" node="2I" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="4m" role="1pnPq6">
              <ref role="3gnhBz" to="tpf8:UesZ_oiISf" resolve="TemplateArgumentVarRefExpression2" />
            </node>
          </node>
          <node concept="1pnPoh" id="35" role="1_3QMm">
            <node concept="3clFbS" id="4r" role="1pnPq1">
              <node concept="3cpWs6" id="4t" role="3cqZAp">
                <node concept="2ShNRf" id="4u" role="3cqZAk">
                  <node concept="1pGfFk" id="4v" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="3" resolve="AbstractNodeMacroNamespace_Constraints" />
                    <node concept="37vLTw" id="4w" role="37wK5m">
                      <ref role="3cqZAo" node="2I" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="4s" role="1pnPq6">
              <ref role="3gnhBz" to="tpf8:2vVmcK3ii_Y" resolve="AbstractNodeMacroNamespace" />
            </node>
          </node>
          <node concept="3clFbS" id="36" role="1prKM_" />
        </node>
        <node concept="3cpWs6" id="2P" role="3cqZAp">
          <node concept="10Nm6u" id="4x" role="3cqZAk" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="4y">
    <property role="TrG5h" value="CreateRootRule_Constraints" />
    <uo k="s:originTrace" v="n:1213104840277" />
    <node concept="3Tm1VV" id="4z" role="1B3o_S">
      <uo k="s:originTrace" v="n:1213104840277" />
    </node>
    <node concept="3uibUv" id="4$" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:1213104840277" />
    </node>
    <node concept="3clFbW" id="4_" role="jymVt">
      <uo k="s:originTrace" v="n:1213104840277" />
      <node concept="37vLTG" id="4C" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:1213104840277" />
        <node concept="3uibUv" id="4F" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:1213104840277" />
        </node>
      </node>
      <node concept="3cqZAl" id="4D" role="3clF45">
        <uo k="s:originTrace" v="n:1213104840277" />
      </node>
      <node concept="3clFbS" id="4E" role="3clF47">
        <uo k="s:originTrace" v="n:1213104840277" />
        <node concept="XkiVB" id="4G" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:1213104840277" />
          <node concept="1BaE9c" id="4I" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="CreateRootRule$wZ" />
            <uo k="s:originTrace" v="n:1213104840277" />
            <node concept="2YIFZM" id="4K" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:1213104840277" />
              <node concept="11gdke" id="4L" role="37wK5m">
                <property role="11gdj1" value="b401a68083254110L" />
                <uo k="s:originTrace" v="n:1213104840277" />
              </node>
              <node concept="11gdke" id="4M" role="37wK5m">
                <property role="11gdj1" value="8fd384331ff25befL" />
                <uo k="s:originTrace" v="n:1213104840277" />
              </node>
              <node concept="11gdke" id="4N" role="37wK5m">
                <property role="11gdj1" value="10fbbd5854aL" />
                <uo k="s:originTrace" v="n:1213104840277" />
              </node>
              <node concept="Xl_RD" id="4O" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.generator.structure.CreateRootRule" />
                <uo k="s:originTrace" v="n:1213104840277" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="4J" role="37wK5m">
            <ref role="3cqZAo" node="4C" resolve="initContext" />
            <uo k="s:originTrace" v="n:1213104840277" />
          </node>
        </node>
        <node concept="3clFbF" id="4H" role="3cqZAp">
          <uo k="s:originTrace" v="n:1213104840277" />
          <node concept="1rXfSq" id="4P" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:1213104840277" />
            <node concept="2ShNRf" id="4Q" role="37wK5m">
              <uo k="s:originTrace" v="n:1213104840277" />
              <node concept="1pGfFk" id="4R" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="4T" resolve="CreateRootRule_Constraints.RD1" />
                <uo k="s:originTrace" v="n:1213104840277" />
                <node concept="Xjq3P" id="4S" role="37wK5m">
                  <uo k="s:originTrace" v="n:1213104840277" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4A" role="jymVt">
      <uo k="s:originTrace" v="n:1213104840277" />
    </node>
    <node concept="312cEu" id="4B" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:1213104840277" />
      <node concept="3clFbW" id="4T" role="jymVt">
        <uo k="s:originTrace" v="n:1213104840277" />
        <node concept="37vLTG" id="4W" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:1213104840277" />
          <node concept="3uibUv" id="4Z" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1213104840277" />
          </node>
        </node>
        <node concept="3cqZAl" id="4X" role="3clF45">
          <uo k="s:originTrace" v="n:1213104840277" />
        </node>
        <node concept="3clFbS" id="4Y" role="3clF47">
          <uo k="s:originTrace" v="n:1213104840277" />
          <node concept="XkiVB" id="50" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1213104840277" />
            <node concept="1BaE9c" id="51" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="templateNode$vPtI" />
              <uo k="s:originTrace" v="n:1213104840277" />
              <node concept="2YIFZM" id="55" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:1213104840277" />
                <node concept="11gdke" id="56" role="37wK5m">
                  <property role="11gdj1" value="b401a68083254110L" />
                  <uo k="s:originTrace" v="n:1213104840277" />
                </node>
                <node concept="11gdke" id="57" role="37wK5m">
                  <property role="11gdj1" value="8fd384331ff25befL" />
                  <uo k="s:originTrace" v="n:1213104840277" />
                </node>
                <node concept="11gdke" id="58" role="37wK5m">
                  <property role="11gdj1" value="10fbbd5854aL" />
                  <uo k="s:originTrace" v="n:1213104840277" />
                </node>
                <node concept="11gdke" id="59" role="37wK5m">
                  <property role="11gdj1" value="10fbbd5854dL" />
                  <uo k="s:originTrace" v="n:1213104840277" />
                </node>
                <node concept="Xl_RD" id="5a" role="37wK5m">
                  <property role="Xl_RC" value="templateNode" />
                  <uo k="s:originTrace" v="n:1213104840277" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="52" role="37wK5m">
              <ref role="3cqZAo" node="4W" resolve="container" />
              <uo k="s:originTrace" v="n:1213104840277" />
            </node>
            <node concept="3clFbT" id="53" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:1213104840277" />
            </node>
            <node concept="3clFbT" id="54" role="37wK5m">
              <uo k="s:originTrace" v="n:1213104840277" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="4U" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:1213104840277" />
        <node concept="3Tm1VV" id="5b" role="1B3o_S">
          <uo k="s:originTrace" v="n:1213104840277" />
        </node>
        <node concept="3uibUv" id="5c" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:1213104840277" />
        </node>
        <node concept="2AHcQZ" id="5d" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:1213104840277" />
        </node>
        <node concept="3clFbS" id="5e" role="3clF47">
          <uo k="s:originTrace" v="n:1213104840277" />
          <node concept="3cpWs6" id="5g" role="3cqZAp">
            <uo k="s:originTrace" v="n:1213104840277" />
            <node concept="2ShNRf" id="5h" role="3cqZAk">
              <uo k="s:originTrace" v="n:6836281137582788342" />
              <node concept="YeOm9" id="5i" role="2ShVmc">
                <uo k="s:originTrace" v="n:6836281137582788342" />
                <node concept="1Y3b0j" id="5j" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:6836281137582788342" />
                  <node concept="3Tm1VV" id="5k" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6836281137582788342" />
                  </node>
                  <node concept="3clFb_" id="5l" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:6836281137582788342" />
                    <node concept="3Tm1VV" id="5n" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582788342" />
                    </node>
                    <node concept="3uibUv" id="5o" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:6836281137582788342" />
                    </node>
                    <node concept="3clFbS" id="5p" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582788342" />
                      <node concept="3cpWs6" id="5r" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582788342" />
                        <node concept="2ShNRf" id="5s" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582788342" />
                          <node concept="1pGfFk" id="5t" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:6836281137582788342" />
                            <node concept="Xl_RD" id="5u" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c895902e2(jetbrains.mps.lang.generator.constraints)" />
                              <uo k="s:originTrace" v="n:6836281137582788342" />
                            </node>
                            <node concept="Xl_RD" id="5v" role="37wK5m">
                              <property role="Xl_RC" value="6836281137582788342" />
                              <uo k="s:originTrace" v="n:6836281137582788342" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="5q" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582788342" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="5m" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:6836281137582788342" />
                    <node concept="3Tm1VV" id="5w" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582788342" />
                    </node>
                    <node concept="3uibUv" id="5x" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:6836281137582788342" />
                    </node>
                    <node concept="37vLTG" id="5y" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:6836281137582788342" />
                      <node concept="3uibUv" id="5_" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:6836281137582788342" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="5z" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582788342" />
                      <node concept="3clFbF" id="5A" role="3cqZAp">
                        <uo k="s:originTrace" v="n:445563756713615133" />
                        <node concept="2ShNRf" id="5B" role="3clFbG">
                          <uo k="s:originTrace" v="n:445563756713615135" />
                          <node concept="1pGfFk" id="5C" role="2ShVmc">
                            <ref role="37wK5l" node="eU" resolve="MappingRuleTemplateNodeSearchScope" />
                            <uo k="s:originTrace" v="n:445563756713615136" />
                            <node concept="2OqwBi" id="5D" role="37wK5m">
                              <uo k="s:originTrace" v="n:445563756713615137" />
                              <node concept="1DoJHT" id="5E" role="2Oq$k0">
                                <property role="1Dpdpm" value="getContextNode" />
                                <uo k="s:originTrace" v="n:445563756713615138" />
                                <node concept="3uibUv" id="5G" role="1Ez5kq">
                                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                </node>
                                <node concept="37vLTw" id="5H" role="1EMhIo">
                                  <ref role="3cqZAo" node="5y" resolve="_context" />
                                </node>
                              </node>
                              <node concept="I4A8Y" id="5F" role="2OqNvi">
                                <uo k="s:originTrace" v="n:445563756713615139" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="5$" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582788342" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5f" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:1213104840277" />
        </node>
      </node>
      <node concept="3uibUv" id="4V" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:1213104840277" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5I">
    <property role="3GE5qa" value="" />
    <property role="1EXbeo" value="true" />
    <property role="TrG5h" value="GeneratedFeedbackAspectConstraints" />
    <node concept="3Tm1VV" id="5J" role="1B3o_S" />
    <node concept="3uibUv" id="5K" role="EKbjA">
      <ref role="3uigEE" to="9jwd:~FeedbackAspect" resolve="FeedbackAspect" />
    </node>
    <node concept="3clFb_" id="5L" role="jymVt">
      <property role="TrG5h" value="getPerConceptDescriptors" />
      <node concept="3Tm1VV" id="5M" role="1B3o_S" />
      <node concept="3uibUv" id="5N" role="3clF45">
        <ref role="3uigEE" to="1ctc:~Stream" resolve="Stream" />
        <node concept="3uibUv" id="5R" role="11_B2D">
          <ref role="3uigEE" to="9jwd:~FeedbackPerConceptDescriptor" resolve="FeedbackPerConceptDescriptor" />
        </node>
      </node>
      <node concept="3clFbS" id="5O" role="3clF47">
        <node concept="3cpWs6" id="5S" role="3cqZAp">
          <node concept="2YIFZM" id="5T" role="3cqZAk">
            <ref role="1Pybhc" to="1ctc:~Stream" resolve="Stream" />
            <ref role="37wK5l" to="1ctc:~Stream.of(java.lang.Object)" resolve="of" />
            <node concept="2ShNRf" id="5U" role="37wK5m">
              <node concept="1pGfFk" id="5V" role="2ShVmc">
                <ref role="37wK5l" node="dG" resolve="InsertCallSiteMacro_ConstraintsFeedback" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5P" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="2AHcQZ" id="5Q" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5W">
    <property role="TrG5h" value="GeneratedRulesConstraintsAspect" />
    <property role="1EXbeo" value="true" />
    <node concept="3Tm1VV" id="5X" role="1B3o_S" />
    <node concept="3uibUv" id="5Y" role="EKbjA">
      <ref role="3uigEE" to="o99v:~RulesConstraintsAspect" resolve="RulesConstraintsAspect" />
    </node>
    <node concept="3clFb_" id="5Z" role="jymVt">
      <property role="TrG5h" value="getDescriptor" />
      <node concept="3Tm1VV" id="60" role="1B3o_S" />
      <node concept="37vLTG" id="61" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3bZ5Sz" id="66" role="1tU5fm" />
        <node concept="2AHcQZ" id="67" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3uibUv" id="62" role="3clF45">
        <ref role="3uigEE" to="o99v:~RulesConstraintsDescriptor" resolve="RulesConstraintsDescriptor" />
      </node>
      <node concept="3clFbS" id="63" role="3clF47">
        <node concept="1_3QMa" id="68" role="3cqZAp">
          <node concept="37vLTw" id="6a" role="1_3QMn">
            <ref role="3cqZAo" node="61" resolve="concept" />
          </node>
          <node concept="1pnPoh" id="6b" role="1_3QMm">
            <node concept="3clFbS" id="6d" role="1pnPq1">
              <node concept="3cpWs6" id="6f" role="3cqZAp">
                <node concept="2ShNRf" id="6g" role="3cqZAk">
                  <node concept="HV5vD" id="6h" role="2ShVmc">
                    <ref role="HV5vE" node="a0" resolve="InsertCallSiteMacro_ConstraintRules" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="6e" role="1pnPq6">
              <ref role="3gnhBz" to="tpf8:4B_nWyeQsel" resolve="InsertCallSiteMacro" />
            </node>
          </node>
          <node concept="3clFbS" id="6c" role="1prKM_" />
        </node>
        <node concept="3cpWs6" id="69" role="3cqZAp">
          <node concept="10Nm6u" id="6i" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="64" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="2AHcQZ" id="65" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="39dXUE" id="6j">
    <node concept="39e2AJ" id="6k" role="39e2AI">
      <property role="39e3Y2" value="constraintClass" />
      <node concept="39e2AG" id="6y" role="39e3Y0">
        <ref role="39e2AK" to="tpfi:2vVmcK3ijrw" resolve="AbstractNodeMacroNamespace_Constraints" />
        <node concept="385nmt" id="6L" role="385vvn">
          <property role="385vuF" value="AbstractNodeMacroNamespace_Constraints" />
          <node concept="3u3nmq" id="6N" role="385v07">
            <property role="3u3nmv" value="2880994019885266656" />
          </node>
        </node>
        <node concept="39e2AT" id="6M" role="39e2AY">
          <ref role="39e2AS" node="0" resolve="AbstractNodeMacroNamespace_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="6z" role="39e3Y0">
        <ref role="39e2AK" to="tpfi:hDMFHTl" resolve="CreateRootRule_Constraints" />
        <node concept="385nmt" id="6O" role="385vvn">
          <property role="385vuF" value="CreateRootRule_Constraints" />
          <node concept="3u3nmq" id="6Q" role="385v07">
            <property role="3u3nmv" value="1213104840277" />
          </node>
        </node>
        <node concept="39e2AT" id="6P" role="39e2AY">
          <ref role="39e2AS" node="4y" resolve="CreateRootRule_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="6$" role="39e3Y0">
        <ref role="39e2AK" to="tpfi:6SPT5KYquNH" resolve="GeneratorParameterReference_Constraints" />
        <node concept="385nmt" id="6R" role="385vvn">
          <property role="385vuF" value="GeneratorParameterReference_Constraints" />
          <node concept="3u3nmq" id="6T" role="385v07">
            <property role="3u3nmv" value="7941504602772991213" />
          </node>
        </node>
        <node concept="39e2AT" id="6S" role="39e2AY">
          <ref role="39e2AS" node="9o" resolve="GeneratorParameterReference_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="6_" role="39e3Y0">
        <ref role="39e2AK" to="tpfi:7u6$QPxIvZh" resolve="ReferenceReductionRule_Constraints" />
        <node concept="385nmt" id="6U" role="385vvn">
          <property role="385vuF" value="ReferenceReductionRule_Constraints" />
          <node concept="3u3nmq" id="6W" role="385v07">
            <property role="3u3nmv" value="8612733435392950225" />
          </node>
        </node>
        <node concept="39e2AT" id="6V" role="39e2AY">
          <ref role="39e2AS" node="fA" resolve="ReferenceReductionRule_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="6A" role="39e3Y0">
        <ref role="39e2AK" to="tpfi:hDMFHe3" resolve="Root_MappingRule_Constraints" />
        <node concept="385nmt" id="6X" role="385vvn">
          <property role="385vuF" value="Root_MappingRule_Constraints" />
          <node concept="3u3nmq" id="6Z" role="385v07">
            <property role="3u3nmv" value="1213104837507" />
          </node>
        </node>
        <node concept="39e2AT" id="6Y" role="39e2AY">
          <ref role="39e2AS" node="iH" resolve="Root_MappingRule_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="6B" role="39e3Y0">
        <ref role="39e2AK" to="tpfi:4bn6ZJF6_SH" resolve="TemplateArgumentLinkPatternRefExpression_Constraints" />
        <node concept="385nmt" id="70" role="385vvn">
          <property role="385vuF" value="TemplateArgumentLinkPatternRefExpression_Constraints" />
          <node concept="3u3nmq" id="72" role="385v07">
            <property role="3u3nmv" value="4816349095291149869" />
          </node>
        </node>
        <node concept="39e2AT" id="71" role="39e2AY">
          <ref role="39e2AS" node="jT" resolve="TemplateArgumentLinkPatternRefExpression_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="6C" role="39e3Y0">
        <ref role="39e2AK" to="tpfi:4lQlo5quodY" resolve="TemplateArgumentParameterExpression_Constraints" />
        <node concept="385nmt" id="73" role="385vvn">
          <property role="385vuF" value="TemplateArgumentParameterExpression_Constraints" />
          <node concept="3u3nmq" id="75" role="385v07">
            <property role="3u3nmv" value="5005282049925940094" />
          </node>
        </node>
        <node concept="39e2AT" id="74" role="39e2AY">
          <ref role="39e2AS" node="lA" resolve="TemplateArgumentParameterExpression_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="6D" role="39e3Y0">
        <ref role="39e2AK" to="tpfi:42YwEPgeQ9y" resolve="TemplateArgumentPatternVarRefExpression_Constraints" />
        <node concept="385nmt" id="76" role="385vvn">
          <property role="385vuF" value="TemplateArgumentPatternVarRefExpression_Constraints" />
          <node concept="3u3nmq" id="78" role="385v07">
            <property role="3u3nmv" value="4665309944889434722" />
          </node>
        </node>
        <node concept="39e2AT" id="77" role="39e2AY">
          <ref role="39e2AS" node="n4" resolve="TemplateArgumentPatternVarRefExpression_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="6E" role="39e3Y0">
        <ref role="39e2AK" to="tpfi:4bn6ZJF6_RK" resolve="TemplateArgumentPropertyPatternRefExpression_Constraints" />
        <node concept="385nmt" id="79" role="385vvn">
          <property role="385vuF" value="TemplateArgumentPropertyPatternRefExpression_Constraints" />
          <node concept="3u3nmq" id="7b" role="385v07">
            <property role="3u3nmv" value="4816349095291149808" />
          </node>
        </node>
        <node concept="39e2AT" id="7a" role="39e2AY">
          <ref role="39e2AS" node="pU" resolve="TemplateArgumentPropertyPatternRefExpression_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="6F" role="39e3Y0">
        <ref role="39e2AK" to="tpfi:3w1cHt2UmEj" resolve="TemplateArgumentQueryExpression_Constraints" />
        <node concept="385nmt" id="7c" role="385vvn">
          <property role="385vuF" value="TemplateArgumentQueryExpression_Constraints" />
          <node concept="3u3nmq" id="7e" role="385v07">
            <property role="3u3nmv" value="4035562641222625939" />
          </node>
        </node>
        <node concept="39e2AT" id="7d" role="39e2AY">
          <ref role="39e2AS" node="rB" resolve="TemplateArgumentQueryExpression_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="6G" role="39e3Y0">
        <ref role="39e2AK" to="tpfi:UesZ_or5ti" resolve="TemplateArgumentVarRefExpression2_Constraints" />
        <node concept="385nmt" id="7f" role="385vvn">
          <property role="385vuF" value="TemplateArgumentVarRefExpression2_Constraints" />
          <node concept="3u3nmq" id="7h" role="385v07">
            <property role="3u3nmv" value="1048903277991450450" />
          </node>
        </node>
        <node concept="39e2AT" id="7g" role="39e2AY">
          <ref role="39e2AS" node="t1" resolve="TemplateArgumentVarRefExpression2_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="6H" role="39e3Y0">
        <ref role="39e2AK" to="tpfi:QzR6ThtQat" resolve="TemplateCallMacro_Constraints" />
        <node concept="385nmt" id="7i" role="385vvn">
          <property role="385vuF" value="TemplateCallMacro_Constraints" />
          <node concept="3u3nmq" id="7k" role="385v07">
            <property role="3u3nmv" value="982871510068191901" />
          </node>
        </node>
        <node concept="39e2AT" id="7j" role="39e2AY">
          <ref role="39e2AS" node="tQ" resolve="TemplateCallMacro_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="6I" role="39e3Y0">
        <ref role="39e2AK" to="tpfi:QzR6ThtQW9" resolve="TemplateDeclarationReference_Constraints" />
        <node concept="385nmt" id="7l" role="385vvn">
          <property role="385vuF" value="TemplateDeclarationReference_Constraints" />
          <node concept="3u3nmq" id="7n" role="385v07">
            <property role="3u3nmv" value="982871510068195081" />
          </node>
        </node>
        <node concept="39e2AT" id="7m" role="39e2AY">
          <ref role="39e2AS" node="v4" resolve="TemplateDeclarationReference_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="6J" role="39e3Y0">
        <ref role="39e2AK" to="tpfi:QzR6Tht7mw" resolve="TemplateSwitchMacro_Constraints" />
        <node concept="385nmt" id="7o" role="385vvn">
          <property role="385vuF" value="TemplateSwitchMacro_Constraints" />
          <node concept="3u3nmq" id="7q" role="385v07">
            <property role="3u3nmv" value="982871510068000160" />
          </node>
        </node>
        <node concept="39e2AT" id="7p" role="39e2AY">
          <ref role="39e2AS" node="wi" resolve="TemplateSwitchMacro_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="6K" role="39e3Y0">
        <ref role="39e2AK" to="tpfi:55eznTdJrgJ" resolve="TemplateSwitch_Constraints" />
        <node concept="385nmt" id="7r" role="385vvn">
          <property role="385vuF" value="TemplateSwitch_Constraints" />
          <node concept="3u3nmq" id="7t" role="385v07">
            <property role="3u3nmv" value="5858775738865267759" />
          </node>
        </node>
        <node concept="39e2AT" id="7s" role="39e2AY">
          <ref role="39e2AS" node="xw" resolve="TemplateSwitch_Constraints" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="6l" role="39e2AI">
      <property role="39e3Y2" value="constraintClassCons" />
      <node concept="39e2AG" id="7u" role="39e3Y0">
        <ref role="39e2AK" to="tpfi:2vVmcK3ijrw" resolve="AbstractNodeMacroNamespace_Constraints" />
        <node concept="385nmt" id="7H" role="385vvn">
          <property role="385vuF" value="AbstractNodeMacroNamespace_Constraints" />
          <node concept="3u3nmq" id="7J" role="385v07">
            <property role="3u3nmv" value="2880994019885266656" />
          </node>
        </node>
        <node concept="39e2AT" id="7I" role="39e2AY">
          <ref role="39e2AS" node="3" resolve="AbstractNodeMacroNamespace_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="7v" role="39e3Y0">
        <ref role="39e2AK" to="tpfi:hDMFHTl" resolve="CreateRootRule_Constraints" />
        <node concept="385nmt" id="7K" role="385vvn">
          <property role="385vuF" value="CreateRootRule_Constraints" />
          <node concept="3u3nmq" id="7M" role="385v07">
            <property role="3u3nmv" value="1213104840277" />
          </node>
        </node>
        <node concept="39e2AT" id="7L" role="39e2AY">
          <ref role="39e2AS" node="4_" resolve="CreateRootRule_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="7w" role="39e3Y0">
        <ref role="39e2AK" to="tpfi:6SPT5KYquNH" resolve="GeneratorParameterReference_Constraints" />
        <node concept="385nmt" id="7N" role="385vvn">
          <property role="385vuF" value="GeneratorParameterReference_Constraints" />
          <node concept="3u3nmq" id="7P" role="385v07">
            <property role="3u3nmv" value="7941504602772991213" />
          </node>
        </node>
        <node concept="39e2AT" id="7O" role="39e2AY">
          <ref role="39e2AS" node="9r" resolve="GeneratorParameterReference_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="7x" role="39e3Y0">
        <ref role="39e2AK" to="tpfi:7u6$QPxIvZh" resolve="ReferenceReductionRule_Constraints" />
        <node concept="385nmt" id="7Q" role="385vvn">
          <property role="385vuF" value="ReferenceReductionRule_Constraints" />
          <node concept="3u3nmq" id="7S" role="385v07">
            <property role="3u3nmv" value="8612733435392950225" />
          </node>
        </node>
        <node concept="39e2AT" id="7R" role="39e2AY">
          <ref role="39e2AS" node="fD" resolve="ReferenceReductionRule_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="7y" role="39e3Y0">
        <ref role="39e2AK" to="tpfi:hDMFHe3" resolve="Root_MappingRule_Constraints" />
        <node concept="385nmt" id="7T" role="385vvn">
          <property role="385vuF" value="Root_MappingRule_Constraints" />
          <node concept="3u3nmq" id="7V" role="385v07">
            <property role="3u3nmv" value="1213104837507" />
          </node>
        </node>
        <node concept="39e2AT" id="7U" role="39e2AY">
          <ref role="39e2AS" node="iK" resolve="Root_MappingRule_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="7z" role="39e3Y0">
        <ref role="39e2AK" to="tpfi:4bn6ZJF6_SH" resolve="TemplateArgumentLinkPatternRefExpression_Constraints" />
        <node concept="385nmt" id="7W" role="385vvn">
          <property role="385vuF" value="TemplateArgumentLinkPatternRefExpression_Constraints" />
          <node concept="3u3nmq" id="7Y" role="385v07">
            <property role="3u3nmv" value="4816349095291149869" />
          </node>
        </node>
        <node concept="39e2AT" id="7X" role="39e2AY">
          <ref role="39e2AS" node="jW" resolve="TemplateArgumentLinkPatternRefExpression_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="7$" role="39e3Y0">
        <ref role="39e2AK" to="tpfi:4lQlo5quodY" resolve="TemplateArgumentParameterExpression_Constraints" />
        <node concept="385nmt" id="7Z" role="385vvn">
          <property role="385vuF" value="TemplateArgumentParameterExpression_Constraints" />
          <node concept="3u3nmq" id="81" role="385v07">
            <property role="3u3nmv" value="5005282049925940094" />
          </node>
        </node>
        <node concept="39e2AT" id="80" role="39e2AY">
          <ref role="39e2AS" node="lD" resolve="TemplateArgumentParameterExpression_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="7_" role="39e3Y0">
        <ref role="39e2AK" to="tpfi:42YwEPgeQ9y" resolve="TemplateArgumentPatternVarRefExpression_Constraints" />
        <node concept="385nmt" id="82" role="385vvn">
          <property role="385vuF" value="TemplateArgumentPatternVarRefExpression_Constraints" />
          <node concept="3u3nmq" id="84" role="385v07">
            <property role="3u3nmv" value="4665309944889434722" />
          </node>
        </node>
        <node concept="39e2AT" id="83" role="39e2AY">
          <ref role="39e2AS" node="n7" resolve="TemplateArgumentPatternVarRefExpression_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="7A" role="39e3Y0">
        <ref role="39e2AK" to="tpfi:4bn6ZJF6_RK" resolve="TemplateArgumentPropertyPatternRefExpression_Constraints" />
        <node concept="385nmt" id="85" role="385vvn">
          <property role="385vuF" value="TemplateArgumentPropertyPatternRefExpression_Constraints" />
          <node concept="3u3nmq" id="87" role="385v07">
            <property role="3u3nmv" value="4816349095291149808" />
          </node>
        </node>
        <node concept="39e2AT" id="86" role="39e2AY">
          <ref role="39e2AS" node="pX" resolve="TemplateArgumentPropertyPatternRefExpression_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="7B" role="39e3Y0">
        <ref role="39e2AK" to="tpfi:3w1cHt2UmEj" resolve="TemplateArgumentQueryExpression_Constraints" />
        <node concept="385nmt" id="88" role="385vvn">
          <property role="385vuF" value="TemplateArgumentQueryExpression_Constraints" />
          <node concept="3u3nmq" id="8a" role="385v07">
            <property role="3u3nmv" value="4035562641222625939" />
          </node>
        </node>
        <node concept="39e2AT" id="89" role="39e2AY">
          <ref role="39e2AS" node="rE" resolve="TemplateArgumentQueryExpression_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="7C" role="39e3Y0">
        <ref role="39e2AK" to="tpfi:UesZ_or5ti" resolve="TemplateArgumentVarRefExpression2_Constraints" />
        <node concept="385nmt" id="8b" role="385vvn">
          <property role="385vuF" value="TemplateArgumentVarRefExpression2_Constraints" />
          <node concept="3u3nmq" id="8d" role="385v07">
            <property role="3u3nmv" value="1048903277991450450" />
          </node>
        </node>
        <node concept="39e2AT" id="8c" role="39e2AY">
          <ref role="39e2AS" node="t4" resolve="TemplateArgumentVarRefExpression2_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="7D" role="39e3Y0">
        <ref role="39e2AK" to="tpfi:QzR6ThtQat" resolve="TemplateCallMacro_Constraints" />
        <node concept="385nmt" id="8e" role="385vvn">
          <property role="385vuF" value="TemplateCallMacro_Constraints" />
          <node concept="3u3nmq" id="8g" role="385v07">
            <property role="3u3nmv" value="982871510068191901" />
          </node>
        </node>
        <node concept="39e2AT" id="8f" role="39e2AY">
          <ref role="39e2AS" node="tT" resolve="TemplateCallMacro_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="7E" role="39e3Y0">
        <ref role="39e2AK" to="tpfi:QzR6ThtQW9" resolve="TemplateDeclarationReference_Constraints" />
        <node concept="385nmt" id="8h" role="385vvn">
          <property role="385vuF" value="TemplateDeclarationReference_Constraints" />
          <node concept="3u3nmq" id="8j" role="385v07">
            <property role="3u3nmv" value="982871510068195081" />
          </node>
        </node>
        <node concept="39e2AT" id="8i" role="39e2AY">
          <ref role="39e2AS" node="v7" resolve="TemplateDeclarationReference_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="7F" role="39e3Y0">
        <ref role="39e2AK" to="tpfi:QzR6Tht7mw" resolve="TemplateSwitchMacro_Constraints" />
        <node concept="385nmt" id="8k" role="385vvn">
          <property role="385vuF" value="TemplateSwitchMacro_Constraints" />
          <node concept="3u3nmq" id="8m" role="385v07">
            <property role="3u3nmv" value="982871510068000160" />
          </node>
        </node>
        <node concept="39e2AT" id="8l" role="39e2AY">
          <ref role="39e2AS" node="wl" resolve="TemplateSwitchMacro_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="7G" role="39e3Y0">
        <ref role="39e2AK" to="tpfi:55eznTdJrgJ" resolve="TemplateSwitch_Constraints" />
        <node concept="385nmt" id="8n" role="385vvn">
          <property role="385vuF" value="TemplateSwitch_Constraints" />
          <node concept="3u3nmq" id="8p" role="385v07">
            <property role="3u3nmv" value="5858775738865267759" />
          </node>
        </node>
        <node concept="39e2AT" id="8o" role="39e2AY">
          <ref role="39e2AS" node="xz" resolve="TemplateSwitch_Constraints" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="6m" role="39e2AI">
      <property role="39e3Y2" value="constraints2RootClass" />
      <node concept="39e2AG" id="8q" role="39e3Y0">
        <ref role="39e2AK" to="tpfi:7avQ3IO$Ngd" resolve="InsertCallSiteMacro_ConstraintRules" />
        <node concept="385nmt" id="8r" role="385vvn">
          <property role="385vuF" value="InsertCallSiteMacro_ConstraintRules" />
          <node concept="3u3nmq" id="8t" role="385v07">
            <property role="3u3nmv" value="8259557992564995085" />
          </node>
        </node>
        <node concept="39e2AT" id="8s" role="39e2AY">
          <ref role="39e2AS" node="a0" resolve="InsertCallSiteMacro_ConstraintRules" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="6n" role="39e2AI">
      <property role="39e3Y2" value="defClass" />
      <node concept="39e2AG" id="8u" role="39e3Y0">
        <ref role="39e2AK" to="tpfi:7avQ3IO$OST" resolve="root" />
        <node concept="385nmt" id="8v" role="385vvn">
          <property role="385vuF" value="root" />
          <node concept="3u3nmq" id="8x" role="385v07">
            <property role="3u3nmv" value="8259557992565001785" />
          </node>
        </node>
        <node concept="39e2AT" id="8w" role="39e2AY">
          <ref role="39e2AS" node="aa" resolve="InsertCallSiteMacro_ConstraintRules.Def_Root8259557992565001785" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="6o" role="39e2AI">
      <property role="39e3Y2" value="defGetValue" />
      <node concept="39e2AG" id="8y" role="39e3Y0">
        <ref role="39e2AK" to="tpfi:7avQ3IO$OST" resolve="root" />
        <node concept="385nmt" id="8z" role="385vvn">
          <property role="385vuF" value="root" />
          <node concept="3u3nmq" id="8_" role="385v07">
            <property role="3u3nmv" value="8259557992565001785" />
          </node>
        </node>
        <node concept="39e2AT" id="8$" role="39e2AY">
          <ref role="39e2AS" node="aO" resolve="getValue" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="6p" role="39e2AI">
      <property role="39e3Y2" value="feedbackDescriptorCons" />
      <node concept="39e2AG" id="8A" role="39e3Y0">
        <ref role="39e2AK" to="tpfi:7avQ3IO$Ngd" resolve="InsertCallSiteMacro_ConstraintRules" />
        <node concept="385nmt" id="8B" role="385vvn">
          <property role="385vuF" value="InsertCallSiteMacro_Feedback" />
          <node concept="3u3nmq" id="8D" role="385v07">
            <property role="3u3nmv" value="8259557992564995085" />
          </node>
        </node>
        <node concept="39e2AT" id="8C" role="39e2AY">
          <ref role="39e2AS" node="dG" resolve="InsertCallSiteMacro_ConstraintsFeedback" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="6q" role="39e2AI">
      <property role="39e3Y2" value="feedbackMember" />
      <node concept="39e2AG" id="8E" role="39e3Y0">
        <ref role="39e2AK" to="tpfi:7avQ3IO$Nk_" />
        <node concept="385nmt" id="8G" role="385vvn">
          <property role="385vuF" value="show message" />
          <node concept="3u3nmq" id="8I" role="385v07">
            <property role="3u3nmv" value="8259557992564995085" />
          </node>
        </node>
        <node concept="39e2AT" id="8H" role="39e2AY">
          <ref role="39e2AS" node="dA" resolve="MSGPROVIDER_WhenConstraintRuleFails_7re1g5_a" />
        </node>
      </node>
      <node concept="39e2AG" id="8F" role="39e3Y0">
        <ref role="39e2AK" to="tpfi:7avQ3IO_4$b" />
        <node concept="385nmt" id="8J" role="385vvn">
          <property role="385vuF" value="show message" />
          <node concept="3u3nmq" id="8L" role="385v07">
            <property role="3u3nmv" value="8259557992564995085" />
          </node>
        </node>
        <node concept="39e2AT" id="8K" role="39e2AY">
          <ref role="39e2AS" node="dB" resolve="MSGPROVIDER_WhenConstraintRuleFails_7re1g5_b" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="6r" role="39e2AI">
      <property role="39e3Y2" value="ruleClass" />
      <node concept="39e2AG" id="8M" role="39e3Y0">
        <ref role="39e2AK" to="tpfi:7avQ3IO_4$c" resolve="inSwitch" />
        <node concept="385nmt" id="8O" role="385vvn">
          <property role="385vuF" value="inSwitch" />
          <node concept="3u3nmq" id="8Q" role="385v07">
            <property role="3u3nmv" value="8259557992565065996" />
          </node>
        </node>
        <node concept="39e2AT" id="8P" role="39e2AY">
          <ref role="39e2AS" node="ae" resolve="InsertCallSiteMacro_ConstraintRules.Rule_inSwitch" />
        </node>
      </node>
      <node concept="39e2AG" id="8N" role="39e3Y0">
        <ref role="39e2AK" to="tpfi:7avQ3IO$NkA" resolve="inTemplate" />
        <node concept="385nmt" id="8R" role="385vvn">
          <property role="385vuF" value="inTemplate" />
          <node concept="3u3nmq" id="8T" role="385v07">
            <property role="3u3nmv" value="8259557992564995366" />
          </node>
        </node>
        <node concept="39e2AT" id="8S" role="39e2AY">
          <ref role="39e2AS" node="ac" resolve="InsertCallSiteMacro_ConstraintRules.Rule_inTemplate" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="6s" role="39e2AI">
      <property role="39e3Y2" value="ruleConstructor" />
      <node concept="39e2AG" id="8U" role="39e3Y0">
        <ref role="39e2AK" to="tpfi:7avQ3IO_4$c" resolve="inSwitch" />
        <node concept="385nmt" id="8W" role="385vvn">
          <property role="385vuF" value="inSwitch" />
          <node concept="3u3nmq" id="8Y" role="385v07">
            <property role="3u3nmv" value="8259557992565065996" />
          </node>
        </node>
        <node concept="39e2AT" id="8X" role="39e2AY">
          <ref role="39e2AS" node="cB" resolve="InsertCallSiteMacro_ConstraintRules.Rule_inSwitch" />
        </node>
      </node>
      <node concept="39e2AG" id="8V" role="39e3Y0">
        <ref role="39e2AK" to="tpfi:7avQ3IO$NkA" resolve="inTemplate" />
        <node concept="385nmt" id="8Z" role="385vvn">
          <property role="385vuF" value="inTemplate" />
          <node concept="3u3nmq" id="91" role="385v07">
            <property role="3u3nmv" value="8259557992564995366" />
          </node>
        </node>
        <node concept="39e2AT" id="90" role="39e2AY">
          <ref role="39e2AS" node="bG" resolve="InsertCallSiteMacro_ConstraintRules.Rule_inTemplate" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="6t" role="39e2AI">
      <property role="39e3Y2" value="ruleField" />
      <node concept="39e2AG" id="92" role="39e3Y0">
        <ref role="39e2AK" to="tpfi:7avQ3IO_4$c" resolve="inSwitch" />
        <node concept="385nmt" id="94" role="385vvn">
          <property role="385vuF" value="inSwitch" />
          <node concept="3u3nmq" id="96" role="385v07">
            <property role="3u3nmv" value="8259557992565065996" />
          </node>
        </node>
        <node concept="39e2AT" id="95" role="39e2AY">
          <ref role="39e2AS" node="a4" resolve="check_id8259557992565065996" />
        </node>
      </node>
      <node concept="39e2AG" id="93" role="39e3Y0">
        <ref role="39e2AK" to="tpfi:7avQ3IO$NkA" resolve="inTemplate" />
        <node concept="385nmt" id="97" role="385vvn">
          <property role="385vuF" value="inTemplate" />
          <node concept="3u3nmq" id="99" role="385v07">
            <property role="3u3nmv" value="8259557992564995366" />
          </node>
        </node>
        <node concept="39e2AT" id="98" role="39e2AY">
          <ref role="39e2AS" node="a3" resolve="check_id8259557992564995366" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="6u" role="39e2AI">
      <property role="39e3Y2" value="ruleID" />
      <node concept="39e2AG" id="9a" role="39e3Y0">
        <ref role="39e2AK" to="tpfi:7avQ3IO_4$c" resolve="inSwitch" />
        <node concept="385nmt" id="9c" role="385vvn">
          <property role="385vuF" value="inSwitch" />
          <node concept="3u3nmq" id="9e" role="385v07">
            <property role="3u3nmv" value="8259557992565065996" />
          </node>
        </node>
        <node concept="39e2AT" id="9d" role="39e2AY">
          <ref role="39e2AS" node="c_" resolve="ID_inSwitch" />
        </node>
      </node>
      <node concept="39e2AG" id="9b" role="39e3Y0">
        <ref role="39e2AK" to="tpfi:7avQ3IO$NkA" resolve="inTemplate" />
        <node concept="385nmt" id="9f" role="385vvn">
          <property role="385vuF" value="inTemplate" />
          <node concept="3u3nmq" id="9h" role="385v07">
            <property role="3u3nmv" value="8259557992564995366" />
          </node>
        </node>
        <node concept="39e2AT" id="9g" role="39e2AY">
          <ref role="39e2AS" node="bE" resolve="ID_inTemplate" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="6v" role="39e2AI">
      <property role="39e3Y2" value="aspectDescriptorClass" />
      <node concept="39e2AG" id="9i" role="39e3Y0">
        <property role="2mV_xN" value="true" />
        <node concept="39e2AT" id="9j" role="39e2AY">
          <ref role="39e2AS" node="2w" resolve="ConstraintsAspectDescriptor" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="6w" role="39e2AI">
      <property role="39e3Y2" value="feedbackAspectClass" />
      <node concept="39e2AG" id="9k" role="39e3Y0">
        <property role="2mV_xN" value="true" />
        <node concept="39e2AT" id="9l" role="39e2AY">
          <ref role="39e2AS" node="5I" resolve="GeneratedFeedbackAspectConstraints" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="6x" role="39e2AI">
      <property role="39e3Y2" value="constraints2DescriptorClass" />
      <node concept="39e2AG" id="9m" role="39e3Y0">
        <property role="2mV_xN" value="true" />
        <node concept="39e2AT" id="9n" role="39e2AY">
          <ref role="39e2AS" node="5W" resolve="GeneratedRulesConstraintsAspect" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="9o">
    <property role="3GE5qa" value="parameter" />
    <property role="TrG5h" value="GeneratorParameterReference_Constraints" />
    <uo k="s:originTrace" v="n:7941504602772991213" />
    <node concept="3Tm1VV" id="9p" role="1B3o_S">
      <uo k="s:originTrace" v="n:7941504602772991213" />
    </node>
    <node concept="3uibUv" id="9q" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:7941504602772991213" />
    </node>
    <node concept="3clFbW" id="9r" role="jymVt">
      <uo k="s:originTrace" v="n:7941504602772991213" />
      <node concept="37vLTG" id="9u" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:7941504602772991213" />
        <node concept="3uibUv" id="9x" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:7941504602772991213" />
        </node>
      </node>
      <node concept="3cqZAl" id="9v" role="3clF45">
        <uo k="s:originTrace" v="n:7941504602772991213" />
      </node>
      <node concept="3clFbS" id="9w" role="3clF47">
        <uo k="s:originTrace" v="n:7941504602772991213" />
        <node concept="XkiVB" id="9y" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:7941504602772991213" />
          <node concept="1BaE9c" id="9$" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="GeneratorParameterReference$oD" />
            <uo k="s:originTrace" v="n:7941504602772991213" />
            <node concept="2YIFZM" id="9A" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:7941504602772991213" />
              <node concept="11gdke" id="9B" role="37wK5m">
                <property role="11gdj1" value="b401a68083254110L" />
                <uo k="s:originTrace" v="n:7941504602772991213" />
              </node>
              <node concept="11gdke" id="9C" role="37wK5m">
                <property role="11gdj1" value="8fd384331ff25befL" />
                <uo k="s:originTrace" v="n:7941504602772991213" />
              </node>
              <node concept="11gdke" id="9D" role="37wK5m">
                <property role="11gdj1" value="90726ff283cbf8aL" />
                <uo k="s:originTrace" v="n:7941504602772991213" />
              </node>
              <node concept="Xl_RD" id="9E" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.generator.structure.GeneratorParameterReference" />
                <uo k="s:originTrace" v="n:7941504602772991213" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="9_" role="37wK5m">
            <ref role="3cqZAo" node="9u" resolve="initContext" />
            <uo k="s:originTrace" v="n:7941504602772991213" />
          </node>
        </node>
        <node concept="3clFbF" id="9z" role="3cqZAp">
          <uo k="s:originTrace" v="n:7941504602772991213" />
          <node concept="1rXfSq" id="9F" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:7941504602772991213" />
            <node concept="2ShNRf" id="9G" role="37wK5m">
              <uo k="s:originTrace" v="n:7941504602772991213" />
              <node concept="1pGfFk" id="9H" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="9J" resolve="GeneratorParameterReference_Constraints.RD1" />
                <uo k="s:originTrace" v="n:7941504602772991213" />
                <node concept="Xjq3P" id="9I" role="37wK5m">
                  <uo k="s:originTrace" v="n:7941504602772991213" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="9s" role="jymVt">
      <uo k="s:originTrace" v="n:7941504602772991213" />
    </node>
    <node concept="312cEu" id="9t" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:7941504602772991213" />
      <node concept="3clFbW" id="9J" role="jymVt">
        <uo k="s:originTrace" v="n:7941504602772991213" />
        <node concept="37vLTG" id="9L" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:7941504602772991213" />
          <node concept="3uibUv" id="9O" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:7941504602772991213" />
          </node>
        </node>
        <node concept="3cqZAl" id="9M" role="3clF45">
          <uo k="s:originTrace" v="n:7941504602772991213" />
        </node>
        <node concept="3clFbS" id="9N" role="3clF47">
          <uo k="s:originTrace" v="n:7941504602772991213" />
          <node concept="XkiVB" id="9P" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:7941504602772991213" />
            <node concept="1BaE9c" id="9Q" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="declaration$Woky" />
              <uo k="s:originTrace" v="n:7941504602772991213" />
              <node concept="2YIFZM" id="9U" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:7941504602772991213" />
                <node concept="11gdke" id="9V" role="37wK5m">
                  <property role="11gdj1" value="b401a68083254110L" />
                  <uo k="s:originTrace" v="n:7941504602772991213" />
                </node>
                <node concept="11gdke" id="9W" role="37wK5m">
                  <property role="11gdj1" value="8fd384331ff25befL" />
                  <uo k="s:originTrace" v="n:7941504602772991213" />
                </node>
                <node concept="11gdke" id="9X" role="37wK5m">
                  <property role="11gdj1" value="90726ff283cbf8aL" />
                  <uo k="s:originTrace" v="n:7941504602772991213" />
                </node>
                <node concept="11gdke" id="9Y" role="37wK5m">
                  <property role="11gdj1" value="90726ff283cbf8cL" />
                  <uo k="s:originTrace" v="n:7941504602772991213" />
                </node>
                <node concept="Xl_RD" id="9Z" role="37wK5m">
                  <property role="Xl_RC" value="declaration" />
                  <uo k="s:originTrace" v="n:7941504602772991213" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="9R" role="37wK5m">
              <ref role="3cqZAo" node="9L" resolve="container" />
              <uo k="s:originTrace" v="n:7941504602772991213" />
            </node>
            <node concept="3clFbT" id="9S" role="37wK5m">
              <uo k="s:originTrace" v="n:7941504602772991213" />
            </node>
            <node concept="3clFbT" id="9T" role="37wK5m">
              <uo k="s:originTrace" v="n:7941504602772991213" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="9K" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:7941504602772991213" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="a0">
    <property role="1EXbeo" value="true" />
    <property role="TrG5h" value="InsertCallSiteMacro_ConstraintRules" />
    <property role="3GE5qa" value="macro" />
    <uo k="s:originTrace" v="n:8259557992564995085" />
    <node concept="Wx3nA" id="a1" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="CONCEPT" />
      <property role="3TUv4t" value="true" />
      <uo k="s:originTrace" v="n:8259557992564995085" />
      <node concept="3Tm6S6" id="ak" role="1B3o_S">
        <uo k="s:originTrace" v="n:8259557992564995085" />
      </node>
      <node concept="35c_gC" id="al" role="33vP2m">
        <ref role="35c_gD" to="tpf8:4B_nWyeQsel" resolve="InsertCallSiteMacro" />
        <uo k="s:originTrace" v="n:8259557992564995085" />
      </node>
      <node concept="3uibUv" id="am" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        <uo k="s:originTrace" v="n:8259557992564995085" />
      </node>
    </node>
    <node concept="2tJIrI" id="a2" role="jymVt">
      <uo k="s:originTrace" v="n:8259557992564995085" />
    </node>
    <node concept="Wx3nA" id="a3" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="check_id8259557992564995366" />
      <uo k="s:originTrace" v="n:8259557992564995085" />
      <node concept="3uibUv" id="an" role="1tU5fm">
        <ref role="3uigEE" to="o99v:~Rule" resolve="Rule" />
        <uo k="s:originTrace" v="n:8259557992564995085" />
        <node concept="3uibUv" id="aq" role="11_B2D">
          <ref role="3uigEE" to="pdwk:~ContainmentContext" resolve="ContainmentContext" />
          <uo k="s:originTrace" v="n:8259557992564995085" />
        </node>
      </node>
      <node concept="3Tm1VV" id="ao" role="1B3o_S">
        <uo k="s:originTrace" v="n:8259557992564995085" />
      </node>
      <node concept="2ShNRf" id="ap" role="33vP2m">
        <uo k="s:originTrace" v="n:8259557992564995085" />
        <node concept="1pGfFk" id="ar" role="2ShVmc">
          <ref role="37wK5l" node="bG" resolve="InsertCallSiteMacro_ConstraintRules.Rule_inTemplate" />
          <uo k="s:originTrace" v="n:8259557992564995085" />
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="a4" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="check_id8259557992565065996" />
      <uo k="s:originTrace" v="n:8259557992564995085" />
      <node concept="3uibUv" id="as" role="1tU5fm">
        <ref role="3uigEE" to="o99v:~Rule" resolve="Rule" />
        <uo k="s:originTrace" v="n:8259557992564995085" />
        <node concept="3uibUv" id="av" role="11_B2D">
          <ref role="3uigEE" to="pdwk:~ContainmentContext" resolve="ContainmentContext" />
          <uo k="s:originTrace" v="n:8259557992564995085" />
        </node>
      </node>
      <node concept="3Tm1VV" id="at" role="1B3o_S">
        <uo k="s:originTrace" v="n:8259557992564995085" />
      </node>
      <node concept="2ShNRf" id="au" role="33vP2m">
        <uo k="s:originTrace" v="n:8259557992564995085" />
        <node concept="1pGfFk" id="aw" role="2ShVmc">
          <ref role="37wK5l" node="cB" resolve="InsertCallSiteMacro_ConstraintRules.Rule_inSwitch" />
          <uo k="s:originTrace" v="n:8259557992564995085" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="a5" role="jymVt">
      <uo k="s:originTrace" v="n:8259557992564995085" />
    </node>
    <node concept="Wx3nA" id="a6" role="jymVt">
      <property role="TrG5h" value="RULES" />
      <property role="3TUv4t" value="true" />
      <uo k="s:originTrace" v="n:8259557992564995085" />
      <node concept="3uibUv" id="ax" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <uo k="s:originTrace" v="n:8259557992564995085" />
        <node concept="3uibUv" id="a$" role="11_B2D">
          <ref role="3uigEE" to="o99v:~Rule" resolve="Rule" />
          <uo k="s:originTrace" v="n:8259557992564995085" />
          <node concept="3qTvmN" id="a_" role="11_B2D">
            <uo k="s:originTrace" v="n:8259557992564995085" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="ay" role="1B3o_S">
        <uo k="s:originTrace" v="n:8259557992564995085" />
      </node>
      <node concept="2YIFZM" id="az" role="33vP2m">
        <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
        <ref role="37wK5l" to="33ny:~Collections.unmodifiableList(java.util.List)" resolve="unmodifiableList" />
        <uo k="s:originTrace" v="n:8259557992564995085" />
        <node concept="2YIFZM" id="aA" role="37wK5m">
          <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
          <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
          <uo k="s:originTrace" v="n:8259557992564995085" />
          <node concept="3uibUv" id="aB" role="3PaCim">
            <ref role="3uigEE" to="o99v:~Rule" resolve="Rule" />
            <uo k="s:originTrace" v="n:8259557992564995085" />
            <node concept="3qTvmN" id="aE" role="11_B2D">
              <uo k="s:originTrace" v="n:8259557992564995085" />
            </node>
          </node>
          <node concept="37vLTw" id="aC" role="37wK5m">
            <ref role="3cqZAo" node="a3" resolve="check_id8259557992564995366" />
            <uo k="s:originTrace" v="n:8259557992564995085" />
          </node>
          <node concept="37vLTw" id="aD" role="37wK5m">
            <ref role="3cqZAo" node="a4" resolve="check_id8259557992565065996" />
            <uo k="s:originTrace" v="n:8259557992564995085" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="a7" role="jymVt">
      <uo k="s:originTrace" v="n:8259557992564995085" />
    </node>
    <node concept="3clFb_" id="a8" role="jymVt">
      <property role="TrG5h" value="getDeclaredRules" />
      <uo k="s:originTrace" v="n:8259557992564995085" />
      <node concept="3Tm1VV" id="aF" role="1B3o_S">
        <uo k="s:originTrace" v="n:8259557992564995085" />
      </node>
      <node concept="2AHcQZ" id="aG" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        <uo k="s:originTrace" v="n:8259557992564995085" />
      </node>
      <node concept="3uibUv" id="aH" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <uo k="s:originTrace" v="n:8259557992564995085" />
        <node concept="3uibUv" id="aK" role="11_B2D">
          <ref role="3uigEE" to="o99v:~Rule" resolve="Rule" />
          <uo k="s:originTrace" v="n:8259557992564995085" />
          <node concept="3qTvmN" id="aL" role="11_B2D">
            <uo k="s:originTrace" v="n:8259557992564995085" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="aI" role="3clF47">
        <uo k="s:originTrace" v="n:8259557992564995085" />
        <node concept="3cpWs6" id="aM" role="3cqZAp">
          <uo k="s:originTrace" v="n:8259557992564995085" />
          <node concept="37vLTw" id="aN" role="3cqZAk">
            <ref role="3cqZAo" node="a6" resolve="RULES" />
            <uo k="s:originTrace" v="n:8259557992564995085" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="aJ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:8259557992564995085" />
      </node>
    </node>
    <node concept="2tJIrI" id="a9" role="jymVt">
      <uo k="s:originTrace" v="n:8259557992564995085" />
    </node>
    <node concept="312cEu" id="aa" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="Def_Root8259557992565001785" />
      <uo k="s:originTrace" v="n:8259557992565001785" />
      <node concept="2YIFZL" id="aO" role="jymVt">
        <property role="TrG5h" value="getValue" />
        <node concept="3clFbS" id="aS" role="3clF47">
          <node concept="3clFbJ" id="aY" role="3cqZAp">
            <node concept="3clFbS" id="b0" role="3clFbx">
              <node concept="3cpWs6" id="b2" role="3cqZAp">
                <node concept="10Nm6u" id="b3" role="3cqZAk" />
              </node>
            </node>
            <node concept="3fqX7Q" id="b1" role="3clFbw">
              <node concept="1rXfSq" id="b4" role="3fr31v">
                <ref role="37wK5l" node="aQ" resolve="isDefined" />
                <node concept="37vLTw" id="b5" role="37wK5m">
                  <ref role="3cqZAo" node="aT" resolve="context" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="aZ" role="3cqZAp">
            <node concept="10QFUN" id="b6" role="3cqZAk">
              <node concept="2OqwBi" id="b7" role="10QFUP">
                <uo k="s:originTrace" v="n:8259557992564999100" />
                <node concept="2OqwBi" id="b9" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:8259557992564998578" />
                  <node concept="37vLTw" id="bb" role="2Oq$k0">
                    <ref role="3cqZAo" node="aT" resolve="context" />
                  </node>
                  <node concept="liA8E" id="bc" role="2OqNvi">
                    <ref role="37wK5l" to="pdwk:~ContainmentContext.getParentNode()" resolve="getParentNode" />
                  </node>
                </node>
                <node concept="2Rxl7S" id="ba" role="2OqNvi">
                  <uo k="s:originTrace" v="n:8259557992564999469" />
                </node>
              </node>
              <node concept="3Tqbb2" id="b8" role="10QFUM">
                <uo k="s:originTrace" v="n:8259557992565001811" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="aT" role="3clF46">
          <property role="TrG5h" value="context" />
          <node concept="3uibUv" id="bd" role="1tU5fm">
            <ref role="3uigEE" to="pdwk:~ContainmentContext" resolve="ContainmentContext" />
          </node>
          <node concept="2AHcQZ" id="be" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3Tqbb2" id="aU" role="3clF45">
          <uo k="s:originTrace" v="n:8259557992565001811" />
        </node>
        <node concept="3Tm1VV" id="aV" role="1B3o_S" />
        <node concept="2AHcQZ" id="aW" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="P$JXv" id="aX" role="lGtFl">
          <node concept="1PaTwC" id="bf" role="1Vez_I">
            <node concept="3oM_SD" id="bh" role="1PaTwD">
              <property role="3oM_SC" value="null" />
            </node>
            <node concept="3oM_SD" id="bi" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="bj" role="1PaTwD">
              <property role="3oM_SC" value="an" />
            </node>
            <node concept="3oM_SD" id="bk" role="1PaTwD">
              <property role="3oM_SC" value="allowed" />
            </node>
            <node concept="3oM_SD" id="bl" role="1PaTwD">
              <property role="3oM_SC" value="value" />
            </node>
          </node>
          <node concept="1PaTwC" id="bg" role="1Vez_I">
            <node concept="3oM_SD" id="bm" role="1PaTwD">
              <property role="3oM_SC" value="though" />
            </node>
            <node concept="3oM_SD" id="bn" role="1PaTwD">
              <property role="3oM_SC" value="null" />
            </node>
            <node concept="3oM_SD" id="bo" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="bp" role="1PaTwD">
              <property role="3oM_SC" value="also" />
            </node>
            <node concept="3oM_SD" id="bq" role="1PaTwD">
              <property role="3oM_SC" value="returned" />
            </node>
            <node concept="3oM_SD" id="br" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="bs" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="bt" role="1PaTwD">
              <property role="3oM_SC" value="def" />
            </node>
            <node concept="3oM_SD" id="bu" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="bv" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="bw" role="1PaTwD">
              <property role="3oM_SC" value="defined" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="aP" role="jymVt" />
      <node concept="2YIFZL" id="aQ" role="jymVt">
        <property role="TrG5h" value="isDefined" />
        <node concept="3clFbS" id="bx" role="3clF47">
          <node concept="3cpWs6" id="b_" role="3cqZAp">
            <node concept="3clFbT" id="bA" role="3cqZAk">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="by" role="3clF46">
          <property role="TrG5h" value="context" />
          <node concept="3uibUv" id="bB" role="1tU5fm">
            <ref role="3uigEE" to="pdwk:~ContainmentContext" resolve="ContainmentContext" />
          </node>
          <node concept="2AHcQZ" id="bC" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="10P_77" id="bz" role="3clF45" />
        <node concept="3Tm1VV" id="b$" role="1B3o_S" />
      </node>
      <node concept="3Tm1VV" id="aR" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="ab" role="jymVt" />
    <node concept="312cEu" id="ac" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="Rule_inTemplate" />
      <uo k="s:originTrace" v="n:8259557992564995366" />
      <node concept="Wx3nA" id="bD" role="jymVt">
        <property role="TrG5h" value="SOURCE_NODE_REF" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="bO" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
        <node concept="3Tm6S6" id="bP" role="1B3o_S" />
        <node concept="2OqwBi" id="bQ" role="33vP2m">
          <node concept="2YIFZM" id="bR" role="2Oq$k0">
            <ref role="1Pybhc" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
            <ref role="37wK5l" to="dush:~PersistenceFacade.getInstance()" resolve="getInstance" />
          </node>
          <node concept="liA8E" id="bS" role="2OqNvi">
            <ref role="37wK5l" to="dush:~PersistenceFacade.createNodeReference(java.lang.String)" resolve="createNodeReference" />
            <node concept="Xl_RD" id="bT" role="37wK5m">
              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c895902e2(jetbrains.mps.lang.generator.constraints)/8259557992564995366" />
            </node>
          </node>
        </node>
      </node>
      <node concept="Wx3nA" id="bE" role="jymVt">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="ID_inTemplate" />
        <node concept="3uibUv" id="bU" role="1tU5fm">
          <ref role="3uigEE" to="o99v:~RuleId" resolve="RuleId" />
        </node>
        <node concept="3Tm1VV" id="bV" role="1B3o_S" />
        <node concept="2ShNRf" id="bW" role="33vP2m">
          <node concept="1pGfFk" id="bX" role="2ShVmc">
            <ref role="37wK5l" to="o99v:~RuleId.&lt;init&gt;(long,java.lang.Object)" resolve="RuleId" />
            <node concept="1adDum" id="bY" role="37wK5m">
              <property role="1adDun" value="8259557992564995366L" />
            </node>
            <node concept="37vLTw" id="bZ" role="37wK5m">
              <ref role="3cqZAo" node="bD" resolve="SOURCE_NODE_REF" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="bF" role="jymVt" />
      <node concept="3clFbW" id="bG" role="jymVt">
        <node concept="3cqZAl" id="c0" role="3clF45" />
        <node concept="3Tm1VV" id="c1" role="1B3o_S" />
        <node concept="3clFbS" id="c2" role="3clF47">
          <node concept="XkiVB" id="c3" role="3cqZAp">
            <ref role="37wK5l" to="o99v:~BaseRule.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.core.aspects.constraints.rules.RuleKind,jetbrains.mps.core.aspects.constraints.rules.RuleId,org.jetbrains.mps.openapi.model.SNodeReference)" resolve="BaseRule" />
            <node concept="37vLTw" id="c4" role="37wK5m">
              <ref role="3cqZAo" node="a1" resolve="CONCEPT" />
            </node>
            <node concept="Rm8GO" id="c5" role="37wK5m">
              <ref role="1Px2BO" to="pdwk:~PredefinedRuleKinds" resolve="PredefinedRuleKinds" />
              <ref role="Rm8GQ" to="pdwk:~PredefinedRuleKinds.CAN_BE_CHILD" resolve="CAN_BE_CHILD" />
            </node>
            <node concept="37vLTw" id="c6" role="37wK5m">
              <ref role="3cqZAo" node="bE" resolve="ID_inTemplate" />
            </node>
            <node concept="37vLTw" id="c7" role="37wK5m">
              <ref role="3cqZAo" node="bD" resolve="SOURCE_NODE_REF" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="bH" role="jymVt" />
      <node concept="3Tm1VV" id="bI" role="1B3o_S" />
      <node concept="3clFb_" id="bJ" role="jymVt">
        <property role="TrG5h" value="check" />
        <node concept="37vLTG" id="c8" role="3clF46">
          <property role="TrG5h" value="context" />
          <node concept="2AHcQZ" id="cd" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
          <node concept="3uibUv" id="ce" role="1tU5fm">
            <ref role="3uigEE" to="pdwk:~ContainmentContext" resolve="ContainmentContext" />
          </node>
        </node>
        <node concept="3Tm1VV" id="c9" role="1B3o_S" />
        <node concept="10P_77" id="ca" role="3clF45" />
        <node concept="3clFbS" id="cb" role="3clF47">
          <node concept="3cpWs6" id="cf" role="3cqZAp">
            <node concept="2OqwBi" id="cg" role="3cqZAk">
              <uo k="s:originTrace" v="n:8259557992565005060" />
              <node concept="1PxgMI" id="ch" role="2Oq$k0">
                <uo k="s:originTrace" v="n:8259557992565004186" />
                <node concept="chp4Y" id="cj" role="3oSUPX">
                  <ref role="cht4Q" to="tpf8:QzR6ThdYAL" resolve="IParameterizedTemplate" />
                  <uo k="s:originTrace" v="n:8259557992565004242" />
                </node>
                <node concept="2YIFZM" id="ck" role="1m5AlR">
                  <ref role="37wK5l" node="aO" resolve="getValue" />
                  <ref role="1Pybhc" node="aa" resolve="InsertCallSiteMacro_ConstraintRules.Def_Root8259557992565001785" />
                  <uo k="s:originTrace" v="n:8259557992565002100" />
                  <node concept="37vLTw" id="cl" role="37wK5m">
                    <ref role="3cqZAo" node="c8" resolve="context" />
                  </node>
                </node>
              </node>
              <node concept="3TrcHB" id="ci" role="2OqNvi">
                <ref role="3TsBF5" to="tpf8:1zGVNdDoES9" resolve="needCallSite" />
                <uo k="s:originTrace" v="n:8259557992565005649" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="cc" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="bK" role="jymVt" />
      <node concept="3clFb_" id="bL" role="jymVt">
        <property role="TrG5h" value="appliesTo" />
        <node concept="37vLTG" id="cm" role="3clF46">
          <property role="TrG5h" value="context" />
          <node concept="2AHcQZ" id="cr" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
          <node concept="3uibUv" id="cs" role="1tU5fm">
            <ref role="3uigEE" to="pdwk:~ContainmentContext" resolve="ContainmentContext" />
          </node>
        </node>
        <node concept="3Tm1VV" id="cn" role="1B3o_S" />
        <node concept="10P_77" id="co" role="3clF45" />
        <node concept="3clFbS" id="cp" role="3clF47">
          <node concept="3cpWs6" id="ct" role="3cqZAp">
            <node concept="2OqwBi" id="cu" role="3cqZAk">
              <uo k="s:originTrace" v="n:8259557992565064947" />
              <node concept="2YIFZM" id="cv" role="2Oq$k0">
                <ref role="37wK5l" node="aO" resolve="getValue" />
                <ref role="1Pybhc" node="aa" resolve="InsertCallSiteMacro_ConstraintRules.Def_Root8259557992565001785" />
                <uo k="s:originTrace" v="n:8259557992565064428" />
                <node concept="37vLTw" id="cx" role="37wK5m">
                  <ref role="3cqZAo" node="cm" resolve="context" />
                </node>
              </node>
              <node concept="1mIQ4w" id="cw" role="2OqNvi">
                <uo k="s:originTrace" v="n:8259557992565065315" />
                <node concept="chp4Y" id="cy" role="cj9EA">
                  <ref role="cht4Q" to="tpf8:fT3MO7g" resolve="TemplateDeclaration" />
                  <uo k="s:originTrace" v="n:8259557992565065431" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="cq" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="bM" role="jymVt" />
      <node concept="3uibUv" id="bN" role="1zkMxy">
        <ref role="3uigEE" to="o99v:~BaseRule" resolve="BaseRule" />
        <node concept="3uibUv" id="cz" role="11_B2D">
          <ref role="3uigEE" to="pdwk:~ContainmentContext" resolve="ContainmentContext" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="ad" role="jymVt" />
    <node concept="312cEu" id="ae" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="Rule_inSwitch" />
      <uo k="s:originTrace" v="n:8259557992565065996" />
      <node concept="Wx3nA" id="c$" role="jymVt">
        <property role="TrG5h" value="SOURCE_NODE_REF" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="cJ" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
        <node concept="3Tm6S6" id="cK" role="1B3o_S" />
        <node concept="2OqwBi" id="cL" role="33vP2m">
          <node concept="2YIFZM" id="cM" role="2Oq$k0">
            <ref role="1Pybhc" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
            <ref role="37wK5l" to="dush:~PersistenceFacade.getInstance()" resolve="getInstance" />
          </node>
          <node concept="liA8E" id="cN" role="2OqNvi">
            <ref role="37wK5l" to="dush:~PersistenceFacade.createNodeReference(java.lang.String)" resolve="createNodeReference" />
            <node concept="Xl_RD" id="cO" role="37wK5m">
              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c895902e2(jetbrains.mps.lang.generator.constraints)/8259557992565065996" />
            </node>
          </node>
        </node>
      </node>
      <node concept="Wx3nA" id="c_" role="jymVt">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="ID_inSwitch" />
        <node concept="3uibUv" id="cP" role="1tU5fm">
          <ref role="3uigEE" to="o99v:~RuleId" resolve="RuleId" />
        </node>
        <node concept="3Tm1VV" id="cQ" role="1B3o_S" />
        <node concept="2ShNRf" id="cR" role="33vP2m">
          <node concept="1pGfFk" id="cS" role="2ShVmc">
            <ref role="37wK5l" to="o99v:~RuleId.&lt;init&gt;(long,java.lang.Object)" resolve="RuleId" />
            <node concept="1adDum" id="cT" role="37wK5m">
              <property role="1adDun" value="8259557992565065996L" />
            </node>
            <node concept="37vLTw" id="cU" role="37wK5m">
              <ref role="3cqZAo" node="c$" resolve="SOURCE_NODE_REF" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="cA" role="jymVt" />
      <node concept="3clFbW" id="cB" role="jymVt">
        <node concept="3cqZAl" id="cV" role="3clF45" />
        <node concept="3Tm1VV" id="cW" role="1B3o_S" />
        <node concept="3clFbS" id="cX" role="3clF47">
          <node concept="XkiVB" id="cY" role="3cqZAp">
            <ref role="37wK5l" to="o99v:~BaseRule.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.core.aspects.constraints.rules.RuleKind,jetbrains.mps.core.aspects.constraints.rules.RuleId,org.jetbrains.mps.openapi.model.SNodeReference)" resolve="BaseRule" />
            <node concept="37vLTw" id="cZ" role="37wK5m">
              <ref role="3cqZAo" node="a1" resolve="CONCEPT" />
            </node>
            <node concept="Rm8GO" id="d0" role="37wK5m">
              <ref role="1Px2BO" to="pdwk:~PredefinedRuleKinds" resolve="PredefinedRuleKinds" />
              <ref role="Rm8GQ" to="pdwk:~PredefinedRuleKinds.CAN_BE_CHILD" resolve="CAN_BE_CHILD" />
            </node>
            <node concept="37vLTw" id="d1" role="37wK5m">
              <ref role="3cqZAo" node="c_" resolve="ID_inSwitch" />
            </node>
            <node concept="37vLTw" id="d2" role="37wK5m">
              <ref role="3cqZAo" node="c$" resolve="SOURCE_NODE_REF" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="cC" role="jymVt" />
      <node concept="3Tm1VV" id="cD" role="1B3o_S" />
      <node concept="3clFb_" id="cE" role="jymVt">
        <property role="TrG5h" value="check" />
        <node concept="37vLTG" id="d3" role="3clF46">
          <property role="TrG5h" value="context" />
          <node concept="2AHcQZ" id="d8" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
          <node concept="3uibUv" id="d9" role="1tU5fm">
            <ref role="3uigEE" to="pdwk:~ContainmentContext" resolve="ContainmentContext" />
          </node>
        </node>
        <node concept="3Tm1VV" id="d4" role="1B3o_S" />
        <node concept="10P_77" id="d5" role="3clF45" />
        <node concept="3clFbS" id="d6" role="3clF47">
          <node concept="3cpWs6" id="da" role="3cqZAp">
            <node concept="2OqwBi" id="db" role="3cqZAk">
              <uo k="s:originTrace" v="n:8259557992565065998" />
              <node concept="1PxgMI" id="dc" role="2Oq$k0">
                <uo k="s:originTrace" v="n:8259557992565065999" />
                <node concept="chp4Y" id="de" role="3oSUPX">
                  <ref role="cht4Q" to="tpf8:QzR6ThdYAL" resolve="IParameterizedTemplate" />
                  <uo k="s:originTrace" v="n:8259557992565066000" />
                </node>
                <node concept="2YIFZM" id="df" role="1m5AlR">
                  <ref role="37wK5l" node="aO" resolve="getValue" />
                  <ref role="1Pybhc" node="aa" resolve="InsertCallSiteMacro_ConstraintRules.Def_Root8259557992565001785" />
                  <uo k="s:originTrace" v="n:8259557992565066001" />
                  <node concept="37vLTw" id="dg" role="37wK5m">
                    <ref role="3cqZAo" node="d3" resolve="context" />
                  </node>
                </node>
              </node>
              <node concept="3TrcHB" id="dd" role="2OqNvi">
                <ref role="3TsBF5" to="tpf8:1zGVNdDoES9" resolve="needCallSite" />
                <uo k="s:originTrace" v="n:8259557992565066002" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="d7" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="cF" role="jymVt" />
      <node concept="3clFb_" id="cG" role="jymVt">
        <property role="TrG5h" value="appliesTo" />
        <node concept="37vLTG" id="dh" role="3clF46">
          <property role="TrG5h" value="context" />
          <node concept="2AHcQZ" id="dm" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
          <node concept="3uibUv" id="dn" role="1tU5fm">
            <ref role="3uigEE" to="pdwk:~ContainmentContext" resolve="ContainmentContext" />
          </node>
        </node>
        <node concept="3Tm1VV" id="di" role="1B3o_S" />
        <node concept="10P_77" id="dj" role="3clF45" />
        <node concept="3clFbS" id="dk" role="3clF47">
          <node concept="3cpWs6" id="do" role="3cqZAp">
            <node concept="2OqwBi" id="dp" role="3cqZAk">
              <uo k="s:originTrace" v="n:8259557992565066005" />
              <node concept="2YIFZM" id="dq" role="2Oq$k0">
                <ref role="37wK5l" node="aO" resolve="getValue" />
                <ref role="1Pybhc" node="aa" resolve="InsertCallSiteMacro_ConstraintRules.Def_Root8259557992565001785" />
                <uo k="s:originTrace" v="n:8259557992565066006" />
                <node concept="37vLTw" id="ds" role="37wK5m">
                  <ref role="3cqZAo" node="dh" resolve="context" />
                </node>
              </node>
              <node concept="1mIQ4w" id="dr" role="2OqNvi">
                <uo k="s:originTrace" v="n:8259557992565066007" />
                <node concept="chp4Y" id="dt" role="cj9EA">
                  <ref role="cht4Q" to="tpf8:gcjVnq8" resolve="TemplateSwitch" />
                  <uo k="s:originTrace" v="n:8259557992565066507" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="dl" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="cH" role="jymVt" />
      <node concept="3uibUv" id="cI" role="1zkMxy">
        <ref role="3uigEE" to="o99v:~BaseRule" resolve="BaseRule" />
        <node concept="3uibUv" id="du" role="11_B2D">
          <ref role="3uigEE" to="pdwk:~ContainmentContext" resolve="ContainmentContext" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="af" role="jymVt" />
    <node concept="3clFbW" id="ag" role="jymVt">
      <property role="TrG5h" value="BaseConstraintsDescriptor2" />
      <uo k="s:originTrace" v="n:8259557992564995085" />
      <node concept="3cqZAl" id="dv" role="3clF45">
        <uo k="s:originTrace" v="n:8259557992564995085" />
      </node>
      <node concept="3clFbS" id="dw" role="3clF47">
        <uo k="s:originTrace" v="n:8259557992564995085" />
        <node concept="XkiVB" id="dx" role="3cqZAp">
          <ref role="37wK5l" to="o99v:~BaseRulesConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseRulesConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:8259557992564995085" />
          <node concept="37vLTw" id="dy" role="37wK5m">
            <ref role="3cqZAo" node="a1" resolve="CONCEPT" />
            <uo k="s:originTrace" v="n:8259557992564995085" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="ah" role="1B3o_S">
      <uo k="s:originTrace" v="n:8259557992564995085" />
    </node>
    <node concept="3uibUv" id="ai" role="1zkMxy">
      <ref role="3uigEE" to="o99v:~BaseRulesConstraintsDescriptor" resolve="BaseRulesConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:8259557992564995085" />
    </node>
    <node concept="15s5l7" id="aj" role="lGtFl">
      <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: The classifier 'Generated_ConstraintsDescriptor2' must be declared abstract or implement abstract method 'getDeclaredRules' in 'RulesConstraintsDescriptor'&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/7861981782410371482]&quot;;" />
      <property role="huDt6" value="Error: The classifier 'Generated_ConstraintsDescriptor2' must be declared abstract or implement abstract method 'getDeclaredRules' in 'RulesConstraintsDescriptor'" />
      <uo k="s:originTrace" v="n:8259557992564995085" />
    </node>
  </node>
  <node concept="312cEu" id="dz">
    <property role="3GE5qa" value="macro" />
    <property role="1EXbeo" value="true" />
    <property role="TrG5h" value="InsertCallSiteMacro_ConstraintsFeedback" />
    <uo k="s:originTrace" v="n:8259557992564995085" />
    <node concept="Wx3nA" id="d$" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="CONCEPT" />
      <property role="3TUv4t" value="true" />
      <uo k="s:originTrace" v="n:8259557992564995085" />
      <node concept="3Tm6S6" id="dK" role="1B3o_S">
        <uo k="s:originTrace" v="n:8259557992564995085" />
      </node>
      <node concept="35c_gC" id="dL" role="33vP2m">
        <ref role="35c_gD" to="tpf8:4B_nWyeQsel" resolve="InsertCallSiteMacro" />
        <uo k="s:originTrace" v="n:8259557992564995085" />
      </node>
      <node concept="3uibUv" id="dM" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        <uo k="s:originTrace" v="n:8259557992564995085" />
      </node>
    </node>
    <node concept="2tJIrI" id="d_" role="jymVt">
      <uo k="s:originTrace" v="n:8259557992564995085" />
    </node>
    <node concept="Wx3nA" id="dA" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="MSGPROVIDER_WhenConstraintRuleFails_7re1g5_a" />
      <uo k="s:originTrace" v="n:8259557992564995085" />
      <node concept="3Tm6S6" id="dN" role="1B3o_S" />
      <node concept="2ShNRf" id="dO" role="33vP2m">
        <node concept="YeOm9" id="dQ" role="2ShVmc">
          <node concept="1Y3b0j" id="dR" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" to="j809:~BaseMessageProvider" resolve="BaseMessageProvider" />
            <ref role="37wK5l" to="j809:~BaseMessageProvider.&lt;init&gt;(jetbrains.mps.core.aspects.feedback.problem.ProblemId)" resolve="BaseMessageProvider" />
            <node concept="2ShNRf" id="dS" role="37wK5m">
              <uo k="s:originTrace" v="n:8259557992564995085" />
              <node concept="1pGfFk" id="dW" role="2ShVmc">
                <ref role="37wK5l" to="j80a:~FailingRuleProblemId.&lt;init&gt;(jetbrains.mps.core.aspects.constraints.rules.RuleId)" resolve="FailingRuleProblemId" />
                <uo k="s:originTrace" v="n:8259557992564995085" />
                <node concept="10M0yZ" id="dX" role="37wK5m">
                  <ref role="3cqZAo" node="bE" resolve="ID_inTemplate" />
                  <ref role="1PxDUh" node="ac" resolve="InsertCallSiteMacro_ConstraintRules.Rule_inTemplate" />
                  <uo k="s:originTrace" v="n:8259557992564995085" />
                </node>
              </node>
            </node>
            <node concept="3Tm1VV" id="dT" role="1B3o_S" />
            <node concept="3clFb_" id="dU" role="jymVt">
              <property role="TrG5h" value="yieldMessage" />
              <node concept="3Tm1VV" id="dY" role="1B3o_S" />
              <node concept="2AHcQZ" id="dZ" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
              </node>
              <node concept="3uibUv" id="e0" role="3clF45">
                <ref role="3uigEE" to="j809:~MessageProvider$Msg" resolve="MessageProvider.Msg" />
              </node>
              <node concept="37vLTG" id="e1" role="3clF46">
                <property role="TrG5h" value="context" />
                <node concept="3uibUv" id="e4" role="1tU5fm">
                  <ref role="3uigEE" to="pdwk:~ContainmentContext" resolve="ContainmentContext" />
                  <uo k="s:originTrace" v="n:8259557992564995085" />
                </node>
              </node>
              <node concept="3clFbS" id="e2" role="3clF47">
                <node concept="3cpWs6" id="e5" role="3cqZAp">
                  <node concept="2ShNRf" id="e6" role="3cqZAk">
                    <node concept="1pGfFk" id="e7" role="2ShVmc">
                      <ref role="37wK5l" to="j809:~MessageProvider$StringMsg.&lt;init&gt;(java.lang.String)" resolve="MessageProvider.StringMsg" />
                      <node concept="Xl_RD" id="e8" role="37wK5m">
                        <property role="Xl_RC" value="Template shall request call site to use this macro" />
                        <uo k="s:originTrace" v="n:8259557992565040338" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="e3" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3uibUv" id="dV" role="2Ghqu4">
              <ref role="3uigEE" to="pdwk:~ContainmentContext" resolve="ContainmentContext" />
              <uo k="s:originTrace" v="n:8259557992564995085" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="dP" role="1tU5fm">
        <ref role="3uigEE" to="9jwd:~FeedbackProvider" resolve="FeedbackProvider" />
        <node concept="3uibUv" id="e9" role="11_B2D">
          <ref role="3uigEE" to="pdwk:~ContainmentContext" resolve="ContainmentContext" />
          <uo k="s:originTrace" v="n:8259557992564995085" />
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="dB" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="MSGPROVIDER_WhenConstraintRuleFails_7re1g5_b" />
      <uo k="s:originTrace" v="n:8259557992564995085" />
      <node concept="3Tm6S6" id="ea" role="1B3o_S" />
      <node concept="2ShNRf" id="eb" role="33vP2m">
        <node concept="YeOm9" id="ed" role="2ShVmc">
          <node concept="1Y3b0j" id="ee" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" to="j809:~BaseMessageProvider" resolve="BaseMessageProvider" />
            <ref role="37wK5l" to="j809:~BaseMessageProvider.&lt;init&gt;(jetbrains.mps.core.aspects.feedback.problem.ProblemId)" resolve="BaseMessageProvider" />
            <node concept="2ShNRf" id="ef" role="37wK5m">
              <uo k="s:originTrace" v="n:8259557992564995085" />
              <node concept="1pGfFk" id="ej" role="2ShVmc">
                <ref role="37wK5l" to="j80a:~FailingRuleProblemId.&lt;init&gt;(jetbrains.mps.core.aspects.constraints.rules.RuleId)" resolve="FailingRuleProblemId" />
                <uo k="s:originTrace" v="n:8259557992564995085" />
                <node concept="10M0yZ" id="ek" role="37wK5m">
                  <ref role="3cqZAo" node="c_" resolve="ID_inSwitch" />
                  <ref role="1PxDUh" node="ae" resolve="InsertCallSiteMacro_ConstraintRules.Rule_inSwitch" />
                  <uo k="s:originTrace" v="n:8259557992564995085" />
                </node>
              </node>
            </node>
            <node concept="3Tm1VV" id="eg" role="1B3o_S" />
            <node concept="3clFb_" id="eh" role="jymVt">
              <property role="TrG5h" value="yieldMessage" />
              <node concept="3Tm1VV" id="el" role="1B3o_S" />
              <node concept="2AHcQZ" id="em" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
              </node>
              <node concept="3uibUv" id="en" role="3clF45">
                <ref role="3uigEE" to="j809:~MessageProvider$Msg" resolve="MessageProvider.Msg" />
              </node>
              <node concept="37vLTG" id="eo" role="3clF46">
                <property role="TrG5h" value="context" />
                <node concept="3uibUv" id="er" role="1tU5fm">
                  <ref role="3uigEE" to="pdwk:~ContainmentContext" resolve="ContainmentContext" />
                  <uo k="s:originTrace" v="n:8259557992564995085" />
                </node>
              </node>
              <node concept="3clFbS" id="ep" role="3clF47">
                <node concept="3cpWs6" id="es" role="3cqZAp">
                  <node concept="2ShNRf" id="et" role="3cqZAk">
                    <node concept="1pGfFk" id="eu" role="2ShVmc">
                      <ref role="37wK5l" to="j809:~MessageProvider$StringMsg.&lt;init&gt;(java.lang.String)" resolve="MessageProvider.StringMsg" />
                      <node concept="Xl_RD" id="ev" role="37wK5m">
                        <property role="Xl_RC" value="Switch shall request call site to use this macro" />
                        <uo k="s:originTrace" v="n:8259557992565066011" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="eq" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3uibUv" id="ei" role="2Ghqu4">
              <ref role="3uigEE" to="pdwk:~ContainmentContext" resolve="ContainmentContext" />
              <uo k="s:originTrace" v="n:8259557992564995085" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="ec" role="1tU5fm">
        <ref role="3uigEE" to="9jwd:~FeedbackProvider" resolve="FeedbackProvider" />
        <node concept="3uibUv" id="ew" role="11_B2D">
          <ref role="3uigEE" to="pdwk:~ContainmentContext" resolve="ContainmentContext" />
          <uo k="s:originTrace" v="n:8259557992564995085" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="dC" role="jymVt">
      <uo k="s:originTrace" v="n:8259557992564995085" />
    </node>
    <node concept="3Tm1VV" id="dD" role="1B3o_S">
      <uo k="s:originTrace" v="n:8259557992564995085" />
    </node>
    <node concept="Wx3nA" id="dE" role="jymVt">
      <property role="TrG5h" value="PROVIDERS" />
      <property role="3TUv4t" value="true" />
      <uo k="s:originTrace" v="n:8259557992564995085" />
      <node concept="3uibUv" id="ex" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <uo k="s:originTrace" v="n:8259557992564995085" />
        <node concept="3uibUv" id="e$" role="11_B2D">
          <ref role="3uigEE" to="9jwd:~FeedbackProvider" resolve="FeedbackProvider" />
          <uo k="s:originTrace" v="n:8259557992564995085" />
        </node>
      </node>
      <node concept="3Tm6S6" id="ey" role="1B3o_S">
        <uo k="s:originTrace" v="n:8259557992564995085" />
      </node>
      <node concept="2YIFZM" id="ez" role="33vP2m">
        <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
        <ref role="37wK5l" to="33ny:~Collections.unmodifiableList(java.util.List)" resolve="unmodifiableList" />
        <uo k="s:originTrace" v="n:8259557992564995085" />
        <node concept="2YIFZM" id="e_" role="37wK5m">
          <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
          <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
          <uo k="s:originTrace" v="n:8259557992564995085" />
          <node concept="3uibUv" id="eA" role="3PaCim">
            <ref role="3uigEE" to="9jwd:~FeedbackProvider" resolve="FeedbackProvider" />
            <uo k="s:originTrace" v="n:8259557992564995085" />
          </node>
          <node concept="37vLTw" id="eB" role="37wK5m">
            <ref role="3cqZAo" node="dA" resolve="MSGPROVIDER_WhenConstraintRuleFails_7re1g5_a" />
            <uo k="s:originTrace" v="n:8259557992564995085" />
          </node>
          <node concept="37vLTw" id="eC" role="37wK5m">
            <ref role="3cqZAo" node="dB" resolve="MSGPROVIDER_WhenConstraintRuleFails_7re1g5_b" />
            <uo k="s:originTrace" v="n:8259557992564995085" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="dF" role="jymVt">
      <uo k="s:originTrace" v="n:8259557992564995085" />
    </node>
    <node concept="3clFbW" id="dG" role="jymVt">
      <property role="TrG5h" value="BaseMessageDescriptor" />
      <uo k="s:originTrace" v="n:8259557992564995085" />
      <node concept="3cqZAl" id="eD" role="3clF45">
        <uo k="s:originTrace" v="n:8259557992564995085" />
      </node>
      <node concept="3Tm1VV" id="eE" role="1B3o_S">
        <uo k="s:originTrace" v="n:8259557992564995085" />
      </node>
      <node concept="3clFbS" id="eF" role="3clF47">
        <uo k="s:originTrace" v="n:8259557992564995085" />
        <node concept="XkiVB" id="eG" role="3cqZAp">
          <ref role="37wK5l" to="9jwd:~BaseFeedbackDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseFeedbackDescriptor" />
          <uo k="s:originTrace" v="n:8259557992564995085" />
          <node concept="37vLTw" id="eH" role="37wK5m">
            <ref role="3cqZAo" node="d$" resolve="CONCEPT" />
            <uo k="s:originTrace" v="n:8259557992564995085" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="dH" role="jymVt">
      <uo k="s:originTrace" v="n:8259557992564995085" />
    </node>
    <node concept="3clFb_" id="dI" role="jymVt">
      <property role="TrG5h" value="getDeclaredProviders" />
      <uo k="s:originTrace" v="n:8259557992564995085" />
      <node concept="3uibUv" id="eI" role="3clF45">
        <ref role="3uigEE" to="1ctc:~Stream" resolve="Stream" />
        <uo k="s:originTrace" v="n:8259557992564995085" />
        <node concept="3uibUv" id="eN" role="11_B2D">
          <ref role="3uigEE" to="9jwd:~FeedbackProvider" resolve="FeedbackProvider" />
          <uo k="s:originTrace" v="n:8259557992564995085" />
        </node>
      </node>
      <node concept="3Tm1VV" id="eJ" role="1B3o_S">
        <uo k="s:originTrace" v="n:8259557992564995085" />
      </node>
      <node concept="3clFbS" id="eK" role="3clF47">
        <uo k="s:originTrace" v="n:8259557992564995085" />
        <node concept="3cpWs6" id="eO" role="3cqZAp">
          <uo k="s:originTrace" v="n:8259557992564995085" />
          <node concept="2OqwBi" id="eP" role="3cqZAk">
            <uo k="s:originTrace" v="n:8259557992564995085" />
            <node concept="37vLTw" id="eQ" role="2Oq$k0">
              <ref role="3cqZAo" node="dE" resolve="PROVIDERS" />
              <uo k="s:originTrace" v="n:8259557992564995085" />
            </node>
            <node concept="liA8E" id="eR" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
              <uo k="s:originTrace" v="n:8259557992564995085" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="eL" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        <uo k="s:originTrace" v="n:8259557992564995085" />
      </node>
      <node concept="2AHcQZ" id="eM" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:8259557992564995085" />
      </node>
    </node>
    <node concept="3uibUv" id="dJ" role="1zkMxy">
      <ref role="3uigEE" to="9jwd:~BaseFeedbackDescriptor" resolve="BaseFeedbackDescriptor" />
      <uo k="s:originTrace" v="n:8259557992564995085" />
    </node>
  </node>
  <node concept="312cEu" id="eS">
    <property role="TrG5h" value="MappingRuleTemplateNodeSearchScope" />
    <uo k="s:originTrace" v="n:5740396897827770061" />
    <node concept="3uibUv" id="eT" role="1zkMxy">
      <ref role="3uigEE" to="o8zo:VXQuBhO0U" resolve="ModelsScope" />
      <uo k="s:originTrace" v="n:445563756713573663" />
    </node>
    <node concept="3clFbW" id="eU" role="jymVt">
      <uo k="s:originTrace" v="n:5740396897827770074" />
      <node concept="3Tm1VV" id="eV" role="1B3o_S">
        <uo k="s:originTrace" v="n:5740396897827770075" />
      </node>
      <node concept="3cqZAl" id="eW" role="3clF45">
        <uo k="s:originTrace" v="n:5740396897827770076" />
      </node>
      <node concept="37vLTG" id="eX" role="3clF46">
        <property role="TrG5h" value="model" />
        <uo k="s:originTrace" v="n:5740396897827770077" />
        <node concept="3uibUv" id="eZ" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
          <uo k="s:originTrace" v="n:5740396897827770078" />
        </node>
      </node>
      <node concept="3clFbS" id="eY" role="3clF47">
        <uo k="s:originTrace" v="n:5740396897827770081" />
        <node concept="3SKdUt" id="f0" role="3cqZAp">
          <uo k="s:originTrace" v="n:445563756713614107" />
          <node concept="1PaTwC" id="f2" role="1aUNEU">
            <uo k="s:originTrace" v="n:700871696606804097" />
            <node concept="3oM_SD" id="f3" role="1PaTwD">
              <property role="3oM_SC" value="any" />
              <uo k="s:originTrace" v="n:700871696606804098" />
            </node>
            <node concept="3oM_SD" id="f4" role="1PaTwD">
              <property role="3oM_SC" value="named" />
              <uo k="s:originTrace" v="n:700871696606804099" />
            </node>
            <node concept="3oM_SD" id="f5" role="1PaTwD">
              <property role="3oM_SC" value="node" />
              <uo k="s:originTrace" v="n:700871696606804100" />
            </node>
            <node concept="3oM_SD" id="f6" role="1PaTwD">
              <property role="3oM_SC" value="(restriction" />
              <uo k="s:originTrace" v="n:700871696606804101" />
            </node>
            <node concept="3oM_SD" id="f7" role="1PaTwD">
              <property role="3oM_SC" value="of" />
              <uo k="s:originTrace" v="n:700871696606804102" />
            </node>
            <node concept="3oM_SD" id="f8" role="1PaTwD">
              <property role="3oM_SC" value="rule" />
              <uo k="s:originTrace" v="n:700871696606804103" />
            </node>
            <node concept="3oM_SD" id="f9" role="1PaTwD">
              <property role="3oM_SC" value="target" />
              <uo k="s:originTrace" v="n:700871696606804104" />
            </node>
            <node concept="3oM_SD" id="fa" role="1PaTwD">
              <property role="3oM_SC" value="link)" />
              <uo k="s:originTrace" v="n:700871696606804105" />
            </node>
            <node concept="3oM_SD" id="fb" role="1PaTwD">
              <property role="3oM_SC" value="inside" />
              <uo k="s:originTrace" v="n:700871696606804106" />
            </node>
            <node concept="3oM_SD" id="fc" role="1PaTwD">
              <property role="3oM_SC" value="a" />
              <uo k="s:originTrace" v="n:700871696606804107" />
            </node>
            <node concept="3oM_SD" id="fd" role="1PaTwD">
              <property role="3oM_SC" value="visible" />
              <uo k="s:originTrace" v="n:700871696606804108" />
            </node>
            <node concept="3oM_SD" id="fe" role="1PaTwD">
              <property role="3oM_SC" value="generator" />
              <uo k="s:originTrace" v="n:700871696606804109" />
            </node>
            <node concept="3oM_SD" id="ff" role="1PaTwD">
              <property role="3oM_SC" value="model" />
              <uo k="s:originTrace" v="n:700871696606804110" />
            </node>
          </node>
        </node>
        <node concept="XkiVB" id="f1" role="3cqZAp">
          <ref role="37wK5l" to="o8zo:4k9eBec$Bew" resolve="ModelsScope" />
          <uo k="s:originTrace" v="n:445563756713594653" />
          <node concept="2OqwBi" id="fg" role="37wK5m">
            <uo k="s:originTrace" v="n:445563756713580649" />
            <node concept="3zZkjj" id="fj" role="2OqNvi">
              <uo k="s:originTrace" v="n:445563756713588328" />
              <node concept="1bVj0M" id="fl" role="23t8la">
                <uo k="s:originTrace" v="n:445563756713588330" />
                <node concept="3clFbS" id="fm" role="1bW5cS">
                  <uo k="s:originTrace" v="n:445563756713588331" />
                  <node concept="3clFbF" id="fo" role="3cqZAp">
                    <uo k="s:originTrace" v="n:445563756713589064" />
                    <node concept="2YIFZM" id="fp" role="3clFbG">
                      <ref role="1Pybhc" to="w1kc:~SModelStereotype" resolve="SModelStereotype" />
                      <ref role="37wK5l" to="w1kc:~SModelStereotype.isGeneratorModel(org.jetbrains.mps.openapi.model.SModel)" resolve="isGeneratorModel" />
                      <uo k="s:originTrace" v="n:445563756713589531" />
                      <node concept="37vLTw" id="fq" role="37wK5m">
                        <ref role="3cqZAo" node="fn" resolve="it" />
                        <uo k="s:originTrace" v="n:445563756713590127" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="fn" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <uo k="s:originTrace" v="n:6847626768367731597" />
                  <node concept="2jxLKc" id="fr" role="1tU5fm">
                    <uo k="s:originTrace" v="n:6847626768367731598" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1eOMI4" id="fk" role="2Oq$k0">
              <uo k="s:originTrace" v="n:7136850812916213577" />
              <node concept="10QFUN" id="fs" role="1eOMHV">
                <uo k="s:originTrace" v="n:7136850812916213968" />
                <node concept="A3Dl8" id="ft" role="10QFUM">
                  <uo k="s:originTrace" v="n:7136850812916214401" />
                  <node concept="H_c77" id="fv" role="A3Ik2">
                    <uo k="s:originTrace" v="n:7136850812916214665" />
                  </node>
                </node>
                <node concept="2OqwBi" id="fu" role="10QFUP">
                  <uo k="s:originTrace" v="n:7136850812916199541" />
                  <node concept="2ShNRf" id="fw" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:7136850812916192338" />
                    <node concept="1pGfFk" id="fy" role="2ShVmc">
                      <ref role="37wK5l" to="o8zo:4k9eBec$QVW" resolve="ModelPlusImportedScope" />
                      <uo k="s:originTrace" v="n:7136850812916193399" />
                      <node concept="37vLTw" id="fz" role="37wK5m">
                        <ref role="3cqZAo" node="eX" resolve="model" />
                        <uo k="s:originTrace" v="n:7136850812916194314" />
                      </node>
                      <node concept="3clFbT" id="f$" role="37wK5m">
                        <property role="3clFbU" value="true" />
                        <uo k="s:originTrace" v="n:7136850812916195950" />
                      </node>
                      <node concept="10Nm6u" id="f_" role="37wK5m">
                        <uo k="s:originTrace" v="n:7136850812916197513" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="fx" role="2OqNvi">
                    <ref role="37wK5l" to="o8zo:66auKH9r8yH" resolve="getModels" />
                    <uo k="s:originTrace" v="n:7136850812916201141" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbT" id="fh" role="37wK5m">
            <property role="3clFbU" value="true" />
            <uo k="s:originTrace" v="n:445563756713597367" />
          </node>
          <node concept="10Nm6u" id="fi" role="37wK5m">
            <uo k="s:originTrace" v="n:6224457144720069411" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="fA">
    <property role="3GE5qa" value="rule" />
    <property role="TrG5h" value="ReferenceReductionRule_Constraints" />
    <uo k="s:originTrace" v="n:8612733435392950225" />
    <node concept="3Tm1VV" id="fB" role="1B3o_S">
      <uo k="s:originTrace" v="n:8612733435392950225" />
    </node>
    <node concept="3uibUv" id="fC" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:8612733435392950225" />
    </node>
    <node concept="3clFbW" id="fD" role="jymVt">
      <uo k="s:originTrace" v="n:8612733435392950225" />
      <node concept="37vLTG" id="fH" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:8612733435392950225" />
        <node concept="3uibUv" id="fK" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:8612733435392950225" />
        </node>
      </node>
      <node concept="3cqZAl" id="fI" role="3clF45">
        <uo k="s:originTrace" v="n:8612733435392950225" />
      </node>
      <node concept="3clFbS" id="fJ" role="3clF47">
        <uo k="s:originTrace" v="n:8612733435392950225" />
        <node concept="XkiVB" id="fL" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:8612733435392950225" />
          <node concept="1BaE9c" id="fO" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="ReferenceReductionRule$t0" />
            <uo k="s:originTrace" v="n:8612733435392950225" />
            <node concept="2YIFZM" id="fQ" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:8612733435392950225" />
              <node concept="11gdke" id="fR" role="37wK5m">
                <property role="11gdj1" value="b401a68083254110L" />
                <uo k="s:originTrace" v="n:8612733435392950225" />
              </node>
              <node concept="11gdke" id="fS" role="37wK5m">
                <property role="11gdj1" value="8fd384331ff25befL" />
                <uo k="s:originTrace" v="n:8612733435392950225" />
              </node>
              <node concept="11gdke" id="fT" role="37wK5m">
                <property role="11gdj1" value="7786936d61b8dafaL" />
                <uo k="s:originTrace" v="n:8612733435392950225" />
              </node>
              <node concept="Xl_RD" id="fU" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.generator.structure.ReferenceReductionRule" />
                <uo k="s:originTrace" v="n:8612733435392950225" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="fP" role="37wK5m">
            <ref role="3cqZAo" node="fH" resolve="initContext" />
            <uo k="s:originTrace" v="n:8612733435392950225" />
          </node>
        </node>
        <node concept="3clFbF" id="fM" role="3cqZAp">
          <uo k="s:originTrace" v="n:8612733435392950225" />
          <node concept="1rXfSq" id="fV" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:8612733435392950225" />
            <node concept="2ShNRf" id="fW" role="37wK5m">
              <uo k="s:originTrace" v="n:8612733435392950225" />
              <node concept="1pGfFk" id="fX" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="g3" resolve="ReferenceReductionRule_Constraints.RD1" />
                <uo k="s:originTrace" v="n:8612733435392950225" />
                <node concept="Xjq3P" id="fY" role="37wK5m">
                  <uo k="s:originTrace" v="n:8612733435392950225" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="fN" role="3cqZAp">
          <uo k="s:originTrace" v="n:8612733435392950225" />
          <node concept="1rXfSq" id="fZ" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:8612733435392950225" />
            <node concept="2ShNRf" id="g0" role="37wK5m">
              <uo k="s:originTrace" v="n:8612733435392950225" />
              <node concept="1pGfFk" id="g1" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="hg" resolve="ReferenceReductionRule_Constraints.RD2" />
                <uo k="s:originTrace" v="n:8612733435392950225" />
                <node concept="Xjq3P" id="g2" role="37wK5m">
                  <uo k="s:originTrace" v="n:8612733435392950225" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="fE" role="jymVt">
      <uo k="s:originTrace" v="n:8612733435392950225" />
    </node>
    <node concept="312cEu" id="fF" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:8612733435392950225" />
      <node concept="3clFbW" id="g3" role="jymVt">
        <uo k="s:originTrace" v="n:8612733435392950225" />
        <node concept="37vLTG" id="g6" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:8612733435392950225" />
          <node concept="3uibUv" id="g9" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:8612733435392950225" />
          </node>
        </node>
        <node concept="3cqZAl" id="g7" role="3clF45">
          <uo k="s:originTrace" v="n:8612733435392950225" />
        </node>
        <node concept="3clFbS" id="g8" role="3clF47">
          <uo k="s:originTrace" v="n:8612733435392950225" />
          <node concept="XkiVB" id="ga" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:8612733435392950225" />
            <node concept="1BaE9c" id="gb" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="link$FUJ3" />
              <uo k="s:originTrace" v="n:8612733435392950225" />
              <node concept="2YIFZM" id="gf" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:8612733435392950225" />
                <node concept="11gdke" id="gg" role="37wK5m">
                  <property role="11gdj1" value="b401a68083254110L" />
                  <uo k="s:originTrace" v="n:8612733435392950225" />
                </node>
                <node concept="11gdke" id="gh" role="37wK5m">
                  <property role="11gdj1" value="8fd384331ff25befL" />
                  <uo k="s:originTrace" v="n:8612733435392950225" />
                </node>
                <node concept="11gdke" id="gi" role="37wK5m">
                  <property role="11gdj1" value="7786936d61b8dafaL" />
                  <uo k="s:originTrace" v="n:8612733435392950225" />
                </node>
                <node concept="11gdke" id="gj" role="37wK5m">
                  <property role="11gdj1" value="7786936d61b8dafdL" />
                  <uo k="s:originTrace" v="n:8612733435392950225" />
                </node>
                <node concept="Xl_RD" id="gk" role="37wK5m">
                  <property role="Xl_RC" value="link" />
                  <uo k="s:originTrace" v="n:8612733435392950225" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="gc" role="37wK5m">
              <ref role="3cqZAo" node="g6" resolve="container" />
              <uo k="s:originTrace" v="n:8612733435392950225" />
            </node>
            <node concept="3clFbT" id="gd" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:8612733435392950225" />
            </node>
            <node concept="3clFbT" id="ge" role="37wK5m">
              <uo k="s:originTrace" v="n:8612733435392950225" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="g4" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:8612733435392950225" />
        <node concept="3Tm1VV" id="gl" role="1B3o_S">
          <uo k="s:originTrace" v="n:8612733435392950225" />
        </node>
        <node concept="3uibUv" id="gm" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:8612733435392950225" />
        </node>
        <node concept="2AHcQZ" id="gn" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:8612733435392950225" />
        </node>
        <node concept="3clFbS" id="go" role="3clF47">
          <uo k="s:originTrace" v="n:8612733435392950225" />
          <node concept="3cpWs6" id="gq" role="3cqZAp">
            <uo k="s:originTrace" v="n:8612733435392950225" />
            <node concept="2ShNRf" id="gr" role="3cqZAk">
              <uo k="s:originTrace" v="n:8612733435392950230" />
              <node concept="YeOm9" id="gs" role="2ShVmc">
                <uo k="s:originTrace" v="n:8612733435392950230" />
                <node concept="1Y3b0j" id="gt" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:8612733435392950230" />
                  <node concept="3Tm1VV" id="gu" role="1B3o_S">
                    <uo k="s:originTrace" v="n:8612733435392950230" />
                  </node>
                  <node concept="3clFb_" id="gv" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:8612733435392950230" />
                    <node concept="3Tm1VV" id="gx" role="1B3o_S">
                      <uo k="s:originTrace" v="n:8612733435392950230" />
                    </node>
                    <node concept="3uibUv" id="gy" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:8612733435392950230" />
                    </node>
                    <node concept="3clFbS" id="gz" role="3clF47">
                      <uo k="s:originTrace" v="n:8612733435392950230" />
                      <node concept="3cpWs6" id="g_" role="3cqZAp">
                        <uo k="s:originTrace" v="n:8612733435392950230" />
                        <node concept="2ShNRf" id="gA" role="3cqZAk">
                          <uo k="s:originTrace" v="n:8612733435392950230" />
                          <node concept="1pGfFk" id="gB" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:8612733435392950230" />
                            <node concept="Xl_RD" id="gC" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c895902e2(jetbrains.mps.lang.generator.constraints)" />
                              <uo k="s:originTrace" v="n:8612733435392950230" />
                            </node>
                            <node concept="Xl_RD" id="gD" role="37wK5m">
                              <property role="Xl_RC" value="8612733435392950230" />
                              <uo k="s:originTrace" v="n:8612733435392950230" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="g$" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:8612733435392950230" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="gw" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:8612733435392950230" />
                    <node concept="3Tm1VV" id="gE" role="1B3o_S">
                      <uo k="s:originTrace" v="n:8612733435392950230" />
                    </node>
                    <node concept="3uibUv" id="gF" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:8612733435392950230" />
                    </node>
                    <node concept="37vLTG" id="gG" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:8612733435392950230" />
                      <node concept="3uibUv" id="gJ" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:8612733435392950230" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="gH" role="3clF47">
                      <uo k="s:originTrace" v="n:8612733435392950230" />
                      <node concept="3clFbF" id="gK" role="3cqZAp">
                        <uo k="s:originTrace" v="n:4547425041528130493" />
                        <node concept="2ShNRf" id="gL" role="3clFbG">
                          <uo k="s:originTrace" v="n:4547425041528130489" />
                          <node concept="YeOm9" id="gM" role="2ShVmc">
                            <uo k="s:originTrace" v="n:4547425041528142556" />
                            <node concept="1Y3b0j" id="gN" role="YeSDq">
                              <property role="2bfB8j" value="true" />
                              <ref role="1Y3XeK" to="o8zo:3rV3sBXetA0" resolve="FilteringScope" />
                              <ref role="37wK5l" to="o8zo:3rV3sBXetA2" resolve="FilteringScope" />
                              <uo k="s:originTrace" v="n:4547425041528142559" />
                              <node concept="2ShNRf" id="gO" role="37wK5m">
                                <uo k="s:originTrace" v="n:8612733435392951598" />
                                <node concept="1pGfFk" id="gS" role="2ShVmc">
                                  <ref role="37wK5l" to="o8zo:4k9eBec$QVW" resolve="ModelPlusImportedScope" />
                                  <uo k="s:originTrace" v="n:4547425041528152526" />
                                  <node concept="2OqwBi" id="gT" role="37wK5m">
                                    <uo k="s:originTrace" v="n:8612733435392962003" />
                                    <node concept="1DoJHT" id="gW" role="2Oq$k0">
                                      <property role="1Dpdpm" value="getContextNode" />
                                      <uo k="s:originTrace" v="n:8612733435392961319" />
                                      <node concept="3uibUv" id="gY" role="1Ez5kq">
                                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                      </node>
                                      <node concept="37vLTw" id="gZ" role="1EMhIo">
                                        <ref role="3cqZAo" node="gG" resolve="_context" />
                                      </node>
                                    </node>
                                    <node concept="I4A8Y" id="gX" role="2OqNvi">
                                      <uo k="s:originTrace" v="n:8612733435392962598" />
                                    </node>
                                  </node>
                                  <node concept="3clFbT" id="gU" role="37wK5m">
                                    <property role="3clFbU" value="false" />
                                    <uo k="s:originTrace" v="n:8612733435392965583" />
                                  </node>
                                  <node concept="35c_gC" id="gV" role="37wK5m">
                                    <ref role="35c_gD" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                                    <uo k="s:originTrace" v="n:8612733435392966542" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3Tm1VV" id="gP" role="1B3o_S">
                                <uo k="s:originTrace" v="n:4547425041528142560" />
                              </node>
                              <node concept="2tJIrI" id="gQ" role="jymVt">
                                <uo k="s:originTrace" v="n:4547425041528143668" />
                              </node>
                              <node concept="3clFb_" id="gR" role="jymVt">
                                <property role="TrG5h" value="isExcluded" />
                                <property role="1EzhhJ" value="false" />
                                <uo k="s:originTrace" v="n:4547425041528144759" />
                                <node concept="10P_77" id="h0" role="3clF45">
                                  <uo k="s:originTrace" v="n:4547425041528144760" />
                                </node>
                                <node concept="3Tm1VV" id="h1" role="1B3o_S">
                                  <uo k="s:originTrace" v="n:4547425041528144761" />
                                </node>
                                <node concept="37vLTG" id="h2" role="3clF46">
                                  <property role="TrG5h" value="node" />
                                  <uo k="s:originTrace" v="n:4547425041528144765" />
                                  <node concept="3Tqbb2" id="h5" role="1tU5fm">
                                    <uo k="s:originTrace" v="n:4547425041528144766" />
                                  </node>
                                </node>
                                <node concept="3clFbS" id="h3" role="3clF47">
                                  <uo k="s:originTrace" v="n:4547425041528144768" />
                                  <node concept="3clFbF" id="h6" role="3cqZAp">
                                    <uo k="s:originTrace" v="n:4547425041528146028" />
                                    <node concept="3fqX7Q" id="h7" role="3clFbG">
                                      <uo k="s:originTrace" v="n:4547425041528147576" />
                                      <node concept="2OqwBi" id="h8" role="3fr31v">
                                        <uo k="s:originTrace" v="n:4547425041528147578" />
                                        <node concept="2OqwBi" id="h9" role="2Oq$k0">
                                          <uo k="s:originTrace" v="n:4547425041528147579" />
                                          <node concept="1PxgMI" id="hb" role="2Oq$k0">
                                            <property role="1BlNFB" value="true" />
                                            <uo k="s:originTrace" v="n:4547425041528147580" />
                                            <node concept="chp4Y" id="hd" role="3oSUPX">
                                              <ref role="cht4Q" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                                              <uo k="s:originTrace" v="n:4547425041528147581" />
                                            </node>
                                            <node concept="37vLTw" id="he" role="1m5AlR">
                                              <ref role="3cqZAo" node="h2" resolve="node" />
                                              <uo k="s:originTrace" v="n:4547425041528147582" />
                                            </node>
                                          </node>
                                          <node concept="3TrcHB" id="hc" role="2OqNvi">
                                            <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                                            <uo k="s:originTrace" v="n:4547425041528147583" />
                                          </node>
                                        </node>
                                        <node concept="21noJN" id="ha" role="2OqNvi">
                                          <uo k="s:originTrace" v="n:4241665505383309278" />
                                          <node concept="21nZrQ" id="hf" role="21noJM">
                                            <ref role="21nZrZ" to="tpce:3Ftr4R6BFyn" resolve="reference" />
                                            <uo k="s:originTrace" v="n:4241665505383309279" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="2AHcQZ" id="h4" role="2AJF6D">
                                  <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                  <uo k="s:originTrace" v="n:4547425041528144769" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="gI" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:8612733435392950230" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="gp" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:8612733435392950225" />
        </node>
      </node>
      <node concept="3uibUv" id="g5" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:8612733435392950225" />
      </node>
    </node>
    <node concept="312cEu" id="fG" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD2" />
      <uo k="s:originTrace" v="n:8612733435392950225" />
      <node concept="3clFbW" id="hg" role="jymVt">
        <uo k="s:originTrace" v="n:8612733435392950225" />
        <node concept="37vLTG" id="hj" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:8612733435392950225" />
          <node concept="3uibUv" id="hm" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:8612733435392950225" />
          </node>
        </node>
        <node concept="3cqZAl" id="hk" role="3clF45">
          <uo k="s:originTrace" v="n:8612733435392950225" />
        </node>
        <node concept="3clFbS" id="hl" role="3clF47">
          <uo k="s:originTrace" v="n:8612733435392950225" />
          <node concept="XkiVB" id="hn" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:8612733435392950225" />
            <node concept="1BaE9c" id="ho" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="applicableConcept$id7O" />
              <uo k="s:originTrace" v="n:8612733435392950225" />
              <node concept="2YIFZM" id="hs" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:8612733435392950225" />
                <node concept="11gdke" id="ht" role="37wK5m">
                  <property role="11gdj1" value="b401a68083254110L" />
                  <uo k="s:originTrace" v="n:8612733435392950225" />
                </node>
                <node concept="11gdke" id="hu" role="37wK5m">
                  <property role="11gdj1" value="8fd384331ff25befL" />
                  <uo k="s:originTrace" v="n:8612733435392950225" />
                </node>
                <node concept="11gdke" id="hv" role="37wK5m">
                  <property role="11gdj1" value="7786936d61b8dafaL" />
                  <uo k="s:originTrace" v="n:8612733435392950225" />
                </node>
                <node concept="11gdke" id="hw" role="37wK5m">
                  <property role="11gdj1" value="7316e38ce4ecd66L" />
                  <uo k="s:originTrace" v="n:8612733435392950225" />
                </node>
                <node concept="Xl_RD" id="hx" role="37wK5m">
                  <property role="Xl_RC" value="applicableConcept" />
                  <uo k="s:originTrace" v="n:8612733435392950225" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="hp" role="37wK5m">
              <ref role="3cqZAo" node="hj" resolve="container" />
              <uo k="s:originTrace" v="n:8612733435392950225" />
            </node>
            <node concept="3clFbT" id="hq" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:8612733435392950225" />
            </node>
            <node concept="3clFbT" id="hr" role="37wK5m">
              <uo k="s:originTrace" v="n:8612733435392950225" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="hh" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:8612733435392950225" />
        <node concept="3Tm1VV" id="hy" role="1B3o_S">
          <uo k="s:originTrace" v="n:8612733435392950225" />
        </node>
        <node concept="3uibUv" id="hz" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:8612733435392950225" />
        </node>
        <node concept="2AHcQZ" id="h$" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:8612733435392950225" />
        </node>
        <node concept="3clFbS" id="h_" role="3clF47">
          <uo k="s:originTrace" v="n:8612733435392950225" />
          <node concept="3cpWs6" id="hB" role="3cqZAp">
            <uo k="s:originTrace" v="n:8612733435392950225" />
            <node concept="2ShNRf" id="hC" role="3cqZAk">
              <uo k="s:originTrace" v="n:518316622382817051" />
              <node concept="YeOm9" id="hD" role="2ShVmc">
                <uo k="s:originTrace" v="n:518316622382817051" />
                <node concept="1Y3b0j" id="hE" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:518316622382817051" />
                  <node concept="3Tm1VV" id="hF" role="1B3o_S">
                    <uo k="s:originTrace" v="n:518316622382817051" />
                  </node>
                  <node concept="3clFb_" id="hG" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:518316622382817051" />
                    <node concept="3Tm1VV" id="hI" role="1B3o_S">
                      <uo k="s:originTrace" v="n:518316622382817051" />
                    </node>
                    <node concept="3uibUv" id="hJ" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:518316622382817051" />
                    </node>
                    <node concept="3clFbS" id="hK" role="3clF47">
                      <uo k="s:originTrace" v="n:518316622382817051" />
                      <node concept="3cpWs6" id="hM" role="3cqZAp">
                        <uo k="s:originTrace" v="n:518316622382817051" />
                        <node concept="2ShNRf" id="hN" role="3cqZAk">
                          <uo k="s:originTrace" v="n:518316622382817051" />
                          <node concept="1pGfFk" id="hO" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:518316622382817051" />
                            <node concept="Xl_RD" id="hP" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c895902e2(jetbrains.mps.lang.generator.constraints)" />
                              <uo k="s:originTrace" v="n:518316622382817051" />
                            </node>
                            <node concept="Xl_RD" id="hQ" role="37wK5m">
                              <property role="Xl_RC" value="518316622382817051" />
                              <uo k="s:originTrace" v="n:518316622382817051" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="hL" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:518316622382817051" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="hH" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:518316622382817051" />
                    <node concept="3Tm1VV" id="hR" role="1B3o_S">
                      <uo k="s:originTrace" v="n:518316622382817051" />
                    </node>
                    <node concept="3uibUv" id="hS" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:518316622382817051" />
                    </node>
                    <node concept="37vLTG" id="hT" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:518316622382817051" />
                      <node concept="3uibUv" id="hW" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:518316622382817051" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="hU" role="3clF47">
                      <uo k="s:originTrace" v="n:518316622382817051" />
                      <node concept="3clFbJ" id="hX" role="3cqZAp">
                        <uo k="s:originTrace" v="n:518316622382818419" />
                        <node concept="3clFbC" id="i1" role="3clFbw">
                          <uo k="s:originTrace" v="n:518316622382820032" />
                          <node concept="10Nm6u" id="i3" role="3uHU7w">
                            <uo k="s:originTrace" v="n:518316622382820042" />
                          </node>
                          <node concept="1DoJHT" id="i4" role="3uHU7B">
                            <property role="1Dpdpm" value="getReferenceNode" />
                            <uo k="s:originTrace" v="n:518316622382818612" />
                            <node concept="3uibUv" id="i5" role="1Ez5kq">
                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                            </node>
                            <node concept="37vLTw" id="i6" role="1EMhIo">
                              <ref role="3cqZAo" node="hT" resolve="_context" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbS" id="i2" role="3clFbx">
                          <uo k="s:originTrace" v="n:518316622382818421" />
                          <node concept="3cpWs6" id="i7" role="3cqZAp">
                            <uo k="s:originTrace" v="n:518316622382820240" />
                            <node concept="2ShNRf" id="i8" role="3cqZAk">
                              <uo k="s:originTrace" v="n:518316622382820448" />
                              <node concept="1pGfFk" id="i9" role="2ShVmc">
                                <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
                                <uo k="s:originTrace" v="n:518316622382828605" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="hY" role="3cqZAp">
                        <uo k="s:originTrace" v="n:518316622382842712" />
                        <node concept="3cpWsn" id="ia" role="3cpWs9">
                          <property role="TrG5h" value="linkOwner" />
                          <property role="3TUv4t" value="true" />
                          <uo k="s:originTrace" v="n:518316622382842713" />
                          <node concept="3Tqbb2" id="ib" role="1tU5fm">
                            <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                            <uo k="s:originTrace" v="n:5672696027943851218" />
                          </node>
                          <node concept="2OqwBi" id="ic" role="33vP2m">
                            <uo k="s:originTrace" v="n:518316622382842714" />
                            <node concept="2OqwBi" id="id" role="2Oq$k0">
                              <uo k="s:originTrace" v="n:518316622382842715" />
                              <node concept="1DoJHT" id="if" role="2Oq$k0">
                                <property role="1Dpdpm" value="getReferenceNode" />
                                <uo k="s:originTrace" v="n:518316622382842716" />
                                <node concept="3uibUv" id="ih" role="1Ez5kq">
                                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                </node>
                                <node concept="37vLTw" id="ii" role="1EMhIo">
                                  <ref role="3cqZAo" node="hT" resolve="_context" />
                                </node>
                              </node>
                              <node concept="3TrEf2" id="ig" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpf8:7u6$QPxIdFX" resolve="link" />
                                <uo k="s:originTrace" v="n:518316622382842717" />
                              </node>
                            </node>
                            <node concept="3zqWPK" id="ie" role="2OqNvi">
                              <ref role="37wK5l" to="tpcn:7jb4LXpbWaP" resolve="getConceptDeclaration" />
                              <uo k="s:originTrace" v="n:8085146484218859024" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="hZ" role="3cqZAp">
                        <uo k="s:originTrace" v="n:518316622383148820" />
                      </node>
                      <node concept="3cpWs6" id="i0" role="3cqZAp">
                        <uo k="s:originTrace" v="n:518316622383152166" />
                        <node concept="2ShNRf" id="ij" role="3cqZAk">
                          <uo k="s:originTrace" v="n:518316622383153852" />
                          <node concept="YeOm9" id="ik" role="2ShVmc">
                            <uo k="s:originTrace" v="n:518316622383180601" />
                            <node concept="1Y3b0j" id="il" role="YeSDq">
                              <property role="2bfB8j" value="true" />
                              <ref role="1Y3XeK" to="o8zo:3rV3sBXetA0" resolve="FilteringScope" />
                              <ref role="37wK5l" to="o8zo:3rV3sBXetA2" resolve="FilteringScope" />
                              <uo k="s:originTrace" v="n:518316622383180604" />
                              <node concept="3Tm1VV" id="im" role="1B3o_S">
                                <uo k="s:originTrace" v="n:518316622383180605" />
                              </node>
                              <node concept="2ShNRf" id="in" role="37wK5m">
                                <uo k="s:originTrace" v="n:518316622383158638" />
                                <node concept="1pGfFk" id="ip" role="2ShVmc">
                                  <ref role="37wK5l" to="o8zo:4k9eBec$QVW" resolve="ModelPlusImportedScope" />
                                  <uo k="s:originTrace" v="n:518316622383161663" />
                                  <node concept="2OqwBi" id="iq" role="37wK5m">
                                    <uo k="s:originTrace" v="n:518316622383165280" />
                                    <node concept="1DoJHT" id="it" role="2Oq$k0">
                                      <property role="1Dpdpm" value="getContextNode" />
                                      <uo k="s:originTrace" v="n:518316622383163684" />
                                      <node concept="3uibUv" id="iv" role="1Ez5kq">
                                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                      </node>
                                      <node concept="37vLTw" id="iw" role="1EMhIo">
                                        <ref role="3cqZAo" node="hT" resolve="_context" />
                                      </node>
                                    </node>
                                    <node concept="I4A8Y" id="iu" role="2OqNvi">
                                      <uo k="s:originTrace" v="n:518316622383167606" />
                                    </node>
                                  </node>
                                  <node concept="3clFbT" id="ir" role="37wK5m">
                                    <property role="3clFbU" value="true" />
                                    <uo k="s:originTrace" v="n:518316622383171656" />
                                  </node>
                                  <node concept="35c_gC" id="is" role="37wK5m">
                                    <ref role="35c_gD" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                                    <uo k="s:originTrace" v="n:518316622383175722" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFb_" id="io" role="jymVt">
                                <property role="TrG5h" value="isExcluded" />
                                <property role="1EzhhJ" value="false" />
                                <uo k="s:originTrace" v="n:518316622383183142" />
                                <node concept="10P_77" id="ix" role="3clF45">
                                  <uo k="s:originTrace" v="n:518316622383183143" />
                                </node>
                                <node concept="3Tm1VV" id="iy" role="1B3o_S">
                                  <uo k="s:originTrace" v="n:518316622383183144" />
                                </node>
                                <node concept="37vLTG" id="iz" role="3clF46">
                                  <property role="TrG5h" value="node" />
                                  <uo k="s:originTrace" v="n:518316622383183148" />
                                  <node concept="3Tqbb2" id="iA" role="1tU5fm">
                                    <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                                    <uo k="s:originTrace" v="n:518316622383183149" />
                                  </node>
                                </node>
                                <node concept="3clFbS" id="i$" role="3clF47">
                                  <uo k="s:originTrace" v="n:518316622383183151" />
                                  <node concept="3clFbF" id="iB" role="3cqZAp">
                                    <uo k="s:originTrace" v="n:518316622383186447" />
                                    <node concept="3fqX7Q" id="iC" role="3clFbG">
                                      <uo k="s:originTrace" v="n:518316622383195016" />
                                      <node concept="2OqwBi" id="iD" role="3fr31v">
                                        <uo k="s:originTrace" v="n:518316622383195018" />
                                        <node concept="37vLTw" id="iE" role="2Oq$k0">
                                          <ref role="3cqZAo" node="iz" resolve="node" />
                                          <uo k="s:originTrace" v="n:518316622383195019" />
                                        </node>
                                        <node concept="3zqWPK" id="iF" role="2OqNvi">
                                          <ref role="37wK5l" to="tpcn:73yVtVlWOga" resolve="isSubconceptOf" />
                                          <uo k="s:originTrace" v="n:8085146484218859026" />
                                          <node concept="37vLTw" id="iG" role="37wK5m">
                                            <ref role="3cqZAo" node="ia" resolve="linkOwner" />
                                            <uo k="s:originTrace" v="n:8085146484218859028" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="2AHcQZ" id="i_" role="2AJF6D">
                                  <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                  <uo k="s:originTrace" v="n:518316622383183152" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="hV" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:518316622382817051" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="hA" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:8612733435392950225" />
        </node>
      </node>
      <node concept="3uibUv" id="hi" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:8612733435392950225" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="iH">
    <property role="TrG5h" value="Root_MappingRule_Constraints" />
    <uo k="s:originTrace" v="n:1213104837507" />
    <node concept="3Tm1VV" id="iI" role="1B3o_S">
      <uo k="s:originTrace" v="n:1213104837507" />
    </node>
    <node concept="3uibUv" id="iJ" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:1213104837507" />
    </node>
    <node concept="3clFbW" id="iK" role="jymVt">
      <uo k="s:originTrace" v="n:1213104837507" />
      <node concept="37vLTG" id="iN" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:1213104837507" />
        <node concept="3uibUv" id="iQ" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:1213104837507" />
        </node>
      </node>
      <node concept="3cqZAl" id="iO" role="3clF45">
        <uo k="s:originTrace" v="n:1213104837507" />
      </node>
      <node concept="3clFbS" id="iP" role="3clF47">
        <uo k="s:originTrace" v="n:1213104837507" />
        <node concept="XkiVB" id="iR" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:1213104837507" />
          <node concept="1BaE9c" id="iT" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="Root_MappingRule$NH" />
            <uo k="s:originTrace" v="n:1213104837507" />
            <node concept="2YIFZM" id="iV" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:1213104837507" />
              <node concept="11gdke" id="iW" role="37wK5m">
                <property role="11gdj1" value="b401a68083254110L" />
                <uo k="s:originTrace" v="n:1213104837507" />
              </node>
              <node concept="11gdke" id="iX" role="37wK5m">
                <property role="11gdj1" value="8fd384331ff25befL" />
                <uo k="s:originTrace" v="n:1213104837507" />
              </node>
              <node concept="11gdke" id="iY" role="37wK5m">
                <property role="11gdj1" value="10fd54746dbL" />
                <uo k="s:originTrace" v="n:1213104837507" />
              </node>
              <node concept="Xl_RD" id="iZ" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.generator.structure.Root_MappingRule" />
                <uo k="s:originTrace" v="n:1213104837507" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="iU" role="37wK5m">
            <ref role="3cqZAo" node="iN" resolve="initContext" />
            <uo k="s:originTrace" v="n:1213104837507" />
          </node>
        </node>
        <node concept="3clFbF" id="iS" role="3cqZAp">
          <uo k="s:originTrace" v="n:1213104837507" />
          <node concept="1rXfSq" id="j0" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:1213104837507" />
            <node concept="2ShNRf" id="j1" role="37wK5m">
              <uo k="s:originTrace" v="n:1213104837507" />
              <node concept="1pGfFk" id="j2" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="j4" resolve="Root_MappingRule_Constraints.RD1" />
                <uo k="s:originTrace" v="n:1213104837507" />
                <node concept="Xjq3P" id="j3" role="37wK5m">
                  <uo k="s:originTrace" v="n:1213104837507" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="iL" role="jymVt">
      <uo k="s:originTrace" v="n:1213104837507" />
    </node>
    <node concept="312cEu" id="iM" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:1213104837507" />
      <node concept="3clFbW" id="j4" role="jymVt">
        <uo k="s:originTrace" v="n:1213104837507" />
        <node concept="37vLTG" id="j7" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:1213104837507" />
          <node concept="3uibUv" id="ja" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1213104837507" />
          </node>
        </node>
        <node concept="3cqZAl" id="j8" role="3clF45">
          <uo k="s:originTrace" v="n:1213104837507" />
        </node>
        <node concept="3clFbS" id="j9" role="3clF47">
          <uo k="s:originTrace" v="n:1213104837507" />
          <node concept="XkiVB" id="jb" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1213104837507" />
            <node concept="1BaE9c" id="jc" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="template$n_Qy" />
              <uo k="s:originTrace" v="n:1213104837507" />
              <node concept="2YIFZM" id="jg" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:1213104837507" />
                <node concept="11gdke" id="jh" role="37wK5m">
                  <property role="11gdj1" value="b401a68083254110L" />
                  <uo k="s:originTrace" v="n:1213104837507" />
                </node>
                <node concept="11gdke" id="ji" role="37wK5m">
                  <property role="11gdj1" value="8fd384331ff25befL" />
                  <uo k="s:originTrace" v="n:1213104837507" />
                </node>
                <node concept="11gdke" id="jj" role="37wK5m">
                  <property role="11gdj1" value="10fd54746dbL" />
                  <uo k="s:originTrace" v="n:1213104837507" />
                </node>
                <node concept="11gdke" id="jk" role="37wK5m">
                  <property role="11gdj1" value="10fd54746ddL" />
                  <uo k="s:originTrace" v="n:1213104837507" />
                </node>
                <node concept="Xl_RD" id="jl" role="37wK5m">
                  <property role="Xl_RC" value="template" />
                  <uo k="s:originTrace" v="n:1213104837507" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="jd" role="37wK5m">
              <ref role="3cqZAo" node="j7" resolve="container" />
              <uo k="s:originTrace" v="n:1213104837507" />
            </node>
            <node concept="3clFbT" id="je" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:1213104837507" />
            </node>
            <node concept="3clFbT" id="jf" role="37wK5m">
              <uo k="s:originTrace" v="n:1213104837507" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="j5" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:1213104837507" />
        <node concept="3Tm1VV" id="jm" role="1B3o_S">
          <uo k="s:originTrace" v="n:1213104837507" />
        </node>
        <node concept="3uibUv" id="jn" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:1213104837507" />
        </node>
        <node concept="2AHcQZ" id="jo" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:1213104837507" />
        </node>
        <node concept="3clFbS" id="jp" role="3clF47">
          <uo k="s:originTrace" v="n:1213104837507" />
          <node concept="3cpWs6" id="jr" role="3cqZAp">
            <uo k="s:originTrace" v="n:1213104837507" />
            <node concept="2ShNRf" id="js" role="3cqZAk">
              <uo k="s:originTrace" v="n:6836281137582788754" />
              <node concept="YeOm9" id="jt" role="2ShVmc">
                <uo k="s:originTrace" v="n:6836281137582788754" />
                <node concept="1Y3b0j" id="ju" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:6836281137582788754" />
                  <node concept="3Tm1VV" id="jv" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6836281137582788754" />
                  </node>
                  <node concept="3clFb_" id="jw" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:6836281137582788754" />
                    <node concept="3Tm1VV" id="jy" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582788754" />
                    </node>
                    <node concept="3uibUv" id="jz" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:6836281137582788754" />
                    </node>
                    <node concept="3clFbS" id="j$" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582788754" />
                      <node concept="3cpWs6" id="jA" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582788754" />
                        <node concept="2ShNRf" id="jB" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582788754" />
                          <node concept="1pGfFk" id="jC" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:6836281137582788754" />
                            <node concept="Xl_RD" id="jD" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c895902e2(jetbrains.mps.lang.generator.constraints)" />
                              <uo k="s:originTrace" v="n:6836281137582788754" />
                            </node>
                            <node concept="Xl_RD" id="jE" role="37wK5m">
                              <property role="Xl_RC" value="6836281137582788754" />
                              <uo k="s:originTrace" v="n:6836281137582788754" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="j_" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582788754" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="jx" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:6836281137582788754" />
                    <node concept="3Tm1VV" id="jF" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582788754" />
                    </node>
                    <node concept="3uibUv" id="jG" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:6836281137582788754" />
                    </node>
                    <node concept="37vLTG" id="jH" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:6836281137582788754" />
                      <node concept="3uibUv" id="jK" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:6836281137582788754" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="jI" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582788754" />
                      <node concept="3clFbF" id="jL" role="3cqZAp">
                        <uo k="s:originTrace" v="n:445563756713617260" />
                        <node concept="2ShNRf" id="jM" role="3clFbG">
                          <uo k="s:originTrace" v="n:6836281137582788784" />
                          <node concept="1pGfFk" id="jN" role="2ShVmc">
                            <ref role="37wK5l" node="eU" resolve="MappingRuleTemplateNodeSearchScope" />
                            <uo k="s:originTrace" v="n:6836281137582788785" />
                            <node concept="2OqwBi" id="jO" role="37wK5m">
                              <uo k="s:originTrace" v="n:6836281137582788786" />
                              <node concept="1DoJHT" id="jP" role="2Oq$k0">
                                <property role="1Dpdpm" value="getContextNode" />
                                <uo k="s:originTrace" v="n:6836281137582788787" />
                                <node concept="3uibUv" id="jR" role="1Ez5kq">
                                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                </node>
                                <node concept="37vLTw" id="jS" role="1EMhIo">
                                  <ref role="3cqZAo" node="jH" resolve="_context" />
                                </node>
                              </node>
                              <node concept="I4A8Y" id="jQ" role="2OqNvi">
                                <uo k="s:originTrace" v="n:6836281137582788788" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="jJ" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582788754" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="jq" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:1213104837507" />
        </node>
      </node>
      <node concept="3uibUv" id="j6" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:1213104837507" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="jT">
    <property role="3GE5qa" value="rule.argument" />
    <property role="TrG5h" value="TemplateArgumentLinkPatternRefExpression_Constraints" />
    <uo k="s:originTrace" v="n:4816349095291149869" />
    <node concept="3Tm1VV" id="jU" role="1B3o_S">
      <uo k="s:originTrace" v="n:4816349095291149869" />
    </node>
    <node concept="3uibUv" id="jV" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:4816349095291149869" />
    </node>
    <node concept="3clFbW" id="jW" role="jymVt">
      <uo k="s:originTrace" v="n:4816349095291149869" />
      <node concept="37vLTG" id="jZ" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:4816349095291149869" />
        <node concept="3uibUv" id="k2" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:4816349095291149869" />
        </node>
      </node>
      <node concept="3cqZAl" id="k0" role="3clF45">
        <uo k="s:originTrace" v="n:4816349095291149869" />
      </node>
      <node concept="3clFbS" id="k1" role="3clF47">
        <uo k="s:originTrace" v="n:4816349095291149869" />
        <node concept="XkiVB" id="k3" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:4816349095291149869" />
          <node concept="1BaE9c" id="k5" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="TemplateArgumentLinkPatternRefExpression$Bu" />
            <uo k="s:originTrace" v="n:4816349095291149869" />
            <node concept="2YIFZM" id="k7" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:4816349095291149869" />
              <node concept="11gdke" id="k8" role="37wK5m">
                <property role="11gdj1" value="b401a68083254110L" />
                <uo k="s:originTrace" v="n:4816349095291149869" />
              </node>
              <node concept="11gdke" id="k9" role="37wK5m">
                <property role="11gdj1" value="8fd384331ff25befL" />
                <uo k="s:originTrace" v="n:4816349095291149869" />
              </node>
              <node concept="11gdke" id="ka" role="37wK5m">
                <property role="11gdj1" value="42d71bfbeb1a5de8L" />
                <uo k="s:originTrace" v="n:4816349095291149869" />
              </node>
              <node concept="Xl_RD" id="kb" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.generator.structure.TemplateArgumentLinkPatternRefExpression" />
                <uo k="s:originTrace" v="n:4816349095291149869" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="k6" role="37wK5m">
            <ref role="3cqZAo" node="jZ" resolve="initContext" />
            <uo k="s:originTrace" v="n:4816349095291149869" />
          </node>
        </node>
        <node concept="3clFbF" id="k4" role="3cqZAp">
          <uo k="s:originTrace" v="n:4816349095291149869" />
          <node concept="1rXfSq" id="kc" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:4816349095291149869" />
            <node concept="2ShNRf" id="kd" role="37wK5m">
              <uo k="s:originTrace" v="n:4816349095291149869" />
              <node concept="1pGfFk" id="ke" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="kg" resolve="TemplateArgumentLinkPatternRefExpression_Constraints.RD1" />
                <uo k="s:originTrace" v="n:4816349095291149869" />
                <node concept="Xjq3P" id="kf" role="37wK5m">
                  <uo k="s:originTrace" v="n:4816349095291149869" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="jX" role="jymVt">
      <uo k="s:originTrace" v="n:4816349095291149869" />
    </node>
    <node concept="312cEu" id="jY" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:4816349095291149869" />
      <node concept="3clFbW" id="kg" role="jymVt">
        <uo k="s:originTrace" v="n:4816349095291149869" />
        <node concept="37vLTG" id="kj" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:4816349095291149869" />
          <node concept="3uibUv" id="km" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:4816349095291149869" />
          </node>
        </node>
        <node concept="3cqZAl" id="kk" role="3clF45">
          <uo k="s:originTrace" v="n:4816349095291149869" />
        </node>
        <node concept="3clFbS" id="kl" role="3clF47">
          <uo k="s:originTrace" v="n:4816349095291149869" />
          <node concept="XkiVB" id="kn" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:4816349095291149869" />
            <node concept="1BaE9c" id="ko" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="patternVar$CqNH" />
              <uo k="s:originTrace" v="n:4816349095291149869" />
              <node concept="2YIFZM" id="ks" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:4816349095291149869" />
                <node concept="11gdke" id="kt" role="37wK5m">
                  <property role="11gdj1" value="b401a68083254110L" />
                  <uo k="s:originTrace" v="n:4816349095291149869" />
                </node>
                <node concept="11gdke" id="ku" role="37wK5m">
                  <property role="11gdj1" value="8fd384331ff25befL" />
                  <uo k="s:originTrace" v="n:4816349095291149869" />
                </node>
                <node concept="11gdke" id="kv" role="37wK5m">
                  <property role="11gdj1" value="42d71bfbeb1a5de8L" />
                  <uo k="s:originTrace" v="n:4816349095291149869" />
                </node>
                <node concept="11gdke" id="kw" role="37wK5m">
                  <property role="11gdj1" value="42d71bfbeb1a5deaL" />
                  <uo k="s:originTrace" v="n:4816349095291149869" />
                </node>
                <node concept="Xl_RD" id="kx" role="37wK5m">
                  <property role="Xl_RC" value="patternVar" />
                  <uo k="s:originTrace" v="n:4816349095291149869" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="kp" role="37wK5m">
              <ref role="3cqZAo" node="kj" resolve="container" />
              <uo k="s:originTrace" v="n:4816349095291149869" />
            </node>
            <node concept="3clFbT" id="kq" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:4816349095291149869" />
            </node>
            <node concept="3clFbT" id="kr" role="37wK5m">
              <uo k="s:originTrace" v="n:4816349095291149869" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="kh" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:4816349095291149869" />
        <node concept="3Tm1VV" id="ky" role="1B3o_S">
          <uo k="s:originTrace" v="n:4816349095291149869" />
        </node>
        <node concept="3uibUv" id="kz" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:4816349095291149869" />
        </node>
        <node concept="2AHcQZ" id="k$" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:4816349095291149869" />
        </node>
        <node concept="3clFbS" id="k_" role="3clF47">
          <uo k="s:originTrace" v="n:4816349095291149869" />
          <node concept="3cpWs6" id="kB" role="3cqZAp">
            <uo k="s:originTrace" v="n:4816349095291149869" />
            <node concept="2ShNRf" id="kC" role="3cqZAk">
              <uo k="s:originTrace" v="n:6836281137582788619" />
              <node concept="YeOm9" id="kD" role="2ShVmc">
                <uo k="s:originTrace" v="n:6836281137582788619" />
                <node concept="1Y3b0j" id="kE" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:6836281137582788619" />
                  <node concept="3Tm1VV" id="kF" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6836281137582788619" />
                  </node>
                  <node concept="3clFb_" id="kG" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:6836281137582788619" />
                    <node concept="3Tm1VV" id="kI" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582788619" />
                    </node>
                    <node concept="3uibUv" id="kJ" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:6836281137582788619" />
                    </node>
                    <node concept="3clFbS" id="kK" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582788619" />
                      <node concept="3cpWs6" id="kM" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582788619" />
                        <node concept="2ShNRf" id="kN" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582788619" />
                          <node concept="1pGfFk" id="kO" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:6836281137582788619" />
                            <node concept="Xl_RD" id="kP" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c895902e2(jetbrains.mps.lang.generator.constraints)" />
                              <uo k="s:originTrace" v="n:6836281137582788619" />
                            </node>
                            <node concept="Xl_RD" id="kQ" role="37wK5m">
                              <property role="Xl_RC" value="6836281137582788619" />
                              <uo k="s:originTrace" v="n:6836281137582788619" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="kL" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582788619" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="kH" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:6836281137582788619" />
                    <node concept="3Tm1VV" id="kR" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582788619" />
                    </node>
                    <node concept="3uibUv" id="kS" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:6836281137582788619" />
                    </node>
                    <node concept="37vLTG" id="kT" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:6836281137582788619" />
                      <node concept="3uibUv" id="kW" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:6836281137582788619" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="kU" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582788619" />
                      <node concept="3cpWs8" id="kX" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582788621" />
                        <node concept="3cpWsn" id="l1" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:6836281137582788622" />
                          <node concept="2I9FWS" id="l2" role="1tU5fm">
                            <ref role="2I9WkF" to="tp3t:gzjrplq" resolve="LinkPatternVariableDeclaration" />
                            <uo k="s:originTrace" v="n:6836281137582788623" />
                          </node>
                          <node concept="2ShNRf" id="l3" role="33vP2m">
                            <uo k="s:originTrace" v="n:6836281137582788624" />
                            <node concept="2T8Vx0" id="l4" role="2ShVmc">
                              <uo k="s:originTrace" v="n:6836281137582788625" />
                              <node concept="2I9FWS" id="l5" role="2T96Bj">
                                <ref role="2I9WkF" to="tp3t:gzjrplq" resolve="LinkPatternVariableDeclaration" />
                                <uo k="s:originTrace" v="n:6836281137582788626" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="kY" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582788627" />
                        <node concept="3cpWsn" id="l6" role="3cpWs9">
                          <property role="TrG5h" value="rule" />
                          <uo k="s:originTrace" v="n:6836281137582788628" />
                          <node concept="3Tqbb2" id="l7" role="1tU5fm">
                            <ref role="ehGHo" to="tpf8:1$dcvTE4IIO" resolve="PatternReduction_MappingRule" />
                            <uo k="s:originTrace" v="n:6836281137582788629" />
                          </node>
                          <node concept="2OqwBi" id="l8" role="33vP2m">
                            <uo k="s:originTrace" v="n:6836281137582788630" />
                            <node concept="1DoJHT" id="l9" role="2Oq$k0">
                              <property role="1Dpdpm" value="getContextNode" />
                              <uo k="s:originTrace" v="n:6836281137582788659" />
                              <node concept="3uibUv" id="lb" role="1Ez5kq">
                                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                              </node>
                              <node concept="37vLTw" id="lc" role="1EMhIo">
                                <ref role="3cqZAo" node="kT" resolve="_context" />
                              </node>
                            </node>
                            <node concept="2Xjw5R" id="la" role="2OqNvi">
                              <uo k="s:originTrace" v="n:6836281137582788632" />
                              <node concept="1xMEDy" id="ld" role="1xVPHs">
                                <uo k="s:originTrace" v="n:6836281137582788633" />
                                <node concept="chp4Y" id="le" role="ri$Ld">
                                  <ref role="cht4Q" to="tpf8:1$dcvTE4IIO" resolve="PatternReduction_MappingRule" />
                                  <uo k="s:originTrace" v="n:6836281137582788634" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="kZ" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582788635" />
                        <node concept="1Wc70l" id="lf" role="3clFbw">
                          <uo k="s:originTrace" v="n:6836281137582788636" />
                          <node concept="2OqwBi" id="lh" role="3uHU7B">
                            <uo k="s:originTrace" v="n:6836281137582788637" />
                            <node concept="37vLTw" id="lj" role="2Oq$k0">
                              <ref role="3cqZAo" node="l6" resolve="rule" />
                              <uo k="s:originTrace" v="n:6836281137582788638" />
                            </node>
                            <node concept="3x8VRR" id="lk" role="2OqNvi">
                              <uo k="s:originTrace" v="n:6836281137582788639" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="li" role="3uHU7w">
                            <uo k="s:originTrace" v="n:6836281137582788640" />
                            <node concept="2OqwBi" id="ll" role="2Oq$k0">
                              <uo k="s:originTrace" v="n:6836281137582788641" />
                              <node concept="37vLTw" id="ln" role="2Oq$k0">
                                <ref role="3cqZAo" node="l6" resolve="rule" />
                                <uo k="s:originTrace" v="n:6836281137582788642" />
                              </node>
                              <node concept="3TrEf2" id="lo" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpf8:1$dcvTE4S$q" resolve="pattern" />
                                <uo k="s:originTrace" v="n:6836281137582788643" />
                              </node>
                            </node>
                            <node concept="3x8VRR" id="lm" role="2OqNvi">
                              <uo k="s:originTrace" v="n:6836281137582788644" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbS" id="lg" role="3clFbx">
                          <uo k="s:originTrace" v="n:6836281137582788645" />
                          <node concept="3clFbF" id="lp" role="3cqZAp">
                            <uo k="s:originTrace" v="n:6836281137582788646" />
                            <node concept="2OqwBi" id="lq" role="3clFbG">
                              <uo k="s:originTrace" v="n:6836281137582788647" />
                              <node concept="37vLTw" id="lr" role="2Oq$k0">
                                <ref role="3cqZAo" node="l1" resolve="result" />
                                <uo k="s:originTrace" v="n:6836281137582788648" />
                              </node>
                              <node concept="X8dFx" id="ls" role="2OqNvi">
                                <uo k="s:originTrace" v="n:6836281137582788649" />
                                <node concept="2OqwBi" id="lt" role="25WWJ7">
                                  <uo k="s:originTrace" v="n:6836281137582788650" />
                                  <node concept="2OqwBi" id="lu" role="2Oq$k0">
                                    <uo k="s:originTrace" v="n:6836281137582788651" />
                                    <node concept="37vLTw" id="lw" role="2Oq$k0">
                                      <ref role="3cqZAo" node="l6" resolve="rule" />
                                      <uo k="s:originTrace" v="n:6836281137582788652" />
                                    </node>
                                    <node concept="3TrEf2" id="lx" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tpf8:1$dcvTE4S$q" resolve="pattern" />
                                      <uo k="s:originTrace" v="n:6836281137582788653" />
                                    </node>
                                  </node>
                                  <node concept="2Rf3mk" id="lv" role="2OqNvi">
                                    <uo k="s:originTrace" v="n:6836281137582788654" />
                                    <node concept="1xMEDy" id="ly" role="1xVPHs">
                                      <uo k="s:originTrace" v="n:6836281137582788655" />
                                      <node concept="chp4Y" id="lz" role="ri$Ld">
                                        <ref role="cht4Q" to="tp3t:gzjrplq" resolve="LinkPatternVariableDeclaration" />
                                        <uo k="s:originTrace" v="n:6836281137582788656" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="l0" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582788657" />
                        <node concept="2YIFZM" id="l$" role="3clFbG">
                          <ref role="37wK5l" to="o8zo:3jEbQoczdCs" resolve="forResolvableElements" />
                          <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                          <uo k="s:originTrace" v="n:6836281137582788741" />
                          <node concept="37vLTw" id="l_" role="37wK5m">
                            <ref role="3cqZAo" node="l1" resolve="result" />
                            <uo k="s:originTrace" v="n:6836281137582788742" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="kV" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582788619" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="kA" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:4816349095291149869" />
        </node>
      </node>
      <node concept="3uibUv" id="ki" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:4816349095291149869" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="lA">
    <property role="3GE5qa" value="rule.argument" />
    <property role="TrG5h" value="TemplateArgumentParameterExpression_Constraints" />
    <uo k="s:originTrace" v="n:5005282049925940094" />
    <node concept="3Tm1VV" id="lB" role="1B3o_S">
      <uo k="s:originTrace" v="n:5005282049925940094" />
    </node>
    <node concept="3uibUv" id="lC" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:5005282049925940094" />
    </node>
    <node concept="3clFbW" id="lD" role="jymVt">
      <uo k="s:originTrace" v="n:5005282049925940094" />
      <node concept="37vLTG" id="lG" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:5005282049925940094" />
        <node concept="3uibUv" id="lJ" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:5005282049925940094" />
        </node>
      </node>
      <node concept="3cqZAl" id="lH" role="3clF45">
        <uo k="s:originTrace" v="n:5005282049925940094" />
      </node>
      <node concept="3clFbS" id="lI" role="3clF47">
        <uo k="s:originTrace" v="n:5005282049925940094" />
        <node concept="XkiVB" id="lK" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:5005282049925940094" />
          <node concept="1BaE9c" id="lM" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="TemplateArgumentParameterExpression$$z" />
            <uo k="s:originTrace" v="n:5005282049925940094" />
            <node concept="2YIFZM" id="lO" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:5005282049925940094" />
              <node concept="11gdke" id="lP" role="37wK5m">
                <property role="11gdj1" value="b401a68083254110L" />
                <uo k="s:originTrace" v="n:5005282049925940094" />
              </node>
              <node concept="11gdke" id="lQ" role="37wK5m">
                <property role="11gdj1" value="8fd384331ff25befL" />
                <uo k="s:originTrace" v="n:5005282049925940094" />
              </node>
              <node concept="11gdke" id="lR" role="37wK5m">
                <property role="11gdj1" value="457655815a794e79L" />
                <uo k="s:originTrace" v="n:5005282049925940094" />
              </node>
              <node concept="Xl_RD" id="lS" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.generator.structure.TemplateArgumentParameterExpression" />
                <uo k="s:originTrace" v="n:5005282049925940094" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="lN" role="37wK5m">
            <ref role="3cqZAo" node="lG" resolve="initContext" />
            <uo k="s:originTrace" v="n:5005282049925940094" />
          </node>
        </node>
        <node concept="3clFbF" id="lL" role="3cqZAp">
          <uo k="s:originTrace" v="n:5005282049925940094" />
          <node concept="1rXfSq" id="lT" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:5005282049925940094" />
            <node concept="2ShNRf" id="lU" role="37wK5m">
              <uo k="s:originTrace" v="n:5005282049925940094" />
              <node concept="1pGfFk" id="lV" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="lX" resolve="TemplateArgumentParameterExpression_Constraints.RD1" />
                <uo k="s:originTrace" v="n:5005282049925940094" />
                <node concept="Xjq3P" id="lW" role="37wK5m">
                  <uo k="s:originTrace" v="n:5005282049925940094" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="lE" role="jymVt">
      <uo k="s:originTrace" v="n:5005282049925940094" />
    </node>
    <node concept="312cEu" id="lF" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:5005282049925940094" />
      <node concept="3clFbW" id="lX" role="jymVt">
        <uo k="s:originTrace" v="n:5005282049925940094" />
        <node concept="37vLTG" id="m0" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:5005282049925940094" />
          <node concept="3uibUv" id="m3" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:5005282049925940094" />
          </node>
        </node>
        <node concept="3cqZAl" id="m1" role="3clF45">
          <uo k="s:originTrace" v="n:5005282049925940094" />
        </node>
        <node concept="3clFbS" id="m2" role="3clF47">
          <uo k="s:originTrace" v="n:5005282049925940094" />
          <node concept="XkiVB" id="m4" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:5005282049925940094" />
            <node concept="1BaE9c" id="m5" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="parameter$hT7c" />
              <uo k="s:originTrace" v="n:5005282049925940094" />
              <node concept="2YIFZM" id="m9" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:5005282049925940094" />
                <node concept="11gdke" id="ma" role="37wK5m">
                  <property role="11gdj1" value="b401a68083254110L" />
                  <uo k="s:originTrace" v="n:5005282049925940094" />
                </node>
                <node concept="11gdke" id="mb" role="37wK5m">
                  <property role="11gdj1" value="8fd384331ff25befL" />
                  <uo k="s:originTrace" v="n:5005282049925940094" />
                </node>
                <node concept="11gdke" id="mc" role="37wK5m">
                  <property role="11gdj1" value="457655815a794e79L" />
                  <uo k="s:originTrace" v="n:5005282049925940094" />
                </node>
                <node concept="11gdke" id="md" role="37wK5m">
                  <property role="11gdj1" value="457655815a794e7aL" />
                  <uo k="s:originTrace" v="n:5005282049925940094" />
                </node>
                <node concept="Xl_RD" id="me" role="37wK5m">
                  <property role="Xl_RC" value="parameter" />
                  <uo k="s:originTrace" v="n:5005282049925940094" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="m6" role="37wK5m">
              <ref role="3cqZAo" node="m0" resolve="container" />
              <uo k="s:originTrace" v="n:5005282049925940094" />
            </node>
            <node concept="3clFbT" id="m7" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:5005282049925940094" />
            </node>
            <node concept="3clFbT" id="m8" role="37wK5m">
              <uo k="s:originTrace" v="n:5005282049925940094" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="lY" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:5005282049925940094" />
        <node concept="3Tm1VV" id="mf" role="1B3o_S">
          <uo k="s:originTrace" v="n:5005282049925940094" />
        </node>
        <node concept="3uibUv" id="mg" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:5005282049925940094" />
        </node>
        <node concept="2AHcQZ" id="mh" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:5005282049925940094" />
        </node>
        <node concept="3clFbS" id="mi" role="3clF47">
          <uo k="s:originTrace" v="n:5005282049925940094" />
          <node concept="3cpWs6" id="mk" role="3cqZAp">
            <uo k="s:originTrace" v="n:5005282049925940094" />
            <node concept="2ShNRf" id="ml" role="3cqZAk">
              <uo k="s:originTrace" v="n:6836281137582788791" />
              <node concept="YeOm9" id="mm" role="2ShVmc">
                <uo k="s:originTrace" v="n:6836281137582788791" />
                <node concept="1Y3b0j" id="mn" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:6836281137582788791" />
                  <node concept="3Tm1VV" id="mo" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6836281137582788791" />
                  </node>
                  <node concept="3clFb_" id="mp" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:6836281137582788791" />
                    <node concept="3Tm1VV" id="mr" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582788791" />
                    </node>
                    <node concept="3uibUv" id="ms" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:6836281137582788791" />
                    </node>
                    <node concept="3clFbS" id="mt" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582788791" />
                      <node concept="3cpWs6" id="mv" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582788791" />
                        <node concept="2ShNRf" id="mw" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582788791" />
                          <node concept="1pGfFk" id="mx" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:6836281137582788791" />
                            <node concept="Xl_RD" id="my" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c895902e2(jetbrains.mps.lang.generator.constraints)" />
                              <uo k="s:originTrace" v="n:6836281137582788791" />
                            </node>
                            <node concept="Xl_RD" id="mz" role="37wK5m">
                              <property role="Xl_RC" value="6836281137582788791" />
                              <uo k="s:originTrace" v="n:6836281137582788791" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="mu" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582788791" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="mq" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:6836281137582788791" />
                    <node concept="3Tm1VV" id="m$" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582788791" />
                    </node>
                    <node concept="3uibUv" id="m_" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:6836281137582788791" />
                    </node>
                    <node concept="37vLTG" id="mA" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:6836281137582788791" />
                      <node concept="3uibUv" id="mD" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:6836281137582788791" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="mB" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582788791" />
                      <node concept="3clFbJ" id="mE" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582788793" />
                        <node concept="3clFbS" id="mG" role="3clFbx">
                          <uo k="s:originTrace" v="n:6836281137582788794" />
                          <node concept="3cpWs6" id="mI" role="3cqZAp">
                            <uo k="s:originTrace" v="n:6836281137582788795" />
                            <node concept="2YIFZM" id="mJ" role="3cqZAk">
                              <ref role="37wK5l" to="o8zo:3jEbQoczdCs" resolve="forResolvableElements" />
                              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                              <uo k="s:originTrace" v="n:6836281137582788918" />
                              <node concept="2OqwBi" id="mK" role="37wK5m">
                                <uo k="s:originTrace" v="n:6836281137582788919" />
                                <node concept="1PxgMI" id="mL" role="2Oq$k0">
                                  <uo k="s:originTrace" v="n:6836281137582788920" />
                                  <node concept="2OqwBi" id="mN" role="1m5AlR">
                                    <uo k="s:originTrace" v="n:6836281137582788921" />
                                    <node concept="1DoJHT" id="mP" role="2Oq$k0">
                                      <property role="1Dpdpm" value="getContextNode" />
                                      <uo k="s:originTrace" v="n:6836281137582788922" />
                                      <node concept="3uibUv" id="mR" role="1Ez5kq">
                                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                      </node>
                                      <node concept="37vLTw" id="mS" role="1EMhIo">
                                        <ref role="3cqZAo" node="mA" resolve="_context" />
                                      </node>
                                    </node>
                                    <node concept="2Rxl7S" id="mQ" role="2OqNvi">
                                      <uo k="s:originTrace" v="n:6836281137582788923" />
                                    </node>
                                  </node>
                                  <node concept="chp4Y" id="mO" role="3oSUPX">
                                    <ref role="cht4Q" to="tpf8:QzR6ThdYAL" resolve="IParameterizedTemplate" />
                                    <uo k="s:originTrace" v="n:6836281137582788924" />
                                  </node>
                                </node>
                                <node concept="3Tsc0h" id="mM" role="2OqNvi">
                                  <ref role="3TtcxE" to="tpf8:QzR6ThdYDm" resolve="parameter" />
                                  <uo k="s:originTrace" v="n:6836281137582788925" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="mH" role="3clFbw">
                          <uo k="s:originTrace" v="n:6836281137582788803" />
                          <node concept="2OqwBi" id="mT" role="2Oq$k0">
                            <uo k="s:originTrace" v="n:6836281137582788804" />
                            <node concept="1DoJHT" id="mV" role="2Oq$k0">
                              <property role="1Dpdpm" value="getContextNode" />
                              <uo k="s:originTrace" v="n:6836281137582788814" />
                              <node concept="3uibUv" id="mX" role="1Ez5kq">
                                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                              </node>
                              <node concept="37vLTw" id="mY" role="1EMhIo">
                                <ref role="3cqZAo" node="mA" resolve="_context" />
                              </node>
                            </node>
                            <node concept="2Rxl7S" id="mW" role="2OqNvi">
                              <uo k="s:originTrace" v="n:6836281137582788806" />
                            </node>
                          </node>
                          <node concept="1mIQ4w" id="mU" role="2OqNvi">
                            <uo k="s:originTrace" v="n:6836281137582788807" />
                            <node concept="chp4Y" id="mZ" role="cj9EA">
                              <ref role="cht4Q" to="tpf8:QzR6ThdYAL" resolve="IParameterizedTemplate" />
                              <uo k="s:originTrace" v="n:6836281137582788808" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="mF" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582788809" />
                        <node concept="2YIFZM" id="n0" role="3clFbG">
                          <ref role="37wK5l" to="o8zo:3jEbQoczdCs" resolve="forResolvableElements" />
                          <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                          <uo k="s:originTrace" v="n:6836281137582788932" />
                          <node concept="2ShNRf" id="n1" role="37wK5m">
                            <uo k="s:originTrace" v="n:6836281137582788933" />
                            <node concept="2T8Vx0" id="n2" role="2ShVmc">
                              <uo k="s:originTrace" v="n:6836281137582788934" />
                              <node concept="2I9FWS" id="n3" role="2T96Bj">
                                <ref role="2I9WkF" to="tpf8:1$dcvTE2mbA" resolve="TemplateParameterDeclaration" />
                                <uo k="s:originTrace" v="n:6836281137582788935" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="mC" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582788791" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="mj" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:5005282049925940094" />
        </node>
      </node>
      <node concept="3uibUv" id="lZ" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:5005282049925940094" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="n4">
    <property role="3GE5qa" value="rule.argument" />
    <property role="TrG5h" value="TemplateArgumentPatternVarRefExpression_Constraints" />
    <uo k="s:originTrace" v="n:4665309944889434722" />
    <node concept="3Tm1VV" id="n5" role="1B3o_S">
      <uo k="s:originTrace" v="n:4665309944889434722" />
    </node>
    <node concept="3uibUv" id="n6" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:4665309944889434722" />
    </node>
    <node concept="3clFbW" id="n7" role="jymVt">
      <uo k="s:originTrace" v="n:4665309944889434722" />
      <node concept="37vLTG" id="nb" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:4665309944889434722" />
        <node concept="3uibUv" id="ne" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:4665309944889434722" />
        </node>
      </node>
      <node concept="3cqZAl" id="nc" role="3clF45">
        <uo k="s:originTrace" v="n:4665309944889434722" />
      </node>
      <node concept="3clFbS" id="nd" role="3clF47">
        <uo k="s:originTrace" v="n:4665309944889434722" />
        <node concept="XkiVB" id="nf" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:4665309944889434722" />
          <node concept="1BaE9c" id="ni" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="TemplateArgumentPatternVarRefExpression$2q" />
            <uo k="s:originTrace" v="n:4665309944889434722" />
            <node concept="2YIFZM" id="nk" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:4665309944889434722" />
              <node concept="11gdke" id="nl" role="37wK5m">
                <property role="11gdj1" value="b401a68083254110L" />
                <uo k="s:originTrace" v="n:4665309944889434722" />
              </node>
              <node concept="11gdke" id="nm" role="37wK5m">
                <property role="11gdj1" value="8fd384331ff25befL" />
                <uo k="s:originTrace" v="n:4665309944889434722" />
              </node>
              <node concept="11gdke" id="nn" role="37wK5m">
                <property role="11gdj1" value="40be82ad503b3c88L" />
                <uo k="s:originTrace" v="n:4665309944889434722" />
              </node>
              <node concept="Xl_RD" id="no" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.generator.structure.TemplateArgumentPatternVarRefExpression" />
                <uo k="s:originTrace" v="n:4665309944889434722" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="nj" role="37wK5m">
            <ref role="3cqZAo" node="nb" resolve="initContext" />
            <uo k="s:originTrace" v="n:4665309944889434722" />
          </node>
        </node>
        <node concept="3clFbF" id="ng" role="3cqZAp">
          <uo k="s:originTrace" v="n:4665309944889434722" />
          <node concept="1rXfSq" id="np" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:4665309944889434722" />
            <node concept="2ShNRf" id="nq" role="37wK5m">
              <uo k="s:originTrace" v="n:4665309944889434722" />
              <node concept="1pGfFk" id="nr" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="ok" resolve="TemplateArgumentPatternVarRefExpression_Constraints.RD1" />
                <uo k="s:originTrace" v="n:4665309944889434722" />
                <node concept="Xjq3P" id="ns" role="37wK5m">
                  <uo k="s:originTrace" v="n:4665309944889434722" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="nh" role="3cqZAp">
          <uo k="s:originTrace" v="n:4665309944889434722" />
          <node concept="1rXfSq" id="nt" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.setCanBeChildConstraint(jetbrains.mps.smodel.runtime.ConstraintFunction)" resolve="setCanBeChildConstraint" />
            <uo k="s:originTrace" v="n:4665309944889434722" />
            <node concept="2ShNRf" id="nu" role="37wK5m">
              <uo k="s:originTrace" v="n:4665309944889434722" />
              <node concept="YeOm9" id="nv" role="2ShVmc">
                <uo k="s:originTrace" v="n:4665309944889434722" />
                <node concept="1Y3b0j" id="nw" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <uo k="s:originTrace" v="n:4665309944889434722" />
                  <node concept="3Tm1VV" id="nx" role="1B3o_S">
                    <uo k="s:originTrace" v="n:4665309944889434722" />
                  </node>
                  <node concept="3clFb_" id="ny" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="invoke" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <uo k="s:originTrace" v="n:4665309944889434722" />
                    <node concept="3Tm1VV" id="n_" role="1B3o_S">
                      <uo k="s:originTrace" v="n:4665309944889434722" />
                    </node>
                    <node concept="2AHcQZ" id="nA" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:4665309944889434722" />
                    </node>
                    <node concept="3uibUv" id="nB" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      <uo k="s:originTrace" v="n:4665309944889434722" />
                    </node>
                    <node concept="37vLTG" id="nC" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <uo k="s:originTrace" v="n:4665309944889434722" />
                      <node concept="3uibUv" id="nF" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                        <uo k="s:originTrace" v="n:4665309944889434722" />
                      </node>
                      <node concept="2AHcQZ" id="nG" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        <uo k="s:originTrace" v="n:4665309944889434722" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="nD" role="3clF46">
                      <property role="TrG5h" value="checkingNodeContext" />
                      <uo k="s:originTrace" v="n:4665309944889434722" />
                      <node concept="3uibUv" id="nH" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                        <uo k="s:originTrace" v="n:4665309944889434722" />
                      </node>
                      <node concept="2AHcQZ" id="nI" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                        <uo k="s:originTrace" v="n:4665309944889434722" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="nE" role="3clF47">
                      <uo k="s:originTrace" v="n:4665309944889434722" />
                      <node concept="3cpWs8" id="nJ" role="3cqZAp">
                        <uo k="s:originTrace" v="n:4665309944889434722" />
                        <node concept="3cpWsn" id="nO" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:4665309944889434722" />
                          <node concept="10P_77" id="nP" role="1tU5fm">
                            <uo k="s:originTrace" v="n:4665309944889434722" />
                          </node>
                          <node concept="1rXfSq" id="nQ" role="33vP2m">
                            <ref role="37wK5l" node="na" resolve="staticCanBeAChild" />
                            <uo k="s:originTrace" v="n:4665309944889434722" />
                            <node concept="2OqwBi" id="nR" role="37wK5m">
                              <uo k="s:originTrace" v="n:4665309944889434722" />
                              <node concept="37vLTw" id="nV" role="2Oq$k0">
                                <ref role="3cqZAo" node="nC" resolve="context" />
                                <uo k="s:originTrace" v="n:4665309944889434722" />
                              </node>
                              <node concept="liA8E" id="nW" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getNode()" resolve="getNode" />
                                <uo k="s:originTrace" v="n:4665309944889434722" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="nS" role="37wK5m">
                              <uo k="s:originTrace" v="n:4665309944889434722" />
                              <node concept="37vLTw" id="nX" role="2Oq$k0">
                                <ref role="3cqZAo" node="nC" resolve="context" />
                                <uo k="s:originTrace" v="n:4665309944889434722" />
                              </node>
                              <node concept="liA8E" id="nY" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getParentNode()" resolve="getParentNode" />
                                <uo k="s:originTrace" v="n:4665309944889434722" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="nT" role="37wK5m">
                              <uo k="s:originTrace" v="n:4665309944889434722" />
                              <node concept="37vLTw" id="nZ" role="2Oq$k0">
                                <ref role="3cqZAo" node="nC" resolve="context" />
                                <uo k="s:originTrace" v="n:4665309944889434722" />
                              </node>
                              <node concept="liA8E" id="o0" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getConcept()" resolve="getConcept" />
                                <uo k="s:originTrace" v="n:4665309944889434722" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="nU" role="37wK5m">
                              <uo k="s:originTrace" v="n:4665309944889434722" />
                              <node concept="37vLTw" id="o1" role="2Oq$k0">
                                <ref role="3cqZAo" node="nC" resolve="context" />
                                <uo k="s:originTrace" v="n:4665309944889434722" />
                              </node>
                              <node concept="liA8E" id="o2" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getLink()" resolve="getLink" />
                                <uo k="s:originTrace" v="n:4665309944889434722" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="nK" role="3cqZAp">
                        <uo k="s:originTrace" v="n:4665309944889434722" />
                      </node>
                      <node concept="3clFbJ" id="nL" role="3cqZAp">
                        <uo k="s:originTrace" v="n:4665309944889434722" />
                        <node concept="3clFbS" id="o3" role="3clFbx">
                          <uo k="s:originTrace" v="n:4665309944889434722" />
                          <node concept="3clFbF" id="o5" role="3cqZAp">
                            <uo k="s:originTrace" v="n:4665309944889434722" />
                            <node concept="2OqwBi" id="o6" role="3clFbG">
                              <uo k="s:originTrace" v="n:4665309944889434722" />
                              <node concept="37vLTw" id="o7" role="2Oq$k0">
                                <ref role="3cqZAo" node="nD" resolve="checkingNodeContext" />
                                <uo k="s:originTrace" v="n:4665309944889434722" />
                              </node>
                              <node concept="liA8E" id="o8" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                                <uo k="s:originTrace" v="n:4665309944889434722" />
                                <node concept="1dyn4i" id="o9" role="37wK5m">
                                  <property role="1dyqJU" value="canBeChildBreakingPoint" />
                                  <uo k="s:originTrace" v="n:4665309944889434722" />
                                  <node concept="2ShNRf" id="oa" role="1dyrYi">
                                    <uo k="s:originTrace" v="n:4665309944889434722" />
                                    <node concept="1pGfFk" id="ob" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:4665309944889434722" />
                                      <node concept="Xl_RD" id="oc" role="37wK5m">
                                        <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c895902e2(jetbrains.mps.lang.generator.constraints)" />
                                        <uo k="s:originTrace" v="n:4665309944889434722" />
                                      </node>
                                      <node concept="Xl_RD" id="od" role="37wK5m">
                                        <property role="Xl_RC" value="1227128029536561862" />
                                        <uo k="s:originTrace" v="n:4665309944889434722" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Wc70l" id="o4" role="3clFbw">
                          <uo k="s:originTrace" v="n:4665309944889434722" />
                          <node concept="3y3z36" id="oe" role="3uHU7w">
                            <uo k="s:originTrace" v="n:4665309944889434722" />
                            <node concept="10Nm6u" id="og" role="3uHU7w">
                              <uo k="s:originTrace" v="n:4665309944889434722" />
                            </node>
                            <node concept="37vLTw" id="oh" role="3uHU7B">
                              <ref role="3cqZAo" node="nD" resolve="checkingNodeContext" />
                              <uo k="s:originTrace" v="n:4665309944889434722" />
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="of" role="3uHU7B">
                            <uo k="s:originTrace" v="n:4665309944889434722" />
                            <node concept="37vLTw" id="oi" role="3fr31v">
                              <ref role="3cqZAo" node="nO" resolve="result" />
                              <uo k="s:originTrace" v="n:4665309944889434722" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="nM" role="3cqZAp">
                        <uo k="s:originTrace" v="n:4665309944889434722" />
                      </node>
                      <node concept="3clFbF" id="nN" role="3cqZAp">
                        <uo k="s:originTrace" v="n:4665309944889434722" />
                        <node concept="37vLTw" id="oj" role="3clFbG">
                          <ref role="3cqZAo" node="nO" resolve="result" />
                          <uo k="s:originTrace" v="n:4665309944889434722" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="nz" role="2Ghqu4">
                    <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                    <uo k="s:originTrace" v="n:4665309944889434722" />
                  </node>
                  <node concept="3uibUv" id="n$" role="2Ghqu4">
                    <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    <uo k="s:originTrace" v="n:4665309944889434722" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="n8" role="jymVt">
      <uo k="s:originTrace" v="n:4665309944889434722" />
    </node>
    <node concept="312cEu" id="n9" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:4665309944889434722" />
      <node concept="3clFbW" id="ok" role="jymVt">
        <uo k="s:originTrace" v="n:4665309944889434722" />
        <node concept="37vLTG" id="on" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:4665309944889434722" />
          <node concept="3uibUv" id="oq" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:4665309944889434722" />
          </node>
        </node>
        <node concept="3cqZAl" id="oo" role="3clF45">
          <uo k="s:originTrace" v="n:4665309944889434722" />
        </node>
        <node concept="3clFbS" id="op" role="3clF47">
          <uo k="s:originTrace" v="n:4665309944889434722" />
          <node concept="XkiVB" id="or" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:4665309944889434722" />
            <node concept="1BaE9c" id="os" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="patternVarDecl$HVhm" />
              <uo k="s:originTrace" v="n:4665309944889434722" />
              <node concept="2YIFZM" id="ow" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:4665309944889434722" />
                <node concept="11gdke" id="ox" role="37wK5m">
                  <property role="11gdj1" value="b401a68083254110L" />
                  <uo k="s:originTrace" v="n:4665309944889434722" />
                </node>
                <node concept="11gdke" id="oy" role="37wK5m">
                  <property role="11gdj1" value="8fd384331ff25befL" />
                  <uo k="s:originTrace" v="n:4665309944889434722" />
                </node>
                <node concept="11gdke" id="oz" role="37wK5m">
                  <property role="11gdj1" value="40be82ad503b3c88L" />
                  <uo k="s:originTrace" v="n:4665309944889434722" />
                </node>
                <node concept="11gdke" id="o$" role="37wK5m">
                  <property role="11gdj1" value="40be82ad503b3ec4L" />
                  <uo k="s:originTrace" v="n:4665309944889434722" />
                </node>
                <node concept="Xl_RD" id="o_" role="37wK5m">
                  <property role="Xl_RC" value="patternVarDecl" />
                  <uo k="s:originTrace" v="n:4665309944889434722" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="ot" role="37wK5m">
              <ref role="3cqZAo" node="on" resolve="container" />
              <uo k="s:originTrace" v="n:4665309944889434722" />
            </node>
            <node concept="3clFbT" id="ou" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:4665309944889434722" />
            </node>
            <node concept="3clFbT" id="ov" role="37wK5m">
              <uo k="s:originTrace" v="n:4665309944889434722" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="ol" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:4665309944889434722" />
        <node concept="3Tm1VV" id="oA" role="1B3o_S">
          <uo k="s:originTrace" v="n:4665309944889434722" />
        </node>
        <node concept="3uibUv" id="oB" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:4665309944889434722" />
        </node>
        <node concept="2AHcQZ" id="oC" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:4665309944889434722" />
        </node>
        <node concept="3clFbS" id="oD" role="3clF47">
          <uo k="s:originTrace" v="n:4665309944889434722" />
          <node concept="3cpWs6" id="oF" role="3cqZAp">
            <uo k="s:originTrace" v="n:4665309944889434722" />
            <node concept="2ShNRf" id="oG" role="3cqZAk">
              <uo k="s:originTrace" v="n:6836281137582788207" />
              <node concept="YeOm9" id="oH" role="2ShVmc">
                <uo k="s:originTrace" v="n:6836281137582788207" />
                <node concept="1Y3b0j" id="oI" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:6836281137582788207" />
                  <node concept="3Tm1VV" id="oJ" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6836281137582788207" />
                  </node>
                  <node concept="3clFb_" id="oK" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:6836281137582788207" />
                    <node concept="3Tm1VV" id="oM" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582788207" />
                    </node>
                    <node concept="3uibUv" id="oN" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:6836281137582788207" />
                    </node>
                    <node concept="3clFbS" id="oO" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582788207" />
                      <node concept="3cpWs6" id="oQ" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582788207" />
                        <node concept="2ShNRf" id="oR" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582788207" />
                          <node concept="1pGfFk" id="oS" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:6836281137582788207" />
                            <node concept="Xl_RD" id="oT" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c895902e2(jetbrains.mps.lang.generator.constraints)" />
                              <uo k="s:originTrace" v="n:6836281137582788207" />
                            </node>
                            <node concept="Xl_RD" id="oU" role="37wK5m">
                              <property role="Xl_RC" value="6836281137582788207" />
                              <uo k="s:originTrace" v="n:6836281137582788207" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="oP" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582788207" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="oL" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:6836281137582788207" />
                    <node concept="3Tm1VV" id="oV" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582788207" />
                    </node>
                    <node concept="3uibUv" id="oW" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:6836281137582788207" />
                    </node>
                    <node concept="37vLTG" id="oX" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:6836281137582788207" />
                      <node concept="3uibUv" id="p0" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:6836281137582788207" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="oY" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582788207" />
                      <node concept="3cpWs8" id="p1" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582788209" />
                        <node concept="3cpWsn" id="p5" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:6836281137582788210" />
                          <node concept="2I9FWS" id="p6" role="1tU5fm">
                            <ref role="2I9WkF" to="tp3t:gyDMOuj" resolve="PatternVariableDeclaration" />
                            <uo k="s:originTrace" v="n:6836281137582788211" />
                          </node>
                          <node concept="2ShNRf" id="p7" role="33vP2m">
                            <uo k="s:originTrace" v="n:6836281137582788212" />
                            <node concept="2T8Vx0" id="p8" role="2ShVmc">
                              <uo k="s:originTrace" v="n:6836281137582788213" />
                              <node concept="2I9FWS" id="p9" role="2T96Bj">
                                <ref role="2I9WkF" to="tp3t:gyDMOuj" resolve="PatternVariableDeclaration" />
                                <uo k="s:originTrace" v="n:6836281137582788214" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="p2" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582788215" />
                        <node concept="3cpWsn" id="pa" role="3cpWs9">
                          <property role="TrG5h" value="rule" />
                          <uo k="s:originTrace" v="n:6836281137582788216" />
                          <node concept="3Tqbb2" id="pb" role="1tU5fm">
                            <ref role="ehGHo" to="tpf8:1$dcvTE4IIO" resolve="PatternReduction_MappingRule" />
                            <uo k="s:originTrace" v="n:6836281137582788217" />
                          </node>
                          <node concept="2OqwBi" id="pc" role="33vP2m">
                            <uo k="s:originTrace" v="n:6836281137582788218" />
                            <node concept="1DoJHT" id="pd" role="2Oq$k0">
                              <property role="1Dpdpm" value="getContextNode" />
                              <uo k="s:originTrace" v="n:6836281137582788247" />
                              <node concept="3uibUv" id="pf" role="1Ez5kq">
                                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                              </node>
                              <node concept="37vLTw" id="pg" role="1EMhIo">
                                <ref role="3cqZAo" node="oX" resolve="_context" />
                              </node>
                            </node>
                            <node concept="2Xjw5R" id="pe" role="2OqNvi">
                              <uo k="s:originTrace" v="n:6836281137582788220" />
                              <node concept="1xMEDy" id="ph" role="1xVPHs">
                                <uo k="s:originTrace" v="n:6836281137582788221" />
                                <node concept="chp4Y" id="pi" role="ri$Ld">
                                  <ref role="cht4Q" to="tpf8:1$dcvTE4IIO" resolve="PatternReduction_MappingRule" />
                                  <uo k="s:originTrace" v="n:6836281137582788222" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="p3" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582788223" />
                        <node concept="1Wc70l" id="pj" role="3clFbw">
                          <uo k="s:originTrace" v="n:6836281137582788224" />
                          <node concept="2OqwBi" id="pl" role="3uHU7B">
                            <uo k="s:originTrace" v="n:6836281137582788225" />
                            <node concept="37vLTw" id="pn" role="2Oq$k0">
                              <ref role="3cqZAo" node="pa" resolve="rule" />
                              <uo k="s:originTrace" v="n:6836281137582788226" />
                            </node>
                            <node concept="3x8VRR" id="po" role="2OqNvi">
                              <uo k="s:originTrace" v="n:6836281137582788227" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="pm" role="3uHU7w">
                            <uo k="s:originTrace" v="n:6836281137582788228" />
                            <node concept="2OqwBi" id="pp" role="2Oq$k0">
                              <uo k="s:originTrace" v="n:6836281137582788229" />
                              <node concept="37vLTw" id="pr" role="2Oq$k0">
                                <ref role="3cqZAo" node="pa" resolve="rule" />
                                <uo k="s:originTrace" v="n:6836281137582788230" />
                              </node>
                              <node concept="3TrEf2" id="ps" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpf8:1$dcvTE4S$q" resolve="pattern" />
                                <uo k="s:originTrace" v="n:6836281137582788231" />
                              </node>
                            </node>
                            <node concept="3x8VRR" id="pq" role="2OqNvi">
                              <uo k="s:originTrace" v="n:6836281137582788232" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbS" id="pk" role="3clFbx">
                          <uo k="s:originTrace" v="n:6836281137582788233" />
                          <node concept="3clFbF" id="pt" role="3cqZAp">
                            <uo k="s:originTrace" v="n:6836281137582788234" />
                            <node concept="2OqwBi" id="pu" role="3clFbG">
                              <uo k="s:originTrace" v="n:6836281137582788235" />
                              <node concept="37vLTw" id="pv" role="2Oq$k0">
                                <ref role="3cqZAo" node="p5" resolve="result" />
                                <uo k="s:originTrace" v="n:6836281137582788236" />
                              </node>
                              <node concept="X8dFx" id="pw" role="2OqNvi">
                                <uo k="s:originTrace" v="n:6836281137582788237" />
                                <node concept="2OqwBi" id="px" role="25WWJ7">
                                  <uo k="s:originTrace" v="n:6836281137582788238" />
                                  <node concept="2OqwBi" id="py" role="2Oq$k0">
                                    <uo k="s:originTrace" v="n:6836281137582788239" />
                                    <node concept="37vLTw" id="p$" role="2Oq$k0">
                                      <ref role="3cqZAo" node="pa" resolve="rule" />
                                      <uo k="s:originTrace" v="n:6836281137582788240" />
                                    </node>
                                    <node concept="3TrEf2" id="p_" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tpf8:1$dcvTE4S$q" resolve="pattern" />
                                      <uo k="s:originTrace" v="n:6836281137582788241" />
                                    </node>
                                  </node>
                                  <node concept="2Rf3mk" id="pz" role="2OqNvi">
                                    <uo k="s:originTrace" v="n:6836281137582788242" />
                                    <node concept="1xMEDy" id="pA" role="1xVPHs">
                                      <uo k="s:originTrace" v="n:6836281137582788243" />
                                      <node concept="chp4Y" id="pB" role="ri$Ld">
                                        <ref role="cht4Q" to="tp3t:gyDMOuj" resolve="PatternVariableDeclaration" />
                                        <uo k="s:originTrace" v="n:6836281137582788244" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="p4" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582788245" />
                        <node concept="2YIFZM" id="pC" role="3clFbG">
                          <ref role="37wK5l" to="o8zo:3jEbQoczdCs" resolve="forResolvableElements" />
                          <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                          <uo k="s:originTrace" v="n:6836281137582788329" />
                          <node concept="37vLTw" id="pD" role="37wK5m">
                            <ref role="3cqZAo" node="p5" resolve="result" />
                            <uo k="s:originTrace" v="n:6836281137582788330" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="oZ" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582788207" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="oE" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:4665309944889434722" />
        </node>
      </node>
      <node concept="3uibUv" id="om" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:4665309944889434722" />
      </node>
    </node>
    <node concept="2YIFZL" id="na" role="jymVt">
      <property role="TrG5h" value="staticCanBeAChild" />
      <uo k="s:originTrace" v="n:4665309944889434722" />
      <node concept="10P_77" id="pE" role="3clF45">
        <uo k="s:originTrace" v="n:4665309944889434722" />
      </node>
      <node concept="3Tm6S6" id="pF" role="1B3o_S">
        <uo k="s:originTrace" v="n:4665309944889434722" />
      </node>
      <node concept="3clFbS" id="pG" role="3clF47">
        <uo k="s:originTrace" v="n:1227128029536561863" />
        <node concept="3clFbF" id="pL" role="3cqZAp">
          <uo k="s:originTrace" v="n:1227128029536561864" />
          <node concept="2OqwBi" id="pM" role="3clFbG">
            <uo k="s:originTrace" v="n:1227128029536561865" />
            <node concept="37vLTw" id="pN" role="2Oq$k0">
              <ref role="3cqZAo" node="pI" resolve="parentNode" />
              <uo k="s:originTrace" v="n:1227128029536561866" />
            </node>
            <node concept="1mIQ4w" id="pO" role="2OqNvi">
              <uo k="s:originTrace" v="n:1227128029536561867" />
              <node concept="chp4Y" id="pP" role="cj9EA">
                <ref role="cht4Q" to="tpf8:1vDgt48Nz4w" resolve="ITemplateCall" />
                <uo k="s:originTrace" v="n:1227128029536561868" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="pH" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:4665309944889434722" />
        <node concept="3uibUv" id="pQ" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:4665309944889434722" />
        </node>
      </node>
      <node concept="37vLTG" id="pI" role="3clF46">
        <property role="TrG5h" value="parentNode" />
        <uo k="s:originTrace" v="n:4665309944889434722" />
        <node concept="3uibUv" id="pR" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:4665309944889434722" />
        </node>
      </node>
      <node concept="37vLTG" id="pJ" role="3clF46">
        <property role="TrG5h" value="childConcept" />
        <uo k="s:originTrace" v="n:4665309944889434722" />
        <node concept="3uibUv" id="pS" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
          <uo k="s:originTrace" v="n:4665309944889434722" />
        </node>
      </node>
      <node concept="37vLTG" id="pK" role="3clF46">
        <property role="TrG5h" value="link" />
        <uo k="s:originTrace" v="n:4665309944889434722" />
        <node concept="3uibUv" id="pT" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
          <uo k="s:originTrace" v="n:4665309944889434722" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="pU">
    <property role="3GE5qa" value="rule.argument" />
    <property role="TrG5h" value="TemplateArgumentPropertyPatternRefExpression_Constraints" />
    <uo k="s:originTrace" v="n:4816349095291149808" />
    <node concept="3Tm1VV" id="pV" role="1B3o_S">
      <uo k="s:originTrace" v="n:4816349095291149808" />
    </node>
    <node concept="3uibUv" id="pW" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:4816349095291149808" />
    </node>
    <node concept="3clFbW" id="pX" role="jymVt">
      <uo k="s:originTrace" v="n:4816349095291149808" />
      <node concept="37vLTG" id="q0" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:4816349095291149808" />
        <node concept="3uibUv" id="q3" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:4816349095291149808" />
        </node>
      </node>
      <node concept="3cqZAl" id="q1" role="3clF45">
        <uo k="s:originTrace" v="n:4816349095291149808" />
      </node>
      <node concept="3clFbS" id="q2" role="3clF47">
        <uo k="s:originTrace" v="n:4816349095291149808" />
        <node concept="XkiVB" id="q4" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:4816349095291149808" />
          <node concept="1BaE9c" id="q6" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="TemplateArgumentPropertyPatternRefExpression$xv" />
            <uo k="s:originTrace" v="n:4816349095291149808" />
            <node concept="2YIFZM" id="q8" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:4816349095291149808" />
              <node concept="11gdke" id="q9" role="37wK5m">
                <property role="11gdj1" value="b401a68083254110L" />
                <uo k="s:originTrace" v="n:4816349095291149808" />
              </node>
              <node concept="11gdke" id="qa" role="37wK5m">
                <property role="11gdj1" value="8fd384331ff25befL" />
                <uo k="s:originTrace" v="n:4816349095291149808" />
              </node>
              <node concept="11gdke" id="qb" role="37wK5m">
                <property role="11gdj1" value="42d71bfbeb1a5de7L" />
                <uo k="s:originTrace" v="n:4816349095291149808" />
              </node>
              <node concept="Xl_RD" id="qc" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.generator.structure.TemplateArgumentPropertyPatternRefExpression" />
                <uo k="s:originTrace" v="n:4816349095291149808" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="q7" role="37wK5m">
            <ref role="3cqZAo" node="q0" resolve="initContext" />
            <uo k="s:originTrace" v="n:4816349095291149808" />
          </node>
        </node>
        <node concept="3clFbF" id="q5" role="3cqZAp">
          <uo k="s:originTrace" v="n:4816349095291149808" />
          <node concept="1rXfSq" id="qd" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:4816349095291149808" />
            <node concept="2ShNRf" id="qe" role="37wK5m">
              <uo k="s:originTrace" v="n:4816349095291149808" />
              <node concept="1pGfFk" id="qf" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="qh" resolve="TemplateArgumentPropertyPatternRefExpression_Constraints.RD1" />
                <uo k="s:originTrace" v="n:4816349095291149808" />
                <node concept="Xjq3P" id="qg" role="37wK5m">
                  <uo k="s:originTrace" v="n:4816349095291149808" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="pY" role="jymVt">
      <uo k="s:originTrace" v="n:4816349095291149808" />
    </node>
    <node concept="312cEu" id="pZ" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:4816349095291149808" />
      <node concept="3clFbW" id="qh" role="jymVt">
        <uo k="s:originTrace" v="n:4816349095291149808" />
        <node concept="37vLTG" id="qk" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:4816349095291149808" />
          <node concept="3uibUv" id="qn" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:4816349095291149808" />
          </node>
        </node>
        <node concept="3cqZAl" id="ql" role="3clF45">
          <uo k="s:originTrace" v="n:4816349095291149808" />
        </node>
        <node concept="3clFbS" id="qm" role="3clF47">
          <uo k="s:originTrace" v="n:4816349095291149808" />
          <node concept="XkiVB" id="qo" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:4816349095291149808" />
            <node concept="1BaE9c" id="qp" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="propertyPattern$CluH" />
              <uo k="s:originTrace" v="n:4816349095291149808" />
              <node concept="2YIFZM" id="qt" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:4816349095291149808" />
                <node concept="11gdke" id="qu" role="37wK5m">
                  <property role="11gdj1" value="b401a68083254110L" />
                  <uo k="s:originTrace" v="n:4816349095291149808" />
                </node>
                <node concept="11gdke" id="qv" role="37wK5m">
                  <property role="11gdj1" value="8fd384331ff25befL" />
                  <uo k="s:originTrace" v="n:4816349095291149808" />
                </node>
                <node concept="11gdke" id="qw" role="37wK5m">
                  <property role="11gdj1" value="42d71bfbeb1a5de7L" />
                  <uo k="s:originTrace" v="n:4816349095291149808" />
                </node>
                <node concept="11gdke" id="qx" role="37wK5m">
                  <property role="11gdj1" value="42d71bfbeb1a5de9L" />
                  <uo k="s:originTrace" v="n:4816349095291149808" />
                </node>
                <node concept="Xl_RD" id="qy" role="37wK5m">
                  <property role="Xl_RC" value="propertyPattern" />
                  <uo k="s:originTrace" v="n:4816349095291149808" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="qq" role="37wK5m">
              <ref role="3cqZAo" node="qk" resolve="container" />
              <uo k="s:originTrace" v="n:4816349095291149808" />
            </node>
            <node concept="3clFbT" id="qr" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:4816349095291149808" />
            </node>
            <node concept="3clFbT" id="qs" role="37wK5m">
              <uo k="s:originTrace" v="n:4816349095291149808" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="qi" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:4816349095291149808" />
        <node concept="3Tm1VV" id="qz" role="1B3o_S">
          <uo k="s:originTrace" v="n:4816349095291149808" />
        </node>
        <node concept="3uibUv" id="q$" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:4816349095291149808" />
        </node>
        <node concept="2AHcQZ" id="q_" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:4816349095291149808" />
        </node>
        <node concept="3clFbS" id="qA" role="3clF47">
          <uo k="s:originTrace" v="n:4816349095291149808" />
          <node concept="3cpWs6" id="qC" role="3cqZAp">
            <uo k="s:originTrace" v="n:4816349095291149808" />
            <node concept="2ShNRf" id="qD" role="3cqZAk">
              <uo k="s:originTrace" v="n:6836281137582788083" />
              <node concept="YeOm9" id="qE" role="2ShVmc">
                <uo k="s:originTrace" v="n:6836281137582788083" />
                <node concept="1Y3b0j" id="qF" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:6836281137582788083" />
                  <node concept="3Tm1VV" id="qG" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6836281137582788083" />
                  </node>
                  <node concept="3clFb_" id="qH" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:6836281137582788083" />
                    <node concept="3Tm1VV" id="qJ" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582788083" />
                    </node>
                    <node concept="3uibUv" id="qK" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:6836281137582788083" />
                    </node>
                    <node concept="3clFbS" id="qL" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582788083" />
                      <node concept="3cpWs6" id="qN" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582788083" />
                        <node concept="2ShNRf" id="qO" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582788083" />
                          <node concept="1pGfFk" id="qP" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:6836281137582788083" />
                            <node concept="Xl_RD" id="qQ" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c895902e2(jetbrains.mps.lang.generator.constraints)" />
                              <uo k="s:originTrace" v="n:6836281137582788083" />
                            </node>
                            <node concept="Xl_RD" id="qR" role="37wK5m">
                              <property role="Xl_RC" value="6836281137582788083" />
                              <uo k="s:originTrace" v="n:6836281137582788083" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="qM" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582788083" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="qI" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:6836281137582788083" />
                    <node concept="3Tm1VV" id="qS" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582788083" />
                    </node>
                    <node concept="3uibUv" id="qT" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:6836281137582788083" />
                    </node>
                    <node concept="37vLTG" id="qU" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:6836281137582788083" />
                      <node concept="3uibUv" id="qX" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:6836281137582788083" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="qV" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582788083" />
                      <node concept="3cpWs8" id="qY" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582788085" />
                        <node concept="3cpWsn" id="r2" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:6836281137582788086" />
                          <node concept="2I9FWS" id="r3" role="1tU5fm">
                            <ref role="2I9WkF" to="tp3t:gyDMOul" resolve="PropertyPatternVariableDeclaration" />
                            <uo k="s:originTrace" v="n:6836281137582788087" />
                          </node>
                          <node concept="2ShNRf" id="r4" role="33vP2m">
                            <uo k="s:originTrace" v="n:6836281137582788088" />
                            <node concept="2T8Vx0" id="r5" role="2ShVmc">
                              <uo k="s:originTrace" v="n:6836281137582788089" />
                              <node concept="2I9FWS" id="r6" role="2T96Bj">
                                <ref role="2I9WkF" to="tp3t:gyDMOul" resolve="PropertyPatternVariableDeclaration" />
                                <uo k="s:originTrace" v="n:6836281137582788090" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="qZ" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582788091" />
                        <node concept="3cpWsn" id="r7" role="3cpWs9">
                          <property role="TrG5h" value="rule" />
                          <uo k="s:originTrace" v="n:6836281137582788092" />
                          <node concept="3Tqbb2" id="r8" role="1tU5fm">
                            <ref role="ehGHo" to="tpf8:1$dcvTE4IIO" resolve="PatternReduction_MappingRule" />
                            <uo k="s:originTrace" v="n:6836281137582788093" />
                          </node>
                          <node concept="2OqwBi" id="r9" role="33vP2m">
                            <uo k="s:originTrace" v="n:6836281137582788094" />
                            <node concept="1DoJHT" id="ra" role="2Oq$k0">
                              <property role="1Dpdpm" value="getContextNode" />
                              <uo k="s:originTrace" v="n:6836281137582788123" />
                              <node concept="3uibUv" id="rc" role="1Ez5kq">
                                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                              </node>
                              <node concept="37vLTw" id="rd" role="1EMhIo">
                                <ref role="3cqZAo" node="qU" resolve="_context" />
                              </node>
                            </node>
                            <node concept="2Xjw5R" id="rb" role="2OqNvi">
                              <uo k="s:originTrace" v="n:6836281137582788096" />
                              <node concept="1xMEDy" id="re" role="1xVPHs">
                                <uo k="s:originTrace" v="n:6836281137582788097" />
                                <node concept="chp4Y" id="rf" role="ri$Ld">
                                  <ref role="cht4Q" to="tpf8:1$dcvTE4IIO" resolve="PatternReduction_MappingRule" />
                                  <uo k="s:originTrace" v="n:6836281137582788098" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="r0" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582788099" />
                        <node concept="1Wc70l" id="rg" role="3clFbw">
                          <uo k="s:originTrace" v="n:6836281137582788100" />
                          <node concept="2OqwBi" id="ri" role="3uHU7B">
                            <uo k="s:originTrace" v="n:6836281137582788101" />
                            <node concept="37vLTw" id="rk" role="2Oq$k0">
                              <ref role="3cqZAo" node="r7" resolve="rule" />
                              <uo k="s:originTrace" v="n:6836281137582788102" />
                            </node>
                            <node concept="3x8VRR" id="rl" role="2OqNvi">
                              <uo k="s:originTrace" v="n:6836281137582788103" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="rj" role="3uHU7w">
                            <uo k="s:originTrace" v="n:6836281137582788104" />
                            <node concept="2OqwBi" id="rm" role="2Oq$k0">
                              <uo k="s:originTrace" v="n:6836281137582788105" />
                              <node concept="37vLTw" id="ro" role="2Oq$k0">
                                <ref role="3cqZAo" node="r7" resolve="rule" />
                                <uo k="s:originTrace" v="n:6836281137582788106" />
                              </node>
                              <node concept="3TrEf2" id="rp" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpf8:1$dcvTE4S$q" resolve="pattern" />
                                <uo k="s:originTrace" v="n:6836281137582788107" />
                              </node>
                            </node>
                            <node concept="3x8VRR" id="rn" role="2OqNvi">
                              <uo k="s:originTrace" v="n:6836281137582788108" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbS" id="rh" role="3clFbx">
                          <uo k="s:originTrace" v="n:6836281137582788109" />
                          <node concept="3clFbF" id="rq" role="3cqZAp">
                            <uo k="s:originTrace" v="n:6836281137582788110" />
                            <node concept="2OqwBi" id="rr" role="3clFbG">
                              <uo k="s:originTrace" v="n:6836281137582788111" />
                              <node concept="37vLTw" id="rs" role="2Oq$k0">
                                <ref role="3cqZAo" node="r2" resolve="result" />
                                <uo k="s:originTrace" v="n:6836281137582788112" />
                              </node>
                              <node concept="X8dFx" id="rt" role="2OqNvi">
                                <uo k="s:originTrace" v="n:6836281137582788113" />
                                <node concept="2OqwBi" id="ru" role="25WWJ7">
                                  <uo k="s:originTrace" v="n:6836281137582788114" />
                                  <node concept="2OqwBi" id="rv" role="2Oq$k0">
                                    <uo k="s:originTrace" v="n:6836281137582788115" />
                                    <node concept="37vLTw" id="rx" role="2Oq$k0">
                                      <ref role="3cqZAo" node="r7" resolve="rule" />
                                      <uo k="s:originTrace" v="n:6836281137582788116" />
                                    </node>
                                    <node concept="3TrEf2" id="ry" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tpf8:1$dcvTE4S$q" resolve="pattern" />
                                      <uo k="s:originTrace" v="n:6836281137582788117" />
                                    </node>
                                  </node>
                                  <node concept="2Rf3mk" id="rw" role="2OqNvi">
                                    <uo k="s:originTrace" v="n:6836281137582788118" />
                                    <node concept="1xMEDy" id="rz" role="1xVPHs">
                                      <uo k="s:originTrace" v="n:6836281137582788119" />
                                      <node concept="chp4Y" id="r$" role="ri$Ld">
                                        <ref role="cht4Q" to="tp3t:gyDMOul" resolve="PropertyPatternVariableDeclaration" />
                                        <uo k="s:originTrace" v="n:6836281137582788120" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="r1" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582788121" />
                        <node concept="2YIFZM" id="r_" role="3clFbG">
                          <ref role="37wK5l" to="o8zo:3jEbQoczdCs" resolve="forResolvableElements" />
                          <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                          <uo k="s:originTrace" v="n:6836281137582788205" />
                          <node concept="37vLTw" id="rA" role="37wK5m">
                            <ref role="3cqZAo" node="r2" resolve="result" />
                            <uo k="s:originTrace" v="n:6836281137582788206" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="qW" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582788083" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="qB" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:4816349095291149808" />
        </node>
      </node>
      <node concept="3uibUv" id="qj" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:4816349095291149808" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="rB">
    <property role="3GE5qa" value="rule.argument" />
    <property role="TrG5h" value="TemplateArgumentQueryExpression_Constraints" />
    <uo k="s:originTrace" v="n:4035562641222625939" />
    <node concept="3Tm1VV" id="rC" role="1B3o_S">
      <uo k="s:originTrace" v="n:4035562641222625939" />
    </node>
    <node concept="3uibUv" id="rD" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:4035562641222625939" />
    </node>
    <node concept="3clFbW" id="rE" role="jymVt">
      <uo k="s:originTrace" v="n:4035562641222625939" />
      <node concept="37vLTG" id="rH" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:4035562641222625939" />
        <node concept="3uibUv" id="rK" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:4035562641222625939" />
        </node>
      </node>
      <node concept="3cqZAl" id="rI" role="3clF45">
        <uo k="s:originTrace" v="n:4035562641222625939" />
      </node>
      <node concept="3clFbS" id="rJ" role="3clF47">
        <uo k="s:originTrace" v="n:4035562641222625939" />
        <node concept="XkiVB" id="rL" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:4035562641222625939" />
          <node concept="1BaE9c" id="rN" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="TemplateArgumentQueryExpression$Zq" />
            <uo k="s:originTrace" v="n:4035562641222625939" />
            <node concept="2YIFZM" id="rP" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:4035562641222625939" />
              <node concept="11gdke" id="rQ" role="37wK5m">
                <property role="11gdj1" value="b401a68083254110L" />
                <uo k="s:originTrace" v="n:4035562641222625939" />
              </node>
              <node concept="11gdke" id="rR" role="37wK5m">
                <property role="11gdj1" value="8fd384331ff25befL" />
                <uo k="s:originTrace" v="n:4035562641222625939" />
              </node>
              <node concept="11gdke" id="rS" role="37wK5m">
                <property role="11gdj1" value="380132d742e8ccb0L" />
                <uo k="s:originTrace" v="n:4035562641222625939" />
              </node>
              <node concept="Xl_RD" id="rT" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.generator.structure.TemplateArgumentQueryExpression" />
                <uo k="s:originTrace" v="n:4035562641222625939" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="rO" role="37wK5m">
            <ref role="3cqZAo" node="rH" resolve="initContext" />
            <uo k="s:originTrace" v="n:4035562641222625939" />
          </node>
        </node>
        <node concept="3clFbF" id="rM" role="3cqZAp">
          <uo k="s:originTrace" v="n:4035562641222625939" />
          <node concept="1rXfSq" id="rU" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.setCanBeChildConstraint(jetbrains.mps.smodel.runtime.ConstraintFunction)" resolve="setCanBeChildConstraint" />
            <uo k="s:originTrace" v="n:4035562641222625939" />
            <node concept="2ShNRf" id="rV" role="37wK5m">
              <uo k="s:originTrace" v="n:4035562641222625939" />
              <node concept="YeOm9" id="rW" role="2ShVmc">
                <uo k="s:originTrace" v="n:4035562641222625939" />
                <node concept="1Y3b0j" id="rX" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <uo k="s:originTrace" v="n:4035562641222625939" />
                  <node concept="3Tm1VV" id="rY" role="1B3o_S">
                    <uo k="s:originTrace" v="n:4035562641222625939" />
                  </node>
                  <node concept="3clFb_" id="rZ" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="invoke" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <uo k="s:originTrace" v="n:4035562641222625939" />
                    <node concept="3Tm1VV" id="s2" role="1B3o_S">
                      <uo k="s:originTrace" v="n:4035562641222625939" />
                    </node>
                    <node concept="2AHcQZ" id="s3" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:4035562641222625939" />
                    </node>
                    <node concept="3uibUv" id="s4" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      <uo k="s:originTrace" v="n:4035562641222625939" />
                    </node>
                    <node concept="37vLTG" id="s5" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <uo k="s:originTrace" v="n:4035562641222625939" />
                      <node concept="3uibUv" id="s8" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                        <uo k="s:originTrace" v="n:4035562641222625939" />
                      </node>
                      <node concept="2AHcQZ" id="s9" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        <uo k="s:originTrace" v="n:4035562641222625939" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="s6" role="3clF46">
                      <property role="TrG5h" value="checkingNodeContext" />
                      <uo k="s:originTrace" v="n:4035562641222625939" />
                      <node concept="3uibUv" id="sa" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                        <uo k="s:originTrace" v="n:4035562641222625939" />
                      </node>
                      <node concept="2AHcQZ" id="sb" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                        <uo k="s:originTrace" v="n:4035562641222625939" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="s7" role="3clF47">
                      <uo k="s:originTrace" v="n:4035562641222625939" />
                      <node concept="3cpWs8" id="sc" role="3cqZAp">
                        <uo k="s:originTrace" v="n:4035562641222625939" />
                        <node concept="3cpWsn" id="sh" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:4035562641222625939" />
                          <node concept="10P_77" id="si" role="1tU5fm">
                            <uo k="s:originTrace" v="n:4035562641222625939" />
                          </node>
                          <node concept="1rXfSq" id="sj" role="33vP2m">
                            <ref role="37wK5l" node="rG" resolve="staticCanBeAChild" />
                            <uo k="s:originTrace" v="n:4035562641222625939" />
                            <node concept="2OqwBi" id="sk" role="37wK5m">
                              <uo k="s:originTrace" v="n:4035562641222625939" />
                              <node concept="37vLTw" id="so" role="2Oq$k0">
                                <ref role="3cqZAo" node="s5" resolve="context" />
                                <uo k="s:originTrace" v="n:4035562641222625939" />
                              </node>
                              <node concept="liA8E" id="sp" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getNode()" resolve="getNode" />
                                <uo k="s:originTrace" v="n:4035562641222625939" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="sl" role="37wK5m">
                              <uo k="s:originTrace" v="n:4035562641222625939" />
                              <node concept="37vLTw" id="sq" role="2Oq$k0">
                                <ref role="3cqZAo" node="s5" resolve="context" />
                                <uo k="s:originTrace" v="n:4035562641222625939" />
                              </node>
                              <node concept="liA8E" id="sr" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getParentNode()" resolve="getParentNode" />
                                <uo k="s:originTrace" v="n:4035562641222625939" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="sm" role="37wK5m">
                              <uo k="s:originTrace" v="n:4035562641222625939" />
                              <node concept="37vLTw" id="ss" role="2Oq$k0">
                                <ref role="3cqZAo" node="s5" resolve="context" />
                                <uo k="s:originTrace" v="n:4035562641222625939" />
                              </node>
                              <node concept="liA8E" id="st" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getConcept()" resolve="getConcept" />
                                <uo k="s:originTrace" v="n:4035562641222625939" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="sn" role="37wK5m">
                              <uo k="s:originTrace" v="n:4035562641222625939" />
                              <node concept="37vLTw" id="su" role="2Oq$k0">
                                <ref role="3cqZAo" node="s5" resolve="context" />
                                <uo k="s:originTrace" v="n:4035562641222625939" />
                              </node>
                              <node concept="liA8E" id="sv" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getLink()" resolve="getLink" />
                                <uo k="s:originTrace" v="n:4035562641222625939" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="sd" role="3cqZAp">
                        <uo k="s:originTrace" v="n:4035562641222625939" />
                      </node>
                      <node concept="3clFbJ" id="se" role="3cqZAp">
                        <uo k="s:originTrace" v="n:4035562641222625939" />
                        <node concept="3clFbS" id="sw" role="3clFbx">
                          <uo k="s:originTrace" v="n:4035562641222625939" />
                          <node concept="3clFbF" id="sy" role="3cqZAp">
                            <uo k="s:originTrace" v="n:4035562641222625939" />
                            <node concept="2OqwBi" id="sz" role="3clFbG">
                              <uo k="s:originTrace" v="n:4035562641222625939" />
                              <node concept="37vLTw" id="s$" role="2Oq$k0">
                                <ref role="3cqZAo" node="s6" resolve="checkingNodeContext" />
                                <uo k="s:originTrace" v="n:4035562641222625939" />
                              </node>
                              <node concept="liA8E" id="s_" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                                <uo k="s:originTrace" v="n:4035562641222625939" />
                                <node concept="1dyn4i" id="sA" role="37wK5m">
                                  <property role="1dyqJU" value="canBeChildBreakingPoint" />
                                  <uo k="s:originTrace" v="n:4035562641222625939" />
                                  <node concept="2ShNRf" id="sB" role="1dyrYi">
                                    <uo k="s:originTrace" v="n:4035562641222625939" />
                                    <node concept="1pGfFk" id="sC" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:4035562641222625939" />
                                      <node concept="Xl_RD" id="sD" role="37wK5m">
                                        <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c895902e2(jetbrains.mps.lang.generator.constraints)" />
                                        <uo k="s:originTrace" v="n:4035562641222625939" />
                                      </node>
                                      <node concept="Xl_RD" id="sE" role="37wK5m">
                                        <property role="Xl_RC" value="1227128029536561855" />
                                        <uo k="s:originTrace" v="n:4035562641222625939" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Wc70l" id="sx" role="3clFbw">
                          <uo k="s:originTrace" v="n:4035562641222625939" />
                          <node concept="3y3z36" id="sF" role="3uHU7w">
                            <uo k="s:originTrace" v="n:4035562641222625939" />
                            <node concept="10Nm6u" id="sH" role="3uHU7w">
                              <uo k="s:originTrace" v="n:4035562641222625939" />
                            </node>
                            <node concept="37vLTw" id="sI" role="3uHU7B">
                              <ref role="3cqZAo" node="s6" resolve="checkingNodeContext" />
                              <uo k="s:originTrace" v="n:4035562641222625939" />
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="sG" role="3uHU7B">
                            <uo k="s:originTrace" v="n:4035562641222625939" />
                            <node concept="37vLTw" id="sJ" role="3fr31v">
                              <ref role="3cqZAo" node="sh" resolve="result" />
                              <uo k="s:originTrace" v="n:4035562641222625939" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="sf" role="3cqZAp">
                        <uo k="s:originTrace" v="n:4035562641222625939" />
                      </node>
                      <node concept="3clFbF" id="sg" role="3cqZAp">
                        <uo k="s:originTrace" v="n:4035562641222625939" />
                        <node concept="37vLTw" id="sK" role="3clFbG">
                          <ref role="3cqZAo" node="sh" resolve="result" />
                          <uo k="s:originTrace" v="n:4035562641222625939" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="s0" role="2Ghqu4">
                    <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                    <uo k="s:originTrace" v="n:4035562641222625939" />
                  </node>
                  <node concept="3uibUv" id="s1" role="2Ghqu4">
                    <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    <uo k="s:originTrace" v="n:4035562641222625939" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="rF" role="jymVt">
      <uo k="s:originTrace" v="n:4035562641222625939" />
    </node>
    <node concept="2YIFZL" id="rG" role="jymVt">
      <property role="TrG5h" value="staticCanBeAChild" />
      <uo k="s:originTrace" v="n:4035562641222625939" />
      <node concept="10P_77" id="sL" role="3clF45">
        <uo k="s:originTrace" v="n:4035562641222625939" />
      </node>
      <node concept="3Tm6S6" id="sM" role="1B3o_S">
        <uo k="s:originTrace" v="n:4035562641222625939" />
      </node>
      <node concept="3clFbS" id="sN" role="3clF47">
        <uo k="s:originTrace" v="n:1227128029536561856" />
        <node concept="3clFbF" id="sS" role="3cqZAp">
          <uo k="s:originTrace" v="n:1227128029536561857" />
          <node concept="2OqwBi" id="sT" role="3clFbG">
            <uo k="s:originTrace" v="n:1227128029536561858" />
            <node concept="37vLTw" id="sU" role="2Oq$k0">
              <ref role="3cqZAo" node="sP" resolve="parentNode" />
              <uo k="s:originTrace" v="n:1227128029536561859" />
            </node>
            <node concept="1mIQ4w" id="sV" role="2OqNvi">
              <uo k="s:originTrace" v="n:1227128029536561860" />
              <node concept="chp4Y" id="sW" role="cj9EA">
                <ref role="cht4Q" to="tpf8:1vDgt48Nz4w" resolve="ITemplateCall" />
                <uo k="s:originTrace" v="n:1227128029536561861" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="sO" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:4035562641222625939" />
        <node concept="3uibUv" id="sX" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:4035562641222625939" />
        </node>
      </node>
      <node concept="37vLTG" id="sP" role="3clF46">
        <property role="TrG5h" value="parentNode" />
        <uo k="s:originTrace" v="n:4035562641222625939" />
        <node concept="3uibUv" id="sY" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:4035562641222625939" />
        </node>
      </node>
      <node concept="37vLTG" id="sQ" role="3clF46">
        <property role="TrG5h" value="childConcept" />
        <uo k="s:originTrace" v="n:4035562641222625939" />
        <node concept="3uibUv" id="sZ" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
          <uo k="s:originTrace" v="n:4035562641222625939" />
        </node>
      </node>
      <node concept="37vLTG" id="sR" role="3clF46">
        <property role="TrG5h" value="link" />
        <uo k="s:originTrace" v="n:4035562641222625939" />
        <node concept="3uibUv" id="t0" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
          <uo k="s:originTrace" v="n:4035562641222625939" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="t1">
    <property role="3GE5qa" value="rule.argument" />
    <property role="TrG5h" value="TemplateArgumentVarRefExpression2_Constraints" />
    <uo k="s:originTrace" v="n:1048903277991450450" />
    <node concept="3Tm1VV" id="t2" role="1B3o_S">
      <uo k="s:originTrace" v="n:1048903277991450450" />
    </node>
    <node concept="3uibUv" id="t3" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:1048903277991450450" />
    </node>
    <node concept="3clFbW" id="t4" role="jymVt">
      <uo k="s:originTrace" v="n:1048903277991450450" />
      <node concept="37vLTG" id="t7" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:1048903277991450450" />
        <node concept="3uibUv" id="ta" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:1048903277991450450" />
        </node>
      </node>
      <node concept="3cqZAl" id="t8" role="3clF45">
        <uo k="s:originTrace" v="n:1048903277991450450" />
      </node>
      <node concept="3clFbS" id="t9" role="3clF47">
        <uo k="s:originTrace" v="n:1048903277991450450" />
        <node concept="XkiVB" id="tb" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:1048903277991450450" />
          <node concept="1BaE9c" id="td" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="TemplateArgumentVarRefExpression2$1W" />
            <uo k="s:originTrace" v="n:1048903277991450450" />
            <node concept="2YIFZM" id="tf" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:1048903277991450450" />
              <node concept="11gdke" id="tg" role="37wK5m">
                <property role="11gdj1" value="b401a68083254110L" />
                <uo k="s:originTrace" v="n:1048903277991450450" />
              </node>
              <node concept="11gdke" id="th" role="37wK5m">
                <property role="11gdj1" value="8fd384331ff25befL" />
                <uo k="s:originTrace" v="n:1048903277991450450" />
              </node>
              <node concept="11gdke" id="ti" role="37wK5m">
                <property role="11gdj1" value="e8e73f9584aee0fL" />
                <uo k="s:originTrace" v="n:1048903277991450450" />
              </node>
              <node concept="Xl_RD" id="tj" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.generator.structure.TemplateArgumentVarRefExpression2" />
                <uo k="s:originTrace" v="n:1048903277991450450" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="te" role="37wK5m">
            <ref role="3cqZAo" node="t7" resolve="initContext" />
            <uo k="s:originTrace" v="n:1048903277991450450" />
          </node>
        </node>
        <node concept="3clFbF" id="tc" role="3cqZAp">
          <uo k="s:originTrace" v="n:1048903277991450450" />
          <node concept="1rXfSq" id="tk" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:1048903277991450450" />
            <node concept="2ShNRf" id="tl" role="37wK5m">
              <uo k="s:originTrace" v="n:1048903277991450450" />
              <node concept="1pGfFk" id="tm" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="to" resolve="TemplateArgumentVarRefExpression2_Constraints.RD1" />
                <uo k="s:originTrace" v="n:1048903277991450450" />
                <node concept="Xjq3P" id="tn" role="37wK5m">
                  <uo k="s:originTrace" v="n:1048903277991450450" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="t5" role="jymVt">
      <uo k="s:originTrace" v="n:1048903277991450450" />
    </node>
    <node concept="312cEu" id="t6" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:1048903277991450450" />
      <node concept="3clFbW" id="to" role="jymVt">
        <uo k="s:originTrace" v="n:1048903277991450450" />
        <node concept="37vLTG" id="tr" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:1048903277991450450" />
          <node concept="3uibUv" id="tu" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1048903277991450450" />
          </node>
        </node>
        <node concept="3cqZAl" id="ts" role="3clF45">
          <uo k="s:originTrace" v="n:1048903277991450450" />
        </node>
        <node concept="3clFbS" id="tt" role="3clF47">
          <uo k="s:originTrace" v="n:1048903277991450450" />
          <node concept="XkiVB" id="tv" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1048903277991450450" />
            <node concept="1BaE9c" id="tw" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="vardecl$C7NG" />
              <uo k="s:originTrace" v="n:1048903277991450450" />
              <node concept="2YIFZM" id="t$" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:1048903277991450450" />
                <node concept="11gdke" id="t_" role="37wK5m">
                  <property role="11gdj1" value="b401a68083254110L" />
                  <uo k="s:originTrace" v="n:1048903277991450450" />
                </node>
                <node concept="11gdke" id="tA" role="37wK5m">
                  <property role="11gdj1" value="8fd384331ff25befL" />
                  <uo k="s:originTrace" v="n:1048903277991450450" />
                </node>
                <node concept="11gdke" id="tB" role="37wK5m">
                  <property role="11gdj1" value="e8e73f9584aee0fL" />
                  <uo k="s:originTrace" v="n:1048903277991450450" />
                </node>
                <node concept="11gdke" id="tC" role="37wK5m">
                  <property role="11gdj1" value="e8e73f9584aee10L" />
                  <uo k="s:originTrace" v="n:1048903277991450450" />
                </node>
                <node concept="Xl_RD" id="tD" role="37wK5m">
                  <property role="Xl_RC" value="vardecl" />
                  <uo k="s:originTrace" v="n:1048903277991450450" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="tx" role="37wK5m">
              <ref role="3cqZAo" node="tr" resolve="container" />
              <uo k="s:originTrace" v="n:1048903277991450450" />
            </node>
            <node concept="3clFbT" id="ty" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:1048903277991450450" />
            </node>
            <node concept="3clFbT" id="tz" role="37wK5m">
              <uo k="s:originTrace" v="n:1048903277991450450" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="tp" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:1048903277991450450" />
        <node concept="3Tm1VV" id="tE" role="1B3o_S">
          <uo k="s:originTrace" v="n:1048903277991450450" />
        </node>
        <node concept="3uibUv" id="tF" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:1048903277991450450" />
        </node>
        <node concept="2AHcQZ" id="tG" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:1048903277991450450" />
        </node>
        <node concept="3clFbS" id="tH" role="3clF47">
          <uo k="s:originTrace" v="n:1048903277991450450" />
          <node concept="3cpWs6" id="tJ" role="3cqZAp">
            <uo k="s:originTrace" v="n:1048903277991450450" />
            <node concept="2YIFZM" id="tK" role="3cqZAk">
              <ref role="37wK5l" to="ze1i:~ReferenceScopeProvider.fromHierarchy(org.jetbrains.mps.openapi.language.SAbstractConcept,org.jetbrains.mps.openapi.model.SNodeReference)" resolve="fromHierarchy" />
              <ref role="1Pybhc" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
              <uo k="s:originTrace" v="n:1048903277991450453" />
              <node concept="35c_gC" id="tL" role="37wK5m">
                <ref role="35c_gD" to="tpf8:UesZ_nZ2I6" resolve="VarDeclaration" />
                <uo k="s:originTrace" v="n:1048903277991450453" />
              </node>
              <node concept="2ShNRf" id="tM" role="37wK5m">
                <uo k="s:originTrace" v="n:1048903277991450453" />
                <node concept="1pGfFk" id="tN" role="2ShVmc">
                  <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                  <uo k="s:originTrace" v="n:1048903277991450453" />
                  <node concept="Xl_RD" id="tO" role="37wK5m">
                    <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c895902e2(jetbrains.mps.lang.generator.constraints)" />
                    <uo k="s:originTrace" v="n:1048903277991450453" />
                  </node>
                  <node concept="Xl_RD" id="tP" role="37wK5m">
                    <property role="Xl_RC" value="1048903277991450453" />
                    <uo k="s:originTrace" v="n:1048903277991450453" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="tI" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:1048903277991450450" />
        </node>
      </node>
      <node concept="3uibUv" id="tq" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:1048903277991450450" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="tQ">
    <property role="3GE5qa" value="macro" />
    <property role="TrG5h" value="TemplateCallMacro_Constraints" />
    <uo k="s:originTrace" v="n:982871510068191901" />
    <node concept="3Tm1VV" id="tR" role="1B3o_S">
      <uo k="s:originTrace" v="n:982871510068191901" />
    </node>
    <node concept="3uibUv" id="tS" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:982871510068191901" />
    </node>
    <node concept="3clFbW" id="tT" role="jymVt">
      <uo k="s:originTrace" v="n:982871510068191901" />
      <node concept="37vLTG" id="tW" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:982871510068191901" />
        <node concept="3uibUv" id="tZ" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:982871510068191901" />
        </node>
      </node>
      <node concept="3cqZAl" id="tX" role="3clF45">
        <uo k="s:originTrace" v="n:982871510068191901" />
      </node>
      <node concept="3clFbS" id="tY" role="3clF47">
        <uo k="s:originTrace" v="n:982871510068191901" />
        <node concept="XkiVB" id="u0" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:982871510068191901" />
          <node concept="1BaE9c" id="u2" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="TemplateCallMacro$qa" />
            <uo k="s:originTrace" v="n:982871510068191901" />
            <node concept="2YIFZM" id="u4" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:982871510068191901" />
              <node concept="11gdke" id="u5" role="37wK5m">
                <property role="11gdj1" value="b401a68083254110L" />
                <uo k="s:originTrace" v="n:982871510068191901" />
              </node>
              <node concept="11gdke" id="u6" role="37wK5m">
                <property role="11gdj1" value="8fd384331ff25befL" />
                <uo k="s:originTrace" v="n:982871510068191901" />
              </node>
              <node concept="11gdke" id="u7" role="37wK5m">
                <property role="11gdj1" value="14f7f8a311b8f14fL" />
                <uo k="s:originTrace" v="n:982871510068191901" />
              </node>
              <node concept="Xl_RD" id="u8" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.generator.structure.TemplateCallMacro" />
                <uo k="s:originTrace" v="n:982871510068191901" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="u3" role="37wK5m">
            <ref role="3cqZAo" node="tW" resolve="initContext" />
            <uo k="s:originTrace" v="n:982871510068191901" />
          </node>
        </node>
        <node concept="3clFbF" id="u1" role="3cqZAp">
          <uo k="s:originTrace" v="n:982871510068191901" />
          <node concept="1rXfSq" id="u9" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:982871510068191901" />
            <node concept="2ShNRf" id="ua" role="37wK5m">
              <uo k="s:originTrace" v="n:982871510068191901" />
              <node concept="1pGfFk" id="ub" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="ud" resolve="TemplateCallMacro_Constraints.RD1" />
                <uo k="s:originTrace" v="n:982871510068191901" />
                <node concept="Xjq3P" id="uc" role="37wK5m">
                  <uo k="s:originTrace" v="n:982871510068191901" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="tU" role="jymVt">
      <uo k="s:originTrace" v="n:982871510068191901" />
    </node>
    <node concept="312cEu" id="tV" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:982871510068191901" />
      <node concept="3clFbW" id="ud" role="jymVt">
        <uo k="s:originTrace" v="n:982871510068191901" />
        <node concept="37vLTG" id="ug" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:982871510068191901" />
          <node concept="3uibUv" id="uj" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:982871510068191901" />
          </node>
        </node>
        <node concept="3cqZAl" id="uh" role="3clF45">
          <uo k="s:originTrace" v="n:982871510068191901" />
        </node>
        <node concept="3clFbS" id="ui" role="3clF47">
          <uo k="s:originTrace" v="n:982871510068191901" />
          <node concept="XkiVB" id="uk" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:982871510068191901" />
            <node concept="1BaE9c" id="ul" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="template$6_6" />
              <uo k="s:originTrace" v="n:982871510068191901" />
              <node concept="2YIFZM" id="up" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:982871510068191901" />
                <node concept="11gdke" id="uq" role="37wK5m">
                  <property role="11gdj1" value="b401a68083254110L" />
                  <uo k="s:originTrace" v="n:982871510068191901" />
                </node>
                <node concept="11gdke" id="ur" role="37wK5m">
                  <property role="11gdj1" value="8fd384331ff25befL" />
                  <uo k="s:originTrace" v="n:982871510068191901" />
                </node>
                <node concept="11gdke" id="us" role="37wK5m">
                  <property role="11gdj1" value="17e941d108ce3120L" />
                  <uo k="s:originTrace" v="n:982871510068191901" />
                </node>
                <node concept="11gdke" id="ut" role="37wK5m">
                  <property role="11gdj1" value="17e941d108ce3173L" />
                  <uo k="s:originTrace" v="n:982871510068191901" />
                </node>
                <node concept="Xl_RD" id="uu" role="37wK5m">
                  <property role="Xl_RC" value="template" />
                  <uo k="s:originTrace" v="n:982871510068191901" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="um" role="37wK5m">
              <ref role="3cqZAo" node="ug" resolve="container" />
              <uo k="s:originTrace" v="n:982871510068191901" />
            </node>
            <node concept="3clFbT" id="un" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:982871510068191901" />
            </node>
            <node concept="3clFbT" id="uo" role="37wK5m">
              <uo k="s:originTrace" v="n:982871510068191901" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="ue" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:982871510068191901" />
        <node concept="3Tm1VV" id="uv" role="1B3o_S">
          <uo k="s:originTrace" v="n:982871510068191901" />
        </node>
        <node concept="3uibUv" id="uw" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:982871510068191901" />
        </node>
        <node concept="2AHcQZ" id="ux" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:982871510068191901" />
        </node>
        <node concept="3clFbS" id="uy" role="3clF47">
          <uo k="s:originTrace" v="n:982871510068191901" />
          <node concept="3cpWs6" id="u$" role="3cqZAp">
            <uo k="s:originTrace" v="n:982871510068191901" />
            <node concept="2ShNRf" id="u_" role="3cqZAk">
              <uo k="s:originTrace" v="n:6836281137582788331" />
              <node concept="YeOm9" id="uA" role="2ShVmc">
                <uo k="s:originTrace" v="n:6836281137582788331" />
                <node concept="1Y3b0j" id="uB" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:6836281137582788331" />
                  <node concept="3Tm1VV" id="uC" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6836281137582788331" />
                  </node>
                  <node concept="3clFb_" id="uD" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:6836281137582788331" />
                    <node concept="3Tm1VV" id="uF" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582788331" />
                    </node>
                    <node concept="3uibUv" id="uG" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:6836281137582788331" />
                    </node>
                    <node concept="3clFbS" id="uH" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582788331" />
                      <node concept="3cpWs6" id="uJ" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582788331" />
                        <node concept="2ShNRf" id="uK" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582788331" />
                          <node concept="1pGfFk" id="uL" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:6836281137582788331" />
                            <node concept="Xl_RD" id="uM" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c895902e2(jetbrains.mps.lang.generator.constraints)" />
                              <uo k="s:originTrace" v="n:6836281137582788331" />
                            </node>
                            <node concept="Xl_RD" id="uN" role="37wK5m">
                              <property role="Xl_RC" value="6836281137582788331" />
                              <uo k="s:originTrace" v="n:6836281137582788331" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="uI" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582788331" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="uE" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:6836281137582788331" />
                    <node concept="3Tm1VV" id="uO" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582788331" />
                    </node>
                    <node concept="3uibUv" id="uP" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:6836281137582788331" />
                    </node>
                    <node concept="37vLTG" id="uQ" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:6836281137582788331" />
                      <node concept="3uibUv" id="uT" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:6836281137582788331" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="uR" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582788331" />
                      <node concept="3clFbF" id="uU" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582788333" />
                        <node concept="2ShNRf" id="uV" role="3clFbG">
                          <uo k="s:originTrace" v="n:6836281137582788334" />
                          <node concept="1pGfFk" id="uW" role="2ShVmc">
                            <ref role="37wK5l" to="o8zo:4k9eBec$QVW" resolve="ModelPlusImportedScope" />
                            <uo k="s:originTrace" v="n:6836281137582788335" />
                            <node concept="2OqwBi" id="uX" role="37wK5m">
                              <uo k="s:originTrace" v="n:6836281137582788339" />
                              <node concept="1DoJHT" id="v0" role="2Oq$k0">
                                <property role="1Dpdpm" value="getContextNode" />
                                <uo k="s:originTrace" v="n:6836281137582788340" />
                                <node concept="3uibUv" id="v2" role="1Ez5kq">
                                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                </node>
                                <node concept="37vLTw" id="v3" role="1EMhIo">
                                  <ref role="3cqZAo" node="uQ" resolve="_context" />
                                </node>
                              </node>
                              <node concept="I4A8Y" id="v1" role="2OqNvi">
                                <uo k="s:originTrace" v="n:6836281137582788341" />
                              </node>
                            </node>
                            <node concept="3clFbT" id="uY" role="37wK5m">
                              <property role="3clFbU" value="true" />
                              <uo k="s:originTrace" v="n:6836281137582788337" />
                            </node>
                            <node concept="35c_gC" id="uZ" role="37wK5m">
                              <ref role="35c_gD" to="tpf8:fT3MO7g" resolve="TemplateDeclaration" />
                              <uo k="s:originTrace" v="n:6836281137582788338" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="uS" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582788331" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="uz" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:982871510068191901" />
        </node>
      </node>
      <node concept="3uibUv" id="uf" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:982871510068191901" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="v4">
    <property role="3GE5qa" value="rule.consequence" />
    <property role="TrG5h" value="TemplateDeclarationReference_Constraints" />
    <uo k="s:originTrace" v="n:982871510068195081" />
    <node concept="3Tm1VV" id="v5" role="1B3o_S">
      <uo k="s:originTrace" v="n:982871510068195081" />
    </node>
    <node concept="3uibUv" id="v6" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:982871510068195081" />
    </node>
    <node concept="3clFbW" id="v7" role="jymVt">
      <uo k="s:originTrace" v="n:982871510068195081" />
      <node concept="37vLTG" id="va" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:982871510068195081" />
        <node concept="3uibUv" id="vd" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:982871510068195081" />
        </node>
      </node>
      <node concept="3cqZAl" id="vb" role="3clF45">
        <uo k="s:originTrace" v="n:982871510068195081" />
      </node>
      <node concept="3clFbS" id="vc" role="3clF47">
        <uo k="s:originTrace" v="n:982871510068195081" />
        <node concept="XkiVB" id="ve" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:982871510068195081" />
          <node concept="1BaE9c" id="vg" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="TemplateDeclarationReference$QT" />
            <uo k="s:originTrace" v="n:982871510068195081" />
            <node concept="2YIFZM" id="vi" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:982871510068195081" />
              <node concept="11gdke" id="vj" role="37wK5m">
                <property role="11gdj1" value="b401a68083254110L" />
                <uo k="s:originTrace" v="n:982871510068195081" />
              </node>
              <node concept="11gdke" id="vk" role="37wK5m">
                <property role="11gdj1" value="8fd384331ff25befL" />
                <uo k="s:originTrace" v="n:982871510068195081" />
              </node>
              <node concept="11gdke" id="vl" role="37wK5m">
                <property role="11gdj1" value="11013906056L" />
                <uo k="s:originTrace" v="n:982871510068195081" />
              </node>
              <node concept="Xl_RD" id="vm" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.generator.structure.TemplateDeclarationReference" />
                <uo k="s:originTrace" v="n:982871510068195081" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="vh" role="37wK5m">
            <ref role="3cqZAo" node="va" resolve="initContext" />
            <uo k="s:originTrace" v="n:982871510068195081" />
          </node>
        </node>
        <node concept="3clFbF" id="vf" role="3cqZAp">
          <uo k="s:originTrace" v="n:982871510068195081" />
          <node concept="1rXfSq" id="vn" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:982871510068195081" />
            <node concept="2ShNRf" id="vo" role="37wK5m">
              <uo k="s:originTrace" v="n:982871510068195081" />
              <node concept="1pGfFk" id="vp" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="vr" resolve="TemplateDeclarationReference_Constraints.RD1" />
                <uo k="s:originTrace" v="n:982871510068195081" />
                <node concept="Xjq3P" id="vq" role="37wK5m">
                  <uo k="s:originTrace" v="n:982871510068195081" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="v8" role="jymVt">
      <uo k="s:originTrace" v="n:982871510068195081" />
    </node>
    <node concept="312cEu" id="v9" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:982871510068195081" />
      <node concept="3clFbW" id="vr" role="jymVt">
        <uo k="s:originTrace" v="n:982871510068195081" />
        <node concept="37vLTG" id="vu" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:982871510068195081" />
          <node concept="3uibUv" id="vx" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:982871510068195081" />
          </node>
        </node>
        <node concept="3cqZAl" id="vv" role="3clF45">
          <uo k="s:originTrace" v="n:982871510068195081" />
        </node>
        <node concept="3clFbS" id="vw" role="3clF47">
          <uo k="s:originTrace" v="n:982871510068195081" />
          <node concept="XkiVB" id="vy" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:982871510068195081" />
            <node concept="1BaE9c" id="vz" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="template$6_6" />
              <uo k="s:originTrace" v="n:982871510068195081" />
              <node concept="2YIFZM" id="vB" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:982871510068195081" />
                <node concept="11gdke" id="vC" role="37wK5m">
                  <property role="11gdj1" value="b401a68083254110L" />
                  <uo k="s:originTrace" v="n:982871510068195081" />
                </node>
                <node concept="11gdke" id="vD" role="37wK5m">
                  <property role="11gdj1" value="8fd384331ff25befL" />
                  <uo k="s:originTrace" v="n:982871510068195081" />
                </node>
                <node concept="11gdke" id="vE" role="37wK5m">
                  <property role="11gdj1" value="17e941d108ce3120L" />
                  <uo k="s:originTrace" v="n:982871510068195081" />
                </node>
                <node concept="11gdke" id="vF" role="37wK5m">
                  <property role="11gdj1" value="17e941d108ce3173L" />
                  <uo k="s:originTrace" v="n:982871510068195081" />
                </node>
                <node concept="Xl_RD" id="vG" role="37wK5m">
                  <property role="Xl_RC" value="template" />
                  <uo k="s:originTrace" v="n:982871510068195081" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="v$" role="37wK5m">
              <ref role="3cqZAo" node="vu" resolve="container" />
              <uo k="s:originTrace" v="n:982871510068195081" />
            </node>
            <node concept="3clFbT" id="v_" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:982871510068195081" />
            </node>
            <node concept="3clFbT" id="vA" role="37wK5m">
              <uo k="s:originTrace" v="n:982871510068195081" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="vs" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:982871510068195081" />
        <node concept="3Tm1VV" id="vH" role="1B3o_S">
          <uo k="s:originTrace" v="n:982871510068195081" />
        </node>
        <node concept="3uibUv" id="vI" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:982871510068195081" />
        </node>
        <node concept="2AHcQZ" id="vJ" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:982871510068195081" />
        </node>
        <node concept="3clFbS" id="vK" role="3clF47">
          <uo k="s:originTrace" v="n:982871510068195081" />
          <node concept="3cpWs6" id="vM" role="3cqZAp">
            <uo k="s:originTrace" v="n:982871510068195081" />
            <node concept="2ShNRf" id="vN" role="3cqZAk">
              <uo k="s:originTrace" v="n:6836281137582788936" />
              <node concept="YeOm9" id="vO" role="2ShVmc">
                <uo k="s:originTrace" v="n:6836281137582788936" />
                <node concept="1Y3b0j" id="vP" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:6836281137582788936" />
                  <node concept="3Tm1VV" id="vQ" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6836281137582788936" />
                  </node>
                  <node concept="3clFb_" id="vR" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:6836281137582788936" />
                    <node concept="3Tm1VV" id="vT" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582788936" />
                    </node>
                    <node concept="3uibUv" id="vU" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:6836281137582788936" />
                    </node>
                    <node concept="3clFbS" id="vV" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582788936" />
                      <node concept="3cpWs6" id="vX" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582788936" />
                        <node concept="2ShNRf" id="vY" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582788936" />
                          <node concept="1pGfFk" id="vZ" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:6836281137582788936" />
                            <node concept="Xl_RD" id="w0" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c895902e2(jetbrains.mps.lang.generator.constraints)" />
                              <uo k="s:originTrace" v="n:6836281137582788936" />
                            </node>
                            <node concept="Xl_RD" id="w1" role="37wK5m">
                              <property role="Xl_RC" value="6836281137582788936" />
                              <uo k="s:originTrace" v="n:6836281137582788936" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="vW" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582788936" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="vS" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:6836281137582788936" />
                    <node concept="3Tm1VV" id="w2" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582788936" />
                    </node>
                    <node concept="3uibUv" id="w3" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:6836281137582788936" />
                    </node>
                    <node concept="37vLTG" id="w4" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:6836281137582788936" />
                      <node concept="3uibUv" id="w7" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:6836281137582788936" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="w5" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582788936" />
                      <node concept="3clFbF" id="w8" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582788938" />
                        <node concept="2ShNRf" id="w9" role="3clFbG">
                          <uo k="s:originTrace" v="n:6836281137582788939" />
                          <node concept="1pGfFk" id="wa" role="2ShVmc">
                            <ref role="37wK5l" to="o8zo:4k9eBec$QVW" resolve="ModelPlusImportedScope" />
                            <uo k="s:originTrace" v="n:6836281137582788940" />
                            <node concept="2OqwBi" id="wb" role="37wK5m">
                              <uo k="s:originTrace" v="n:6836281137582788944" />
                              <node concept="1DoJHT" id="we" role="2Oq$k0">
                                <property role="1Dpdpm" value="getContextNode" />
                                <uo k="s:originTrace" v="n:6836281137582788945" />
                                <node concept="3uibUv" id="wg" role="1Ez5kq">
                                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                </node>
                                <node concept="37vLTw" id="wh" role="1EMhIo">
                                  <ref role="3cqZAo" node="w4" resolve="_context" />
                                </node>
                              </node>
                              <node concept="I4A8Y" id="wf" role="2OqNvi">
                                <uo k="s:originTrace" v="n:6836281137582788946" />
                              </node>
                            </node>
                            <node concept="3clFbT" id="wc" role="37wK5m">
                              <property role="3clFbU" value="true" />
                              <uo k="s:originTrace" v="n:6836281137582788942" />
                            </node>
                            <node concept="35c_gC" id="wd" role="37wK5m">
                              <ref role="35c_gD" to="tpf8:fT3MO7g" resolve="TemplateDeclaration" />
                              <uo k="s:originTrace" v="n:6836281137582788943" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="w6" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582788936" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="vL" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:982871510068195081" />
        </node>
      </node>
      <node concept="3uibUv" id="vt" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:982871510068195081" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="wi">
    <property role="3GE5qa" value="macro" />
    <property role="TrG5h" value="TemplateSwitchMacro_Constraints" />
    <uo k="s:originTrace" v="n:982871510068000160" />
    <node concept="3Tm1VV" id="wj" role="1B3o_S">
      <uo k="s:originTrace" v="n:982871510068000160" />
    </node>
    <node concept="3uibUv" id="wk" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:982871510068000160" />
    </node>
    <node concept="3clFbW" id="wl" role="jymVt">
      <uo k="s:originTrace" v="n:982871510068000160" />
      <node concept="37vLTG" id="wo" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:982871510068000160" />
        <node concept="3uibUv" id="wr" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:982871510068000160" />
        </node>
      </node>
      <node concept="3cqZAl" id="wp" role="3clF45">
        <uo k="s:originTrace" v="n:982871510068000160" />
      </node>
      <node concept="3clFbS" id="wq" role="3clF47">
        <uo k="s:originTrace" v="n:982871510068000160" />
        <node concept="XkiVB" id="ws" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:982871510068000160" />
          <node concept="1BaE9c" id="wu" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="TemplateSwitchMacro$3G" />
            <uo k="s:originTrace" v="n:982871510068000160" />
            <node concept="2YIFZM" id="ww" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:982871510068000160" />
              <node concept="11gdke" id="wx" role="37wK5m">
                <property role="11gdj1" value="b401a68083254110L" />
                <uo k="s:originTrace" v="n:982871510068000160" />
              </node>
              <node concept="11gdke" id="wy" role="37wK5m">
                <property role="11gdj1" value="8fd384331ff25befL" />
                <uo k="s:originTrace" v="n:982871510068000160" />
              </node>
              <node concept="11gdke" id="wz" role="37wK5m">
                <property role="11gdj1" value="da3dc6e51747593L" />
                <uo k="s:originTrace" v="n:982871510068000160" />
              </node>
              <node concept="Xl_RD" id="w$" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.generator.structure.TemplateSwitchMacro" />
                <uo k="s:originTrace" v="n:982871510068000160" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="wv" role="37wK5m">
            <ref role="3cqZAo" node="wo" resolve="initContext" />
            <uo k="s:originTrace" v="n:982871510068000160" />
          </node>
        </node>
        <node concept="3clFbF" id="wt" role="3cqZAp">
          <uo k="s:originTrace" v="n:982871510068000160" />
          <node concept="1rXfSq" id="w_" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:982871510068000160" />
            <node concept="2ShNRf" id="wA" role="37wK5m">
              <uo k="s:originTrace" v="n:982871510068000160" />
              <node concept="1pGfFk" id="wB" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="wD" resolve="TemplateSwitchMacro_Constraints.RD1" />
                <uo k="s:originTrace" v="n:982871510068000160" />
                <node concept="Xjq3P" id="wC" role="37wK5m">
                  <uo k="s:originTrace" v="n:982871510068000160" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="wm" role="jymVt">
      <uo k="s:originTrace" v="n:982871510068000160" />
    </node>
    <node concept="312cEu" id="wn" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:982871510068000160" />
      <node concept="3clFbW" id="wD" role="jymVt">
        <uo k="s:originTrace" v="n:982871510068000160" />
        <node concept="37vLTG" id="wG" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:982871510068000160" />
          <node concept="3uibUv" id="wJ" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:982871510068000160" />
          </node>
        </node>
        <node concept="3cqZAl" id="wH" role="3clF45">
          <uo k="s:originTrace" v="n:982871510068000160" />
        </node>
        <node concept="3clFbS" id="wI" role="3clF47">
          <uo k="s:originTrace" v="n:982871510068000160" />
          <node concept="XkiVB" id="wK" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:982871510068000160" />
            <node concept="1BaE9c" id="wL" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="template$6_6" />
              <uo k="s:originTrace" v="n:982871510068000160" />
              <node concept="2YIFZM" id="wP" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:982871510068000160" />
                <node concept="11gdke" id="wQ" role="37wK5m">
                  <property role="11gdj1" value="b401a68083254110L" />
                  <uo k="s:originTrace" v="n:982871510068000160" />
                </node>
                <node concept="11gdke" id="wR" role="37wK5m">
                  <property role="11gdj1" value="8fd384331ff25befL" />
                  <uo k="s:originTrace" v="n:982871510068000160" />
                </node>
                <node concept="11gdke" id="wS" role="37wK5m">
                  <property role="11gdj1" value="17e941d108ce3120L" />
                  <uo k="s:originTrace" v="n:982871510068000160" />
                </node>
                <node concept="11gdke" id="wT" role="37wK5m">
                  <property role="11gdj1" value="17e941d108ce3173L" />
                  <uo k="s:originTrace" v="n:982871510068000160" />
                </node>
                <node concept="Xl_RD" id="wU" role="37wK5m">
                  <property role="Xl_RC" value="template" />
                  <uo k="s:originTrace" v="n:982871510068000160" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="wM" role="37wK5m">
              <ref role="3cqZAo" node="wG" resolve="container" />
              <uo k="s:originTrace" v="n:982871510068000160" />
            </node>
            <node concept="3clFbT" id="wN" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:982871510068000160" />
            </node>
            <node concept="3clFbT" id="wO" role="37wK5m">
              <uo k="s:originTrace" v="n:982871510068000160" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="wE" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:982871510068000160" />
        <node concept="3Tm1VV" id="wV" role="1B3o_S">
          <uo k="s:originTrace" v="n:982871510068000160" />
        </node>
        <node concept="3uibUv" id="wW" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:982871510068000160" />
        </node>
        <node concept="2AHcQZ" id="wX" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:982871510068000160" />
        </node>
        <node concept="3clFbS" id="wY" role="3clF47">
          <uo k="s:originTrace" v="n:982871510068000160" />
          <node concept="3cpWs6" id="x0" role="3cqZAp">
            <uo k="s:originTrace" v="n:982871510068000160" />
            <node concept="2ShNRf" id="x1" role="3cqZAk">
              <uo k="s:originTrace" v="n:6836281137582788947" />
              <node concept="YeOm9" id="x2" role="2ShVmc">
                <uo k="s:originTrace" v="n:6836281137582788947" />
                <node concept="1Y3b0j" id="x3" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:6836281137582788947" />
                  <node concept="3Tm1VV" id="x4" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6836281137582788947" />
                  </node>
                  <node concept="3clFb_" id="x5" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:6836281137582788947" />
                    <node concept="3Tm1VV" id="x7" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582788947" />
                    </node>
                    <node concept="3uibUv" id="x8" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:6836281137582788947" />
                    </node>
                    <node concept="3clFbS" id="x9" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582788947" />
                      <node concept="3cpWs6" id="xb" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582788947" />
                        <node concept="2ShNRf" id="xc" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582788947" />
                          <node concept="1pGfFk" id="xd" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:6836281137582788947" />
                            <node concept="Xl_RD" id="xe" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c895902e2(jetbrains.mps.lang.generator.constraints)" />
                              <uo k="s:originTrace" v="n:6836281137582788947" />
                            </node>
                            <node concept="Xl_RD" id="xf" role="37wK5m">
                              <property role="Xl_RC" value="6836281137582788947" />
                              <uo k="s:originTrace" v="n:6836281137582788947" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="xa" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582788947" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="x6" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:6836281137582788947" />
                    <node concept="3Tm1VV" id="xg" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582788947" />
                    </node>
                    <node concept="3uibUv" id="xh" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:6836281137582788947" />
                    </node>
                    <node concept="37vLTG" id="xi" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:6836281137582788947" />
                      <node concept="3uibUv" id="xl" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:6836281137582788947" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="xj" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582788947" />
                      <node concept="3clFbF" id="xm" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582788949" />
                        <node concept="2ShNRf" id="xn" role="3clFbG">
                          <uo k="s:originTrace" v="n:6836281137582788950" />
                          <node concept="1pGfFk" id="xo" role="2ShVmc">
                            <ref role="37wK5l" to="o8zo:4k9eBec$QVW" resolve="ModelPlusImportedScope" />
                            <uo k="s:originTrace" v="n:6836281137582788951" />
                            <node concept="2OqwBi" id="xp" role="37wK5m">
                              <uo k="s:originTrace" v="n:6836281137582788955" />
                              <node concept="1DoJHT" id="xs" role="2Oq$k0">
                                <property role="1Dpdpm" value="getContextNode" />
                                <uo k="s:originTrace" v="n:6836281137582788956" />
                                <node concept="3uibUv" id="xu" role="1Ez5kq">
                                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                </node>
                                <node concept="37vLTw" id="xv" role="1EMhIo">
                                  <ref role="3cqZAo" node="xi" resolve="_context" />
                                </node>
                              </node>
                              <node concept="I4A8Y" id="xt" role="2OqNvi">
                                <uo k="s:originTrace" v="n:6836281137582788957" />
                              </node>
                            </node>
                            <node concept="3clFbT" id="xq" role="37wK5m">
                              <property role="3clFbU" value="true" />
                              <uo k="s:originTrace" v="n:6836281137582788953" />
                            </node>
                            <node concept="35c_gC" id="xr" role="37wK5m">
                              <ref role="35c_gD" to="tpf8:gcjVnq8" resolve="TemplateSwitch" />
                              <uo k="s:originTrace" v="n:6836281137582788954" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="xk" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582788947" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="wZ" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:982871510068000160" />
        </node>
      </node>
      <node concept="3uibUv" id="wF" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:982871510068000160" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="xw">
    <property role="TrG5h" value="TemplateSwitch_Constraints" />
    <uo k="s:originTrace" v="n:5858775738865267759" />
    <node concept="3Tm1VV" id="xx" role="1B3o_S">
      <uo k="s:originTrace" v="n:5858775738865267759" />
    </node>
    <node concept="3uibUv" id="xy" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:5858775738865267759" />
    </node>
    <node concept="3clFbW" id="xz" role="jymVt">
      <uo k="s:originTrace" v="n:5858775738865267759" />
      <node concept="37vLTG" id="xB" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:5858775738865267759" />
        <node concept="3uibUv" id="xE" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:5858775738865267759" />
        </node>
      </node>
      <node concept="3cqZAl" id="xC" role="3clF45">
        <uo k="s:originTrace" v="n:5858775738865267759" />
      </node>
      <node concept="3clFbS" id="xD" role="3clF47">
        <uo k="s:originTrace" v="n:5858775738865267759" />
        <node concept="XkiVB" id="xF" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:5858775738865267759" />
          <node concept="1BaE9c" id="xI" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="TemplateSwitch$j_" />
            <uo k="s:originTrace" v="n:5858775738865267759" />
            <node concept="2YIFZM" id="xK" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:5858775738865267759" />
              <node concept="11gdke" id="xL" role="37wK5m">
                <property role="11gdj1" value="b401a68083254110L" />
                <uo k="s:originTrace" v="n:5858775738865267759" />
              </node>
              <node concept="11gdke" id="xM" role="37wK5m">
                <property role="11gdj1" value="8fd384331ff25befL" />
                <uo k="s:originTrace" v="n:5858775738865267759" />
              </node>
              <node concept="11gdke" id="xN" role="37wK5m">
                <property role="11gdj1" value="10313ed7688L" />
                <uo k="s:originTrace" v="n:5858775738865267759" />
              </node>
              <node concept="Xl_RD" id="xO" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.generator.structure.TemplateSwitch" />
                <uo k="s:originTrace" v="n:5858775738865267759" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="xJ" role="37wK5m">
            <ref role="3cqZAo" node="xB" resolve="initContext" />
            <uo k="s:originTrace" v="n:5858775738865267759" />
          </node>
        </node>
        <node concept="3clFbF" id="xG" role="3cqZAp">
          <uo k="s:originTrace" v="n:5858775738865267759" />
          <node concept="1rXfSq" id="xP" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.PropertyConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:5858775738865267759" />
            <node concept="2ShNRf" id="xQ" role="37wK5m">
              <uo k="s:originTrace" v="n:5858775738865267759" />
              <node concept="1pGfFk" id="xR" role="2ShVmc">
                <ref role="37wK5l" node="xX" resolve="TemplateSwitch_Constraints.NeedCallSite_PD" />
                <uo k="s:originTrace" v="n:5858775738865267759" />
                <node concept="Xjq3P" id="xS" role="37wK5m">
                  <uo k="s:originTrace" v="n:5858775738865267759" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="xH" role="3cqZAp">
          <uo k="s:originTrace" v="n:5858775738865267759" />
          <node concept="1rXfSq" id="xT" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:5858775738865267759" />
            <node concept="2ShNRf" id="xU" role="37wK5m">
              <uo k="s:originTrace" v="n:5858775738865267759" />
              <node concept="1pGfFk" id="xV" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="zc" resolve="TemplateSwitch_Constraints.RD1" />
                <uo k="s:originTrace" v="n:5858775738865267759" />
                <node concept="Xjq3P" id="xW" role="37wK5m">
                  <uo k="s:originTrace" v="n:5858775738865267759" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="x$" role="jymVt">
      <uo k="s:originTrace" v="n:5858775738865267759" />
    </node>
    <node concept="312cEu" id="x_" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="NeedCallSite_PD" />
      <uo k="s:originTrace" v="n:5858775738865267759" />
      <node concept="3clFbW" id="xX" role="jymVt">
        <uo k="s:originTrace" v="n:5858775738865267759" />
        <node concept="3cqZAl" id="y2" role="3clF45">
          <uo k="s:originTrace" v="n:5858775738865267759" />
        </node>
        <node concept="3Tm1VV" id="y3" role="1B3o_S">
          <uo k="s:originTrace" v="n:5858775738865267759" />
        </node>
        <node concept="3clFbS" id="y4" role="3clF47">
          <uo k="s:originTrace" v="n:5858775738865267759" />
          <node concept="XkiVB" id="y6" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BasePropertyConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean,boolean)" resolve="BasePropertyConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:5858775738865267759" />
            <node concept="1BaE9c" id="y7" role="37wK5m">
              <property role="1ouuDV" value="PROPS" />
              <property role="1BaxDp" value="needCallSite$fSr_" />
              <uo k="s:originTrace" v="n:5858775738865267759" />
              <node concept="2YIFZM" id="yc" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:5858775738865267759" />
                <node concept="11gdke" id="yd" role="37wK5m">
                  <property role="11gdj1" value="b401a68083254110L" />
                  <uo k="s:originTrace" v="n:5858775738865267759" />
                </node>
                <node concept="11gdke" id="ye" role="37wK5m">
                  <property role="11gdj1" value="8fd384331ff25befL" />
                  <uo k="s:originTrace" v="n:5858775738865267759" />
                </node>
                <node concept="11gdke" id="yf" role="37wK5m">
                  <property role="11gdj1" value="da3dc6e5137e9b1L" />
                  <uo k="s:originTrace" v="n:5858775738865267759" />
                </node>
                <node concept="11gdke" id="yg" role="37wK5m">
                  <property role="11gdj1" value="18ecef336962ae09L" />
                  <uo k="s:originTrace" v="n:5858775738865267759" />
                </node>
                <node concept="Xl_RD" id="yh" role="37wK5m">
                  <property role="Xl_RC" value="needCallSite" />
                  <uo k="s:originTrace" v="n:5858775738865267759" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="y8" role="37wK5m">
              <ref role="3cqZAo" node="y5" resolve="container" />
              <uo k="s:originTrace" v="n:5858775738865267759" />
            </node>
            <node concept="3clFbT" id="y9" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:5858775738865267759" />
            </node>
            <node concept="3clFbT" id="ya" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:5858775738865267759" />
            </node>
            <node concept="3clFbT" id="yb" role="37wK5m">
              <uo k="s:originTrace" v="n:5858775738865267759" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="y5" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:5858775738865267759" />
          <node concept="3uibUv" id="yi" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:5858775738865267759" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="xY" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getValue" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:5858775738865267759" />
        <node concept="3Tm1VV" id="yj" role="1B3o_S">
          <uo k="s:originTrace" v="n:5858775738865267759" />
        </node>
        <node concept="3uibUv" id="yk" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          <uo k="s:originTrace" v="n:5858775738865267759" />
        </node>
        <node concept="37vLTG" id="yl" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:5858775738865267759" />
          <node concept="3Tqbb2" id="yo" role="1tU5fm">
            <uo k="s:originTrace" v="n:5858775738865267759" />
          </node>
        </node>
        <node concept="2AHcQZ" id="ym" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:5858775738865267759" />
        </node>
        <node concept="3clFbS" id="yn" role="3clF47">
          <uo k="s:originTrace" v="n:5324767449429229524" />
          <node concept="3clFbJ" id="yp" role="3cqZAp">
            <uo k="s:originTrace" v="n:5324767449429229773" />
            <node concept="2OqwBi" id="yr" role="3clFbw">
              <uo k="s:originTrace" v="n:5324767449429233775" />
              <node concept="2OqwBi" id="yt" role="2Oq$k0">
                <uo k="s:originTrace" v="n:5324767449429231980" />
                <node concept="37vLTw" id="yv" role="2Oq$k0">
                  <ref role="3cqZAo" node="yl" resolve="node" />
                  <uo k="s:originTrace" v="n:5324767449429231184" />
                </node>
                <node concept="3TrEf2" id="yw" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpf8:gcphYgk" resolve="modifiedSwitch" />
                  <uo k="s:originTrace" v="n:5324767449429233287" />
                </node>
              </node>
              <node concept="3x8VRR" id="yu" role="2OqNvi">
                <uo k="s:originTrace" v="n:5324767449429234013" />
              </node>
            </node>
            <node concept="3clFbS" id="ys" role="3clFbx">
              <uo k="s:originTrace" v="n:5324767449429229775" />
              <node concept="3cpWs6" id="yx" role="3cqZAp">
                <uo k="s:originTrace" v="n:5324767449429243487" />
                <node concept="2OqwBi" id="yy" role="3cqZAk">
                  <uo k="s:originTrace" v="n:5324767449429236370" />
                  <node concept="2OqwBi" id="yz" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:5324767449429234223" />
                    <node concept="37vLTw" id="y_" role="2Oq$k0">
                      <ref role="3cqZAo" node="yl" resolve="node" />
                      <uo k="s:originTrace" v="n:5324767449429234192" />
                    </node>
                    <node concept="3TrEf2" id="yA" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpf8:gcphYgk" resolve="modifiedSwitch" />
                      <uo k="s:originTrace" v="n:5324767449429235193" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="y$" role="2OqNvi">
                    <ref role="3TsBF5" to="tpf8:1zGVNdDoES9" resolve="needCallSite" />
                    <uo k="s:originTrace" v="n:5324767449429236622" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="yq" role="3cqZAp">
            <uo k="s:originTrace" v="n:5324767449429242356" />
            <node concept="2OqwBi" id="yB" role="3cqZAk">
              <uo k="s:originTrace" v="n:5324767449429241080" />
              <node concept="37vLTw" id="yC" role="2Oq$k0">
                <ref role="3cqZAo" node="yl" resolve="node" />
                <uo k="s:originTrace" v="n:5324767449429240047" />
              </node>
              <node concept="3TrcHB" id="yD" role="2OqNvi">
                <ref role="3TsBF5" to="tpf8:1zGVNdDoES9" resolve="needCallSite" />
                <uo k="s:originTrace" v="n:5324767449429241978" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="xZ" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="setPropertyValue" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:5858775738865267759" />
        <node concept="3Tm1VV" id="yE" role="1B3o_S">
          <uo k="s:originTrace" v="n:5858775738865267759" />
        </node>
        <node concept="3cqZAl" id="yF" role="3clF45">
          <uo k="s:originTrace" v="n:5858775738865267759" />
        </node>
        <node concept="37vLTG" id="yG" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:5858775738865267759" />
          <node concept="3Tqbb2" id="yK" role="1tU5fm">
            <uo k="s:originTrace" v="n:5858775738865267759" />
          </node>
        </node>
        <node concept="37vLTG" id="yH" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:5858775738865267759" />
          <node concept="3uibUv" id="yL" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            <uo k="s:originTrace" v="n:5858775738865267759" />
          </node>
        </node>
        <node concept="2AHcQZ" id="yI" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:5858775738865267759" />
        </node>
        <node concept="3clFbS" id="yJ" role="3clF47">
          <uo k="s:originTrace" v="n:5858775738865267759" />
          <node concept="3clFbF" id="yM" role="3cqZAp">
            <uo k="s:originTrace" v="n:5858775738865267759" />
            <node concept="1rXfSq" id="yN" role="3clFbG">
              <ref role="37wK5l" node="y0" resolve="staticSetPropertyValue" />
              <uo k="s:originTrace" v="n:5858775738865267759" />
              <node concept="37vLTw" id="yO" role="37wK5m">
                <ref role="3cqZAo" node="yG" resolve="node" />
                <uo k="s:originTrace" v="n:5858775738865267759" />
              </node>
              <node concept="2YIFZM" id="yP" role="37wK5m">
                <ref role="1Pybhc" to="i8bi:5IkW5anFfnn" resolve="SPropertyOperations" />
                <ref role="37wK5l" to="i8bi:7xvVBHRimm7" resolve="castBoolean" />
                <uo k="s:originTrace" v="n:5858775738865267759" />
                <node concept="37vLTw" id="yQ" role="37wK5m">
                  <ref role="3cqZAo" node="yH" resolve="propertyValue" />
                  <uo k="s:originTrace" v="n:5858775738865267759" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2YIFZL" id="y0" role="jymVt">
        <property role="TrG5h" value="staticSetPropertyValue" />
        <uo k="s:originTrace" v="n:5858775738865267759" />
        <node concept="3clFbS" id="yR" role="3clF47">
          <uo k="s:originTrace" v="n:5324767449429236957" />
          <node concept="3clFbJ" id="yW" role="3cqZAp">
            <uo k="s:originTrace" v="n:5324767449429237021" />
            <node concept="2OqwBi" id="yY" role="3clFbw">
              <uo k="s:originTrace" v="n:5324767449429239013" />
              <node concept="2OqwBi" id="z0" role="2Oq$k0">
                <uo k="s:originTrace" v="n:5324767449429237823" />
                <node concept="37vLTw" id="z2" role="2Oq$k0">
                  <ref role="3cqZAo" node="yU" resolve="node" />
                  <uo k="s:originTrace" v="n:5324767449429237046" />
                </node>
                <node concept="3TrEf2" id="z3" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpf8:gcphYgk" resolve="modifiedSwitch" />
                  <uo k="s:originTrace" v="n:5324767449429238670" />
                </node>
              </node>
              <node concept="3x8VRR" id="z1" role="2OqNvi">
                <uo k="s:originTrace" v="n:5324767449429239245" />
              </node>
            </node>
            <node concept="3clFbS" id="yZ" role="3clFbx">
              <uo k="s:originTrace" v="n:5324767449429237023" />
              <node concept="3cpWs6" id="z4" role="3cqZAp">
                <uo k="s:originTrace" v="n:5324767449429239418" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="yX" role="3cqZAp">
            <uo k="s:originTrace" v="n:5324767449429253729" />
            <node concept="37vLTI" id="z5" role="3clFbG">
              <uo k="s:originTrace" v="n:5324767449429255297" />
              <node concept="37vLTw" id="z6" role="37vLTx">
                <ref role="3cqZAo" node="yV" resolve="propertyValue" />
                <uo k="s:originTrace" v="n:5324767449429255635" />
              </node>
              <node concept="2OqwBi" id="z7" role="37vLTJ">
                <uo k="s:originTrace" v="n:5324767449429254375" />
                <node concept="37vLTw" id="z8" role="2Oq$k0">
                  <ref role="3cqZAo" node="yU" resolve="node" />
                  <uo k="s:originTrace" v="n:5324767449429253728" />
                </node>
                <node concept="3TrcHB" id="z9" role="2OqNvi">
                  <ref role="3TsBF5" to="tpf8:1zGVNdDoES9" resolve="needCallSite" />
                  <uo k="s:originTrace" v="n:5324767449429257152" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="yS" role="1B3o_S">
          <uo k="s:originTrace" v="n:5858775738865267759" />
        </node>
        <node concept="3cqZAl" id="yT" role="3clF45">
          <uo k="s:originTrace" v="n:5858775738865267759" />
        </node>
        <node concept="37vLTG" id="yU" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:5858775738865267759" />
          <node concept="3Tqbb2" id="za" role="1tU5fm">
            <uo k="s:originTrace" v="n:5858775738865267759" />
          </node>
        </node>
        <node concept="37vLTG" id="yV" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:5858775738865267759" />
          <node concept="10P_77" id="zb" role="1tU5fm">
            <uo k="s:originTrace" v="n:5858775738865267759" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="y1" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BasePropertyConstraintsDescriptor" resolve="BasePropertyConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:5858775738865267759" />
      </node>
    </node>
    <node concept="312cEu" id="xA" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:5858775738865267759" />
      <node concept="3clFbW" id="zc" role="jymVt">
        <uo k="s:originTrace" v="n:5858775738865267759" />
        <node concept="37vLTG" id="zf" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:5858775738865267759" />
          <node concept="3uibUv" id="zi" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:5858775738865267759" />
          </node>
        </node>
        <node concept="3cqZAl" id="zg" role="3clF45">
          <uo k="s:originTrace" v="n:5858775738865267759" />
        </node>
        <node concept="3clFbS" id="zh" role="3clF47">
          <uo k="s:originTrace" v="n:5858775738865267759" />
          <node concept="XkiVB" id="zj" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:5858775738865267759" />
            <node concept="1BaE9c" id="zk" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="modifiedSwitch$h3H5" />
              <uo k="s:originTrace" v="n:5858775738865267759" />
              <node concept="2YIFZM" id="zo" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:5858775738865267759" />
                <node concept="11gdke" id="zp" role="37wK5m">
                  <property role="11gdj1" value="b401a68083254110L" />
                  <uo k="s:originTrace" v="n:5858775738865267759" />
                </node>
                <node concept="11gdke" id="zq" role="37wK5m">
                  <property role="11gdj1" value="8fd384331ff25befL" />
                  <uo k="s:originTrace" v="n:5858775738865267759" />
                </node>
                <node concept="11gdke" id="zr" role="37wK5m">
                  <property role="11gdj1" value="10313ed7688L" />
                  <uo k="s:originTrace" v="n:5858775738865267759" />
                </node>
                <node concept="11gdke" id="zs" role="37wK5m">
                  <property role="11gdj1" value="1031947e414L" />
                  <uo k="s:originTrace" v="n:5858775738865267759" />
                </node>
                <node concept="Xl_RD" id="zt" role="37wK5m">
                  <property role="Xl_RC" value="modifiedSwitch" />
                  <uo k="s:originTrace" v="n:5858775738865267759" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="zl" role="37wK5m">
              <ref role="3cqZAo" node="zf" resolve="container" />
              <uo k="s:originTrace" v="n:5858775738865267759" />
            </node>
            <node concept="3clFbT" id="zm" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:5858775738865267759" />
            </node>
            <node concept="3clFbT" id="zn" role="37wK5m">
              <uo k="s:originTrace" v="n:5858775738865267759" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="zd" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:5858775738865267759" />
        <node concept="3Tm1VV" id="zu" role="1B3o_S">
          <uo k="s:originTrace" v="n:5858775738865267759" />
        </node>
        <node concept="3uibUv" id="zv" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:5858775738865267759" />
        </node>
        <node concept="2AHcQZ" id="zw" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:5858775738865267759" />
        </node>
        <node concept="3clFbS" id="zx" role="3clF47">
          <uo k="s:originTrace" v="n:5858775738865267759" />
          <node concept="3cpWs6" id="zz" role="3cqZAp">
            <uo k="s:originTrace" v="n:5858775738865267759" />
            <node concept="2ShNRf" id="z$" role="3cqZAk">
              <uo k="s:originTrace" v="n:6836281137582788743" />
              <node concept="YeOm9" id="z_" role="2ShVmc">
                <uo k="s:originTrace" v="n:6836281137582788743" />
                <node concept="1Y3b0j" id="zA" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:6836281137582788743" />
                  <node concept="3Tm1VV" id="zB" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6836281137582788743" />
                  </node>
                  <node concept="3clFb_" id="zC" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:6836281137582788743" />
                    <node concept="3Tm1VV" id="zE" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582788743" />
                    </node>
                    <node concept="3uibUv" id="zF" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:6836281137582788743" />
                    </node>
                    <node concept="3clFbS" id="zG" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582788743" />
                      <node concept="3cpWs6" id="zI" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582788743" />
                        <node concept="2ShNRf" id="zJ" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582788743" />
                          <node concept="1pGfFk" id="zK" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:6836281137582788743" />
                            <node concept="Xl_RD" id="zL" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c895902e2(jetbrains.mps.lang.generator.constraints)" />
                              <uo k="s:originTrace" v="n:6836281137582788743" />
                            </node>
                            <node concept="Xl_RD" id="zM" role="37wK5m">
                              <property role="Xl_RC" value="6836281137582788743" />
                              <uo k="s:originTrace" v="n:6836281137582788743" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="zH" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582788743" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="zD" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:6836281137582788743" />
                    <node concept="3Tm1VV" id="zN" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582788743" />
                    </node>
                    <node concept="3uibUv" id="zO" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:6836281137582788743" />
                    </node>
                    <node concept="37vLTG" id="zP" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:6836281137582788743" />
                      <node concept="3uibUv" id="zS" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:6836281137582788743" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="zQ" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582788743" />
                      <node concept="3clFbF" id="zT" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582788745" />
                        <node concept="2ShNRf" id="zU" role="3clFbG">
                          <uo k="s:originTrace" v="n:6836281137582788746" />
                          <node concept="1pGfFk" id="zV" role="2ShVmc">
                            <ref role="37wK5l" to="o8zo:4k9eBec$QVW" resolve="ModelPlusImportedScope" />
                            <uo k="s:originTrace" v="n:6836281137582788747" />
                            <node concept="2OqwBi" id="zW" role="37wK5m">
                              <uo k="s:originTrace" v="n:6836281137582788751" />
                              <node concept="1DoJHT" id="zZ" role="2Oq$k0">
                                <property role="1Dpdpm" value="getContextNode" />
                                <uo k="s:originTrace" v="n:6836281137582788752" />
                                <node concept="3uibUv" id="$1" role="1Ez5kq">
                                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                </node>
                                <node concept="37vLTw" id="$2" role="1EMhIo">
                                  <ref role="3cqZAo" node="zP" resolve="_context" />
                                </node>
                              </node>
                              <node concept="I4A8Y" id="$0" role="2OqNvi">
                                <uo k="s:originTrace" v="n:6836281137582788753" />
                              </node>
                            </node>
                            <node concept="3clFbT" id="zX" role="37wK5m">
                              <property role="3clFbU" value="true" />
                              <uo k="s:originTrace" v="n:6836281137582788749" />
                            </node>
                            <node concept="35c_gC" id="zY" role="37wK5m">
                              <ref role="35c_gD" to="tpf8:gcjVnq8" resolve="TemplateSwitch" />
                              <uo k="s:originTrace" v="n:6836281137582788750" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="zR" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582788743" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="zy" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:5858775738865267759" />
        </node>
      </node>
      <node concept="3uibUv" id="ze" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:5858775738865267759" />
      </node>
    </node>
  </node>
</model>

