<?xml version="1.0" encoding="UTF-8"?>
<model ref="00000000-0000-4000-5f02-5beb5f025beb/i:fc113fa(checkpoints/jetbrains.mps.baseLanguage.classifiers.typesystem@descriptorclasses)">
  <persistence version="9" />
  <attribute name="checkpoint" value="DescriptorClasses" />
  <attribute name="generation-plan" value="AspectCPS" />
  <attribute name="user-objects" value="true" />
  <languages />
  <imports>
    <import index="tp4d" ref="r:00000000-0000-4000-0000-011c89590371(jetbrains.mps.baseLanguage.classifiers.typesystem)" />
    <import index="tpeh" ref="r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)" />
    <import index="2gg1" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.errors(MPS.Core/)" />
    <import index="tpek" ref="r:00000000-0000-4000-0000-011c895902c0(jetbrains.mps.baseLanguage.behavior)" />
    <import index="d3ym" ref="00000000-0000-4000-5f02-5beb5f025beb/i:fc1124e(checkpoints/jetbrains.mps.baseLanguage.typesystem@descriptorclasses)" />
    <import index="tp4h" ref="r:00000000-0000-4000-0000-011c8959036d(jetbrains.mps.baseLanguage.classifiers.behavior)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="zavc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.errors.messageTargets(MPS.Core/)" />
    <import index="1ka" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.typechecking(MPS.Core/)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="qurh" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.lang.typesystem.runtime(MPS.Core/)" />
    <import index="tp4f" ref="r:00000000-0000-4000-0000-011c89590373(jetbrains.mps.baseLanguage.classifiers.structure)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="u78q" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.typesystem.inference(MPS.Core/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
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
      <concept id="1153422305557" name="jetbrains.mps.baseLanguage.structure.LessThanOrEqualsExpression" flags="nn" index="2dkUwp" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
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
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
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
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
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
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
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
      <concept id="1081855346303" name="jetbrains.mps.baseLanguage.structure.BreakStatement" flags="nn" index="3zACq4" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
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
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
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
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="2990591960991114251" name="jetbrains.mps.lang.typesystem.structure.OriginalNodeId" flags="ng" index="6wLe0">
        <property id="2990591960991114264" name="nodeId" index="6wLej" />
        <property id="2990591960991114295" name="modelId" index="6wLeW" />
      </concept>
      <concept id="1216383337216" name="jetbrains.mps.lang.typesystem.structure.ConceptFunctionParameter_node" flags="nn" index="Q6c8r" />
    </language>
    <language id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal">
      <concept id="1176743162354" name="jetbrains.mps.baseLanguageInternal.structure.InternalVariableReference" flags="nn" index="3VmV3z">
        <property id="1176743296073" name="name" index="3VnrPo" />
        <child id="1176743202636" name="type" index="3Vn4Tt" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1171323947159" name="jetbrains.mps.lang.smodel.structure.Model_NodesOperation" flags="nn" index="2SmgA7">
        <child id="1758937410080001570" name="conceptArgument" index="1dBWTz" />
      </concept>
      <concept id="1145570846907" name="jetbrains.mps.lang.smodel.structure.Node_GetNextSiblingsOperation" flags="nn" index="2TlYAL" />
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
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
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1165595910856" name="jetbrains.mps.baseLanguage.collections.structure.GetLastOperation" flags="nn" index="1yVyf7" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="9042586985346099698" name="jetbrains.mps.baseLanguage.collections.structure.MultiForEachStatement" flags="nn" index="1_o_46">
        <child id="9042586985346099734" name="forEach" index="1_o_by" />
      </concept>
      <concept id="9042586985346099733" name="jetbrains.mps.baseLanguage.collections.structure.MultiForEachPair" flags="ng" index="1_o_bx">
        <child id="9042586985346099778" name="variable" index="1_o_aQ" />
        <child id="9042586985346099735" name="input" index="1_o_bz" />
      </concept>
      <concept id="9042586985346099736" name="jetbrains.mps.baseLanguage.collections.structure.MultiForEachVariable" flags="ng" index="1_o_bG" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
      <concept id="8293956702609956630" name="jetbrains.mps.baseLanguage.collections.structure.MultiForEachVariableReference" flags="nn" index="3M$PaV">
        <reference id="8293956702609966325" name="variable" index="3M$S_o" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="0">
    <property role="3GE5qa" value="Types" />
    <property role="TrG5h" value="BaseClassifierType_subtypeOf_Object_SubtypingRule" />
    <uo k="s:originTrace" v="n:7697840286086411669" />
    <node concept="3clFbW" id="1" role="jymVt">
      <uo k="s:originTrace" v="n:7697840286086411669" />
      <node concept="3clFbS" id="9" role="3clF47">
        <uo k="s:originTrace" v="n:7697840286086411669" />
      </node>
      <node concept="3Tm1VV" id="a" role="1B3o_S">
        <uo k="s:originTrace" v="n:7697840286086411669" />
      </node>
      <node concept="3cqZAl" id="b" role="3clF45">
        <uo k="s:originTrace" v="n:7697840286086411669" />
      </node>
    </node>
    <node concept="3clFb_" id="2" role="jymVt">
      <property role="TrG5h" value="getSubOrSuperType" />
      <uo k="s:originTrace" v="n:7697840286086411669" />
      <node concept="3uibUv" id="c" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        <uo k="s:originTrace" v="n:7697840286086411669" />
      </node>
      <node concept="37vLTG" id="d" role="3clF46">
        <property role="TrG5h" value="baseClassifierType" />
        <uo k="s:originTrace" v="n:7697840286086411669" />
        <node concept="3Tqbb2" id="i" role="1tU5fm">
          <uo k="s:originTrace" v="n:7697840286086411669" />
        </node>
      </node>
      <node concept="37vLTG" id="e" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <uo k="s:originTrace" v="n:7697840286086411669" />
        <node concept="3uibUv" id="j" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:7697840286086411669" />
        </node>
      </node>
      <node concept="37vLTG" id="f" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:7697840286086411669" />
        <node concept="3uibUv" id="k" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:7697840286086411669" />
        </node>
      </node>
      <node concept="3clFbS" id="g" role="3clF47">
        <uo k="s:originTrace" v="n:7697840286086411670" />
        <node concept="3clFbF" id="l" role="3cqZAp">
          <uo k="s:originTrace" v="n:7697840286086411910" />
          <node concept="2c44tf" id="m" role="3clFbG">
            <uo k="s:originTrace" v="n:7697840286086411908" />
            <node concept="3uibUv" id="n" role="2c44tc">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              <uo k="s:originTrace" v="n:7697840286086411972" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="h" role="1B3o_S">
        <uo k="s:originTrace" v="n:7697840286086411669" />
      </node>
    </node>
    <node concept="3clFb_" id="3" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:7697840286086411669" />
      <node concept="3bZ5Sz" id="o" role="3clF45">
        <uo k="s:originTrace" v="n:7697840286086411669" />
      </node>
      <node concept="3clFbS" id="p" role="3clF47">
        <uo k="s:originTrace" v="n:7697840286086411669" />
        <node concept="3cpWs6" id="r" role="3cqZAp">
          <uo k="s:originTrace" v="n:7697840286086411669" />
          <node concept="35c_gC" id="s" role="3cqZAk">
            <ref role="35c_gD" to="tp4f:hyWtXx5" resolve="BaseClassifierType" />
            <uo k="s:originTrace" v="n:7697840286086411669" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="q" role="1B3o_S">
        <uo k="s:originTrace" v="n:7697840286086411669" />
      </node>
    </node>
    <node concept="3clFb_" id="4" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:7697840286086411669" />
      <node concept="37vLTG" id="t" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:7697840286086411669" />
        <node concept="3Tqbb2" id="x" role="1tU5fm">
          <uo k="s:originTrace" v="n:7697840286086411669" />
        </node>
      </node>
      <node concept="3clFbS" id="u" role="3clF47">
        <uo k="s:originTrace" v="n:7697840286086411669" />
        <node concept="9aQIb" id="y" role="3cqZAp">
          <uo k="s:originTrace" v="n:7697840286086411669" />
          <node concept="3clFbS" id="z" role="9aQI4">
            <uo k="s:originTrace" v="n:7697840286086411669" />
            <node concept="3cpWs6" id="$" role="3cqZAp">
              <uo k="s:originTrace" v="n:7697840286086411669" />
              <node concept="2ShNRf" id="_" role="3cqZAk">
                <uo k="s:originTrace" v="n:7697840286086411669" />
                <node concept="1pGfFk" id="A" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:7697840286086411669" />
                  <node concept="2OqwBi" id="B" role="37wK5m">
                    <uo k="s:originTrace" v="n:7697840286086411669" />
                    <node concept="2OqwBi" id="D" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:7697840286086411669" />
                      <node concept="liA8E" id="F" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:7697840286086411669" />
                      </node>
                      <node concept="2JrnkZ" id="G" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:7697840286086411669" />
                        <node concept="37vLTw" id="H" role="2JrQYb">
                          <ref role="3cqZAo" node="t" resolve="argument" />
                          <uo k="s:originTrace" v="n:7697840286086411669" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="E" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:7697840286086411669" />
                      <node concept="1rXfSq" id="I" role="37wK5m">
                        <ref role="37wK5l" node="3" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:7697840286086411669" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="C" role="37wK5m">
                    <uo k="s:originTrace" v="n:7697840286086411669" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="v" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:7697840286086411669" />
      </node>
      <node concept="3Tm1VV" id="w" role="1B3o_S">
        <uo k="s:originTrace" v="n:7697840286086411669" />
      </node>
    </node>
    <node concept="3clFb_" id="5" role="jymVt">
      <property role="TrG5h" value="isWeak" />
      <uo k="s:originTrace" v="n:7697840286086411669" />
      <node concept="3clFbS" id="J" role="3clF47">
        <uo k="s:originTrace" v="n:7697840286086411669" />
        <node concept="3cpWs6" id="M" role="3cqZAp">
          <uo k="s:originTrace" v="n:7697840286086411669" />
          <node concept="3clFbT" id="N" role="3cqZAk">
            <property role="3clFbU" value="true" />
            <uo k="s:originTrace" v="n:7697840286086411669" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="K" role="1B3o_S">
        <uo k="s:originTrace" v="n:7697840286086411669" />
      </node>
      <node concept="10P_77" id="L" role="3clF45">
        <uo k="s:originTrace" v="n:7697840286086411669" />
      </node>
    </node>
    <node concept="3uibUv" id="6" role="EKbjA">
      <ref role="3uigEE" to="qurh:~ISubtypingRule_Runtime" resolve="ISubtypingRule_Runtime" />
      <uo k="s:originTrace" v="n:7697840286086411669" />
    </node>
    <node concept="3uibUv" id="7" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~SubtypingRule_Runtime" resolve="SubtypingRule_Runtime" />
      <uo k="s:originTrace" v="n:7697840286086411669" />
    </node>
    <node concept="3Tm1VV" id="8" role="1B3o_S">
      <uo k="s:originTrace" v="n:7697840286086411669" />
    </node>
  </node>
  <node concept="39dXUE" id="O">
    <node concept="39e2AJ" id="P" role="39e2AI">
      <property role="39e3Y2" value="classForRule" />
      <node concept="39e2AG" id="V" role="39e3Y0">
        <ref role="39e2AK" to="tp4d:6FkefidRNml" resolve="BaseClassifierType_subtypeOf_Object" />
        <node concept="385nmt" id="14" role="385vvn">
          <property role="385vuF" value="BaseClassifierType_subtypeOf_Object" />
          <node concept="3u3nmq" id="16" role="385v07">
            <property role="3u3nmv" value="7697840286086411669" />
          </node>
        </node>
        <node concept="39e2AT" id="15" role="39e2AY">
          <ref role="39e2AS" node="0" resolve="BaseClassifierType_subtypeOf_Object_SubtypingRule" />
        </node>
      </node>
      <node concept="39e2AG" id="W" role="39e3Y0">
        <ref role="39e2AK" to="tp4d:441vB8LNFes" resolve="check_DefaultClassifierFieldDeclarationVisibility" />
        <node concept="385nmt" id="17" role="385vvn">
          <property role="385vuF" value="check_DefaultClassifierFieldDeclarationVisibility" />
          <node concept="3u3nmq" id="19" role="385v07">
            <property role="3u3nmv" value="4684164116369027996" />
          </node>
        </node>
        <node concept="39e2AT" id="18" role="39e2AY">
          <ref role="39e2AS" node="64" resolve="check_DefaultClassifierFieldDeclarationVisibility_NonTypesystemRule" />
        </node>
      </node>
      <node concept="39e2AG" id="X" role="39e3Y0">
        <ref role="39e2AK" to="tp4d:6dW6fBEHyMc" resolve="check_DefaultClassifierFieldNeverUsed" />
        <node concept="385nmt" id="1a" role="385vvn">
          <property role="385vuF" value="check_DefaultClassifierFieldNeverUsed" />
          <node concept="3u3nmq" id="1c" role="385v07">
            <property role="3u3nmv" value="7168632168530717836" />
          </node>
        </node>
        <node concept="39e2AT" id="1b" role="39e2AY">
          <ref role="39e2AS" node="7K" resolve="check_DefaultClassifierFieldNeverUsed_NonTypesystemRule" />
        </node>
      </node>
      <node concept="39e2AG" id="Y" role="39e3Y0">
        <ref role="39e2AK" to="tp4d:441vB8LK0gU" resolve="check_DefaultClassifierMethodDeclarationVisibility" />
        <node concept="385nmt" id="1d" role="385vvn">
          <property role="385vuF" value="check_DefaultClassifierMethodDeclarationVisibility" />
          <node concept="3u3nmq" id="1f" role="385v07">
            <property role="3u3nmv" value="4684164116368065594" />
          </node>
        </node>
        <node concept="39e2AT" id="1e" role="39e2AY">
          <ref role="39e2AS" node="9M" resolve="check_DefaultClassifierMethodDeclarationVisibility_NonTypesystemRule" />
        </node>
      </node>
      <node concept="39e2AG" id="Z" role="39e3Y0">
        <ref role="39e2AK" to="tp4d:hz2vNtI" resolve="check_IMemberOperation" />
        <node concept="385nmt" id="1g" role="385vvn">
          <property role="385vuF" value="check_IMemberOperation" />
          <node concept="3u3nmq" id="1i" role="385v07">
            <property role="3u3nmv" value="1205853960046" />
          </node>
        </node>
        <node concept="39e2AT" id="1h" role="39e2AY">
          <ref role="39e2AS" node="bu" resolve="check_IMemberOperation_NonTypesystemRule" />
        </node>
      </node>
      <node concept="39e2AG" id="10" role="39e3Y0">
        <ref role="39e2AK" to="tp4d:hEC86Rr" resolve="typeof_DefaultClassifierFieldAccessOperation" />
        <node concept="385nmt" id="1j" role="385vvn">
          <property role="385vuF" value="typeof_DefaultClassifierFieldAccessOperation" />
          <node concept="3u3nmq" id="1l" role="385v07">
            <property role="3u3nmv" value="1214001475035" />
          </node>
        </node>
        <node concept="39e2AT" id="1k" role="39e2AY">
          <ref role="39e2AS" node="d9" resolve="typeof_DefaultClassifierFieldAccessOperation_InferenceRule" />
        </node>
      </node>
      <node concept="39e2AG" id="11" role="39e3Y0">
        <ref role="39e2AK" to="tp4d:hyXuhyd" resolve="typeof_DefaultMethodCallOperation" />
        <node concept="385nmt" id="1m" role="385vvn">
          <property role="385vuF" value="typeof_DefaultMethodCallOperation" />
          <node concept="3u3nmq" id="1o" role="385v07">
            <property role="3u3nmv" value="1205769672845" />
          </node>
        </node>
        <node concept="39e2AT" id="1n" role="39e2AY">
          <ref role="39e2AS" node="eA" resolve="typeof_DefaultMethodCallOperation_InferenceRule" />
        </node>
      </node>
      <node concept="39e2AG" id="12" role="39e3Y0">
        <ref role="39e2AK" to="tp4d:hHOI6jv" resolve="typeof_SuperClassifierExpresson" />
        <node concept="385nmt" id="1p" role="385vvn">
          <property role="385vuF" value="typeof_SuperClassifierExpresson" />
          <node concept="3u3nmq" id="1r" role="385v07">
            <property role="3u3nmv" value="1217433986271" />
          </node>
        </node>
        <node concept="39e2AT" id="1q" role="39e2AY">
          <ref role="39e2AS" node="jq" resolve="typeof_SuperClassifierExpresson_InferenceRule" />
        </node>
      </node>
      <node concept="39e2AG" id="13" role="39e3Y0">
        <ref role="39e2AK" to="tp4d:hyWv3sq" resolve="typeof_ThisClassifierExpresson" />
        <node concept="385nmt" id="1s" role="385vvn">
          <property role="385vuF" value="typeof_ThisClassifierExpresson" />
          <node concept="3u3nmq" id="1u" role="385v07">
            <property role="3u3nmv" value="1205753100058" />
          </node>
        </node>
        <node concept="39e2AT" id="1t" role="39e2AY">
          <ref role="39e2AS" node="ln" resolve="typeof_ThisClassifierExpresson_InferenceRule" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="Q" role="39e2AI">
      <property role="39e3Y2" value="coercedNode" />
      <node concept="39e2AG" id="1v" role="39e3Y0">
        <ref role="39e2AK" to="tp4d:hz6yUjC" />
        <node concept="385nmt" id="1w" role="385vvn">
          <property role="385vuF" value="coerce" />
          <node concept="3u3nmq" id="1y" role="385v07">
            <property role="3u3nmv" value="1205921883368" />
          </node>
        </node>
        <node concept="39e2AT" id="1x" role="39e2AY">
          <ref role="39e2AS" node="c0" resolve="coercedNode_hm5x7h_b0" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="R" role="39e2AI">
      <property role="39e3Y2" value="isApplicableMethod" />
      <node concept="39e2AG" id="1z" role="39e3Y0">
        <ref role="39e2AK" to="tp4d:6FkefidRNml" resolve="BaseClassifierType_subtypeOf_Object" />
        <node concept="385nmt" id="1G" role="385vvn">
          <property role="385vuF" value="BaseClassifierType_subtypeOf_Object" />
          <node concept="3u3nmq" id="1I" role="385v07">
            <property role="3u3nmv" value="7697840286086411669" />
          </node>
        </node>
        <node concept="39e2AT" id="1H" role="39e2AY">
          <ref role="39e2AS" node="4" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="1$" role="39e3Y0">
        <ref role="39e2AK" to="tp4d:441vB8LNFes" resolve="check_DefaultClassifierFieldDeclarationVisibility" />
        <node concept="385nmt" id="1J" role="385vvn">
          <property role="385vuF" value="check_DefaultClassifierFieldDeclarationVisibility" />
          <node concept="3u3nmq" id="1L" role="385v07">
            <property role="3u3nmv" value="4684164116369027996" />
          </node>
        </node>
        <node concept="39e2AT" id="1K" role="39e2AY">
          <ref role="39e2AS" node="68" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="1_" role="39e3Y0">
        <ref role="39e2AK" to="tp4d:6dW6fBEHyMc" resolve="check_DefaultClassifierFieldNeverUsed" />
        <node concept="385nmt" id="1M" role="385vvn">
          <property role="385vuF" value="check_DefaultClassifierFieldNeverUsed" />
          <node concept="3u3nmq" id="1O" role="385v07">
            <property role="3u3nmv" value="7168632168530717836" />
          </node>
        </node>
        <node concept="39e2AT" id="1N" role="39e2AY">
          <ref role="39e2AS" node="7P" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="1A" role="39e3Y0">
        <ref role="39e2AK" to="tp4d:441vB8LK0gU" resolve="check_DefaultClassifierMethodDeclarationVisibility" />
        <node concept="385nmt" id="1P" role="385vvn">
          <property role="385vuF" value="check_DefaultClassifierMethodDeclarationVisibility" />
          <node concept="3u3nmq" id="1R" role="385v07">
            <property role="3u3nmv" value="4684164116368065594" />
          </node>
        </node>
        <node concept="39e2AT" id="1Q" role="39e2AY">
          <ref role="39e2AS" node="9Q" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="1B" role="39e3Y0">
        <ref role="39e2AK" to="tp4d:hz2vNtI" resolve="check_IMemberOperation" />
        <node concept="385nmt" id="1S" role="385vvn">
          <property role="385vuF" value="check_IMemberOperation" />
          <node concept="3u3nmq" id="1U" role="385v07">
            <property role="3u3nmv" value="1205853960046" />
          </node>
        </node>
        <node concept="39e2AT" id="1T" role="39e2AY">
          <ref role="39e2AS" node="by" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="1C" role="39e3Y0">
        <ref role="39e2AK" to="tp4d:hEC86Rr" resolve="typeof_DefaultClassifierFieldAccessOperation" />
        <node concept="385nmt" id="1V" role="385vvn">
          <property role="385vuF" value="typeof_DefaultClassifierFieldAccessOperation" />
          <node concept="3u3nmq" id="1X" role="385v07">
            <property role="3u3nmv" value="1214001475035" />
          </node>
        </node>
        <node concept="39e2AT" id="1W" role="39e2AY">
          <ref role="39e2AS" node="dd" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="1D" role="39e3Y0">
        <ref role="39e2AK" to="tp4d:hyXuhyd" resolve="typeof_DefaultMethodCallOperation" />
        <node concept="385nmt" id="1Y" role="385vvn">
          <property role="385vuF" value="typeof_DefaultMethodCallOperation" />
          <node concept="3u3nmq" id="20" role="385v07">
            <property role="3u3nmv" value="1205769672845" />
          </node>
        </node>
        <node concept="39e2AT" id="1Z" role="39e2AY">
          <ref role="39e2AS" node="eE" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="1E" role="39e3Y0">
        <ref role="39e2AK" to="tp4d:hHOI6jv" resolve="typeof_SuperClassifierExpresson" />
        <node concept="385nmt" id="21" role="385vvn">
          <property role="385vuF" value="typeof_SuperClassifierExpresson" />
          <node concept="3u3nmq" id="23" role="385v07">
            <property role="3u3nmv" value="1217433986271" />
          </node>
        </node>
        <node concept="39e2AT" id="22" role="39e2AY">
          <ref role="39e2AS" node="ju" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="1F" role="39e3Y0">
        <ref role="39e2AK" to="tp4d:hyWv3sq" resolve="typeof_ThisClassifierExpresson" />
        <node concept="385nmt" id="24" role="385vvn">
          <property role="385vuF" value="typeof_ThisClassifierExpresson" />
          <node concept="3u3nmq" id="26" role="385v07">
            <property role="3u3nmv" value="1205753100058" />
          </node>
        </node>
        <node concept="39e2AT" id="25" role="39e2AY">
          <ref role="39e2AS" node="lr" resolve="isApplicableAndPattern" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="S" role="39e2AI">
      <property role="39e3Y2" value="mainMethodForRule" />
      <node concept="39e2AG" id="27" role="39e3Y0">
        <ref role="39e2AK" to="tp4d:6FkefidRNml" resolve="BaseClassifierType_subtypeOf_Object" />
        <node concept="385nmt" id="2g" role="385vvn">
          <property role="385vuF" value="BaseClassifierType_subtypeOf_Object" />
          <node concept="3u3nmq" id="2i" role="385v07">
            <property role="3u3nmv" value="7697840286086411669" />
          </node>
        </node>
        <node concept="39e2AT" id="2h" role="39e2AY">
          <ref role="39e2AS" node="2" resolve="getSubOrSuperType" />
        </node>
      </node>
      <node concept="39e2AG" id="28" role="39e3Y0">
        <ref role="39e2AK" to="tp4d:441vB8LNFes" resolve="check_DefaultClassifierFieldDeclarationVisibility" />
        <node concept="385nmt" id="2j" role="385vvn">
          <property role="385vuF" value="check_DefaultClassifierFieldDeclarationVisibility" />
          <node concept="3u3nmq" id="2l" role="385v07">
            <property role="3u3nmv" value="4684164116369027996" />
          </node>
        </node>
        <node concept="39e2AT" id="2k" role="39e2AY">
          <ref role="39e2AS" node="66" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="29" role="39e3Y0">
        <ref role="39e2AK" to="tp4d:6dW6fBEHyMc" resolve="check_DefaultClassifierFieldNeverUsed" />
        <node concept="385nmt" id="2m" role="385vvn">
          <property role="385vuF" value="check_DefaultClassifierFieldNeverUsed" />
          <node concept="3u3nmq" id="2o" role="385v07">
            <property role="3u3nmv" value="7168632168530717836" />
          </node>
        </node>
        <node concept="39e2AT" id="2n" role="39e2AY">
          <ref role="39e2AS" node="7N" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="2a" role="39e3Y0">
        <ref role="39e2AK" to="tp4d:441vB8LK0gU" resolve="check_DefaultClassifierMethodDeclarationVisibility" />
        <node concept="385nmt" id="2p" role="385vvn">
          <property role="385vuF" value="check_DefaultClassifierMethodDeclarationVisibility" />
          <node concept="3u3nmq" id="2r" role="385v07">
            <property role="3u3nmv" value="4684164116368065594" />
          </node>
        </node>
        <node concept="39e2AT" id="2q" role="39e2AY">
          <ref role="39e2AS" node="9O" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="2b" role="39e3Y0">
        <ref role="39e2AK" to="tp4d:hz2vNtI" resolve="check_IMemberOperation" />
        <node concept="385nmt" id="2s" role="385vvn">
          <property role="385vuF" value="check_IMemberOperation" />
          <node concept="3u3nmq" id="2u" role="385v07">
            <property role="3u3nmv" value="1205853960046" />
          </node>
        </node>
        <node concept="39e2AT" id="2t" role="39e2AY">
          <ref role="39e2AS" node="bw" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="2c" role="39e3Y0">
        <ref role="39e2AK" to="tp4d:hEC86Rr" resolve="typeof_DefaultClassifierFieldAccessOperation" />
        <node concept="385nmt" id="2v" role="385vvn">
          <property role="385vuF" value="typeof_DefaultClassifierFieldAccessOperation" />
          <node concept="3u3nmq" id="2x" role="385v07">
            <property role="3u3nmv" value="1214001475035" />
          </node>
        </node>
        <node concept="39e2AT" id="2w" role="39e2AY">
          <ref role="39e2AS" node="db" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="2d" role="39e3Y0">
        <ref role="39e2AK" to="tp4d:hyXuhyd" resolve="typeof_DefaultMethodCallOperation" />
        <node concept="385nmt" id="2y" role="385vvn">
          <property role="385vuF" value="typeof_DefaultMethodCallOperation" />
          <node concept="3u3nmq" id="2$" role="385v07">
            <property role="3u3nmv" value="1205769672845" />
          </node>
        </node>
        <node concept="39e2AT" id="2z" role="39e2AY">
          <ref role="39e2AS" node="eC" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="2e" role="39e3Y0">
        <ref role="39e2AK" to="tp4d:hHOI6jv" resolve="typeof_SuperClassifierExpresson" />
        <node concept="385nmt" id="2_" role="385vvn">
          <property role="385vuF" value="typeof_SuperClassifierExpresson" />
          <node concept="3u3nmq" id="2B" role="385v07">
            <property role="3u3nmv" value="1217433986271" />
          </node>
        </node>
        <node concept="39e2AT" id="2A" role="39e2AY">
          <ref role="39e2AS" node="js" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="2f" role="39e3Y0">
        <ref role="39e2AK" to="tp4d:hyWv3sq" resolve="typeof_ThisClassifierExpresson" />
        <node concept="385nmt" id="2C" role="385vvn">
          <property role="385vuF" value="typeof_ThisClassifierExpresson" />
          <node concept="3u3nmq" id="2E" role="385v07">
            <property role="3u3nmv" value="1205753100058" />
          </node>
        </node>
        <node concept="39e2AT" id="2D" role="39e2AY">
          <ref role="39e2AS" node="lp" resolve="applyRule" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="T" role="39e2AI">
      <property role="39e3Y2" value="quickFix" />
      <node concept="39e2AG" id="2F" role="39e3Y0">
        <ref role="39e2AK" to="tp4d:441vB8LLiRg" resolve="MakeDefaultClassifierFieldDeclarationPrivate" />
        <node concept="385nmt" id="2H" role="385vvn">
          <property role="385vuF" value="MakeDefaultClassifierFieldDeclarationPrivate" />
          <node concept="3u3nmq" id="2J" role="385v07">
            <property role="3u3nmv" value="4684164116368403920" />
          </node>
        </node>
        <node concept="39e2AT" id="2I" role="39e2AY">
          <ref role="39e2AS" node="2P" resolve="MakeDefaultClassifierFieldDeclarationPrivate_QuickFix" />
        </node>
      </node>
      <node concept="39e2AG" id="2G" role="39e3Y0">
        <ref role="39e2AK" to="tp4d:441vB8LLmEB" resolve="MakeDefaultClassifierMethodDeclarationPrivate" />
        <node concept="385nmt" id="2K" role="385vvn">
          <property role="385vuF" value="MakeDefaultClassifierMethodDeclarationPrivate" />
          <node concept="3u3nmq" id="2M" role="385v07">
            <property role="3u3nmv" value="4684164116368419495" />
          </node>
        </node>
        <node concept="39e2AT" id="2L" role="39e2AY">
          <ref role="39e2AS" node="3q" resolve="MakeDefaultClassifierMethodDeclarationPrivate_QuickFix" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="U" role="39e2AI">
      <property role="39e3Y2" value="descriptorClass" />
      <node concept="39e2AG" id="2N" role="39e3Y0">
        <property role="2mV_xN" value="true" />
        <node concept="39e2AT" id="2O" role="39e2AY">
          <ref role="39e2AS" node="3Z" resolve="TypesystemDescriptor" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2P">
    <property role="TrG5h" value="MakeDefaultClassifierFieldDeclarationPrivate_QuickFix" />
    <uo k="s:originTrace" v="n:4684164116368403920" />
    <node concept="3clFbW" id="2Q" role="jymVt">
      <uo k="s:originTrace" v="n:4684164116368403920" />
      <node concept="3clFbS" id="2W" role="3clF47">
        <uo k="s:originTrace" v="n:4684164116368403920" />
        <node concept="XkiVB" id="2Z" role="3cqZAp">
          <ref role="37wK5l" to="2gg1:~QuickFix_Runtime.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="QuickFix_Runtime" />
          <uo k="s:originTrace" v="n:4684164116368403920" />
          <node concept="2ShNRf" id="30" role="37wK5m">
            <uo k="s:originTrace" v="n:4684164116368403920" />
            <node concept="1pGfFk" id="31" role="2ShVmc">
              <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
              <uo k="s:originTrace" v="n:4684164116368403920" />
              <node concept="Xl_RD" id="32" role="37wK5m">
                <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590371(jetbrains.mps.baseLanguage.classifiers.typesystem)" />
                <uo k="s:originTrace" v="n:4684164116368403920" />
              </node>
              <node concept="Xl_RD" id="33" role="37wK5m">
                <property role="Xl_RC" value="4684164116368403920" />
                <uo k="s:originTrace" v="n:4684164116368403920" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="2X" role="3clF45">
        <uo k="s:originTrace" v="n:4684164116368403920" />
      </node>
      <node concept="3Tm1VV" id="2Y" role="1B3o_S">
        <uo k="s:originTrace" v="n:4684164116368403920" />
      </node>
    </node>
    <node concept="3clFb_" id="2R" role="jymVt">
      <property role="TrG5h" value="getDescription" />
      <uo k="s:originTrace" v="n:4684164116368403920" />
      <node concept="3Tm1VV" id="34" role="1B3o_S">
        <uo k="s:originTrace" v="n:4684164116368403920" />
      </node>
      <node concept="3clFbS" id="35" role="3clF47">
        <uo k="s:originTrace" v="n:4684164116368423298" />
        <node concept="3clFbF" id="38" role="3cqZAp">
          <uo k="s:originTrace" v="n:4684164116368423337" />
          <node concept="Xl_RD" id="39" role="3clFbG">
            <property role="Xl_RC" value="Make Field Private" />
            <uo k="s:originTrace" v="n:4684164116368423336" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="36" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:4684164116368403920" />
        <node concept="3uibUv" id="3a" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:4684164116368403920" />
        </node>
      </node>
      <node concept="17QB3L" id="37" role="3clF45">
        <uo k="s:originTrace" v="n:4684164116368403920" />
      </node>
    </node>
    <node concept="3clFb_" id="2S" role="jymVt">
      <property role="TrG5h" value="execute" />
      <uo k="s:originTrace" v="n:4684164116368403920" />
      <node concept="3clFbS" id="3b" role="3clF47">
        <uo k="s:originTrace" v="n:4684164116368403922" />
        <node concept="3clFbF" id="3f" role="3cqZAp">
          <uo k="s:originTrace" v="n:4684164116368412305" />
          <node concept="37vLTI" id="3g" role="3clFbG">
            <uo k="s:originTrace" v="n:4684164116368418506" />
            <node concept="2ShNRf" id="3h" role="37vLTx">
              <uo k="s:originTrace" v="n:4684164116368418638" />
              <node concept="3zrR0B" id="3j" role="2ShVmc">
                <uo k="s:originTrace" v="n:4684164116368419199" />
                <node concept="3Tqbb2" id="3k" role="3zrR0E">
                  <ref role="ehGHo" to="tpee:gFTm6Wc" resolve="PrivateVisibility" />
                  <uo k="s:originTrace" v="n:4684164116368419201" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="3i" role="37vLTJ">
              <uo k="s:originTrace" v="n:4684164116368414762" />
              <node concept="1PxgMI" id="3l" role="2Oq$k0">
                <property role="1BlNFB" value="true" />
                <uo k="s:originTrace" v="n:4684164116368412869" />
                <node concept="chp4Y" id="3n" role="3oSUPX">
                  <ref role="cht4Q" to="tp4f:hEBZ0aj" resolve="DefaultClassifierFieldDeclaration" />
                  <uo k="s:originTrace" v="n:4684164116368412918" />
                </node>
                <node concept="Q6c8r" id="3o" role="1m5AlR">
                  <uo k="s:originTrace" v="n:4684164116368412304" />
                </node>
              </node>
              <node concept="3TrEf2" id="3m" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:h9B3oxE" resolve="visibility" />
                <uo k="s:originTrace" v="n:4684164116368417553" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="3c" role="3clF45">
        <uo k="s:originTrace" v="n:4684164116368403920" />
      </node>
      <node concept="3Tm1VV" id="3d" role="1B3o_S">
        <uo k="s:originTrace" v="n:4684164116368403920" />
      </node>
      <node concept="37vLTG" id="3e" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:4684164116368403920" />
        <node concept="3uibUv" id="3p" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:4684164116368403920" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="2T" role="1B3o_S">
      <uo k="s:originTrace" v="n:4684164116368403920" />
    </node>
    <node concept="3uibUv" id="2U" role="1zkMxy">
      <ref role="3uigEE" to="2gg1:~QuickFix_Runtime" resolve="QuickFix_Runtime" />
      <uo k="s:originTrace" v="n:4684164116368403920" />
    </node>
    <node concept="6wLe0" id="2V" role="lGtFl">
      <property role="6wLej" value="4684164116368403920" />
      <property role="6wLeW" value="jetbrains.mps.baseLanguage.classifiers.typesystem" />
      <uo k="s:originTrace" v="n:4684164116368403920" />
    </node>
  </node>
  <node concept="312cEu" id="3q">
    <property role="TrG5h" value="MakeDefaultClassifierMethodDeclarationPrivate_QuickFix" />
    <uo k="s:originTrace" v="n:4684164116368419495" />
    <node concept="3clFbW" id="3r" role="jymVt">
      <uo k="s:originTrace" v="n:4684164116368419495" />
      <node concept="3clFbS" id="3x" role="3clF47">
        <uo k="s:originTrace" v="n:4684164116368419495" />
        <node concept="XkiVB" id="3$" role="3cqZAp">
          <ref role="37wK5l" to="2gg1:~QuickFix_Runtime.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="QuickFix_Runtime" />
          <uo k="s:originTrace" v="n:4684164116368419495" />
          <node concept="2ShNRf" id="3_" role="37wK5m">
            <uo k="s:originTrace" v="n:4684164116368419495" />
            <node concept="1pGfFk" id="3A" role="2ShVmc">
              <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
              <uo k="s:originTrace" v="n:4684164116368419495" />
              <node concept="Xl_RD" id="3B" role="37wK5m">
                <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590371(jetbrains.mps.baseLanguage.classifiers.typesystem)" />
                <uo k="s:originTrace" v="n:4684164116368419495" />
              </node>
              <node concept="Xl_RD" id="3C" role="37wK5m">
                <property role="Xl_RC" value="4684164116368419495" />
                <uo k="s:originTrace" v="n:4684164116368419495" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="3y" role="3clF45">
        <uo k="s:originTrace" v="n:4684164116368419495" />
      </node>
      <node concept="3Tm1VV" id="3z" role="1B3o_S">
        <uo k="s:originTrace" v="n:4684164116368419495" />
      </node>
    </node>
    <node concept="3clFb_" id="3s" role="jymVt">
      <property role="TrG5h" value="getDescription" />
      <uo k="s:originTrace" v="n:4684164116368419495" />
      <node concept="3Tm1VV" id="3D" role="1B3o_S">
        <uo k="s:originTrace" v="n:4684164116368419495" />
      </node>
      <node concept="3clFbS" id="3E" role="3clF47">
        <uo k="s:originTrace" v="n:4684164116368422131" />
        <node concept="3clFbF" id="3H" role="3cqZAp">
          <uo k="s:originTrace" v="n:4684164116368422540" />
          <node concept="Xl_RD" id="3I" role="3clFbG">
            <property role="Xl_RC" value="Make Method Private" />
            <uo k="s:originTrace" v="n:4684164116368422539" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3F" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:4684164116368419495" />
        <node concept="3uibUv" id="3J" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:4684164116368419495" />
        </node>
      </node>
      <node concept="17QB3L" id="3G" role="3clF45">
        <uo k="s:originTrace" v="n:4684164116368419495" />
      </node>
    </node>
    <node concept="3clFb_" id="3t" role="jymVt">
      <property role="TrG5h" value="execute" />
      <uo k="s:originTrace" v="n:4684164116368419495" />
      <node concept="3clFbS" id="3K" role="3clF47">
        <uo k="s:originTrace" v="n:4684164116368419497" />
        <node concept="3clFbF" id="3O" role="3cqZAp">
          <uo k="s:originTrace" v="n:4684164116368419498" />
          <node concept="37vLTI" id="3P" role="3clFbG">
            <uo k="s:originTrace" v="n:4684164116368419499" />
            <node concept="2ShNRf" id="3Q" role="37vLTx">
              <uo k="s:originTrace" v="n:4684164116368419500" />
              <node concept="3zrR0B" id="3S" role="2ShVmc">
                <uo k="s:originTrace" v="n:4684164116368419501" />
                <node concept="3Tqbb2" id="3T" role="3zrR0E">
                  <ref role="ehGHo" to="tpee:gFTm6Wc" resolve="PrivateVisibility" />
                  <uo k="s:originTrace" v="n:4684164116368419502" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="3R" role="37vLTJ">
              <uo k="s:originTrace" v="n:4684164116368419503" />
              <node concept="1PxgMI" id="3U" role="2Oq$k0">
                <property role="1BlNFB" value="true" />
                <uo k="s:originTrace" v="n:4684164116368419504" />
                <node concept="chp4Y" id="3W" role="3oSUPX">
                  <ref role="cht4Q" to="tp4f:hyXrIf3" resolve="DefaultClassifierMethodDeclaration" />
                  <uo k="s:originTrace" v="n:4684164116368419505" />
                </node>
                <node concept="Q6c8r" id="3X" role="1m5AlR">
                  <uo k="s:originTrace" v="n:4684164116368419506" />
                </node>
              </node>
              <node concept="3TrEf2" id="3V" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:h9B3oxE" resolve="visibility" />
                <uo k="s:originTrace" v="n:4684164116368419507" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="3L" role="3clF45">
        <uo k="s:originTrace" v="n:4684164116368419495" />
      </node>
      <node concept="3Tm1VV" id="3M" role="1B3o_S">
        <uo k="s:originTrace" v="n:4684164116368419495" />
      </node>
      <node concept="37vLTG" id="3N" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:4684164116368419495" />
        <node concept="3uibUv" id="3Y" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:4684164116368419495" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="3u" role="1B3o_S">
      <uo k="s:originTrace" v="n:4684164116368419495" />
    </node>
    <node concept="3uibUv" id="3v" role="1zkMxy">
      <ref role="3uigEE" to="2gg1:~QuickFix_Runtime" resolve="QuickFix_Runtime" />
      <uo k="s:originTrace" v="n:4684164116368419495" />
    </node>
    <node concept="6wLe0" id="3w" role="lGtFl">
      <property role="6wLej" value="4684164116368419495" />
      <property role="6wLeW" value="jetbrains.mps.baseLanguage.classifiers.typesystem" />
      <uo k="s:originTrace" v="n:4684164116368419495" />
    </node>
  </node>
  <node concept="312cEu" id="3Z">
    <property role="TrG5h" value="TypesystemDescriptor" />
    <node concept="3clFbW" id="40" role="jymVt">
      <node concept="3clFbS" id="43" role="3clF47">
        <node concept="9aQIb" id="46" role="3cqZAp">
          <node concept="3clFbS" id="4f" role="9aQI4">
            <node concept="3cpWs8" id="4g" role="3cqZAp">
              <node concept="3cpWsn" id="4i" role="3cpWs9">
                <property role="TrG5h" value="inferenceRule" />
                <node concept="2ShNRf" id="4j" role="33vP2m">
                  <node concept="1pGfFk" id="4l" role="2ShVmc">
                    <ref role="37wK5l" node="da" resolve="typeof_DefaultClassifierFieldAccessOperation_InferenceRule" />
                  </node>
                </node>
                <node concept="3uibUv" id="4k" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4h" role="3cqZAp">
              <node concept="2OqwBi" id="4m" role="3clFbG">
                <node concept="liA8E" id="4n" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="4p" role="37wK5m">
                    <ref role="3cqZAo" node="4i" resolve="inferenceRule" />
                  </node>
                </node>
                <node concept="2OqwBi" id="4o" role="2Oq$k0">
                  <node concept="Xjq3P" id="4q" role="2Oq$k0" />
                  <node concept="2OwXpG" id="4r" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myInferenceRules" resolve="myInferenceRules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="47" role="3cqZAp">
          <node concept="3clFbS" id="4s" role="9aQI4">
            <node concept="3cpWs8" id="4t" role="3cqZAp">
              <node concept="3cpWsn" id="4v" role="3cpWs9">
                <property role="TrG5h" value="inferenceRule" />
                <node concept="2ShNRf" id="4w" role="33vP2m">
                  <node concept="1pGfFk" id="4y" role="2ShVmc">
                    <ref role="37wK5l" node="eB" resolve="typeof_DefaultMethodCallOperation_InferenceRule" />
                  </node>
                </node>
                <node concept="3uibUv" id="4x" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4u" role="3cqZAp">
              <node concept="2OqwBi" id="4z" role="3clFbG">
                <node concept="liA8E" id="4$" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="4A" role="37wK5m">
                    <ref role="3cqZAo" node="4v" resolve="inferenceRule" />
                  </node>
                </node>
                <node concept="2OqwBi" id="4_" role="2Oq$k0">
                  <node concept="Xjq3P" id="4B" role="2Oq$k0" />
                  <node concept="2OwXpG" id="4C" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myInferenceRules" resolve="myInferenceRules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="48" role="3cqZAp">
          <node concept="3clFbS" id="4D" role="9aQI4">
            <node concept="3cpWs8" id="4E" role="3cqZAp">
              <node concept="3cpWsn" id="4G" role="3cpWs9">
                <property role="TrG5h" value="inferenceRule" />
                <node concept="2ShNRf" id="4H" role="33vP2m">
                  <node concept="1pGfFk" id="4J" role="2ShVmc">
                    <ref role="37wK5l" node="jr" resolve="typeof_SuperClassifierExpresson_InferenceRule" />
                  </node>
                </node>
                <node concept="3uibUv" id="4I" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4F" role="3cqZAp">
              <node concept="2OqwBi" id="4K" role="3clFbG">
                <node concept="liA8E" id="4L" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="4N" role="37wK5m">
                    <ref role="3cqZAo" node="4G" resolve="inferenceRule" />
                  </node>
                </node>
                <node concept="2OqwBi" id="4M" role="2Oq$k0">
                  <node concept="Xjq3P" id="4O" role="2Oq$k0" />
                  <node concept="2OwXpG" id="4P" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myInferenceRules" resolve="myInferenceRules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="49" role="3cqZAp">
          <node concept="3clFbS" id="4Q" role="9aQI4">
            <node concept="3cpWs8" id="4R" role="3cqZAp">
              <node concept="3cpWsn" id="4T" role="3cpWs9">
                <property role="TrG5h" value="inferenceRule" />
                <node concept="2ShNRf" id="4U" role="33vP2m">
                  <node concept="1pGfFk" id="4W" role="2ShVmc">
                    <ref role="37wK5l" node="lo" resolve="typeof_ThisClassifierExpresson_InferenceRule" />
                  </node>
                </node>
                <node concept="3uibUv" id="4V" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4S" role="3cqZAp">
              <node concept="2OqwBi" id="4X" role="3clFbG">
                <node concept="liA8E" id="4Y" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="50" role="37wK5m">
                    <ref role="3cqZAo" node="4T" resolve="inferenceRule" />
                  </node>
                </node>
                <node concept="2OqwBi" id="4Z" role="2Oq$k0">
                  <node concept="Xjq3P" id="51" role="2Oq$k0" />
                  <node concept="2OwXpG" id="52" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myInferenceRules" resolve="myInferenceRules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="4a" role="3cqZAp">
          <node concept="3clFbS" id="53" role="9aQI4">
            <node concept="3cpWs8" id="54" role="3cqZAp">
              <node concept="3cpWsn" id="56" role="3cpWs9">
                <property role="TrG5h" value="nonTypesystemRule" />
                <node concept="3uibUv" id="57" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="58" role="33vP2m">
                  <node concept="1pGfFk" id="59" role="2ShVmc">
                    <ref role="37wK5l" node="65" resolve="check_DefaultClassifierFieldDeclarationVisibility_NonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="55" role="3cqZAp">
              <node concept="2OqwBi" id="5a" role="3clFbG">
                <node concept="2OqwBi" id="5b" role="2Oq$k0">
                  <node concept="Xjq3P" id="5d" role="2Oq$k0" />
                  <node concept="2OwXpG" id="5e" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myNonTypesystemRules" resolve="myNonTypesystemRules" />
                  </node>
                </node>
                <node concept="liA8E" id="5c" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="5f" role="37wK5m">
                    <ref role="3cqZAo" node="56" resolve="nonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="4b" role="3cqZAp">
          <node concept="3clFbS" id="5g" role="9aQI4">
            <node concept="3cpWs8" id="5h" role="3cqZAp">
              <node concept="3cpWsn" id="5j" role="3cpWs9">
                <property role="TrG5h" value="nonTypesystemRule" />
                <node concept="3uibUv" id="5k" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="5l" role="33vP2m">
                  <node concept="1pGfFk" id="5m" role="2ShVmc">
                    <ref role="37wK5l" node="7L" resolve="check_DefaultClassifierFieldNeverUsed_NonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5i" role="3cqZAp">
              <node concept="2OqwBi" id="5n" role="3clFbG">
                <node concept="2OqwBi" id="5o" role="2Oq$k0">
                  <node concept="Xjq3P" id="5q" role="2Oq$k0" />
                  <node concept="2OwXpG" id="5r" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myNonTypesystemRules" resolve="myNonTypesystemRules" />
                  </node>
                </node>
                <node concept="liA8E" id="5p" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="5s" role="37wK5m">
                    <ref role="3cqZAo" node="5j" resolve="nonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="4c" role="3cqZAp">
          <node concept="3clFbS" id="5t" role="9aQI4">
            <node concept="3cpWs8" id="5u" role="3cqZAp">
              <node concept="3cpWsn" id="5w" role="3cpWs9">
                <property role="TrG5h" value="nonTypesystemRule" />
                <node concept="3uibUv" id="5x" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="5y" role="33vP2m">
                  <node concept="1pGfFk" id="5z" role="2ShVmc">
                    <ref role="37wK5l" node="9N" resolve="check_DefaultClassifierMethodDeclarationVisibility_NonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5v" role="3cqZAp">
              <node concept="2OqwBi" id="5$" role="3clFbG">
                <node concept="2OqwBi" id="5_" role="2Oq$k0">
                  <node concept="Xjq3P" id="5B" role="2Oq$k0" />
                  <node concept="2OwXpG" id="5C" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myNonTypesystemRules" resolve="myNonTypesystemRules" />
                  </node>
                </node>
                <node concept="liA8E" id="5A" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="5D" role="37wK5m">
                    <ref role="3cqZAo" node="5w" resolve="nonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="4d" role="3cqZAp">
          <node concept="3clFbS" id="5E" role="9aQI4">
            <node concept="3cpWs8" id="5F" role="3cqZAp">
              <node concept="3cpWsn" id="5H" role="3cpWs9">
                <property role="TrG5h" value="nonTypesystemRule" />
                <node concept="3uibUv" id="5I" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="5J" role="33vP2m">
                  <node concept="1pGfFk" id="5K" role="2ShVmc">
                    <ref role="37wK5l" node="bv" resolve="check_IMemberOperation_NonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5G" role="3cqZAp">
              <node concept="2OqwBi" id="5L" role="3clFbG">
                <node concept="2OqwBi" id="5M" role="2Oq$k0">
                  <node concept="Xjq3P" id="5O" role="2Oq$k0" />
                  <node concept="2OwXpG" id="5P" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myNonTypesystemRules" resolve="myNonTypesystemRules" />
                  </node>
                </node>
                <node concept="liA8E" id="5N" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="5Q" role="37wK5m">
                    <ref role="3cqZAo" node="5H" resolve="nonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="4e" role="3cqZAp">
          <node concept="3clFbS" id="5R" role="9aQI4">
            <node concept="3cpWs8" id="5S" role="3cqZAp">
              <node concept="3cpWsn" id="5U" role="3cpWs9">
                <property role="TrG5h" value="subtypingRule" />
                <node concept="3uibUv" id="5V" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~SubtypingRule_Runtime" resolve="SubtypingRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="5W" role="33vP2m">
                  <node concept="1pGfFk" id="5X" role="2ShVmc">
                    <ref role="37wK5l" node="1" resolve="BaseClassifierType_subtypeOf_Object_SubtypingRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5T" role="3cqZAp">
              <node concept="2OqwBi" id="5Y" role="3clFbG">
                <node concept="2OqwBi" id="5Z" role="2Oq$k0">
                  <node concept="2OwXpG" id="61" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.mySubtypingRules" resolve="mySubtypingRules" />
                  </node>
                  <node concept="Xjq3P" id="62" role="2Oq$k0" />
                </node>
                <node concept="liA8E" id="60" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="63" role="37wK5m">
                    <ref role="3cqZAo" node="5U" resolve="subtypingRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="44" role="1B3o_S" />
      <node concept="3cqZAl" id="45" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="41" role="1B3o_S" />
    <node concept="3uibUv" id="42" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~BaseHelginsDescriptor" resolve="BaseHelginsDescriptor" />
    </node>
  </node>
  <node concept="312cEu" id="64">
    <property role="TrG5h" value="check_DefaultClassifierFieldDeclarationVisibility_NonTypesystemRule" />
    <uo k="s:originTrace" v="n:4684164116369027996" />
    <node concept="3clFbW" id="65" role="jymVt">
      <uo k="s:originTrace" v="n:4684164116369027996" />
      <node concept="3clFbS" id="6d" role="3clF47">
        <uo k="s:originTrace" v="n:4684164116369027996" />
      </node>
      <node concept="3Tm1VV" id="6e" role="1B3o_S">
        <uo k="s:originTrace" v="n:4684164116369027996" />
      </node>
      <node concept="3cqZAl" id="6f" role="3clF45">
        <uo k="s:originTrace" v="n:4684164116369027996" />
      </node>
    </node>
    <node concept="3clFb_" id="66" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:4684164116369027996" />
      <node concept="3cqZAl" id="6g" role="3clF45">
        <uo k="s:originTrace" v="n:4684164116369027996" />
      </node>
      <node concept="37vLTG" id="6h" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="member" />
        <uo k="s:originTrace" v="n:4684164116369027996" />
        <node concept="3Tqbb2" id="6m" role="1tU5fm">
          <uo k="s:originTrace" v="n:4684164116369027996" />
        </node>
      </node>
      <node concept="37vLTG" id="6i" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:4684164116369027996" />
        <node concept="3uibUv" id="6n" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:4684164116369027996" />
        </node>
      </node>
      <node concept="37vLTG" id="6j" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:4684164116369027996" />
        <node concept="3uibUv" id="6o" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:4684164116369027996" />
        </node>
      </node>
      <node concept="3clFbS" id="6k" role="3clF47">
        <uo k="s:originTrace" v="n:4684164116369027997" />
        <node concept="3cpWs8" id="6p" role="3cqZAp">
          <uo k="s:originTrace" v="n:4684164116369027998" />
          <node concept="3cpWsn" id="6r" role="3cpWs9">
            <property role="TrG5h" value="parent" />
            <uo k="s:originTrace" v="n:4684164116369027999" />
            <node concept="3Tqbb2" id="6s" role="1tU5fm">
              <ref role="ehGHo" to="tp4f:hyWqMFP" resolve="IClassifier" />
              <uo k="s:originTrace" v="n:4684164116369028000" />
            </node>
            <node concept="1PxgMI" id="6t" role="33vP2m">
              <property role="1BlNFB" value="true" />
              <uo k="s:originTrace" v="n:4684164116369028001" />
              <node concept="chp4Y" id="6u" role="3oSUPX">
                <ref role="cht4Q" to="tp4f:hyWqMFP" resolve="IClassifier" />
                <uo k="s:originTrace" v="n:4684164116369028002" />
              </node>
              <node concept="2OqwBi" id="6v" role="1m5AlR">
                <uo k="s:originTrace" v="n:4684164116369028003" />
                <node concept="37vLTw" id="6w" role="2Oq$k0">
                  <ref role="3cqZAo" node="6h" resolve="member" />
                  <uo k="s:originTrace" v="n:4684164116369028004" />
                </node>
                <node concept="1mfA1w" id="6x" role="2OqNvi">
                  <uo k="s:originTrace" v="n:4684164116369028005" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6q" role="3cqZAp">
          <uo k="s:originTrace" v="n:4684164116369028006" />
          <node concept="3clFbS" id="6y" role="3clFbx">
            <uo k="s:originTrace" v="n:4684164116369028007" />
            <node concept="9aQIb" id="6$" role="3cqZAp">
              <uo k="s:originTrace" v="n:4684164116369028014" />
              <node concept="3clFbS" id="6_" role="9aQI4">
                <node concept="3cpWs8" id="6B" role="3cqZAp">
                  <node concept="3cpWsn" id="6E" role="3cpWs9">
                    <property role="TrG5h" value="errorTarget" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3uibUv" id="6F" role="1tU5fm">
                      <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                    </node>
                    <node concept="2ShNRf" id="6G" role="33vP2m">
                      <node concept="1pGfFk" id="6H" role="2ShVmc">
                        <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="6C" role="3cqZAp">
                  <node concept="3cpWsn" id="6I" role="3cpWs9">
                    <property role="TrG5h" value="_reporter_2309309498" />
                    <node concept="3uibUv" id="6J" role="1tU5fm">
                      <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                    </node>
                    <node concept="2OqwBi" id="6K" role="33vP2m">
                      <node concept="3VmV3z" id="6L" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="6N" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="6M" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                        <node concept="37vLTw" id="6O" role="37wK5m">
                          <ref role="3cqZAo" node="6h" resolve="member" />
                          <uo k="s:originTrace" v="n:4684164116369028017" />
                        </node>
                        <node concept="Xl_RD" id="6P" role="37wK5m">
                          <property role="Xl_RC" value="Private visibility required" />
                          <uo k="s:originTrace" v="n:4684164116369028016" />
                        </node>
                        <node concept="Xl_RD" id="6Q" role="37wK5m">
                          <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590371(jetbrains.mps.baseLanguage.classifiers.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="6R" role="37wK5m">
                          <property role="Xl_RC" value="4684164116369028014" />
                        </node>
                        <node concept="10Nm6u" id="6S" role="37wK5m" />
                        <node concept="37vLTw" id="6T" role="37wK5m">
                          <ref role="3cqZAo" node="6E" resolve="errorTarget" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="6D" role="3cqZAp">
                  <node concept="3clFbS" id="6U" role="9aQI4">
                    <node concept="3cpWs8" id="6V" role="3cqZAp">
                      <node concept="3cpWsn" id="6X" role="3cpWs9">
                        <property role="TrG5h" value="intentionProvider" />
                        <node concept="3uibUv" id="6Y" role="1tU5fm">
                          <ref role="3uigEE" to="2gg1:~BaseQuickFixProvider" resolve="BaseQuickFixProvider" />
                        </node>
                        <node concept="2ShNRf" id="6Z" role="33vP2m">
                          <node concept="1pGfFk" id="70" role="2ShVmc">
                            <ref role="37wK5l" to="2gg1:~BaseQuickFixProvider.&lt;init&gt;(java.lang.String,java.lang.String,boolean)" resolve="BaseQuickFixProvider" />
                            <node concept="Xl_RD" id="71" role="37wK5m">
                              <property role="Xl_RC" value="jetbrains.mps.baseLanguage.classifiers.typesystem.MakeDefaultClassifierFieldDeclarationPrivate_QuickFix" />
                            </node>
                            <node concept="Xl_RD" id="72" role="37wK5m">
                              <property role="Xl_RC" value="4684164116369028015" />
                            </node>
                            <node concept="3clFbT" id="73" role="37wK5m" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="6W" role="3cqZAp">
                      <node concept="2OqwBi" id="74" role="3clFbG">
                        <node concept="37vLTw" id="75" role="2Oq$k0">
                          <ref role="3cqZAo" node="6I" resolve="_reporter_2309309498" />
                        </node>
                        <node concept="liA8E" id="76" role="2OqNvi">
                          <ref role="37wK5l" to="2gg1:~IErrorReporter.addIntentionProvider(jetbrains.mps.errors.QuickFixProvider)" resolve="addIntentionProvider" />
                          <node concept="37vLTw" id="77" role="37wK5m">
                            <ref role="3cqZAo" node="6X" resolve="intentionProvider" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="6wLe0" id="6A" role="lGtFl">
                <property role="6wLej" value="4684164116369028014" />
                <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590371(jetbrains.mps.baseLanguage.classifiers.typesystem)" />
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="6z" role="3clFbw">
            <uo k="s:originTrace" v="n:4684164116369028033" />
            <node concept="2OqwBi" id="78" role="3uHU7B">
              <uo k="s:originTrace" v="n:4684164116369028034" />
              <node concept="1PxgMI" id="7a" role="2Oq$k0">
                <property role="1BlNFB" value="true" />
                <uo k="s:originTrace" v="n:4684164116369028035" />
                <node concept="chp4Y" id="7c" role="3oSUPX">
                  <ref role="cht4Q" to="tp4f:hyWqMFP" resolve="IClassifier" />
                  <uo k="s:originTrace" v="n:4684164116369028036" />
                </node>
                <node concept="37vLTw" id="7d" role="1m5AlR">
                  <ref role="3cqZAo" node="6r" resolve="parent" />
                  <uo k="s:originTrace" v="n:4684164116369028037" />
                </node>
              </node>
              <node concept="3zqWPK" id="7b" role="2OqNvi">
                <ref role="37wK5l" to="tp4h:441vB8LNFML" resolve="requiresAllFieldMembersPrivate" />
                <uo k="s:originTrace" v="n:8085146484218840085" />
              </node>
            </node>
            <node concept="3fqX7Q" id="79" role="3uHU7w">
              <uo k="s:originTrace" v="n:4684164116369028039" />
              <node concept="2OqwBi" id="7e" role="3fr31v">
                <uo k="s:originTrace" v="n:4684164116369028040" />
                <node concept="2OqwBi" id="7f" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:4684164116369028041" />
                  <node concept="37vLTw" id="7h" role="2Oq$k0">
                    <ref role="3cqZAo" node="6h" resolve="member" />
                    <uo k="s:originTrace" v="n:4684164116369028042" />
                  </node>
                  <node concept="3zqWPK" id="7i" role="2OqNvi">
                    <ref role="37wK5l" to="tp4h:hEwIBC5" resolve="getVisiblity" />
                    <uo k="s:originTrace" v="n:8085146484218840087" />
                  </node>
                </node>
                <node concept="1mIQ4w" id="7g" role="2OqNvi">
                  <uo k="s:originTrace" v="n:4684164116369028044" />
                  <node concept="chp4Y" id="7j" role="cj9EA">
                    <ref role="cht4Q" to="tpee:gFTm6Wc" resolve="PrivateVisibility" />
                    <uo k="s:originTrace" v="n:4684164116369028045" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6l" role="1B3o_S">
        <uo k="s:originTrace" v="n:4684164116369027996" />
      </node>
    </node>
    <node concept="3clFb_" id="67" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:4684164116369027996" />
      <node concept="3bZ5Sz" id="7k" role="3clF45">
        <uo k="s:originTrace" v="n:4684164116369027996" />
      </node>
      <node concept="3clFbS" id="7l" role="3clF47">
        <uo k="s:originTrace" v="n:4684164116369027996" />
        <node concept="3cpWs6" id="7n" role="3cqZAp">
          <uo k="s:originTrace" v="n:4684164116369027996" />
          <node concept="35c_gC" id="7o" role="3cqZAk">
            <ref role="35c_gD" to="tp4f:hEBZ0aj" resolve="DefaultClassifierFieldDeclaration" />
            <uo k="s:originTrace" v="n:4684164116369027996" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7m" role="1B3o_S">
        <uo k="s:originTrace" v="n:4684164116369027996" />
      </node>
    </node>
    <node concept="3clFb_" id="68" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:4684164116369027996" />
      <node concept="37vLTG" id="7p" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:4684164116369027996" />
        <node concept="3Tqbb2" id="7t" role="1tU5fm">
          <uo k="s:originTrace" v="n:4684164116369027996" />
        </node>
      </node>
      <node concept="3clFbS" id="7q" role="3clF47">
        <uo k="s:originTrace" v="n:4684164116369027996" />
        <node concept="9aQIb" id="7u" role="3cqZAp">
          <uo k="s:originTrace" v="n:4684164116369027996" />
          <node concept="3clFbS" id="7v" role="9aQI4">
            <uo k="s:originTrace" v="n:4684164116369027996" />
            <node concept="3cpWs6" id="7w" role="3cqZAp">
              <uo k="s:originTrace" v="n:4684164116369027996" />
              <node concept="2ShNRf" id="7x" role="3cqZAk">
                <uo k="s:originTrace" v="n:4684164116369027996" />
                <node concept="1pGfFk" id="7y" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:4684164116369027996" />
                  <node concept="2OqwBi" id="7z" role="37wK5m">
                    <uo k="s:originTrace" v="n:4684164116369027996" />
                    <node concept="2OqwBi" id="7_" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:4684164116369027996" />
                      <node concept="liA8E" id="7B" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:4684164116369027996" />
                      </node>
                      <node concept="2JrnkZ" id="7C" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:4684164116369027996" />
                        <node concept="37vLTw" id="7D" role="2JrQYb">
                          <ref role="3cqZAo" node="7p" resolve="argument" />
                          <uo k="s:originTrace" v="n:4684164116369027996" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="7A" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:4684164116369027996" />
                      <node concept="1rXfSq" id="7E" role="37wK5m">
                        <ref role="37wK5l" node="67" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:4684164116369027996" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="7$" role="37wK5m">
                    <uo k="s:originTrace" v="n:4684164116369027996" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7r" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:4684164116369027996" />
      </node>
      <node concept="3Tm1VV" id="7s" role="1B3o_S">
        <uo k="s:originTrace" v="n:4684164116369027996" />
      </node>
    </node>
    <node concept="3clFb_" id="69" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:4684164116369027996" />
      <node concept="3clFbS" id="7F" role="3clF47">
        <uo k="s:originTrace" v="n:4684164116369027996" />
        <node concept="3cpWs6" id="7I" role="3cqZAp">
          <uo k="s:originTrace" v="n:4684164116369027996" />
          <node concept="3clFbT" id="7J" role="3cqZAk">
            <uo k="s:originTrace" v="n:4684164116369027996" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="7G" role="3clF45">
        <uo k="s:originTrace" v="n:4684164116369027996" />
      </node>
      <node concept="3Tm1VV" id="7H" role="1B3o_S">
        <uo k="s:originTrace" v="n:4684164116369027996" />
      </node>
    </node>
    <node concept="3uibUv" id="6a" role="EKbjA">
      <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:4684164116369027996" />
    </node>
    <node concept="3uibUv" id="6b" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractNonTypesystemRule_Runtime" resolve="AbstractNonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:4684164116369027996" />
    </node>
    <node concept="3Tm1VV" id="6c" role="1B3o_S">
      <uo k="s:originTrace" v="n:4684164116369027996" />
    </node>
  </node>
  <node concept="312cEu" id="7K">
    <property role="3GE5qa" value="Fields" />
    <property role="TrG5h" value="check_DefaultClassifierFieldNeverUsed_NonTypesystemRule" />
    <uo k="s:originTrace" v="n:7168632168530717836" />
    <node concept="3clFbW" id="7L" role="jymVt">
      <uo k="s:originTrace" v="n:7168632168530717836" />
      <node concept="3clFbS" id="7U" role="3clF47">
        <uo k="s:originTrace" v="n:7168632168530717836" />
      </node>
      <node concept="3Tm1VV" id="7V" role="1B3o_S">
        <uo k="s:originTrace" v="n:7168632168530717836" />
      </node>
      <node concept="3cqZAl" id="7W" role="3clF45">
        <uo k="s:originTrace" v="n:7168632168530717836" />
      </node>
    </node>
    <node concept="3clFb_" id="7M" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:7168632168530717836" />
      <node concept="10P_77" id="7X" role="3clF45">
        <uo k="s:originTrace" v="n:7168632168530717836" />
      </node>
      <node concept="3Tm1VV" id="7Y" role="1B3o_S">
        <uo k="s:originTrace" v="n:7168632168530717836" />
      </node>
      <node concept="3clFbS" id="7Z" role="3clF47">
        <uo k="s:originTrace" v="n:7168632168530717836" />
        <node concept="3clFbJ" id="81" role="3cqZAp">
          <uo k="s:originTrace" v="n:7168632168530717836" />
          <node concept="2ZW3vV" id="83" role="3clFbw">
            <uo k="s:originTrace" v="n:7168632168530717836" />
            <node concept="3uibUv" id="85" role="2ZW6by">
              <ref role="3uigEE" to="d3ym:aIw" resolve="check_FieldIsNeverUsedOrAssigned_NonTypesystemRule" />
              <uo k="s:originTrace" v="n:7168632168530717836" />
            </node>
            <node concept="37vLTw" id="86" role="2ZW6bz">
              <ref role="3cqZAo" node="80" resolve="rule" />
              <uo k="s:originTrace" v="n:7168632168530717836" />
            </node>
          </node>
          <node concept="3clFbS" id="84" role="3clFbx">
            <uo k="s:originTrace" v="n:7168632168530717836" />
            <node concept="3cpWs6" id="87" role="3cqZAp">
              <uo k="s:originTrace" v="n:7168632168530717836" />
              <node concept="3clFbT" id="88" role="3cqZAk">
                <property role="3clFbU" value="true" />
                <uo k="s:originTrace" v="n:7168632168530717836" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="82" role="3cqZAp">
          <uo k="s:originTrace" v="n:7168632168530717836" />
          <node concept="3clFbT" id="89" role="3cqZAk">
            <uo k="s:originTrace" v="n:7168632168530717836" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="80" role="3clF46">
        <property role="TrG5h" value="rule" />
        <uo k="s:originTrace" v="n:7168632168530717836" />
        <node concept="3uibUv" id="8a" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
          <uo k="s:originTrace" v="n:7168632168530717836" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="7N" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:7168632168530717836" />
      <node concept="3cqZAl" id="8b" role="3clF45">
        <uo k="s:originTrace" v="n:7168632168530717836" />
      </node>
      <node concept="37vLTG" id="8c" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="field" />
        <uo k="s:originTrace" v="n:7168632168530717836" />
        <node concept="3Tqbb2" id="8h" role="1tU5fm">
          <uo k="s:originTrace" v="n:7168632168530717836" />
        </node>
      </node>
      <node concept="37vLTG" id="8d" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:7168632168530717836" />
        <node concept="3uibUv" id="8i" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:7168632168530717836" />
        </node>
      </node>
      <node concept="37vLTG" id="8e" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:7168632168530717836" />
        <node concept="3uibUv" id="8j" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:7168632168530717836" />
        </node>
      </node>
      <node concept="3clFbS" id="8f" role="3clF47">
        <uo k="s:originTrace" v="n:7168632168530717837" />
        <node concept="3clFbJ" id="8k" role="3cqZAp">
          <uo k="s:originTrace" v="n:7168632168530719130" />
          <node concept="3clFbS" id="8l" role="3clFbx">
            <uo k="s:originTrace" v="n:7168632168530719132" />
            <node concept="3cpWs8" id="8n" role="3cqZAp">
              <uo k="s:originTrace" v="n:7970711249077251928" />
              <node concept="3cpWsn" id="8r" role="3cpWs9">
                <property role="TrG5h" value="memberOperations" />
                <uo k="s:originTrace" v="n:7970711249077251929" />
                <node concept="2I9FWS" id="8s" role="1tU5fm">
                  <ref role="2I9WkF" to="tp4f:hyWEnem" resolve="IMemberOperation" />
                  <uo k="s:originTrace" v="n:7970711249077251930" />
                </node>
                <node concept="3K4zz7" id="8t" role="33vP2m">
                  <uo k="s:originTrace" v="n:7938578788780216402" />
                  <node concept="2OqwBi" id="8u" role="3K4Cdx">
                    <uo k="s:originTrace" v="n:7938578788780222829" />
                    <node concept="2OqwBi" id="8x" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:7938578788780202082" />
                      <node concept="37vLTw" id="8z" role="2Oq$k0">
                        <ref role="3cqZAo" node="8c" resolve="field" />
                        <uo k="s:originTrace" v="n:7938578788780196893" />
                      </node>
                      <node concept="3TrEf2" id="8$" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpee:h9B3oxE" resolve="visibility" />
                        <uo k="s:originTrace" v="n:7938578788780209990" />
                      </node>
                    </node>
                    <node concept="3x8VRR" id="8y" role="2OqNvi">
                      <uo k="s:originTrace" v="n:7938578788780227864" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="8v" role="3K4E3e">
                    <uo k="s:originTrace" v="n:7970711249077251931" />
                    <node concept="2OqwBi" id="8_" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:7970711249077251932" />
                      <node concept="37vLTw" id="8B" role="2Oq$k0">
                        <ref role="3cqZAo" node="8c" resolve="field" />
                        <uo k="s:originTrace" v="n:7970711249077251933" />
                      </node>
                      <node concept="1mfA1w" id="8C" role="2OqNvi">
                        <uo k="s:originTrace" v="n:7970711249077251934" />
                      </node>
                    </node>
                    <node concept="2Rf3mk" id="8A" role="2OqNvi">
                      <uo k="s:originTrace" v="n:7970711249077251935" />
                      <node concept="1xMEDy" id="8D" role="1xVPHs">
                        <uo k="s:originTrace" v="n:7970711249077251936" />
                        <node concept="chp4Y" id="8E" role="ri$Ld">
                          <ref role="cht4Q" to="tp4f:hyWEnem" resolve="IMemberOperation" />
                          <uo k="s:originTrace" v="n:7970711249077251937" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="8w" role="3K4GZi">
                    <uo k="s:originTrace" v="n:7938578788780231903" />
                    <node concept="2OqwBi" id="8F" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:7938578788780231904" />
                      <node concept="37vLTw" id="8H" role="2Oq$k0">
                        <ref role="3cqZAo" node="8c" resolve="field" />
                        <uo k="s:originTrace" v="n:7938578788780231905" />
                      </node>
                      <node concept="I4A8Y" id="8I" role="2OqNvi">
                        <uo k="s:originTrace" v="n:7938578788780237878" />
                      </node>
                    </node>
                    <node concept="2SmgA7" id="8G" role="2OqNvi">
                      <uo k="s:originTrace" v="n:7938578788780242748" />
                      <node concept="chp4Y" id="8J" role="1dBWTz">
                        <ref role="cht4Q" to="tp4f:hyWEnem" resolve="IMemberOperation" />
                        <uo k="s:originTrace" v="n:7938578788780247311" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="8o" role="3cqZAp">
              <uo k="s:originTrace" v="n:7168632168530744117" />
              <node concept="1PaTwC" id="8K" role="1aUNEU">
                <uo k="s:originTrace" v="n:7168632168530744118" />
                <node concept="3oM_SD" id="8L" role="1PaTwD">
                  <property role="3oM_SC" value="DefaultClassifierFieldDeclaration" />
                  <uo k="s:originTrace" v="n:7168632168530744119" />
                </node>
                <node concept="3oM_SD" id="8M" role="1PaTwD">
                  <property role="3oM_SC" value="is" />
                  <uo k="s:originTrace" v="n:7168632168530744963" />
                </node>
                <node concept="3oM_SD" id="8N" role="1PaTwD">
                  <property role="3oM_SC" value="FieldDeclaration" />
                  <uo k="s:originTrace" v="n:7168632168530744965" />
                </node>
                <node concept="3oM_SD" id="8O" role="1PaTwD">
                  <property role="3oM_SC" value="+" />
                  <uo k="s:originTrace" v="n:7168632168530745218" />
                </node>
                <node concept="3oM_SD" id="8P" role="1PaTwD">
                  <property role="3oM_SC" value="IMember" />
                  <uo k="s:originTrace" v="n:7168632168530745219" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="8p" role="3cqZAp">
              <uo k="s:originTrace" v="n:7970711249077252086" />
              <node concept="3cpWsn" id="8Q" role="3cpWs9">
                <property role="TrG5h" value="references" />
                <uo k="s:originTrace" v="n:7970711249077252087" />
                <node concept="A3Dl8" id="8R" role="1tU5fm">
                  <uo k="s:originTrace" v="n:7970711249077252088" />
                  <node concept="3Tqbb2" id="8T" role="A3Ik2">
                    <ref role="ehGHo" to="tp4f:hyWEnem" resolve="IMemberOperation" />
                    <uo k="s:originTrace" v="n:7970711249077252089" />
                  </node>
                </node>
                <node concept="2OqwBi" id="8S" role="33vP2m">
                  <uo k="s:originTrace" v="n:7970711249077252090" />
                  <node concept="37vLTw" id="8U" role="2Oq$k0">
                    <ref role="3cqZAo" node="8r" resolve="memberOperations" />
                    <uo k="s:originTrace" v="n:4265636116363109133" />
                  </node>
                  <node concept="3zZkjj" id="8V" role="2OqNvi">
                    <uo k="s:originTrace" v="n:7970711249077252092" />
                    <node concept="1bVj0M" id="8W" role="23t8la">
                      <uo k="s:originTrace" v="n:7970711249077252093" />
                      <node concept="3clFbS" id="8X" role="1bW5cS">
                        <uo k="s:originTrace" v="n:7970711249077252094" />
                        <node concept="3clFbF" id="8Z" role="3cqZAp">
                          <uo k="s:originTrace" v="n:7970711249077252095" />
                          <node concept="3clFbC" id="90" role="3clFbG">
                            <uo k="s:originTrace" v="n:7970711249077252096" />
                            <node concept="37vLTw" id="91" role="3uHU7w">
                              <ref role="3cqZAo" node="8c" resolve="field" />
                              <uo k="s:originTrace" v="n:7168632168530749158" />
                            </node>
                            <node concept="2OqwBi" id="92" role="3uHU7B">
                              <uo k="s:originTrace" v="n:7970711249077252097" />
                              <node concept="37vLTw" id="93" role="2Oq$k0">
                                <ref role="3cqZAo" node="8Y" resolve="it" />
                                <uo k="s:originTrace" v="n:3021153905151398487" />
                              </node>
                              <node concept="3TrEf2" id="94" role="2OqNvi">
                                <ref role="3Tt5mk" to="tp4f:hyWH_vG" resolve="member" />
                                <uo k="s:originTrace" v="n:7970711249077252099" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="8Y" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <uo k="s:originTrace" v="n:6847626768367729885" />
                        <node concept="2jxLKc" id="95" role="1tU5fm">
                          <uo k="s:originTrace" v="n:6847626768367729886" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="8q" role="3cqZAp">
              <uo k="s:originTrace" v="n:7581428506283755723" />
              <node concept="2YIFZM" id="96" role="3clFbG">
                <ref role="37wK5l" to="tpeh:6$QDgVJ44xu" resolve="checkField" />
                <ref role="1Pybhc" to="tpeh:2FeVmOilmhN" resolve="VariableReferenceUtil" />
                <uo k="s:originTrace" v="n:7581428506283755725" />
                <node concept="3VmV3z" id="97" role="37wK5m">
                  <property role="3VnrPo" value="typeCheckingContext" />
                  <node concept="3uibUv" id="9a" role="3Vn4Tt">
                    <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                  </node>
                </node>
                <node concept="37vLTw" id="98" role="37wK5m">
                  <ref role="3cqZAo" node="8c" resolve="field" />
                  <uo k="s:originTrace" v="n:7581428506283755726" />
                </node>
                <node concept="37vLTw" id="99" role="37wK5m">
                  <ref role="3cqZAo" node="8Q" resolve="references" />
                  <uo k="s:originTrace" v="n:4265636116363096038" />
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="8m" role="3clFbw">
            <uo k="s:originTrace" v="n:7938578788780184783" />
            <node concept="2OqwBi" id="9b" role="3uHU7w">
              <uo k="s:originTrace" v="n:1239631790214" />
              <node concept="2OqwBi" id="9d" role="2Oq$k0">
                <uo k="s:originTrace" v="n:1239631762406" />
                <node concept="37vLTw" id="9f" role="2Oq$k0">
                  <ref role="3cqZAo" node="8c" resolve="field" />
                  <uo k="s:originTrace" v="n:1239631761405" />
                </node>
                <node concept="3TrEf2" id="9g" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:h9B3oxE" resolve="visibility" />
                  <uo k="s:originTrace" v="n:1239631785672" />
                </node>
              </node>
              <node concept="1mIQ4w" id="9e" role="2OqNvi">
                <uo k="s:originTrace" v="n:1239631791779" />
                <node concept="chp4Y" id="9h" role="cj9EA">
                  <ref role="cht4Q" to="tpee:gFTm6Wc" resolve="PrivateVisibility" />
                  <uo k="s:originTrace" v="n:1239631797692" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="9c" role="3uHU7B">
              <uo k="s:originTrace" v="n:7938578788780188630" />
              <node concept="2OqwBi" id="9i" role="2Oq$k0">
                <uo k="s:originTrace" v="n:7938578788780188631" />
                <node concept="37vLTw" id="9k" role="2Oq$k0">
                  <ref role="3cqZAo" node="8c" resolve="field" />
                  <uo k="s:originTrace" v="n:7938578788780188632" />
                </node>
                <node concept="3TrEf2" id="9l" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:h9B3oxE" resolve="visibility" />
                  <uo k="s:originTrace" v="n:7938578788780188633" />
                </node>
              </node>
              <node concept="3w_OXm" id="9j" role="2OqNvi">
                <uo k="s:originTrace" v="n:7938578788780188634" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="8g" role="1B3o_S">
        <uo k="s:originTrace" v="n:7168632168530717836" />
      </node>
    </node>
    <node concept="3clFb_" id="7O" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:7168632168530717836" />
      <node concept="3bZ5Sz" id="9m" role="3clF45">
        <uo k="s:originTrace" v="n:7168632168530717836" />
      </node>
      <node concept="3clFbS" id="9n" role="3clF47">
        <uo k="s:originTrace" v="n:7168632168530717836" />
        <node concept="3cpWs6" id="9p" role="3cqZAp">
          <uo k="s:originTrace" v="n:7168632168530717836" />
          <node concept="35c_gC" id="9q" role="3cqZAk">
            <ref role="35c_gD" to="tp4f:hEBZ0aj" resolve="DefaultClassifierFieldDeclaration" />
            <uo k="s:originTrace" v="n:7168632168530717836" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="9o" role="1B3o_S">
        <uo k="s:originTrace" v="n:7168632168530717836" />
      </node>
    </node>
    <node concept="3clFb_" id="7P" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:7168632168530717836" />
      <node concept="37vLTG" id="9r" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:7168632168530717836" />
        <node concept="3Tqbb2" id="9v" role="1tU5fm">
          <uo k="s:originTrace" v="n:7168632168530717836" />
        </node>
      </node>
      <node concept="3clFbS" id="9s" role="3clF47">
        <uo k="s:originTrace" v="n:7168632168530717836" />
        <node concept="9aQIb" id="9w" role="3cqZAp">
          <uo k="s:originTrace" v="n:7168632168530717836" />
          <node concept="3clFbS" id="9x" role="9aQI4">
            <uo k="s:originTrace" v="n:7168632168530717836" />
            <node concept="3cpWs6" id="9y" role="3cqZAp">
              <uo k="s:originTrace" v="n:7168632168530717836" />
              <node concept="2ShNRf" id="9z" role="3cqZAk">
                <uo k="s:originTrace" v="n:7168632168530717836" />
                <node concept="1pGfFk" id="9$" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:7168632168530717836" />
                  <node concept="2OqwBi" id="9_" role="37wK5m">
                    <uo k="s:originTrace" v="n:7168632168530717836" />
                    <node concept="2OqwBi" id="9B" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:7168632168530717836" />
                      <node concept="liA8E" id="9D" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:7168632168530717836" />
                      </node>
                      <node concept="2JrnkZ" id="9E" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:7168632168530717836" />
                        <node concept="37vLTw" id="9F" role="2JrQYb">
                          <ref role="3cqZAo" node="9r" resolve="argument" />
                          <uo k="s:originTrace" v="n:7168632168530717836" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="9C" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:7168632168530717836" />
                      <node concept="1rXfSq" id="9G" role="37wK5m">
                        <ref role="37wK5l" node="7O" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:7168632168530717836" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="9A" role="37wK5m">
                    <uo k="s:originTrace" v="n:7168632168530717836" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="9t" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:7168632168530717836" />
      </node>
      <node concept="3Tm1VV" id="9u" role="1B3o_S">
        <uo k="s:originTrace" v="n:7168632168530717836" />
      </node>
    </node>
    <node concept="3clFb_" id="7Q" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:7168632168530717836" />
      <node concept="3clFbS" id="9H" role="3clF47">
        <uo k="s:originTrace" v="n:7168632168530717836" />
        <node concept="3cpWs6" id="9K" role="3cqZAp">
          <uo k="s:originTrace" v="n:7168632168530717836" />
          <node concept="3clFbT" id="9L" role="3cqZAk">
            <uo k="s:originTrace" v="n:7168632168530717836" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="9I" role="3clF45">
        <uo k="s:originTrace" v="n:7168632168530717836" />
      </node>
      <node concept="3Tm1VV" id="9J" role="1B3o_S">
        <uo k="s:originTrace" v="n:7168632168530717836" />
      </node>
    </node>
    <node concept="3uibUv" id="7R" role="EKbjA">
      <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:7168632168530717836" />
    </node>
    <node concept="3uibUv" id="7S" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractNonTypesystemRule_Runtime" resolve="AbstractNonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:7168632168530717836" />
    </node>
    <node concept="3Tm1VV" id="7T" role="1B3o_S">
      <uo k="s:originTrace" v="n:7168632168530717836" />
    </node>
  </node>
  <node concept="312cEu" id="9M">
    <property role="TrG5h" value="check_DefaultClassifierMethodDeclarationVisibility_NonTypesystemRule" />
    <uo k="s:originTrace" v="n:4684164116368065594" />
    <node concept="3clFbW" id="9N" role="jymVt">
      <uo k="s:originTrace" v="n:4684164116368065594" />
      <node concept="3clFbS" id="9V" role="3clF47">
        <uo k="s:originTrace" v="n:4684164116368065594" />
      </node>
      <node concept="3Tm1VV" id="9W" role="1B3o_S">
        <uo k="s:originTrace" v="n:4684164116368065594" />
      </node>
      <node concept="3cqZAl" id="9X" role="3clF45">
        <uo k="s:originTrace" v="n:4684164116368065594" />
      </node>
    </node>
    <node concept="3clFb_" id="9O" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:4684164116368065594" />
      <node concept="3cqZAl" id="9Y" role="3clF45">
        <uo k="s:originTrace" v="n:4684164116368065594" />
      </node>
      <node concept="37vLTG" id="9Z" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="member" />
        <uo k="s:originTrace" v="n:4684164116368065594" />
        <node concept="3Tqbb2" id="a4" role="1tU5fm">
          <uo k="s:originTrace" v="n:4684164116368065594" />
        </node>
      </node>
      <node concept="37vLTG" id="a0" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:4684164116368065594" />
        <node concept="3uibUv" id="a5" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:4684164116368065594" />
        </node>
      </node>
      <node concept="37vLTG" id="a1" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:4684164116368065594" />
        <node concept="3uibUv" id="a6" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:4684164116368065594" />
        </node>
      </node>
      <node concept="3clFbS" id="a2" role="3clF47">
        <uo k="s:originTrace" v="n:4684164116368065595" />
        <node concept="3cpWs8" id="a7" role="3cqZAp">
          <uo k="s:originTrace" v="n:4684164116368067791" />
          <node concept="3cpWsn" id="a9" role="3cpWs9">
            <property role="TrG5h" value="parent" />
            <uo k="s:originTrace" v="n:4684164116368067792" />
            <node concept="3Tqbb2" id="aa" role="1tU5fm">
              <ref role="ehGHo" to="tp4f:hyWqMFP" resolve="IClassifier" />
              <uo k="s:originTrace" v="n:4684164116368067773" />
            </node>
            <node concept="1PxgMI" id="ab" role="33vP2m">
              <property role="1BlNFB" value="true" />
              <uo k="s:originTrace" v="n:4684164116368069193" />
              <node concept="chp4Y" id="ac" role="3oSUPX">
                <ref role="cht4Q" to="tp4f:hyWqMFP" resolve="IClassifier" />
                <uo k="s:originTrace" v="n:4684164116368069259" />
              </node>
              <node concept="2OqwBi" id="ad" role="1m5AlR">
                <uo k="s:originTrace" v="n:4684164116368067793" />
                <node concept="37vLTw" id="ae" role="2Oq$k0">
                  <ref role="3cqZAo" node="9Z" resolve="member" />
                  <uo k="s:originTrace" v="n:4684164116368067794" />
                </node>
                <node concept="1mfA1w" id="af" role="2OqNvi">
                  <uo k="s:originTrace" v="n:4684164116368067795" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="a8" role="3cqZAp">
          <uo k="s:originTrace" v="n:4684164116368065608" />
          <node concept="3clFbS" id="ag" role="3clFbx">
            <uo k="s:originTrace" v="n:4684164116368065610" />
            <node concept="9aQIb" id="ai" role="3cqZAp">
              <uo k="s:originTrace" v="n:4684164116368410886" />
              <node concept="3clFbS" id="aj" role="9aQI4">
                <node concept="3cpWs8" id="al" role="3cqZAp">
                  <node concept="3cpWsn" id="ao" role="3cpWs9">
                    <property role="TrG5h" value="errorTarget" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3uibUv" id="ap" role="1tU5fm">
                      <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                    </node>
                    <node concept="2ShNRf" id="aq" role="33vP2m">
                      <node concept="1pGfFk" id="ar" role="2ShVmc">
                        <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="am" role="3cqZAp">
                  <node concept="3cpWsn" id="as" role="3cpWs9">
                    <property role="TrG5h" value="_reporter_2309309498" />
                    <node concept="3uibUv" id="at" role="1tU5fm">
                      <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                    </node>
                    <node concept="2OqwBi" id="au" role="33vP2m">
                      <node concept="3VmV3z" id="av" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="ax" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="aw" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                        <node concept="37vLTw" id="ay" role="37wK5m">
                          <ref role="3cqZAo" node="9Z" resolve="member" />
                          <uo k="s:originTrace" v="n:4684164116368410888" />
                        </node>
                        <node concept="Xl_RD" id="az" role="37wK5m">
                          <property role="Xl_RC" value="Private visibility required" />
                          <uo k="s:originTrace" v="n:4684164116368410887" />
                        </node>
                        <node concept="Xl_RD" id="a$" role="37wK5m">
                          <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590371(jetbrains.mps.baseLanguage.classifiers.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="a_" role="37wK5m">
                          <property role="Xl_RC" value="4684164116368410886" />
                        </node>
                        <node concept="10Nm6u" id="aA" role="37wK5m" />
                        <node concept="37vLTw" id="aB" role="37wK5m">
                          <ref role="3cqZAo" node="ao" resolve="errorTarget" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="an" role="3cqZAp">
                  <node concept="3clFbS" id="aC" role="9aQI4">
                    <node concept="3cpWs8" id="aD" role="3cqZAp">
                      <node concept="3cpWsn" id="aF" role="3cpWs9">
                        <property role="TrG5h" value="intentionProvider" />
                        <node concept="3uibUv" id="aG" role="1tU5fm">
                          <ref role="3uigEE" to="2gg1:~BaseQuickFixProvider" resolve="BaseQuickFixProvider" />
                        </node>
                        <node concept="2ShNRf" id="aH" role="33vP2m">
                          <node concept="1pGfFk" id="aI" role="2ShVmc">
                            <ref role="37wK5l" to="2gg1:~BaseQuickFixProvider.&lt;init&gt;(java.lang.String,java.lang.String,boolean)" resolve="BaseQuickFixProvider" />
                            <node concept="Xl_RD" id="aJ" role="37wK5m">
                              <property role="Xl_RC" value="jetbrains.mps.baseLanguage.classifiers.typesystem.MakeDefaultClassifierMethodDeclarationPrivate_QuickFix" />
                            </node>
                            <node concept="Xl_RD" id="aK" role="37wK5m">
                              <property role="Xl_RC" value="4684164116368421582" />
                            </node>
                            <node concept="3clFbT" id="aL" role="37wK5m" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="aE" role="3cqZAp">
                      <node concept="2OqwBi" id="aM" role="3clFbG">
                        <node concept="37vLTw" id="aN" role="2Oq$k0">
                          <ref role="3cqZAo" node="as" resolve="_reporter_2309309498" />
                        </node>
                        <node concept="liA8E" id="aO" role="2OqNvi">
                          <ref role="37wK5l" to="2gg1:~IErrorReporter.addIntentionProvider(jetbrains.mps.errors.QuickFixProvider)" resolve="addIntentionProvider" />
                          <node concept="37vLTw" id="aP" role="37wK5m">
                            <ref role="3cqZAo" node="aF" resolve="intentionProvider" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="6wLe0" id="ak" role="lGtFl">
                <property role="6wLej" value="4684164116368410886" />
                <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590371(jetbrains.mps.baseLanguage.classifiers.typesystem)" />
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="ah" role="3clFbw">
            <uo k="s:originTrace" v="n:4684164116368069671" />
            <node concept="2OqwBi" id="aQ" role="3uHU7B">
              <uo k="s:originTrace" v="n:4684164116367971343" />
              <node concept="1PxgMI" id="aS" role="2Oq$k0">
                <property role="1BlNFB" value="true" />
                <uo k="s:originTrace" v="n:4684164116367971344" />
                <node concept="chp4Y" id="aU" role="3oSUPX">
                  <ref role="cht4Q" to="tp4f:hyWqMFP" resolve="IClassifier" />
                  <uo k="s:originTrace" v="n:4684164116367971345" />
                </node>
                <node concept="37vLTw" id="aV" role="1m5AlR">
                  <ref role="3cqZAo" node="a9" resolve="parent" />
                  <uo k="s:originTrace" v="n:4684164116368069521" />
                </node>
              </node>
              <node concept="3zqWPK" id="aT" role="2OqNvi">
                <ref role="37wK5l" to="tp4h:441vB8LJxAr" resolve="requiresAllMethodMembersPrivate" />
                <uo k="s:originTrace" v="n:8085146484218840081" />
              </node>
            </node>
            <node concept="3fqX7Q" id="aR" role="3uHU7w">
              <uo k="s:originTrace" v="n:4684164116368070061" />
              <node concept="2OqwBi" id="aW" role="3fr31v">
                <uo k="s:originTrace" v="n:4684164116368070063" />
                <node concept="2OqwBi" id="aX" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:4684164116368070064" />
                  <node concept="37vLTw" id="aZ" role="2Oq$k0">
                    <ref role="3cqZAo" node="9Z" resolve="member" />
                    <uo k="s:originTrace" v="n:4684164116368070065" />
                  </node>
                  <node concept="3zqWPK" id="b0" role="2OqNvi">
                    <ref role="37wK5l" to="tp4h:hEwIBC5" resolve="getVisiblity" />
                    <uo k="s:originTrace" v="n:8085146484218840083" />
                  </node>
                </node>
                <node concept="1mIQ4w" id="aY" role="2OqNvi">
                  <uo k="s:originTrace" v="n:4684164116368070067" />
                  <node concept="chp4Y" id="b1" role="cj9EA">
                    <ref role="cht4Q" to="tpee:gFTm6Wc" resolve="PrivateVisibility" />
                    <uo k="s:originTrace" v="n:4684164116368070068" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="a3" role="1B3o_S">
        <uo k="s:originTrace" v="n:4684164116368065594" />
      </node>
    </node>
    <node concept="3clFb_" id="9P" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:4684164116368065594" />
      <node concept="3bZ5Sz" id="b2" role="3clF45">
        <uo k="s:originTrace" v="n:4684164116368065594" />
      </node>
      <node concept="3clFbS" id="b3" role="3clF47">
        <uo k="s:originTrace" v="n:4684164116368065594" />
        <node concept="3cpWs6" id="b5" role="3cqZAp">
          <uo k="s:originTrace" v="n:4684164116368065594" />
          <node concept="35c_gC" id="b6" role="3cqZAk">
            <ref role="35c_gD" to="tp4f:hyXrIf3" resolve="DefaultClassifierMethodDeclaration" />
            <uo k="s:originTrace" v="n:4684164116368065594" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="b4" role="1B3o_S">
        <uo k="s:originTrace" v="n:4684164116368065594" />
      </node>
    </node>
    <node concept="3clFb_" id="9Q" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:4684164116368065594" />
      <node concept="37vLTG" id="b7" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:4684164116368065594" />
        <node concept="3Tqbb2" id="bb" role="1tU5fm">
          <uo k="s:originTrace" v="n:4684164116368065594" />
        </node>
      </node>
      <node concept="3clFbS" id="b8" role="3clF47">
        <uo k="s:originTrace" v="n:4684164116368065594" />
        <node concept="9aQIb" id="bc" role="3cqZAp">
          <uo k="s:originTrace" v="n:4684164116368065594" />
          <node concept="3clFbS" id="bd" role="9aQI4">
            <uo k="s:originTrace" v="n:4684164116368065594" />
            <node concept="3cpWs6" id="be" role="3cqZAp">
              <uo k="s:originTrace" v="n:4684164116368065594" />
              <node concept="2ShNRf" id="bf" role="3cqZAk">
                <uo k="s:originTrace" v="n:4684164116368065594" />
                <node concept="1pGfFk" id="bg" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:4684164116368065594" />
                  <node concept="2OqwBi" id="bh" role="37wK5m">
                    <uo k="s:originTrace" v="n:4684164116368065594" />
                    <node concept="2OqwBi" id="bj" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:4684164116368065594" />
                      <node concept="liA8E" id="bl" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:4684164116368065594" />
                      </node>
                      <node concept="2JrnkZ" id="bm" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:4684164116368065594" />
                        <node concept="37vLTw" id="bn" role="2JrQYb">
                          <ref role="3cqZAo" node="b7" resolve="argument" />
                          <uo k="s:originTrace" v="n:4684164116368065594" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="bk" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:4684164116368065594" />
                      <node concept="1rXfSq" id="bo" role="37wK5m">
                        <ref role="37wK5l" node="9P" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:4684164116368065594" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="bi" role="37wK5m">
                    <uo k="s:originTrace" v="n:4684164116368065594" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="b9" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:4684164116368065594" />
      </node>
      <node concept="3Tm1VV" id="ba" role="1B3o_S">
        <uo k="s:originTrace" v="n:4684164116368065594" />
      </node>
    </node>
    <node concept="3clFb_" id="9R" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:4684164116368065594" />
      <node concept="3clFbS" id="bp" role="3clF47">
        <uo k="s:originTrace" v="n:4684164116368065594" />
        <node concept="3cpWs6" id="bs" role="3cqZAp">
          <uo k="s:originTrace" v="n:4684164116368065594" />
          <node concept="3clFbT" id="bt" role="3cqZAk">
            <uo k="s:originTrace" v="n:4684164116368065594" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="bq" role="3clF45">
        <uo k="s:originTrace" v="n:4684164116368065594" />
      </node>
      <node concept="3Tm1VV" id="br" role="1B3o_S">
        <uo k="s:originTrace" v="n:4684164116368065594" />
      </node>
    </node>
    <node concept="3uibUv" id="9S" role="EKbjA">
      <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:4684164116368065594" />
    </node>
    <node concept="3uibUv" id="9T" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractNonTypesystemRule_Runtime" resolve="AbstractNonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:4684164116368065594" />
    </node>
    <node concept="3Tm1VV" id="9U" role="1B3o_S">
      <uo k="s:originTrace" v="n:4684164116368065594" />
    </node>
  </node>
  <node concept="312cEu" id="bu">
    <property role="TrG5h" value="check_IMemberOperation_NonTypesystemRule" />
    <uo k="s:originTrace" v="n:1205853960046" />
    <node concept="3clFbW" id="bv" role="jymVt">
      <uo k="s:originTrace" v="n:1205853960046" />
      <node concept="3clFbS" id="bB" role="3clF47">
        <uo k="s:originTrace" v="n:1205853960046" />
      </node>
      <node concept="3Tm1VV" id="bC" role="1B3o_S">
        <uo k="s:originTrace" v="n:1205853960046" />
      </node>
      <node concept="3cqZAl" id="bD" role="3clF45">
        <uo k="s:originTrace" v="n:1205853960046" />
      </node>
    </node>
    <node concept="3clFb_" id="bw" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:1205853960046" />
      <node concept="3cqZAl" id="bE" role="3clF45">
        <uo k="s:originTrace" v="n:1205853960046" />
      </node>
      <node concept="37vLTG" id="bF" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="nodeToCheck" />
        <uo k="s:originTrace" v="n:1205853960046" />
        <node concept="3Tqbb2" id="bK" role="1tU5fm">
          <uo k="s:originTrace" v="n:1205853960046" />
        </node>
      </node>
      <node concept="37vLTG" id="bG" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:1205853960046" />
        <node concept="3uibUv" id="bL" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:1205853960046" />
        </node>
      </node>
      <node concept="37vLTG" id="bH" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:1205853960046" />
        <node concept="3uibUv" id="bM" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:1205853960046" />
        </node>
      </node>
      <node concept="3clFbS" id="bI" role="3clF47">
        <uo k="s:originTrace" v="n:1205853960047" />
        <node concept="3cpWs8" id="bN" role="3cqZAp">
          <uo k="s:originTrace" v="n:1225121628861" />
          <node concept="3cpWsn" id="bP" role="3cpWs9">
            <property role="TrG5h" value="operandType" />
            <uo k="s:originTrace" v="n:1225121628862" />
            <node concept="3Tqbb2" id="bQ" role="1tU5fm">
              <uo k="s:originTrace" v="n:1225121628863" />
            </node>
            <node concept="2OqwBi" id="bR" role="33vP2m">
              <uo k="s:originTrace" v="n:1225121671404" />
              <node concept="2YIFZM" id="bS" role="2Oq$k0">
                <ref role="37wK5l" to="1ka:~TypecheckingFacade.getFromContext()" resolve="getFromContext" />
                <ref role="1Pybhc" to="1ka:~TypecheckingFacade" resolve="TypecheckingFacade" />
              </node>
              <node concept="liA8E" id="bT" role="2OqNvi">
                <ref role="37wK5l" to="1ka:~TypecheckingFacade.getTypeOf(org.jetbrains.mps.openapi.model.SNode)" resolve="getTypeOf" />
                <node concept="2OqwBi" id="bU" role="37wK5m">
                  <uo k="s:originTrace" v="n:1225121644413" />
                  <node concept="37vLTw" id="bV" role="2Oq$k0">
                    <ref role="3cqZAo" node="bF" resolve="nodeToCheck" />
                    <uo k="s:originTrace" v="n:1225121644414" />
                  </node>
                  <node concept="3zqWPK" id="bW" role="2OqNvi">
                    <ref role="37wK5l" to="tpek:hEwIP$m" resolve="getOperand" />
                    <uo k="s:originTrace" v="n:8085146484218840072" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="bO" role="3cqZAp">
          <uo k="s:originTrace" v="n:1205921883368" />
          <node concept="3clFbS" id="bX" role="9aQI4">
            <node concept="3cpWs8" id="bY" role="3cqZAp">
              <node concept="3cpWsn" id="c0" role="3cpWs9">
                <property role="TrG5h" value="coercedNode_hm5x7h_b0" />
                <node concept="3Tqbb2" id="c1" role="1tU5fm" />
                <node concept="2OqwBi" id="c2" role="33vP2m">
                  <uo k="s:originTrace" v="n:1205921883368" />
                  <node concept="2YIFZM" id="c3" role="2Oq$k0">
                    <ref role="37wK5l" to="1ka:~TypecheckingFacade.getFromContext()" resolve="getFromContext" />
                    <ref role="1Pybhc" to="1ka:~TypecheckingFacade" resolve="TypecheckingFacade" />
                    <uo k="s:originTrace" v="n:1205921883368" />
                  </node>
                  <node concept="liA8E" id="c4" role="2OqNvi">
                    <ref role="37wK5l" to="1ka:~TypecheckingFacade.coerceType(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.language.SConcept)" resolve="coerceType" />
                    <uo k="s:originTrace" v="n:1205921883368" />
                    <node concept="37vLTw" id="c5" role="37wK5m">
                      <ref role="3cqZAo" node="bP" resolve="operandType" />
                      <uo k="s:originTrace" v="n:4265636116363111975" />
                    </node>
                    <node concept="35c_gC" id="c6" role="37wK5m">
                      <ref role="35c_gD" to="tp4f:hyWtXx5" resolve="BaseClassifierType" />
                      <uo k="s:originTrace" v="n:1205921883368" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="bZ" role="3cqZAp">
              <node concept="3y3z36" id="c7" role="3clFbw">
                <node concept="10Nm6u" id="ca" role="3uHU7w" />
                <node concept="37vLTw" id="cb" role="3uHU7B">
                  <ref role="3cqZAo" node="c0" resolve="coercedNode_hm5x7h_b0" />
                </node>
              </node>
              <node concept="3clFbS" id="c8" role="3clFbx">
                <uo k="s:originTrace" v="n:1205921883375" />
                <node concept="3clFbJ" id="cc" role="3cqZAp">
                  <uo k="s:originTrace" v="n:1205921883376" />
                  <node concept="3fqX7Q" id="cd" role="3clFbw">
                    <uo k="s:originTrace" v="n:1205921883377" />
                    <node concept="2OqwBi" id="cf" role="3fr31v">
                      <uo k="s:originTrace" v="n:1205921883378" />
                      <node concept="3JPx81" id="cg" role="2OqNvi">
                        <uo k="s:originTrace" v="n:1205921883379" />
                        <node concept="2OqwBi" id="ci" role="25WWJ7">
                          <uo k="s:originTrace" v="n:1205921883380" />
                          <node concept="37vLTw" id="cj" role="2Oq$k0">
                            <ref role="3cqZAo" node="bF" resolve="nodeToCheck" />
                            <uo k="s:originTrace" v="n:1205921883381" />
                          </node>
                          <node concept="3TrEf2" id="ck" role="2OqNvi">
                            <ref role="3Tt5mk" to="tp4f:hyWH_vG" resolve="member" />
                            <uo k="s:originTrace" v="n:1205921883382" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="ch" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:1205921883383" />
                        <node concept="3zqWPK" id="cl" role="2OqNvi">
                          <ref role="37wK5l" to="tp4h:hEwINC$" resolve="getMembers" />
                          <uo k="s:originTrace" v="n:8085146484218840074" />
                          <node concept="37vLTw" id="cn" role="37wK5m">
                            <ref role="3cqZAo" node="bF" resolve="nodeToCheck" />
                            <uo k="s:originTrace" v="n:8085146484218840076" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="cm" role="2Oq$k0">
                          <ref role="3cqZAo" node="c0" resolve="coercedNode_hm5x7h_b0" />
                          <uo k="s:originTrace" v="n:1205921883386" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="ce" role="3clFbx">
                    <uo k="s:originTrace" v="n:1205921883387" />
                    <node concept="9aQIb" id="co" role="3cqZAp">
                      <uo k="s:originTrace" v="n:1205921883388" />
                      <node concept="3clFbS" id="cp" role="9aQI4">
                        <node concept="3cpWs8" id="cr" role="3cqZAp">
                          <node concept="3cpWsn" id="ct" role="3cpWs9">
                            <property role="TrG5h" value="errorTarget" />
                            <property role="3TUv4t" value="true" />
                            <node concept="3uibUv" id="cu" role="1tU5fm">
                              <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                            </node>
                            <node concept="2ShNRf" id="cv" role="33vP2m">
                              <node concept="1pGfFk" id="cw" role="2ShVmc">
                                <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="cs" role="3cqZAp">
                          <node concept="3cpWsn" id="cx" role="3cpWs9">
                            <property role="TrG5h" value="_reporter_2309309498" />
                            <node concept="3uibUv" id="cy" role="1tU5fm">
                              <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                            </node>
                            <node concept="2OqwBi" id="cz" role="33vP2m">
                              <node concept="3VmV3z" id="c$" role="2Oq$k0">
                                <property role="3VnrPo" value="typeCheckingContext" />
                                <node concept="3uibUv" id="cA" role="3Vn4Tt">
                                  <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                                </node>
                              </node>
                              <node concept="liA8E" id="c_" role="2OqNvi">
                                <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                                <node concept="37vLTw" id="cB" role="37wK5m">
                                  <ref role="3cqZAo" node="bF" resolve="nodeToCheck" />
                                  <uo k="s:originTrace" v="n:1205921883390" />
                                </node>
                                <node concept="Xl_RD" id="cC" role="37wK5m">
                                  <property role="Xl_RC" value="Declaration is out of scope" />
                                  <uo k="s:originTrace" v="n:1205921883389" />
                                </node>
                                <node concept="Xl_RD" id="cD" role="37wK5m">
                                  <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590371(jetbrains.mps.baseLanguage.classifiers.typesystem)" />
                                </node>
                                <node concept="Xl_RD" id="cE" role="37wK5m">
                                  <property role="Xl_RC" value="1205921883388" />
                                </node>
                                <node concept="10Nm6u" id="cF" role="37wK5m" />
                                <node concept="37vLTw" id="cG" role="37wK5m">
                                  <ref role="3cqZAo" node="ct" resolve="errorTarget" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="6wLe0" id="cq" role="lGtFl">
                        <property role="6wLej" value="1205921883388" />
                        <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590371(jetbrains.mps.baseLanguage.classifiers.typesystem)" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="c9" role="9aQIa" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="bJ" role="1B3o_S">
        <uo k="s:originTrace" v="n:1205853960046" />
      </node>
    </node>
    <node concept="3clFb_" id="bx" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:1205853960046" />
      <node concept="3bZ5Sz" id="cH" role="3clF45">
        <uo k="s:originTrace" v="n:1205853960046" />
      </node>
      <node concept="3clFbS" id="cI" role="3clF47">
        <uo k="s:originTrace" v="n:1205853960046" />
        <node concept="3cpWs6" id="cK" role="3cqZAp">
          <uo k="s:originTrace" v="n:1205853960046" />
          <node concept="35c_gC" id="cL" role="3cqZAk">
            <ref role="35c_gD" to="tp4f:hyWEnem" resolve="IMemberOperation" />
            <uo k="s:originTrace" v="n:1205853960046" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="cJ" role="1B3o_S">
        <uo k="s:originTrace" v="n:1205853960046" />
      </node>
    </node>
    <node concept="3clFb_" id="by" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:1205853960046" />
      <node concept="37vLTG" id="cM" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:1205853960046" />
        <node concept="3Tqbb2" id="cQ" role="1tU5fm">
          <uo k="s:originTrace" v="n:1205853960046" />
        </node>
      </node>
      <node concept="3clFbS" id="cN" role="3clF47">
        <uo k="s:originTrace" v="n:1205853960046" />
        <node concept="9aQIb" id="cR" role="3cqZAp">
          <uo k="s:originTrace" v="n:1205853960046" />
          <node concept="3clFbS" id="cS" role="9aQI4">
            <uo k="s:originTrace" v="n:1205853960046" />
            <node concept="3cpWs6" id="cT" role="3cqZAp">
              <uo k="s:originTrace" v="n:1205853960046" />
              <node concept="2ShNRf" id="cU" role="3cqZAk">
                <uo k="s:originTrace" v="n:1205853960046" />
                <node concept="1pGfFk" id="cV" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:1205853960046" />
                  <node concept="2OqwBi" id="cW" role="37wK5m">
                    <uo k="s:originTrace" v="n:1205853960046" />
                    <node concept="2OqwBi" id="cY" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:1205853960046" />
                      <node concept="liA8E" id="d0" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:1205853960046" />
                      </node>
                      <node concept="2JrnkZ" id="d1" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:1205853960046" />
                        <node concept="37vLTw" id="d2" role="2JrQYb">
                          <ref role="3cqZAo" node="cM" resolve="argument" />
                          <uo k="s:originTrace" v="n:1205853960046" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="cZ" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:1205853960046" />
                      <node concept="1rXfSq" id="d3" role="37wK5m">
                        <ref role="37wK5l" node="bx" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:1205853960046" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="cX" role="37wK5m">
                    <uo k="s:originTrace" v="n:1205853960046" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="cO" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:1205853960046" />
      </node>
      <node concept="3Tm1VV" id="cP" role="1B3o_S">
        <uo k="s:originTrace" v="n:1205853960046" />
      </node>
    </node>
    <node concept="3clFb_" id="bz" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:1205853960046" />
      <node concept="3clFbS" id="d4" role="3clF47">
        <uo k="s:originTrace" v="n:1205853960046" />
        <node concept="3cpWs6" id="d7" role="3cqZAp">
          <uo k="s:originTrace" v="n:1205853960046" />
          <node concept="3clFbT" id="d8" role="3cqZAk">
            <uo k="s:originTrace" v="n:1205853960046" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="d5" role="3clF45">
        <uo k="s:originTrace" v="n:1205853960046" />
      </node>
      <node concept="3Tm1VV" id="d6" role="1B3o_S">
        <uo k="s:originTrace" v="n:1205853960046" />
      </node>
    </node>
    <node concept="3uibUv" id="b$" role="EKbjA">
      <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:1205853960046" />
    </node>
    <node concept="3uibUv" id="b_" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractNonTypesystemRule_Runtime" resolve="AbstractNonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:1205853960046" />
    </node>
    <node concept="3Tm1VV" id="bA" role="1B3o_S">
      <uo k="s:originTrace" v="n:1205853960046" />
    </node>
  </node>
  <node concept="312cEu" id="d9">
    <property role="3GE5qa" value="Fields" />
    <property role="TrG5h" value="typeof_DefaultClassifierFieldAccessOperation_InferenceRule" />
    <uo k="s:originTrace" v="n:1214001475035" />
    <node concept="3clFbW" id="da" role="jymVt">
      <uo k="s:originTrace" v="n:1214001475035" />
      <node concept="3clFbS" id="di" role="3clF47">
        <uo k="s:originTrace" v="n:1214001475035" />
      </node>
      <node concept="3Tm1VV" id="dj" role="1B3o_S">
        <uo k="s:originTrace" v="n:1214001475035" />
      </node>
      <node concept="3cqZAl" id="dk" role="3clF45">
        <uo k="s:originTrace" v="n:1214001475035" />
      </node>
    </node>
    <node concept="3clFb_" id="db" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:1214001475035" />
      <node concept="3cqZAl" id="dl" role="3clF45">
        <uo k="s:originTrace" v="n:1214001475035" />
      </node>
      <node concept="37vLTG" id="dm" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="nodeToCheck" />
        <uo k="s:originTrace" v="n:1214001475035" />
        <node concept="3Tqbb2" id="dr" role="1tU5fm">
          <uo k="s:originTrace" v="n:1214001475035" />
        </node>
      </node>
      <node concept="37vLTG" id="dn" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:1214001475035" />
        <node concept="3uibUv" id="ds" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:1214001475035" />
        </node>
      </node>
      <node concept="37vLTG" id="do" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:1214001475035" />
        <node concept="3uibUv" id="dt" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:1214001475035" />
        </node>
      </node>
      <node concept="3clFbS" id="dp" role="3clF47">
        <uo k="s:originTrace" v="n:1214001475036" />
        <node concept="9aQIb" id="du" role="3cqZAp">
          <uo k="s:originTrace" v="n:1214001485999" />
          <node concept="3clFbS" id="dv" role="9aQI4">
            <node concept="3cpWs8" id="dx" role="3cqZAp">
              <node concept="3cpWsn" id="d$" role="3cpWs9">
                <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                <node concept="37vLTw" id="d_" role="33vP2m">
                  <ref role="3cqZAo" node="dm" resolve="nodeToCheck" />
                  <uo k="s:originTrace" v="n:1214001482593" />
                  <node concept="6wLe0" id="dB" role="lGtFl">
                    <property role="6wLej" value="1214001485999" />
                    <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590371(jetbrains.mps.baseLanguage.classifiers.typesystem)" />
                  </node>
                </node>
                <node concept="3uibUv" id="dA" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="dy" role="3cqZAp">
              <node concept="3cpWsn" id="dC" role="3cpWs9">
                <property role="TrG5h" value="_info_12389875345" />
                <node concept="3uibUv" id="dD" role="1tU5fm">
                  <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                </node>
                <node concept="2ShNRf" id="dE" role="33vP2m">
                  <node concept="1pGfFk" id="dF" role="2ShVmc">
                    <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                    <node concept="37vLTw" id="dG" role="37wK5m">
                      <ref role="3cqZAo" node="d$" resolve="_nodeToCheck_1029348928467" />
                    </node>
                    <node concept="10Nm6u" id="dH" role="37wK5m" />
                    <node concept="Xl_RD" id="dI" role="37wK5m">
                      <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590371(jetbrains.mps.baseLanguage.classifiers.typesystem)" />
                    </node>
                    <node concept="Xl_RD" id="dJ" role="37wK5m">
                      <property role="Xl_RC" value="1214001485999" />
                    </node>
                    <node concept="3cmrfG" id="dK" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="10Nm6u" id="dL" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="dz" role="3cqZAp">
              <node concept="2OqwBi" id="dM" role="3clFbG">
                <node concept="3VmV3z" id="dN" role="2Oq$k0">
                  <property role="3VnrPo" value="typeCheckingContext" />
                  <node concept="3uibUv" id="dP" role="3Vn4Tt">
                    <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                  </node>
                </node>
                <node concept="liA8E" id="dO" role="2OqNvi">
                  <ref role="37wK5l" to="u78q:~TypeCheckingContext.createEquation(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createEquation" />
                  <node concept="10QFUN" id="dQ" role="37wK5m">
                    <uo k="s:originTrace" v="n:1214001486006" />
                    <node concept="3uibUv" id="dT" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="dU" role="10QFUP">
                      <uo k="s:originTrace" v="n:1214001479715" />
                      <node concept="3VmV3z" id="dV" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="dY" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="dW" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                        <node concept="3VmV3z" id="dZ" role="37wK5m">
                          <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                          <node concept="3uibUv" id="e3" role="3Vn4Tt">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="e0" role="37wK5m">
                          <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590371(jetbrains.mps.baseLanguage.classifiers.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="e1" role="37wK5m">
                          <property role="Xl_RC" value="1214001479715" />
                        </node>
                        <node concept="3clFbT" id="e2" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                      <node concept="6wLe0" id="dX" role="lGtFl">
                        <property role="6wLej" value="1214001479715" />
                        <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590371(jetbrains.mps.baseLanguage.classifiers.typesystem)" />
                      </node>
                    </node>
                  </node>
                  <node concept="10QFUN" id="dR" role="37wK5m">
                    <uo k="s:originTrace" v="n:1214001506868" />
                    <node concept="3uibUv" id="e4" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="e5" role="10QFUP">
                      <uo k="s:originTrace" v="n:1214001528150" />
                      <node concept="2OqwBi" id="e6" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:1214001507918" />
                        <node concept="37vLTw" id="e8" role="2Oq$k0">
                          <ref role="3cqZAo" node="dm" resolve="nodeToCheck" />
                          <uo k="s:originTrace" v="n:1214001506869" />
                        </node>
                        <node concept="3TrEf2" id="e9" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp4f:hEBZ7lN" resolve="field" />
                          <uo k="s:originTrace" v="n:1214001526153" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="e7" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpee:4VkOLwjf83e" resolve="type" />
                        <uo k="s:originTrace" v="n:1214001530907" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="dS" role="37wK5m">
                    <ref role="3cqZAo" node="dC" resolve="_info_12389875345" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="6wLe0" id="dw" role="lGtFl">
            <property role="6wLej" value="1214001485999" />
            <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590371(jetbrains.mps.baseLanguage.classifiers.typesystem)" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="dq" role="1B3o_S">
        <uo k="s:originTrace" v="n:1214001475035" />
      </node>
    </node>
    <node concept="3clFb_" id="dc" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:1214001475035" />
      <node concept="3bZ5Sz" id="ea" role="3clF45">
        <uo k="s:originTrace" v="n:1214001475035" />
      </node>
      <node concept="3clFbS" id="eb" role="3clF47">
        <uo k="s:originTrace" v="n:1214001475035" />
        <node concept="3cpWs6" id="ed" role="3cqZAp">
          <uo k="s:originTrace" v="n:1214001475035" />
          <node concept="35c_gC" id="ee" role="3cqZAk">
            <ref role="35c_gD" to="tp4f:hEBZ7lK" resolve="DefaultClassifierFieldAccessOperation" />
            <uo k="s:originTrace" v="n:1214001475035" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="ec" role="1B3o_S">
        <uo k="s:originTrace" v="n:1214001475035" />
      </node>
    </node>
    <node concept="3clFb_" id="dd" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:1214001475035" />
      <node concept="37vLTG" id="ef" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:1214001475035" />
        <node concept="3Tqbb2" id="ej" role="1tU5fm">
          <uo k="s:originTrace" v="n:1214001475035" />
        </node>
      </node>
      <node concept="3clFbS" id="eg" role="3clF47">
        <uo k="s:originTrace" v="n:1214001475035" />
        <node concept="9aQIb" id="ek" role="3cqZAp">
          <uo k="s:originTrace" v="n:1214001475035" />
          <node concept="3clFbS" id="el" role="9aQI4">
            <uo k="s:originTrace" v="n:1214001475035" />
            <node concept="3cpWs6" id="em" role="3cqZAp">
              <uo k="s:originTrace" v="n:1214001475035" />
              <node concept="2ShNRf" id="en" role="3cqZAk">
                <uo k="s:originTrace" v="n:1214001475035" />
                <node concept="1pGfFk" id="eo" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:1214001475035" />
                  <node concept="2OqwBi" id="ep" role="37wK5m">
                    <uo k="s:originTrace" v="n:1214001475035" />
                    <node concept="2OqwBi" id="er" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:1214001475035" />
                      <node concept="liA8E" id="et" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:1214001475035" />
                      </node>
                      <node concept="2JrnkZ" id="eu" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:1214001475035" />
                        <node concept="37vLTw" id="ev" role="2JrQYb">
                          <ref role="3cqZAo" node="ef" resolve="argument" />
                          <uo k="s:originTrace" v="n:1214001475035" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="es" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:1214001475035" />
                      <node concept="1rXfSq" id="ew" role="37wK5m">
                        <ref role="37wK5l" node="dc" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:1214001475035" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="eq" role="37wK5m">
                    <uo k="s:originTrace" v="n:1214001475035" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="eh" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:1214001475035" />
      </node>
      <node concept="3Tm1VV" id="ei" role="1B3o_S">
        <uo k="s:originTrace" v="n:1214001475035" />
      </node>
    </node>
    <node concept="3clFb_" id="de" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:1214001475035" />
      <node concept="3clFbS" id="ex" role="3clF47">
        <uo k="s:originTrace" v="n:1214001475035" />
        <node concept="3cpWs6" id="e$" role="3cqZAp">
          <uo k="s:originTrace" v="n:1214001475035" />
          <node concept="3clFbT" id="e_" role="3cqZAk">
            <uo k="s:originTrace" v="n:1214001475035" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="ey" role="3clF45">
        <uo k="s:originTrace" v="n:1214001475035" />
      </node>
      <node concept="3Tm1VV" id="ez" role="1B3o_S">
        <uo k="s:originTrace" v="n:1214001475035" />
      </node>
    </node>
    <node concept="3uibUv" id="df" role="EKbjA">
      <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:1214001475035" />
    </node>
    <node concept="3uibUv" id="dg" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractInferenceRule_Runtime" resolve="AbstractInferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:1214001475035" />
    </node>
    <node concept="3Tm1VV" id="dh" role="1B3o_S">
      <uo k="s:originTrace" v="n:1214001475035" />
    </node>
  </node>
  <node concept="312cEu" id="eA">
    <property role="3GE5qa" value="Methods" />
    <property role="TrG5h" value="typeof_DefaultMethodCallOperation_InferenceRule" />
    <uo k="s:originTrace" v="n:1205769672845" />
    <node concept="3clFbW" id="eB" role="jymVt">
      <uo k="s:originTrace" v="n:1205769672845" />
      <node concept="3clFbS" id="eJ" role="3clF47">
        <uo k="s:originTrace" v="n:1205769672845" />
      </node>
      <node concept="3Tm1VV" id="eK" role="1B3o_S">
        <uo k="s:originTrace" v="n:1205769672845" />
      </node>
      <node concept="3cqZAl" id="eL" role="3clF45">
        <uo k="s:originTrace" v="n:1205769672845" />
      </node>
    </node>
    <node concept="3clFb_" id="eC" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:1205769672845" />
      <node concept="3cqZAl" id="eM" role="3clF45">
        <uo k="s:originTrace" v="n:1205769672845" />
      </node>
      <node concept="37vLTG" id="eN" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="nodeToCheck" />
        <uo k="s:originTrace" v="n:1205769672845" />
        <node concept="3Tqbb2" id="eS" role="1tU5fm">
          <uo k="s:originTrace" v="n:1205769672845" />
        </node>
      </node>
      <node concept="37vLTG" id="eO" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:1205769672845" />
        <node concept="3uibUv" id="eT" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:1205769672845" />
        </node>
      </node>
      <node concept="37vLTG" id="eP" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:1205769672845" />
        <node concept="3uibUv" id="eU" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:1205769672845" />
        </node>
      </node>
      <node concept="3clFbS" id="eQ" role="3clF47">
        <uo k="s:originTrace" v="n:1205769672846" />
        <node concept="9aQIb" id="eV" role="3cqZAp">
          <uo k="s:originTrace" v="n:1205769679712" />
          <node concept="3clFbS" id="f5" role="9aQI4">
            <node concept="3cpWs8" id="f7" role="3cqZAp">
              <node concept="3cpWsn" id="fa" role="3cpWs9">
                <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                <node concept="37vLTw" id="fb" role="33vP2m">
                  <ref role="3cqZAo" node="eN" resolve="nodeToCheck" />
                  <uo k="s:originTrace" v="n:1205769686781" />
                  <node concept="6wLe0" id="fd" role="lGtFl">
                    <property role="6wLej" value="1205769679712" />
                    <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590371(jetbrains.mps.baseLanguage.classifiers.typesystem)" />
                  </node>
                </node>
                <node concept="3uibUv" id="fc" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="f8" role="3cqZAp">
              <node concept="3cpWsn" id="fe" role="3cpWs9">
                <property role="TrG5h" value="_info_12389875345" />
                <node concept="3uibUv" id="ff" role="1tU5fm">
                  <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                </node>
                <node concept="2ShNRf" id="fg" role="33vP2m">
                  <node concept="1pGfFk" id="fh" role="2ShVmc">
                    <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                    <node concept="37vLTw" id="fi" role="37wK5m">
                      <ref role="3cqZAo" node="fa" resolve="_nodeToCheck_1029348928467" />
                    </node>
                    <node concept="10Nm6u" id="fj" role="37wK5m" />
                    <node concept="Xl_RD" id="fk" role="37wK5m">
                      <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590371(jetbrains.mps.baseLanguage.classifiers.typesystem)" />
                    </node>
                    <node concept="Xl_RD" id="fl" role="37wK5m">
                      <property role="Xl_RC" value="1205769679712" />
                    </node>
                    <node concept="3cmrfG" id="fm" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="10Nm6u" id="fn" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="f9" role="3cqZAp">
              <node concept="2OqwBi" id="fo" role="3clFbG">
                <node concept="3VmV3z" id="fp" role="2Oq$k0">
                  <property role="3VnrPo" value="typeCheckingContext" />
                  <node concept="3uibUv" id="fr" role="3Vn4Tt">
                    <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                  </node>
                </node>
                <node concept="liA8E" id="fq" role="2OqNvi">
                  <ref role="37wK5l" to="u78q:~TypeCheckingContext.createEquation(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createEquation" />
                  <node concept="10QFUN" id="fs" role="37wK5m">
                    <uo k="s:originTrace" v="n:1205769685434" />
                    <node concept="3uibUv" id="fv" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="fw" role="10QFUP">
                      <uo k="s:originTrace" v="n:1205769685435" />
                      <node concept="3VmV3z" id="fx" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="f$" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="fy" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                        <node concept="3VmV3z" id="f_" role="37wK5m">
                          <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                          <node concept="3uibUv" id="fD" role="3Vn4Tt">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="fA" role="37wK5m">
                          <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590371(jetbrains.mps.baseLanguage.classifiers.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="fB" role="37wK5m">
                          <property role="Xl_RC" value="1205769685435" />
                        </node>
                        <node concept="3clFbT" id="fC" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                      <node concept="6wLe0" id="fz" role="lGtFl">
                        <property role="6wLej" value="1205769685435" />
                        <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590371(jetbrains.mps.baseLanguage.classifiers.typesystem)" />
                      </node>
                    </node>
                  </node>
                  <node concept="10QFUN" id="ft" role="37wK5m">
                    <uo k="s:originTrace" v="n:1205769689173" />
                    <node concept="3uibUv" id="fE" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="fF" role="10QFUP">
                      <uo k="s:originTrace" v="n:1205769698462" />
                      <node concept="2OqwBi" id="fG" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:1205769689581" />
                        <node concept="37vLTw" id="fI" role="2Oq$k0">
                          <ref role="3cqZAo" node="eN" resolve="nodeToCheck" />
                          <uo k="s:originTrace" v="n:1205769689174" />
                        </node>
                        <node concept="3TrEf2" id="fJ" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp4f:hyXtfQh" resolve="method" />
                          <uo k="s:originTrace" v="n:1205769698055" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="fH" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpee:fzclF7X" resolve="returnType" />
                        <uo k="s:originTrace" v="n:1205769702246" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="fu" role="37wK5m">
                    <ref role="3cqZAo" node="fe" resolve="_info_12389875345" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="6wLe0" id="f6" role="lGtFl">
            <property role="6wLej" value="1205769679712" />
            <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590371(jetbrains.mps.baseLanguage.classifiers.typesystem)" />
          </node>
        </node>
        <node concept="3clFbH" id="eW" role="3cqZAp">
          <uo k="s:originTrace" v="n:3675217221541892407" />
        </node>
        <node concept="1_o_46" id="eX" role="3cqZAp">
          <uo k="s:originTrace" v="n:816097550963422890" />
          <node concept="1_o_bx" id="fK" role="1_o_by">
            <uo k="s:originTrace" v="n:816097550963422874" />
            <node concept="1_o_bG" id="fN" role="1_o_aQ">
              <property role="TrG5h" value="parameter" />
              <uo k="s:originTrace" v="n:816097550963422875" />
            </node>
            <node concept="2OqwBi" id="fO" role="1_o_bz">
              <uo k="s:originTrace" v="n:816097550963422869" />
              <node concept="2OqwBi" id="fP" role="2Oq$k0">
                <uo k="s:originTrace" v="n:816097550963422870" />
                <node concept="37vLTw" id="fR" role="2Oq$k0">
                  <ref role="3cqZAo" node="eN" resolve="nodeToCheck" />
                  <uo k="s:originTrace" v="n:816097550963422871" />
                </node>
                <node concept="3TrEf2" id="fS" role="2OqNvi">
                  <ref role="3Tt5mk" to="tp4f:hyXtfQh" resolve="method" />
                  <uo k="s:originTrace" v="n:816097550963422872" />
                </node>
              </node>
              <node concept="3Tsc0h" id="fQ" role="2OqNvi">
                <ref role="3TtcxE" to="tpee:fzclF7Y" resolve="parameter" />
                <uo k="s:originTrace" v="n:816097550963422873" />
              </node>
            </node>
          </node>
          <node concept="1_o_bx" id="fL" role="1_o_by">
            <uo k="s:originTrace" v="n:816097550963422879" />
            <node concept="1_o_bG" id="fT" role="1_o_aQ">
              <property role="TrG5h" value="argument" />
              <uo k="s:originTrace" v="n:816097550963422880" />
            </node>
            <node concept="2OqwBi" id="fU" role="1_o_bz">
              <uo k="s:originTrace" v="n:816097550963422876" />
              <node concept="37vLTw" id="fV" role="2Oq$k0">
                <ref role="3cqZAo" node="eN" resolve="nodeToCheck" />
                <uo k="s:originTrace" v="n:816097550963422877" />
              </node>
              <node concept="3Tsc0h" id="fW" role="2OqNvi">
                <ref role="3TtcxE" to="tp4f:hyXxRup" resolve="actualArgument" />
                <uo k="s:originTrace" v="n:816097550963422878" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="fM" role="2LFqv$">
            <uo k="s:originTrace" v="n:816097550963422881" />
            <node concept="3clFbJ" id="fX" role="3cqZAp">
              <uo k="s:originTrace" v="n:3675217221541662085" />
              <node concept="3clFbS" id="fY" role="3clFbx">
                <uo k="s:originTrace" v="n:3675217221541662087" />
                <node concept="3cpWs8" id="g1" role="3cqZAp">
                  <uo k="s:originTrace" v="n:3675217221541941583" />
                  <node concept="3cpWsn" id="g4" role="3cpWs9">
                    <property role="TrG5h" value="varArgs" />
                    <uo k="s:originTrace" v="n:3675217221541941584" />
                    <node concept="2I9FWS" id="g5" role="1tU5fm">
                      <uo k="s:originTrace" v="n:3675217221541941582" />
                    </node>
                    <node concept="2OqwBi" id="g6" role="33vP2m">
                      <uo k="s:originTrace" v="n:3675217221541941585" />
                      <node concept="3M$PaV" id="g7" role="2Oq$k0">
                        <ref role="3M$S_o" node="fT" resolve="argument" />
                        <uo k="s:originTrace" v="n:3675217221541941586" />
                      </node>
                      <node concept="2TlYAL" id="g8" role="2OqNvi">
                        <uo k="s:originTrace" v="n:3675217221541941587" />
                        <node concept="1xIGOp" id="g9" role="1xVPHs">
                          <uo k="s:originTrace" v="n:3675217221541941588" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="g2" role="3cqZAp">
                  <uo k="s:originTrace" v="n:3675217221541942281" />
                  <node concept="2OqwBi" id="ga" role="3clFbG">
                    <uo k="s:originTrace" v="n:3675217221541945981" />
                    <node concept="37vLTw" id="gb" role="2Oq$k0">
                      <ref role="3cqZAo" node="g4" resolve="varArgs" />
                      <uo k="s:originTrace" v="n:3675217221541942279" />
                    </node>
                    <node concept="2es0OD" id="gc" role="2OqNvi">
                      <uo k="s:originTrace" v="n:3675217221541960117" />
                      <node concept="1bVj0M" id="gd" role="23t8la">
                        <uo k="s:originTrace" v="n:3675217221541960119" />
                        <node concept="3clFbS" id="ge" role="1bW5cS">
                          <uo k="s:originTrace" v="n:3675217221541960120" />
                          <node concept="9aQIb" id="gg" role="3cqZAp">
                            <uo k="s:originTrace" v="n:3675217221541911434" />
                            <node concept="3clFbS" id="gh" role="9aQI4">
                              <node concept="3cpWs8" id="gj" role="3cqZAp">
                                <node concept="3cpWsn" id="gm" role="3cpWs9">
                                  <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                                  <node concept="37vLTw" id="gn" role="33vP2m">
                                    <ref role="3cqZAo" node="gf" resolve="it" />
                                    <uo k="s:originTrace" v="n:3675217221541962144" />
                                    <node concept="6wLe0" id="gp" role="lGtFl">
                                      <property role="6wLej" value="3675217221541911434" />
                                      <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590371(jetbrains.mps.baseLanguage.classifiers.typesystem)" />
                                    </node>
                                  </node>
                                  <node concept="3uibUv" id="go" role="1tU5fm">
                                    <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3cpWs8" id="gk" role="3cqZAp">
                                <node concept="3cpWsn" id="gq" role="3cpWs9">
                                  <property role="TrG5h" value="_info_12389875345" />
                                  <node concept="3uibUv" id="gr" role="1tU5fm">
                                    <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                                  </node>
                                  <node concept="2ShNRf" id="gs" role="33vP2m">
                                    <node concept="1pGfFk" id="gt" role="2ShVmc">
                                      <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                                      <node concept="37vLTw" id="gu" role="37wK5m">
                                        <ref role="3cqZAo" node="gm" resolve="_nodeToCheck_1029348928467" />
                                      </node>
                                      <node concept="10Nm6u" id="gv" role="37wK5m" />
                                      <node concept="Xl_RD" id="gw" role="37wK5m">
                                        <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590371(jetbrains.mps.baseLanguage.classifiers.typesystem)" />
                                      </node>
                                      <node concept="Xl_RD" id="gx" role="37wK5m">
                                        <property role="Xl_RC" value="3675217221541911434" />
                                      </node>
                                      <node concept="3cmrfG" id="gy" role="37wK5m">
                                        <property role="3cmrfH" value="0" />
                                      </node>
                                      <node concept="10Nm6u" id="gz" role="37wK5m" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="gl" role="3cqZAp">
                                <node concept="2OqwBi" id="g$" role="3clFbG">
                                  <node concept="3VmV3z" id="g_" role="2Oq$k0">
                                    <property role="3VnrPo" value="typeCheckingContext" />
                                    <node concept="3uibUv" id="gB" role="3Vn4Tt">
                                      <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="gA" role="2OqNvi">
                                    <ref role="37wK5l" to="u78q:~TypeCheckingContext.createLessThanInequality(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,boolean,boolean,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createLessThanInequality" />
                                    <node concept="10QFUN" id="gC" role="37wK5m">
                                      <uo k="s:originTrace" v="n:3675217221541911435" />
                                      <node concept="3uibUv" id="gH" role="10QFUM">
                                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                      </node>
                                      <node concept="2OqwBi" id="gI" role="10QFUP">
                                        <uo k="s:originTrace" v="n:3675217221541911436" />
                                        <node concept="3VmV3z" id="gJ" role="2Oq$k0">
                                          <property role="3VnrPo" value="typeCheckingContext" />
                                          <node concept="3uibUv" id="gM" role="3Vn4Tt">
                                            <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                                          </node>
                                        </node>
                                        <node concept="liA8E" id="gK" role="2OqNvi">
                                          <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                                          <node concept="3VmV3z" id="gN" role="37wK5m">
                                            <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                                            <node concept="3uibUv" id="gR" role="3Vn4Tt">
                                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                            </node>
                                          </node>
                                          <node concept="Xl_RD" id="gO" role="37wK5m">
                                            <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590371(jetbrains.mps.baseLanguage.classifiers.typesystem)" />
                                          </node>
                                          <node concept="Xl_RD" id="gP" role="37wK5m">
                                            <property role="Xl_RC" value="3675217221541911436" />
                                          </node>
                                          <node concept="3clFbT" id="gQ" role="37wK5m">
                                            <property role="3clFbU" value="true" />
                                          </node>
                                        </node>
                                        <node concept="6wLe0" id="gL" role="lGtFl">
                                          <property role="6wLej" value="3675217221541911436" />
                                          <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590371(jetbrains.mps.baseLanguage.classifiers.typesystem)" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="10QFUN" id="gD" role="37wK5m">
                                      <uo k="s:originTrace" v="n:3675217221541911438" />
                                      <node concept="3uibUv" id="gS" role="10QFUM">
                                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                      </node>
                                      <node concept="2OqwBi" id="gT" role="10QFUP">
                                        <uo k="s:originTrace" v="n:3675217221541922127" />
                                        <node concept="1PxgMI" id="gU" role="2Oq$k0">
                                          <uo k="s:originTrace" v="n:3675217221541920127" />
                                          <node concept="chp4Y" id="gW" role="3oSUPX">
                                            <ref role="cht4Q" to="tpee:hK8X2TV" resolve="VariableArityType" />
                                            <uo k="s:originTrace" v="n:3675217221541921212" />
                                          </node>
                                          <node concept="2OqwBi" id="gX" role="1m5AlR">
                                            <uo k="s:originTrace" v="n:3675217221541911439" />
                                            <node concept="3M$PaV" id="gY" role="2Oq$k0">
                                              <ref role="3M$S_o" node="fN" resolve="parameter" />
                                              <uo k="s:originTrace" v="n:3675217221541911440" />
                                            </node>
                                            <node concept="3TrEf2" id="gZ" role="2OqNvi">
                                              <ref role="3Tt5mk" to="tpee:4VkOLwjf83e" resolve="type" />
                                              <uo k="s:originTrace" v="n:3675217221541911441" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3TrEf2" id="gV" role="2OqNvi">
                                          <ref role="3Tt5mk" to="tpee:hK8Xvec" resolve="componentType" />
                                          <uo k="s:originTrace" v="n:3675217221541923931" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3clFbT" id="gE" role="37wK5m" />
                                    <node concept="3clFbT" id="gF" role="37wK5m">
                                      <property role="3clFbU" value="true" />
                                    </node>
                                    <node concept="37vLTw" id="gG" role="37wK5m">
                                      <ref role="3cqZAo" node="gq" resolve="_info_12389875345" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="6wLe0" id="gi" role="lGtFl">
                              <property role="6wLej" value="3675217221541911434" />
                              <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590371(jetbrains.mps.baseLanguage.classifiers.typesystem)" />
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="gf" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <uo k="s:originTrace" v="n:6847626768367730235" />
                          <node concept="2jxLKc" id="h0" role="1tU5fm">
                            <uo k="s:originTrace" v="n:6847626768367730236" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3zACq4" id="g3" role="3cqZAp">
                  <uo k="s:originTrace" v="n:3675217221542006820" />
                </node>
              </node>
              <node concept="2OqwBi" id="fZ" role="3clFbw">
                <uo k="s:originTrace" v="n:3675217221541783374" />
                <node concept="2OqwBi" id="h1" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:3675217221541769622" />
                  <node concept="3M$PaV" id="h3" role="2Oq$k0">
                    <ref role="3M$S_o" node="fN" resolve="parameter" />
                    <uo k="s:originTrace" v="n:3675217221541768472" />
                  </node>
                  <node concept="3TrEf2" id="h4" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:4VkOLwjf83e" resolve="type" />
                    <uo k="s:originTrace" v="n:3675217221541777947" />
                  </node>
                </node>
                <node concept="1mIQ4w" id="h2" role="2OqNvi">
                  <uo k="s:originTrace" v="n:3675217221541784764" />
                  <node concept="chp4Y" id="h5" role="cj9EA">
                    <ref role="cht4Q" to="tpee:hK8X2TV" resolve="VariableArityType" />
                    <uo k="s:originTrace" v="n:3675217221541784951" />
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="g0" role="9aQIa">
                <uo k="s:originTrace" v="n:3675217221541785311" />
                <node concept="3clFbS" id="h6" role="9aQI4">
                  <uo k="s:originTrace" v="n:3675217221541785312" />
                  <node concept="9aQIb" id="h7" role="3cqZAp">
                    <uo k="s:originTrace" v="n:816097550963422882" />
                    <node concept="3clFbS" id="h8" role="9aQI4">
                      <node concept="3cpWs8" id="ha" role="3cqZAp">
                        <node concept="3cpWsn" id="hd" role="3cpWs9">
                          <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                          <node concept="3M$PaV" id="he" role="33vP2m">
                            <ref role="3M$S_o" node="fT" resolve="argument" />
                            <uo k="s:originTrace" v="n:816097550963422891" />
                            <node concept="6wLe0" id="hg" role="lGtFl">
                              <property role="6wLej" value="816097550963422882" />
                              <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590371(jetbrains.mps.baseLanguage.classifiers.typesystem)" />
                            </node>
                          </node>
                          <node concept="3uibUv" id="hf" role="1tU5fm">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="hb" role="3cqZAp">
                        <node concept="3cpWsn" id="hh" role="3cpWs9">
                          <property role="TrG5h" value="_info_12389875345" />
                          <node concept="3uibUv" id="hi" role="1tU5fm">
                            <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                          </node>
                          <node concept="2ShNRf" id="hj" role="33vP2m">
                            <node concept="1pGfFk" id="hk" role="2ShVmc">
                              <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                              <node concept="37vLTw" id="hl" role="37wK5m">
                                <ref role="3cqZAo" node="hd" resolve="_nodeToCheck_1029348928467" />
                              </node>
                              <node concept="10Nm6u" id="hm" role="37wK5m" />
                              <node concept="Xl_RD" id="hn" role="37wK5m">
                                <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590371(jetbrains.mps.baseLanguage.classifiers.typesystem)" />
                              </node>
                              <node concept="Xl_RD" id="ho" role="37wK5m">
                                <property role="Xl_RC" value="816097550963422882" />
                              </node>
                              <node concept="3cmrfG" id="hp" role="37wK5m">
                                <property role="3cmrfH" value="0" />
                              </node>
                              <node concept="10Nm6u" id="hq" role="37wK5m" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="hc" role="3cqZAp">
                        <node concept="2OqwBi" id="hr" role="3clFbG">
                          <node concept="3VmV3z" id="hs" role="2Oq$k0">
                            <property role="3VnrPo" value="typeCheckingContext" />
                            <node concept="3uibUv" id="hu" role="3Vn4Tt">
                              <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                            </node>
                          </node>
                          <node concept="liA8E" id="ht" role="2OqNvi">
                            <ref role="37wK5l" to="u78q:~TypeCheckingContext.createLessThanInequality(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,boolean,boolean,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createLessThanInequality" />
                            <node concept="10QFUN" id="hv" role="37wK5m">
                              <uo k="s:originTrace" v="n:816097550963422883" />
                              <node concept="3uibUv" id="h$" role="10QFUM">
                                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                              </node>
                              <node concept="2OqwBi" id="h_" role="10QFUP">
                                <uo k="s:originTrace" v="n:816097550963422884" />
                                <node concept="3VmV3z" id="hA" role="2Oq$k0">
                                  <property role="3VnrPo" value="typeCheckingContext" />
                                  <node concept="3uibUv" id="hD" role="3Vn4Tt">
                                    <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="hB" role="2OqNvi">
                                  <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                                  <node concept="3VmV3z" id="hE" role="37wK5m">
                                    <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                                    <node concept="3uibUv" id="hI" role="3Vn4Tt">
                                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                    </node>
                                  </node>
                                  <node concept="Xl_RD" id="hF" role="37wK5m">
                                    <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590371(jetbrains.mps.baseLanguage.classifiers.typesystem)" />
                                  </node>
                                  <node concept="Xl_RD" id="hG" role="37wK5m">
                                    <property role="Xl_RC" value="816097550963422884" />
                                  </node>
                                  <node concept="3clFbT" id="hH" role="37wK5m">
                                    <property role="3clFbU" value="true" />
                                  </node>
                                </node>
                                <node concept="6wLe0" id="hC" role="lGtFl">
                                  <property role="6wLej" value="816097550963422884" />
                                  <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590371(jetbrains.mps.baseLanguage.classifiers.typesystem)" />
                                </node>
                              </node>
                            </node>
                            <node concept="10QFUN" id="hw" role="37wK5m">
                              <uo k="s:originTrace" v="n:816097550963422886" />
                              <node concept="3uibUv" id="hJ" role="10QFUM">
                                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                              </node>
                              <node concept="2OqwBi" id="hK" role="10QFUP">
                                <uo k="s:originTrace" v="n:816097550963422887" />
                                <node concept="3M$PaV" id="hL" role="2Oq$k0">
                                  <ref role="3M$S_o" node="fN" resolve="parameter" />
                                  <uo k="s:originTrace" v="n:816097550963422892" />
                                </node>
                                <node concept="3TrEf2" id="hM" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tpee:4VkOLwjf83e" resolve="type" />
                                  <uo k="s:originTrace" v="n:816097550963422889" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbT" id="hx" role="37wK5m" />
                            <node concept="3clFbT" id="hy" role="37wK5m">
                              <property role="3clFbU" value="true" />
                            </node>
                            <node concept="37vLTw" id="hz" role="37wK5m">
                              <ref role="3cqZAo" node="hh" resolve="_info_12389875345" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="6wLe0" id="h9" role="lGtFl">
                      <property role="6wLej" value="816097550963422882" />
                      <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590371(jetbrains.mps.baseLanguage.classifiers.typesystem)" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="eY" role="3cqZAp">
          <uo k="s:originTrace" v="n:3675217221542037025" />
        </node>
        <node concept="3cpWs8" id="eZ" role="3cqZAp">
          <uo k="s:originTrace" v="n:3675217221541589729" />
          <node concept="3cpWsn" id="hN" role="3cpWs9">
            <property role="TrG5h" value="isNumberOfParamsOk" />
            <uo k="s:originTrace" v="n:3675217221541589732" />
            <node concept="10P_77" id="hO" role="1tU5fm">
              <uo k="s:originTrace" v="n:3675217221541589727" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="f0" role="3cqZAp">
          <uo k="s:originTrace" v="n:1219948207338" />
          <node concept="3clFbS" id="hP" role="3clFbx">
            <uo k="s:originTrace" v="n:1219948207339" />
            <node concept="3clFbF" id="hS" role="3cqZAp">
              <uo k="s:originTrace" v="n:1219948392865" />
              <node concept="37vLTI" id="hT" role="3clFbG">
                <uo k="s:originTrace" v="n:1219948393839" />
                <node concept="37vLTw" id="hU" role="37vLTJ">
                  <ref role="3cqZAo" node="hN" resolve="isNumberOfParamsOk" />
                  <uo k="s:originTrace" v="n:3675217221541607475" />
                </node>
                <node concept="2dkUwp" id="hV" role="37vLTx">
                  <uo k="s:originTrace" v="n:1219948464180" />
                  <node concept="3cpWsd" id="hW" role="3uHU7B">
                    <uo k="s:originTrace" v="n:1219948464181" />
                    <node concept="3cmrfG" id="hY" role="3uHU7w">
                      <property role="3cmrfH" value="1" />
                      <uo k="s:originTrace" v="n:1219948464182" />
                    </node>
                    <node concept="2OqwBi" id="hZ" role="3uHU7B">
                      <uo k="s:originTrace" v="n:1219948464183" />
                      <node concept="34oBXx" id="i0" role="2OqNvi">
                        <uo k="s:originTrace" v="n:1227876806330" />
                      </node>
                      <node concept="2OqwBi" id="i1" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:3675217221541590328" />
                        <node concept="2OqwBi" id="i2" role="2Oq$k0">
                          <uo k="s:originTrace" v="n:3675217221541590329" />
                          <node concept="37vLTw" id="i4" role="2Oq$k0">
                            <ref role="3cqZAo" node="eN" resolve="nodeToCheck" />
                            <uo k="s:originTrace" v="n:3675217221541590330" />
                          </node>
                          <node concept="3TrEf2" id="i5" role="2OqNvi">
                            <ref role="3Tt5mk" to="tp4f:hyXtfQh" resolve="method" />
                            <uo k="s:originTrace" v="n:3675217221541590331" />
                          </node>
                        </node>
                        <node concept="3Tsc0h" id="i3" role="2OqNvi">
                          <ref role="3TtcxE" to="tpee:fzclF7Y" resolve="parameter" />
                          <uo k="s:originTrace" v="n:3675217221541590332" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="hX" role="3uHU7w">
                    <uo k="s:originTrace" v="n:1219948471086" />
                    <node concept="2OqwBi" id="i6" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:3675217221541597310" />
                      <node concept="37vLTw" id="i8" role="2Oq$k0">
                        <ref role="3cqZAo" node="eN" resolve="nodeToCheck" />
                        <uo k="s:originTrace" v="n:3675217221541594045" />
                      </node>
                      <node concept="3Tsc0h" id="i9" role="2OqNvi">
                        <ref role="3TtcxE" to="tp4f:hyXxRup" resolve="actualArgument" />
                        <uo k="s:originTrace" v="n:3675217221541603355" />
                      </node>
                    </node>
                    <node concept="34oBXx" id="i7" role="2OqNvi">
                      <uo k="s:originTrace" v="n:1227876806492" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="hQ" role="3clFbw">
            <uo k="s:originTrace" v="n:1219948230309" />
            <node concept="2OqwBi" id="ia" role="2Oq$k0">
              <uo k="s:originTrace" v="n:1219948223140" />
              <node concept="2OqwBi" id="ic" role="2Oq$k0">
                <uo k="s:originTrace" v="n:1219948219982" />
                <node concept="1yVyf7" id="ie" role="2OqNvi">
                  <uo k="s:originTrace" v="n:1219948220876" />
                </node>
                <node concept="2OqwBi" id="if" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:3675217221541580295" />
                  <node concept="2OqwBi" id="ig" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:3675217221541576851" />
                    <node concept="37vLTw" id="ii" role="2Oq$k0">
                      <ref role="3cqZAo" node="eN" resolve="nodeToCheck" />
                      <uo k="s:originTrace" v="n:3675217221541576852" />
                    </node>
                    <node concept="3TrEf2" id="ij" role="2OqNvi">
                      <ref role="3Tt5mk" to="tp4f:hyXtfQh" resolve="method" />
                      <uo k="s:originTrace" v="n:3675217221541576853" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="ih" role="2OqNvi">
                    <ref role="3TtcxE" to="tpee:fzclF7Y" resolve="parameter" />
                    <uo k="s:originTrace" v="n:3675217221541588481" />
                  </node>
                </node>
              </node>
              <node concept="3TrEf2" id="id" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:4VkOLwjf83e" resolve="type" />
                <uo k="s:originTrace" v="n:1219948228795" />
              </node>
            </node>
            <node concept="1mIQ4w" id="ib" role="2OqNvi">
              <uo k="s:originTrace" v="n:1219948234219" />
              <node concept="chp4Y" id="ik" role="cj9EA">
                <ref role="cht4Q" to="tpee:hK8X2TV" resolve="VariableArityType" />
                <uo k="s:originTrace" v="n:1219948250252" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="hR" role="9aQIa">
            <uo k="s:originTrace" v="n:1219948268826" />
            <node concept="3clFbS" id="il" role="9aQI4">
              <uo k="s:originTrace" v="n:1219948268827" />
              <node concept="3clFbF" id="im" role="3cqZAp">
                <uo k="s:originTrace" v="n:1219948287255" />
                <node concept="37vLTI" id="in" role="3clFbG">
                  <uo k="s:originTrace" v="n:1219948290679" />
                  <node concept="37vLTw" id="io" role="37vLTJ">
                    <ref role="3cqZAo" node="hN" resolve="isNumberOfParamsOk" />
                    <uo k="s:originTrace" v="n:3675217221541611368" />
                  </node>
                  <node concept="3clFbC" id="ip" role="37vLTx">
                    <uo k="s:originTrace" v="n:1219948318712" />
                    <node concept="2OqwBi" id="iq" role="3uHU7w">
                      <uo k="s:originTrace" v="n:1219948336244" />
                      <node concept="34oBXx" id="is" role="2OqNvi">
                        <uo k="s:originTrace" v="n:1227876806548" />
                      </node>
                      <node concept="2OqwBi" id="it" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:3675217221541619624" />
                        <node concept="37vLTw" id="iu" role="2Oq$k0">
                          <ref role="3cqZAo" node="eN" resolve="nodeToCheck" />
                          <uo k="s:originTrace" v="n:3675217221541619625" />
                        </node>
                        <node concept="3Tsc0h" id="iv" role="2OqNvi">
                          <ref role="3TtcxE" to="tp4f:hyXxRup" resolve="actualArgument" />
                          <uo k="s:originTrace" v="n:3675217221541619626" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="ir" role="3uHU7B">
                      <uo k="s:originTrace" v="n:1219948309522" />
                      <node concept="34oBXx" id="iw" role="2OqNvi">
                        <uo k="s:originTrace" v="n:1227876806438" />
                      </node>
                      <node concept="2OqwBi" id="ix" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:3675217221541615259" />
                        <node concept="2OqwBi" id="iy" role="2Oq$k0">
                          <uo k="s:originTrace" v="n:3675217221541615260" />
                          <node concept="37vLTw" id="i$" role="2Oq$k0">
                            <ref role="3cqZAo" node="eN" resolve="nodeToCheck" />
                            <uo k="s:originTrace" v="n:3675217221541615261" />
                          </node>
                          <node concept="3TrEf2" id="i_" role="2OqNvi">
                            <ref role="3Tt5mk" to="tp4f:hyXtfQh" resolve="method" />
                            <uo k="s:originTrace" v="n:3675217221541615262" />
                          </node>
                        </node>
                        <node concept="3Tsc0h" id="iz" role="2OqNvi">
                          <ref role="3TtcxE" to="tpee:fzclF7Y" resolve="parameter" />
                          <uo k="s:originTrace" v="n:3675217221541615263" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="f1" role="3cqZAp">
          <uo k="s:originTrace" v="n:3675217221541573591" />
        </node>
        <node concept="3clFbJ" id="f2" role="3cqZAp">
          <uo k="s:originTrace" v="n:1205854636586" />
          <node concept="3clFbS" id="iA" role="3clFbx">
            <uo k="s:originTrace" v="n:1205854636587" />
            <node concept="9aQIb" id="iC" role="3cqZAp">
              <uo k="s:originTrace" v="n:1205854659855" />
              <node concept="3clFbS" id="iD" role="9aQI4">
                <node concept="3cpWs8" id="iF" role="3cqZAp">
                  <node concept="3cpWsn" id="iH" role="3cpWs9">
                    <property role="TrG5h" value="errorTarget" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3uibUv" id="iI" role="1tU5fm">
                      <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                    </node>
                    <node concept="2ShNRf" id="iJ" role="33vP2m">
                      <node concept="1pGfFk" id="iK" role="2ShVmc">
                        <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="iG" role="3cqZAp">
                  <node concept="3cpWsn" id="iL" role="3cpWs9">
                    <property role="TrG5h" value="_reporter_2309309498" />
                    <node concept="3uibUv" id="iM" role="1tU5fm">
                      <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                    </node>
                    <node concept="2OqwBi" id="iN" role="33vP2m">
                      <node concept="3VmV3z" id="iO" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="iQ" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="iP" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                        <node concept="37vLTw" id="iR" role="37wK5m">
                          <ref role="3cqZAo" node="eN" resolve="nodeToCheck" />
                          <uo k="s:originTrace" v="n:1205854669532" />
                        </node>
                        <node concept="Xl_RD" id="iS" role="37wK5m">
                          <property role="Xl_RC" value="Number of parameters doesn't match" />
                          <uo k="s:originTrace" v="n:1205854661358" />
                        </node>
                        <node concept="Xl_RD" id="iT" role="37wK5m">
                          <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590371(jetbrains.mps.baseLanguage.classifiers.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="iU" role="37wK5m">
                          <property role="Xl_RC" value="1205854659855" />
                        </node>
                        <node concept="10Nm6u" id="iV" role="37wK5m" />
                        <node concept="37vLTw" id="iW" role="37wK5m">
                          <ref role="3cqZAo" node="iH" resolve="errorTarget" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="6wLe0" id="iE" role="lGtFl">
                <property role="6wLej" value="1205854659855" />
                <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590371(jetbrains.mps.baseLanguage.classifiers.typesystem)" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="iB" role="3clFbw">
            <uo k="s:originTrace" v="n:3675217221541627558" />
            <node concept="37vLTw" id="iX" role="3fr31v">
              <ref role="3cqZAo" node="hN" resolve="isNumberOfParamsOk" />
              <uo k="s:originTrace" v="n:3675217221541628238" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="f3" role="3cqZAp">
          <uo k="s:originTrace" v="n:3675217221541911131" />
        </node>
        <node concept="3clFbH" id="f4" role="3cqZAp">
          <uo k="s:originTrace" v="n:3675217221541635786" />
        </node>
      </node>
      <node concept="3Tm1VV" id="eR" role="1B3o_S">
        <uo k="s:originTrace" v="n:1205769672845" />
      </node>
    </node>
    <node concept="3clFb_" id="eD" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:1205769672845" />
      <node concept="3bZ5Sz" id="iY" role="3clF45">
        <uo k="s:originTrace" v="n:1205769672845" />
      </node>
      <node concept="3clFbS" id="iZ" role="3clF47">
        <uo k="s:originTrace" v="n:1205769672845" />
        <node concept="3cpWs6" id="j1" role="3cqZAp">
          <uo k="s:originTrace" v="n:1205769672845" />
          <node concept="35c_gC" id="j2" role="3cqZAk">
            <ref role="35c_gD" to="tp4f:hyXshSD" resolve="DefaultClassifierMethodCallOperation" />
            <uo k="s:originTrace" v="n:1205769672845" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="j0" role="1B3o_S">
        <uo k="s:originTrace" v="n:1205769672845" />
      </node>
    </node>
    <node concept="3clFb_" id="eE" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:1205769672845" />
      <node concept="37vLTG" id="j3" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:1205769672845" />
        <node concept="3Tqbb2" id="j7" role="1tU5fm">
          <uo k="s:originTrace" v="n:1205769672845" />
        </node>
      </node>
      <node concept="3clFbS" id="j4" role="3clF47">
        <uo k="s:originTrace" v="n:1205769672845" />
        <node concept="9aQIb" id="j8" role="3cqZAp">
          <uo k="s:originTrace" v="n:1205769672845" />
          <node concept="3clFbS" id="j9" role="9aQI4">
            <uo k="s:originTrace" v="n:1205769672845" />
            <node concept="3cpWs6" id="ja" role="3cqZAp">
              <uo k="s:originTrace" v="n:1205769672845" />
              <node concept="2ShNRf" id="jb" role="3cqZAk">
                <uo k="s:originTrace" v="n:1205769672845" />
                <node concept="1pGfFk" id="jc" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:1205769672845" />
                  <node concept="2OqwBi" id="jd" role="37wK5m">
                    <uo k="s:originTrace" v="n:1205769672845" />
                    <node concept="2OqwBi" id="jf" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:1205769672845" />
                      <node concept="liA8E" id="jh" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:1205769672845" />
                      </node>
                      <node concept="2JrnkZ" id="ji" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:1205769672845" />
                        <node concept="37vLTw" id="jj" role="2JrQYb">
                          <ref role="3cqZAo" node="j3" resolve="argument" />
                          <uo k="s:originTrace" v="n:1205769672845" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="jg" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:1205769672845" />
                      <node concept="1rXfSq" id="jk" role="37wK5m">
                        <ref role="37wK5l" node="eD" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:1205769672845" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="je" role="37wK5m">
                    <uo k="s:originTrace" v="n:1205769672845" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="j5" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:1205769672845" />
      </node>
      <node concept="3Tm1VV" id="j6" role="1B3o_S">
        <uo k="s:originTrace" v="n:1205769672845" />
      </node>
    </node>
    <node concept="3clFb_" id="eF" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:1205769672845" />
      <node concept="3clFbS" id="jl" role="3clF47">
        <uo k="s:originTrace" v="n:1205769672845" />
        <node concept="3cpWs6" id="jo" role="3cqZAp">
          <uo k="s:originTrace" v="n:1205769672845" />
          <node concept="3clFbT" id="jp" role="3cqZAk">
            <uo k="s:originTrace" v="n:1205769672845" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="jm" role="3clF45">
        <uo k="s:originTrace" v="n:1205769672845" />
      </node>
      <node concept="3Tm1VV" id="jn" role="1B3o_S">
        <uo k="s:originTrace" v="n:1205769672845" />
      </node>
    </node>
    <node concept="3uibUv" id="eG" role="EKbjA">
      <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:1205769672845" />
    </node>
    <node concept="3uibUv" id="eH" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractInferenceRule_Runtime" resolve="AbstractInferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:1205769672845" />
    </node>
    <node concept="3Tm1VV" id="eI" role="1B3o_S">
      <uo k="s:originTrace" v="n:1205769672845" />
    </node>
  </node>
  <node concept="312cEu" id="jq">
    <property role="TrG5h" value="typeof_SuperClassifierExpresson_InferenceRule" />
    <uo k="s:originTrace" v="n:1217433986271" />
    <node concept="3clFbW" id="jr" role="jymVt">
      <uo k="s:originTrace" v="n:1217433986271" />
      <node concept="3clFbS" id="jz" role="3clF47">
        <uo k="s:originTrace" v="n:1217433986271" />
      </node>
      <node concept="3Tm1VV" id="j$" role="1B3o_S">
        <uo k="s:originTrace" v="n:1217433986271" />
      </node>
      <node concept="3cqZAl" id="j_" role="3clF45">
        <uo k="s:originTrace" v="n:1217433986271" />
      </node>
    </node>
    <node concept="3clFb_" id="js" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:1217433986271" />
      <node concept="3cqZAl" id="jA" role="3clF45">
        <uo k="s:originTrace" v="n:1217433986271" />
      </node>
      <node concept="37vLTG" id="jB" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="expresson" />
        <uo k="s:originTrace" v="n:1217433986271" />
        <node concept="3Tqbb2" id="jG" role="1tU5fm">
          <uo k="s:originTrace" v="n:1217433986271" />
        </node>
      </node>
      <node concept="37vLTG" id="jC" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:1217433986271" />
        <node concept="3uibUv" id="jH" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:1217433986271" />
        </node>
      </node>
      <node concept="37vLTG" id="jD" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:1217433986271" />
        <node concept="3uibUv" id="jI" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:1217433986271" />
        </node>
      </node>
      <node concept="3clFbS" id="jE" role="3clF47">
        <uo k="s:originTrace" v="n:1217433986272" />
        <node concept="3cpWs8" id="jJ" role="3cqZAp">
          <uo k="s:originTrace" v="n:1217434001441" />
          <node concept="3cpWsn" id="jL" role="3cpWs9">
            <property role="TrG5h" value="classifier" />
            <uo k="s:originTrace" v="n:1217434001442" />
            <node concept="3Tqbb2" id="jM" role="1tU5fm">
              <ref role="ehGHo" to="tp4f:hyWqMFP" resolve="IClassifier" />
              <uo k="s:originTrace" v="n:1217434001443" />
            </node>
            <node concept="2OqwBi" id="jN" role="33vP2m">
              <uo k="s:originTrace" v="n:1217434001444" />
              <node concept="37vLTw" id="jO" role="2Oq$k0">
                <ref role="3cqZAo" node="jB" resolve="expresson" />
                <uo k="s:originTrace" v="n:1217434014431" />
              </node>
              <node concept="3zqWPK" id="jP" role="2OqNvi">
                <ref role="37wK5l" to="tp4h:hHOIkvz" resolve="getClassifier" />
                <uo k="s:originTrace" v="n:8085146484218840077" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="jK" role="3cqZAp">
          <uo k="s:originTrace" v="n:1217434001447" />
          <node concept="3clFbS" id="jQ" role="3clFbx">
            <uo k="s:originTrace" v="n:1217434001448" />
            <node concept="9aQIb" id="jT" role="3cqZAp">
              <uo k="s:originTrace" v="n:1217434001449" />
              <node concept="3clFbS" id="jU" role="9aQI4">
                <node concept="3cpWs8" id="jW" role="3cqZAp">
                  <node concept="3cpWsn" id="jZ" role="3cpWs9">
                    <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                    <node concept="37vLTw" id="k0" role="33vP2m">
                      <ref role="3cqZAo" node="jB" resolve="expresson" />
                      <uo k="s:originTrace" v="n:1217434080402" />
                      <node concept="6wLe0" id="k2" role="lGtFl">
                        <property role="6wLej" value="1217434001449" />
                        <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590371(jetbrains.mps.baseLanguage.classifiers.typesystem)" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="k1" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="jX" role="3cqZAp">
                  <node concept="3cpWsn" id="k3" role="3cpWs9">
                    <property role="TrG5h" value="_info_12389875345" />
                    <node concept="3uibUv" id="k4" role="1tU5fm">
                      <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                    </node>
                    <node concept="2ShNRf" id="k5" role="33vP2m">
                      <node concept="1pGfFk" id="k6" role="2ShVmc">
                        <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                        <node concept="37vLTw" id="k7" role="37wK5m">
                          <ref role="3cqZAo" node="jZ" resolve="_nodeToCheck_1029348928467" />
                        </node>
                        <node concept="10Nm6u" id="k8" role="37wK5m" />
                        <node concept="Xl_RD" id="k9" role="37wK5m">
                          <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590371(jetbrains.mps.baseLanguage.classifiers.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="ka" role="37wK5m">
                          <property role="Xl_RC" value="1217434001449" />
                        </node>
                        <node concept="3cmrfG" id="kb" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="10Nm6u" id="kc" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="jY" role="3cqZAp">
                  <node concept="2OqwBi" id="kd" role="3clFbG">
                    <node concept="3VmV3z" id="ke" role="2Oq$k0">
                      <property role="3VnrPo" value="typeCheckingContext" />
                      <node concept="3uibUv" id="kg" role="3Vn4Tt">
                        <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                      </node>
                    </node>
                    <node concept="liA8E" id="kf" role="2OqNvi">
                      <ref role="37wK5l" to="u78q:~TypeCheckingContext.createEquation(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createEquation" />
                      <node concept="10QFUN" id="kh" role="37wK5m">
                        <uo k="s:originTrace" v="n:1217434001450" />
                        <node concept="3uibUv" id="kk" role="10QFUM">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                        <node concept="2OqwBi" id="kl" role="10QFUP">
                          <uo k="s:originTrace" v="n:1217434001451" />
                          <node concept="3VmV3z" id="km" role="2Oq$k0">
                            <property role="3VnrPo" value="typeCheckingContext" />
                            <node concept="3uibUv" id="kp" role="3Vn4Tt">
                              <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                            </node>
                          </node>
                          <node concept="liA8E" id="kn" role="2OqNvi">
                            <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                            <node concept="3VmV3z" id="kq" role="37wK5m">
                              <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                              <node concept="3uibUv" id="ku" role="3Vn4Tt">
                                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="kr" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590371(jetbrains.mps.baseLanguage.classifiers.typesystem)" />
                            </node>
                            <node concept="Xl_RD" id="ks" role="37wK5m">
                              <property role="Xl_RC" value="1217434001451" />
                            </node>
                            <node concept="3clFbT" id="kt" role="37wK5m">
                              <property role="3clFbU" value="true" />
                            </node>
                          </node>
                          <node concept="6wLe0" id="ko" role="lGtFl">
                            <property role="6wLej" value="1217434001451" />
                            <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590371(jetbrains.mps.baseLanguage.classifiers.typesystem)" />
                          </node>
                        </node>
                      </node>
                      <node concept="10QFUN" id="ki" role="37wK5m">
                        <uo k="s:originTrace" v="n:1217434001453" />
                        <node concept="3uibUv" id="kv" role="10QFUM">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                        <node concept="2OqwBi" id="kw" role="10QFUP">
                          <uo k="s:originTrace" v="n:1217434001454" />
                          <node concept="37vLTw" id="kx" role="2Oq$k0">
                            <ref role="3cqZAo" node="jL" resolve="classifier" />
                            <uo k="s:originTrace" v="n:4265636116363085093" />
                          </node>
                          <node concept="3zqWPK" id="ky" role="2OqNvi">
                            <ref role="37wK5l" to="tp4h:hHOGPWW" resolve="createSuperType" />
                            <uo k="s:originTrace" v="n:8085146484218840079" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="kj" role="37wK5m">
                        <ref role="3cqZAo" node="k3" resolve="_info_12389875345" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="6wLe0" id="jV" role="lGtFl">
                <property role="6wLej" value="1217434001449" />
                <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590371(jetbrains.mps.baseLanguage.classifiers.typesystem)" />
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="jR" role="3clFbw">
            <uo k="s:originTrace" v="n:1217434001457" />
            <node concept="10Nm6u" id="kz" role="3uHU7w">
              <uo k="s:originTrace" v="n:1217434001458" />
            </node>
            <node concept="37vLTw" id="k$" role="3uHU7B">
              <ref role="3cqZAo" node="jL" resolve="classifier" />
              <uo k="s:originTrace" v="n:4265636116363065023" />
            </node>
          </node>
          <node concept="9aQIb" id="jS" role="9aQIa">
            <uo k="s:originTrace" v="n:1217434001460" />
            <node concept="3clFbS" id="k_" role="9aQI4">
              <uo k="s:originTrace" v="n:1217434001461" />
              <node concept="9aQIb" id="kA" role="3cqZAp">
                <uo k="s:originTrace" v="n:1217434001462" />
                <node concept="3clFbS" id="kB" role="9aQI4">
                  <node concept="3cpWs8" id="kD" role="3cqZAp">
                    <node concept="3cpWsn" id="kF" role="3cpWs9">
                      <property role="TrG5h" value="errorTarget" />
                      <property role="3TUv4t" value="true" />
                      <node concept="3uibUv" id="kG" role="1tU5fm">
                        <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                      </node>
                      <node concept="2ShNRf" id="kH" role="33vP2m">
                        <node concept="1pGfFk" id="kI" role="2ShVmc">
                          <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="kE" role="3cqZAp">
                    <node concept="3cpWsn" id="kJ" role="3cpWs9">
                      <property role="TrG5h" value="_reporter_2309309498" />
                      <node concept="3uibUv" id="kK" role="1tU5fm">
                        <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                      </node>
                      <node concept="2OqwBi" id="kL" role="33vP2m">
                        <node concept="3VmV3z" id="kM" role="2Oq$k0">
                          <property role="3VnrPo" value="typeCheckingContext" />
                          <node concept="3uibUv" id="kO" role="3Vn4Tt">
                            <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                          </node>
                        </node>
                        <node concept="liA8E" id="kN" role="2OqNvi">
                          <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                          <node concept="37vLTw" id="kP" role="37wK5m">
                            <ref role="3cqZAo" node="jB" resolve="expresson" />
                            <uo k="s:originTrace" v="n:1217434095181" />
                          </node>
                          <node concept="Xl_RD" id="kQ" role="37wK5m">
                            <property role="Xl_RC" value="super classifier expression isn't applicable in this place" />
                            <uo k="s:originTrace" v="n:1217434001463" />
                          </node>
                          <node concept="Xl_RD" id="kR" role="37wK5m">
                            <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590371(jetbrains.mps.baseLanguage.classifiers.typesystem)" />
                          </node>
                          <node concept="Xl_RD" id="kS" role="37wK5m">
                            <property role="Xl_RC" value="1217434001462" />
                          </node>
                          <node concept="10Nm6u" id="kT" role="37wK5m" />
                          <node concept="37vLTw" id="kU" role="37wK5m">
                            <ref role="3cqZAo" node="kF" resolve="errorTarget" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="6wLe0" id="kC" role="lGtFl">
                  <property role="6wLej" value="1217434001462" />
                  <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590371(jetbrains.mps.baseLanguage.classifiers.typesystem)" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="jF" role="1B3o_S">
        <uo k="s:originTrace" v="n:1217433986271" />
      </node>
    </node>
    <node concept="3clFb_" id="jt" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:1217433986271" />
      <node concept="3bZ5Sz" id="kV" role="3clF45">
        <uo k="s:originTrace" v="n:1217433986271" />
      </node>
      <node concept="3clFbS" id="kW" role="3clF47">
        <uo k="s:originTrace" v="n:1217433986271" />
        <node concept="3cpWs6" id="kY" role="3cqZAp">
          <uo k="s:originTrace" v="n:1217433986271" />
          <node concept="35c_gC" id="kZ" role="3cqZAk">
            <ref role="35c_gD" to="tp4f:hHOG3lW" resolve="SuperClassifierExpresson" />
            <uo k="s:originTrace" v="n:1217433986271" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="kX" role="1B3o_S">
        <uo k="s:originTrace" v="n:1217433986271" />
      </node>
    </node>
    <node concept="3clFb_" id="ju" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:1217433986271" />
      <node concept="37vLTG" id="l0" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:1217433986271" />
        <node concept="3Tqbb2" id="l4" role="1tU5fm">
          <uo k="s:originTrace" v="n:1217433986271" />
        </node>
      </node>
      <node concept="3clFbS" id="l1" role="3clF47">
        <uo k="s:originTrace" v="n:1217433986271" />
        <node concept="9aQIb" id="l5" role="3cqZAp">
          <uo k="s:originTrace" v="n:1217433986271" />
          <node concept="3clFbS" id="l6" role="9aQI4">
            <uo k="s:originTrace" v="n:1217433986271" />
            <node concept="3cpWs6" id="l7" role="3cqZAp">
              <uo k="s:originTrace" v="n:1217433986271" />
              <node concept="2ShNRf" id="l8" role="3cqZAk">
                <uo k="s:originTrace" v="n:1217433986271" />
                <node concept="1pGfFk" id="l9" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:1217433986271" />
                  <node concept="2OqwBi" id="la" role="37wK5m">
                    <uo k="s:originTrace" v="n:1217433986271" />
                    <node concept="2OqwBi" id="lc" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:1217433986271" />
                      <node concept="liA8E" id="le" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:1217433986271" />
                      </node>
                      <node concept="2JrnkZ" id="lf" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:1217433986271" />
                        <node concept="37vLTw" id="lg" role="2JrQYb">
                          <ref role="3cqZAo" node="l0" resolve="argument" />
                          <uo k="s:originTrace" v="n:1217433986271" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="ld" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:1217433986271" />
                      <node concept="1rXfSq" id="lh" role="37wK5m">
                        <ref role="37wK5l" node="jt" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:1217433986271" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="lb" role="37wK5m">
                    <uo k="s:originTrace" v="n:1217433986271" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="l2" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:1217433986271" />
      </node>
      <node concept="3Tm1VV" id="l3" role="1B3o_S">
        <uo k="s:originTrace" v="n:1217433986271" />
      </node>
    </node>
    <node concept="3clFb_" id="jv" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:1217433986271" />
      <node concept="3clFbS" id="li" role="3clF47">
        <uo k="s:originTrace" v="n:1217433986271" />
        <node concept="3cpWs6" id="ll" role="3cqZAp">
          <uo k="s:originTrace" v="n:1217433986271" />
          <node concept="3clFbT" id="lm" role="3cqZAk">
            <uo k="s:originTrace" v="n:1217433986271" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="lj" role="3clF45">
        <uo k="s:originTrace" v="n:1217433986271" />
      </node>
      <node concept="3Tm1VV" id="lk" role="1B3o_S">
        <uo k="s:originTrace" v="n:1217433986271" />
      </node>
    </node>
    <node concept="3uibUv" id="jw" role="EKbjA">
      <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:1217433986271" />
    </node>
    <node concept="3uibUv" id="jx" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractInferenceRule_Runtime" resolve="AbstractInferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:1217433986271" />
    </node>
    <node concept="3Tm1VV" id="jy" role="1B3o_S">
      <uo k="s:originTrace" v="n:1217433986271" />
    </node>
  </node>
  <node concept="312cEu" id="ln">
    <property role="TrG5h" value="typeof_ThisClassifierExpresson_InferenceRule" />
    <uo k="s:originTrace" v="n:1205753100058" />
    <node concept="3clFbW" id="lo" role="jymVt">
      <uo k="s:originTrace" v="n:1205753100058" />
      <node concept="3clFbS" id="lw" role="3clF47">
        <uo k="s:originTrace" v="n:1205753100058" />
      </node>
      <node concept="3Tm1VV" id="lx" role="1B3o_S">
        <uo k="s:originTrace" v="n:1205753100058" />
      </node>
      <node concept="3cqZAl" id="ly" role="3clF45">
        <uo k="s:originTrace" v="n:1205753100058" />
      </node>
    </node>
    <node concept="3clFb_" id="lp" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:1205753100058" />
      <node concept="3cqZAl" id="lz" role="3clF45">
        <uo k="s:originTrace" v="n:1205753100058" />
      </node>
      <node concept="37vLTG" id="l$" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="nodeToCheck" />
        <uo k="s:originTrace" v="n:1205753100058" />
        <node concept="3Tqbb2" id="lD" role="1tU5fm">
          <uo k="s:originTrace" v="n:1205753100058" />
        </node>
      </node>
      <node concept="37vLTG" id="l_" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:1205753100058" />
        <node concept="3uibUv" id="lE" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:1205753100058" />
        </node>
      </node>
      <node concept="37vLTG" id="lA" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:1205753100058" />
        <node concept="3uibUv" id="lF" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:1205753100058" />
        </node>
      </node>
      <node concept="3clFbS" id="lB" role="3clF47">
        <uo k="s:originTrace" v="n:1205753100059" />
        <node concept="3cpWs8" id="lG" role="3cqZAp">
          <uo k="s:originTrace" v="n:1205753102905" />
          <node concept="3cpWsn" id="lI" role="3cpWs9">
            <property role="TrG5h" value="classifier" />
            <uo k="s:originTrace" v="n:1205753102906" />
            <node concept="3Tqbb2" id="lJ" role="1tU5fm">
              <ref role="ehGHo" to="tp4f:hyWqMFP" resolve="IClassifier" />
              <uo k="s:originTrace" v="n:1205753102907" />
            </node>
            <node concept="2OqwBi" id="lK" role="33vP2m">
              <uo k="s:originTrace" v="n:1205753109223" />
              <node concept="37vLTw" id="lL" role="2Oq$k0">
                <ref role="3cqZAo" node="l$" resolve="nodeToCheck" />
                <uo k="s:originTrace" v="n:1205753108972" />
              </node>
              <node concept="3zqWPK" id="lM" role="2OqNvi">
                <ref role="37wK5l" to="tp4h:hEwJeDN" resolve="getClassifier" />
                <uo k="s:originTrace" v="n:8085146484218840068" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="lH" role="3cqZAp">
          <uo k="s:originTrace" v="n:1205753160114" />
          <node concept="3clFbS" id="lN" role="3clFbx">
            <uo k="s:originTrace" v="n:1205753160115" />
            <node concept="9aQIb" id="lQ" role="3cqZAp">
              <uo k="s:originTrace" v="n:1205753196184" />
              <node concept="3clFbS" id="lR" role="9aQI4">
                <node concept="3cpWs8" id="lT" role="3cqZAp">
                  <node concept="3cpWsn" id="lW" role="3cpWs9">
                    <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                    <node concept="37vLTw" id="lX" role="33vP2m">
                      <ref role="3cqZAo" node="l$" resolve="nodeToCheck" />
                      <uo k="s:originTrace" v="n:1205753199009" />
                      <node concept="6wLe0" id="lZ" role="lGtFl">
                        <property role="6wLej" value="1205753196184" />
                        <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590371(jetbrains.mps.baseLanguage.classifiers.typesystem)" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="lY" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="lU" role="3cqZAp">
                  <node concept="3cpWsn" id="m0" role="3cpWs9">
                    <property role="TrG5h" value="_info_12389875345" />
                    <node concept="3uibUv" id="m1" role="1tU5fm">
                      <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                    </node>
                    <node concept="2ShNRf" id="m2" role="33vP2m">
                      <node concept="1pGfFk" id="m3" role="2ShVmc">
                        <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                        <node concept="37vLTw" id="m4" role="37wK5m">
                          <ref role="3cqZAo" node="lW" resolve="_nodeToCheck_1029348928467" />
                        </node>
                        <node concept="10Nm6u" id="m5" role="37wK5m" />
                        <node concept="Xl_RD" id="m6" role="37wK5m">
                          <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590371(jetbrains.mps.baseLanguage.classifiers.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="m7" role="37wK5m">
                          <property role="Xl_RC" value="1205753196184" />
                        </node>
                        <node concept="3cmrfG" id="m8" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="10Nm6u" id="m9" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="lV" role="3cqZAp">
                  <node concept="2OqwBi" id="ma" role="3clFbG">
                    <node concept="3VmV3z" id="mb" role="2Oq$k0">
                      <property role="3VnrPo" value="typeCheckingContext" />
                      <node concept="3uibUv" id="md" role="3Vn4Tt">
                        <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                      </node>
                    </node>
                    <node concept="liA8E" id="mc" role="2OqNvi">
                      <ref role="37wK5l" to="u78q:~TypeCheckingContext.createEquation(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createEquation" />
                      <node concept="10QFUN" id="me" role="37wK5m">
                        <uo k="s:originTrace" v="n:1205753197518" />
                        <node concept="3uibUv" id="mh" role="10QFUM">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                        <node concept="2OqwBi" id="mi" role="10QFUP">
                          <uo k="s:originTrace" v="n:1205753197519" />
                          <node concept="3VmV3z" id="mj" role="2Oq$k0">
                            <property role="3VnrPo" value="typeCheckingContext" />
                            <node concept="3uibUv" id="mm" role="3Vn4Tt">
                              <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                            </node>
                          </node>
                          <node concept="liA8E" id="mk" role="2OqNvi">
                            <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                            <node concept="3VmV3z" id="mn" role="37wK5m">
                              <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                              <node concept="3uibUv" id="mr" role="3Vn4Tt">
                                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="mo" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590371(jetbrains.mps.baseLanguage.classifiers.typesystem)" />
                            </node>
                            <node concept="Xl_RD" id="mp" role="37wK5m">
                              <property role="Xl_RC" value="1205753197519" />
                            </node>
                            <node concept="3clFbT" id="mq" role="37wK5m">
                              <property role="3clFbU" value="true" />
                            </node>
                          </node>
                          <node concept="6wLe0" id="ml" role="lGtFl">
                            <property role="6wLej" value="1205753197519" />
                            <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590371(jetbrains.mps.baseLanguage.classifiers.typesystem)" />
                          </node>
                        </node>
                      </node>
                      <node concept="10QFUN" id="mf" role="37wK5m">
                        <uo k="s:originTrace" v="n:1205753203193" />
                        <node concept="3uibUv" id="ms" role="10QFUM">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                        <node concept="2OqwBi" id="mt" role="10QFUP">
                          <uo k="s:originTrace" v="n:1205753203539" />
                          <node concept="37vLTw" id="mu" role="2Oq$k0">
                            <ref role="3cqZAo" node="lI" resolve="classifier" />
                            <uo k="s:originTrace" v="n:4265636116363063957" />
                          </node>
                          <node concept="3zqWPK" id="mv" role="2OqNvi">
                            <ref role="37wK5l" to="tp4h:hEwJimy" resolve="createType" />
                            <uo k="s:originTrace" v="n:8085146484218840070" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="mg" role="37wK5m">
                        <ref role="3cqZAo" node="m0" resolve="_info_12389875345" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="6wLe0" id="lS" role="lGtFl">
                <property role="6wLej" value="1205753196184" />
                <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590371(jetbrains.mps.baseLanguage.classifiers.typesystem)" />
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="lO" role="3clFbw">
            <uo k="s:originTrace" v="n:1205753161513" />
            <node concept="10Nm6u" id="mw" role="3uHU7w">
              <uo k="s:originTrace" v="n:1205753162377" />
            </node>
            <node concept="37vLTw" id="mx" role="3uHU7B">
              <ref role="3cqZAo" node="lI" resolve="classifier" />
              <uo k="s:originTrace" v="n:4265636116363065729" />
            </node>
          </node>
          <node concept="9aQIb" id="lP" role="9aQIa">
            <uo k="s:originTrace" v="n:1205753208054" />
            <node concept="3clFbS" id="my" role="9aQI4">
              <uo k="s:originTrace" v="n:1205753208055" />
              <node concept="9aQIb" id="mz" role="3cqZAp">
                <uo k="s:originTrace" v="n:1205753211126" />
                <node concept="3clFbS" id="m$" role="9aQI4">
                  <node concept="3cpWs8" id="mA" role="3cqZAp">
                    <node concept="3cpWsn" id="mC" role="3cpWs9">
                      <property role="TrG5h" value="errorTarget" />
                      <property role="3TUv4t" value="true" />
                      <node concept="3uibUv" id="mD" role="1tU5fm">
                        <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                      </node>
                      <node concept="2ShNRf" id="mE" role="33vP2m">
                        <node concept="1pGfFk" id="mF" role="2ShVmc">
                          <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="mB" role="3cqZAp">
                    <node concept="3cpWsn" id="mG" role="3cpWs9">
                      <property role="TrG5h" value="_reporter_2309309498" />
                      <node concept="3uibUv" id="mH" role="1tU5fm">
                        <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                      </node>
                      <node concept="2OqwBi" id="mI" role="33vP2m">
                        <node concept="3VmV3z" id="mJ" role="2Oq$k0">
                          <property role="3VnrPo" value="typeCheckingContext" />
                          <node concept="3uibUv" id="mL" role="3Vn4Tt">
                            <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                          </node>
                        </node>
                        <node concept="liA8E" id="mK" role="2OqNvi">
                          <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                          <node concept="37vLTw" id="mM" role="37wK5m">
                            <ref role="3cqZAo" node="l$" resolve="nodeToCheck" />
                            <uo k="s:originTrace" v="n:1205753270878" />
                          </node>
                          <node concept="Xl_RD" id="mN" role="37wK5m">
                            <property role="Xl_RC" value="this classifier expression isn't applicable in this place" />
                            <uo k="s:originTrace" v="n:1205753259302" />
                          </node>
                          <node concept="Xl_RD" id="mO" role="37wK5m">
                            <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590371(jetbrains.mps.baseLanguage.classifiers.typesystem)" />
                          </node>
                          <node concept="Xl_RD" id="mP" role="37wK5m">
                            <property role="Xl_RC" value="1205753211126" />
                          </node>
                          <node concept="10Nm6u" id="mQ" role="37wK5m" />
                          <node concept="37vLTw" id="mR" role="37wK5m">
                            <ref role="3cqZAo" node="mC" resolve="errorTarget" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="6wLe0" id="m_" role="lGtFl">
                  <property role="6wLej" value="1205753211126" />
                  <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590371(jetbrains.mps.baseLanguage.classifiers.typesystem)" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="lC" role="1B3o_S">
        <uo k="s:originTrace" v="n:1205753100058" />
      </node>
    </node>
    <node concept="3clFb_" id="lq" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:1205753100058" />
      <node concept="3bZ5Sz" id="mS" role="3clF45">
        <uo k="s:originTrace" v="n:1205753100058" />
      </node>
      <node concept="3clFbS" id="mT" role="3clF47">
        <uo k="s:originTrace" v="n:1205753100058" />
        <node concept="3cpWs6" id="mV" role="3cqZAp">
          <uo k="s:originTrace" v="n:1205753100058" />
          <node concept="35c_gC" id="mW" role="3cqZAk">
            <ref role="35c_gD" to="tp4f:hyWthE1" resolve="ThisClassifierExpression" />
            <uo k="s:originTrace" v="n:1205753100058" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="mU" role="1B3o_S">
        <uo k="s:originTrace" v="n:1205753100058" />
      </node>
    </node>
    <node concept="3clFb_" id="lr" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:1205753100058" />
      <node concept="37vLTG" id="mX" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:1205753100058" />
        <node concept="3Tqbb2" id="n1" role="1tU5fm">
          <uo k="s:originTrace" v="n:1205753100058" />
        </node>
      </node>
      <node concept="3clFbS" id="mY" role="3clF47">
        <uo k="s:originTrace" v="n:1205753100058" />
        <node concept="9aQIb" id="n2" role="3cqZAp">
          <uo k="s:originTrace" v="n:1205753100058" />
          <node concept="3clFbS" id="n3" role="9aQI4">
            <uo k="s:originTrace" v="n:1205753100058" />
            <node concept="3cpWs6" id="n4" role="3cqZAp">
              <uo k="s:originTrace" v="n:1205753100058" />
              <node concept="2ShNRf" id="n5" role="3cqZAk">
                <uo k="s:originTrace" v="n:1205753100058" />
                <node concept="1pGfFk" id="n6" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:1205753100058" />
                  <node concept="2OqwBi" id="n7" role="37wK5m">
                    <uo k="s:originTrace" v="n:1205753100058" />
                    <node concept="2OqwBi" id="n9" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:1205753100058" />
                      <node concept="liA8E" id="nb" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:1205753100058" />
                      </node>
                      <node concept="2JrnkZ" id="nc" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:1205753100058" />
                        <node concept="37vLTw" id="nd" role="2JrQYb">
                          <ref role="3cqZAo" node="mX" resolve="argument" />
                          <uo k="s:originTrace" v="n:1205753100058" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="na" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:1205753100058" />
                      <node concept="1rXfSq" id="ne" role="37wK5m">
                        <ref role="37wK5l" node="lq" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:1205753100058" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="n8" role="37wK5m">
                    <uo k="s:originTrace" v="n:1205753100058" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="mZ" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:1205753100058" />
      </node>
      <node concept="3Tm1VV" id="n0" role="1B3o_S">
        <uo k="s:originTrace" v="n:1205753100058" />
      </node>
    </node>
    <node concept="3clFb_" id="ls" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:1205753100058" />
      <node concept="3clFbS" id="nf" role="3clF47">
        <uo k="s:originTrace" v="n:1205753100058" />
        <node concept="3cpWs6" id="ni" role="3cqZAp">
          <uo k="s:originTrace" v="n:1205753100058" />
          <node concept="3clFbT" id="nj" role="3cqZAk">
            <uo k="s:originTrace" v="n:1205753100058" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="ng" role="3clF45">
        <uo k="s:originTrace" v="n:1205753100058" />
      </node>
      <node concept="3Tm1VV" id="nh" role="1B3o_S">
        <uo k="s:originTrace" v="n:1205753100058" />
      </node>
    </node>
    <node concept="3uibUv" id="lt" role="EKbjA">
      <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:1205753100058" />
    </node>
    <node concept="3uibUv" id="lu" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractInferenceRule_Runtime" resolve="AbstractInferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:1205753100058" />
    </node>
    <node concept="3Tm1VV" id="lv" role="1B3o_S">
      <uo k="s:originTrace" v="n:1205753100058" />
    </node>
  </node>
</model>

