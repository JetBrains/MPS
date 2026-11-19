<?xml version="1.0" encoding="UTF-8"?>
<model ref="00000000-0000-4000-5f02-5beb5f025beb/i:f871921(checkpoints/jetbrains.mps.lang.behavior.constraints@descriptorclasses)">
  <persistence version="9" />
  <attribute name="checkpoint" value="DescriptorClasses" />
  <attribute name="generation-plan" value="AspectCPS" />
  <attribute name="user-objects" value="true" />
  <languages />
  <imports>
    <import index="xxh2" ref="r:6786d6ee-e5cc-4a77-9efd-65a8dca8b187(jetbrains.mps.lang.behavior.constraints)" />
    <import index="mg3u" ref="r:0799ed23-f21a-4dba-ac61-5b80d66bec13(jetbrains.mps.lang.behavior.plugin)" />
    <import index="tp25" ref="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" />
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="79pl" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.runtime.base(MPS.Core/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="tpcn" ref="r:00000000-0000-4000-0000-011c8959028b(jetbrains.mps.lang.structure.behavior)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="2k9e" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter.structure(MPS.Core/)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="35tq" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.scope(MPS.Core/)" />
    <import index="ze1i" ref="8e98f4e2-decf-4e97-bf80-9109e8b759ee/java:jetbrains.mps.smodel.runtime(jetbrains.mps.lang.constraints.rules.runtime/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="79pm" ref="8e98f4e2-decf-4e97-bf80-9109e8b759ee/java:jetbrains.mps.smodel.runtime.base(jetbrains.mps.lang.constraints.rules.runtime/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="1i04" ref="r:3270011d-8b2d-4938-8dff-d256a759e017(jetbrains.mps.lang.behavior.structure)" />
  </imports>
  <registry>
    <language id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts">
      <concept id="1161622665029" name="jetbrains.mps.lang.sharedConcepts.structure.ConceptFunctionParameter_model" flags="nn" index="1Q6Npb" />
    </language>
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
    <language id="69b8a993-9b87-4d96-bf0c-3559f4bb0c63" name="jetbrains.mps.lang.slanguage">
      <concept id="2030416617761226491" name="jetbrains.mps.lang.slanguage.structure.Model_IsAspectOperation" flags="nn" index="3zA4fs">
        <reference id="2030416617761226680" name="aspect" index="3zA4av" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1176544042499" name="jetbrains.mps.lang.typesystem.structure.Node_TypeOperation" flags="nn" index="3JvlWi" />
      <concept id="1178870617262" name="jetbrains.mps.lang.typesystem.structure.CoerceExpression" flags="nn" index="1UaxmW">
        <child id="1178870894644" name="pattern" index="1Ub_4A" />
        <child id="1178870894645" name="nodeToCoerce" index="1Ub_4B" />
      </concept>
      <concept id="1178871491133" name="jetbrains.mps.lang.typesystem.structure.CoerceStrongExpression" flags="nn" index="1UdQGJ" />
      <concept id="1174642788531" name="jetbrains.mps.lang.typesystem.structure.ConceptReference" flags="ig" index="1YaCAy">
        <reference id="1174642800329" name="concept" index="1YaFvo" />
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
      <concept id="1140725362528" name="jetbrains.mps.lang.smodel.structure.Link_SetTargetOperation" flags="nn" index="2oxUTD">
        <child id="1140725362529" name="linkTarget" index="2oxUTC" />
      </concept>
      <concept id="1138661924179" name="jetbrains.mps.lang.smodel.structure.Property_SetOperation" flags="nn" index="tyxLq">
        <child id="1138662048170" name="value" index="tz02z" />
      </concept>
      <concept id="1173122760281" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorsOperation" flags="nn" index="z$bX8" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="1145567426890" name="jetbrains.mps.lang.smodel.structure.SNodeListCreator" flags="nn" index="2T8Vx0">
        <child id="1145567471833" name="createdType" index="2T96Bj" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
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
      <concept id="1144146199828" name="jetbrains.mps.lang.smodel.structure.Node_CopyOperation" flags="nn" index="1$rogu" />
      <concept id="5944356402132808749" name="jetbrains.mps.lang.smodel.structure.ConceptSwitchStatement" flags="nn" index="1_3QMa">
        <child id="6039268229365417680" name="defaultBlock" index="1prKM_" />
        <child id="5944356402132808753" name="case" index="1_3QMm" />
        <child id="5944356402132808752" name="expression" index="1_3QMn" />
      </concept>
      <concept id="1219352745532" name="jetbrains.mps.lang.smodel.structure.NodeRefExpression" flags="nn" index="3B5_sB">
        <reference id="1219352800908" name="referentNode" index="3B5MYn" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
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
      <concept id="1228341669568" name="jetbrains.mps.lang.smodel.structure.Node_DetachOperation" flags="nn" index="3YRAZt" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
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
      <concept id="1176906603202" name="jetbrains.mps.baseLanguage.collections.structure.BinaryOperation" flags="nn" index="56pJg">
        <child id="1176906787974" name="rightExpression" index="576Qk" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1235566554328" name="jetbrains.mps.baseLanguage.collections.structure.AnyOperation" flags="nn" index="2HwmR7" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1180964022718" name="jetbrains.mps.baseLanguage.collections.structure.ConcatOperation" flags="nn" index="3QWeyG" />
    </language>
  </registry>
  <node concept="312cEu" id="0">
    <property role="3GE5qa" value="" />
    <property role="TrG5h" value="ConceptBehavior_Constraints" />
    <uo k="s:originTrace" v="n:1225194245328" />
    <node concept="3Tm1VV" id="1" role="1B3o_S">
      <uo k="s:originTrace" v="n:1225194245328" />
    </node>
    <node concept="3uibUv" id="2" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:1225194245328" />
    </node>
    <node concept="3clFbW" id="3" role="jymVt">
      <uo k="s:originTrace" v="n:1225194245328" />
      <node concept="37vLTG" id="7" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:1225194245328" />
        <node concept="3uibUv" id="a" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:1225194245328" />
        </node>
      </node>
      <node concept="3cqZAl" id="8" role="3clF45">
        <uo k="s:originTrace" v="n:1225194245328" />
      </node>
      <node concept="3clFbS" id="9" role="3clF47">
        <uo k="s:originTrace" v="n:1225194245328" />
        <node concept="XkiVB" id="b" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:1225194245328" />
          <node concept="1BaE9c" id="e" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="ConceptBehavior$2" />
            <uo k="s:originTrace" v="n:1225194245328" />
            <node concept="2YIFZM" id="g" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:1225194245328" />
              <node concept="11gdke" id="h" role="37wK5m">
                <property role="11gdj1" value="af65afd8f0dd4942L" />
                <uo k="s:originTrace" v="n:1225194245328" />
              </node>
              <node concept="11gdke" id="i" role="37wK5m">
                <property role="11gdj1" value="87d963a55f2a9db1L" />
                <uo k="s:originTrace" v="n:1225194245328" />
              </node>
              <node concept="11gdke" id="j" role="37wK5m">
                <property role="11gdj1" value="11d43447b1aL" />
                <uo k="s:originTrace" v="n:1225194245328" />
              </node>
              <node concept="Xl_RD" id="k" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.behavior.structure.ConceptBehavior" />
                <uo k="s:originTrace" v="n:1225194245328" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="f" role="37wK5m">
            <ref role="3cqZAo" node="7" resolve="initContext" />
            <uo k="s:originTrace" v="n:1225194245328" />
          </node>
        </node>
        <node concept="3clFbF" id="c" role="3cqZAp">
          <uo k="s:originTrace" v="n:1225194245328" />
          <node concept="1rXfSq" id="l" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.PropertyConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:1225194245328" />
            <node concept="2ShNRf" id="m" role="37wK5m">
              <uo k="s:originTrace" v="n:1225194245328" />
              <node concept="1pGfFk" id="n" role="2ShVmc">
                <ref role="37wK5l" node="17" resolve="ConceptBehavior_Constraints.Name_PD" />
                <uo k="s:originTrace" v="n:1225194245328" />
                <node concept="Xjq3P" id="o" role="37wK5m">
                  <uo k="s:originTrace" v="n:1225194245328" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="d" role="3cqZAp">
          <uo k="s:originTrace" v="n:1225194245328" />
          <node concept="1rXfSq" id="p" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.setCanBeRoot(jetbrains.mps.smodel.runtime.ConstraintFunction)" resolve="setCanBeRoot" />
            <uo k="s:originTrace" v="n:1225194245328" />
            <node concept="2ShNRf" id="q" role="37wK5m">
              <uo k="s:originTrace" v="n:1225194245328" />
              <node concept="YeOm9" id="r" role="2ShVmc">
                <uo k="s:originTrace" v="n:1225194245328" />
                <node concept="1Y3b0j" id="s" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <uo k="s:originTrace" v="n:1225194245328" />
                  <node concept="3Tm1VV" id="t" role="1B3o_S">
                    <uo k="s:originTrace" v="n:1225194245328" />
                  </node>
                  <node concept="3clFb_" id="u" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="invoke" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <uo k="s:originTrace" v="n:1225194245328" />
                    <node concept="3Tm1VV" id="x" role="1B3o_S">
                      <uo k="s:originTrace" v="n:1225194245328" />
                    </node>
                    <node concept="2AHcQZ" id="y" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:1225194245328" />
                    </node>
                    <node concept="3uibUv" id="z" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      <uo k="s:originTrace" v="n:1225194245328" />
                    </node>
                    <node concept="37vLTG" id="$" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <uo k="s:originTrace" v="n:1225194245328" />
                      <node concept="3uibUv" id="B" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeRoot" resolve="ConstraintContext_CanBeRoot" />
                        <uo k="s:originTrace" v="n:1225194245328" />
                      </node>
                      <node concept="2AHcQZ" id="C" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        <uo k="s:originTrace" v="n:1225194245328" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="_" role="3clF46">
                      <property role="TrG5h" value="checkingNodeContext" />
                      <uo k="s:originTrace" v="n:1225194245328" />
                      <node concept="3uibUv" id="D" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                        <uo k="s:originTrace" v="n:1225194245328" />
                      </node>
                      <node concept="2AHcQZ" id="E" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                        <uo k="s:originTrace" v="n:1225194245328" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="A" role="3clF47">
                      <uo k="s:originTrace" v="n:1225194245328" />
                      <node concept="3cpWs8" id="F" role="3cqZAp">
                        <uo k="s:originTrace" v="n:1225194245328" />
                        <node concept="3cpWsn" id="K" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:1225194245328" />
                          <node concept="10P_77" id="L" role="1tU5fm">
                            <uo k="s:originTrace" v="n:1225194245328" />
                          </node>
                          <node concept="1rXfSq" id="M" role="33vP2m">
                            <ref role="37wK5l" node="6" resolve="staticCanBeARoot" />
                            <uo k="s:originTrace" v="n:1225194245328" />
                            <node concept="2OqwBi" id="N" role="37wK5m">
                              <uo k="s:originTrace" v="n:1225194245328" />
                              <node concept="37vLTw" id="O" role="2Oq$k0">
                                <ref role="3cqZAo" node="$" resolve="context" />
                                <uo k="s:originTrace" v="n:1225194245328" />
                              </node>
                              <node concept="liA8E" id="P" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeRoot.getModel()" resolve="getModel" />
                                <uo k="s:originTrace" v="n:1225194245328" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="G" role="3cqZAp">
                        <uo k="s:originTrace" v="n:1225194245328" />
                      </node>
                      <node concept="3clFbJ" id="H" role="3cqZAp">
                        <uo k="s:originTrace" v="n:1225194245328" />
                        <node concept="3clFbS" id="Q" role="3clFbx">
                          <uo k="s:originTrace" v="n:1225194245328" />
                          <node concept="3clFbF" id="S" role="3cqZAp">
                            <uo k="s:originTrace" v="n:1225194245328" />
                            <node concept="2OqwBi" id="T" role="3clFbG">
                              <uo k="s:originTrace" v="n:1225194245328" />
                              <node concept="37vLTw" id="U" role="2Oq$k0">
                                <ref role="3cqZAo" node="_" resolve="checkingNodeContext" />
                                <uo k="s:originTrace" v="n:1225194245328" />
                              </node>
                              <node concept="liA8E" id="V" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                                <uo k="s:originTrace" v="n:1225194245328" />
                                <node concept="1dyn4i" id="W" role="37wK5m">
                                  <property role="1dyqJU" value="canBeRootBreakingPoint" />
                                  <uo k="s:originTrace" v="n:1225194245328" />
                                  <node concept="2ShNRf" id="X" role="1dyrYi">
                                    <uo k="s:originTrace" v="n:1225194245328" />
                                    <node concept="1pGfFk" id="Y" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:1225194245328" />
                                      <node concept="Xl_RD" id="Z" role="37wK5m">
                                        <property role="Xl_RC" value="r:6786d6ee-e5cc-4a77-9efd-65a8dca8b187(jetbrains.mps.lang.behavior.constraints)" />
                                        <uo k="s:originTrace" v="n:1225194245328" />
                                      </node>
                                      <node concept="Xl_RD" id="10" role="37wK5m">
                                        <property role="Xl_RC" value="1227088888254" />
                                        <uo k="s:originTrace" v="n:1225194245328" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Wc70l" id="R" role="3clFbw">
                          <uo k="s:originTrace" v="n:1225194245328" />
                          <node concept="3y3z36" id="11" role="3uHU7w">
                            <uo k="s:originTrace" v="n:1225194245328" />
                            <node concept="10Nm6u" id="13" role="3uHU7w">
                              <uo k="s:originTrace" v="n:1225194245328" />
                            </node>
                            <node concept="37vLTw" id="14" role="3uHU7B">
                              <ref role="3cqZAo" node="_" resolve="checkingNodeContext" />
                              <uo k="s:originTrace" v="n:1225194245328" />
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="12" role="3uHU7B">
                            <uo k="s:originTrace" v="n:1225194245328" />
                            <node concept="37vLTw" id="15" role="3fr31v">
                              <ref role="3cqZAo" node="K" resolve="result" />
                              <uo k="s:originTrace" v="n:1225194245328" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="I" role="3cqZAp">
                        <uo k="s:originTrace" v="n:1225194245328" />
                      </node>
                      <node concept="3clFbF" id="J" role="3cqZAp">
                        <uo k="s:originTrace" v="n:1225194245328" />
                        <node concept="37vLTw" id="16" role="3clFbG">
                          <ref role="3cqZAo" node="K" resolve="result" />
                          <uo k="s:originTrace" v="n:1225194245328" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="v" role="2Ghqu4">
                    <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeRoot" resolve="ConstraintContext_CanBeRoot" />
                    <uo k="s:originTrace" v="n:1225194245328" />
                  </node>
                  <node concept="3uibUv" id="w" role="2Ghqu4">
                    <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    <uo k="s:originTrace" v="n:1225194245328" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4" role="jymVt">
      <uo k="s:originTrace" v="n:1225194245328" />
    </node>
    <node concept="312cEu" id="5" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="Name_PD" />
      <uo k="s:originTrace" v="n:1225194245328" />
      <node concept="3clFbW" id="17" role="jymVt">
        <uo k="s:originTrace" v="n:1225194245328" />
        <node concept="3cqZAl" id="1a" role="3clF45">
          <uo k="s:originTrace" v="n:1225194245328" />
        </node>
        <node concept="3Tm1VV" id="1b" role="1B3o_S">
          <uo k="s:originTrace" v="n:1225194245328" />
        </node>
        <node concept="3clFbS" id="1c" role="3clF47">
          <uo k="s:originTrace" v="n:1225194245328" />
          <node concept="XkiVB" id="1e" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BasePropertyConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean,boolean)" resolve="BasePropertyConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1225194245328" />
            <node concept="1BaE9c" id="1f" role="37wK5m">
              <property role="1ouuDV" value="PROPS" />
              <property role="1BaxDp" value="name$MnvL" />
              <uo k="s:originTrace" v="n:1225194245328" />
              <node concept="2YIFZM" id="1k" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:1225194245328" />
                <node concept="11gdke" id="1l" role="37wK5m">
                  <property role="11gdj1" value="ceab519525ea4f22L" />
                  <uo k="s:originTrace" v="n:1225194245328" />
                </node>
                <node concept="11gdke" id="1m" role="37wK5m">
                  <property role="11gdj1" value="9b92103b95ca8c0cL" />
                  <uo k="s:originTrace" v="n:1225194245328" />
                </node>
                <node concept="11gdke" id="1n" role="37wK5m">
                  <property role="11gdj1" value="110396eaaa4L" />
                  <uo k="s:originTrace" v="n:1225194245328" />
                </node>
                <node concept="11gdke" id="1o" role="37wK5m">
                  <property role="11gdj1" value="110396ec041L" />
                  <uo k="s:originTrace" v="n:1225194245328" />
                </node>
                <node concept="Xl_RD" id="1p" role="37wK5m">
                  <property role="Xl_RC" value="name" />
                  <uo k="s:originTrace" v="n:1225194245328" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="1g" role="37wK5m">
              <ref role="3cqZAo" node="1d" resolve="container" />
              <uo k="s:originTrace" v="n:1225194245328" />
            </node>
            <node concept="3clFbT" id="1h" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:1225194245328" />
            </node>
            <node concept="3clFbT" id="1i" role="37wK5m">
              <uo k="s:originTrace" v="n:1225194245328" />
            </node>
            <node concept="3clFbT" id="1j" role="37wK5m">
              <uo k="s:originTrace" v="n:1225194245328" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="1d" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:1225194245328" />
          <node concept="3uibUv" id="1q" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1225194245328" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="18" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getValue" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:1225194245328" />
        <node concept="3Tm1VV" id="1r" role="1B3o_S">
          <uo k="s:originTrace" v="n:1225194245328" />
        </node>
        <node concept="3uibUv" id="1s" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          <uo k="s:originTrace" v="n:1225194245328" />
        </node>
        <node concept="37vLTG" id="1t" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:1225194245328" />
          <node concept="3Tqbb2" id="1w" role="1tU5fm">
            <uo k="s:originTrace" v="n:1225194245328" />
          </node>
        </node>
        <node concept="2AHcQZ" id="1u" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:1225194245328" />
        </node>
        <node concept="3clFbS" id="1v" role="3clF47">
          <uo k="s:originTrace" v="n:1225194245331" />
          <node concept="3cpWs8" id="1x" role="3cqZAp">
            <uo k="s:originTrace" v="n:1225194245332" />
            <node concept="3cpWsn" id="1$" role="3cpWs9">
              <property role="TrG5h" value="conceptName" />
              <uo k="s:originTrace" v="n:1225194245333" />
              <node concept="17QB3L" id="1_" role="1tU5fm">
                <uo k="s:originTrace" v="n:4853609160933015428" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="1y" role="3cqZAp">
            <uo k="s:originTrace" v="n:1225194245335" />
            <node concept="3y3z36" id="1A" role="3clFbw">
              <uo k="s:originTrace" v="n:1225194245336" />
              <node concept="10Nm6u" id="1D" role="3uHU7w">
                <uo k="s:originTrace" v="n:1225194245337" />
              </node>
              <node concept="2OqwBi" id="1E" role="3uHU7B">
                <uo k="s:originTrace" v="n:1225194245338" />
                <node concept="37vLTw" id="1F" role="2Oq$k0">
                  <ref role="3cqZAo" node="1t" resolve="node" />
                  <uo k="s:originTrace" v="n:1225194245339" />
                </node>
                <node concept="3TrEf2" id="1G" role="2OqNvi">
                  <ref role="3Tt5mk" to="1i04:hP3h7Gv" resolve="concept" />
                  <uo k="s:originTrace" v="n:1225194245340" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="1B" role="3clFbx">
              <uo k="s:originTrace" v="n:1225194245341" />
              <node concept="3clFbF" id="1H" role="3cqZAp">
                <uo k="s:originTrace" v="n:1225194245342" />
                <node concept="37vLTI" id="1I" role="3clFbG">
                  <uo k="s:originTrace" v="n:1225194245343" />
                  <node concept="2OqwBi" id="1J" role="37vLTx">
                    <uo k="s:originTrace" v="n:1225194245344" />
                    <node concept="2OqwBi" id="1L" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:1225194245345" />
                      <node concept="37vLTw" id="1N" role="2Oq$k0">
                        <ref role="3cqZAo" node="1t" resolve="node" />
                        <uo k="s:originTrace" v="n:1225194245346" />
                      </node>
                      <node concept="3TrEf2" id="1O" role="2OqNvi">
                        <ref role="3Tt5mk" to="1i04:hP3h7Gv" resolve="concept" />
                        <uo k="s:originTrace" v="n:1225194245347" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="1M" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      <uo k="s:originTrace" v="n:1225194245348" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="1K" role="37vLTJ">
                    <ref role="3cqZAo" node="1$" resolve="conceptName" />
                    <uo k="s:originTrace" v="n:4265636116363105499" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="1C" role="9aQIa">
              <uo k="s:originTrace" v="n:1225194245350" />
              <node concept="3clFbS" id="1P" role="9aQI4">
                <uo k="s:originTrace" v="n:1225194245351" />
                <node concept="3clFbF" id="1Q" role="3cqZAp">
                  <uo k="s:originTrace" v="n:1225194245352" />
                  <node concept="37vLTI" id="1R" role="3clFbG">
                    <uo k="s:originTrace" v="n:1225194245353" />
                    <node concept="Xl_RD" id="1S" role="37vLTx">
                      <property role="Xl_RC" value="???" />
                      <uo k="s:originTrace" v="n:1225194245354" />
                    </node>
                    <node concept="37vLTw" id="1T" role="37vLTJ">
                      <ref role="3cqZAo" node="1$" resolve="conceptName" />
                      <uo k="s:originTrace" v="n:4265636116363115849" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="1z" role="3cqZAp">
            <uo k="s:originTrace" v="n:1225194245356" />
            <node concept="3cpWs3" id="1U" role="3cqZAk">
              <uo k="s:originTrace" v="n:1225194245357" />
              <node concept="Xl_RD" id="1V" role="3uHU7w">
                <property role="Xl_RC" value="_Behavior" />
                <uo k="s:originTrace" v="n:1225194245358" />
              </node>
              <node concept="37vLTw" id="1W" role="3uHU7B">
                <ref role="3cqZAo" node="1$" resolve="conceptName" />
                <uo k="s:originTrace" v="n:4265636116363094219" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="19" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BasePropertyConstraintsDescriptor" resolve="BasePropertyConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:1225194245328" />
      </node>
    </node>
    <node concept="2YIFZL" id="6" role="jymVt">
      <property role="TrG5h" value="staticCanBeARoot" />
      <uo k="s:originTrace" v="n:1225194245328" />
      <node concept="3Tm6S6" id="1X" role="1B3o_S">
        <uo k="s:originTrace" v="n:1225194245328" />
      </node>
      <node concept="10P_77" id="1Y" role="3clF45">
        <uo k="s:originTrace" v="n:1225194245328" />
      </node>
      <node concept="3clFbS" id="1Z" role="3clF47">
        <uo k="s:originTrace" v="n:1227088888255" />
        <node concept="3clFbF" id="21" role="3cqZAp">
          <uo k="s:originTrace" v="n:1227088888256" />
          <node concept="22lmx$" id="22" role="3clFbG">
            <uo k="s:originTrace" v="n:2029765972765298767" />
            <node concept="2OqwBi" id="23" role="3uHU7B">
              <uo k="s:originTrace" v="n:474635177869395087" />
              <node concept="1Q6Npb" id="25" role="2Oq$k0">
                <uo k="s:originTrace" v="n:474635177869436068" />
              </node>
              <node concept="3zA4fs" id="26" role="2OqNvi">
                <ref role="3zA4av" to="mg3u:2LiUEk8oQ$g" resolve="behavior" />
                <uo k="s:originTrace" v="n:474635177869395220" />
              </node>
            </node>
            <node concept="2YIFZM" id="24" role="3uHU7w">
              <ref role="1Pybhc" to="w1kc:~SModelStereotype" resolve="SModelStereotype" />
              <ref role="37wK5l" to="w1kc:~SModelStereotype.isGeneratorModel(org.jetbrains.mps.openapi.model.SModel)" resolve="isGeneratorModel" />
              <uo k="s:originTrace" v="n:2029765972765291033" />
              <node concept="1Q6Npb" id="27" role="37wK5m">
                <uo k="s:originTrace" v="n:2029765972765291035" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="20" role="3clF46">
        <property role="TrG5h" value="model" />
        <uo k="s:originTrace" v="n:1225194245328" />
        <node concept="3uibUv" id="28" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
          <uo k="s:originTrace" v="n:1225194245328" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="29">
    <property role="3GE5qa" value="" />
    <property role="TrG5h" value="ConceptMethodDeclaration_Constraints" />
    <uo k="s:originTrace" v="n:1225194475678" />
    <node concept="3Tm1VV" id="2a" role="1B3o_S">
      <uo k="s:originTrace" v="n:1225194475678" />
    </node>
    <node concept="3uibUv" id="2b" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:1225194475678" />
    </node>
    <node concept="3clFbW" id="2c" role="jymVt">
      <uo k="s:originTrace" v="n:1225194475678" />
      <node concept="37vLTG" id="2f" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:1225194475678" />
        <node concept="3uibUv" id="2i" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:1225194475678" />
        </node>
      </node>
      <node concept="3cqZAl" id="2g" role="3clF45">
        <uo k="s:originTrace" v="n:1225194475678" />
      </node>
      <node concept="3clFbS" id="2h" role="3clF47">
        <uo k="s:originTrace" v="n:1225194475678" />
        <node concept="XkiVB" id="2j" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:1225194475678" />
          <node concept="1BaE9c" id="2l" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="ConceptMethodDeclaration$N0" />
            <uo k="s:originTrace" v="n:1225194475678" />
            <node concept="2YIFZM" id="2n" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:1225194475678" />
              <node concept="11gdke" id="2o" role="37wK5m">
                <property role="11gdj1" value="af65afd8f0dd4942L" />
                <uo k="s:originTrace" v="n:1225194475678" />
              </node>
              <node concept="11gdke" id="2p" role="37wK5m">
                <property role="11gdj1" value="87d963a55f2a9db1L" />
                <uo k="s:originTrace" v="n:1225194475678" />
              </node>
              <node concept="11gdke" id="2q" role="37wK5m">
                <property role="11gdj1" value="11d4348057eL" />
                <uo k="s:originTrace" v="n:1225194475678" />
              </node>
              <node concept="Xl_RD" id="2r" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" />
                <uo k="s:originTrace" v="n:1225194475678" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="2m" role="37wK5m">
            <ref role="3cqZAo" node="2f" resolve="initContext" />
            <uo k="s:originTrace" v="n:1225194475678" />
          </node>
        </node>
        <node concept="3clFbF" id="2k" role="3cqZAp">
          <uo k="s:originTrace" v="n:1225194475678" />
          <node concept="1rXfSq" id="2s" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:1225194475678" />
            <node concept="2ShNRf" id="2t" role="37wK5m">
              <uo k="s:originTrace" v="n:1225194475678" />
              <node concept="1pGfFk" id="2u" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="2w" resolve="ConceptMethodDeclaration_Constraints.RD1" />
                <uo k="s:originTrace" v="n:1225194475678" />
                <node concept="Xjq3P" id="2v" role="37wK5m">
                  <uo k="s:originTrace" v="n:1225194475678" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2d" role="jymVt">
      <uo k="s:originTrace" v="n:1225194475678" />
    </node>
    <node concept="312cEu" id="2e" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:1225194475678" />
      <node concept="3clFbW" id="2w" role="jymVt">
        <uo k="s:originTrace" v="n:1225194475678" />
        <node concept="37vLTG" id="2_" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:1225194475678" />
          <node concept="3uibUv" id="2C" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1225194475678" />
          </node>
        </node>
        <node concept="3cqZAl" id="2A" role="3clF45">
          <uo k="s:originTrace" v="n:1225194475678" />
        </node>
        <node concept="3clFbS" id="2B" role="3clF47">
          <uo k="s:originTrace" v="n:1225194475678" />
          <node concept="XkiVB" id="2D" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1225194475678" />
            <node concept="1BaE9c" id="2E" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="overriddenMethod$quKH" />
              <uo k="s:originTrace" v="n:1225194475678" />
              <node concept="2YIFZM" id="2I" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:1225194475678" />
                <node concept="11gdke" id="2J" role="37wK5m">
                  <property role="11gdj1" value="af65afd8f0dd4942L" />
                  <uo k="s:originTrace" v="n:1225194475678" />
                </node>
                <node concept="11gdke" id="2K" role="37wK5m">
                  <property role="11gdj1" value="87d963a55f2a9db1L" />
                  <uo k="s:originTrace" v="n:1225194475678" />
                </node>
                <node concept="11gdke" id="2L" role="37wK5m">
                  <property role="11gdj1" value="11d4348057eL" />
                  <uo k="s:originTrace" v="n:1225194475678" />
                </node>
                <node concept="11gdke" id="2M" role="37wK5m">
                  <property role="11gdj1" value="11d4348057fL" />
                  <uo k="s:originTrace" v="n:1225194475678" />
                </node>
                <node concept="Xl_RD" id="2N" role="37wK5m">
                  <property role="Xl_RC" value="overriddenMethod" />
                  <uo k="s:originTrace" v="n:1225194475678" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2F" role="37wK5m">
              <ref role="3cqZAo" node="2_" resolve="container" />
              <uo k="s:originTrace" v="n:1225194475678" />
            </node>
            <node concept="3clFbT" id="2G" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:1225194475678" />
            </node>
            <node concept="3clFbT" id="2H" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:1225194475678" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="2x" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="validate" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:1225194475678" />
        <node concept="3Tm1VV" id="2O" role="1B3o_S">
          <uo k="s:originTrace" v="n:1225194475678" />
        </node>
        <node concept="10P_77" id="2P" role="3clF45">
          <uo k="s:originTrace" v="n:1225194475678" />
        </node>
        <node concept="37vLTG" id="2Q" role="3clF46">
          <property role="TrG5h" value="referenceNode" />
          <property role="3TUv4t" value="true" />
          <uo k="s:originTrace" v="n:1225194475678" />
          <node concept="3Tqbb2" id="2V" role="1tU5fm">
            <uo k="s:originTrace" v="n:1225194475678" />
          </node>
        </node>
        <node concept="37vLTG" id="2R" role="3clF46">
          <property role="TrG5h" value="oldReferentNode" />
          <property role="3TUv4t" value="true" />
          <uo k="s:originTrace" v="n:1225194475678" />
          <node concept="3Tqbb2" id="2W" role="1tU5fm">
            <uo k="s:originTrace" v="n:1225194475678" />
          </node>
        </node>
        <node concept="37vLTG" id="2S" role="3clF46">
          <property role="TrG5h" value="newReferentNode" />
          <property role="3TUv4t" value="true" />
          <uo k="s:originTrace" v="n:1225194475678" />
          <node concept="3Tqbb2" id="2X" role="1tU5fm">
            <uo k="s:originTrace" v="n:1225194475678" />
          </node>
        </node>
        <node concept="3clFbS" id="2T" role="3clF47">
          <uo k="s:originTrace" v="n:1225194475678" />
          <node concept="3cpWs6" id="2Y" role="3cqZAp">
            <uo k="s:originTrace" v="n:1225194475678" />
            <node concept="3clFbT" id="2Z" role="3cqZAk">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:1225194475678" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2U" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:1225194475678" />
        </node>
      </node>
      <node concept="3clFb_" id="2y" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="onReferenceSet" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:1225194475678" />
        <node concept="3Tm1VV" id="30" role="1B3o_S">
          <uo k="s:originTrace" v="n:1225194475678" />
        </node>
        <node concept="3cqZAl" id="31" role="3clF45">
          <uo k="s:originTrace" v="n:1225194475678" />
        </node>
        <node concept="37vLTG" id="32" role="3clF46">
          <property role="TrG5h" value="referenceNode" />
          <property role="3TUv4t" value="true" />
          <uo k="s:originTrace" v="n:1225194475678" />
          <node concept="3Tqbb2" id="37" role="1tU5fm">
            <uo k="s:originTrace" v="n:1225194475678" />
          </node>
        </node>
        <node concept="37vLTG" id="33" role="3clF46">
          <property role="TrG5h" value="oldReferentNode" />
          <property role="3TUv4t" value="true" />
          <uo k="s:originTrace" v="n:1225194475678" />
          <node concept="3Tqbb2" id="38" role="1tU5fm">
            <uo k="s:originTrace" v="n:1225194475678" />
          </node>
        </node>
        <node concept="37vLTG" id="34" role="3clF46">
          <property role="TrG5h" value="newReferentNode" />
          <property role="3TUv4t" value="true" />
          <uo k="s:originTrace" v="n:1225194475678" />
          <node concept="3Tqbb2" id="39" role="1tU5fm">
            <uo k="s:originTrace" v="n:1225194475678" />
          </node>
        </node>
        <node concept="3clFbS" id="35" role="3clF47">
          <uo k="s:originTrace" v="n:1225194475701" />
          <node concept="3clFbJ" id="3a" role="3cqZAp">
            <uo k="s:originTrace" v="n:1225194475702" />
            <node concept="1Wc70l" id="3b" role="3clFbw">
              <uo k="s:originTrace" v="n:1225194475703" />
              <node concept="3y3z36" id="3d" role="3uHU7w">
                <uo k="s:originTrace" v="n:1225194475704" />
                <node concept="10Nm6u" id="3f" role="3uHU7w">
                  <uo k="s:originTrace" v="n:1225194475705" />
                </node>
                <node concept="37vLTw" id="3g" role="3uHU7B">
                  <ref role="3cqZAo" node="32" resolve="referenceNode" />
                  <uo k="s:originTrace" v="n:1225194475706" />
                </node>
              </node>
              <node concept="3y3z36" id="3e" role="3uHU7B">
                <uo k="s:originTrace" v="n:1225194475707" />
                <node concept="37vLTw" id="3h" role="3uHU7B">
                  <ref role="3cqZAo" node="34" resolve="newReferentNode" />
                  <uo k="s:originTrace" v="n:1225194475708" />
                </node>
                <node concept="10Nm6u" id="3i" role="3uHU7w">
                  <uo k="s:originTrace" v="n:1225194475709" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="3c" role="3clFbx">
              <uo k="s:originTrace" v="n:1225194475710" />
              <node concept="1DcWWT" id="3j" role="3cqZAp">
                <uo k="s:originTrace" v="n:1225194475711" />
                <node concept="2OqwBi" id="3n" role="1DdaDG">
                  <uo k="s:originTrace" v="n:1225194475712" />
                  <node concept="37vLTw" id="3q" role="2Oq$k0">
                    <ref role="3cqZAo" node="32" resolve="referenceNode" />
                    <uo k="s:originTrace" v="n:1225194475713" />
                  </node>
                  <node concept="3Tsc0h" id="3r" role="2OqNvi">
                    <ref role="3TtcxE" to="tpee:fzclF7Y" resolve="parameter" />
                    <uo k="s:originTrace" v="n:1225194475714" />
                  </node>
                </node>
                <node concept="3cpWsn" id="3o" role="1Duv9x">
                  <property role="TrG5h" value="p" />
                  <uo k="s:originTrace" v="n:1225194475715" />
                  <node concept="3Tqbb2" id="3s" role="1tU5fm">
                    <ref role="ehGHo" to="tpee:fz7vLUk" resolve="ParameterDeclaration" />
                    <uo k="s:originTrace" v="n:1225194475716" />
                  </node>
                </node>
                <node concept="3clFbS" id="3p" role="2LFqv$">
                  <uo k="s:originTrace" v="n:1225194475717" />
                  <node concept="3clFbF" id="3t" role="3cqZAp">
                    <uo k="s:originTrace" v="n:1225194475718" />
                    <node concept="2OqwBi" id="3u" role="3clFbG">
                      <uo k="s:originTrace" v="n:1225194475719" />
                      <node concept="37vLTw" id="3v" role="2Oq$k0">
                        <ref role="3cqZAo" node="3o" resolve="p" />
                        <uo k="s:originTrace" v="n:4265636116363077413" />
                      </node>
                      <node concept="3YRAZt" id="3w" role="2OqNvi">
                        <uo k="s:originTrace" v="n:1225194475721" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1DcWWT" id="3k" role="3cqZAp">
                <uo k="s:originTrace" v="n:1225194475722" />
                <node concept="2OqwBi" id="3x" role="1DdaDG">
                  <uo k="s:originTrace" v="n:1225194475723" />
                  <node concept="37vLTw" id="3$" role="2Oq$k0">
                    <ref role="3cqZAo" node="34" resolve="newReferentNode" />
                    <uo k="s:originTrace" v="n:1225194475724" />
                  </node>
                  <node concept="3Tsc0h" id="3_" role="2OqNvi">
                    <ref role="3TtcxE" to="tpee:fzclF7Y" resolve="parameter" />
                    <uo k="s:originTrace" v="n:1225194475725" />
                  </node>
                </node>
                <node concept="3cpWsn" id="3y" role="1Duv9x">
                  <property role="TrG5h" value="p" />
                  <uo k="s:originTrace" v="n:1225194475726" />
                  <node concept="3Tqbb2" id="3A" role="1tU5fm">
                    <ref role="ehGHo" to="tpee:fz7vLUk" resolve="ParameterDeclaration" />
                    <uo k="s:originTrace" v="n:1225194475727" />
                  </node>
                </node>
                <node concept="3clFbS" id="3z" role="2LFqv$">
                  <uo k="s:originTrace" v="n:1225194475728" />
                  <node concept="3clFbF" id="3B" role="3cqZAp">
                    <uo k="s:originTrace" v="n:1225194475729" />
                    <node concept="2OqwBi" id="3C" role="3clFbG">
                      <uo k="s:originTrace" v="n:1225194475730" />
                      <node concept="2OqwBi" id="3D" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:1225194475731" />
                        <node concept="37vLTw" id="3F" role="2Oq$k0">
                          <ref role="3cqZAo" node="32" resolve="referenceNode" />
                          <uo k="s:originTrace" v="n:1225194475732" />
                        </node>
                        <node concept="3Tsc0h" id="3G" role="2OqNvi">
                          <ref role="3TtcxE" to="tpee:fzclF7Y" resolve="parameter" />
                          <uo k="s:originTrace" v="n:1225194475733" />
                        </node>
                      </node>
                      <node concept="TSZUe" id="3E" role="2OqNvi">
                        <uo k="s:originTrace" v="n:1810715974610193453" />
                        <node concept="2OqwBi" id="3H" role="25WWJ7">
                          <uo k="s:originTrace" v="n:1225194475735" />
                          <node concept="37vLTw" id="3I" role="2Oq$k0">
                            <ref role="3cqZAo" node="3y" resolve="p" />
                            <uo k="s:originTrace" v="n:4265636116363070187" />
                          </node>
                          <node concept="1$rogu" id="3J" role="2OqNvi">
                            <uo k="s:originTrace" v="n:1225194475737" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3l" role="3cqZAp">
                <uo k="s:originTrace" v="n:1225194475738" />
                <node concept="2OqwBi" id="3K" role="3clFbG">
                  <uo k="s:originTrace" v="n:1225194475739" />
                  <node concept="2OqwBi" id="3L" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:1225194475740" />
                    <node concept="37vLTw" id="3N" role="2Oq$k0">
                      <ref role="3cqZAo" node="32" resolve="referenceNode" />
                      <uo k="s:originTrace" v="n:1225194475741" />
                    </node>
                    <node concept="3TrcHB" id="3O" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      <uo k="s:originTrace" v="n:1225194475742" />
                    </node>
                  </node>
                  <node concept="tyxLq" id="3M" role="2OqNvi">
                    <uo k="s:originTrace" v="n:1225194475743" />
                    <node concept="2OqwBi" id="3P" role="tz02z">
                      <uo k="s:originTrace" v="n:1225194475744" />
                      <node concept="37vLTw" id="3Q" role="2Oq$k0">
                        <ref role="3cqZAo" node="34" resolve="newReferentNode" />
                        <uo k="s:originTrace" v="n:1225194475745" />
                      </node>
                      <node concept="3TrcHB" id="3R" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        <uo k="s:originTrace" v="n:1225194475746" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3m" role="3cqZAp">
                <uo k="s:originTrace" v="n:1225194475747" />
                <node concept="2OqwBi" id="3S" role="3clFbG">
                  <uo k="s:originTrace" v="n:1225194475748" />
                  <node concept="2OqwBi" id="3T" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:1225194475749" />
                    <node concept="37vLTw" id="3V" role="2Oq$k0">
                      <ref role="3cqZAo" node="32" resolve="referenceNode" />
                      <uo k="s:originTrace" v="n:1225194475750" />
                    </node>
                    <node concept="3TrEf2" id="3W" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:fzclF7X" resolve="returnType" />
                      <uo k="s:originTrace" v="n:1225194475751" />
                    </node>
                  </node>
                  <node concept="2oxUTD" id="3U" role="2OqNvi">
                    <uo k="s:originTrace" v="n:1225194475752" />
                    <node concept="2OqwBi" id="3X" role="2oxUTC">
                      <uo k="s:originTrace" v="n:1225194475753" />
                      <node concept="2OqwBi" id="3Y" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:1225194475754" />
                        <node concept="37vLTw" id="40" role="2Oq$k0">
                          <ref role="3cqZAo" node="34" resolve="newReferentNode" />
                          <uo k="s:originTrace" v="n:1225194475755" />
                        </node>
                        <node concept="3TrEf2" id="41" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpee:fzclF7X" resolve="returnType" />
                          <uo k="s:originTrace" v="n:1225194475756" />
                        </node>
                      </node>
                      <node concept="1$rogu" id="3Z" role="2OqNvi">
                        <uo k="s:originTrace" v="n:1225194475757" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="36" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:1225194475678" />
        </node>
      </node>
      <node concept="3clFb_" id="2z" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:1225194475678" />
        <node concept="3Tm1VV" id="42" role="1B3o_S">
          <uo k="s:originTrace" v="n:1225194475678" />
        </node>
        <node concept="3uibUv" id="43" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:1225194475678" />
        </node>
        <node concept="2AHcQZ" id="44" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:1225194475678" />
        </node>
        <node concept="3clFbS" id="45" role="3clF47">
          <uo k="s:originTrace" v="n:1225194475678" />
          <node concept="3cpWs6" id="47" role="3cqZAp">
            <uo k="s:originTrace" v="n:1225194475678" />
            <node concept="2ShNRf" id="48" role="3cqZAk">
              <uo k="s:originTrace" v="n:6836281137582780722" />
              <node concept="YeOm9" id="49" role="2ShVmc">
                <uo k="s:originTrace" v="n:6836281137582780722" />
                <node concept="1Y3b0j" id="4a" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:6836281137582780722" />
                  <node concept="3Tm1VV" id="4b" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6836281137582780722" />
                  </node>
                  <node concept="3clFb_" id="4c" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:6836281137582780722" />
                    <node concept="3Tm1VV" id="4e" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582780722" />
                    </node>
                    <node concept="3uibUv" id="4f" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:6836281137582780722" />
                    </node>
                    <node concept="3clFbS" id="4g" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582780722" />
                      <node concept="3cpWs6" id="4i" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582780722" />
                        <node concept="2ShNRf" id="4j" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582780722" />
                          <node concept="1pGfFk" id="4k" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:6836281137582780722" />
                            <node concept="Xl_RD" id="4l" role="37wK5m">
                              <property role="Xl_RC" value="r:6786d6ee-e5cc-4a77-9efd-65a8dca8b187(jetbrains.mps.lang.behavior.constraints)" />
                              <uo k="s:originTrace" v="n:6836281137582780722" />
                            </node>
                            <node concept="Xl_RD" id="4m" role="37wK5m">
                              <property role="Xl_RC" value="6836281137582780722" />
                              <uo k="s:originTrace" v="n:6836281137582780722" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="4h" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582780722" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="4d" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:6836281137582780722" />
                    <node concept="3Tm1VV" id="4n" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582780722" />
                    </node>
                    <node concept="3uibUv" id="4o" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:6836281137582780722" />
                    </node>
                    <node concept="37vLTG" id="4p" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:6836281137582780722" />
                      <node concept="3uibUv" id="4s" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:6836281137582780722" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="4q" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582780722" />
                      <node concept="3cpWs8" id="4t" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582780724" />
                        <node concept="3cpWsn" id="4w" role="3cpWs9">
                          <property role="TrG5h" value="concept" />
                          <uo k="s:originTrace" v="n:6836281137582780725" />
                          <node concept="2OqwBi" id="4x" role="33vP2m">
                            <uo k="s:originTrace" v="n:6836281137582780726" />
                            <node concept="2OqwBi" id="4z" role="2Oq$k0">
                              <uo k="s:originTrace" v="n:6836281137582780727" />
                              <node concept="1DoJHT" id="4_" role="2Oq$k0">
                                <property role="1Dpdpm" value="getContextNode" />
                                <uo k="s:originTrace" v="n:6836281137582780755" />
                                <node concept="3uibUv" id="4B" role="1Ez5kq">
                                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                </node>
                                <node concept="37vLTw" id="4C" role="1EMhIo">
                                  <ref role="3cqZAo" node="4p" resolve="_context" />
                                </node>
                              </node>
                              <node concept="2Xjw5R" id="4A" role="2OqNvi">
                                <uo k="s:originTrace" v="n:6836281137582780729" />
                                <node concept="1xMEDy" id="4D" role="1xVPHs">
                                  <uo k="s:originTrace" v="n:6836281137582780730" />
                                  <node concept="chp4Y" id="4F" role="ri$Ld">
                                    <ref role="cht4Q" to="1i04:hP3h7Gq" resolve="ConceptBehavior" />
                                    <uo k="s:originTrace" v="n:6836281137582780731" />
                                  </node>
                                </node>
                                <node concept="1xIGOp" id="4E" role="1xVPHs">
                                  <uo k="s:originTrace" v="n:6836281137582780732" />
                                </node>
                              </node>
                            </node>
                            <node concept="3TrEf2" id="4$" role="2OqNvi">
                              <ref role="3Tt5mk" to="1i04:hP3h7Gv" resolve="concept" />
                              <uo k="s:originTrace" v="n:6836281137582780733" />
                            </node>
                          </node>
                          <node concept="3Tqbb2" id="4y" role="1tU5fm">
                            <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                            <uo k="s:originTrace" v="n:6836281137582780734" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="4u" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582780735" />
                        <node concept="3cpWsn" id="4G" role="3cpWs9">
                          <property role="TrG5h" value="methods" />
                          <uo k="s:originTrace" v="n:6836281137582780736" />
                          <node concept="2I9FWS" id="4H" role="1tU5fm">
                            <ref role="2I9WkF" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
                            <uo k="s:originTrace" v="n:6836281137582780737" />
                          </node>
                          <node concept="2OqwBi" id="4I" role="33vP2m">
                            <uo k="s:originTrace" v="n:6836281137582780738" />
                            <node concept="37vLTw" id="4J" role="2Oq$k0">
                              <ref role="3cqZAo" node="4w" resolve="concept" />
                              <uo k="s:originTrace" v="n:6836281137582780739" />
                            </node>
                            <node concept="3zqWPK" id="4K" role="2OqNvi">
                              <ref role="37wK5l" to="tpcn:hEwILHM" resolve="getVirtualConceptMethods" />
                              <uo k="s:originTrace" v="n:8085146484218860109" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs6" id="4v" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582780741" />
                        <node concept="2YIFZM" id="4L" role="3cqZAk">
                          <ref role="37wK5l" to="o8zo:3jEbQoczdCs" resolve="forResolvableElements" />
                          <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                          <uo k="s:originTrace" v="n:6836281137582780935" />
                          <node concept="2OqwBi" id="4M" role="37wK5m">
                            <uo k="s:originTrace" v="n:6836281137582780936" />
                            <node concept="37vLTw" id="4N" role="2Oq$k0">
                              <ref role="3cqZAo" node="4G" resolve="methods" />
                              <uo k="s:originTrace" v="n:6836281137582780937" />
                            </node>
                            <node concept="3zZkjj" id="4O" role="2OqNvi">
                              <uo k="s:originTrace" v="n:6836281137582780938" />
                              <node concept="1bVj0M" id="4P" role="23t8la">
                                <uo k="s:originTrace" v="n:6836281137582780939" />
                                <node concept="3clFbS" id="4Q" role="1bW5cS">
                                  <uo k="s:originTrace" v="n:6836281137582780940" />
                                  <node concept="3clFbF" id="4S" role="3cqZAp">
                                    <uo k="s:originTrace" v="n:6836281137582780941" />
                                    <node concept="3clFbC" id="4T" role="3clFbG">
                                      <uo k="s:originTrace" v="n:6836281137582780942" />
                                      <node concept="10Nm6u" id="4U" role="3uHU7w">
                                        <uo k="s:originTrace" v="n:6836281137582780943" />
                                      </node>
                                      <node concept="2OqwBi" id="4V" role="3uHU7B">
                                        <uo k="s:originTrace" v="n:6836281137582780944" />
                                        <node concept="37vLTw" id="4W" role="2Oq$k0">
                                          <ref role="3cqZAo" node="4R" resolve="it" />
                                          <uo k="s:originTrace" v="n:6836281137582780945" />
                                        </node>
                                        <node concept="3TrEf2" id="4X" role="2OqNvi">
                                          <ref role="3Tt5mk" to="1i04:hP3i0lZ" resolve="overriddenMethod" />
                                          <uo k="s:originTrace" v="n:6836281137582780946" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="gl6BB" id="4R" role="1bW2Oz">
                                  <property role="TrG5h" value="it" />
                                  <uo k="s:originTrace" v="n:6847626768367730881" />
                                  <node concept="2jxLKc" id="4Y" role="1tU5fm">
                                    <uo k="s:originTrace" v="n:6847626768367730882" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="4r" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582780722" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="46" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:1225194475678" />
        </node>
      </node>
      <node concept="3uibUv" id="2$" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:1225194475678" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="4Z">
    <property role="TrG5h" value="ConstraintsAspectDescriptor" />
    <property role="3GE5qa" value="Constraints" />
    <node concept="3uibUv" id="50" role="1zkMxy">
      <ref role="3uigEE" to="ze1i:~BaseConstraintsAspectDescriptor" resolve="BaseConstraintsAspectDescriptor" />
    </node>
    <node concept="3Tm1VV" id="51" role="1B3o_S" />
    <node concept="3clFbW" id="52" role="jymVt">
      <node concept="3cqZAl" id="55" role="3clF45" />
      <node concept="3Tm1VV" id="56" role="1B3o_S" />
      <node concept="3clFbS" id="57" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="53" role="jymVt" />
    <node concept="3clFb_" id="54" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getConstraints" />
      <property role="DiZV1" value="false" />
      <node concept="2AHcQZ" id="58" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="59" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3Tm1VV" id="5a" role="1B3o_S" />
      <node concept="3uibUv" id="5b" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
      </node>
      <node concept="37vLTG" id="5c" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3bZ5Sz" id="5f" role="1tU5fm" />
        <node concept="2AHcQZ" id="5g" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="5d" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="5h" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
        </node>
        <node concept="2AHcQZ" id="5i" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="5e" role="3clF47">
        <node concept="1_3QMa" id="5j" role="3cqZAp">
          <node concept="37vLTw" id="5l" role="1_3QMn">
            <ref role="3cqZAo" node="5c" resolve="concept" />
          </node>
          <node concept="1pnPoh" id="5m" role="1_3QMm">
            <node concept="3clFbS" id="5v" role="1pnPq1">
              <node concept="3cpWs6" id="5x" role="3cqZAp">
                <node concept="2ShNRf" id="5y" role="3cqZAk">
                  <node concept="1pGfFk" id="5z" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="3" resolve="ConceptBehavior_Constraints" />
                    <node concept="37vLTw" id="5$" role="37wK5m">
                      <ref role="3cqZAo" node="5d" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="5w" role="1pnPq6">
              <ref role="3gnhBz" to="1i04:hP3h7Gq" resolve="ConceptBehavior" />
            </node>
          </node>
          <node concept="1pnPoh" id="5n" role="1_3QMm">
            <node concept="3clFbS" id="5_" role="1pnPq1">
              <node concept="3cpWs6" id="5B" role="3cqZAp">
                <node concept="2ShNRf" id="5C" role="3cqZAk">
                  <node concept="1pGfFk" id="5D" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="2c" resolve="ConceptMethodDeclaration_Constraints" />
                    <node concept="37vLTw" id="5E" role="37wK5m">
                      <ref role="3cqZAo" node="5d" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="5A" role="1pnPq6">
              <ref role="3gnhBz" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
            </node>
          </node>
          <node concept="1pnPoh" id="5o" role="1_3QMm">
            <node concept="3clFbS" id="5F" role="1pnPq1">
              <node concept="3cpWs6" id="5H" role="3cqZAp">
                <node concept="2ShNRf" id="5I" role="3cqZAk">
                  <node concept="1pGfFk" id="5J" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="pL" resolve="ThisNodeExpression_Constraints" />
                    <node concept="37vLTw" id="5K" role="37wK5m">
                      <ref role="3cqZAo" node="5d" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="5G" role="1pnPq6">
              <ref role="3gnhBz" to="1i04:hP3iPJx" resolve="ThisNodeExpression" />
            </node>
          </node>
          <node concept="1pnPoh" id="5p" role="1_3QMm">
            <node concept="3clFbS" id="5L" role="1pnPq1">
              <node concept="3cpWs6" id="5N" role="3cqZAp">
                <node concept="2ShNRf" id="5O" role="3cqZAk">
                  <node concept="1pGfFk" id="5P" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="kN" resolve="SuperNodeExpression_Constraints" />
                    <node concept="37vLTw" id="5Q" role="37wK5m">
                      <ref role="3cqZAo" node="5d" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="5M" role="1pnPq6">
              <ref role="3gnhBz" to="1i04:hP3iAlo" resolve="SuperNodeExpression" />
            </node>
          </node>
          <node concept="1pnPoh" id="5q" role="1_3QMm">
            <node concept="3clFbS" id="5R" role="1pnPq1">
              <node concept="3cpWs6" id="5T" role="3cqZAp">
                <node concept="2ShNRf" id="5U" role="3cqZAk">
                  <node concept="1pGfFk" id="5V" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="8v" resolve="LocalBehaviorMethodCall_Constraints" />
                    <node concept="37vLTw" id="5W" role="37wK5m">
                      <ref role="3cqZAo" node="5d" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="5S" role="1pnPq6">
              <ref role="3gnhBz" to="1i04:5CBvrhXldvx" resolve="LocalBehaviorMethodCall" />
            </node>
          </node>
          <node concept="1pnPoh" id="5r" role="1_3QMm">
            <node concept="3clFbS" id="5X" role="1pnPq1">
              <node concept="3cpWs6" id="5Z" role="3cqZAp">
                <node concept="2ShNRf" id="60" role="3cqZAk">
                  <node concept="1pGfFk" id="61" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="oo" resolve="ThisConceptExpression_Constraints" />
                    <node concept="37vLTw" id="62" role="37wK5m">
                      <ref role="3cqZAo" node="5d" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="5Y" role="1pnPq6">
              <ref role="3gnhBz" to="1i04:1u_ffTorqp2" resolve="ThisConceptExpression" />
            </node>
          </node>
          <node concept="1pnPoh" id="5s" role="1_3QMm">
            <node concept="3clFbS" id="63" role="1pnPq1">
              <node concept="3cpWs6" id="65" role="3cqZAp">
                <node concept="2ShNRf" id="66" role="3cqZAk">
                  <node concept="1pGfFk" id="67" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="he" resolve="SuperConceptExpression_Constraints" />
                    <node concept="37vLTw" id="68" role="37wK5m">
                      <ref role="3cqZAo" node="5d" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="64" role="1pnPq6">
              <ref role="3gnhBz" to="1i04:6ADPXMKlUuB" resolve="SuperConceptExpression" />
            </node>
          </node>
          <node concept="1pnPoh" id="5t" role="1_3QMm">
            <node concept="3clFbS" id="69" role="1pnPq1">
              <node concept="3cpWs6" id="6b" role="3cqZAp">
                <node concept="2ShNRf" id="6c" role="3cqZAk">
                  <node concept="1pGfFk" id="6d" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="b$" resolve="Node_ConceptMethodCall_Constraints" />
                    <node concept="37vLTw" id="6e" role="37wK5m">
                      <ref role="3cqZAo" node="5d" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="6a" role="1pnPq6">
              <ref role="3gnhBz" to="1i04:2N_AbRfz_nd" resolve="Node_ConceptMethodCall" />
            </node>
          </node>
          <node concept="3clFbS" id="5u" role="1prKM_" />
        </node>
        <node concept="3cpWs6" id="5k" role="3cqZAp">
          <node concept="10Nm6u" id="6f" role="3cqZAk" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6g">
    <property role="TrG5h" value="ConstraintsUtil" />
    <uo k="s:originTrace" v="n:2043122710974690678" />
    <node concept="3Tm1VV" id="6h" role="1B3o_S">
      <uo k="s:originTrace" v="n:2043122710974690679" />
    </node>
    <node concept="3clFbW" id="6i" role="jymVt">
      <uo k="s:originTrace" v="n:2043122710974690680" />
      <node concept="3cqZAl" id="6n" role="3clF45">
        <uo k="s:originTrace" v="n:2043122710974690681" />
      </node>
      <node concept="3Tm6S6" id="6o" role="1B3o_S">
        <uo k="s:originTrace" v="n:2043122710974690684" />
      </node>
      <node concept="3clFbS" id="6p" role="3clF47">
        <uo k="s:originTrace" v="n:2043122710974690683" />
      </node>
    </node>
    <node concept="2tJIrI" id="6j" role="jymVt">
      <uo k="s:originTrace" v="n:1279830762535769775" />
    </node>
    <node concept="2YIFZL" id="6k" role="jymVt">
      <property role="TrG5h" value="isInsideOfBehavior" />
      <uo k="s:originTrace" v="n:2043122710974690685" />
      <node concept="10P_77" id="6q" role="3clF45">
        <uo k="s:originTrace" v="n:2043122710974690689" />
      </node>
      <node concept="3Tm1VV" id="6r" role="1B3o_S">
        <uo k="s:originTrace" v="n:2043122710974690687" />
      </node>
      <node concept="3clFbS" id="6s" role="3clF47">
        <uo k="s:originTrace" v="n:2043122710974690688" />
        <node concept="3clFbF" id="6u" role="3cqZAp">
          <uo k="s:originTrace" v="n:2043122710974690692" />
          <node concept="2OqwBi" id="6v" role="3clFbG">
            <uo k="s:originTrace" v="n:2043122710974690708" />
            <node concept="2OqwBi" id="6w" role="2Oq$k0">
              <uo k="s:originTrace" v="n:2043122710974690694" />
              <node concept="37vLTw" id="6y" role="2Oq$k0">
                <ref role="3cqZAo" node="6t" resolve="node" />
                <uo k="s:originTrace" v="n:3021153905151658718" />
              </node>
              <node concept="2Xjw5R" id="6z" role="2OqNvi">
                <uo k="s:originTrace" v="n:2043122710974690698" />
                <node concept="1xMEDy" id="6$" role="1xVPHs">
                  <uo k="s:originTrace" v="n:2043122710974690699" />
                  <node concept="chp4Y" id="6A" role="ri$Ld">
                    <ref role="cht4Q" to="1i04:hP3h7Gq" resolve="ConceptBehavior" />
                    <uo k="s:originTrace" v="n:2043122710974690702" />
                  </node>
                </node>
                <node concept="1xIGOp" id="6_" role="1xVPHs">
                  <uo k="s:originTrace" v="n:2043122710974690704" />
                </node>
              </node>
            </node>
            <node concept="3x8VRR" id="6x" role="2OqNvi">
              <uo k="s:originTrace" v="n:2043122710974690712" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6t" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:2043122710974690690" />
        <node concept="3Tqbb2" id="6B" role="1tU5fm">
          <uo k="s:originTrace" v="n:2043122710974690691" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6l" role="jymVt">
      <uo k="s:originTrace" v="n:1279830762535769776" />
    </node>
    <node concept="2YIFZL" id="6m" role="jymVt">
      <property role="TrG5h" value="isInsideOfBehavior" />
      <uo k="s:originTrace" v="n:2043122710974690713" />
      <node concept="10P_77" id="6C" role="3clF45">
        <uo k="s:originTrace" v="n:2043122710974690717" />
      </node>
      <node concept="3Tm1VV" id="6D" role="1B3o_S">
        <uo k="s:originTrace" v="n:2043122710974690715" />
      </node>
      <node concept="3clFbS" id="6E" role="3clF47">
        <uo k="s:originTrace" v="n:2043122710974690716" />
        <node concept="3clFbJ" id="6H" role="3cqZAp">
          <uo k="s:originTrace" v="n:2043122710974690720" />
          <node concept="3fqX7Q" id="6K" role="3clFbw">
            <uo k="s:originTrace" v="n:2043122710974690723" />
            <node concept="1rXfSq" id="6M" role="3fr31v">
              <ref role="37wK5l" node="6k" resolve="isInsideOfBehavior" />
              <uo k="s:originTrace" v="n:4923130412071496043" />
              <node concept="37vLTw" id="6N" role="37wK5m">
                <ref role="3cqZAo" node="6F" resolve="node" />
                <uo k="s:originTrace" v="n:3021153905151398004" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="6L" role="3clFbx">
            <uo k="s:originTrace" v="n:2043122710974690722" />
            <node concept="3cpWs6" id="6O" role="3cqZAp">
              <uo k="s:originTrace" v="n:2043122710974690727" />
              <node concept="3clFbT" id="6P" role="3cqZAk">
                <property role="3clFbU" value="false" />
                <uo k="s:originTrace" v="n:2043122710974690729" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6I" role="3cqZAp">
          <uo k="s:originTrace" v="n:1703835097132548825" />
          <node concept="3clFbS" id="6Q" role="3clFbx">
            <uo k="s:originTrace" v="n:1703835097132548827" />
            <node concept="3cpWs6" id="6S" role="3cqZAp">
              <uo k="s:originTrace" v="n:1703835097132557360" />
              <node concept="3fqX7Q" id="6T" role="3cqZAk">
                <uo k="s:originTrace" v="n:1703835097132663761" />
                <node concept="37vLTw" id="6U" role="3fr31v">
                  <ref role="3cqZAo" node="6G" resolve="isStatic" />
                  <uo k="s:originTrace" v="n:1703835097132669038" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6R" role="3clFbw">
            <uo k="s:originTrace" v="n:2043122710974690746" />
            <node concept="2OqwBi" id="6V" role="2Oq$k0">
              <uo k="s:originTrace" v="n:2043122710974690734" />
              <node concept="37vLTw" id="6X" role="2Oq$k0">
                <ref role="3cqZAo" node="6F" resolve="node" />
                <uo k="s:originTrace" v="n:3021153905151602159" />
              </node>
              <node concept="2Xjw5R" id="6Y" role="2OqNvi">
                <uo k="s:originTrace" v="n:1703835097132549406" />
                <node concept="1xMEDy" id="6Z" role="1xVPHs">
                  <uo k="s:originTrace" v="n:1703835097132555086" />
                  <node concept="chp4Y" id="71" role="ri$Ld">
                    <ref role="cht4Q" to="1i04:hP3hLVH" resolve="ConceptConstructorDeclaration" />
                    <uo k="s:originTrace" v="n:1703835097132555341" />
                  </node>
                </node>
                <node concept="1xIGOp" id="70" role="1xVPHs">
                  <uo k="s:originTrace" v="n:1703835097134787450" />
                </node>
              </node>
            </node>
            <node concept="3x8VRR" id="6W" role="2OqNvi">
              <uo k="s:originTrace" v="n:1703835097132556791" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6J" role="3cqZAp">
          <uo k="s:originTrace" v="n:1703835097132688099" />
          <node concept="2OqwBi" id="72" role="3cqZAk">
            <uo k="s:originTrace" v="n:1703835097132596732" />
            <node concept="2OqwBi" id="73" role="2Oq$k0">
              <uo k="s:originTrace" v="n:1703835097132557501" />
              <node concept="37vLTw" id="75" role="2Oq$k0">
                <ref role="3cqZAo" node="6F" resolve="node" />
                <uo k="s:originTrace" v="n:1703835097132557502" />
              </node>
              <node concept="z$bX8" id="76" role="2OqNvi">
                <uo k="s:originTrace" v="n:1703835097132558222" />
                <node concept="1xMEDy" id="77" role="1xVPHs">
                  <uo k="s:originTrace" v="n:1703835097132569122" />
                  <node concept="chp4Y" id="79" role="ri$Ld">
                    <ref role="cht4Q" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
                    <uo k="s:originTrace" v="n:1703835097132569161" />
                  </node>
                </node>
                <node concept="1xIGOp" id="78" role="1xVPHs">
                  <uo k="s:originTrace" v="n:1703835097134788575" />
                </node>
              </node>
            </node>
            <node concept="2HwmR7" id="74" role="2OqNvi">
              <uo k="s:originTrace" v="n:1703835097132686869" />
              <node concept="1bVj0M" id="7a" role="23t8la">
                <uo k="s:originTrace" v="n:1703835097132686871" />
                <node concept="3clFbS" id="7b" role="1bW5cS">
                  <uo k="s:originTrace" v="n:1703835097132686872" />
                  <node concept="3clFbF" id="7d" role="3cqZAp">
                    <uo k="s:originTrace" v="n:1703835097132686873" />
                    <node concept="3clFbC" id="7e" role="3clFbG">
                      <uo k="s:originTrace" v="n:1703835097132686874" />
                      <node concept="37vLTw" id="7f" role="3uHU7w">
                        <ref role="3cqZAo" node="6G" resolve="isStatic" />
                        <uo k="s:originTrace" v="n:1703835097132686875" />
                      </node>
                      <node concept="2OqwBi" id="7g" role="3uHU7B">
                        <uo k="s:originTrace" v="n:1703835097132686876" />
                        <node concept="37vLTw" id="7h" role="2Oq$k0">
                          <ref role="3cqZAo" node="7c" resolve="it" />
                          <uo k="s:originTrace" v="n:1703835097132686877" />
                        </node>
                        <node concept="3TrcHB" id="7i" role="2OqNvi">
                          <ref role="3TsBF5" to="1i04:55xfRZxar9d" resolve="isStatic" />
                          <uo k="s:originTrace" v="n:1703835097132686878" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="7c" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <uo k="s:originTrace" v="n:6847626768367730883" />
                  <node concept="2jxLKc" id="7j" role="1tU5fm">
                    <uo k="s:originTrace" v="n:6847626768367730884" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6F" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:2043122710974690718" />
        <node concept="3Tqbb2" id="7k" role="1tU5fm">
          <uo k="s:originTrace" v="n:2043122710974690719" />
        </node>
      </node>
      <node concept="37vLTG" id="6G" role="3clF46">
        <property role="TrG5h" value="isStatic" />
        <uo k="s:originTrace" v="n:1703835097132650974" />
        <node concept="10P_77" id="7l" role="1tU5fm">
          <uo k="s:originTrace" v="n:1703835097132651784" />
        </node>
      </node>
    </node>
  </node>
  <node concept="39dXUE" id="7m">
    <node concept="39e2AJ" id="7n" role="39e2AI">
      <property role="39e3Y2" value="constraintClass" />
      <node concept="39e2AG" id="7q" role="39e3Y0">
        <ref role="39e2AK" to="xxh2:hP3h8Ng" resolve="ConceptBehavior_Constraints" />
        <node concept="385nmt" id="7y" role="385vvn">
          <property role="385vuF" value="ConceptBehavior_Constraints" />
          <node concept="3u3nmq" id="7$" role="385v07">
            <property role="3u3nmv" value="1225194245328" />
          </node>
        </node>
        <node concept="39e2AT" id="7z" role="39e2AY">
          <ref role="39e2AS" node="0" resolve="ConceptBehavior_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="7r" role="39e3Y0">
        <ref role="39e2AK" to="xxh2:hP3i12u" resolve="ConceptMethodDeclaration_Constraints" />
        <node concept="385nmt" id="7_" role="385vvn">
          <property role="385vuF" value="ConceptMethodDeclaration_Constraints" />
          <node concept="3u3nmq" id="7B" role="385v07">
            <property role="3u3nmv" value="1225194475678" />
          </node>
        </node>
        <node concept="39e2AT" id="7A" role="39e2AY">
          <ref role="39e2AS" node="29" resolve="ConceptMethodDeclaration_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="7s" role="39e3Y0">
        <ref role="39e2AK" to="xxh2:5CBvrhXldTg" resolve="LocalBehaviorMethodCall_Constraints" />
        <node concept="385nmt" id="7C" role="385vvn">
          <property role="385vuF" value="LocalBehaviorMethodCall_Constraints" />
          <node concept="3u3nmq" id="7E" role="385v07">
            <property role="3u3nmv" value="6496299201655529040" />
          </node>
        </node>
        <node concept="39e2AT" id="7D" role="39e2AY">
          <ref role="39e2AS" node="8s" resolve="LocalBehaviorMethodCall_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="7t" role="39e3Y0">
        <ref role="39e2AK" to="xxh2:2N_AbRfzNVX" resolve="Node_ConceptMethodCall_Constraints" />
        <node concept="385nmt" id="7F" role="385vvn">
          <property role="385vuF" value="Node_ConceptMethodCall_Constraints" />
          <node concept="3u3nmq" id="7H" role="385v07">
            <property role="3u3nmv" value="3235159848334081789" />
          </node>
        </node>
        <node concept="39e2AT" id="7G" role="39e2AY">
          <ref role="39e2AS" node="bx" resolve="Node_ConceptMethodCall_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="7u" role="39e3Y0">
        <ref role="39e2AK" to="xxh2:6ADPXMKlWzq" resolve="SuperConceptExpression_Constraints" />
        <node concept="385nmt" id="7I" role="385vvn">
          <property role="385vuF" value="SuperConceptExpression_Constraints" />
          <node concept="3u3nmq" id="7K" role="385v07">
            <property role="3u3nmv" value="7613853987897854170" />
          </node>
        </node>
        <node concept="39e2AT" id="7J" role="39e2AY">
          <ref role="39e2AS" node="hb" resolve="SuperConceptExpression_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="7v" role="39e3Y0">
        <ref role="39e2AK" to="xxh2:1LqCkvsbvrD" resolve="SuperNodeExpression_Constraints" />
        <node concept="385nmt" id="7L" role="385vvn">
          <property role="385vuF" value="SuperNodeExpression_Constraints" />
          <node concept="3u3nmq" id="7N" role="385v07">
            <property role="3u3nmv" value="2043122710974691049" />
          </node>
        </node>
        <node concept="39e2AT" id="7M" role="39e2AY">
          <ref role="39e2AS" node="kK" resolve="SuperNodeExpression_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="7w" role="39e3Y0">
        <ref role="39e2AK" to="xxh2:1u_ffTorNjm" resolve="ThisConceptExpression_Constraints" />
        <node concept="385nmt" id="7O" role="385vvn">
          <property role="385vuF" value="ThisConceptExpression_Constraints" />
          <node concept="3u3nmq" id="7Q" role="385v07">
            <property role="3u3nmv" value="1703835097132643542" />
          </node>
        </node>
        <node concept="39e2AT" id="7P" role="39e2AY">
          <ref role="39e2AS" node="ol" resolve="ThisConceptExpression_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="7x" role="39e3Y0">
        <ref role="39e2AK" to="xxh2:1LqCkvsbvlP" resolve="ThisNodeExpression_Constraints" />
        <node concept="385nmt" id="7R" role="385vvn">
          <property role="385vuF" value="ThisNodeExpression_Constraints" />
          <node concept="3u3nmq" id="7T" role="385v07">
            <property role="3u3nmv" value="2043122710974690677" />
          </node>
        </node>
        <node concept="39e2AT" id="7S" role="39e2AY">
          <ref role="39e2AS" node="pI" resolve="ThisNodeExpression_Constraints" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="7o" role="39e2AI">
      <property role="39e3Y2" value="constraintClassCons" />
      <node concept="39e2AG" id="7U" role="39e3Y0">
        <ref role="39e2AK" to="xxh2:hP3h8Ng" resolve="ConceptBehavior_Constraints" />
        <node concept="385nmt" id="82" role="385vvn">
          <property role="385vuF" value="ConceptBehavior_Constraints" />
          <node concept="3u3nmq" id="84" role="385v07">
            <property role="3u3nmv" value="1225194245328" />
          </node>
        </node>
        <node concept="39e2AT" id="83" role="39e2AY">
          <ref role="39e2AS" node="3" resolve="ConceptBehavior_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="7V" role="39e3Y0">
        <ref role="39e2AK" to="xxh2:hP3i12u" resolve="ConceptMethodDeclaration_Constraints" />
        <node concept="385nmt" id="85" role="385vvn">
          <property role="385vuF" value="ConceptMethodDeclaration_Constraints" />
          <node concept="3u3nmq" id="87" role="385v07">
            <property role="3u3nmv" value="1225194475678" />
          </node>
        </node>
        <node concept="39e2AT" id="86" role="39e2AY">
          <ref role="39e2AS" node="2c" resolve="ConceptMethodDeclaration_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="7W" role="39e3Y0">
        <ref role="39e2AK" to="xxh2:5CBvrhXldTg" resolve="LocalBehaviorMethodCall_Constraints" />
        <node concept="385nmt" id="88" role="385vvn">
          <property role="385vuF" value="LocalBehaviorMethodCall_Constraints" />
          <node concept="3u3nmq" id="8a" role="385v07">
            <property role="3u3nmv" value="6496299201655529040" />
          </node>
        </node>
        <node concept="39e2AT" id="89" role="39e2AY">
          <ref role="39e2AS" node="8v" resolve="LocalBehaviorMethodCall_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="7X" role="39e3Y0">
        <ref role="39e2AK" to="xxh2:2N_AbRfzNVX" resolve="Node_ConceptMethodCall_Constraints" />
        <node concept="385nmt" id="8b" role="385vvn">
          <property role="385vuF" value="Node_ConceptMethodCall_Constraints" />
          <node concept="3u3nmq" id="8d" role="385v07">
            <property role="3u3nmv" value="3235159848334081789" />
          </node>
        </node>
        <node concept="39e2AT" id="8c" role="39e2AY">
          <ref role="39e2AS" node="b$" resolve="Node_ConceptMethodCall_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="7Y" role="39e3Y0">
        <ref role="39e2AK" to="xxh2:6ADPXMKlWzq" resolve="SuperConceptExpression_Constraints" />
        <node concept="385nmt" id="8e" role="385vvn">
          <property role="385vuF" value="SuperConceptExpression_Constraints" />
          <node concept="3u3nmq" id="8g" role="385v07">
            <property role="3u3nmv" value="7613853987897854170" />
          </node>
        </node>
        <node concept="39e2AT" id="8f" role="39e2AY">
          <ref role="39e2AS" node="he" resolve="SuperConceptExpression_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="7Z" role="39e3Y0">
        <ref role="39e2AK" to="xxh2:1LqCkvsbvrD" resolve="SuperNodeExpression_Constraints" />
        <node concept="385nmt" id="8h" role="385vvn">
          <property role="385vuF" value="SuperNodeExpression_Constraints" />
          <node concept="3u3nmq" id="8j" role="385v07">
            <property role="3u3nmv" value="2043122710974691049" />
          </node>
        </node>
        <node concept="39e2AT" id="8i" role="39e2AY">
          <ref role="39e2AS" node="kN" resolve="SuperNodeExpression_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="80" role="39e3Y0">
        <ref role="39e2AK" to="xxh2:1u_ffTorNjm" resolve="ThisConceptExpression_Constraints" />
        <node concept="385nmt" id="8k" role="385vvn">
          <property role="385vuF" value="ThisConceptExpression_Constraints" />
          <node concept="3u3nmq" id="8m" role="385v07">
            <property role="3u3nmv" value="1703835097132643542" />
          </node>
        </node>
        <node concept="39e2AT" id="8l" role="39e2AY">
          <ref role="39e2AS" node="oo" resolve="ThisConceptExpression_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="81" role="39e3Y0">
        <ref role="39e2AK" to="xxh2:1LqCkvsbvlP" resolve="ThisNodeExpression_Constraints" />
        <node concept="385nmt" id="8n" role="385vvn">
          <property role="385vuF" value="ThisNodeExpression_Constraints" />
          <node concept="3u3nmq" id="8p" role="385v07">
            <property role="3u3nmv" value="2043122710974690677" />
          </node>
        </node>
        <node concept="39e2AT" id="8o" role="39e2AY">
          <ref role="39e2AS" node="pL" resolve="ThisNodeExpression_Constraints" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="7p" role="39e2AI">
      <property role="39e3Y2" value="aspectDescriptorClass" />
      <node concept="39e2AG" id="8q" role="39e3Y0">
        <property role="2mV_xN" value="true" />
        <node concept="39e2AT" id="8r" role="39e2AY">
          <ref role="39e2AS" node="4Z" resolve="ConstraintsAspectDescriptor" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="8s">
    <property role="3GE5qa" value="" />
    <property role="TrG5h" value="LocalBehaviorMethodCall_Constraints" />
    <uo k="s:originTrace" v="n:6496299201655529040" />
    <node concept="3Tm1VV" id="8t" role="1B3o_S">
      <uo k="s:originTrace" v="n:6496299201655529040" />
    </node>
    <node concept="3uibUv" id="8u" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:6496299201655529040" />
    </node>
    <node concept="3clFbW" id="8v" role="jymVt">
      <uo k="s:originTrace" v="n:6496299201655529040" />
      <node concept="37vLTG" id="8z" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:6496299201655529040" />
        <node concept="3uibUv" id="8A" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:6496299201655529040" />
        </node>
      </node>
      <node concept="3cqZAl" id="8$" role="3clF45">
        <uo k="s:originTrace" v="n:6496299201655529040" />
      </node>
      <node concept="3clFbS" id="8_" role="3clF47">
        <uo k="s:originTrace" v="n:6496299201655529040" />
        <node concept="XkiVB" id="8B" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:6496299201655529040" />
          <node concept="1BaE9c" id="8E" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="LocalBehaviorMethodCall$Y1" />
            <uo k="s:originTrace" v="n:6496299201655529040" />
            <node concept="2YIFZM" id="8G" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:6496299201655529040" />
              <node concept="11gdke" id="8H" role="37wK5m">
                <property role="11gdj1" value="af65afd8f0dd4942L" />
                <uo k="s:originTrace" v="n:6496299201655529040" />
              </node>
              <node concept="11gdke" id="8I" role="37wK5m">
                <property role="11gdj1" value="87d963a55f2a9db1L" />
                <uo k="s:originTrace" v="n:6496299201655529040" />
              </node>
              <node concept="11gdke" id="8J" role="37wK5m">
                <property role="11gdj1" value="5a277db47d54d7e1L" />
                <uo k="s:originTrace" v="n:6496299201655529040" />
              </node>
              <node concept="Xl_RD" id="8K" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.behavior.structure.LocalBehaviorMethodCall" />
                <uo k="s:originTrace" v="n:6496299201655529040" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="8F" role="37wK5m">
            <ref role="3cqZAo" node="8z" resolve="initContext" />
            <uo k="s:originTrace" v="n:6496299201655529040" />
          </node>
        </node>
        <node concept="3clFbF" id="8C" role="3cqZAp">
          <uo k="s:originTrace" v="n:6496299201655529040" />
          <node concept="1rXfSq" id="8L" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:6496299201655529040" />
            <node concept="2ShNRf" id="8M" role="37wK5m">
              <uo k="s:originTrace" v="n:6496299201655529040" />
              <node concept="1pGfFk" id="8N" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="9G" resolve="LocalBehaviorMethodCall_Constraints.RD1" />
                <uo k="s:originTrace" v="n:6496299201655529040" />
                <node concept="Xjq3P" id="8O" role="37wK5m">
                  <uo k="s:originTrace" v="n:6496299201655529040" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="8D" role="3cqZAp">
          <uo k="s:originTrace" v="n:6496299201655529040" />
          <node concept="1rXfSq" id="8P" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.setCanBeChildConstraint(jetbrains.mps.smodel.runtime.ConstraintFunction)" resolve="setCanBeChildConstraint" />
            <uo k="s:originTrace" v="n:6496299201655529040" />
            <node concept="2ShNRf" id="8Q" role="37wK5m">
              <uo k="s:originTrace" v="n:6496299201655529040" />
              <node concept="YeOm9" id="8R" role="2ShVmc">
                <uo k="s:originTrace" v="n:6496299201655529040" />
                <node concept="1Y3b0j" id="8S" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <uo k="s:originTrace" v="n:6496299201655529040" />
                  <node concept="3Tm1VV" id="8T" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6496299201655529040" />
                  </node>
                  <node concept="3clFb_" id="8U" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="invoke" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <uo k="s:originTrace" v="n:6496299201655529040" />
                    <node concept="3Tm1VV" id="8X" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6496299201655529040" />
                    </node>
                    <node concept="2AHcQZ" id="8Y" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:6496299201655529040" />
                    </node>
                    <node concept="3uibUv" id="8Z" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      <uo k="s:originTrace" v="n:6496299201655529040" />
                    </node>
                    <node concept="37vLTG" id="90" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <uo k="s:originTrace" v="n:6496299201655529040" />
                      <node concept="3uibUv" id="93" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                        <uo k="s:originTrace" v="n:6496299201655529040" />
                      </node>
                      <node concept="2AHcQZ" id="94" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        <uo k="s:originTrace" v="n:6496299201655529040" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="91" role="3clF46">
                      <property role="TrG5h" value="checkingNodeContext" />
                      <uo k="s:originTrace" v="n:6496299201655529040" />
                      <node concept="3uibUv" id="95" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                        <uo k="s:originTrace" v="n:6496299201655529040" />
                      </node>
                      <node concept="2AHcQZ" id="96" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                        <uo k="s:originTrace" v="n:6496299201655529040" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="92" role="3clF47">
                      <uo k="s:originTrace" v="n:6496299201655529040" />
                      <node concept="3cpWs8" id="97" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6496299201655529040" />
                        <node concept="3cpWsn" id="9c" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:6496299201655529040" />
                          <node concept="10P_77" id="9d" role="1tU5fm">
                            <uo k="s:originTrace" v="n:6496299201655529040" />
                          </node>
                          <node concept="1rXfSq" id="9e" role="33vP2m">
                            <ref role="37wK5l" node="8y" resolve="staticCanBeAChild" />
                            <uo k="s:originTrace" v="n:6496299201655529040" />
                            <node concept="2OqwBi" id="9f" role="37wK5m">
                              <uo k="s:originTrace" v="n:6496299201655529040" />
                              <node concept="37vLTw" id="9j" role="2Oq$k0">
                                <ref role="3cqZAo" node="90" resolve="context" />
                                <uo k="s:originTrace" v="n:6496299201655529040" />
                              </node>
                              <node concept="liA8E" id="9k" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getNode()" resolve="getNode" />
                                <uo k="s:originTrace" v="n:6496299201655529040" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="9g" role="37wK5m">
                              <uo k="s:originTrace" v="n:6496299201655529040" />
                              <node concept="37vLTw" id="9l" role="2Oq$k0">
                                <ref role="3cqZAo" node="90" resolve="context" />
                                <uo k="s:originTrace" v="n:6496299201655529040" />
                              </node>
                              <node concept="liA8E" id="9m" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getParentNode()" resolve="getParentNode" />
                                <uo k="s:originTrace" v="n:6496299201655529040" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="9h" role="37wK5m">
                              <uo k="s:originTrace" v="n:6496299201655529040" />
                              <node concept="37vLTw" id="9n" role="2Oq$k0">
                                <ref role="3cqZAo" node="90" resolve="context" />
                                <uo k="s:originTrace" v="n:6496299201655529040" />
                              </node>
                              <node concept="liA8E" id="9o" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getConcept()" resolve="getConcept" />
                                <uo k="s:originTrace" v="n:6496299201655529040" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="9i" role="37wK5m">
                              <uo k="s:originTrace" v="n:6496299201655529040" />
                              <node concept="37vLTw" id="9p" role="2Oq$k0">
                                <ref role="3cqZAo" node="90" resolve="context" />
                                <uo k="s:originTrace" v="n:6496299201655529040" />
                              </node>
                              <node concept="liA8E" id="9q" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getLink()" resolve="getLink" />
                                <uo k="s:originTrace" v="n:6496299201655529040" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="98" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6496299201655529040" />
                      </node>
                      <node concept="3clFbJ" id="99" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6496299201655529040" />
                        <node concept="3clFbS" id="9r" role="3clFbx">
                          <uo k="s:originTrace" v="n:6496299201655529040" />
                          <node concept="3clFbF" id="9t" role="3cqZAp">
                            <uo k="s:originTrace" v="n:6496299201655529040" />
                            <node concept="2OqwBi" id="9u" role="3clFbG">
                              <uo k="s:originTrace" v="n:6496299201655529040" />
                              <node concept="37vLTw" id="9v" role="2Oq$k0">
                                <ref role="3cqZAo" node="91" resolve="checkingNodeContext" />
                                <uo k="s:originTrace" v="n:6496299201655529040" />
                              </node>
                              <node concept="liA8E" id="9w" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                                <uo k="s:originTrace" v="n:6496299201655529040" />
                                <node concept="1dyn4i" id="9x" role="37wK5m">
                                  <property role="1dyqJU" value="canBeChildBreakingPoint" />
                                  <uo k="s:originTrace" v="n:6496299201655529040" />
                                  <node concept="2ShNRf" id="9y" role="1dyrYi">
                                    <uo k="s:originTrace" v="n:6496299201655529040" />
                                    <node concept="1pGfFk" id="9z" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:6496299201655529040" />
                                      <node concept="Xl_RD" id="9$" role="37wK5m">
                                        <property role="Xl_RC" value="r:6786d6ee-e5cc-4a77-9efd-65a8dca8b187(jetbrains.mps.lang.behavior.constraints)" />
                                        <uo k="s:originTrace" v="n:6496299201655529040" />
                                      </node>
                                      <node concept="Xl_RD" id="9_" role="37wK5m">
                                        <property role="Xl_RC" value="1227128029536560953" />
                                        <uo k="s:originTrace" v="n:6496299201655529040" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Wc70l" id="9s" role="3clFbw">
                          <uo k="s:originTrace" v="n:6496299201655529040" />
                          <node concept="3y3z36" id="9A" role="3uHU7w">
                            <uo k="s:originTrace" v="n:6496299201655529040" />
                            <node concept="10Nm6u" id="9C" role="3uHU7w">
                              <uo k="s:originTrace" v="n:6496299201655529040" />
                            </node>
                            <node concept="37vLTw" id="9D" role="3uHU7B">
                              <ref role="3cqZAo" node="91" resolve="checkingNodeContext" />
                              <uo k="s:originTrace" v="n:6496299201655529040" />
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="9B" role="3uHU7B">
                            <uo k="s:originTrace" v="n:6496299201655529040" />
                            <node concept="37vLTw" id="9E" role="3fr31v">
                              <ref role="3cqZAo" node="9c" resolve="result" />
                              <uo k="s:originTrace" v="n:6496299201655529040" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="9a" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6496299201655529040" />
                      </node>
                      <node concept="3clFbF" id="9b" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6496299201655529040" />
                        <node concept="37vLTw" id="9F" role="3clFbG">
                          <ref role="3cqZAo" node="9c" resolve="result" />
                          <uo k="s:originTrace" v="n:6496299201655529040" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="8V" role="2Ghqu4">
                    <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                    <uo k="s:originTrace" v="n:6496299201655529040" />
                  </node>
                  <node concept="3uibUv" id="8W" role="2Ghqu4">
                    <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    <uo k="s:originTrace" v="n:6496299201655529040" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="8w" role="jymVt">
      <uo k="s:originTrace" v="n:6496299201655529040" />
    </node>
    <node concept="312cEu" id="8x" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:6496299201655529040" />
      <node concept="3clFbW" id="9G" role="jymVt">
        <uo k="s:originTrace" v="n:6496299201655529040" />
        <node concept="37vLTG" id="9J" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:6496299201655529040" />
          <node concept="3uibUv" id="9M" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:6496299201655529040" />
          </node>
        </node>
        <node concept="3cqZAl" id="9K" role="3clF45">
          <uo k="s:originTrace" v="n:6496299201655529040" />
        </node>
        <node concept="3clFbS" id="9L" role="3clF47">
          <uo k="s:originTrace" v="n:6496299201655529040" />
          <node concept="XkiVB" id="9N" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:6496299201655529040" />
            <node concept="1BaE9c" id="9O" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="baseMethodDeclaration$pyYw" />
              <uo k="s:originTrace" v="n:6496299201655529040" />
              <node concept="2YIFZM" id="9S" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:6496299201655529040" />
                <node concept="11gdke" id="9T" role="37wK5m">
                  <property role="11gdj1" value="f3061a5392264cc5L" />
                  <uo k="s:originTrace" v="n:6496299201655529040" />
                </node>
                <node concept="11gdke" id="9U" role="37wK5m">
                  <property role="11gdj1" value="a443f952ceaf5816L" />
                  <uo k="s:originTrace" v="n:6496299201655529040" />
                </node>
                <node concept="11gdke" id="9V" role="37wK5m">
                  <property role="11gdj1" value="11857355952L" />
                  <uo k="s:originTrace" v="n:6496299201655529040" />
                </node>
                <node concept="11gdke" id="9W" role="37wK5m">
                  <property role="11gdj1" value="f8c78301adL" />
                  <uo k="s:originTrace" v="n:6496299201655529040" />
                </node>
                <node concept="Xl_RD" id="9X" role="37wK5m">
                  <property role="Xl_RC" value="baseMethodDeclaration" />
                  <uo k="s:originTrace" v="n:6496299201655529040" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="9P" role="37wK5m">
              <ref role="3cqZAo" node="9J" resolve="container" />
              <uo k="s:originTrace" v="n:6496299201655529040" />
            </node>
            <node concept="3clFbT" id="9Q" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:6496299201655529040" />
            </node>
            <node concept="3clFbT" id="9R" role="37wK5m">
              <uo k="s:originTrace" v="n:6496299201655529040" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="9H" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:6496299201655529040" />
        <node concept="3Tm1VV" id="9Y" role="1B3o_S">
          <uo k="s:originTrace" v="n:6496299201655529040" />
        </node>
        <node concept="3uibUv" id="9Z" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:6496299201655529040" />
        </node>
        <node concept="2AHcQZ" id="a0" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:6496299201655529040" />
        </node>
        <node concept="3clFbS" id="a1" role="3clF47">
          <uo k="s:originTrace" v="n:6496299201655529040" />
          <node concept="3cpWs6" id="a3" role="3cqZAp">
            <uo k="s:originTrace" v="n:6496299201655529040" />
            <node concept="2ShNRf" id="a4" role="3cqZAk">
              <uo k="s:originTrace" v="n:6836281137582780380" />
              <node concept="YeOm9" id="a5" role="2ShVmc">
                <uo k="s:originTrace" v="n:6836281137582780380" />
                <node concept="1Y3b0j" id="a6" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:6836281137582780380" />
                  <node concept="3Tm1VV" id="a7" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6836281137582780380" />
                  </node>
                  <node concept="3clFb_" id="a8" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:6836281137582780380" />
                    <node concept="3Tm1VV" id="aa" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582780380" />
                    </node>
                    <node concept="3uibUv" id="ab" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:6836281137582780380" />
                    </node>
                    <node concept="3clFbS" id="ac" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582780380" />
                      <node concept="3cpWs6" id="ae" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582780380" />
                        <node concept="2ShNRf" id="af" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582780380" />
                          <node concept="1pGfFk" id="ag" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:6836281137582780380" />
                            <node concept="Xl_RD" id="ah" role="37wK5m">
                              <property role="Xl_RC" value="r:6786d6ee-e5cc-4a77-9efd-65a8dca8b187(jetbrains.mps.lang.behavior.constraints)" />
                              <uo k="s:originTrace" v="n:6836281137582780380" />
                            </node>
                            <node concept="Xl_RD" id="ai" role="37wK5m">
                              <property role="Xl_RC" value="6836281137582780380" />
                              <uo k="s:originTrace" v="n:6836281137582780380" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="ad" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582780380" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="a9" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:6836281137582780380" />
                    <node concept="3Tm1VV" id="aj" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582780380" />
                    </node>
                    <node concept="3uibUv" id="ak" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:6836281137582780380" />
                    </node>
                    <node concept="37vLTG" id="al" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:6836281137582780380" />
                      <node concept="3uibUv" id="ao" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:6836281137582780380" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="am" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582780380" />
                      <node concept="3cpWs8" id="ap" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582780382" />
                        <node concept="3cpWsn" id="at" role="3cpWs9">
                          <property role="TrG5h" value="methodDeclaration" />
                          <uo k="s:originTrace" v="n:6836281137582780383" />
                          <node concept="3Tqbb2" id="au" role="1tU5fm">
                            <ref role="ehGHo" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
                            <uo k="s:originTrace" v="n:6836281137582780384" />
                          </node>
                          <node concept="2OqwBi" id="av" role="33vP2m">
                            <uo k="s:originTrace" v="n:6836281137582780385" />
                            <node concept="1DoJHT" id="aw" role="2Oq$k0">
                              <property role="1Dpdpm" value="getContextNode" />
                              <uo k="s:originTrace" v="n:6836281137582780418" />
                              <node concept="3uibUv" id="ay" role="1Ez5kq">
                                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                              </node>
                              <node concept="37vLTw" id="az" role="1EMhIo">
                                <ref role="3cqZAo" node="al" resolve="_context" />
                              </node>
                            </node>
                            <node concept="2Xjw5R" id="ax" role="2OqNvi">
                              <uo k="s:originTrace" v="n:6836281137582780387" />
                              <node concept="1xMEDy" id="a$" role="1xVPHs">
                                <uo k="s:originTrace" v="n:6836281137582780388" />
                                <node concept="chp4Y" id="aA" role="ri$Ld">
                                  <ref role="cht4Q" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
                                  <uo k="s:originTrace" v="n:1401464578587306496" />
                                </node>
                              </node>
                              <node concept="1xIGOp" id="a_" role="1xVPHs">
                                <uo k="s:originTrace" v="n:6836281137582780390" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="aq" role="3cqZAp">
                        <uo k="s:originTrace" v="n:1401464578587307611" />
                        <node concept="3clFbS" id="aB" role="3clFbx">
                          <uo k="s:originTrace" v="n:1401464578587307613" />
                          <node concept="3cpWs6" id="aD" role="3cqZAp">
                            <uo k="s:originTrace" v="n:1401464578587319333" />
                            <node concept="2ShNRf" id="aE" role="3cqZAk">
                              <uo k="s:originTrace" v="n:1401464578587325719" />
                              <node concept="1pGfFk" id="aF" role="2ShVmc">
                                <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
                                <uo k="s:originTrace" v="n:1401464578587327146" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="aC" role="3clFbw">
                          <uo k="s:originTrace" v="n:1401464578587315661" />
                          <node concept="37vLTw" id="aG" role="2Oq$k0">
                            <ref role="3cqZAo" node="at" resolve="methodDeclaration" />
                            <uo k="s:originTrace" v="n:1401464578587309536" />
                          </node>
                          <node concept="3w_OXm" id="aH" role="2OqNvi">
                            <uo k="s:originTrace" v="n:1401464578587318275" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="ar" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582780394" />
                        <node concept="3cpWsn" id="aI" role="3cpWs9">
                          <property role="TrG5h" value="concept" />
                          <uo k="s:originTrace" v="n:6836281137582780395" />
                          <node concept="3Tqbb2" id="aJ" role="1tU5fm">
                            <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                            <uo k="s:originTrace" v="n:6836281137582780396" />
                          </node>
                          <node concept="2OqwBi" id="aK" role="33vP2m">
                            <uo k="s:originTrace" v="n:6836281137582780397" />
                            <node concept="2OqwBi" id="aL" role="2Oq$k0">
                              <uo k="s:originTrace" v="n:6836281137582780398" />
                              <node concept="2Xjw5R" id="aN" role="2OqNvi">
                                <uo k="s:originTrace" v="n:6836281137582780399" />
                                <node concept="1xMEDy" id="aP" role="1xVPHs">
                                  <uo k="s:originTrace" v="n:6836281137582780400" />
                                  <node concept="chp4Y" id="aR" role="ri$Ld">
                                    <ref role="cht4Q" to="1i04:hP3h7Gq" resolve="ConceptBehavior" />
                                    <uo k="s:originTrace" v="n:6836281137582780401" />
                                  </node>
                                </node>
                                <node concept="1xIGOp" id="aQ" role="1xVPHs">
                                  <uo k="s:originTrace" v="n:6836281137582780402" />
                                </node>
                              </node>
                              <node concept="1DoJHT" id="aO" role="2Oq$k0">
                                <property role="1Dpdpm" value="getContextNode" />
                                <uo k="s:originTrace" v="n:6836281137582780419" />
                                <node concept="3uibUv" id="aS" role="1Ez5kq">
                                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                </node>
                                <node concept="37vLTw" id="aT" role="1EMhIo">
                                  <ref role="3cqZAo" node="al" resolve="_context" />
                                </node>
                              </node>
                            </node>
                            <node concept="3TrEf2" id="aM" role="2OqNvi">
                              <ref role="3Tt5mk" to="1i04:hP3h7Gv" resolve="concept" />
                              <uo k="s:originTrace" v="n:6836281137582780404" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs6" id="as" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582780405" />
                        <node concept="2YIFZM" id="aU" role="3cqZAk">
                          <ref role="37wK5l" to="o8zo:3jEbQoczdCs" resolve="forResolvableElements" />
                          <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                          <uo k="s:originTrace" v="n:6836281137582780606" />
                          <node concept="2OqwBi" id="aV" role="37wK5m">
                            <uo k="s:originTrace" v="n:6836281137582780607" />
                            <node concept="3zqWPK" id="aW" role="2OqNvi">
                              <ref role="37wK5l" to="tpcn:wrIPXhfIPX" resolve="getVisibleConceptMethods" />
                              <uo k="s:originTrace" v="n:8085146484218860111" />
                              <node concept="1eOMI4" id="aY" role="37wK5m">
                                <uo k="s:originTrace" v="n:8085146484218860113" />
                                <node concept="3K4zz7" id="aZ" role="1eOMHV">
                                  <uo k="s:originTrace" v="n:8085146484218860114" />
                                  <node concept="1DoJHT" id="b0" role="3K4E3e">
                                    <property role="1Dpdpm" value="getContextNode" />
                                    <uo k="s:originTrace" v="n:8085146484218860115" />
                                    <node concept="3uibUv" id="b3" role="1Ez5kq">
                                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                    </node>
                                    <node concept="37vLTw" id="b4" role="1EMhIo">
                                      <ref role="3cqZAo" node="al" resolve="_context" />
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="b1" role="3K4Cdx">
                                    <uo k="s:originTrace" v="n:8085146484218860116" />
                                    <node concept="1DoJHT" id="b5" role="2Oq$k0">
                                      <property role="1Dpdpm" value="getReferenceNode" />
                                      <uo k="s:originTrace" v="n:8085146484218860117" />
                                      <node concept="3uibUv" id="b7" role="1Ez5kq">
                                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                      </node>
                                      <node concept="37vLTw" id="b8" role="1EMhIo">
                                        <ref role="3cqZAo" node="al" resolve="_context" />
                                      </node>
                                    </node>
                                    <node concept="3w_OXm" id="b6" role="2OqNvi">
                                      <uo k="s:originTrace" v="n:8085146484218860118" />
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="b2" role="3K4GZi">
                                    <uo k="s:originTrace" v="n:8085146484218860119" />
                                    <node concept="1DoJHT" id="b9" role="2Oq$k0">
                                      <property role="1Dpdpm" value="getReferenceNode" />
                                      <uo k="s:originTrace" v="n:8085146484218860120" />
                                      <node concept="3uibUv" id="bb" role="1Ez5kq">
                                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                      </node>
                                      <node concept="37vLTw" id="bc" role="1EMhIo">
                                        <ref role="3cqZAo" node="al" resolve="_context" />
                                      </node>
                                    </node>
                                    <node concept="1mfA1w" id="ba" role="2OqNvi">
                                      <uo k="s:originTrace" v="n:8085146484218860121" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTw" id="aX" role="2Oq$k0">
                              <ref role="3cqZAo" node="aI" resolve="concept" />
                              <uo k="s:originTrace" v="n:6836281137582780619" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="an" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582780380" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="a2" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:6496299201655529040" />
        </node>
      </node>
      <node concept="3uibUv" id="9I" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:6496299201655529040" />
      </node>
    </node>
    <node concept="2YIFZL" id="8y" role="jymVt">
      <property role="TrG5h" value="staticCanBeAChild" />
      <uo k="s:originTrace" v="n:6496299201655529040" />
      <node concept="10P_77" id="bd" role="3clF45">
        <uo k="s:originTrace" v="n:6496299201655529040" />
      </node>
      <node concept="3Tm6S6" id="be" role="1B3o_S">
        <uo k="s:originTrace" v="n:6496299201655529040" />
      </node>
      <node concept="3clFbS" id="bf" role="3clF47">
        <uo k="s:originTrace" v="n:1227128029536560954" />
        <node concept="3clFbF" id="bk" role="3cqZAp">
          <uo k="s:originTrace" v="n:1227128029536560955" />
          <node concept="3y3z36" id="bl" role="3clFbG">
            <uo k="s:originTrace" v="n:1227128029536560956" />
            <node concept="10Nm6u" id="bm" role="3uHU7w">
              <uo k="s:originTrace" v="n:1227128029536560957" />
            </node>
            <node concept="2OqwBi" id="bn" role="3uHU7B">
              <uo k="s:originTrace" v="n:1227128029536560958" />
              <node concept="2Xjw5R" id="bo" role="2OqNvi">
                <uo k="s:originTrace" v="n:1227128029536560959" />
                <node concept="1xMEDy" id="bq" role="1xVPHs">
                  <uo k="s:originTrace" v="n:1227128029536560960" />
                  <node concept="chp4Y" id="bs" role="ri$Ld">
                    <ref role="cht4Q" to="1i04:hP3h7Gq" resolve="ConceptBehavior" />
                    <uo k="s:originTrace" v="n:1227128029536560961" />
                  </node>
                </node>
                <node concept="1xIGOp" id="br" role="1xVPHs">
                  <uo k="s:originTrace" v="n:1227128029536560962" />
                </node>
              </node>
              <node concept="37vLTw" id="bp" role="2Oq$k0">
                <ref role="3cqZAo" node="bh" resolve="parentNode" />
                <uo k="s:originTrace" v="n:1227128029536560963" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="bg" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:6496299201655529040" />
        <node concept="3uibUv" id="bt" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:6496299201655529040" />
        </node>
      </node>
      <node concept="37vLTG" id="bh" role="3clF46">
        <property role="TrG5h" value="parentNode" />
        <uo k="s:originTrace" v="n:6496299201655529040" />
        <node concept="3uibUv" id="bu" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:6496299201655529040" />
        </node>
      </node>
      <node concept="37vLTG" id="bi" role="3clF46">
        <property role="TrG5h" value="childConcept" />
        <uo k="s:originTrace" v="n:6496299201655529040" />
        <node concept="3uibUv" id="bv" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
          <uo k="s:originTrace" v="n:6496299201655529040" />
        </node>
      </node>
      <node concept="37vLTG" id="bj" role="3clF46">
        <property role="TrG5h" value="link" />
        <uo k="s:originTrace" v="n:6496299201655529040" />
        <node concept="3uibUv" id="bw" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
          <uo k="s:originTrace" v="n:6496299201655529040" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="bx">
    <property role="TrG5h" value="Node_ConceptMethodCall_Constraints" />
    <uo k="s:originTrace" v="n:3235159848334081789" />
    <node concept="3Tm1VV" id="by" role="1B3o_S">
      <uo k="s:originTrace" v="n:3235159848334081789" />
    </node>
    <node concept="3uibUv" id="bz" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:3235159848334081789" />
    </node>
    <node concept="3clFbW" id="b$" role="jymVt">
      <uo k="s:originTrace" v="n:3235159848334081789" />
      <node concept="37vLTG" id="bB" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:3235159848334081789" />
        <node concept="3uibUv" id="bE" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:3235159848334081789" />
        </node>
      </node>
      <node concept="3cqZAl" id="bC" role="3clF45">
        <uo k="s:originTrace" v="n:3235159848334081789" />
      </node>
      <node concept="3clFbS" id="bD" role="3clF47">
        <uo k="s:originTrace" v="n:3235159848334081789" />
        <node concept="XkiVB" id="bF" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:3235159848334081789" />
          <node concept="1BaE9c" id="bH" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="Node_ConceptMethodCall$RC" />
            <uo k="s:originTrace" v="n:3235159848334081789" />
            <node concept="2YIFZM" id="bJ" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:3235159848334081789" />
              <node concept="11gdke" id="bK" role="37wK5m">
                <property role="11gdj1" value="af65afd8f0dd4942L" />
                <uo k="s:originTrace" v="n:3235159848334081789" />
              </node>
              <node concept="11gdke" id="bL" role="37wK5m">
                <property role="11gdj1" value="87d963a55f2a9db1L" />
                <uo k="s:originTrace" v="n:3235159848334081789" />
              </node>
              <node concept="11gdke" id="bM" role="37wK5m">
                <property role="11gdj1" value="2ce598bdcf8e55cdL" />
                <uo k="s:originTrace" v="n:3235159848334081789" />
              </node>
              <node concept="Xl_RD" id="bN" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.behavior.structure.Node_ConceptMethodCall" />
                <uo k="s:originTrace" v="n:3235159848334081789" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="bI" role="37wK5m">
            <ref role="3cqZAo" node="bB" resolve="initContext" />
            <uo k="s:originTrace" v="n:3235159848334081789" />
          </node>
        </node>
        <node concept="3clFbF" id="bG" role="3cqZAp">
          <uo k="s:originTrace" v="n:3235159848334081789" />
          <node concept="1rXfSq" id="bO" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:3235159848334081789" />
            <node concept="2ShNRf" id="bP" role="37wK5m">
              <uo k="s:originTrace" v="n:3235159848334081789" />
              <node concept="1pGfFk" id="bQ" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="bS" resolve="Node_ConceptMethodCall_Constraints.RD1" />
                <uo k="s:originTrace" v="n:3235159848334081789" />
                <node concept="Xjq3P" id="bR" role="37wK5m">
                  <uo k="s:originTrace" v="n:3235159848334081789" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="b_" role="jymVt">
      <uo k="s:originTrace" v="n:3235159848334081789" />
    </node>
    <node concept="312cEu" id="bA" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:3235159848334081789" />
      <node concept="3clFbW" id="bS" role="jymVt">
        <uo k="s:originTrace" v="n:3235159848334081789" />
        <node concept="37vLTG" id="bV" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:3235159848334081789" />
          <node concept="3uibUv" id="bY" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:3235159848334081789" />
          </node>
        </node>
        <node concept="3cqZAl" id="bW" role="3clF45">
          <uo k="s:originTrace" v="n:3235159848334081789" />
        </node>
        <node concept="3clFbS" id="bX" role="3clF47">
          <uo k="s:originTrace" v="n:3235159848334081789" />
          <node concept="XkiVB" id="bZ" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:3235159848334081789" />
            <node concept="1BaE9c" id="c0" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="baseMethodDeclaration$pyYw" />
              <uo k="s:originTrace" v="n:3235159848334081789" />
              <node concept="2YIFZM" id="c4" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:3235159848334081789" />
                <node concept="11gdke" id="c5" role="37wK5m">
                  <property role="11gdj1" value="f3061a5392264cc5L" />
                  <uo k="s:originTrace" v="n:3235159848334081789" />
                </node>
                <node concept="11gdke" id="c6" role="37wK5m">
                  <property role="11gdj1" value="a443f952ceaf5816L" />
                  <uo k="s:originTrace" v="n:3235159848334081789" />
                </node>
                <node concept="11gdke" id="c7" role="37wK5m">
                  <property role="11gdj1" value="11857355952L" />
                  <uo k="s:originTrace" v="n:3235159848334081789" />
                </node>
                <node concept="11gdke" id="c8" role="37wK5m">
                  <property role="11gdj1" value="f8c78301adL" />
                  <uo k="s:originTrace" v="n:3235159848334081789" />
                </node>
                <node concept="Xl_RD" id="c9" role="37wK5m">
                  <property role="Xl_RC" value="baseMethodDeclaration" />
                  <uo k="s:originTrace" v="n:3235159848334081789" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="c1" role="37wK5m">
              <ref role="3cqZAo" node="bV" resolve="container" />
              <uo k="s:originTrace" v="n:3235159848334081789" />
            </node>
            <node concept="3clFbT" id="c2" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:3235159848334081789" />
            </node>
            <node concept="3clFbT" id="c3" role="37wK5m">
              <uo k="s:originTrace" v="n:3235159848334081789" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="bT" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:3235159848334081789" />
        <node concept="3Tm1VV" id="ca" role="1B3o_S">
          <uo k="s:originTrace" v="n:3235159848334081789" />
        </node>
        <node concept="3uibUv" id="cb" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:3235159848334081789" />
        </node>
        <node concept="2AHcQZ" id="cc" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:3235159848334081789" />
        </node>
        <node concept="3clFbS" id="cd" role="3clF47">
          <uo k="s:originTrace" v="n:3235159848334081789" />
          <node concept="3cpWs6" id="cf" role="3cqZAp">
            <uo k="s:originTrace" v="n:3235159848334081789" />
            <node concept="2ShNRf" id="cg" role="3cqZAk">
              <uo k="s:originTrace" v="n:6302905782373066148" />
              <node concept="YeOm9" id="ch" role="2ShVmc">
                <uo k="s:originTrace" v="n:6302905782373066148" />
                <node concept="1Y3b0j" id="ci" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:6302905782373066148" />
                  <node concept="3Tm1VV" id="cj" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6302905782373066148" />
                  </node>
                  <node concept="3clFb_" id="ck" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:6302905782373066148" />
                    <node concept="3Tm1VV" id="cm" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6302905782373066148" />
                    </node>
                    <node concept="3uibUv" id="cn" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:6302905782373066148" />
                    </node>
                    <node concept="3clFbS" id="co" role="3clF47">
                      <uo k="s:originTrace" v="n:6302905782373066148" />
                      <node concept="3cpWs6" id="cq" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6302905782373066148" />
                        <node concept="2ShNRf" id="cr" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6302905782373066148" />
                          <node concept="1pGfFk" id="cs" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:6302905782373066148" />
                            <node concept="Xl_RD" id="ct" role="37wK5m">
                              <property role="Xl_RC" value="r:6786d6ee-e5cc-4a77-9efd-65a8dca8b187(jetbrains.mps.lang.behavior.constraints)" />
                              <uo k="s:originTrace" v="n:6302905782373066148" />
                            </node>
                            <node concept="Xl_RD" id="cu" role="37wK5m">
                              <property role="Xl_RC" value="6302905782373066148" />
                              <uo k="s:originTrace" v="n:6302905782373066148" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="cp" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6302905782373066148" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="cl" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:6302905782373066148" />
                    <node concept="3Tm1VV" id="cv" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6302905782373066148" />
                    </node>
                    <node concept="3uibUv" id="cw" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:6302905782373066148" />
                    </node>
                    <node concept="37vLTG" id="cx" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:6302905782373066148" />
                      <node concept="3uibUv" id="c$" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:6302905782373066148" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="cy" role="3clF47">
                      <uo k="s:originTrace" v="n:6302905782373066148" />
                      <node concept="3cpWs8" id="c_" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6302905782373066384" />
                        <node concept="3cpWsn" id="cZ" role="3cpWs9">
                          <property role="TrG5h" value="enclosingNode" />
                          <property role="3TUv4t" value="true" />
                          <uo k="s:originTrace" v="n:6302905782373066385" />
                          <node concept="3Tqbb2" id="d0" role="1tU5fm">
                            <uo k="s:originTrace" v="n:6302905782373066386" />
                          </node>
                          <node concept="1eOMI4" id="d1" role="33vP2m">
                            <uo k="s:originTrace" v="n:6302905782373066375" />
                            <node concept="3K4zz7" id="d2" role="1eOMHV">
                              <uo k="s:originTrace" v="n:6302905782373066376" />
                              <node concept="1DoJHT" id="d3" role="3K4E3e">
                                <property role="1Dpdpm" value="getContextNode" />
                                <uo k="s:originTrace" v="n:6302905782373066377" />
                                <node concept="3uibUv" id="d6" role="1Ez5kq">
                                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                </node>
                                <node concept="37vLTw" id="d7" role="1EMhIo">
                                  <ref role="3cqZAo" node="cx" resolve="_context" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="d4" role="3K4Cdx">
                                <uo k="s:originTrace" v="n:6302905782373066378" />
                                <node concept="1DoJHT" id="d8" role="2Oq$k0">
                                  <property role="1Dpdpm" value="getReferenceNode" />
                                  <uo k="s:originTrace" v="n:6302905782373066379" />
                                  <node concept="3uibUv" id="da" role="1Ez5kq">
                                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                  </node>
                                  <node concept="37vLTw" id="db" role="1EMhIo">
                                    <ref role="3cqZAo" node="cx" resolve="_context" />
                                  </node>
                                </node>
                                <node concept="3w_OXm" id="d9" role="2OqNvi">
                                  <uo k="s:originTrace" v="n:6302905782373066380" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="d5" role="3K4GZi">
                                <uo k="s:originTrace" v="n:6302905782373066381" />
                                <node concept="1DoJHT" id="dc" role="2Oq$k0">
                                  <property role="1Dpdpm" value="getReferenceNode" />
                                  <uo k="s:originTrace" v="n:6302905782373066382" />
                                  <node concept="3uibUv" id="de" role="1Ez5kq">
                                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                  </node>
                                  <node concept="37vLTw" id="df" role="1EMhIo">
                                    <ref role="3cqZAo" node="cx" resolve="_context" />
                                  </node>
                                </node>
                                <node concept="1mfA1w" id="dd" role="2OqNvi">
                                  <uo k="s:originTrace" v="n:6302905782373066383" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="cA" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6302905782373066150" />
                        <node concept="3cpWsn" id="dg" role="3cpWs9">
                          <property role="TrG5h" value="leftExpression" />
                          <uo k="s:originTrace" v="n:6302905782373066151" />
                          <node concept="3Tqbb2" id="dh" role="1tU5fm">
                            <ref role="ehGHo" to="tpee:fz3vP1J" resolve="Expression" />
                            <uo k="s:originTrace" v="n:6302905782373066152" />
                          </node>
                          <node concept="2OqwBi" id="di" role="33vP2m">
                            <uo k="s:originTrace" v="n:6302905782373066153" />
                            <node concept="1PxgMI" id="dj" role="2Oq$k0">
                              <uo k="s:originTrace" v="n:6302905782373066154" />
                              <node concept="37vLTw" id="dl" role="1m5AlR">
                                <ref role="3cqZAo" node="cZ" resolve="enclosingNode" />
                                <uo k="s:originTrace" v="n:6302905782373066387" />
                              </node>
                              <node concept="chp4Y" id="dm" role="3oSUPX">
                                <ref role="cht4Q" to="tpee:hqOqwz4" resolve="DotExpression" />
                                <uo k="s:originTrace" v="n:6302905782373066156" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="dk" role="2OqNvi">
                              <ref role="3Tt5mk" to="tpee:hqOq$gm" resolve="operand" />
                              <uo k="s:originTrace" v="n:6302905782373066157" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="cB" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6302905782373066158" />
                        <node concept="3cpWsn" id="dn" role="3cpWs9">
                          <property role="TrG5h" value="leftType" />
                          <uo k="s:originTrace" v="n:6302905782373066159" />
                          <node concept="3Tqbb2" id="do" role="1tU5fm">
                            <uo k="s:originTrace" v="n:6302905782373066160" />
                          </node>
                          <node concept="2OqwBi" id="dp" role="33vP2m">
                            <uo k="s:originTrace" v="n:6302905782373066161" />
                            <node concept="3JvlWi" id="dq" role="2OqNvi">
                              <uo k="s:originTrace" v="n:6302905782373066162" />
                            </node>
                            <node concept="37vLTw" id="dr" role="2Oq$k0">
                              <ref role="3cqZAo" node="dg" resolve="leftExpression" />
                              <uo k="s:originTrace" v="n:6302905782373066163" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="cC" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7363014363602115163" />
                      </node>
                      <node concept="3SKdUt" id="cD" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6302905782373066286" />
                        <node concept="1PaTwC" id="ds" role="1aUNEU">
                          <uo k="s:originTrace" v="n:700871696606814452" />
                          <node concept="3oM_SD" id="dt" role="1PaTwD">
                            <property role="3oM_SC" value="any" />
                            <uo k="s:originTrace" v="n:700871696606814453" />
                          </node>
                          <node concept="3oM_SD" id="du" role="1PaTwD">
                            <property role="3oM_SC" value="concept" />
                            <uo k="s:originTrace" v="n:700871696606814454" />
                          </node>
                          <node concept="3oM_SD" id="dv" role="1PaTwD">
                            <property role="3oM_SC" value="is" />
                            <uo k="s:originTrace" v="n:700871696606814455" />
                          </node>
                          <node concept="3oM_SD" id="dw" role="1PaTwD">
                            <property role="3oM_SC" value="AbstractConceptDeclaration," />
                            <uo k="s:originTrace" v="n:700871696606814456" />
                          </node>
                          <node concept="3oM_SD" id="dx" role="1PaTwD">
                            <property role="3oM_SC" value="not" />
                            <uo k="s:originTrace" v="n:700871696606814457" />
                          </node>
                          <node concept="3oM_SD" id="dy" role="1PaTwD">
                            <property role="3oM_SC" value="mere" />
                            <uo k="s:originTrace" v="n:700871696606814458" />
                          </node>
                          <node concept="3oM_SD" id="dz" role="1PaTwD">
                            <property role="3oM_SC" value="BaseConcept" />
                            <uo k="s:originTrace" v="n:700871696606814459" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="cE" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7363014363602268308" />
                        <node concept="3cpWsn" id="d$" role="3cpWs9">
                          <property role="TrG5h" value="defaultConceptTypeValue" />
                          <uo k="s:originTrace" v="n:7363014363602268311" />
                          <node concept="3Tqbb2" id="d_" role="1tU5fm">
                            <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                            <uo k="s:originTrace" v="n:7363014363602268304" />
                          </node>
                          <node concept="3B5_sB" id="dA" role="33vP2m">
                            <ref role="3B5MYn" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                            <uo k="s:originTrace" v="n:6302905782373066290" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="cF" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7363014363602300207" />
                        <node concept="3cpWsn" id="dB" role="3cpWs9">
                          <property role="TrG5h" value="defaultNodeTypeValue" />
                          <uo k="s:originTrace" v="n:7363014363602300210" />
                          <node concept="3Tqbb2" id="dC" role="1tU5fm">
                            <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                            <uo k="s:originTrace" v="n:7363014363602300205" />
                          </node>
                          <node concept="3B5_sB" id="dD" role="33vP2m">
                            <ref role="3B5MYn" to="tpck:gw2VY9q" resolve="BaseConcept" />
                            <uo k="s:originTrace" v="n:7363014363602316178" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="cG" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7363014363602257157" />
                      </node>
                      <node concept="3cpWs8" id="cH" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6302905782373066193" />
                        <node concept="3cpWsn" id="dE" role="3cpWs9">
                          <property role="TrG5h" value="conceptNode" />
                          <uo k="s:originTrace" v="n:6302905782373066194" />
                          <node concept="10Nm6u" id="dF" role="33vP2m">
                            <uo k="s:originTrace" v="n:7363014363602897538" />
                          </node>
                          <node concept="3Tqbb2" id="dG" role="1tU5fm">
                            <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                            <uo k="s:originTrace" v="n:6302905782373066195" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="cI" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6302905782373066198" />
                        <node concept="3cpWsn" id="dH" role="3cpWs9">
                          <property role="TrG5h" value="isStatic" />
                          <uo k="s:originTrace" v="n:6302905782373066199" />
                          <node concept="3clFbT" id="dI" role="33vP2m">
                            <property role="3clFbU" value="true" />
                            <uo k="s:originTrace" v="n:7363014363602222163" />
                          </node>
                          <node concept="10P_77" id="dJ" role="1tU5fm">
                            <uo k="s:originTrace" v="n:6302905782373066200" />
                          </node>
                        </node>
                      </node>
                      <node concept="3SKdUt" id="cJ" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6302905782373066196" />
                        <node concept="1PaTwC" id="dK" role="1aUNEU">
                          <uo k="s:originTrace" v="n:700871696606814460" />
                          <node concept="3oM_SD" id="dL" role="1PaTwD">
                            <property role="3oM_SC" value="" />
                            <uo k="s:originTrace" v="n:700871696606814461" />
                          </node>
                          <node concept="3oM_SD" id="dM" role="1PaTwD">
                            <property role="3oM_SC" value="when" />
                            <uo k="s:originTrace" v="n:700871696606814462" />
                          </node>
                          <node concept="3oM_SD" id="dN" role="1PaTwD">
                            <property role="3oM_SC" value="there's" />
                            <uo k="s:originTrace" v="n:700871696606814463" />
                          </node>
                          <node concept="3oM_SD" id="dO" role="1PaTwD">
                            <property role="3oM_SC" value="a" />
                            <uo k="s:originTrace" v="n:700871696606814464" />
                          </node>
                          <node concept="3oM_SD" id="dP" role="1PaTwD">
                            <property role="3oM_SC" value="concept" />
                            <uo k="s:originTrace" v="n:700871696606814465" />
                          </node>
                          <node concept="3oM_SD" id="dQ" role="1PaTwD">
                            <property role="3oM_SC" value="type," />
                            <uo k="s:originTrace" v="n:700871696606814466" />
                          </node>
                          <node concept="3oM_SD" id="dR" role="1PaTwD">
                            <property role="3oM_SC" value="there's" />
                            <uo k="s:originTrace" v="n:700871696606814467" />
                          </node>
                          <node concept="3oM_SD" id="dS" role="1PaTwD">
                            <property role="3oM_SC" value="no" />
                            <uo k="s:originTrace" v="n:700871696606814468" />
                          </node>
                          <node concept="3oM_SD" id="dT" role="1PaTwD">
                            <property role="3oM_SC" value="node" />
                            <uo k="s:originTrace" v="n:700871696606814469" />
                          </node>
                          <node concept="3oM_SD" id="dU" role="1PaTwD">
                            <property role="3oM_SC" value="to" />
                            <uo k="s:originTrace" v="n:700871696606814470" />
                          </node>
                          <node concept="3oM_SD" id="dV" role="1PaTwD">
                            <property role="3oM_SC" value="invoke" />
                            <uo k="s:originTrace" v="n:700871696606814471" />
                          </node>
                          <node concept="3oM_SD" id="dW" role="1PaTwD">
                            <property role="3oM_SC" value="instance" />
                            <uo k="s:originTrace" v="n:700871696606814472" />
                          </node>
                          <node concept="3oM_SD" id="dX" role="1PaTwD">
                            <property role="3oM_SC" value="method" />
                            <uo k="s:originTrace" v="n:700871696606814473" />
                          </node>
                          <node concept="3oM_SD" id="dY" role="1PaTwD">
                            <property role="3oM_SC" value="on." />
                            <uo k="s:originTrace" v="n:700871696606814474" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="cK" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7363014363602201553" />
                        <node concept="3cpWsn" id="dZ" role="3cpWs9">
                          <property role="TrG5h" value="conceptType" />
                          <uo k="s:originTrace" v="n:7363014363602201554" />
                          <node concept="3Tqbb2" id="e0" role="1tU5fm">
                            <ref role="ehGHo" to="tp25:5MFgGQnlLNI" resolve="SConceptType" />
                            <uo k="s:originTrace" v="n:7363014363602201541" />
                          </node>
                          <node concept="1UdQGJ" id="e1" role="33vP2m">
                            <uo k="s:originTrace" v="n:7363014363602201555" />
                            <node concept="1YaCAy" id="e2" role="1Ub_4A">
                              <property role="TrG5h" value="v" />
                              <ref role="1YaFvo" to="tp25:5MFgGQnlLNI" resolve="SConceptType" />
                              <uo k="s:originTrace" v="n:7363014363602201556" />
                            </node>
                            <node concept="37vLTw" id="e3" role="1Ub_4B">
                              <ref role="3cqZAo" node="dn" resolve="leftType" />
                              <uo k="s:originTrace" v="n:7363014363602201557" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="cL" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7363014363602827929" />
                        <node concept="3clFbS" id="e4" role="3clFbx">
                          <uo k="s:originTrace" v="n:7363014363602827931" />
                          <node concept="3cpWs8" id="e6" role="3cqZAp">
                            <uo k="s:originTrace" v="n:7363014363602846631" />
                            <node concept="3cpWsn" id="e8" role="3cpWs9">
                              <property role="TrG5h" value="decl" />
                              <uo k="s:originTrace" v="n:7363014363602846632" />
                              <node concept="3Tqbb2" id="e9" role="1tU5fm">
                                <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                                <uo k="s:originTrace" v="n:7363014363602846484" />
                              </node>
                              <node concept="2OqwBi" id="ea" role="33vP2m">
                                <uo k="s:originTrace" v="n:7363014363602846633" />
                                <node concept="37vLTw" id="eb" role="2Oq$k0">
                                  <ref role="3cqZAo" node="dZ" resolve="conceptType" />
                                  <uo k="s:originTrace" v="n:7363014363602846634" />
                                </node>
                                <node concept="3TrEf2" id="ec" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tp25:5MFgGQnlLNJ" resolve="conceptDeclaration" />
                                  <uo k="s:originTrace" v="n:7363014363602846635" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="e7" role="3cqZAp">
                            <uo k="s:originTrace" v="n:7363014363602840366" />
                            <node concept="37vLTI" id="ed" role="3clFbG">
                              <uo k="s:originTrace" v="n:7363014363602843684" />
                              <node concept="3K4zz7" id="ee" role="37vLTx">
                                <uo k="s:originTrace" v="n:7363014363602864508" />
                                <node concept="37vLTw" id="eg" role="3K4E3e">
                                  <ref role="3cqZAo" node="e8" resolve="decl" />
                                  <uo k="s:originTrace" v="n:7363014363602867081" />
                                </node>
                                <node concept="37vLTw" id="eh" role="3K4GZi">
                                  <ref role="3cqZAo" node="d$" resolve="defaultConceptTypeValue" />
                                  <uo k="s:originTrace" v="n:7363014363602869645" />
                                </node>
                                <node concept="3y3z36" id="ei" role="3K4Cdx">
                                  <uo k="s:originTrace" v="n:7363014363602861578" />
                                  <node concept="37vLTw" id="ej" role="3uHU7B">
                                    <ref role="3cqZAo" node="e8" resolve="decl" />
                                    <uo k="s:originTrace" v="n:7363014363602855468" />
                                  </node>
                                  <node concept="10Nm6u" id="ek" role="3uHU7w">
                                    <uo k="s:originTrace" v="n:7363014363602858662" />
                                  </node>
                                </node>
                              </node>
                              <node concept="37vLTw" id="ef" role="37vLTJ">
                                <ref role="3cqZAo" node="dE" resolve="conceptNode" />
                                <uo k="s:originTrace" v="n:7363014363602840364" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="e5" role="3clFbw">
                          <uo k="s:originTrace" v="n:7363014363602834502" />
                          <node concept="37vLTw" id="el" role="2Oq$k0">
                            <ref role="3cqZAo" node="dZ" resolve="conceptType" />
                            <uo k="s:originTrace" v="n:7363014363602830691" />
                          </node>
                          <node concept="3x8VRR" id="em" role="2OqNvi">
                            <uo k="s:originTrace" v="n:7363014363602837683" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="cM" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7363014363602822431" />
                      </node>
                      <node concept="3clFbJ" id="cN" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7363014363601674344" />
                        <node concept="3clFbS" id="en" role="3clFbx">
                          <uo k="s:originTrace" v="n:7363014363601674346" />
                          <node concept="3cpWs8" id="ep" role="3cqZAp">
                            <uo k="s:originTrace" v="n:7363014363602332873" />
                            <node concept="3cpWsn" id="er" role="3cpWs9">
                              <property role="TrG5h" value="conceptNodeType" />
                              <uo k="s:originTrace" v="n:7363014363602332874" />
                              <node concept="3Tqbb2" id="es" role="1tU5fm">
                                <ref role="ehGHo" to="tp25:h3THzq0" resolve="ConceptNodeType" />
                                <uo k="s:originTrace" v="n:7363014363602332850" />
                              </node>
                              <node concept="1UdQGJ" id="et" role="33vP2m">
                                <uo k="s:originTrace" v="n:7363014363602332875" />
                                <node concept="37vLTw" id="eu" role="1Ub_4B">
                                  <ref role="3cqZAo" node="dn" resolve="leftType" />
                                  <uo k="s:originTrace" v="n:7363014363602332876" />
                                </node>
                                <node concept="1YaCAy" id="ev" role="1Ub_4A">
                                  <property role="TrG5h" value="v" />
                                  <ref role="1YaFvo" to="tp25:h3THzq0" resolve="ConceptNodeType" />
                                  <uo k="s:originTrace" v="n:7363014363602332877" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbJ" id="eq" role="3cqZAp">
                            <uo k="s:originTrace" v="n:7363014363602908048" />
                            <node concept="3clFbS" id="ew" role="3clFbx">
                              <uo k="s:originTrace" v="n:7363014363602908050" />
                              <node concept="3cpWs8" id="ey" role="3cqZAp">
                                <uo k="s:originTrace" v="n:7363014363602923590" />
                                <node concept="3cpWsn" id="e$" role="3cpWs9">
                                  <property role="TrG5h" value="decl" />
                                  <uo k="s:originTrace" v="n:7363014363602923591" />
                                  <node concept="3Tqbb2" id="e_" role="1tU5fm">
                                    <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                                    <uo k="s:originTrace" v="n:7363014363602923569" />
                                  </node>
                                  <node concept="2OqwBi" id="eA" role="33vP2m">
                                    <uo k="s:originTrace" v="n:7363014363602923592" />
                                    <node concept="37vLTw" id="eB" role="2Oq$k0">
                                      <ref role="3cqZAo" node="er" resolve="conceptNodeType" />
                                      <uo k="s:originTrace" v="n:7363014363602923593" />
                                    </node>
                                    <node concept="3TrEf2" id="eC" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tp25:hbqa45m" resolve="conceptDeclaraton" />
                                      <uo k="s:originTrace" v="n:7363014363602923594" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="ez" role="3cqZAp">
                                <uo k="s:originTrace" v="n:7363014363601728279" />
                                <node concept="37vLTI" id="eD" role="3clFbG">
                                  <uo k="s:originTrace" v="n:7363014363601733166" />
                                  <node concept="37vLTw" id="eE" role="37vLTJ">
                                    <ref role="3cqZAo" node="dE" resolve="conceptNode" />
                                    <uo k="s:originTrace" v="n:7363014363601728275" />
                                  </node>
                                  <node concept="3K4zz7" id="eF" role="37vLTx">
                                    <uo k="s:originTrace" v="n:7363014363602353970" />
                                    <node concept="37vLTw" id="eG" role="3K4GZi">
                                      <ref role="3cqZAo" node="d$" resolve="defaultConceptTypeValue" />
                                      <uo k="s:originTrace" v="n:7363014363602362211" />
                                    </node>
                                    <node concept="3y3z36" id="eH" role="3K4Cdx">
                                      <uo k="s:originTrace" v="n:7363014363602359423" />
                                      <node concept="37vLTw" id="eJ" role="3uHU7B">
                                        <ref role="3cqZAo" node="e$" resolve="decl" />
                                        <uo k="s:originTrace" v="n:7363014363602928895" />
                                      </node>
                                      <node concept="10Nm6u" id="eK" role="3uHU7w">
                                        <uo k="s:originTrace" v="n:7363014363602351096" />
                                      </node>
                                    </node>
                                    <node concept="37vLTw" id="eI" role="3K4E3e">
                                      <ref role="3cqZAo" node="e$" resolve="decl" />
                                      <uo k="s:originTrace" v="n:7363014363602923595" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="2OqwBi" id="ex" role="3clFbw">
                              <uo k="s:originTrace" v="n:7363014363602912339" />
                              <node concept="37vLTw" id="eL" role="2Oq$k0">
                                <ref role="3cqZAo" node="er" resolve="conceptNodeType" />
                                <uo k="s:originTrace" v="n:7363014363602910617" />
                              </node>
                              <node concept="3x8VRR" id="eM" role="2OqNvi">
                                <uo k="s:originTrace" v="n:7363014363602915520" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="eo" role="3clFbw">
                          <uo k="s:originTrace" v="n:7363014363601954259" />
                          <node concept="3w_OXm" id="eN" role="2OqNvi">
                            <uo k="s:originTrace" v="n:7363014363601954260" />
                          </node>
                          <node concept="37vLTw" id="eO" role="2Oq$k0">
                            <ref role="3cqZAo" node="dE" resolve="conceptNode" />
                            <uo k="s:originTrace" v="n:7363014363601954261" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="cO" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7363014363601798544" />
                        <node concept="3clFbS" id="eP" role="3clFbx">
                          <uo k="s:originTrace" v="n:7363014363601798546" />
                          <node concept="3cpWs8" id="eR" role="3cqZAp">
                            <uo k="s:originTrace" v="n:7363014363602365297" />
                            <node concept="3cpWsn" id="eT" role="3cpWs9">
                              <property role="TrG5h" value="conceptTypeLit" />
                              <uo k="s:originTrace" v="n:7363014363602365298" />
                              <node concept="3Tqbb2" id="eU" role="1tU5fm">
                                <ref role="ehGHo" to="tp25:4JM1Q3lfSBE" resolve="SConceptTypeLiteral" />
                                <uo k="s:originTrace" v="n:7363014363602365279" />
                              </node>
                              <node concept="1UdQGJ" id="eV" role="33vP2m">
                                <uo k="s:originTrace" v="n:7363014363602365299" />
                                <node concept="1YaCAy" id="eW" role="1Ub_4A">
                                  <property role="TrG5h" value="v" />
                                  <ref role="1YaFvo" to="tp25:4JM1Q3lfSBE" resolve="SConceptTypeLiteral" />
                                  <uo k="s:originTrace" v="n:7363014363602365300" />
                                </node>
                                <node concept="37vLTw" id="eX" role="1Ub_4B">
                                  <ref role="3cqZAo" node="dn" resolve="leftType" />
                                  <uo k="s:originTrace" v="n:7363014363602365301" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbJ" id="eS" role="3cqZAp">
                            <uo k="s:originTrace" v="n:7363014363602934015" />
                            <node concept="3clFbS" id="eY" role="3clFbx">
                              <uo k="s:originTrace" v="n:7363014363602934017" />
                              <node concept="3cpWs8" id="f0" role="3cqZAp">
                                <uo k="s:originTrace" v="n:7363014363602951074" />
                                <node concept="3cpWsn" id="f2" role="3cpWs9">
                                  <property role="TrG5h" value="decl" />
                                  <uo k="s:originTrace" v="n:7363014363602951075" />
                                  <node concept="3Tqbb2" id="f3" role="1tU5fm">
                                    <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                                    <uo k="s:originTrace" v="n:7363014363602951061" />
                                  </node>
                                  <node concept="2OqwBi" id="f4" role="33vP2m">
                                    <uo k="s:originTrace" v="n:7363014363602951076" />
                                    <node concept="37vLTw" id="f5" role="2Oq$k0">
                                      <ref role="3cqZAo" node="eT" resolve="conceptTypeLit" />
                                      <uo k="s:originTrace" v="n:7363014363602951077" />
                                    </node>
                                    <node concept="3TrEf2" id="f6" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tp25:4JM1Q3lfSBF" resolve="conceptDeclaration" />
                                      <uo k="s:originTrace" v="n:7363014363602951078" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="f1" role="3cqZAp">
                                <uo k="s:originTrace" v="n:7363014363601812985" />
                                <node concept="37vLTI" id="f7" role="3clFbG">
                                  <uo k="s:originTrace" v="n:7363014363601812986" />
                                  <node concept="37vLTw" id="f8" role="37vLTJ">
                                    <ref role="3cqZAo" node="dE" resolve="conceptNode" />
                                    <uo k="s:originTrace" v="n:7363014363601812990" />
                                  </node>
                                  <node concept="3K4zz7" id="f9" role="37vLTx">
                                    <uo k="s:originTrace" v="n:7363014363602388281" />
                                    <node concept="37vLTw" id="fa" role="3K4GZi">
                                      <ref role="3cqZAo" node="d$" resolve="defaultConceptTypeValue" />
                                      <uo k="s:originTrace" v="n:7363014363602393734" />
                                    </node>
                                    <node concept="3y3z36" id="fb" role="3K4Cdx">
                                      <uo k="s:originTrace" v="n:7363014363602382956" />
                                      <node concept="10Nm6u" id="fd" role="3uHU7w">
                                        <uo k="s:originTrace" v="n:7363014363602385407" />
                                      </node>
                                      <node concept="37vLTw" id="fe" role="3uHU7B">
                                        <ref role="3cqZAo" node="f2" resolve="decl" />
                                        <uo k="s:originTrace" v="n:7363014363602956379" />
                                      </node>
                                    </node>
                                    <node concept="37vLTw" id="fc" role="3K4E3e">
                                      <ref role="3cqZAo" node="f2" resolve="decl" />
                                      <uo k="s:originTrace" v="n:7363014363602951079" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="2OqwBi" id="eZ" role="3clFbw">
                              <uo k="s:originTrace" v="n:7363014363602939823" />
                              <node concept="37vLTw" id="ff" role="2Oq$k0">
                                <ref role="3cqZAo" node="eT" resolve="conceptTypeLit" />
                                <uo k="s:originTrace" v="n:7363014363602936584" />
                              </node>
                              <node concept="3x8VRR" id="fg" role="2OqNvi">
                                <uo k="s:originTrace" v="n:7363014363602943004" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="eQ" role="3clFbw">
                          <uo k="s:originTrace" v="n:7363014363601950965" />
                          <node concept="3w_OXm" id="fh" role="2OqNvi">
                            <uo k="s:originTrace" v="n:7363014363601950966" />
                          </node>
                          <node concept="37vLTw" id="fi" role="2Oq$k0">
                            <ref role="3cqZAo" node="dE" resolve="conceptNode" />
                            <uo k="s:originTrace" v="n:7363014363601950967" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="cP" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7363014363601828960" />
                        <node concept="3clFbS" id="fj" role="3clFbx">
                          <uo k="s:originTrace" v="n:7363014363601828962" />
                          <node concept="3cpWs8" id="fl" role="3cqZAp">
                            <uo k="s:originTrace" v="n:7363014363602143496" />
                            <node concept="3cpWsn" id="fo" role="3cpWs9">
                              <property role="TrG5h" value="nodeType" />
                              <uo k="s:originTrace" v="n:7363014363602143497" />
                              <node concept="3Tqbb2" id="fp" role="1tU5fm">
                                <ref role="ehGHo" to="tp25:gzTqbfa" resolve="SNodeType" />
                                <uo k="s:originTrace" v="n:7363014363602143480" />
                              </node>
                              <node concept="1UdQGJ" id="fq" role="33vP2m">
                                <uo k="s:originTrace" v="n:7363014363602143498" />
                                <node concept="1YaCAy" id="fr" role="1Ub_4A">
                                  <property role="TrG5h" value="v" />
                                  <ref role="1YaFvo" to="tp25:gzTqbfa" resolve="SNodeType" />
                                  <uo k="s:originTrace" v="n:7363014363602143499" />
                                </node>
                                <node concept="37vLTw" id="fs" role="1Ub_4B">
                                  <ref role="3cqZAo" node="dn" resolve="leftType" />
                                  <uo k="s:originTrace" v="n:7363014363602143500" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbJ" id="fm" role="3cqZAp">
                            <uo k="s:originTrace" v="n:7363014363602961503" />
                            <node concept="3clFbS" id="ft" role="3clFbx">
                              <uo k="s:originTrace" v="n:7363014363602961505" />
                              <node concept="3cpWs8" id="fv" role="3cqZAp">
                                <uo k="s:originTrace" v="n:7363014363602975553" />
                                <node concept="3cpWsn" id="fx" role="3cpWs9">
                                  <property role="TrG5h" value="decl" />
                                  <uo k="s:originTrace" v="n:7363014363602975554" />
                                  <node concept="3Tqbb2" id="fy" role="1tU5fm">
                                    <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                                    <uo k="s:originTrace" v="n:7363014363602975530" />
                                  </node>
                                  <node concept="2OqwBi" id="fz" role="33vP2m">
                                    <uo k="s:originTrace" v="n:7363014363602975555" />
                                    <node concept="37vLTw" id="f$" role="2Oq$k0">
                                      <ref role="3cqZAo" node="fo" resolve="nodeType" />
                                      <uo k="s:originTrace" v="n:7363014363602975556" />
                                    </node>
                                    <node concept="3TrEf2" id="f_" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tp25:g$ehGDh" resolve="concept" />
                                      <uo k="s:originTrace" v="n:7363014363602975557" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="fw" role="3cqZAp">
                                <uo k="s:originTrace" v="n:7363014363602399193" />
                                <node concept="37vLTI" id="fA" role="3clFbG">
                                  <uo k="s:originTrace" v="n:7363014363602402630" />
                                  <node concept="3K4zz7" id="fB" role="37vLTx">
                                    <uo k="s:originTrace" v="n:7363014363602411497" />
                                    <node concept="37vLTw" id="fD" role="3K4E3e">
                                      <ref role="3cqZAo" node="fx" resolve="decl" />
                                      <uo k="s:originTrace" v="n:7363014363602975558" />
                                    </node>
                                    <node concept="37vLTw" id="fE" role="3K4GZi">
                                      <ref role="3cqZAo" node="dB" resolve="defaultNodeTypeValue" />
                                      <uo k="s:originTrace" v="n:7363014363602985763" />
                                    </node>
                                    <node concept="3y3z36" id="fF" role="3K4Cdx">
                                      <uo k="s:originTrace" v="n:7363014363602408613" />
                                      <node concept="10Nm6u" id="fG" role="3uHU7w">
                                        <uo k="s:originTrace" v="n:7363014363602408623" />
                                      </node>
                                      <node concept="37vLTw" id="fH" role="3uHU7B">
                                        <ref role="3cqZAo" node="fx" resolve="decl" />
                                        <uo k="s:originTrace" v="n:7363014363602980892" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="fC" role="37vLTJ">
                                    <ref role="3cqZAo" node="dE" resolve="conceptNode" />
                                    <uo k="s:originTrace" v="n:7363014363602399191" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="2OqwBi" id="fu" role="3clFbw">
                              <uo k="s:originTrace" v="n:7363014363602965798" />
                              <node concept="37vLTw" id="fI" role="2Oq$k0">
                                <ref role="3cqZAo" node="fo" resolve="nodeType" />
                                <uo k="s:originTrace" v="n:7363014363602964076" />
                              </node>
                              <node concept="3x8VRR" id="fJ" role="2OqNvi">
                                <uo k="s:originTrace" v="n:7363014363602967462" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="fn" role="3cqZAp">
                            <uo k="s:originTrace" v="n:7363014363602227597" />
                            <node concept="37vLTI" id="fK" role="3clFbG">
                              <uo k="s:originTrace" v="n:7363014363602230878" />
                              <node concept="3clFbT" id="fL" role="37vLTx">
                                <property role="3clFbU" value="false" />
                                <uo k="s:originTrace" v="n:7363014363602233740" />
                              </node>
                              <node concept="37vLTw" id="fM" role="37vLTJ">
                                <ref role="3cqZAo" node="dH" resolve="isStatic" />
                                <uo k="s:originTrace" v="n:7363014363602227595" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="fk" role="3clFbw">
                          <uo k="s:originTrace" v="n:7363014363601947671" />
                          <node concept="3w_OXm" id="fN" role="2OqNvi">
                            <uo k="s:originTrace" v="n:7363014363601947672" />
                          </node>
                          <node concept="37vLTw" id="fO" role="2Oq$k0">
                            <ref role="3cqZAo" node="dE" resolve="conceptNode" />
                            <uo k="s:originTrace" v="n:7363014363601947673" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="cQ" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7363014363602433642" />
                      </node>
                      <node concept="3clFbJ" id="cR" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7363014363602452265" />
                        <node concept="3clFbS" id="fP" role="3clFbx">
                          <uo k="s:originTrace" v="n:7363014363602452267" />
                          <node concept="3cpWs6" id="fR" role="3cqZAp">
                            <uo k="s:originTrace" v="n:7363014363602465143" />
                            <node concept="2ShNRf" id="fS" role="3cqZAk">
                              <uo k="s:originTrace" v="n:7363014363602470413" />
                              <node concept="1pGfFk" id="fT" role="2ShVmc">
                                <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
                                <uo k="s:originTrace" v="n:7363014363602473565" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="fQ" role="3clFbw">
                          <uo k="s:originTrace" v="n:7363014363602459141" />
                          <node concept="37vLTw" id="fU" role="2Oq$k0">
                            <ref role="3cqZAo" node="dE" resolve="conceptNode" />
                            <uo k="s:originTrace" v="n:7363014363602455102" />
                          </node>
                          <node concept="3w_OXm" id="fV" role="2OqNvi">
                            <uo k="s:originTrace" v="n:7363014363602462503" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="cS" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7363014363602449440" />
                      </node>
                      <node concept="3cpWs8" id="cT" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6302905782373066292" />
                        <node concept="3cpWsn" id="fW" role="3cpWs9">
                          <property role="TrG5h" value="methods" />
                          <uo k="s:originTrace" v="n:6302905782373066293" />
                          <node concept="A3Dl8" id="fX" role="1tU5fm">
                            <uo k="s:originTrace" v="n:3720886148881951996" />
                            <node concept="3Tqbb2" id="fZ" role="A3Ik2">
                              <ref role="ehGHo" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
                              <uo k="s:originTrace" v="n:3720886148882031512" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="fY" role="33vP2m">
                            <uo k="s:originTrace" v="n:6302905782373066294" />
                            <node concept="ANE8D" id="g0" role="2OqNvi">
                              <uo k="s:originTrace" v="n:6302905782373066295" />
                            </node>
                            <node concept="2OqwBi" id="g1" role="2Oq$k0">
                              <uo k="s:originTrace" v="n:6302905782373066296" />
                              <node concept="2OqwBi" id="g2" role="2Oq$k0">
                                <uo k="s:originTrace" v="n:6302905782373066297" />
                                <node concept="37vLTw" id="g4" role="2Oq$k0">
                                  <ref role="3cqZAo" node="dE" resolve="conceptNode" />
                                  <uo k="s:originTrace" v="n:6302905782373066298" />
                                </node>
                                <node concept="3zqWPK" id="g5" role="2OqNvi">
                                  <ref role="37wK5l" to="tpcn:wrIPXhfIPX" resolve="getVisibleConceptMethods" />
                                  <uo k="s:originTrace" v="n:8085146484218860122" />
                                  <node concept="37vLTw" id="g6" role="37wK5m">
                                    <ref role="3cqZAo" node="cZ" resolve="enclosingNode" />
                                    <uo k="s:originTrace" v="n:8085146484218860124" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3zZkjj" id="g3" role="2OqNvi">
                                <uo k="s:originTrace" v="n:6302905782373066301" />
                                <node concept="1bVj0M" id="g7" role="23t8la">
                                  <uo k="s:originTrace" v="n:6302905782373066302" />
                                  <node concept="3clFbS" id="g8" role="1bW5cS">
                                    <uo k="s:originTrace" v="n:6302905782373066303" />
                                    <node concept="3clFbF" id="ga" role="3cqZAp">
                                      <uo k="s:originTrace" v="n:6302905782373066304" />
                                      <node concept="3clFbC" id="gb" role="3clFbG">
                                        <uo k="s:originTrace" v="n:6302905782373066305" />
                                        <node concept="37vLTw" id="gc" role="3uHU7w">
                                          <ref role="3cqZAo" node="dH" resolve="isStatic" />
                                          <uo k="s:originTrace" v="n:6302905782373066306" />
                                        </node>
                                        <node concept="2OqwBi" id="gd" role="3uHU7B">
                                          <uo k="s:originTrace" v="n:6302905782373066307" />
                                          <node concept="3TrcHB" id="ge" role="2OqNvi">
                                            <ref role="3TsBF5" to="1i04:55xfRZxar9d" resolve="isStatic" />
                                            <uo k="s:originTrace" v="n:6302905782373066308" />
                                          </node>
                                          <node concept="37vLTw" id="gf" role="2Oq$k0">
                                            <ref role="3cqZAo" node="g9" resolve="it" />
                                            <uo k="s:originTrace" v="n:6302905782373066309" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="gl6BB" id="g9" role="1bW2Oz">
                                    <property role="TrG5h" value="it" />
                                    <uo k="s:originTrace" v="n:6847626768367732468" />
                                    <node concept="2jxLKc" id="gg" role="1tU5fm">
                                      <uo k="s:originTrace" v="n:6847626768367732469" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="cU" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6302905782373066313" />
                      </node>
                      <node concept="3SKdUt" id="cV" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7363014363603058652" />
                        <node concept="1PaTwC" id="gh" role="1aUNEU">
                          <uo k="s:originTrace" v="n:700871696606814475" />
                          <node concept="3oM_SD" id="gi" role="1PaTwD">
                            <property role="3oM_SC" value="to" />
                            <uo k="s:originTrace" v="n:700871696606814476" />
                          </node>
                          <node concept="3oM_SD" id="gj" role="1PaTwD">
                            <property role="3oM_SC" value="remove?" />
                            <uo k="s:originTrace" v="n:700871696606814477" />
                          </node>
                          <node concept="3oM_SD" id="gk" role="1PaTwD">
                            <property role="3oM_SC" value="(ap)" />
                            <uo k="s:originTrace" v="n:700871696606814478" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="cW" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6302905782373066314" />
                        <node concept="3clFbS" id="gl" role="3clFbx">
                          <uo k="s:originTrace" v="n:6302905782373066315" />
                          <node concept="3SKdUt" id="gn" role="3cqZAp">
                            <uo k="s:originTrace" v="n:6302905782373066316" />
                            <node concept="1PaTwC" id="gp" role="1aUNEU">
                              <uo k="s:originTrace" v="n:700871696606814479" />
                              <node concept="3oM_SD" id="gq" role="1PaTwD">
                                <property role="3oM_SC" value="conceptNode&lt;&gt;" />
                                <uo k="s:originTrace" v="n:700871696606814480" />
                              </node>
                              <node concept="3oM_SD" id="gr" role="1PaTwD">
                                <property role="3oM_SC" value="is" />
                                <uo k="s:originTrace" v="n:700871696606814481" />
                              </node>
                              <node concept="3oM_SD" id="gs" role="1PaTwD">
                                <property role="3oM_SC" value="subtype" />
                                <uo k="s:originTrace" v="n:700871696606814482" />
                              </node>
                              <node concept="3oM_SD" id="gt" role="1PaTwD">
                                <property role="3oM_SC" value="of" />
                                <uo k="s:originTrace" v="n:700871696606814483" />
                              </node>
                              <node concept="3oM_SD" id="gu" role="1PaTwD">
                                <property role="3oM_SC" value="node&lt;AbstractConceptDeclaration&gt;," />
                                <uo k="s:originTrace" v="n:700871696606814484" />
                              </node>
                              <node concept="3oM_SD" id="gv" role="1PaTwD">
                                <property role="3oM_SC" value="why" />
                                <uo k="s:originTrace" v="n:700871696606814485" />
                              </node>
                              <node concept="3oM_SD" id="gw" role="1PaTwD">
                                <property role="3oM_SC" value="can't" />
                                <uo k="s:originTrace" v="n:700871696606814486" />
                              </node>
                              <node concept="3oM_SD" id="gx" role="1PaTwD">
                                <property role="3oM_SC" value="I" />
                                <uo k="s:originTrace" v="n:700871696606814487" />
                              </node>
                              <node concept="3oM_SD" id="gy" role="1PaTwD">
                                <property role="3oM_SC" value="invoke" />
                                <uo k="s:originTrace" v="n:700871696606814488" />
                              </node>
                              <node concept="3oM_SD" id="gz" role="1PaTwD">
                                <property role="3oM_SC" value="methods" />
                                <uo k="s:originTrace" v="n:700871696606814489" />
                              </node>
                              <node concept="3oM_SD" id="g$" role="1PaTwD">
                                <property role="3oM_SC" value="of" />
                                <uo k="s:originTrace" v="n:700871696606814490" />
                              </node>
                              <node concept="3oM_SD" id="g_" role="1PaTwD">
                                <property role="3oM_SC" value="the" />
                                <uo k="s:originTrace" v="n:700871696606814491" />
                              </node>
                              <node concept="3oM_SD" id="gA" role="1PaTwD">
                                <property role="3oM_SC" value="latter" />
                                <uo k="s:originTrace" v="n:700871696606814492" />
                              </node>
                              <node concept="3oM_SD" id="gB" role="1PaTwD">
                                <property role="3oM_SC" value="(used" />
                                <uo k="s:originTrace" v="n:700871696606814493" />
                              </node>
                              <node concept="3oM_SD" id="gC" role="1PaTwD">
                                <property role="3oM_SC" value="to" />
                                <uo k="s:originTrace" v="n:700871696606814494" />
                              </node>
                              <node concept="3oM_SD" id="gD" role="1PaTwD">
                                <property role="3oM_SC" value="workaround" />
                                <uo k="s:originTrace" v="n:700871696606814495" />
                              </node>
                              <node concept="3oM_SD" id="gE" role="1PaTwD">
                                <property role="3oM_SC" value="with" />
                                <uo k="s:originTrace" v="n:700871696606814496" />
                              </node>
                              <node concept="3oM_SD" id="gF" role="1PaTwD">
                                <property role="3oM_SC" value="node.conceptNode.asNode.methodCall," />
                                <uo k="s:originTrace" v="n:700871696606814497" />
                              </node>
                              <node concept="3oM_SD" id="gG" role="1PaTwD">
                                <property role="3oM_SC" value="which" />
                                <uo k="s:originTrace" v="n:700871696606814498" />
                              </node>
                              <node concept="3oM_SD" id="gH" role="1PaTwD">
                                <property role="3oM_SC" value="is" />
                                <uo k="s:originTrace" v="n:700871696606814499" />
                              </node>
                              <node concept="3oM_SD" id="gI" role="1PaTwD">
                                <property role="3oM_SC" value="stupid)" />
                                <uo k="s:originTrace" v="n:700871696606814500" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="go" role="3cqZAp">
                            <uo k="s:originTrace" v="n:6302905782373066318" />
                            <node concept="37vLTI" id="gJ" role="3clFbG">
                              <uo k="s:originTrace" v="n:6302905782373066319" />
                              <node concept="2OqwBi" id="gK" role="37vLTx">
                                <uo k="s:originTrace" v="n:6302905782373066320" />
                                <node concept="2OqwBi" id="gM" role="2Oq$k0">
                                  <uo k="s:originTrace" v="n:6302905782373066321" />
                                  <node concept="37vLTw" id="gO" role="2Oq$k0">
                                    <ref role="3cqZAo" node="fW" resolve="methods" />
                                    <uo k="s:originTrace" v="n:6302905782373066322" />
                                  </node>
                                  <node concept="3QWeyG" id="gP" role="2OqNvi">
                                    <uo k="s:originTrace" v="n:6302905782373066323" />
                                    <node concept="2OqwBi" id="gQ" role="576Qk">
                                      <uo k="s:originTrace" v="n:6302905782373066324" />
                                      <node concept="2OqwBi" id="gR" role="2Oq$k0">
                                        <uo k="s:originTrace" v="n:6302905782373066325" />
                                        <node concept="37vLTw" id="gT" role="2Oq$k0">
                                          <ref role="3cqZAo" node="d$" resolve="defaultConceptTypeValue" />
                                          <uo k="s:originTrace" v="n:7363014363603053626" />
                                        </node>
                                        <node concept="3zqWPK" id="gU" role="2OqNvi">
                                          <ref role="37wK5l" to="tpcn:wrIPXhfIPX" resolve="getVisibleConceptMethods" />
                                          <uo k="s:originTrace" v="n:8085146484218860125" />
                                          <node concept="37vLTw" id="gV" role="37wK5m">
                                            <ref role="3cqZAo" node="cZ" resolve="enclosingNode" />
                                            <uo k="s:originTrace" v="n:8085146484218860127" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3zZkjj" id="gS" role="2OqNvi">
                                        <uo k="s:originTrace" v="n:6302905782373066329" />
                                        <node concept="1bVj0M" id="gW" role="23t8la">
                                          <uo k="s:originTrace" v="n:6302905782373066330" />
                                          <node concept="3clFbS" id="gX" role="1bW5cS">
                                            <uo k="s:originTrace" v="n:6302905782373066331" />
                                            <node concept="3clFbF" id="gZ" role="3cqZAp">
                                              <uo k="s:originTrace" v="n:6302905782373066332" />
                                              <node concept="3clFbC" id="h0" role="3clFbG">
                                                <uo k="s:originTrace" v="n:6302905782373066333" />
                                                <node concept="3clFbT" id="h1" role="3uHU7w">
                                                  <property role="3clFbU" value="false" />
                                                  <uo k="s:originTrace" v="n:6302905782373066334" />
                                                </node>
                                                <node concept="2OqwBi" id="h2" role="3uHU7B">
                                                  <uo k="s:originTrace" v="n:6302905782373066335" />
                                                  <node concept="37vLTw" id="h3" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="gY" resolve="it" />
                                                    <uo k="s:originTrace" v="n:6302905782373066336" />
                                                  </node>
                                                  <node concept="3TrcHB" id="h4" role="2OqNvi">
                                                    <ref role="3TsBF5" to="1i04:55xfRZxar9d" resolve="isStatic" />
                                                    <uo k="s:originTrace" v="n:6302905782373066337" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="gl6BB" id="gY" role="1bW2Oz">
                                            <property role="TrG5h" value="it" />
                                            <uo k="s:originTrace" v="n:6847626768367732470" />
                                            <node concept="2jxLKc" id="h5" role="1tU5fm">
                                              <uo k="s:originTrace" v="n:6847626768367732471" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="ANE8D" id="gN" role="2OqNvi">
                                  <uo k="s:originTrace" v="n:6302905782373066340" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="gL" role="37vLTJ">
                                <ref role="3cqZAo" node="fW" resolve="methods" />
                                <uo k="s:originTrace" v="n:6302905782373066341" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="gm" role="3clFbw">
                          <uo k="s:originTrace" v="n:6302905782373066342" />
                          <node concept="37vLTw" id="h6" role="2Oq$k0">
                            <ref role="3cqZAo" node="dn" resolve="leftType" />
                            <uo k="s:originTrace" v="n:6302905782373066343" />
                          </node>
                          <node concept="1mIQ4w" id="h7" role="2OqNvi">
                            <uo k="s:originTrace" v="n:6302905782373066344" />
                            <node concept="chp4Y" id="h8" role="cj9EA">
                              <ref role="cht4Q" to="tp25:h3THzq0" resolve="ConceptNodeType" />
                              <uo k="s:originTrace" v="n:6302905782373066345" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="cX" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6302905782373066346" />
                      </node>
                      <node concept="3cpWs6" id="cY" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6302905782373066347" />
                        <node concept="2YIFZM" id="h9" role="3cqZAk">
                          <ref role="37wK5l" to="o8zo:3jEbQoczdCs" resolve="forResolvableElements" />
                          <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                          <uo k="s:originTrace" v="n:6302905782373142599" />
                          <node concept="37vLTw" id="ha" role="37wK5m">
                            <ref role="3cqZAo" node="fW" resolve="methods" />
                            <uo k="s:originTrace" v="n:6302905782373146470" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="cz" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6302905782373066148" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="ce" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:3235159848334081789" />
        </node>
      </node>
      <node concept="3uibUv" id="bU" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:3235159848334081789" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="hb">
    <property role="3GE5qa" value="" />
    <property role="TrG5h" value="SuperConceptExpression_Constraints" />
    <uo k="s:originTrace" v="n:7613853987897854170" />
    <node concept="3Tm1VV" id="hc" role="1B3o_S">
      <uo k="s:originTrace" v="n:7613853987897854170" />
    </node>
    <node concept="3uibUv" id="hd" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:7613853987897854170" />
    </node>
    <node concept="3clFbW" id="he" role="jymVt">
      <uo k="s:originTrace" v="n:7613853987897854170" />
      <node concept="37vLTG" id="hi" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:7613853987897854170" />
        <node concept="3uibUv" id="hl" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:7613853987897854170" />
        </node>
      </node>
      <node concept="3cqZAl" id="hj" role="3clF45">
        <uo k="s:originTrace" v="n:7613853987897854170" />
      </node>
      <node concept="3clFbS" id="hk" role="3clF47">
        <uo k="s:originTrace" v="n:7613853987897854170" />
        <node concept="XkiVB" id="hm" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:7613853987897854170" />
          <node concept="1BaE9c" id="hp" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="SuperConceptExpression$_4" />
            <uo k="s:originTrace" v="n:7613853987897854170" />
            <node concept="2YIFZM" id="hr" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:7613853987897854170" />
              <node concept="11gdke" id="hs" role="37wK5m">
                <property role="11gdj1" value="af65afd8f0dd4942L" />
                <uo k="s:originTrace" v="n:7613853987897854170" />
              </node>
              <node concept="11gdke" id="ht" role="37wK5m">
                <property role="11gdj1" value="87d963a55f2a9db1L" />
                <uo k="s:originTrace" v="n:7613853987897854170" />
              </node>
              <node concept="11gdke" id="hu" role="37wK5m">
                <property role="11gdj1" value="69a9d7dcb057a7a7L" />
                <uo k="s:originTrace" v="n:7613853987897854170" />
              </node>
              <node concept="Xl_RD" id="hv" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.behavior.structure.SuperConceptExpression" />
                <uo k="s:originTrace" v="n:7613853987897854170" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="hq" role="37wK5m">
            <ref role="3cqZAo" node="hi" resolve="initContext" />
            <uo k="s:originTrace" v="n:7613853987897854170" />
          </node>
        </node>
        <node concept="3clFbF" id="hn" role="3cqZAp">
          <uo k="s:originTrace" v="n:7613853987897854170" />
          <node concept="1rXfSq" id="hw" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:7613853987897854170" />
            <node concept="2ShNRf" id="hx" role="37wK5m">
              <uo k="s:originTrace" v="n:7613853987897854170" />
              <node concept="1pGfFk" id="hy" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="ir" resolve="SuperConceptExpression_Constraints.RD1" />
                <uo k="s:originTrace" v="n:7613853987897854170" />
                <node concept="Xjq3P" id="hz" role="37wK5m">
                  <uo k="s:originTrace" v="n:7613853987897854170" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ho" role="3cqZAp">
          <uo k="s:originTrace" v="n:7613853987897854170" />
          <node concept="1rXfSq" id="h$" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.setCanBeChildConstraint(jetbrains.mps.smodel.runtime.ConstraintFunction)" resolve="setCanBeChildConstraint" />
            <uo k="s:originTrace" v="n:7613853987897854170" />
            <node concept="2ShNRf" id="h_" role="37wK5m">
              <uo k="s:originTrace" v="n:7613853987897854170" />
              <node concept="YeOm9" id="hA" role="2ShVmc">
                <uo k="s:originTrace" v="n:7613853987897854170" />
                <node concept="1Y3b0j" id="hB" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <uo k="s:originTrace" v="n:7613853987897854170" />
                  <node concept="3Tm1VV" id="hC" role="1B3o_S">
                    <uo k="s:originTrace" v="n:7613853987897854170" />
                  </node>
                  <node concept="3clFb_" id="hD" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="invoke" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <uo k="s:originTrace" v="n:7613853987897854170" />
                    <node concept="3Tm1VV" id="hG" role="1B3o_S">
                      <uo k="s:originTrace" v="n:7613853987897854170" />
                    </node>
                    <node concept="2AHcQZ" id="hH" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:7613853987897854170" />
                    </node>
                    <node concept="3uibUv" id="hI" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      <uo k="s:originTrace" v="n:7613853987897854170" />
                    </node>
                    <node concept="37vLTG" id="hJ" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <uo k="s:originTrace" v="n:7613853987897854170" />
                      <node concept="3uibUv" id="hM" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                        <uo k="s:originTrace" v="n:7613853987897854170" />
                      </node>
                      <node concept="2AHcQZ" id="hN" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        <uo k="s:originTrace" v="n:7613853987897854170" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="hK" role="3clF46">
                      <property role="TrG5h" value="checkingNodeContext" />
                      <uo k="s:originTrace" v="n:7613853987897854170" />
                      <node concept="3uibUv" id="hO" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                        <uo k="s:originTrace" v="n:7613853987897854170" />
                      </node>
                      <node concept="2AHcQZ" id="hP" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                        <uo k="s:originTrace" v="n:7613853987897854170" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="hL" role="3clF47">
                      <uo k="s:originTrace" v="n:7613853987897854170" />
                      <node concept="3cpWs8" id="hQ" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7613853987897854170" />
                        <node concept="3cpWsn" id="hV" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:7613853987897854170" />
                          <node concept="10P_77" id="hW" role="1tU5fm">
                            <uo k="s:originTrace" v="n:7613853987897854170" />
                          </node>
                          <node concept="1rXfSq" id="hX" role="33vP2m">
                            <ref role="37wK5l" node="hh" resolve="staticCanBeAChild" />
                            <uo k="s:originTrace" v="n:7613853987897854170" />
                            <node concept="2OqwBi" id="hY" role="37wK5m">
                              <uo k="s:originTrace" v="n:7613853987897854170" />
                              <node concept="37vLTw" id="i2" role="2Oq$k0">
                                <ref role="3cqZAo" node="hJ" resolve="context" />
                                <uo k="s:originTrace" v="n:7613853987897854170" />
                              </node>
                              <node concept="liA8E" id="i3" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getNode()" resolve="getNode" />
                                <uo k="s:originTrace" v="n:7613853987897854170" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="hZ" role="37wK5m">
                              <uo k="s:originTrace" v="n:7613853987897854170" />
                              <node concept="37vLTw" id="i4" role="2Oq$k0">
                                <ref role="3cqZAo" node="hJ" resolve="context" />
                                <uo k="s:originTrace" v="n:7613853987897854170" />
                              </node>
                              <node concept="liA8E" id="i5" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getParentNode()" resolve="getParentNode" />
                                <uo k="s:originTrace" v="n:7613853987897854170" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="i0" role="37wK5m">
                              <uo k="s:originTrace" v="n:7613853987897854170" />
                              <node concept="37vLTw" id="i6" role="2Oq$k0">
                                <ref role="3cqZAo" node="hJ" resolve="context" />
                                <uo k="s:originTrace" v="n:7613853987897854170" />
                              </node>
                              <node concept="liA8E" id="i7" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getConcept()" resolve="getConcept" />
                                <uo k="s:originTrace" v="n:7613853987897854170" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="i1" role="37wK5m">
                              <uo k="s:originTrace" v="n:7613853987897854170" />
                              <node concept="37vLTw" id="i8" role="2Oq$k0">
                                <ref role="3cqZAo" node="hJ" resolve="context" />
                                <uo k="s:originTrace" v="n:7613853987897854170" />
                              </node>
                              <node concept="liA8E" id="i9" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getLink()" resolve="getLink" />
                                <uo k="s:originTrace" v="n:7613853987897854170" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="hR" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7613853987897854170" />
                      </node>
                      <node concept="3clFbJ" id="hS" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7613853987897854170" />
                        <node concept="3clFbS" id="ia" role="3clFbx">
                          <uo k="s:originTrace" v="n:7613853987897854170" />
                          <node concept="3clFbF" id="ic" role="3cqZAp">
                            <uo k="s:originTrace" v="n:7613853987897854170" />
                            <node concept="2OqwBi" id="id" role="3clFbG">
                              <uo k="s:originTrace" v="n:7613853987897854170" />
                              <node concept="37vLTw" id="ie" role="2Oq$k0">
                                <ref role="3cqZAo" node="hK" resolve="checkingNodeContext" />
                                <uo k="s:originTrace" v="n:7613853987897854170" />
                              </node>
                              <node concept="liA8E" id="if" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                                <uo k="s:originTrace" v="n:7613853987897854170" />
                                <node concept="1dyn4i" id="ig" role="37wK5m">
                                  <property role="1dyqJU" value="canBeChildBreakingPoint" />
                                  <uo k="s:originTrace" v="n:7613853987897854170" />
                                  <node concept="2ShNRf" id="ih" role="1dyrYi">
                                    <uo k="s:originTrace" v="n:7613853987897854170" />
                                    <node concept="1pGfFk" id="ii" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:7613853987897854170" />
                                      <node concept="Xl_RD" id="ij" role="37wK5m">
                                        <property role="Xl_RC" value="r:6786d6ee-e5cc-4a77-9efd-65a8dca8b187(jetbrains.mps.lang.behavior.constraints)" />
                                        <uo k="s:originTrace" v="n:7613853987897854170" />
                                      </node>
                                      <node concept="Xl_RD" id="ik" role="37wK5m">
                                        <property role="Xl_RC" value="1227128029536560969" />
                                        <uo k="s:originTrace" v="n:7613853987897854170" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Wc70l" id="ib" role="3clFbw">
                          <uo k="s:originTrace" v="n:7613853987897854170" />
                          <node concept="3y3z36" id="il" role="3uHU7w">
                            <uo k="s:originTrace" v="n:7613853987897854170" />
                            <node concept="10Nm6u" id="in" role="3uHU7w">
                              <uo k="s:originTrace" v="n:7613853987897854170" />
                            </node>
                            <node concept="37vLTw" id="io" role="3uHU7B">
                              <ref role="3cqZAo" node="hK" resolve="checkingNodeContext" />
                              <uo k="s:originTrace" v="n:7613853987897854170" />
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="im" role="3uHU7B">
                            <uo k="s:originTrace" v="n:7613853987897854170" />
                            <node concept="37vLTw" id="ip" role="3fr31v">
                              <ref role="3cqZAo" node="hV" resolve="result" />
                              <uo k="s:originTrace" v="n:7613853987897854170" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="hT" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7613853987897854170" />
                      </node>
                      <node concept="3clFbF" id="hU" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7613853987897854170" />
                        <node concept="37vLTw" id="iq" role="3clFbG">
                          <ref role="3cqZAo" node="hV" resolve="result" />
                          <uo k="s:originTrace" v="n:7613853987897854170" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="hE" role="2Ghqu4">
                    <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                    <uo k="s:originTrace" v="n:7613853987897854170" />
                  </node>
                  <node concept="3uibUv" id="hF" role="2Ghqu4">
                    <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    <uo k="s:originTrace" v="n:7613853987897854170" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="hf" role="jymVt">
      <uo k="s:originTrace" v="n:7613853987897854170" />
    </node>
    <node concept="312cEu" id="hg" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:7613853987897854170" />
      <node concept="3clFbW" id="ir" role="jymVt">
        <uo k="s:originTrace" v="n:7613853987897854170" />
        <node concept="37vLTG" id="iu" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:7613853987897854170" />
          <node concept="3uibUv" id="ix" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:7613853987897854170" />
          </node>
        </node>
        <node concept="3cqZAl" id="iv" role="3clF45">
          <uo k="s:originTrace" v="n:7613853987897854170" />
        </node>
        <node concept="3clFbS" id="iw" role="3clF47">
          <uo k="s:originTrace" v="n:7613853987897854170" />
          <node concept="XkiVB" id="iy" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:7613853987897854170" />
            <node concept="1BaE9c" id="iz" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="superConcept$VRMH" />
              <uo k="s:originTrace" v="n:7613853987897854170" />
              <node concept="2YIFZM" id="iB" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:7613853987897854170" />
                <node concept="11gdke" id="iC" role="37wK5m">
                  <property role="11gdj1" value="af65afd8f0dd4942L" />
                  <uo k="s:originTrace" v="n:7613853987897854170" />
                </node>
                <node concept="11gdke" id="iD" role="37wK5m">
                  <property role="11gdj1" value="87d963a55f2a9db1L" />
                  <uo k="s:originTrace" v="n:7613853987897854170" />
                </node>
                <node concept="11gdke" id="iE" role="37wK5m">
                  <property role="11gdj1" value="69a9d7dcb057a7a7L" />
                  <uo k="s:originTrace" v="n:7613853987897854170" />
                </node>
                <node concept="11gdke" id="iF" role="37wK5m">
                  <property role="11gdj1" value="69a9d7dcb057a7a8L" />
                  <uo k="s:originTrace" v="n:7613853987897854170" />
                </node>
                <node concept="Xl_RD" id="iG" role="37wK5m">
                  <property role="Xl_RC" value="superConcept" />
                  <uo k="s:originTrace" v="n:7613853987897854170" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="i$" role="37wK5m">
              <ref role="3cqZAo" node="iu" resolve="container" />
              <uo k="s:originTrace" v="n:7613853987897854170" />
            </node>
            <node concept="3clFbT" id="i_" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:7613853987897854170" />
            </node>
            <node concept="3clFbT" id="iA" role="37wK5m">
              <uo k="s:originTrace" v="n:7613853987897854170" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="is" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:7613853987897854170" />
        <node concept="3Tm1VV" id="iH" role="1B3o_S">
          <uo k="s:originTrace" v="n:7613853987897854170" />
        </node>
        <node concept="3uibUv" id="iI" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:7613853987897854170" />
        </node>
        <node concept="2AHcQZ" id="iJ" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:7613853987897854170" />
        </node>
        <node concept="3clFbS" id="iK" role="3clF47">
          <uo k="s:originTrace" v="n:7613853987897854170" />
          <node concept="3cpWs6" id="iM" role="3cqZAp">
            <uo k="s:originTrace" v="n:7613853987897854170" />
            <node concept="2ShNRf" id="iN" role="3cqZAk">
              <uo k="s:originTrace" v="n:6836281137582780620" />
              <node concept="YeOm9" id="iO" role="2ShVmc">
                <uo k="s:originTrace" v="n:6836281137582780620" />
                <node concept="1Y3b0j" id="iP" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:6836281137582780620" />
                  <node concept="3Tm1VV" id="iQ" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6836281137582780620" />
                  </node>
                  <node concept="3clFb_" id="iR" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:6836281137582780620" />
                    <node concept="3Tm1VV" id="iT" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582780620" />
                    </node>
                    <node concept="3uibUv" id="iU" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:6836281137582780620" />
                    </node>
                    <node concept="3clFbS" id="iV" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582780620" />
                      <node concept="3cpWs6" id="iX" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582780620" />
                        <node concept="2ShNRf" id="iY" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582780620" />
                          <node concept="1pGfFk" id="iZ" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:6836281137582780620" />
                            <node concept="Xl_RD" id="j0" role="37wK5m">
                              <property role="Xl_RC" value="r:6786d6ee-e5cc-4a77-9efd-65a8dca8b187(jetbrains.mps.lang.behavior.constraints)" />
                              <uo k="s:originTrace" v="n:6836281137582780620" />
                            </node>
                            <node concept="Xl_RD" id="j1" role="37wK5m">
                              <property role="Xl_RC" value="6836281137582780620" />
                              <uo k="s:originTrace" v="n:6836281137582780620" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="iW" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582780620" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="iS" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:6836281137582780620" />
                    <node concept="3Tm1VV" id="j2" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582780620" />
                    </node>
                    <node concept="3uibUv" id="j3" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:6836281137582780620" />
                    </node>
                    <node concept="37vLTG" id="j4" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:6836281137582780620" />
                      <node concept="3uibUv" id="j7" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:6836281137582780620" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="j5" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582780620" />
                      <node concept="3cpWs8" id="j8" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582780622" />
                        <node concept="3cpWsn" id="jd" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:6836281137582780623" />
                          <node concept="2I9FWS" id="je" role="1tU5fm">
                            <ref role="2I9WkF" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                            <uo k="s:originTrace" v="n:6836281137582780624" />
                          </node>
                          <node concept="2ShNRf" id="jf" role="33vP2m">
                            <uo k="s:originTrace" v="n:6836281137582780625" />
                            <node concept="2T8Vx0" id="jg" role="2ShVmc">
                              <uo k="s:originTrace" v="n:6836281137582780626" />
                              <node concept="2I9FWS" id="jh" role="2T96Bj">
                                <ref role="2I9WkF" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                                <uo k="s:originTrace" v="n:6836281137582780627" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="j9" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582780628" />
                        <node concept="3cpWsn" id="ji" role="3cpWs9">
                          <property role="TrG5h" value="abstractConceptDeclaration" />
                          <uo k="s:originTrace" v="n:6836281137582780629" />
                          <node concept="3Tqbb2" id="jj" role="1tU5fm">
                            <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                            <uo k="s:originTrace" v="n:6836281137582780630" />
                          </node>
                          <node concept="2OqwBi" id="jk" role="33vP2m">
                            <uo k="s:originTrace" v="n:6836281137582780631" />
                            <node concept="2OqwBi" id="jl" role="2Oq$k0">
                              <uo k="s:originTrace" v="n:6836281137582780632" />
                              <node concept="1DoJHT" id="jn" role="2Oq$k0">
                                <property role="1Dpdpm" value="getReferenceNode" />
                                <uo k="s:originTrace" v="n:6836281137582780633" />
                                <node concept="3uibUv" id="jp" role="1Ez5kq">
                                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                </node>
                                <node concept="37vLTw" id="jq" role="1EMhIo">
                                  <ref role="3cqZAo" node="j4" resolve="_context" />
                                </node>
                              </node>
                              <node concept="2Xjw5R" id="jo" role="2OqNvi">
                                <uo k="s:originTrace" v="n:6836281137582780634" />
                                <node concept="1xMEDy" id="jr" role="1xVPHs">
                                  <uo k="s:originTrace" v="n:6836281137582780635" />
                                  <node concept="chp4Y" id="js" role="ri$Ld">
                                    <ref role="cht4Q" to="1i04:hP3h7Gq" resolve="ConceptBehavior" />
                                    <uo k="s:originTrace" v="n:6836281137582780636" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3TrEf2" id="jm" role="2OqNvi">
                              <ref role="3Tt5mk" to="1i04:hP3h7Gv" resolve="concept" />
                              <uo k="s:originTrace" v="n:6836281137582780637" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="ja" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582780638" />
                        <node concept="3clFbS" id="jt" role="3clFbx">
                          <uo k="s:originTrace" v="n:6836281137582780639" />
                          <node concept="3cpWs8" id="jv" role="3cqZAp">
                            <uo k="s:originTrace" v="n:6836281137582780640" />
                            <node concept="3cpWsn" id="jz" role="3cpWs9">
                              <property role="TrG5h" value="cd" />
                              <uo k="s:originTrace" v="n:6836281137582780641" />
                              <node concept="3Tqbb2" id="j$" role="1tU5fm">
                                <ref role="ehGHo" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                                <uo k="s:originTrace" v="n:6836281137582780642" />
                              </node>
                              <node concept="10QFUN" id="j_" role="33vP2m">
                                <uo k="s:originTrace" v="n:6836281137582780643" />
                                <node concept="3Tqbb2" id="jA" role="10QFUM">
                                  <ref role="ehGHo" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                                  <uo k="s:originTrace" v="n:6836281137582780644" />
                                </node>
                                <node concept="37vLTw" id="jB" role="10QFUP">
                                  <ref role="3cqZAo" node="ji" resolve="abstractConceptDeclaration" />
                                  <uo k="s:originTrace" v="n:6836281137582780645" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs8" id="jw" role="3cqZAp">
                            <uo k="s:originTrace" v="n:6836281137582780646" />
                            <node concept="3cpWsn" id="jC" role="3cpWs9">
                              <property role="TrG5h" value="extendsNode" />
                              <uo k="s:originTrace" v="n:6836281137582780647" />
                              <node concept="3Tqbb2" id="jD" role="1tU5fm">
                                <ref role="ehGHo" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                                <uo k="s:originTrace" v="n:6836281137582780648" />
                              </node>
                              <node concept="2OqwBi" id="jE" role="33vP2m">
                                <uo k="s:originTrace" v="n:6836281137582780649" />
                                <node concept="37vLTw" id="jF" role="2Oq$k0">
                                  <ref role="3cqZAo" node="jz" resolve="cd" />
                                  <uo k="s:originTrace" v="n:6836281137582780650" />
                                </node>
                                <node concept="3TrEf2" id="jG" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tpce:f_TJDff" resolve="extends" />
                                  <uo k="s:originTrace" v="n:6836281137582780651" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbJ" id="jx" role="3cqZAp">
                            <uo k="s:originTrace" v="n:6836281137582780652" />
                            <node concept="3clFbS" id="jH" role="3clFbx">
                              <uo k="s:originTrace" v="n:6836281137582780653" />
                              <node concept="3clFbF" id="jJ" role="3cqZAp">
                                <uo k="s:originTrace" v="n:6836281137582780654" />
                                <node concept="2OqwBi" id="jK" role="3clFbG">
                                  <uo k="s:originTrace" v="n:6836281137582780655" />
                                  <node concept="37vLTw" id="jL" role="2Oq$k0">
                                    <ref role="3cqZAo" node="jd" resolve="result" />
                                    <uo k="s:originTrace" v="n:6836281137582780656" />
                                  </node>
                                  <node concept="TSZUe" id="jM" role="2OqNvi">
                                    <uo k="s:originTrace" v="n:6836281137582780657" />
                                    <node concept="37vLTw" id="jN" role="25WWJ7">
                                      <ref role="3cqZAo" node="jC" resolve="extendsNode" />
                                      <uo k="s:originTrace" v="n:6836281137582780658" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3y3z36" id="jI" role="3clFbw">
                              <uo k="s:originTrace" v="n:6836281137582780659" />
                              <node concept="10Nm6u" id="jO" role="3uHU7w">
                                <uo k="s:originTrace" v="n:6836281137582780660" />
                              </node>
                              <node concept="37vLTw" id="jP" role="3uHU7B">
                                <ref role="3cqZAo" node="jC" resolve="extendsNode" />
                                <uo k="s:originTrace" v="n:6836281137582780661" />
                              </node>
                            </node>
                          </node>
                          <node concept="1DcWWT" id="jy" role="3cqZAp">
                            <uo k="s:originTrace" v="n:6836281137582780662" />
                            <node concept="3clFbS" id="jQ" role="2LFqv$">
                              <uo k="s:originTrace" v="n:6836281137582780663" />
                              <node concept="3clFbF" id="jT" role="3cqZAp">
                                <uo k="s:originTrace" v="n:6836281137582780664" />
                                <node concept="2OqwBi" id="jU" role="3clFbG">
                                  <uo k="s:originTrace" v="n:6836281137582780665" />
                                  <node concept="37vLTw" id="jV" role="2Oq$k0">
                                    <ref role="3cqZAo" node="jd" resolve="result" />
                                    <uo k="s:originTrace" v="n:6836281137582780666" />
                                  </node>
                                  <node concept="TSZUe" id="jW" role="2OqNvi">
                                    <uo k="s:originTrace" v="n:6836281137582780667" />
                                    <node concept="2OqwBi" id="jX" role="25WWJ7">
                                      <uo k="s:originTrace" v="n:6836281137582780668" />
                                      <node concept="37vLTw" id="jY" role="2Oq$k0">
                                        <ref role="3cqZAo" node="jR" resolve="itfcRef" />
                                        <uo k="s:originTrace" v="n:6836281137582780669" />
                                      </node>
                                      <node concept="3TrEf2" id="jZ" role="2OqNvi">
                                        <ref role="3Tt5mk" to="tpce:h0PrY0D" resolve="intfc" />
                                        <uo k="s:originTrace" v="n:6836281137582780670" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWsn" id="jR" role="1Duv9x">
                              <property role="TrG5h" value="itfcRef" />
                              <uo k="s:originTrace" v="n:6836281137582780671" />
                              <node concept="3Tqbb2" id="k0" role="1tU5fm">
                                <ref role="ehGHo" to="tpce:h0PrWoo" resolve="InterfaceConceptReference" />
                                <uo k="s:originTrace" v="n:6836281137582780672" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="jS" role="1DdaDG">
                              <uo k="s:originTrace" v="n:6836281137582780673" />
                              <node concept="37vLTw" id="k1" role="2Oq$k0">
                                <ref role="3cqZAo" node="jz" resolve="cd" />
                                <uo k="s:originTrace" v="n:6836281137582780674" />
                              </node>
                              <node concept="3Tsc0h" id="k2" role="2OqNvi">
                                <ref role="3TtcxE" to="tpce:h0Pzm$Y" resolve="implements" />
                                <uo k="s:originTrace" v="n:6836281137582780675" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="ju" role="3clFbw">
                          <uo k="s:originTrace" v="n:6836281137582780676" />
                          <node concept="37vLTw" id="k3" role="2Oq$k0">
                            <ref role="3cqZAo" node="ji" resolve="abstractConceptDeclaration" />
                            <uo k="s:originTrace" v="n:6836281137582780677" />
                          </node>
                          <node concept="1mIQ4w" id="k4" role="2OqNvi">
                            <uo k="s:originTrace" v="n:6836281137582780678" />
                            <node concept="chp4Y" id="k5" role="cj9EA">
                              <ref role="cht4Q" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                              <uo k="s:originTrace" v="n:6836281137582780679" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="jb" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582780680" />
                        <node concept="3clFbS" id="k6" role="3clFbx">
                          <uo k="s:originTrace" v="n:6836281137582780681" />
                          <node concept="3cpWs8" id="k8" role="3cqZAp">
                            <uo k="s:originTrace" v="n:6836281137582780682" />
                            <node concept="3cpWsn" id="ka" role="3cpWs9">
                              <property role="TrG5h" value="itfc" />
                              <uo k="s:originTrace" v="n:6836281137582780683" />
                              <node concept="3Tqbb2" id="kb" role="1tU5fm">
                                <ref role="ehGHo" to="tpce:h0PlHMJ" resolve="InterfaceConceptDeclaration" />
                                <uo k="s:originTrace" v="n:6836281137582780684" />
                              </node>
                              <node concept="10QFUN" id="kc" role="33vP2m">
                                <uo k="s:originTrace" v="n:6836281137582780685" />
                                <node concept="3Tqbb2" id="kd" role="10QFUM">
                                  <ref role="ehGHo" to="tpce:h0PlHMJ" resolve="InterfaceConceptDeclaration" />
                                  <uo k="s:originTrace" v="n:6836281137582780686" />
                                </node>
                                <node concept="37vLTw" id="ke" role="10QFUP">
                                  <ref role="3cqZAo" node="ji" resolve="abstractConceptDeclaration" />
                                  <uo k="s:originTrace" v="n:6836281137582780687" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="1DcWWT" id="k9" role="3cqZAp">
                            <uo k="s:originTrace" v="n:6836281137582780688" />
                            <node concept="3clFbS" id="kf" role="2LFqv$">
                              <uo k="s:originTrace" v="n:6836281137582780689" />
                              <node concept="3clFbF" id="ki" role="3cqZAp">
                                <uo k="s:originTrace" v="n:6836281137582780690" />
                                <node concept="2OqwBi" id="kj" role="3clFbG">
                                  <uo k="s:originTrace" v="n:6836281137582780691" />
                                  <node concept="37vLTw" id="kk" role="2Oq$k0">
                                    <ref role="3cqZAo" node="jd" resolve="result" />
                                    <uo k="s:originTrace" v="n:6836281137582780692" />
                                  </node>
                                  <node concept="TSZUe" id="kl" role="2OqNvi">
                                    <uo k="s:originTrace" v="n:6836281137582780693" />
                                    <node concept="2OqwBi" id="km" role="25WWJ7">
                                      <uo k="s:originTrace" v="n:6836281137582780694" />
                                      <node concept="37vLTw" id="kn" role="2Oq$k0">
                                        <ref role="3cqZAo" node="kg" resolve="itfcRef" />
                                        <uo k="s:originTrace" v="n:6836281137582780695" />
                                      </node>
                                      <node concept="3TrEf2" id="ko" role="2OqNvi">
                                        <ref role="3Tt5mk" to="tpce:h0PrY0D" resolve="intfc" />
                                        <uo k="s:originTrace" v="n:6836281137582780696" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWsn" id="kg" role="1Duv9x">
                              <property role="TrG5h" value="itfcRef" />
                              <uo k="s:originTrace" v="n:6836281137582780697" />
                              <node concept="3Tqbb2" id="kp" role="1tU5fm">
                                <ref role="ehGHo" to="tpce:h0PrWoo" resolve="InterfaceConceptReference" />
                                <uo k="s:originTrace" v="n:6836281137582780698" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="kh" role="1DdaDG">
                              <uo k="s:originTrace" v="n:6836281137582780699" />
                              <node concept="37vLTw" id="kq" role="2Oq$k0">
                                <ref role="3cqZAo" node="ka" resolve="itfc" />
                                <uo k="s:originTrace" v="n:6836281137582780700" />
                              </node>
                              <node concept="3Tsc0h" id="kr" role="2OqNvi">
                                <ref role="3TtcxE" to="tpce:h0PrDRO" resolve="extends" />
                                <uo k="s:originTrace" v="n:6836281137582780701" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="k7" role="3clFbw">
                          <uo k="s:originTrace" v="n:6836281137582780702" />
                          <node concept="37vLTw" id="ks" role="2Oq$k0">
                            <ref role="3cqZAo" node="ji" resolve="abstractConceptDeclaration" />
                            <uo k="s:originTrace" v="n:6836281137582780703" />
                          </node>
                          <node concept="1mIQ4w" id="kt" role="2OqNvi">
                            <uo k="s:originTrace" v="n:6836281137582780704" />
                            <node concept="chp4Y" id="ku" role="cj9EA">
                              <ref role="cht4Q" to="tpce:h0PlHMJ" resolve="InterfaceConceptDeclaration" />
                              <uo k="s:originTrace" v="n:6836281137582780705" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs6" id="jc" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582780706" />
                        <node concept="2YIFZM" id="kv" role="3cqZAk">
                          <ref role="37wK5l" to="o8zo:3jEbQoczdCs" resolve="forResolvableElements" />
                          <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                          <uo k="s:originTrace" v="n:6836281137582780720" />
                          <node concept="37vLTw" id="kw" role="37wK5m">
                            <ref role="3cqZAo" node="jd" resolve="result" />
                            <uo k="s:originTrace" v="n:6836281137582780721" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="j6" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582780620" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="iL" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:7613853987897854170" />
        </node>
      </node>
      <node concept="3uibUv" id="it" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:7613853987897854170" />
      </node>
    </node>
    <node concept="2YIFZL" id="hh" role="jymVt">
      <property role="TrG5h" value="staticCanBeAChild" />
      <uo k="s:originTrace" v="n:7613853987897854170" />
      <node concept="10P_77" id="kx" role="3clF45">
        <uo k="s:originTrace" v="n:7613853987897854170" />
      </node>
      <node concept="3Tm6S6" id="ky" role="1B3o_S">
        <uo k="s:originTrace" v="n:7613853987897854170" />
      </node>
      <node concept="3clFbS" id="kz" role="3clF47">
        <uo k="s:originTrace" v="n:1227128029536560970" />
        <node concept="3clFbF" id="kC" role="3cqZAp">
          <uo k="s:originTrace" v="n:1227128029536560971" />
          <node concept="2YIFZM" id="kD" role="3clFbG">
            <ref role="37wK5l" node="6m" resolve="isInsideOfBehavior" />
            <ref role="1Pybhc" node="6g" resolve="ConstraintsUtil" />
            <uo k="s:originTrace" v="n:1227128029536560972" />
            <node concept="37vLTw" id="kE" role="37wK5m">
              <ref role="3cqZAo" node="k_" resolve="parentNode" />
              <uo k="s:originTrace" v="n:1227128029536560973" />
            </node>
            <node concept="3clFbT" id="kF" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:5275495569448677136" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="k$" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:7613853987897854170" />
        <node concept="3uibUv" id="kG" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:7613853987897854170" />
        </node>
      </node>
      <node concept="37vLTG" id="k_" role="3clF46">
        <property role="TrG5h" value="parentNode" />
        <uo k="s:originTrace" v="n:7613853987897854170" />
        <node concept="3uibUv" id="kH" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:7613853987897854170" />
        </node>
      </node>
      <node concept="37vLTG" id="kA" role="3clF46">
        <property role="TrG5h" value="childConcept" />
        <uo k="s:originTrace" v="n:7613853987897854170" />
        <node concept="3uibUv" id="kI" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
          <uo k="s:originTrace" v="n:7613853987897854170" />
        </node>
      </node>
      <node concept="37vLTG" id="kB" role="3clF46">
        <property role="TrG5h" value="link" />
        <uo k="s:originTrace" v="n:7613853987897854170" />
        <node concept="3uibUv" id="kJ" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
          <uo k="s:originTrace" v="n:7613853987897854170" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="kK">
    <property role="3GE5qa" value="" />
    <property role="TrG5h" value="SuperNodeExpression_Constraints" />
    <uo k="s:originTrace" v="n:2043122710974691049" />
    <node concept="3Tm1VV" id="kL" role="1B3o_S">
      <uo k="s:originTrace" v="n:2043122710974691049" />
    </node>
    <node concept="3uibUv" id="kM" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:2043122710974691049" />
    </node>
    <node concept="3clFbW" id="kN" role="jymVt">
      <uo k="s:originTrace" v="n:2043122710974691049" />
      <node concept="37vLTG" id="kR" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:2043122710974691049" />
        <node concept="3uibUv" id="kU" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:2043122710974691049" />
        </node>
      </node>
      <node concept="3cqZAl" id="kS" role="3clF45">
        <uo k="s:originTrace" v="n:2043122710974691049" />
      </node>
      <node concept="3clFbS" id="kT" role="3clF47">
        <uo k="s:originTrace" v="n:2043122710974691049" />
        <node concept="XkiVB" id="kV" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:2043122710974691049" />
          <node concept="1BaE9c" id="kY" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="SuperNodeExpression$tM" />
            <uo k="s:originTrace" v="n:2043122710974691049" />
            <node concept="2YIFZM" id="l0" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:2043122710974691049" />
              <node concept="11gdke" id="l1" role="37wK5m">
                <property role="11gdj1" value="af65afd8f0dd4942L" />
                <uo k="s:originTrace" v="n:2043122710974691049" />
              </node>
              <node concept="11gdke" id="l2" role="37wK5m">
                <property role="11gdj1" value="87d963a55f2a9db1L" />
                <uo k="s:originTrace" v="n:2043122710974691049" />
              </node>
              <node concept="11gdke" id="l3" role="37wK5m">
                <property role="11gdj1" value="11d434a6558L" />
                <uo k="s:originTrace" v="n:2043122710974691049" />
              </node>
              <node concept="Xl_RD" id="l4" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.behavior.structure.SuperNodeExpression" />
                <uo k="s:originTrace" v="n:2043122710974691049" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="kZ" role="37wK5m">
            <ref role="3cqZAo" node="kR" resolve="initContext" />
            <uo k="s:originTrace" v="n:2043122710974691049" />
          </node>
        </node>
        <node concept="3clFbF" id="kW" role="3cqZAp">
          <uo k="s:originTrace" v="n:2043122710974691049" />
          <node concept="1rXfSq" id="l5" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:2043122710974691049" />
            <node concept="2ShNRf" id="l6" role="37wK5m">
              <uo k="s:originTrace" v="n:2043122710974691049" />
              <node concept="1pGfFk" id="l7" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="m0" resolve="SuperNodeExpression_Constraints.RD1" />
                <uo k="s:originTrace" v="n:2043122710974691049" />
                <node concept="Xjq3P" id="l8" role="37wK5m">
                  <uo k="s:originTrace" v="n:2043122710974691049" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="kX" role="3cqZAp">
          <uo k="s:originTrace" v="n:2043122710974691049" />
          <node concept="1rXfSq" id="l9" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.setCanBeChildConstraint(jetbrains.mps.smodel.runtime.ConstraintFunction)" resolve="setCanBeChildConstraint" />
            <uo k="s:originTrace" v="n:2043122710974691049" />
            <node concept="2ShNRf" id="la" role="37wK5m">
              <uo k="s:originTrace" v="n:2043122710974691049" />
              <node concept="YeOm9" id="lb" role="2ShVmc">
                <uo k="s:originTrace" v="n:2043122710974691049" />
                <node concept="1Y3b0j" id="lc" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <uo k="s:originTrace" v="n:2043122710974691049" />
                  <node concept="3Tm1VV" id="ld" role="1B3o_S">
                    <uo k="s:originTrace" v="n:2043122710974691049" />
                  </node>
                  <node concept="3clFb_" id="le" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="invoke" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <uo k="s:originTrace" v="n:2043122710974691049" />
                    <node concept="3Tm1VV" id="lh" role="1B3o_S">
                      <uo k="s:originTrace" v="n:2043122710974691049" />
                    </node>
                    <node concept="2AHcQZ" id="li" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:2043122710974691049" />
                    </node>
                    <node concept="3uibUv" id="lj" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      <uo k="s:originTrace" v="n:2043122710974691049" />
                    </node>
                    <node concept="37vLTG" id="lk" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <uo k="s:originTrace" v="n:2043122710974691049" />
                      <node concept="3uibUv" id="ln" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                        <uo k="s:originTrace" v="n:2043122710974691049" />
                      </node>
                      <node concept="2AHcQZ" id="lo" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        <uo k="s:originTrace" v="n:2043122710974691049" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="ll" role="3clF46">
                      <property role="TrG5h" value="checkingNodeContext" />
                      <uo k="s:originTrace" v="n:2043122710974691049" />
                      <node concept="3uibUv" id="lp" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                        <uo k="s:originTrace" v="n:2043122710974691049" />
                      </node>
                      <node concept="2AHcQZ" id="lq" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                        <uo k="s:originTrace" v="n:2043122710974691049" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="lm" role="3clF47">
                      <uo k="s:originTrace" v="n:2043122710974691049" />
                      <node concept="3cpWs8" id="lr" role="3cqZAp">
                        <uo k="s:originTrace" v="n:2043122710974691049" />
                        <node concept="3cpWsn" id="lw" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:2043122710974691049" />
                          <node concept="10P_77" id="lx" role="1tU5fm">
                            <uo k="s:originTrace" v="n:2043122710974691049" />
                          </node>
                          <node concept="1rXfSq" id="ly" role="33vP2m">
                            <ref role="37wK5l" node="kQ" resolve="staticCanBeAChild" />
                            <uo k="s:originTrace" v="n:2043122710974691049" />
                            <node concept="2OqwBi" id="lz" role="37wK5m">
                              <uo k="s:originTrace" v="n:2043122710974691049" />
                              <node concept="37vLTw" id="lB" role="2Oq$k0">
                                <ref role="3cqZAo" node="lk" resolve="context" />
                                <uo k="s:originTrace" v="n:2043122710974691049" />
                              </node>
                              <node concept="liA8E" id="lC" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getNode()" resolve="getNode" />
                                <uo k="s:originTrace" v="n:2043122710974691049" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="l$" role="37wK5m">
                              <uo k="s:originTrace" v="n:2043122710974691049" />
                              <node concept="37vLTw" id="lD" role="2Oq$k0">
                                <ref role="3cqZAo" node="lk" resolve="context" />
                                <uo k="s:originTrace" v="n:2043122710974691049" />
                              </node>
                              <node concept="liA8E" id="lE" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getParentNode()" resolve="getParentNode" />
                                <uo k="s:originTrace" v="n:2043122710974691049" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="l_" role="37wK5m">
                              <uo k="s:originTrace" v="n:2043122710974691049" />
                              <node concept="37vLTw" id="lF" role="2Oq$k0">
                                <ref role="3cqZAo" node="lk" resolve="context" />
                                <uo k="s:originTrace" v="n:2043122710974691049" />
                              </node>
                              <node concept="liA8E" id="lG" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getConcept()" resolve="getConcept" />
                                <uo k="s:originTrace" v="n:2043122710974691049" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="lA" role="37wK5m">
                              <uo k="s:originTrace" v="n:2043122710974691049" />
                              <node concept="37vLTw" id="lH" role="2Oq$k0">
                                <ref role="3cqZAo" node="lk" resolve="context" />
                                <uo k="s:originTrace" v="n:2043122710974691049" />
                              </node>
                              <node concept="liA8E" id="lI" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getLink()" resolve="getLink" />
                                <uo k="s:originTrace" v="n:2043122710974691049" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="ls" role="3cqZAp">
                        <uo k="s:originTrace" v="n:2043122710974691049" />
                      </node>
                      <node concept="3clFbJ" id="lt" role="3cqZAp">
                        <uo k="s:originTrace" v="n:2043122710974691049" />
                        <node concept="3clFbS" id="lJ" role="3clFbx">
                          <uo k="s:originTrace" v="n:2043122710974691049" />
                          <node concept="3clFbF" id="lL" role="3cqZAp">
                            <uo k="s:originTrace" v="n:2043122710974691049" />
                            <node concept="2OqwBi" id="lM" role="3clFbG">
                              <uo k="s:originTrace" v="n:2043122710974691049" />
                              <node concept="37vLTw" id="lN" role="2Oq$k0">
                                <ref role="3cqZAo" node="ll" resolve="checkingNodeContext" />
                                <uo k="s:originTrace" v="n:2043122710974691049" />
                              </node>
                              <node concept="liA8E" id="lO" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                                <uo k="s:originTrace" v="n:2043122710974691049" />
                                <node concept="1dyn4i" id="lP" role="37wK5m">
                                  <property role="1dyqJU" value="canBeChildBreakingPoint" />
                                  <uo k="s:originTrace" v="n:2043122710974691049" />
                                  <node concept="2ShNRf" id="lQ" role="1dyrYi">
                                    <uo k="s:originTrace" v="n:2043122710974691049" />
                                    <node concept="1pGfFk" id="lR" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:2043122710974691049" />
                                      <node concept="Xl_RD" id="lS" role="37wK5m">
                                        <property role="Xl_RC" value="r:6786d6ee-e5cc-4a77-9efd-65a8dca8b187(jetbrains.mps.lang.behavior.constraints)" />
                                        <uo k="s:originTrace" v="n:2043122710974691049" />
                                      </node>
                                      <node concept="Xl_RD" id="lT" role="37wK5m">
                                        <property role="Xl_RC" value="1227128029536560964" />
                                        <uo k="s:originTrace" v="n:2043122710974691049" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Wc70l" id="lK" role="3clFbw">
                          <uo k="s:originTrace" v="n:2043122710974691049" />
                          <node concept="3y3z36" id="lU" role="3uHU7w">
                            <uo k="s:originTrace" v="n:2043122710974691049" />
                            <node concept="10Nm6u" id="lW" role="3uHU7w">
                              <uo k="s:originTrace" v="n:2043122710974691049" />
                            </node>
                            <node concept="37vLTw" id="lX" role="3uHU7B">
                              <ref role="3cqZAo" node="ll" resolve="checkingNodeContext" />
                              <uo k="s:originTrace" v="n:2043122710974691049" />
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="lV" role="3uHU7B">
                            <uo k="s:originTrace" v="n:2043122710974691049" />
                            <node concept="37vLTw" id="lY" role="3fr31v">
                              <ref role="3cqZAo" node="lw" resolve="result" />
                              <uo k="s:originTrace" v="n:2043122710974691049" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="lu" role="3cqZAp">
                        <uo k="s:originTrace" v="n:2043122710974691049" />
                      </node>
                      <node concept="3clFbF" id="lv" role="3cqZAp">
                        <uo k="s:originTrace" v="n:2043122710974691049" />
                        <node concept="37vLTw" id="lZ" role="3clFbG">
                          <ref role="3cqZAo" node="lw" resolve="result" />
                          <uo k="s:originTrace" v="n:2043122710974691049" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="lf" role="2Ghqu4">
                    <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                    <uo k="s:originTrace" v="n:2043122710974691049" />
                  </node>
                  <node concept="3uibUv" id="lg" role="2Ghqu4">
                    <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    <uo k="s:originTrace" v="n:2043122710974691049" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="kO" role="jymVt">
      <uo k="s:originTrace" v="n:2043122710974691049" />
    </node>
    <node concept="312cEu" id="kP" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:2043122710974691049" />
      <node concept="3clFbW" id="m0" role="jymVt">
        <uo k="s:originTrace" v="n:2043122710974691049" />
        <node concept="37vLTG" id="m3" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:2043122710974691049" />
          <node concept="3uibUv" id="m6" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:2043122710974691049" />
          </node>
        </node>
        <node concept="3cqZAl" id="m4" role="3clF45">
          <uo k="s:originTrace" v="n:2043122710974691049" />
        </node>
        <node concept="3clFbS" id="m5" role="3clF47">
          <uo k="s:originTrace" v="n:2043122710974691049" />
          <node concept="XkiVB" id="m7" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:2043122710974691049" />
            <node concept="1BaE9c" id="m8" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="superConcept$8P5p" />
              <uo k="s:originTrace" v="n:2043122710974691049" />
              <node concept="2YIFZM" id="mc" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:2043122710974691049" />
                <node concept="11gdke" id="md" role="37wK5m">
                  <property role="11gdj1" value="af65afd8f0dd4942L" />
                  <uo k="s:originTrace" v="n:2043122710974691049" />
                </node>
                <node concept="11gdke" id="me" role="37wK5m">
                  <property role="11gdj1" value="87d963a55f2a9db1L" />
                  <uo k="s:originTrace" v="n:2043122710974691049" />
                </node>
                <node concept="11gdke" id="mf" role="37wK5m">
                  <property role="11gdj1" value="11d434a6558L" />
                  <uo k="s:originTrace" v="n:2043122710974691049" />
                </node>
                <node concept="11gdke" id="mg" role="37wK5m">
                  <property role="11gdj1" value="498a2c3387127040L" />
                  <uo k="s:originTrace" v="n:2043122710974691049" />
                </node>
                <node concept="Xl_RD" id="mh" role="37wK5m">
                  <property role="Xl_RC" value="superConcept" />
                  <uo k="s:originTrace" v="n:2043122710974691049" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="m9" role="37wK5m">
              <ref role="3cqZAo" node="m3" resolve="container" />
              <uo k="s:originTrace" v="n:2043122710974691049" />
            </node>
            <node concept="3clFbT" id="ma" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:2043122710974691049" />
            </node>
            <node concept="3clFbT" id="mb" role="37wK5m">
              <uo k="s:originTrace" v="n:2043122710974691049" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="m1" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:2043122710974691049" />
        <node concept="3Tm1VV" id="mi" role="1B3o_S">
          <uo k="s:originTrace" v="n:2043122710974691049" />
        </node>
        <node concept="3uibUv" id="mj" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:2043122710974691049" />
        </node>
        <node concept="2AHcQZ" id="mk" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:2043122710974691049" />
        </node>
        <node concept="3clFbS" id="ml" role="3clF47">
          <uo k="s:originTrace" v="n:2043122710974691049" />
          <node concept="3cpWs6" id="mn" role="3cqZAp">
            <uo k="s:originTrace" v="n:2043122710974691049" />
            <node concept="2ShNRf" id="mo" role="3cqZAk">
              <uo k="s:originTrace" v="n:6836281137582780188" />
              <node concept="YeOm9" id="mp" role="2ShVmc">
                <uo k="s:originTrace" v="n:6836281137582780188" />
                <node concept="1Y3b0j" id="mq" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:6836281137582780188" />
                  <node concept="3Tm1VV" id="mr" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6836281137582780188" />
                  </node>
                  <node concept="3clFb_" id="ms" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:6836281137582780188" />
                    <node concept="3Tm1VV" id="mu" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582780188" />
                    </node>
                    <node concept="3uibUv" id="mv" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:6836281137582780188" />
                    </node>
                    <node concept="3clFbS" id="mw" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582780188" />
                      <node concept="3cpWs6" id="my" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582780188" />
                        <node concept="2ShNRf" id="mz" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582780188" />
                          <node concept="1pGfFk" id="m$" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:6836281137582780188" />
                            <node concept="Xl_RD" id="m_" role="37wK5m">
                              <property role="Xl_RC" value="r:6786d6ee-e5cc-4a77-9efd-65a8dca8b187(jetbrains.mps.lang.behavior.constraints)" />
                              <uo k="s:originTrace" v="n:6836281137582780188" />
                            </node>
                            <node concept="Xl_RD" id="mA" role="37wK5m">
                              <property role="Xl_RC" value="6836281137582780188" />
                              <uo k="s:originTrace" v="n:6836281137582780188" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="mx" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582780188" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="mt" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:6836281137582780188" />
                    <node concept="3Tm1VV" id="mB" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582780188" />
                    </node>
                    <node concept="3uibUv" id="mC" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:6836281137582780188" />
                    </node>
                    <node concept="37vLTG" id="mD" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:6836281137582780188" />
                      <node concept="3uibUv" id="mG" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:6836281137582780188" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="mE" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582780188" />
                      <node concept="3cpWs8" id="mH" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582780190" />
                        <node concept="3cpWsn" id="mM" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:6836281137582780191" />
                          <node concept="2I9FWS" id="mN" role="1tU5fm">
                            <ref role="2I9WkF" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                            <uo k="s:originTrace" v="n:6836281137582780192" />
                          </node>
                          <node concept="2ShNRf" id="mO" role="33vP2m">
                            <uo k="s:originTrace" v="n:6836281137582780193" />
                            <node concept="2T8Vx0" id="mP" role="2ShVmc">
                              <uo k="s:originTrace" v="n:6836281137582780194" />
                              <node concept="2I9FWS" id="mQ" role="2T96Bj">
                                <ref role="2I9WkF" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                                <uo k="s:originTrace" v="n:6836281137582780195" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="mI" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582780196" />
                        <node concept="3cpWsn" id="mR" role="3cpWs9">
                          <property role="TrG5h" value="abstractConceptDeclaration" />
                          <uo k="s:originTrace" v="n:6836281137582780197" />
                          <node concept="3Tqbb2" id="mS" role="1tU5fm">
                            <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                            <uo k="s:originTrace" v="n:6836281137582780198" />
                          </node>
                          <node concept="2OqwBi" id="mT" role="33vP2m">
                            <uo k="s:originTrace" v="n:6836281137582780199" />
                            <node concept="2OqwBi" id="mU" role="2Oq$k0">
                              <uo k="s:originTrace" v="n:6836281137582780200" />
                              <node concept="1DoJHT" id="mW" role="2Oq$k0">
                                <property role="1Dpdpm" value="getReferenceNode" />
                                <uo k="s:originTrace" v="n:6836281137582780201" />
                                <node concept="3uibUv" id="mY" role="1Ez5kq">
                                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                </node>
                                <node concept="37vLTw" id="mZ" role="1EMhIo">
                                  <ref role="3cqZAo" node="mD" resolve="_context" />
                                </node>
                              </node>
                              <node concept="2Xjw5R" id="mX" role="2OqNvi">
                                <uo k="s:originTrace" v="n:6836281137582780202" />
                                <node concept="1xMEDy" id="n0" role="1xVPHs">
                                  <uo k="s:originTrace" v="n:6836281137582780203" />
                                  <node concept="chp4Y" id="n1" role="ri$Ld">
                                    <ref role="cht4Q" to="1i04:hP3h7Gq" resolve="ConceptBehavior" />
                                    <uo k="s:originTrace" v="n:6836281137582780204" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3TrEf2" id="mV" role="2OqNvi">
                              <ref role="3Tt5mk" to="1i04:hP3h7Gv" resolve="concept" />
                              <uo k="s:originTrace" v="n:6836281137582780205" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="mJ" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582780206" />
                        <node concept="3clFbS" id="n2" role="3clFbx">
                          <uo k="s:originTrace" v="n:6836281137582780207" />
                          <node concept="3cpWs8" id="n4" role="3cqZAp">
                            <uo k="s:originTrace" v="n:6836281137582780208" />
                            <node concept="3cpWsn" id="n8" role="3cpWs9">
                              <property role="TrG5h" value="cd" />
                              <uo k="s:originTrace" v="n:6836281137582780209" />
                              <node concept="3Tqbb2" id="n9" role="1tU5fm">
                                <ref role="ehGHo" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                                <uo k="s:originTrace" v="n:6836281137582780210" />
                              </node>
                              <node concept="10QFUN" id="na" role="33vP2m">
                                <uo k="s:originTrace" v="n:6836281137582780211" />
                                <node concept="3Tqbb2" id="nb" role="10QFUM">
                                  <ref role="ehGHo" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                                  <uo k="s:originTrace" v="n:6836281137582780212" />
                                </node>
                                <node concept="37vLTw" id="nc" role="10QFUP">
                                  <ref role="3cqZAo" node="mR" resolve="abstractConceptDeclaration" />
                                  <uo k="s:originTrace" v="n:6836281137582780213" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs8" id="n5" role="3cqZAp">
                            <uo k="s:originTrace" v="n:6836281137582780214" />
                            <node concept="3cpWsn" id="nd" role="3cpWs9">
                              <property role="TrG5h" value="extendsNode" />
                              <uo k="s:originTrace" v="n:6836281137582780215" />
                              <node concept="3Tqbb2" id="ne" role="1tU5fm">
                                <ref role="ehGHo" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                                <uo k="s:originTrace" v="n:6836281137582780216" />
                              </node>
                              <node concept="2OqwBi" id="nf" role="33vP2m">
                                <uo k="s:originTrace" v="n:6836281137582780217" />
                                <node concept="37vLTw" id="ng" role="2Oq$k0">
                                  <ref role="3cqZAo" node="n8" resolve="cd" />
                                  <uo k="s:originTrace" v="n:6836281137582780218" />
                                </node>
                                <node concept="3TrEf2" id="nh" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tpce:f_TJDff" resolve="extends" />
                                  <uo k="s:originTrace" v="n:6836281137582780219" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbJ" id="n6" role="3cqZAp">
                            <uo k="s:originTrace" v="n:6836281137582780220" />
                            <node concept="3clFbS" id="ni" role="3clFbx">
                              <uo k="s:originTrace" v="n:6836281137582780221" />
                              <node concept="3clFbF" id="nk" role="3cqZAp">
                                <uo k="s:originTrace" v="n:6836281137582780222" />
                                <node concept="2OqwBi" id="nl" role="3clFbG">
                                  <uo k="s:originTrace" v="n:6836281137582780223" />
                                  <node concept="37vLTw" id="nm" role="2Oq$k0">
                                    <ref role="3cqZAo" node="mM" resolve="result" />
                                    <uo k="s:originTrace" v="n:6836281137582780224" />
                                  </node>
                                  <node concept="TSZUe" id="nn" role="2OqNvi">
                                    <uo k="s:originTrace" v="n:6836281137582780225" />
                                    <node concept="37vLTw" id="no" role="25WWJ7">
                                      <ref role="3cqZAo" node="nd" resolve="extendsNode" />
                                      <uo k="s:originTrace" v="n:6836281137582780226" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3y3z36" id="nj" role="3clFbw">
                              <uo k="s:originTrace" v="n:6836281137582780227" />
                              <node concept="10Nm6u" id="np" role="3uHU7w">
                                <uo k="s:originTrace" v="n:6836281137582780228" />
                              </node>
                              <node concept="37vLTw" id="nq" role="3uHU7B">
                                <ref role="3cqZAo" node="nd" resolve="extendsNode" />
                                <uo k="s:originTrace" v="n:6836281137582780229" />
                              </node>
                            </node>
                          </node>
                          <node concept="1DcWWT" id="n7" role="3cqZAp">
                            <uo k="s:originTrace" v="n:6836281137582780230" />
                            <node concept="3clFbS" id="nr" role="2LFqv$">
                              <uo k="s:originTrace" v="n:6836281137582780231" />
                              <node concept="3clFbF" id="nu" role="3cqZAp">
                                <uo k="s:originTrace" v="n:6836281137582780232" />
                                <node concept="2OqwBi" id="nv" role="3clFbG">
                                  <uo k="s:originTrace" v="n:6836281137582780233" />
                                  <node concept="37vLTw" id="nw" role="2Oq$k0">
                                    <ref role="3cqZAo" node="mM" resolve="result" />
                                    <uo k="s:originTrace" v="n:6836281137582780234" />
                                  </node>
                                  <node concept="TSZUe" id="nx" role="2OqNvi">
                                    <uo k="s:originTrace" v="n:6836281137582780235" />
                                    <node concept="2OqwBi" id="ny" role="25WWJ7">
                                      <uo k="s:originTrace" v="n:6836281137582780236" />
                                      <node concept="37vLTw" id="nz" role="2Oq$k0">
                                        <ref role="3cqZAo" node="ns" resolve="itfcRef" />
                                        <uo k="s:originTrace" v="n:6836281137582780237" />
                                      </node>
                                      <node concept="3TrEf2" id="n$" role="2OqNvi">
                                        <ref role="3Tt5mk" to="tpce:h0PrY0D" resolve="intfc" />
                                        <uo k="s:originTrace" v="n:6836281137582780238" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWsn" id="ns" role="1Duv9x">
                              <property role="TrG5h" value="itfcRef" />
                              <uo k="s:originTrace" v="n:6836281137582780239" />
                              <node concept="3Tqbb2" id="n_" role="1tU5fm">
                                <ref role="ehGHo" to="tpce:h0PrWoo" resolve="InterfaceConceptReference" />
                                <uo k="s:originTrace" v="n:6836281137582780240" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="nt" role="1DdaDG">
                              <uo k="s:originTrace" v="n:6836281137582780241" />
                              <node concept="37vLTw" id="nA" role="2Oq$k0">
                                <ref role="3cqZAo" node="n8" resolve="cd" />
                                <uo k="s:originTrace" v="n:6836281137582780242" />
                              </node>
                              <node concept="3Tsc0h" id="nB" role="2OqNvi">
                                <ref role="3TtcxE" to="tpce:h0Pzm$Y" resolve="implements" />
                                <uo k="s:originTrace" v="n:6836281137582780243" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="n3" role="3clFbw">
                          <uo k="s:originTrace" v="n:6836281137582780244" />
                          <node concept="37vLTw" id="nC" role="2Oq$k0">
                            <ref role="3cqZAo" node="mR" resolve="abstractConceptDeclaration" />
                            <uo k="s:originTrace" v="n:6836281137582780245" />
                          </node>
                          <node concept="1mIQ4w" id="nD" role="2OqNvi">
                            <uo k="s:originTrace" v="n:6836281137582780246" />
                            <node concept="chp4Y" id="nE" role="cj9EA">
                              <ref role="cht4Q" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                              <uo k="s:originTrace" v="n:6836281137582780247" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="mK" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582780248" />
                        <node concept="3clFbS" id="nF" role="3clFbx">
                          <uo k="s:originTrace" v="n:6836281137582780249" />
                          <node concept="3cpWs8" id="nH" role="3cqZAp">
                            <uo k="s:originTrace" v="n:6836281137582780250" />
                            <node concept="3cpWsn" id="nJ" role="3cpWs9">
                              <property role="TrG5h" value="itfc" />
                              <uo k="s:originTrace" v="n:6836281137582780251" />
                              <node concept="3Tqbb2" id="nK" role="1tU5fm">
                                <ref role="ehGHo" to="tpce:h0PlHMJ" resolve="InterfaceConceptDeclaration" />
                                <uo k="s:originTrace" v="n:6836281137582780252" />
                              </node>
                              <node concept="10QFUN" id="nL" role="33vP2m">
                                <uo k="s:originTrace" v="n:6836281137582780253" />
                                <node concept="3Tqbb2" id="nM" role="10QFUM">
                                  <ref role="ehGHo" to="tpce:h0PlHMJ" resolve="InterfaceConceptDeclaration" />
                                  <uo k="s:originTrace" v="n:6836281137582780254" />
                                </node>
                                <node concept="37vLTw" id="nN" role="10QFUP">
                                  <ref role="3cqZAo" node="mR" resolve="abstractConceptDeclaration" />
                                  <uo k="s:originTrace" v="n:6836281137582780255" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="1DcWWT" id="nI" role="3cqZAp">
                            <uo k="s:originTrace" v="n:6836281137582780256" />
                            <node concept="3clFbS" id="nO" role="2LFqv$">
                              <uo k="s:originTrace" v="n:6836281137582780257" />
                              <node concept="3clFbF" id="nR" role="3cqZAp">
                                <uo k="s:originTrace" v="n:6836281137582780258" />
                                <node concept="2OqwBi" id="nS" role="3clFbG">
                                  <uo k="s:originTrace" v="n:6836281137582780259" />
                                  <node concept="37vLTw" id="nT" role="2Oq$k0">
                                    <ref role="3cqZAo" node="mM" resolve="result" />
                                    <uo k="s:originTrace" v="n:6836281137582780260" />
                                  </node>
                                  <node concept="TSZUe" id="nU" role="2OqNvi">
                                    <uo k="s:originTrace" v="n:6836281137582780261" />
                                    <node concept="2OqwBi" id="nV" role="25WWJ7">
                                      <uo k="s:originTrace" v="n:6836281137582780262" />
                                      <node concept="37vLTw" id="nW" role="2Oq$k0">
                                        <ref role="3cqZAo" node="nP" resolve="itfcRef" />
                                        <uo k="s:originTrace" v="n:6836281137582780263" />
                                      </node>
                                      <node concept="3TrEf2" id="nX" role="2OqNvi">
                                        <ref role="3Tt5mk" to="tpce:h0PrY0D" resolve="intfc" />
                                        <uo k="s:originTrace" v="n:6836281137582780264" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWsn" id="nP" role="1Duv9x">
                              <property role="TrG5h" value="itfcRef" />
                              <uo k="s:originTrace" v="n:6836281137582780265" />
                              <node concept="3Tqbb2" id="nY" role="1tU5fm">
                                <ref role="ehGHo" to="tpce:h0PrWoo" resolve="InterfaceConceptReference" />
                                <uo k="s:originTrace" v="n:6836281137582780266" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="nQ" role="1DdaDG">
                              <uo k="s:originTrace" v="n:6836281137582780267" />
                              <node concept="37vLTw" id="nZ" role="2Oq$k0">
                                <ref role="3cqZAo" node="nJ" resolve="itfc" />
                                <uo k="s:originTrace" v="n:6836281137582780268" />
                              </node>
                              <node concept="3Tsc0h" id="o0" role="2OqNvi">
                                <ref role="3TtcxE" to="tpce:h0PrDRO" resolve="extends" />
                                <uo k="s:originTrace" v="n:6836281137582780269" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="nG" role="3clFbw">
                          <uo k="s:originTrace" v="n:6836281137582780270" />
                          <node concept="37vLTw" id="o1" role="2Oq$k0">
                            <ref role="3cqZAo" node="mR" resolve="abstractConceptDeclaration" />
                            <uo k="s:originTrace" v="n:6836281137582780271" />
                          </node>
                          <node concept="1mIQ4w" id="o2" role="2OqNvi">
                            <uo k="s:originTrace" v="n:6836281137582780272" />
                            <node concept="chp4Y" id="o3" role="cj9EA">
                              <ref role="cht4Q" to="tpce:h0PlHMJ" resolve="InterfaceConceptDeclaration" />
                              <uo k="s:originTrace" v="n:6836281137582780273" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs6" id="mL" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582780274" />
                        <node concept="2YIFZM" id="o4" role="3cqZAk">
                          <ref role="37wK5l" to="o8zo:3jEbQoczdCs" resolve="forResolvableElements" />
                          <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                          <uo k="s:originTrace" v="n:6836281137582780378" />
                          <node concept="37vLTw" id="o5" role="37wK5m">
                            <ref role="3cqZAo" node="mM" resolve="result" />
                            <uo k="s:originTrace" v="n:6836281137582780379" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="mF" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582780188" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="mm" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:2043122710974691049" />
        </node>
      </node>
      <node concept="3uibUv" id="m2" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:2043122710974691049" />
      </node>
    </node>
    <node concept="2YIFZL" id="kQ" role="jymVt">
      <property role="TrG5h" value="staticCanBeAChild" />
      <uo k="s:originTrace" v="n:2043122710974691049" />
      <node concept="10P_77" id="o6" role="3clF45">
        <uo k="s:originTrace" v="n:2043122710974691049" />
      </node>
      <node concept="3Tm6S6" id="o7" role="1B3o_S">
        <uo k="s:originTrace" v="n:2043122710974691049" />
      </node>
      <node concept="3clFbS" id="o8" role="3clF47">
        <uo k="s:originTrace" v="n:1227128029536560965" />
        <node concept="3clFbF" id="od" role="3cqZAp">
          <uo k="s:originTrace" v="n:1227128029536560966" />
          <node concept="2YIFZM" id="oe" role="3clFbG">
            <ref role="37wK5l" node="6m" resolve="isInsideOfBehavior" />
            <ref role="1Pybhc" node="6g" resolve="ConstraintsUtil" />
            <uo k="s:originTrace" v="n:1227128029536560967" />
            <node concept="37vLTw" id="of" role="37wK5m">
              <ref role="3cqZAo" node="oa" resolve="parentNode" />
              <uo k="s:originTrace" v="n:1227128029536560968" />
            </node>
            <node concept="3clFbT" id="og" role="37wK5m">
              <uo k="s:originTrace" v="n:5275495569448678538" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="o9" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:2043122710974691049" />
        <node concept="3uibUv" id="oh" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:2043122710974691049" />
        </node>
      </node>
      <node concept="37vLTG" id="oa" role="3clF46">
        <property role="TrG5h" value="parentNode" />
        <uo k="s:originTrace" v="n:2043122710974691049" />
        <node concept="3uibUv" id="oi" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:2043122710974691049" />
        </node>
      </node>
      <node concept="37vLTG" id="ob" role="3clF46">
        <property role="TrG5h" value="childConcept" />
        <uo k="s:originTrace" v="n:2043122710974691049" />
        <node concept="3uibUv" id="oj" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
          <uo k="s:originTrace" v="n:2043122710974691049" />
        </node>
      </node>
      <node concept="37vLTG" id="oc" role="3clF46">
        <property role="TrG5h" value="link" />
        <uo k="s:originTrace" v="n:2043122710974691049" />
        <node concept="3uibUv" id="ok" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
          <uo k="s:originTrace" v="n:2043122710974691049" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="ol">
    <property role="TrG5h" value="ThisConceptExpression_Constraints" />
    <uo k="s:originTrace" v="n:1703835097132643542" />
    <node concept="3Tm1VV" id="om" role="1B3o_S">
      <uo k="s:originTrace" v="n:1703835097132643542" />
    </node>
    <node concept="3uibUv" id="on" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:1703835097132643542" />
    </node>
    <node concept="3clFbW" id="oo" role="jymVt">
      <uo k="s:originTrace" v="n:1703835097132643542" />
      <node concept="37vLTG" id="or" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:1703835097132643542" />
        <node concept="3uibUv" id="ou" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:1703835097132643542" />
        </node>
      </node>
      <node concept="3cqZAl" id="os" role="3clF45">
        <uo k="s:originTrace" v="n:1703835097132643542" />
      </node>
      <node concept="3clFbS" id="ot" role="3clF47">
        <uo k="s:originTrace" v="n:1703835097132643542" />
        <node concept="XkiVB" id="ov" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:1703835097132643542" />
          <node concept="1BaE9c" id="ox" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="ThisConceptExpression$KM" />
            <uo k="s:originTrace" v="n:1703835097132643542" />
            <node concept="2YIFZM" id="oz" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:1703835097132643542" />
              <node concept="11gdke" id="o$" role="37wK5m">
                <property role="11gdj1" value="af65afd8f0dd4942L" />
                <uo k="s:originTrace" v="n:1703835097132643542" />
              </node>
              <node concept="11gdke" id="o_" role="37wK5m">
                <property role="11gdj1" value="87d963a55f2a9db1L" />
                <uo k="s:originTrace" v="n:1703835097132643542" />
              </node>
              <node concept="11gdke" id="oA" role="37wK5m">
                <property role="11gdj1" value="17a53cfe586da642L" />
                <uo k="s:originTrace" v="n:1703835097132643542" />
              </node>
              <node concept="Xl_RD" id="oB" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.behavior.structure.ThisConceptExpression" />
                <uo k="s:originTrace" v="n:1703835097132643542" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="oy" role="37wK5m">
            <ref role="3cqZAo" node="or" resolve="initContext" />
            <uo k="s:originTrace" v="n:1703835097132643542" />
          </node>
        </node>
        <node concept="3clFbF" id="ow" role="3cqZAp">
          <uo k="s:originTrace" v="n:1703835097132643542" />
          <node concept="1rXfSq" id="oC" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.setCanBeChildConstraint(jetbrains.mps.smodel.runtime.ConstraintFunction)" resolve="setCanBeChildConstraint" />
            <uo k="s:originTrace" v="n:1703835097132643542" />
            <node concept="2ShNRf" id="oD" role="37wK5m">
              <uo k="s:originTrace" v="n:1703835097132643542" />
              <node concept="YeOm9" id="oE" role="2ShVmc">
                <uo k="s:originTrace" v="n:1703835097132643542" />
                <node concept="1Y3b0j" id="oF" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <uo k="s:originTrace" v="n:1703835097132643542" />
                  <node concept="3Tm1VV" id="oG" role="1B3o_S">
                    <uo k="s:originTrace" v="n:1703835097132643542" />
                  </node>
                  <node concept="3clFb_" id="oH" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="invoke" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <uo k="s:originTrace" v="n:1703835097132643542" />
                    <node concept="3Tm1VV" id="oK" role="1B3o_S">
                      <uo k="s:originTrace" v="n:1703835097132643542" />
                    </node>
                    <node concept="2AHcQZ" id="oL" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:1703835097132643542" />
                    </node>
                    <node concept="3uibUv" id="oM" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      <uo k="s:originTrace" v="n:1703835097132643542" />
                    </node>
                    <node concept="37vLTG" id="oN" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <uo k="s:originTrace" v="n:1703835097132643542" />
                      <node concept="3uibUv" id="oQ" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                        <uo k="s:originTrace" v="n:1703835097132643542" />
                      </node>
                      <node concept="2AHcQZ" id="oR" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        <uo k="s:originTrace" v="n:1703835097132643542" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="oO" role="3clF46">
                      <property role="TrG5h" value="checkingNodeContext" />
                      <uo k="s:originTrace" v="n:1703835097132643542" />
                      <node concept="3uibUv" id="oS" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                        <uo k="s:originTrace" v="n:1703835097132643542" />
                      </node>
                      <node concept="2AHcQZ" id="oT" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                        <uo k="s:originTrace" v="n:1703835097132643542" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="oP" role="3clF47">
                      <uo k="s:originTrace" v="n:1703835097132643542" />
                      <node concept="3cpWs8" id="oU" role="3cqZAp">
                        <uo k="s:originTrace" v="n:1703835097132643542" />
                        <node concept="3cpWsn" id="oZ" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:1703835097132643542" />
                          <node concept="10P_77" id="p0" role="1tU5fm">
                            <uo k="s:originTrace" v="n:1703835097132643542" />
                          </node>
                          <node concept="1rXfSq" id="p1" role="33vP2m">
                            <ref role="37wK5l" node="oq" resolve="staticCanBeAChild" />
                            <uo k="s:originTrace" v="n:1703835097132643542" />
                            <node concept="2OqwBi" id="p2" role="37wK5m">
                              <uo k="s:originTrace" v="n:1703835097132643542" />
                              <node concept="37vLTw" id="p6" role="2Oq$k0">
                                <ref role="3cqZAo" node="oN" resolve="context" />
                                <uo k="s:originTrace" v="n:1703835097132643542" />
                              </node>
                              <node concept="liA8E" id="p7" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getNode()" resolve="getNode" />
                                <uo k="s:originTrace" v="n:1703835097132643542" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="p3" role="37wK5m">
                              <uo k="s:originTrace" v="n:1703835097132643542" />
                              <node concept="37vLTw" id="p8" role="2Oq$k0">
                                <ref role="3cqZAo" node="oN" resolve="context" />
                                <uo k="s:originTrace" v="n:1703835097132643542" />
                              </node>
                              <node concept="liA8E" id="p9" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getParentNode()" resolve="getParentNode" />
                                <uo k="s:originTrace" v="n:1703835097132643542" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="p4" role="37wK5m">
                              <uo k="s:originTrace" v="n:1703835097132643542" />
                              <node concept="37vLTw" id="pa" role="2Oq$k0">
                                <ref role="3cqZAo" node="oN" resolve="context" />
                                <uo k="s:originTrace" v="n:1703835097132643542" />
                              </node>
                              <node concept="liA8E" id="pb" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getConcept()" resolve="getConcept" />
                                <uo k="s:originTrace" v="n:1703835097132643542" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="p5" role="37wK5m">
                              <uo k="s:originTrace" v="n:1703835097132643542" />
                              <node concept="37vLTw" id="pc" role="2Oq$k0">
                                <ref role="3cqZAo" node="oN" resolve="context" />
                                <uo k="s:originTrace" v="n:1703835097132643542" />
                              </node>
                              <node concept="liA8E" id="pd" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getLink()" resolve="getLink" />
                                <uo k="s:originTrace" v="n:1703835097132643542" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="oV" role="3cqZAp">
                        <uo k="s:originTrace" v="n:1703835097132643542" />
                      </node>
                      <node concept="3clFbJ" id="oW" role="3cqZAp">
                        <uo k="s:originTrace" v="n:1703835097132643542" />
                        <node concept="3clFbS" id="pe" role="3clFbx">
                          <uo k="s:originTrace" v="n:1703835097132643542" />
                          <node concept="3clFbF" id="pg" role="3cqZAp">
                            <uo k="s:originTrace" v="n:1703835097132643542" />
                            <node concept="2OqwBi" id="ph" role="3clFbG">
                              <uo k="s:originTrace" v="n:1703835097132643542" />
                              <node concept="37vLTw" id="pi" role="2Oq$k0">
                                <ref role="3cqZAo" node="oO" resolve="checkingNodeContext" />
                                <uo k="s:originTrace" v="n:1703835097132643542" />
                              </node>
                              <node concept="liA8E" id="pj" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                                <uo k="s:originTrace" v="n:1703835097132643542" />
                                <node concept="1dyn4i" id="pk" role="37wK5m">
                                  <property role="1dyqJU" value="canBeChildBreakingPoint" />
                                  <uo k="s:originTrace" v="n:1703835097132643542" />
                                  <node concept="2ShNRf" id="pl" role="1dyrYi">
                                    <uo k="s:originTrace" v="n:1703835097132643542" />
                                    <node concept="1pGfFk" id="pm" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:1703835097132643542" />
                                      <node concept="Xl_RD" id="pn" role="37wK5m">
                                        <property role="Xl_RC" value="r:6786d6ee-e5cc-4a77-9efd-65a8dca8b187(jetbrains.mps.lang.behavior.constraints)" />
                                        <uo k="s:originTrace" v="n:1703835097132643542" />
                                      </node>
                                      <node concept="Xl_RD" id="po" role="37wK5m">
                                        <property role="Xl_RC" value="1703835097132643546" />
                                        <uo k="s:originTrace" v="n:1703835097132643542" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Wc70l" id="pf" role="3clFbw">
                          <uo k="s:originTrace" v="n:1703835097132643542" />
                          <node concept="3y3z36" id="pp" role="3uHU7w">
                            <uo k="s:originTrace" v="n:1703835097132643542" />
                            <node concept="10Nm6u" id="pr" role="3uHU7w">
                              <uo k="s:originTrace" v="n:1703835097132643542" />
                            </node>
                            <node concept="37vLTw" id="ps" role="3uHU7B">
                              <ref role="3cqZAo" node="oO" resolve="checkingNodeContext" />
                              <uo k="s:originTrace" v="n:1703835097132643542" />
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="pq" role="3uHU7B">
                            <uo k="s:originTrace" v="n:1703835097132643542" />
                            <node concept="37vLTw" id="pt" role="3fr31v">
                              <ref role="3cqZAo" node="oZ" resolve="result" />
                              <uo k="s:originTrace" v="n:1703835097132643542" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="oX" role="3cqZAp">
                        <uo k="s:originTrace" v="n:1703835097132643542" />
                      </node>
                      <node concept="3clFbF" id="oY" role="3cqZAp">
                        <uo k="s:originTrace" v="n:1703835097132643542" />
                        <node concept="37vLTw" id="pu" role="3clFbG">
                          <ref role="3cqZAo" node="oZ" resolve="result" />
                          <uo k="s:originTrace" v="n:1703835097132643542" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="oI" role="2Ghqu4">
                    <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                    <uo k="s:originTrace" v="n:1703835097132643542" />
                  </node>
                  <node concept="3uibUv" id="oJ" role="2Ghqu4">
                    <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    <uo k="s:originTrace" v="n:1703835097132643542" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="op" role="jymVt">
      <uo k="s:originTrace" v="n:1703835097132643542" />
    </node>
    <node concept="2YIFZL" id="oq" role="jymVt">
      <property role="TrG5h" value="staticCanBeAChild" />
      <uo k="s:originTrace" v="n:1703835097132643542" />
      <node concept="10P_77" id="pv" role="3clF45">
        <uo k="s:originTrace" v="n:1703835097132643542" />
      </node>
      <node concept="3Tm6S6" id="pw" role="1B3o_S">
        <uo k="s:originTrace" v="n:1703835097132643542" />
      </node>
      <node concept="3clFbS" id="px" role="3clF47">
        <uo k="s:originTrace" v="n:1703835097132643547" />
        <node concept="3clFbF" id="pA" role="3cqZAp">
          <uo k="s:originTrace" v="n:1703835097132644007" />
          <node concept="2YIFZM" id="pB" role="3clFbG">
            <ref role="37wK5l" node="6m" resolve="isInsideOfBehavior" />
            <ref role="1Pybhc" node="6g" resolve="ConstraintsUtil" />
            <uo k="s:originTrace" v="n:1703835097132644009" />
            <node concept="37vLTw" id="pC" role="37wK5m">
              <ref role="3cqZAo" node="pz" resolve="parentNode" />
              <uo k="s:originTrace" v="n:1703835097132644010" />
            </node>
            <node concept="3clFbT" id="pD" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:1703835097132644987" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="py" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:1703835097132643542" />
        <node concept="3uibUv" id="pE" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:1703835097132643542" />
        </node>
      </node>
      <node concept="37vLTG" id="pz" role="3clF46">
        <property role="TrG5h" value="parentNode" />
        <uo k="s:originTrace" v="n:1703835097132643542" />
        <node concept="3uibUv" id="pF" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:1703835097132643542" />
        </node>
      </node>
      <node concept="37vLTG" id="p$" role="3clF46">
        <property role="TrG5h" value="childConcept" />
        <uo k="s:originTrace" v="n:1703835097132643542" />
        <node concept="3uibUv" id="pG" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
          <uo k="s:originTrace" v="n:1703835097132643542" />
        </node>
      </node>
      <node concept="37vLTG" id="p_" role="3clF46">
        <property role="TrG5h" value="link" />
        <uo k="s:originTrace" v="n:1703835097132643542" />
        <node concept="3uibUv" id="pH" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
          <uo k="s:originTrace" v="n:1703835097132643542" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="pI">
    <property role="3GE5qa" value="" />
    <property role="TrG5h" value="ThisNodeExpression_Constraints" />
    <uo k="s:originTrace" v="n:2043122710974690677" />
    <node concept="3Tm1VV" id="pJ" role="1B3o_S">
      <uo k="s:originTrace" v="n:2043122710974690677" />
    </node>
    <node concept="3uibUv" id="pK" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:2043122710974690677" />
    </node>
    <node concept="3clFbW" id="pL" role="jymVt">
      <uo k="s:originTrace" v="n:2043122710974690677" />
      <node concept="37vLTG" id="pO" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:2043122710974690677" />
        <node concept="3uibUv" id="pR" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:2043122710974690677" />
        </node>
      </node>
      <node concept="3cqZAl" id="pP" role="3clF45">
        <uo k="s:originTrace" v="n:2043122710974690677" />
      </node>
      <node concept="3clFbS" id="pQ" role="3clF47">
        <uo k="s:originTrace" v="n:2043122710974690677" />
        <node concept="XkiVB" id="pS" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:2043122710974690677" />
          <node concept="1BaE9c" id="pU" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="ThisNodeExpression$v1" />
            <uo k="s:originTrace" v="n:2043122710974690677" />
            <node concept="2YIFZM" id="pW" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:2043122710974690677" />
              <node concept="11gdke" id="pX" role="37wK5m">
                <property role="11gdj1" value="af65afd8f0dd4942L" />
                <uo k="s:originTrace" v="n:2043122710974690677" />
              </node>
              <node concept="11gdke" id="pY" role="37wK5m">
                <property role="11gdj1" value="87d963a55f2a9db1L" />
                <uo k="s:originTrace" v="n:2043122710974690677" />
              </node>
              <node concept="11gdke" id="pZ" role="37wK5m">
                <property role="11gdj1" value="11d434b5be1L" />
                <uo k="s:originTrace" v="n:2043122710974690677" />
              </node>
              <node concept="Xl_RD" id="q0" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" />
                <uo k="s:originTrace" v="n:2043122710974690677" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="pV" role="37wK5m">
            <ref role="3cqZAo" node="pO" resolve="initContext" />
            <uo k="s:originTrace" v="n:2043122710974690677" />
          </node>
        </node>
        <node concept="3clFbF" id="pT" role="3cqZAp">
          <uo k="s:originTrace" v="n:2043122710974690677" />
          <node concept="1rXfSq" id="q1" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.setCanBeChildConstraint(jetbrains.mps.smodel.runtime.ConstraintFunction)" resolve="setCanBeChildConstraint" />
            <uo k="s:originTrace" v="n:2043122710974690677" />
            <node concept="2ShNRf" id="q2" role="37wK5m">
              <uo k="s:originTrace" v="n:2043122710974690677" />
              <node concept="YeOm9" id="q3" role="2ShVmc">
                <uo k="s:originTrace" v="n:2043122710974690677" />
                <node concept="1Y3b0j" id="q4" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <uo k="s:originTrace" v="n:2043122710974690677" />
                  <node concept="3Tm1VV" id="q5" role="1B3o_S">
                    <uo k="s:originTrace" v="n:2043122710974690677" />
                  </node>
                  <node concept="3clFb_" id="q6" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="invoke" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <uo k="s:originTrace" v="n:2043122710974690677" />
                    <node concept="3Tm1VV" id="q9" role="1B3o_S">
                      <uo k="s:originTrace" v="n:2043122710974690677" />
                    </node>
                    <node concept="2AHcQZ" id="qa" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:2043122710974690677" />
                    </node>
                    <node concept="3uibUv" id="qb" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      <uo k="s:originTrace" v="n:2043122710974690677" />
                    </node>
                    <node concept="37vLTG" id="qc" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <uo k="s:originTrace" v="n:2043122710974690677" />
                      <node concept="3uibUv" id="qf" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                        <uo k="s:originTrace" v="n:2043122710974690677" />
                      </node>
                      <node concept="2AHcQZ" id="qg" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        <uo k="s:originTrace" v="n:2043122710974690677" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="qd" role="3clF46">
                      <property role="TrG5h" value="checkingNodeContext" />
                      <uo k="s:originTrace" v="n:2043122710974690677" />
                      <node concept="3uibUv" id="qh" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                        <uo k="s:originTrace" v="n:2043122710974690677" />
                      </node>
                      <node concept="2AHcQZ" id="qi" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                        <uo k="s:originTrace" v="n:2043122710974690677" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="qe" role="3clF47">
                      <uo k="s:originTrace" v="n:2043122710974690677" />
                      <node concept="3cpWs8" id="qj" role="3cqZAp">
                        <uo k="s:originTrace" v="n:2043122710974690677" />
                        <node concept="3cpWsn" id="qo" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:2043122710974690677" />
                          <node concept="10P_77" id="qp" role="1tU5fm">
                            <uo k="s:originTrace" v="n:2043122710974690677" />
                          </node>
                          <node concept="1rXfSq" id="qq" role="33vP2m">
                            <ref role="37wK5l" node="pN" resolve="staticCanBeAChild" />
                            <uo k="s:originTrace" v="n:2043122710974690677" />
                            <node concept="2OqwBi" id="qr" role="37wK5m">
                              <uo k="s:originTrace" v="n:2043122710974690677" />
                              <node concept="37vLTw" id="qv" role="2Oq$k0">
                                <ref role="3cqZAo" node="qc" resolve="context" />
                                <uo k="s:originTrace" v="n:2043122710974690677" />
                              </node>
                              <node concept="liA8E" id="qw" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getNode()" resolve="getNode" />
                                <uo k="s:originTrace" v="n:2043122710974690677" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="qs" role="37wK5m">
                              <uo k="s:originTrace" v="n:2043122710974690677" />
                              <node concept="37vLTw" id="qx" role="2Oq$k0">
                                <ref role="3cqZAo" node="qc" resolve="context" />
                                <uo k="s:originTrace" v="n:2043122710974690677" />
                              </node>
                              <node concept="liA8E" id="qy" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getParentNode()" resolve="getParentNode" />
                                <uo k="s:originTrace" v="n:2043122710974690677" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="qt" role="37wK5m">
                              <uo k="s:originTrace" v="n:2043122710974690677" />
                              <node concept="37vLTw" id="qz" role="2Oq$k0">
                                <ref role="3cqZAo" node="qc" resolve="context" />
                                <uo k="s:originTrace" v="n:2043122710974690677" />
                              </node>
                              <node concept="liA8E" id="q$" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getConcept()" resolve="getConcept" />
                                <uo k="s:originTrace" v="n:2043122710974690677" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="qu" role="37wK5m">
                              <uo k="s:originTrace" v="n:2043122710974690677" />
                              <node concept="37vLTw" id="q_" role="2Oq$k0">
                                <ref role="3cqZAo" node="qc" resolve="context" />
                                <uo k="s:originTrace" v="n:2043122710974690677" />
                              </node>
                              <node concept="liA8E" id="qA" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getLink()" resolve="getLink" />
                                <uo k="s:originTrace" v="n:2043122710974690677" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="qk" role="3cqZAp">
                        <uo k="s:originTrace" v="n:2043122710974690677" />
                      </node>
                      <node concept="3clFbJ" id="ql" role="3cqZAp">
                        <uo k="s:originTrace" v="n:2043122710974690677" />
                        <node concept="3clFbS" id="qB" role="3clFbx">
                          <uo k="s:originTrace" v="n:2043122710974690677" />
                          <node concept="3clFbF" id="qD" role="3cqZAp">
                            <uo k="s:originTrace" v="n:2043122710974690677" />
                            <node concept="2OqwBi" id="qE" role="3clFbG">
                              <uo k="s:originTrace" v="n:2043122710974690677" />
                              <node concept="37vLTw" id="qF" role="2Oq$k0">
                                <ref role="3cqZAo" node="qd" resolve="checkingNodeContext" />
                                <uo k="s:originTrace" v="n:2043122710974690677" />
                              </node>
                              <node concept="liA8E" id="qG" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                                <uo k="s:originTrace" v="n:2043122710974690677" />
                                <node concept="1dyn4i" id="qH" role="37wK5m">
                                  <property role="1dyqJU" value="canBeChildBreakingPoint" />
                                  <uo k="s:originTrace" v="n:2043122710974690677" />
                                  <node concept="2ShNRf" id="qI" role="1dyrYi">
                                    <uo k="s:originTrace" v="n:2043122710974690677" />
                                    <node concept="1pGfFk" id="qJ" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:2043122710974690677" />
                                      <node concept="Xl_RD" id="qK" role="37wK5m">
                                        <property role="Xl_RC" value="r:6786d6ee-e5cc-4a77-9efd-65a8dca8b187(jetbrains.mps.lang.behavior.constraints)" />
                                        <uo k="s:originTrace" v="n:2043122710974690677" />
                                      </node>
                                      <node concept="Xl_RD" id="qL" role="37wK5m">
                                        <property role="Xl_RC" value="1227128029536560974" />
                                        <uo k="s:originTrace" v="n:2043122710974690677" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Wc70l" id="qC" role="3clFbw">
                          <uo k="s:originTrace" v="n:2043122710974690677" />
                          <node concept="3y3z36" id="qM" role="3uHU7w">
                            <uo k="s:originTrace" v="n:2043122710974690677" />
                            <node concept="10Nm6u" id="qO" role="3uHU7w">
                              <uo k="s:originTrace" v="n:2043122710974690677" />
                            </node>
                            <node concept="37vLTw" id="qP" role="3uHU7B">
                              <ref role="3cqZAo" node="qd" resolve="checkingNodeContext" />
                              <uo k="s:originTrace" v="n:2043122710974690677" />
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="qN" role="3uHU7B">
                            <uo k="s:originTrace" v="n:2043122710974690677" />
                            <node concept="37vLTw" id="qQ" role="3fr31v">
                              <ref role="3cqZAo" node="qo" resolve="result" />
                              <uo k="s:originTrace" v="n:2043122710974690677" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="qm" role="3cqZAp">
                        <uo k="s:originTrace" v="n:2043122710974690677" />
                      </node>
                      <node concept="3clFbF" id="qn" role="3cqZAp">
                        <uo k="s:originTrace" v="n:2043122710974690677" />
                        <node concept="37vLTw" id="qR" role="3clFbG">
                          <ref role="3cqZAo" node="qo" resolve="result" />
                          <uo k="s:originTrace" v="n:2043122710974690677" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="q7" role="2Ghqu4">
                    <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                    <uo k="s:originTrace" v="n:2043122710974690677" />
                  </node>
                  <node concept="3uibUv" id="q8" role="2Ghqu4">
                    <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    <uo k="s:originTrace" v="n:2043122710974690677" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="pM" role="jymVt">
      <uo k="s:originTrace" v="n:2043122710974690677" />
    </node>
    <node concept="2YIFZL" id="pN" role="jymVt">
      <property role="TrG5h" value="staticCanBeAChild" />
      <uo k="s:originTrace" v="n:2043122710974690677" />
      <node concept="10P_77" id="qS" role="3clF45">
        <uo k="s:originTrace" v="n:2043122710974690677" />
      </node>
      <node concept="3Tm6S6" id="qT" role="1B3o_S">
        <uo k="s:originTrace" v="n:2043122710974690677" />
      </node>
      <node concept="3clFbS" id="qU" role="3clF47">
        <uo k="s:originTrace" v="n:1227128029536560975" />
        <node concept="3clFbF" id="qZ" role="3cqZAp">
          <uo k="s:originTrace" v="n:1227128029536560978" />
          <node concept="2YIFZM" id="r0" role="3clFbG">
            <ref role="37wK5l" node="6m" resolve="isInsideOfBehavior" />
            <ref role="1Pybhc" node="6g" resolve="ConstraintsUtil" />
            <uo k="s:originTrace" v="n:1227128029536560980" />
            <node concept="37vLTw" id="r1" role="37wK5m">
              <ref role="3cqZAo" node="qW" resolve="parentNode" />
              <uo k="s:originTrace" v="n:1227128029536560981" />
            </node>
            <node concept="3clFbT" id="r2" role="37wK5m">
              <property role="3clFbU" value="false" />
              <uo k="s:originTrace" v="n:1227128029536560982" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="qV" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:2043122710974690677" />
        <node concept="3uibUv" id="r3" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:2043122710974690677" />
        </node>
      </node>
      <node concept="37vLTG" id="qW" role="3clF46">
        <property role="TrG5h" value="parentNode" />
        <uo k="s:originTrace" v="n:2043122710974690677" />
        <node concept="3uibUv" id="r4" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:2043122710974690677" />
        </node>
      </node>
      <node concept="37vLTG" id="qX" role="3clF46">
        <property role="TrG5h" value="childConcept" />
        <uo k="s:originTrace" v="n:2043122710974690677" />
        <node concept="3uibUv" id="r5" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
          <uo k="s:originTrace" v="n:2043122710974690677" />
        </node>
      </node>
      <node concept="37vLTG" id="qY" role="3clF46">
        <property role="TrG5h" value="link" />
        <uo k="s:originTrace" v="n:2043122710974690677" />
        <node concept="3uibUv" id="r6" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
          <uo k="s:originTrace" v="n:2043122710974690677" />
        </node>
      </node>
    </node>
  </node>
</model>

