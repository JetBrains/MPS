<?xml version="1.0" encoding="UTF-8"?>
<model ref="00000000-0000-4000-5f02-5beb5f025beb/i:fc1130e(checkpoints/jetbrains.mps.lang.test.typesystem@descriptorclasses)">
  <persistence version="9" />
  <attribute name="checkpoint" value="DescriptorClasses" />
  <attribute name="generation-plan" value="AspectCPS" />
  <attribute name="user-objects" value="true" />
  <languages />
  <imports>
    <import index="tp5l" ref="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
    <import index="tpeh" ref="r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)" />
    <import index="2gg1" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.errors(MPS.Core/)" />
    <import index="tp5o" ref="r:00000000-0000-4000-0000-011c89590380(jetbrains.mps.lang.test.behavior)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="tp5g" ref="r:00000000-0000-4000-0000-011c89590388(jetbrains.mps.lang.test.structure)" />
    <import index="zavc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.errors.messageTargets(MPS.Core/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="qurh" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.lang.typesystem.runtime(MPS.Core/)" />
    <import index="tp4f" ref="r:00000000-0000-4000-0000-011c89590373(jetbrains.mps.baseLanguage.classifiers.structure)" />
    <import index="tp3j" ref="r:00000000-0000-4000-0000-011c89590353(jetbrains.mps.lang.intentions.structure)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="u78q" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.typesystem.inference(MPS.Core/)" />
    <import index="tpeq" ref="r:00000000-0000-4000-0000-011c895902fe(jetbrains.mps.lang.smodel.typesystem)" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="3235159848334022093" name="jetbrains.mps.lang.behavior.structure.Node_ConceptMethodCall" flags="nn" index="3zqWPK" />
    </language>
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
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
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
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
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
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
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
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
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
      <concept id="1196350785110" name="jetbrains.mps.lang.quotation.structure.AbstractAntiquotation" flags="ngI" index="2c44t0">
        <child id="1196350785111" name="expression" index="2c44t1" />
      </concept>
      <concept id="1196350785117" name="jetbrains.mps.lang.quotation.structure.ReferenceAntiquotation" flags="ng" index="2c44tb" />
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="2990591960991114251" name="jetbrains.mps.lang.typesystem.structure.OriginalNodeId" flags="ng" index="6wLe0">
        <property id="2990591960991114264" name="nodeId" index="6wLej" />
        <property id="2990591960991114295" name="modelId" index="6wLeW" />
      </concept>
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
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="2644386474301421077" name="jetbrains.mps.lang.smodel.structure.LinkIdRefExpression" flags="nn" index="359W_D">
        <reference id="2644386474301421078" name="conceptDeclaration" index="359W_E" />
        <reference id="2644386474301421079" name="linkDeclaration" index="359W_F" />
      </concept>
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
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
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
      <concept id="3364660638048049745" name="jetbrains.mps.lang.core.structure.LinkAttribute" flags="ng" index="A9Btn">
        <property id="1757699476691236116" name="role_DebugInfo" index="2qtEX8" />
        <property id="1341860900488019036" name="linkId" index="P3scX" />
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
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="9042586985346099698" name="jetbrains.mps.baseLanguage.collections.structure.MultiForEachStatement" flags="nn" index="1_o_46">
        <child id="9042586985346099734" name="forEach" index="1_o_by" />
      </concept>
      <concept id="9042586985346099733" name="jetbrains.mps.baseLanguage.collections.structure.MultiForEachPair" flags="ng" index="1_o_bx">
        <child id="9042586985346099778" name="variable" index="1_o_aQ" />
        <child id="9042586985346099735" name="input" index="1_o_bz" />
      </concept>
      <concept id="9042586985346099736" name="jetbrains.mps.baseLanguage.collections.structure.MultiForEachVariable" flags="ng" index="1_o_bG" />
      <concept id="8293956702609956630" name="jetbrains.mps.baseLanguage.collections.structure.MultiForEachVariableReference" flags="nn" index="3M$PaV">
        <reference id="8293956702609966325" name="variable" index="3M$S_o" />
      </concept>
    </language>
  </registry>
  <node concept="39dXUE" id="0">
    <node concept="39e2AJ" id="1" role="39e2AI">
      <property role="39e3Y2" value="classForRule" />
      <node concept="39e2AG" id="5" role="39e3Y0">
        <ref role="39e2AK" to="tp5l:5aRyplrT$il" resolve="checkBeforeContainsCellAnnotation_EditorTestCase" />
        <node concept="385nmt" id="l" role="385vvn">
          <property role="385vuF" value="checkBeforeContainsCellAnnotation_EditorTestCase" />
          <node concept="3u3nmq" id="n" role="385v07">
            <property role="3u3nmv" value="5960383906433090709" />
          </node>
        </node>
        <node concept="39e2AT" id="m" role="39e2AY">
          <ref role="39e2AS" node="6I" resolve="checkBeforeContainsCellAnnotation_EditorTestCase_NonTypesystemRule" />
        </node>
      </node>
      <node concept="39e2AG" id="6" role="39e3Y0">
        <ref role="39e2AK" to="tp5l:5aRyplrTxTz" resolve="checkBeforePresents_EditorTestCase" />
        <node concept="385nmt" id="o" role="385vvn">
          <property role="385vuF" value="checkBeforePresents_EditorTestCase" />
          <node concept="3u3nmq" id="q" role="385v07">
            <property role="3u3nmv" value="5960383906433080931" />
          </node>
        </node>
        <node concept="39e2AT" id="p" role="39e2AY">
          <ref role="39e2AS" node="89" resolve="checkBeforePresents_EditorTestCase_NonTypesystemRule" />
        </node>
      </node>
      <node concept="39e2AG" id="7" role="39e3Y0">
        <ref role="39e2AK" to="tp5l:hIdQMiN" resolve="checkTestMethodDataflow" />
        <node concept="385nmt" id="r" role="385vvn">
          <property role="385vuF" value="checkTestMethodDataflow" />
          <node concept="3u3nmq" id="t" role="385v07">
            <property role="3u3nmv" value="1217855694003" />
          </node>
        </node>
        <node concept="39e2AT" id="s" role="39e2AY">
          <ref role="39e2AS" node="9m" resolve="checkTestMethodDataflow_NonTypesystemRule" />
        </node>
      </node>
      <node concept="39e2AG" id="8" role="39e3Y0">
        <ref role="39e2AK" to="tp5l:7LE6pKGyYqW" resolve="check_AfterTestsMethod" />
        <node concept="385nmt" id="u" role="385vvn">
          <property role="385vuF" value="check_AfterTestsMethod" />
          <node concept="3u3nmq" id="w" role="385v07">
            <property role="3u3nmv" value="8965006166787352252" />
          </node>
        </node>
        <node concept="39e2AT" id="v" role="39e2AY">
          <ref role="39e2AS" node="ae" resolve="check_AfterTestsMethod_NonTypesystemRule" />
        </node>
      </node>
      <node concept="39e2AG" id="9" role="39e3Y0">
        <ref role="39e2AK" to="tp5l:7dAoyMZUdWZ" resolve="check_AssertStatementInsideEditorTestCase" />
        <node concept="385nmt" id="x" role="385vvn">
          <property role="385vuF" value="check_AssertStatementInsideEditorTestCase" />
          <node concept="3u3nmq" id="z" role="385v07">
            <property role="3u3nmv" value="8315441706323992383" />
          </node>
        </node>
        <node concept="39e2AT" id="y" role="39e2AY">
          <ref role="39e2AS" node="by" resolve="check_AssertStatementInsideEditorTestCase_NonTypesystemRule" />
        </node>
      </node>
      <node concept="39e2AG" id="a" role="39e3Y0">
        <ref role="39e2AK" to="tp5l:7LE6pKGylSl" resolve="check_BeforeTestsMethod" />
        <node concept="385nmt" id="$" role="385vvn">
          <property role="385vuF" value="check_BeforeTestsMethod" />
          <node concept="3u3nmq" id="A" role="385v07">
            <property role="3u3nmv" value="8965006166787186197" />
          </node>
        </node>
        <node concept="39e2AT" id="_" role="39e2AY">
          <ref role="39e2AS" node="dk" resolve="check_BeforeTestsMethod_NonTypesystemRule" />
        </node>
      </node>
      <node concept="39e2AG" id="b" role="39e3Y0">
        <ref role="39e2AK" to="tp5l:3CVcUJxN1tW" resolve="check_DragMouseStatement" />
        <node concept="385nmt" id="B" role="385vvn">
          <property role="385vuF" value="check_DragMouseStatement" />
          <node concept="3u3nmq" id="D" role="385v07">
            <property role="3u3nmv" value="4196004291146422140" />
          </node>
        </node>
        <node concept="39e2AT" id="C" role="39e2AY">
          <ref role="39e2AS" node="eC" resolve="check_DragMouseStatement_NonTypesystemRule" />
        </node>
      </node>
      <node concept="39e2AG" id="c" role="39e3Y0">
        <ref role="39e2AK" to="tp5l:7OB8Y3vLuA$" resolve="check_ScopesTest" />
        <node concept="385nmt" id="E" role="385vvn">
          <property role="385vuF" value="check_ScopesTest" />
          <node concept="3u3nmq" id="G" role="385v07">
            <property role="3u3nmv" value="9018216227566643620" />
          </node>
        </node>
        <node concept="39e2AT" id="F" role="39e2AY">
          <ref role="39e2AS" node="fP" resolve="check_ScopesTest_NonTypesystemRule" />
        </node>
      </node>
      <node concept="39e2AG" id="d" role="39e3Y0">
        <ref role="39e2AK" to="tp5l:hCJE7wz" resolve="typeof_AssertMatch" />
        <node concept="385nmt" id="H" role="385vvn">
          <property role="385vuF" value="typeof_AssertMatch" />
          <node concept="3u3nmq" id="J" role="385v07">
            <property role="3u3nmv" value="1211980347427" />
          </node>
        </node>
        <node concept="39e2AT" id="I" role="39e2AY">
          <ref role="39e2AS" node="hc" resolve="typeof_AssertMatch_InferenceRule" />
        </node>
      </node>
      <node concept="39e2AG" id="e" role="39e3Y0">
        <ref role="39e2AK" to="tp5l:50vRVamfPZv" resolve="typeof_EditorComponentExpression" />
        <node concept="385nmt" id="K" role="385vvn">
          <property role="385vuF" value="typeof_EditorComponentExpression" />
          <node concept="3u3nmq" id="M" role="385v07">
            <property role="3u3nmv" value="5773579205430173663" />
          </node>
        </node>
        <node concept="39e2AT" id="L" role="39e2AY">
          <ref role="39e2AS" node="ks" resolve="typeof_EditorComponentExpression_InferenceRule" />
        </node>
      </node>
      <node concept="39e2AG" id="f" role="39e3Y0">
        <ref role="39e2AK" to="tp5l:7JT4LO$rKvf" resolve="typeof_InvokeIntentionStatement" />
        <node concept="385nmt" id="N" role="385vvn">
          <property role="385vuF" value="typeof_InvokeIntentionStatement" />
          <node concept="3u3nmq" id="P" role="385v07">
            <property role="3u3nmv" value="8933192351752325071" />
          </node>
        </node>
        <node concept="39e2AT" id="O" role="39e2AY">
          <ref role="39e2AS" node="lQ" resolve="typeof_InvokeIntentionStatement_InferenceRule" />
        </node>
      </node>
      <node concept="39e2AG" id="g" role="39e3Y0">
        <ref role="39e2AK" to="tp5l:5IYRzU$yPXN" resolve="typeof_IsActionApplicableExpression" />
        <node concept="385nmt" id="Q" role="385vvn">
          <property role="385vuF" value="typeof_IsActionApplicableExpression" />
          <node concept="3u3nmq" id="S" role="385v07">
            <property role="3u3nmv" value="6610965663656402803" />
          </node>
        </node>
        <node concept="39e2AT" id="R" role="39e2AY">
          <ref role="39e2AS" node="p8" resolve="typeof_IsActionApplicableExpression_InferenceRule" />
        </node>
      </node>
      <node concept="39e2AG" id="h" role="39e3Y0">
        <ref role="39e2AK" to="tp5l:wUiM63T4IZ" resolve="typeof_IsIntentionApplicableExpression" />
        <node concept="385nmt" id="T" role="385vvn">
          <property role="385vuF" value="typeof_IsIntentionApplicableExpression" />
          <node concept="3u3nmq" id="V" role="385v07">
            <property role="3u3nmv" value="592868908271422399" />
          </node>
        </node>
        <node concept="39e2AT" id="U" role="39e2AY">
          <ref role="39e2AS" node="qz" resolve="typeof_IsIntentionApplicableExpression_InferenceRule" />
        </node>
      </node>
      <node concept="39e2AG" id="i" role="39e3Y0">
        <ref role="39e2AK" to="tp5l:hRNnbDw" resolve="typeof_ModelExpression" />
        <node concept="385nmt" id="W" role="385vvn">
          <property role="385vuF" value="typeof_ModelExpression" />
          <node concept="3u3nmq" id="Y" role="385v07">
            <property role="3u3nmv" value="1228148619872" />
          </node>
        </node>
        <node concept="39e2AT" id="X" role="39e2AY">
          <ref role="39e2AS" node="rY" resolve="typeof_ModelExpression_InferenceRule" />
        </node>
      </node>
      <node concept="39e2AG" id="j" role="39e3Y0">
        <ref role="39e2AK" to="tp5l:hRNo2tn" resolve="typeof_ProjectExpression" />
        <node concept="385nmt" id="Z" role="385vvn">
          <property role="385vuF" value="typeof_ProjectExpression" />
          <node concept="3u3nmq" id="11" role="385v07">
            <property role="3u3nmv" value="1228148844375" />
          </node>
        </node>
        <node concept="39e2AT" id="10" role="39e2AY">
          <ref role="39e2AS" node="to" resolve="typeof_ProjectExpression_InferenceRule" />
        </node>
      </node>
      <node concept="39e2AG" id="k" role="39e3Y0">
        <ref role="39e2AK" to="tp5l:hBxWoh3" resolve="typeof_TestNodeReference" />
        <node concept="385nmt" id="12" role="385vvn">
          <property role="385vuF" value="typeof_TestNodeReference" />
          <node concept="3u3nmq" id="14" role="385v07">
            <property role="3u3nmv" value="1210676511811" />
          </node>
        </node>
        <node concept="39e2AT" id="13" role="39e2AY">
          <ref role="39e2AS" node="uM" resolve="typeof_TestNodeReference_InferenceRule" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="2" role="39e2AI">
      <property role="39e3Y2" value="isApplicableMethod" />
      <node concept="39e2AG" id="15" role="39e3Y0">
        <ref role="39e2AK" to="tp5l:5aRyplrT$il" resolve="checkBeforeContainsCellAnnotation_EditorTestCase" />
        <node concept="385nmt" id="1l" role="385vvn">
          <property role="385vuF" value="checkBeforeContainsCellAnnotation_EditorTestCase" />
          <node concept="3u3nmq" id="1n" role="385v07">
            <property role="3u3nmv" value="5960383906433090709" />
          </node>
        </node>
        <node concept="39e2AT" id="1m" role="39e2AY">
          <ref role="39e2AS" node="6M" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="16" role="39e3Y0">
        <ref role="39e2AK" to="tp5l:5aRyplrTxTz" resolve="checkBeforePresents_EditorTestCase" />
        <node concept="385nmt" id="1o" role="385vvn">
          <property role="385vuF" value="checkBeforePresents_EditorTestCase" />
          <node concept="3u3nmq" id="1q" role="385v07">
            <property role="3u3nmv" value="5960383906433080931" />
          </node>
        </node>
        <node concept="39e2AT" id="1p" role="39e2AY">
          <ref role="39e2AS" node="8d" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="17" role="39e3Y0">
        <ref role="39e2AK" to="tp5l:hIdQMiN" resolve="checkTestMethodDataflow" />
        <node concept="385nmt" id="1r" role="385vvn">
          <property role="385vuF" value="checkTestMethodDataflow" />
          <node concept="3u3nmq" id="1t" role="385v07">
            <property role="3u3nmv" value="1217855694003" />
          </node>
        </node>
        <node concept="39e2AT" id="1s" role="39e2AY">
          <ref role="39e2AS" node="9q" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="18" role="39e3Y0">
        <ref role="39e2AK" to="tp5l:7LE6pKGyYqW" resolve="check_AfterTestsMethod" />
        <node concept="385nmt" id="1u" role="385vvn">
          <property role="385vuF" value="check_AfterTestsMethod" />
          <node concept="3u3nmq" id="1w" role="385v07">
            <property role="3u3nmv" value="8965006166787352252" />
          </node>
        </node>
        <node concept="39e2AT" id="1v" role="39e2AY">
          <ref role="39e2AS" node="ai" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="19" role="39e3Y0">
        <ref role="39e2AK" to="tp5l:7dAoyMZUdWZ" resolve="check_AssertStatementInsideEditorTestCase" />
        <node concept="385nmt" id="1x" role="385vvn">
          <property role="385vuF" value="check_AssertStatementInsideEditorTestCase" />
          <node concept="3u3nmq" id="1z" role="385v07">
            <property role="3u3nmv" value="8315441706323992383" />
          </node>
        </node>
        <node concept="39e2AT" id="1y" role="39e2AY">
          <ref role="39e2AS" node="bA" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="1a" role="39e3Y0">
        <ref role="39e2AK" to="tp5l:7LE6pKGylSl" resolve="check_BeforeTestsMethod" />
        <node concept="385nmt" id="1$" role="385vvn">
          <property role="385vuF" value="check_BeforeTestsMethod" />
          <node concept="3u3nmq" id="1A" role="385v07">
            <property role="3u3nmv" value="8965006166787186197" />
          </node>
        </node>
        <node concept="39e2AT" id="1_" role="39e2AY">
          <ref role="39e2AS" node="do" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="1b" role="39e3Y0">
        <ref role="39e2AK" to="tp5l:3CVcUJxN1tW" resolve="check_DragMouseStatement" />
        <node concept="385nmt" id="1B" role="385vvn">
          <property role="385vuF" value="check_DragMouseStatement" />
          <node concept="3u3nmq" id="1D" role="385v07">
            <property role="3u3nmv" value="4196004291146422140" />
          </node>
        </node>
        <node concept="39e2AT" id="1C" role="39e2AY">
          <ref role="39e2AS" node="eG" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="1c" role="39e3Y0">
        <ref role="39e2AK" to="tp5l:7OB8Y3vLuA$" resolve="check_ScopesTest" />
        <node concept="385nmt" id="1E" role="385vvn">
          <property role="385vuF" value="check_ScopesTest" />
          <node concept="3u3nmq" id="1G" role="385v07">
            <property role="3u3nmv" value="9018216227566643620" />
          </node>
        </node>
        <node concept="39e2AT" id="1F" role="39e2AY">
          <ref role="39e2AS" node="fT" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="1d" role="39e3Y0">
        <ref role="39e2AK" to="tp5l:hCJE7wz" resolve="typeof_AssertMatch" />
        <node concept="385nmt" id="1H" role="385vvn">
          <property role="385vuF" value="typeof_AssertMatch" />
          <node concept="3u3nmq" id="1J" role="385v07">
            <property role="3u3nmv" value="1211980347427" />
          </node>
        </node>
        <node concept="39e2AT" id="1I" role="39e2AY">
          <ref role="39e2AS" node="hg" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="1e" role="39e3Y0">
        <ref role="39e2AK" to="tp5l:50vRVamfPZv" resolve="typeof_EditorComponentExpression" />
        <node concept="385nmt" id="1K" role="385vvn">
          <property role="385vuF" value="typeof_EditorComponentExpression" />
          <node concept="3u3nmq" id="1M" role="385v07">
            <property role="3u3nmv" value="5773579205430173663" />
          </node>
        </node>
        <node concept="39e2AT" id="1L" role="39e2AY">
          <ref role="39e2AS" node="kw" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="1f" role="39e3Y0">
        <ref role="39e2AK" to="tp5l:7JT4LO$rKvf" resolve="typeof_InvokeIntentionStatement" />
        <node concept="385nmt" id="1N" role="385vvn">
          <property role="385vuF" value="typeof_InvokeIntentionStatement" />
          <node concept="3u3nmq" id="1P" role="385v07">
            <property role="3u3nmv" value="8933192351752325071" />
          </node>
        </node>
        <node concept="39e2AT" id="1O" role="39e2AY">
          <ref role="39e2AS" node="lU" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="1g" role="39e3Y0">
        <ref role="39e2AK" to="tp5l:5IYRzU$yPXN" resolve="typeof_IsActionApplicableExpression" />
        <node concept="385nmt" id="1Q" role="385vvn">
          <property role="385vuF" value="typeof_IsActionApplicableExpression" />
          <node concept="3u3nmq" id="1S" role="385v07">
            <property role="3u3nmv" value="6610965663656402803" />
          </node>
        </node>
        <node concept="39e2AT" id="1R" role="39e2AY">
          <ref role="39e2AS" node="pc" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="1h" role="39e3Y0">
        <ref role="39e2AK" to="tp5l:wUiM63T4IZ" resolve="typeof_IsIntentionApplicableExpression" />
        <node concept="385nmt" id="1T" role="385vvn">
          <property role="385vuF" value="typeof_IsIntentionApplicableExpression" />
          <node concept="3u3nmq" id="1V" role="385v07">
            <property role="3u3nmv" value="592868908271422399" />
          </node>
        </node>
        <node concept="39e2AT" id="1U" role="39e2AY">
          <ref role="39e2AS" node="qB" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="1i" role="39e3Y0">
        <ref role="39e2AK" to="tp5l:hRNnbDw" resolve="typeof_ModelExpression" />
        <node concept="385nmt" id="1W" role="385vvn">
          <property role="385vuF" value="typeof_ModelExpression" />
          <node concept="3u3nmq" id="1Y" role="385v07">
            <property role="3u3nmv" value="1228148619872" />
          </node>
        </node>
        <node concept="39e2AT" id="1X" role="39e2AY">
          <ref role="39e2AS" node="s2" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="1j" role="39e3Y0">
        <ref role="39e2AK" to="tp5l:hRNo2tn" resolve="typeof_ProjectExpression" />
        <node concept="385nmt" id="1Z" role="385vvn">
          <property role="385vuF" value="typeof_ProjectExpression" />
          <node concept="3u3nmq" id="21" role="385v07">
            <property role="3u3nmv" value="1228148844375" />
          </node>
        </node>
        <node concept="39e2AT" id="20" role="39e2AY">
          <ref role="39e2AS" node="ts" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="1k" role="39e3Y0">
        <ref role="39e2AK" to="tp5l:hBxWoh3" resolve="typeof_TestNodeReference" />
        <node concept="385nmt" id="22" role="385vvn">
          <property role="385vuF" value="typeof_TestNodeReference" />
          <node concept="3u3nmq" id="24" role="385v07">
            <property role="3u3nmv" value="1210676511811" />
          </node>
        </node>
        <node concept="39e2AT" id="23" role="39e2AY">
          <ref role="39e2AS" node="uQ" resolve="isApplicableAndPattern" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="3" role="39e2AI">
      <property role="39e3Y2" value="mainMethodForRule" />
      <node concept="39e2AG" id="25" role="39e3Y0">
        <ref role="39e2AK" to="tp5l:5aRyplrT$il" resolve="checkBeforeContainsCellAnnotation_EditorTestCase" />
        <node concept="385nmt" id="2l" role="385vvn">
          <property role="385vuF" value="checkBeforeContainsCellAnnotation_EditorTestCase" />
          <node concept="3u3nmq" id="2n" role="385v07">
            <property role="3u3nmv" value="5960383906433090709" />
          </node>
        </node>
        <node concept="39e2AT" id="2m" role="39e2AY">
          <ref role="39e2AS" node="6K" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="26" role="39e3Y0">
        <ref role="39e2AK" to="tp5l:5aRyplrTxTz" resolve="checkBeforePresents_EditorTestCase" />
        <node concept="385nmt" id="2o" role="385vvn">
          <property role="385vuF" value="checkBeforePresents_EditorTestCase" />
          <node concept="3u3nmq" id="2q" role="385v07">
            <property role="3u3nmv" value="5960383906433080931" />
          </node>
        </node>
        <node concept="39e2AT" id="2p" role="39e2AY">
          <ref role="39e2AS" node="8b" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="27" role="39e3Y0">
        <ref role="39e2AK" to="tp5l:hIdQMiN" resolve="checkTestMethodDataflow" />
        <node concept="385nmt" id="2r" role="385vvn">
          <property role="385vuF" value="checkTestMethodDataflow" />
          <node concept="3u3nmq" id="2t" role="385v07">
            <property role="3u3nmv" value="1217855694003" />
          </node>
        </node>
        <node concept="39e2AT" id="2s" role="39e2AY">
          <ref role="39e2AS" node="9o" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="28" role="39e3Y0">
        <ref role="39e2AK" to="tp5l:7LE6pKGyYqW" resolve="check_AfterTestsMethod" />
        <node concept="385nmt" id="2u" role="385vvn">
          <property role="385vuF" value="check_AfterTestsMethod" />
          <node concept="3u3nmq" id="2w" role="385v07">
            <property role="3u3nmv" value="8965006166787352252" />
          </node>
        </node>
        <node concept="39e2AT" id="2v" role="39e2AY">
          <ref role="39e2AS" node="ag" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="29" role="39e3Y0">
        <ref role="39e2AK" to="tp5l:7dAoyMZUdWZ" resolve="check_AssertStatementInsideEditorTestCase" />
        <node concept="385nmt" id="2x" role="385vvn">
          <property role="385vuF" value="check_AssertStatementInsideEditorTestCase" />
          <node concept="3u3nmq" id="2z" role="385v07">
            <property role="3u3nmv" value="8315441706323992383" />
          </node>
        </node>
        <node concept="39e2AT" id="2y" role="39e2AY">
          <ref role="39e2AS" node="b$" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="2a" role="39e3Y0">
        <ref role="39e2AK" to="tp5l:7LE6pKGylSl" resolve="check_BeforeTestsMethod" />
        <node concept="385nmt" id="2$" role="385vvn">
          <property role="385vuF" value="check_BeforeTestsMethod" />
          <node concept="3u3nmq" id="2A" role="385v07">
            <property role="3u3nmv" value="8965006166787186197" />
          </node>
        </node>
        <node concept="39e2AT" id="2_" role="39e2AY">
          <ref role="39e2AS" node="dm" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="2b" role="39e3Y0">
        <ref role="39e2AK" to="tp5l:3CVcUJxN1tW" resolve="check_DragMouseStatement" />
        <node concept="385nmt" id="2B" role="385vvn">
          <property role="385vuF" value="check_DragMouseStatement" />
          <node concept="3u3nmq" id="2D" role="385v07">
            <property role="3u3nmv" value="4196004291146422140" />
          </node>
        </node>
        <node concept="39e2AT" id="2C" role="39e2AY">
          <ref role="39e2AS" node="eE" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="2c" role="39e3Y0">
        <ref role="39e2AK" to="tp5l:7OB8Y3vLuA$" resolve="check_ScopesTest" />
        <node concept="385nmt" id="2E" role="385vvn">
          <property role="385vuF" value="check_ScopesTest" />
          <node concept="3u3nmq" id="2G" role="385v07">
            <property role="3u3nmv" value="9018216227566643620" />
          </node>
        </node>
        <node concept="39e2AT" id="2F" role="39e2AY">
          <ref role="39e2AS" node="fR" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="2d" role="39e3Y0">
        <ref role="39e2AK" to="tp5l:hCJE7wz" resolve="typeof_AssertMatch" />
        <node concept="385nmt" id="2H" role="385vvn">
          <property role="385vuF" value="typeof_AssertMatch" />
          <node concept="3u3nmq" id="2J" role="385v07">
            <property role="3u3nmv" value="1211980347427" />
          </node>
        </node>
        <node concept="39e2AT" id="2I" role="39e2AY">
          <ref role="39e2AS" node="he" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="2e" role="39e3Y0">
        <ref role="39e2AK" to="tp5l:50vRVamfPZv" resolve="typeof_EditorComponentExpression" />
        <node concept="385nmt" id="2K" role="385vvn">
          <property role="385vuF" value="typeof_EditorComponentExpression" />
          <node concept="3u3nmq" id="2M" role="385v07">
            <property role="3u3nmv" value="5773579205430173663" />
          </node>
        </node>
        <node concept="39e2AT" id="2L" role="39e2AY">
          <ref role="39e2AS" node="ku" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="2f" role="39e3Y0">
        <ref role="39e2AK" to="tp5l:7JT4LO$rKvf" resolve="typeof_InvokeIntentionStatement" />
        <node concept="385nmt" id="2N" role="385vvn">
          <property role="385vuF" value="typeof_InvokeIntentionStatement" />
          <node concept="3u3nmq" id="2P" role="385v07">
            <property role="3u3nmv" value="8933192351752325071" />
          </node>
        </node>
        <node concept="39e2AT" id="2O" role="39e2AY">
          <ref role="39e2AS" node="lS" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="2g" role="39e3Y0">
        <ref role="39e2AK" to="tp5l:5IYRzU$yPXN" resolve="typeof_IsActionApplicableExpression" />
        <node concept="385nmt" id="2Q" role="385vvn">
          <property role="385vuF" value="typeof_IsActionApplicableExpression" />
          <node concept="3u3nmq" id="2S" role="385v07">
            <property role="3u3nmv" value="6610965663656402803" />
          </node>
        </node>
        <node concept="39e2AT" id="2R" role="39e2AY">
          <ref role="39e2AS" node="pa" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="2h" role="39e3Y0">
        <ref role="39e2AK" to="tp5l:wUiM63T4IZ" resolve="typeof_IsIntentionApplicableExpression" />
        <node concept="385nmt" id="2T" role="385vvn">
          <property role="385vuF" value="typeof_IsIntentionApplicableExpression" />
          <node concept="3u3nmq" id="2V" role="385v07">
            <property role="3u3nmv" value="592868908271422399" />
          </node>
        </node>
        <node concept="39e2AT" id="2U" role="39e2AY">
          <ref role="39e2AS" node="q_" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="2i" role="39e3Y0">
        <ref role="39e2AK" to="tp5l:hRNnbDw" resolve="typeof_ModelExpression" />
        <node concept="385nmt" id="2W" role="385vvn">
          <property role="385vuF" value="typeof_ModelExpression" />
          <node concept="3u3nmq" id="2Y" role="385v07">
            <property role="3u3nmv" value="1228148619872" />
          </node>
        </node>
        <node concept="39e2AT" id="2X" role="39e2AY">
          <ref role="39e2AS" node="s0" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="2j" role="39e3Y0">
        <ref role="39e2AK" to="tp5l:hRNo2tn" resolve="typeof_ProjectExpression" />
        <node concept="385nmt" id="2Z" role="385vvn">
          <property role="385vuF" value="typeof_ProjectExpression" />
          <node concept="3u3nmq" id="31" role="385v07">
            <property role="3u3nmv" value="1228148844375" />
          </node>
        </node>
        <node concept="39e2AT" id="30" role="39e2AY">
          <ref role="39e2AS" node="tq" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="2k" role="39e3Y0">
        <ref role="39e2AK" to="tp5l:hBxWoh3" resolve="typeof_TestNodeReference" />
        <node concept="385nmt" id="32" role="385vvn">
          <property role="385vuF" value="typeof_TestNodeReference" />
          <node concept="3u3nmq" id="34" role="385v07">
            <property role="3u3nmv" value="1210676511811" />
          </node>
        </node>
        <node concept="39e2AT" id="33" role="39e2AY">
          <ref role="39e2AS" node="uO" resolve="applyRule" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="4" role="39e2AI">
      <property role="39e3Y2" value="descriptorClass" />
      <node concept="39e2AG" id="35" role="39e3Y0">
        <property role="2mV_xN" value="true" />
        <node concept="39e2AT" id="36" role="39e2AY">
          <ref role="39e2AS" node="37" resolve="TypesystemDescriptor" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="37">
    <property role="TrG5h" value="TypesystemDescriptor" />
    <node concept="3clFbW" id="38" role="jymVt">
      <node concept="3clFbS" id="3b" role="3clF47">
        <node concept="9aQIb" id="3e" role="3cqZAp">
          <node concept="3clFbS" id="3u" role="9aQI4">
            <node concept="3cpWs8" id="3v" role="3cqZAp">
              <node concept="3cpWsn" id="3x" role="3cpWs9">
                <property role="TrG5h" value="inferenceRule" />
                <node concept="2ShNRf" id="3y" role="33vP2m">
                  <node concept="1pGfFk" id="3$" role="2ShVmc">
                    <ref role="37wK5l" node="hd" resolve="typeof_AssertMatch_InferenceRule" />
                  </node>
                </node>
                <node concept="3uibUv" id="3z" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3w" role="3cqZAp">
              <node concept="2OqwBi" id="3_" role="3clFbG">
                <node concept="liA8E" id="3A" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="3C" role="37wK5m">
                    <ref role="3cqZAo" node="3x" resolve="inferenceRule" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3B" role="2Oq$k0">
                  <node concept="Xjq3P" id="3D" role="2Oq$k0" />
                  <node concept="2OwXpG" id="3E" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myInferenceRules" resolve="myInferenceRules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="3f" role="3cqZAp">
          <node concept="3clFbS" id="3F" role="9aQI4">
            <node concept="3cpWs8" id="3G" role="3cqZAp">
              <node concept="3cpWsn" id="3I" role="3cpWs9">
                <property role="TrG5h" value="inferenceRule" />
                <node concept="2ShNRf" id="3J" role="33vP2m">
                  <node concept="1pGfFk" id="3L" role="2ShVmc">
                    <ref role="37wK5l" node="kt" resolve="typeof_EditorComponentExpression_InferenceRule" />
                  </node>
                </node>
                <node concept="3uibUv" id="3K" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3H" role="3cqZAp">
              <node concept="2OqwBi" id="3M" role="3clFbG">
                <node concept="liA8E" id="3N" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="3P" role="37wK5m">
                    <ref role="3cqZAo" node="3I" resolve="inferenceRule" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3O" role="2Oq$k0">
                  <node concept="Xjq3P" id="3Q" role="2Oq$k0" />
                  <node concept="2OwXpG" id="3R" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myInferenceRules" resolve="myInferenceRules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="3g" role="3cqZAp">
          <node concept="3clFbS" id="3S" role="9aQI4">
            <node concept="3cpWs8" id="3T" role="3cqZAp">
              <node concept="3cpWsn" id="3V" role="3cpWs9">
                <property role="TrG5h" value="inferenceRule" />
                <node concept="2ShNRf" id="3W" role="33vP2m">
                  <node concept="1pGfFk" id="3Y" role="2ShVmc">
                    <ref role="37wK5l" node="lR" resolve="typeof_InvokeIntentionStatement_InferenceRule" />
                  </node>
                </node>
                <node concept="3uibUv" id="3X" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3U" role="3cqZAp">
              <node concept="2OqwBi" id="3Z" role="3clFbG">
                <node concept="liA8E" id="40" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="42" role="37wK5m">
                    <ref role="3cqZAo" node="3V" resolve="inferenceRule" />
                  </node>
                </node>
                <node concept="2OqwBi" id="41" role="2Oq$k0">
                  <node concept="Xjq3P" id="43" role="2Oq$k0" />
                  <node concept="2OwXpG" id="44" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myInferenceRules" resolve="myInferenceRules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="3h" role="3cqZAp">
          <node concept="3clFbS" id="45" role="9aQI4">
            <node concept="3cpWs8" id="46" role="3cqZAp">
              <node concept="3cpWsn" id="48" role="3cpWs9">
                <property role="TrG5h" value="inferenceRule" />
                <node concept="2ShNRf" id="49" role="33vP2m">
                  <node concept="1pGfFk" id="4b" role="2ShVmc">
                    <ref role="37wK5l" node="p9" resolve="typeof_IsActionApplicableExpression_InferenceRule" />
                  </node>
                </node>
                <node concept="3uibUv" id="4a" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="47" role="3cqZAp">
              <node concept="2OqwBi" id="4c" role="3clFbG">
                <node concept="liA8E" id="4d" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="4f" role="37wK5m">
                    <ref role="3cqZAo" node="48" resolve="inferenceRule" />
                  </node>
                </node>
                <node concept="2OqwBi" id="4e" role="2Oq$k0">
                  <node concept="Xjq3P" id="4g" role="2Oq$k0" />
                  <node concept="2OwXpG" id="4h" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myInferenceRules" resolve="myInferenceRules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="3i" role="3cqZAp">
          <node concept="3clFbS" id="4i" role="9aQI4">
            <node concept="3cpWs8" id="4j" role="3cqZAp">
              <node concept="3cpWsn" id="4l" role="3cpWs9">
                <property role="TrG5h" value="inferenceRule" />
                <node concept="2ShNRf" id="4m" role="33vP2m">
                  <node concept="1pGfFk" id="4o" role="2ShVmc">
                    <ref role="37wK5l" node="q$" resolve="typeof_IsIntentionApplicableExpression_InferenceRule" />
                  </node>
                </node>
                <node concept="3uibUv" id="4n" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4k" role="3cqZAp">
              <node concept="2OqwBi" id="4p" role="3clFbG">
                <node concept="liA8E" id="4q" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="4s" role="37wK5m">
                    <ref role="3cqZAo" node="4l" resolve="inferenceRule" />
                  </node>
                </node>
                <node concept="2OqwBi" id="4r" role="2Oq$k0">
                  <node concept="Xjq3P" id="4t" role="2Oq$k0" />
                  <node concept="2OwXpG" id="4u" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myInferenceRules" resolve="myInferenceRules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="3j" role="3cqZAp">
          <node concept="3clFbS" id="4v" role="9aQI4">
            <node concept="3cpWs8" id="4w" role="3cqZAp">
              <node concept="3cpWsn" id="4y" role="3cpWs9">
                <property role="TrG5h" value="inferenceRule" />
                <node concept="2ShNRf" id="4z" role="33vP2m">
                  <node concept="1pGfFk" id="4_" role="2ShVmc">
                    <ref role="37wK5l" node="rZ" resolve="typeof_ModelExpression_InferenceRule" />
                  </node>
                </node>
                <node concept="3uibUv" id="4$" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4x" role="3cqZAp">
              <node concept="2OqwBi" id="4A" role="3clFbG">
                <node concept="liA8E" id="4B" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="4D" role="37wK5m">
                    <ref role="3cqZAo" node="4y" resolve="inferenceRule" />
                  </node>
                </node>
                <node concept="2OqwBi" id="4C" role="2Oq$k0">
                  <node concept="Xjq3P" id="4E" role="2Oq$k0" />
                  <node concept="2OwXpG" id="4F" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myInferenceRules" resolve="myInferenceRules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="3k" role="3cqZAp">
          <node concept="3clFbS" id="4G" role="9aQI4">
            <node concept="3cpWs8" id="4H" role="3cqZAp">
              <node concept="3cpWsn" id="4J" role="3cpWs9">
                <property role="TrG5h" value="inferenceRule" />
                <node concept="2ShNRf" id="4K" role="33vP2m">
                  <node concept="1pGfFk" id="4M" role="2ShVmc">
                    <ref role="37wK5l" node="tp" resolve="typeof_ProjectExpression_InferenceRule" />
                  </node>
                </node>
                <node concept="3uibUv" id="4L" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4I" role="3cqZAp">
              <node concept="2OqwBi" id="4N" role="3clFbG">
                <node concept="liA8E" id="4O" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="4Q" role="37wK5m">
                    <ref role="3cqZAo" node="4J" resolve="inferenceRule" />
                  </node>
                </node>
                <node concept="2OqwBi" id="4P" role="2Oq$k0">
                  <node concept="Xjq3P" id="4R" role="2Oq$k0" />
                  <node concept="2OwXpG" id="4S" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myInferenceRules" resolve="myInferenceRules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="3l" role="3cqZAp">
          <node concept="3clFbS" id="4T" role="9aQI4">
            <node concept="3cpWs8" id="4U" role="3cqZAp">
              <node concept="3cpWsn" id="4W" role="3cpWs9">
                <property role="TrG5h" value="inferenceRule" />
                <node concept="2ShNRf" id="4X" role="33vP2m">
                  <node concept="1pGfFk" id="4Z" role="2ShVmc">
                    <ref role="37wK5l" node="uN" resolve="typeof_TestNodeReference_InferenceRule" />
                  </node>
                </node>
                <node concept="3uibUv" id="4Y" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4V" role="3cqZAp">
              <node concept="2OqwBi" id="50" role="3clFbG">
                <node concept="liA8E" id="51" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="53" role="37wK5m">
                    <ref role="3cqZAo" node="4W" resolve="inferenceRule" />
                  </node>
                </node>
                <node concept="2OqwBi" id="52" role="2Oq$k0">
                  <node concept="Xjq3P" id="54" role="2Oq$k0" />
                  <node concept="2OwXpG" id="55" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myInferenceRules" resolve="myInferenceRules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="3m" role="3cqZAp">
          <node concept="3clFbS" id="56" role="9aQI4">
            <node concept="3cpWs8" id="57" role="3cqZAp">
              <node concept="3cpWsn" id="59" role="3cpWs9">
                <property role="TrG5h" value="nonTypesystemRule" />
                <node concept="3uibUv" id="5a" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="5b" role="33vP2m">
                  <node concept="1pGfFk" id="5c" role="2ShVmc">
                    <ref role="37wK5l" node="6J" resolve="checkBeforeContainsCellAnnotation_EditorTestCase_NonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="58" role="3cqZAp">
              <node concept="2OqwBi" id="5d" role="3clFbG">
                <node concept="2OqwBi" id="5e" role="2Oq$k0">
                  <node concept="Xjq3P" id="5g" role="2Oq$k0" />
                  <node concept="2OwXpG" id="5h" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myNonTypesystemRules" resolve="myNonTypesystemRules" />
                  </node>
                </node>
                <node concept="liA8E" id="5f" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="5i" role="37wK5m">
                    <ref role="3cqZAo" node="59" resolve="nonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="3n" role="3cqZAp">
          <node concept="3clFbS" id="5j" role="9aQI4">
            <node concept="3cpWs8" id="5k" role="3cqZAp">
              <node concept="3cpWsn" id="5m" role="3cpWs9">
                <property role="TrG5h" value="nonTypesystemRule" />
                <node concept="3uibUv" id="5n" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="5o" role="33vP2m">
                  <node concept="1pGfFk" id="5p" role="2ShVmc">
                    <ref role="37wK5l" node="8a" resolve="checkBeforePresents_EditorTestCase_NonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5l" role="3cqZAp">
              <node concept="2OqwBi" id="5q" role="3clFbG">
                <node concept="2OqwBi" id="5r" role="2Oq$k0">
                  <node concept="Xjq3P" id="5t" role="2Oq$k0" />
                  <node concept="2OwXpG" id="5u" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myNonTypesystemRules" resolve="myNonTypesystemRules" />
                  </node>
                </node>
                <node concept="liA8E" id="5s" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="5v" role="37wK5m">
                    <ref role="3cqZAo" node="5m" resolve="nonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="3o" role="3cqZAp">
          <node concept="3clFbS" id="5w" role="9aQI4">
            <node concept="3cpWs8" id="5x" role="3cqZAp">
              <node concept="3cpWsn" id="5z" role="3cpWs9">
                <property role="TrG5h" value="nonTypesystemRule" />
                <node concept="3uibUv" id="5$" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="5_" role="33vP2m">
                  <node concept="1pGfFk" id="5A" role="2ShVmc">
                    <ref role="37wK5l" node="9n" resolve="checkTestMethodDataflow_NonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5y" role="3cqZAp">
              <node concept="2OqwBi" id="5B" role="3clFbG">
                <node concept="2OqwBi" id="5C" role="2Oq$k0">
                  <node concept="Xjq3P" id="5E" role="2Oq$k0" />
                  <node concept="2OwXpG" id="5F" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myNonTypesystemRules" resolve="myNonTypesystemRules" />
                  </node>
                </node>
                <node concept="liA8E" id="5D" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="5G" role="37wK5m">
                    <ref role="3cqZAo" node="5z" resolve="nonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="3p" role="3cqZAp">
          <node concept="3clFbS" id="5H" role="9aQI4">
            <node concept="3cpWs8" id="5I" role="3cqZAp">
              <node concept="3cpWsn" id="5K" role="3cpWs9">
                <property role="TrG5h" value="nonTypesystemRule" />
                <node concept="3uibUv" id="5L" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="5M" role="33vP2m">
                  <node concept="1pGfFk" id="5N" role="2ShVmc">
                    <ref role="37wK5l" node="af" resolve="check_AfterTestsMethod_NonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5J" role="3cqZAp">
              <node concept="2OqwBi" id="5O" role="3clFbG">
                <node concept="2OqwBi" id="5P" role="2Oq$k0">
                  <node concept="Xjq3P" id="5R" role="2Oq$k0" />
                  <node concept="2OwXpG" id="5S" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myNonTypesystemRules" resolve="myNonTypesystemRules" />
                  </node>
                </node>
                <node concept="liA8E" id="5Q" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="5T" role="37wK5m">
                    <ref role="3cqZAo" node="5K" resolve="nonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="3q" role="3cqZAp">
          <node concept="3clFbS" id="5U" role="9aQI4">
            <node concept="3cpWs8" id="5V" role="3cqZAp">
              <node concept="3cpWsn" id="5X" role="3cpWs9">
                <property role="TrG5h" value="nonTypesystemRule" />
                <node concept="3uibUv" id="5Y" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="5Z" role="33vP2m">
                  <node concept="1pGfFk" id="60" role="2ShVmc">
                    <ref role="37wK5l" node="bz" resolve="check_AssertStatementInsideEditorTestCase_NonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5W" role="3cqZAp">
              <node concept="2OqwBi" id="61" role="3clFbG">
                <node concept="2OqwBi" id="62" role="2Oq$k0">
                  <node concept="Xjq3P" id="64" role="2Oq$k0" />
                  <node concept="2OwXpG" id="65" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myNonTypesystemRules" resolve="myNonTypesystemRules" />
                  </node>
                </node>
                <node concept="liA8E" id="63" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="66" role="37wK5m">
                    <ref role="3cqZAo" node="5X" resolve="nonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="3r" role="3cqZAp">
          <node concept="3clFbS" id="67" role="9aQI4">
            <node concept="3cpWs8" id="68" role="3cqZAp">
              <node concept="3cpWsn" id="6a" role="3cpWs9">
                <property role="TrG5h" value="nonTypesystemRule" />
                <node concept="3uibUv" id="6b" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="6c" role="33vP2m">
                  <node concept="1pGfFk" id="6d" role="2ShVmc">
                    <ref role="37wK5l" node="dl" resolve="check_BeforeTestsMethod_NonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="69" role="3cqZAp">
              <node concept="2OqwBi" id="6e" role="3clFbG">
                <node concept="2OqwBi" id="6f" role="2Oq$k0">
                  <node concept="Xjq3P" id="6h" role="2Oq$k0" />
                  <node concept="2OwXpG" id="6i" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myNonTypesystemRules" resolve="myNonTypesystemRules" />
                  </node>
                </node>
                <node concept="liA8E" id="6g" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="6j" role="37wK5m">
                    <ref role="3cqZAo" node="6a" resolve="nonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="3s" role="3cqZAp">
          <node concept="3clFbS" id="6k" role="9aQI4">
            <node concept="3cpWs8" id="6l" role="3cqZAp">
              <node concept="3cpWsn" id="6n" role="3cpWs9">
                <property role="TrG5h" value="nonTypesystemRule" />
                <node concept="3uibUv" id="6o" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="6p" role="33vP2m">
                  <node concept="1pGfFk" id="6q" role="2ShVmc">
                    <ref role="37wK5l" node="eD" resolve="check_DragMouseStatement_NonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6m" role="3cqZAp">
              <node concept="2OqwBi" id="6r" role="3clFbG">
                <node concept="2OqwBi" id="6s" role="2Oq$k0">
                  <node concept="Xjq3P" id="6u" role="2Oq$k0" />
                  <node concept="2OwXpG" id="6v" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myNonTypesystemRules" resolve="myNonTypesystemRules" />
                  </node>
                </node>
                <node concept="liA8E" id="6t" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="6w" role="37wK5m">
                    <ref role="3cqZAo" node="6n" resolve="nonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="3t" role="3cqZAp">
          <node concept="3clFbS" id="6x" role="9aQI4">
            <node concept="3cpWs8" id="6y" role="3cqZAp">
              <node concept="3cpWsn" id="6$" role="3cpWs9">
                <property role="TrG5h" value="nonTypesystemRule" />
                <node concept="3uibUv" id="6_" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="6A" role="33vP2m">
                  <node concept="1pGfFk" id="6B" role="2ShVmc">
                    <ref role="37wK5l" node="fQ" resolve="check_ScopesTest_NonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6z" role="3cqZAp">
              <node concept="2OqwBi" id="6C" role="3clFbG">
                <node concept="2OqwBi" id="6D" role="2Oq$k0">
                  <node concept="Xjq3P" id="6F" role="2Oq$k0" />
                  <node concept="2OwXpG" id="6G" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myNonTypesystemRules" resolve="myNonTypesystemRules" />
                  </node>
                </node>
                <node concept="liA8E" id="6E" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="6H" role="37wK5m">
                    <ref role="3cqZAo" node="6$" resolve="nonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3c" role="1B3o_S" />
      <node concept="3cqZAl" id="3d" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="39" role="1B3o_S" />
    <node concept="3uibUv" id="3a" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~BaseHelginsDescriptor" resolve="BaseHelginsDescriptor" />
    </node>
  </node>
  <node concept="312cEu" id="6I">
    <property role="3GE5qa" value="editor" />
    <property role="TrG5h" value="checkBeforeContainsCellAnnotation_EditorTestCase_NonTypesystemRule" />
    <uo k="s:originTrace" v="n:5960383906433090709" />
    <node concept="3clFbW" id="6J" role="jymVt">
      <uo k="s:originTrace" v="n:5960383906433090709" />
      <node concept="3clFbS" id="6R" role="3clF47">
        <uo k="s:originTrace" v="n:5960383906433090709" />
      </node>
      <node concept="3Tm1VV" id="6S" role="1B3o_S">
        <uo k="s:originTrace" v="n:5960383906433090709" />
      </node>
      <node concept="3cqZAl" id="6T" role="3clF45">
        <uo k="s:originTrace" v="n:5960383906433090709" />
      </node>
    </node>
    <node concept="3clFb_" id="6K" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:5960383906433090709" />
      <node concept="3cqZAl" id="6U" role="3clF45">
        <uo k="s:originTrace" v="n:5960383906433090709" />
      </node>
      <node concept="37vLTG" id="6V" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="test" />
        <uo k="s:originTrace" v="n:5960383906433090709" />
        <node concept="3Tqbb2" id="70" role="1tU5fm">
          <uo k="s:originTrace" v="n:5960383906433090709" />
        </node>
      </node>
      <node concept="37vLTG" id="6W" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:5960383906433090709" />
        <node concept="3uibUv" id="71" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:5960383906433090709" />
        </node>
      </node>
      <node concept="37vLTG" id="6X" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:5960383906433090709" />
        <node concept="3uibUv" id="72" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:5960383906433090709" />
        </node>
      </node>
      <node concept="3clFbS" id="6Y" role="3clF47">
        <uo k="s:originTrace" v="n:5960383906433090710" />
        <node concept="3clFbJ" id="73" role="3cqZAp">
          <uo k="s:originTrace" v="n:5960383906433090711" />
          <node concept="1Wc70l" id="74" role="3clFbw">
            <uo k="s:originTrace" v="n:5960383906433190566" />
            <node concept="2OqwBi" id="76" role="3uHU7B">
              <uo k="s:originTrace" v="n:5960383906433196872" />
              <node concept="2OqwBi" id="78" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3143335925185563432" />
                <node concept="2OqwBi" id="7a" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:5960383906433193059" />
                  <node concept="37vLTw" id="7c" role="2Oq$k0">
                    <ref role="3cqZAo" node="6V" resolve="test" />
                    <uo k="s:originTrace" v="n:5960383906433191067" />
                  </node>
                  <node concept="3TrEf2" id="7d" role="2OqNvi">
                    <ref role="3Tt5mk" to="tp5g:2IvnPUIp3ly" resolve="testNodeBefore" />
                    <uo k="s:originTrace" v="n:3143335925185562625" />
                  </node>
                </node>
                <node concept="3TrEf2" id="7b" role="2OqNvi">
                  <ref role="3Tt5mk" to="tp5g:hHqenIi" resolve="nodeToCheck" />
                  <uo k="s:originTrace" v="n:3143335925185564145" />
                </node>
              </node>
              <node concept="3x8VRR" id="79" role="2OqNvi">
                <uo k="s:originTrace" v="n:5960383906433197722" />
              </node>
            </node>
            <node concept="2OqwBi" id="77" role="3uHU7w">
              <uo k="s:originTrace" v="n:5960383906433116793" />
              <node concept="2OqwBi" id="7e" role="2Oq$k0">
                <uo k="s:originTrace" v="n:5960383906433090714" />
                <node concept="2OqwBi" id="7g" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:3143335925185565536" />
                  <node concept="2OqwBi" id="7i" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:5960383906433165294" />
                    <node concept="37vLTw" id="7k" role="2Oq$k0">
                      <ref role="3cqZAo" node="6V" resolve="test" />
                      <uo k="s:originTrace" v="n:5960383906433090715" />
                    </node>
                    <node concept="3TrEf2" id="7l" role="2OqNvi">
                      <ref role="3Tt5mk" to="tp5g:2IvnPUIp3ly" resolve="testNodeBefore" />
                      <uo k="s:originTrace" v="n:3143335925185564537" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="7j" role="2OqNvi">
                    <ref role="3Tt5mk" to="tp5g:hHqenIi" resolve="nodeToCheck" />
                    <uo k="s:originTrace" v="n:3143335925185566487" />
                  </node>
                </node>
                <node concept="2Rf3mk" id="7h" role="2OqNvi">
                  <uo k="s:originTrace" v="n:5960383906433092283" />
                  <node concept="1xMEDy" id="7m" role="1xVPHs">
                    <uo k="s:originTrace" v="n:5960383906433092285" />
                    <node concept="chp4Y" id="7n" role="ri$Ld">
                      <ref role="cht4Q" to="tp5g:hSLIFSi" resolve="AnonymousCellAnnotation" />
                      <uo k="s:originTrace" v="n:5960383906433092366" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1v1jN8" id="7f" role="2OqNvi">
                <uo k="s:originTrace" v="n:5960383906433147185" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="75" role="3clFbx">
            <uo k="s:originTrace" v="n:5960383906433090717" />
            <node concept="9aQIb" id="7o" role="3cqZAp">
              <uo k="s:originTrace" v="n:5960383906433090718" />
              <node concept="3clFbS" id="7p" role="9aQI4">
                <node concept="3cpWs8" id="7r" role="3cqZAp">
                  <node concept="3cpWsn" id="7t" role="3cpWs9">
                    <property role="TrG5h" value="errorTarget" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3uibUv" id="7u" role="1tU5fm">
                      <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                    </node>
                    <node concept="2ShNRf" id="7v" role="33vP2m">
                      <node concept="1pGfFk" id="7w" role="2ShVmc">
                        <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="7s" role="3cqZAp">
                  <node concept="3cpWsn" id="7x" role="3cpWs9">
                    <property role="TrG5h" value="_reporter_2309309498" />
                    <node concept="3uibUv" id="7y" role="1tU5fm">
                      <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                    </node>
                    <node concept="2OqwBi" id="7z" role="33vP2m">
                      <node concept="3VmV3z" id="7$" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="7A" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7_" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportWarning(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportWarning" />
                        <node concept="37vLTw" id="7B" role="37wK5m">
                          <ref role="3cqZAo" node="6V" resolve="test" />
                          <uo k="s:originTrace" v="n:5960383906433090720" />
                        </node>
                        <node concept="Xl_RD" id="7C" role="37wK5m">
                          <property role="Xl_RC" value="The 'before' section must have an AnonymousCellAnnotation attached" />
                          <uo k="s:originTrace" v="n:5960383906433090722" />
                        </node>
                        <node concept="Xl_RD" id="7D" role="37wK5m">
                          <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="7E" role="37wK5m">
                          <property role="Xl_RC" value="5960383906433090718" />
                        </node>
                        <node concept="10Nm6u" id="7F" role="37wK5m" />
                        <node concept="37vLTw" id="7G" role="37wK5m">
                          <ref role="3cqZAo" node="7t" resolve="errorTarget" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="6wLe0" id="7q" role="lGtFl">
                <property role="6wLej" value="5960383906433090718" />
                <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6Z" role="1B3o_S">
        <uo k="s:originTrace" v="n:5960383906433090709" />
      </node>
    </node>
    <node concept="3clFb_" id="6L" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:5960383906433090709" />
      <node concept="3bZ5Sz" id="7H" role="3clF45">
        <uo k="s:originTrace" v="n:5960383906433090709" />
      </node>
      <node concept="3clFbS" id="7I" role="3clF47">
        <uo k="s:originTrace" v="n:5960383906433090709" />
        <node concept="3cpWs6" id="7K" role="3cqZAp">
          <uo k="s:originTrace" v="n:5960383906433090709" />
          <node concept="35c_gC" id="7L" role="3cqZAk">
            <ref role="35c_gD" to="tp5g:hSLiM3w" resolve="EditorTestCase" />
            <uo k="s:originTrace" v="n:5960383906433090709" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7J" role="1B3o_S">
        <uo k="s:originTrace" v="n:5960383906433090709" />
      </node>
    </node>
    <node concept="3clFb_" id="6M" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:5960383906433090709" />
      <node concept="37vLTG" id="7M" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:5960383906433090709" />
        <node concept="3Tqbb2" id="7Q" role="1tU5fm">
          <uo k="s:originTrace" v="n:5960383906433090709" />
        </node>
      </node>
      <node concept="3clFbS" id="7N" role="3clF47">
        <uo k="s:originTrace" v="n:5960383906433090709" />
        <node concept="9aQIb" id="7R" role="3cqZAp">
          <uo k="s:originTrace" v="n:5960383906433090709" />
          <node concept="3clFbS" id="7S" role="9aQI4">
            <uo k="s:originTrace" v="n:5960383906433090709" />
            <node concept="3cpWs6" id="7T" role="3cqZAp">
              <uo k="s:originTrace" v="n:5960383906433090709" />
              <node concept="2ShNRf" id="7U" role="3cqZAk">
                <uo k="s:originTrace" v="n:5960383906433090709" />
                <node concept="1pGfFk" id="7V" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:5960383906433090709" />
                  <node concept="2OqwBi" id="7W" role="37wK5m">
                    <uo k="s:originTrace" v="n:5960383906433090709" />
                    <node concept="2OqwBi" id="7Y" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:5960383906433090709" />
                      <node concept="liA8E" id="80" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:5960383906433090709" />
                      </node>
                      <node concept="2JrnkZ" id="81" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:5960383906433090709" />
                        <node concept="37vLTw" id="82" role="2JrQYb">
                          <ref role="3cqZAo" node="7M" resolve="argument" />
                          <uo k="s:originTrace" v="n:5960383906433090709" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="7Z" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:5960383906433090709" />
                      <node concept="1rXfSq" id="83" role="37wK5m">
                        <ref role="37wK5l" node="6L" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:5960383906433090709" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="7X" role="37wK5m">
                    <uo k="s:originTrace" v="n:5960383906433090709" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7O" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:5960383906433090709" />
      </node>
      <node concept="3Tm1VV" id="7P" role="1B3o_S">
        <uo k="s:originTrace" v="n:5960383906433090709" />
      </node>
    </node>
    <node concept="3clFb_" id="6N" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:5960383906433090709" />
      <node concept="3clFbS" id="84" role="3clF47">
        <uo k="s:originTrace" v="n:5960383906433090709" />
        <node concept="3cpWs6" id="87" role="3cqZAp">
          <uo k="s:originTrace" v="n:5960383906433090709" />
          <node concept="3clFbT" id="88" role="3cqZAk">
            <uo k="s:originTrace" v="n:5960383906433090709" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="85" role="3clF45">
        <uo k="s:originTrace" v="n:5960383906433090709" />
      </node>
      <node concept="3Tm1VV" id="86" role="1B3o_S">
        <uo k="s:originTrace" v="n:5960383906433090709" />
      </node>
    </node>
    <node concept="3uibUv" id="6O" role="EKbjA">
      <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:5960383906433090709" />
    </node>
    <node concept="3uibUv" id="6P" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractNonTypesystemRule_Runtime" resolve="AbstractNonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:5960383906433090709" />
    </node>
    <node concept="3Tm1VV" id="6Q" role="1B3o_S">
      <uo k="s:originTrace" v="n:5960383906433090709" />
    </node>
  </node>
  <node concept="312cEu" id="89">
    <property role="3GE5qa" value="editor" />
    <property role="TrG5h" value="checkBeforePresents_EditorTestCase_NonTypesystemRule" />
    <uo k="s:originTrace" v="n:5960383906433080931" />
    <node concept="3clFbW" id="8a" role="jymVt">
      <uo k="s:originTrace" v="n:5960383906433080931" />
      <node concept="3clFbS" id="8i" role="3clF47">
        <uo k="s:originTrace" v="n:5960383906433080931" />
      </node>
      <node concept="3Tm1VV" id="8j" role="1B3o_S">
        <uo k="s:originTrace" v="n:5960383906433080931" />
      </node>
      <node concept="3cqZAl" id="8k" role="3clF45">
        <uo k="s:originTrace" v="n:5960383906433080931" />
      </node>
    </node>
    <node concept="3clFb_" id="8b" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:5960383906433080931" />
      <node concept="3cqZAl" id="8l" role="3clF45">
        <uo k="s:originTrace" v="n:5960383906433080931" />
      </node>
      <node concept="37vLTG" id="8m" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="test" />
        <uo k="s:originTrace" v="n:5960383906433080931" />
        <node concept="3Tqbb2" id="8r" role="1tU5fm">
          <uo k="s:originTrace" v="n:5960383906433080931" />
        </node>
      </node>
      <node concept="37vLTG" id="8n" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:5960383906433080931" />
        <node concept="3uibUv" id="8s" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:5960383906433080931" />
        </node>
      </node>
      <node concept="37vLTG" id="8o" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:5960383906433080931" />
        <node concept="3uibUv" id="8t" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:5960383906433080931" />
        </node>
      </node>
      <node concept="3clFbS" id="8p" role="3clF47">
        <uo k="s:originTrace" v="n:5960383906433080932" />
        <node concept="3clFbJ" id="8u" role="3cqZAp">
          <uo k="s:originTrace" v="n:5960383906433080941" />
          <node concept="2OqwBi" id="8v" role="3clFbw">
            <uo k="s:originTrace" v="n:5960383906433171997" />
            <node concept="2OqwBi" id="8x" role="2Oq$k0">
              <uo k="s:originTrace" v="n:5960383906433082021" />
              <node concept="37vLTw" id="8z" role="2Oq$k0">
                <ref role="3cqZAo" node="8m" resolve="test" />
                <uo k="s:originTrace" v="n:5960383906433080953" />
              </node>
              <node concept="3TrEf2" id="8$" role="2OqNvi">
                <ref role="3Tt5mk" to="tp5g:2IvnPUIp3ly" resolve="testNodeBefore" />
                <uo k="s:originTrace" v="n:3143335925185566915" />
              </node>
            </node>
            <node concept="3w_OXm" id="8y" role="2OqNvi">
              <uo k="s:originTrace" v="n:5960383906433172547" />
            </node>
          </node>
          <node concept="3clFbS" id="8w" role="3clFbx">
            <uo k="s:originTrace" v="n:5960383906433080943" />
            <node concept="9aQIb" id="8_" role="3cqZAp">
              <uo k="s:originTrace" v="n:5960383906433085526" />
              <node concept="3clFbS" id="8A" role="9aQI4">
                <node concept="3cpWs8" id="8C" role="3cqZAp">
                  <node concept="3cpWsn" id="8E" role="3cpWs9">
                    <property role="TrG5h" value="errorTarget" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3uibUv" id="8F" role="1tU5fm">
                      <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                    </node>
                    <node concept="2ShNRf" id="8G" role="33vP2m">
                      <node concept="1pGfFk" id="8H" role="2ShVmc">
                        <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="8D" role="3cqZAp">
                  <node concept="3cpWsn" id="8I" role="3cpWs9">
                    <property role="TrG5h" value="_reporter_2309309498" />
                    <node concept="3uibUv" id="8J" role="1tU5fm">
                      <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                    </node>
                    <node concept="2OqwBi" id="8K" role="33vP2m">
                      <node concept="3VmV3z" id="8L" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="8N" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="8M" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportWarning(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportWarning" />
                        <node concept="37vLTw" id="8O" role="37wK5m">
                          <ref role="3cqZAo" node="8m" resolve="test" />
                          <uo k="s:originTrace" v="n:5960383906433085544" />
                        </node>
                        <node concept="Xl_RD" id="8P" role="37wK5m">
                          <property role="Xl_RC" value="A node in the 'before' section must be provided" />
                          <uo k="s:originTrace" v="n:5960383906433089827" />
                        </node>
                        <node concept="Xl_RD" id="8Q" role="37wK5m">
                          <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="8R" role="37wK5m">
                          <property role="Xl_RC" value="5960383906433085526" />
                        </node>
                        <node concept="10Nm6u" id="8S" role="37wK5m" />
                        <node concept="37vLTw" id="8T" role="37wK5m">
                          <ref role="3cqZAo" node="8E" resolve="errorTarget" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="6wLe0" id="8B" role="lGtFl">
                <property role="6wLej" value="5960383906433085526" />
                <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="8q" role="1B3o_S">
        <uo k="s:originTrace" v="n:5960383906433080931" />
      </node>
    </node>
    <node concept="3clFb_" id="8c" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:5960383906433080931" />
      <node concept="3bZ5Sz" id="8U" role="3clF45">
        <uo k="s:originTrace" v="n:5960383906433080931" />
      </node>
      <node concept="3clFbS" id="8V" role="3clF47">
        <uo k="s:originTrace" v="n:5960383906433080931" />
        <node concept="3cpWs6" id="8X" role="3cqZAp">
          <uo k="s:originTrace" v="n:5960383906433080931" />
          <node concept="35c_gC" id="8Y" role="3cqZAk">
            <ref role="35c_gD" to="tp5g:hSLiM3w" resolve="EditorTestCase" />
            <uo k="s:originTrace" v="n:5960383906433080931" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="8W" role="1B3o_S">
        <uo k="s:originTrace" v="n:5960383906433080931" />
      </node>
    </node>
    <node concept="3clFb_" id="8d" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:5960383906433080931" />
      <node concept="37vLTG" id="8Z" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:5960383906433080931" />
        <node concept="3Tqbb2" id="93" role="1tU5fm">
          <uo k="s:originTrace" v="n:5960383906433080931" />
        </node>
      </node>
      <node concept="3clFbS" id="90" role="3clF47">
        <uo k="s:originTrace" v="n:5960383906433080931" />
        <node concept="9aQIb" id="94" role="3cqZAp">
          <uo k="s:originTrace" v="n:5960383906433080931" />
          <node concept="3clFbS" id="95" role="9aQI4">
            <uo k="s:originTrace" v="n:5960383906433080931" />
            <node concept="3cpWs6" id="96" role="3cqZAp">
              <uo k="s:originTrace" v="n:5960383906433080931" />
              <node concept="2ShNRf" id="97" role="3cqZAk">
                <uo k="s:originTrace" v="n:5960383906433080931" />
                <node concept="1pGfFk" id="98" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:5960383906433080931" />
                  <node concept="2OqwBi" id="99" role="37wK5m">
                    <uo k="s:originTrace" v="n:5960383906433080931" />
                    <node concept="2OqwBi" id="9b" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:5960383906433080931" />
                      <node concept="liA8E" id="9d" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:5960383906433080931" />
                      </node>
                      <node concept="2JrnkZ" id="9e" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:5960383906433080931" />
                        <node concept="37vLTw" id="9f" role="2JrQYb">
                          <ref role="3cqZAo" node="8Z" resolve="argument" />
                          <uo k="s:originTrace" v="n:5960383906433080931" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="9c" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:5960383906433080931" />
                      <node concept="1rXfSq" id="9g" role="37wK5m">
                        <ref role="37wK5l" node="8c" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:5960383906433080931" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="9a" role="37wK5m">
                    <uo k="s:originTrace" v="n:5960383906433080931" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="91" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:5960383906433080931" />
      </node>
      <node concept="3Tm1VV" id="92" role="1B3o_S">
        <uo k="s:originTrace" v="n:5960383906433080931" />
      </node>
    </node>
    <node concept="3clFb_" id="8e" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:5960383906433080931" />
      <node concept="3clFbS" id="9h" role="3clF47">
        <uo k="s:originTrace" v="n:5960383906433080931" />
        <node concept="3cpWs6" id="9k" role="3cqZAp">
          <uo k="s:originTrace" v="n:5960383906433080931" />
          <node concept="3clFbT" id="9l" role="3cqZAk">
            <uo k="s:originTrace" v="n:5960383906433080931" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="9i" role="3clF45">
        <uo k="s:originTrace" v="n:5960383906433080931" />
      </node>
      <node concept="3Tm1VV" id="9j" role="1B3o_S">
        <uo k="s:originTrace" v="n:5960383906433080931" />
      </node>
    </node>
    <node concept="3uibUv" id="8f" role="EKbjA">
      <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:5960383906433080931" />
    </node>
    <node concept="3uibUv" id="8g" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractNonTypesystemRule_Runtime" resolve="AbstractNonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:5960383906433080931" />
    </node>
    <node concept="3Tm1VV" id="8h" role="1B3o_S">
      <uo k="s:originTrace" v="n:5960383906433080931" />
    </node>
  </node>
  <node concept="312cEu" id="9m">
    <property role="TrG5h" value="checkTestMethodDataflow_NonTypesystemRule" />
    <uo k="s:originTrace" v="n:1217855694003" />
    <node concept="3clFbW" id="9n" role="jymVt">
      <uo k="s:originTrace" v="n:1217855694003" />
      <node concept="3clFbS" id="9v" role="3clF47">
        <uo k="s:originTrace" v="n:1217855694003" />
      </node>
      <node concept="3Tm1VV" id="9w" role="1B3o_S">
        <uo k="s:originTrace" v="n:1217855694003" />
      </node>
      <node concept="3cqZAl" id="9x" role="3clF45">
        <uo k="s:originTrace" v="n:1217855694003" />
      </node>
    </node>
    <node concept="3clFb_" id="9o" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:1217855694003" />
      <node concept="3cqZAl" id="9y" role="3clF45">
        <uo k="s:originTrace" v="n:1217855694003" />
      </node>
      <node concept="37vLTG" id="9z" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="nodesTestMethod" />
        <uo k="s:originTrace" v="n:1217855694003" />
        <node concept="3Tqbb2" id="9C" role="1tU5fm">
          <uo k="s:originTrace" v="n:1217855694003" />
        </node>
      </node>
      <node concept="37vLTG" id="9$" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:1217855694003" />
        <node concept="3uibUv" id="9D" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:1217855694003" />
        </node>
      </node>
      <node concept="37vLTG" id="9_" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:1217855694003" />
        <node concept="3uibUv" id="9E" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:1217855694003" />
        </node>
      </node>
      <node concept="3clFbS" id="9A" role="3clF47">
        <uo k="s:originTrace" v="n:1217855694004" />
        <node concept="3clFbF" id="9F" role="3cqZAp">
          <uo k="s:originTrace" v="n:1223643137089" />
          <node concept="2YIFZM" id="9G" role="3clFbG">
            <ref role="37wK5l" to="tpeh:79XQS8VgL7r" resolve="checkDataFlow" />
            <ref role="1Pybhc" to="tpeh:hNACUz_" resolve="DataFlowUtil" />
            <uo k="s:originTrace" v="n:8249991444799099534" />
            <node concept="3VmV3z" id="9H" role="37wK5m">
              <property role="3VnrPo" value="typeCheckingContext" />
              <node concept="3uibUv" id="9J" role="3Vn4Tt">
                <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
              </node>
            </node>
            <node concept="2OqwBi" id="9I" role="37wK5m">
              <uo k="s:originTrace" v="n:8249991444799099535" />
              <node concept="37vLTw" id="9K" role="2Oq$k0">
                <ref role="3cqZAo" node="9z" resolve="nodesTestMethod" />
                <uo k="s:originTrace" v="n:8249991444799099536" />
              </node>
              <node concept="3TrEf2" id="9L" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fzclF7Z" resolve="body" />
                <uo k="s:originTrace" v="n:8249991444799099537" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="9B" role="1B3o_S">
        <uo k="s:originTrace" v="n:1217855694003" />
      </node>
    </node>
    <node concept="3clFb_" id="9p" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:1217855694003" />
      <node concept="3bZ5Sz" id="9M" role="3clF45">
        <uo k="s:originTrace" v="n:1217855694003" />
      </node>
      <node concept="3clFbS" id="9N" role="3clF47">
        <uo k="s:originTrace" v="n:1217855694003" />
        <node concept="3cpWs6" id="9P" role="3cqZAp">
          <uo k="s:originTrace" v="n:1217855694003" />
          <node concept="35c_gC" id="9Q" role="3cqZAk">
            <ref role="35c_gD" to="tp5g:hHlHkQ8" resolve="NodesTestMethod" />
            <uo k="s:originTrace" v="n:1217855694003" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="9O" role="1B3o_S">
        <uo k="s:originTrace" v="n:1217855694003" />
      </node>
    </node>
    <node concept="3clFb_" id="9q" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:1217855694003" />
      <node concept="37vLTG" id="9R" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:1217855694003" />
        <node concept="3Tqbb2" id="9V" role="1tU5fm">
          <uo k="s:originTrace" v="n:1217855694003" />
        </node>
      </node>
      <node concept="3clFbS" id="9S" role="3clF47">
        <uo k="s:originTrace" v="n:1217855694003" />
        <node concept="9aQIb" id="9W" role="3cqZAp">
          <uo k="s:originTrace" v="n:1217855694003" />
          <node concept="3clFbS" id="9X" role="9aQI4">
            <uo k="s:originTrace" v="n:1217855694003" />
            <node concept="3cpWs6" id="9Y" role="3cqZAp">
              <uo k="s:originTrace" v="n:1217855694003" />
              <node concept="2ShNRf" id="9Z" role="3cqZAk">
                <uo k="s:originTrace" v="n:1217855694003" />
                <node concept="1pGfFk" id="a0" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:1217855694003" />
                  <node concept="2OqwBi" id="a1" role="37wK5m">
                    <uo k="s:originTrace" v="n:1217855694003" />
                    <node concept="2OqwBi" id="a3" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:1217855694003" />
                      <node concept="liA8E" id="a5" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:1217855694003" />
                      </node>
                      <node concept="2JrnkZ" id="a6" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:1217855694003" />
                        <node concept="37vLTw" id="a7" role="2JrQYb">
                          <ref role="3cqZAo" node="9R" resolve="argument" />
                          <uo k="s:originTrace" v="n:1217855694003" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="a4" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:1217855694003" />
                      <node concept="1rXfSq" id="a8" role="37wK5m">
                        <ref role="37wK5l" node="9p" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:1217855694003" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="a2" role="37wK5m">
                    <uo k="s:originTrace" v="n:1217855694003" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="9T" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:1217855694003" />
      </node>
      <node concept="3Tm1VV" id="9U" role="1B3o_S">
        <uo k="s:originTrace" v="n:1217855694003" />
      </node>
    </node>
    <node concept="3clFb_" id="9r" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:1217855694003" />
      <node concept="3clFbS" id="a9" role="3clF47">
        <uo k="s:originTrace" v="n:1217855694003" />
        <node concept="3cpWs6" id="ac" role="3cqZAp">
          <uo k="s:originTrace" v="n:1217855694003" />
          <node concept="3clFbT" id="ad" role="3cqZAk">
            <uo k="s:originTrace" v="n:1217855694003" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="aa" role="3clF45">
        <uo k="s:originTrace" v="n:1217855694003" />
      </node>
      <node concept="3Tm1VV" id="ab" role="1B3o_S">
        <uo k="s:originTrace" v="n:1217855694003" />
      </node>
    </node>
    <node concept="3uibUv" id="9s" role="EKbjA">
      <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:1217855694003" />
    </node>
    <node concept="3uibUv" id="9t" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractNonTypesystemRule_Runtime" resolve="AbstractNonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:1217855694003" />
    </node>
    <node concept="3Tm1VV" id="9u" role="1B3o_S">
      <uo k="s:originTrace" v="n:1217855694003" />
    </node>
  </node>
  <node concept="312cEu" id="ae">
    <property role="TrG5h" value="check_AfterTestsMethod_NonTypesystemRule" />
    <uo k="s:originTrace" v="n:8965006166787352252" />
    <node concept="3clFbW" id="af" role="jymVt">
      <uo k="s:originTrace" v="n:8965006166787352252" />
      <node concept="3clFbS" id="an" role="3clF47">
        <uo k="s:originTrace" v="n:8965006166787352252" />
      </node>
      <node concept="3Tm1VV" id="ao" role="1B3o_S">
        <uo k="s:originTrace" v="n:8965006166787352252" />
      </node>
      <node concept="3cqZAl" id="ap" role="3clF45">
        <uo k="s:originTrace" v="n:8965006166787352252" />
      </node>
    </node>
    <node concept="3clFb_" id="ag" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:8965006166787352252" />
      <node concept="3cqZAl" id="aq" role="3clF45">
        <uo k="s:originTrace" v="n:8965006166787352252" />
      </node>
      <node concept="37vLTG" id="ar" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="afterTestsMethod" />
        <uo k="s:originTrace" v="n:8965006166787352252" />
        <node concept="3Tqbb2" id="aw" role="1tU5fm">
          <uo k="s:originTrace" v="n:8965006166787352252" />
        </node>
      </node>
      <node concept="37vLTG" id="as" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:8965006166787352252" />
        <node concept="3uibUv" id="ax" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:8965006166787352252" />
        </node>
      </node>
      <node concept="37vLTG" id="at" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:8965006166787352252" />
        <node concept="3uibUv" id="ay" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:8965006166787352252" />
        </node>
      </node>
      <node concept="3clFbS" id="au" role="3clF47">
        <uo k="s:originTrace" v="n:8965006166787352253" />
        <node concept="3clFbF" id="az" role="3cqZAp">
          <uo k="s:originTrace" v="n:8965006166787352259" />
          <node concept="2OqwBi" id="a$" role="3clFbG">
            <uo k="s:originTrace" v="n:8965006166787352260" />
            <node concept="2OqwBi" id="a_" role="2Oq$k0">
              <uo k="s:originTrace" v="n:8965006166787352261" />
              <node concept="2OqwBi" id="aB" role="2Oq$k0">
                <uo k="s:originTrace" v="n:8965006166787352262" />
                <node concept="3TrEf2" id="aD" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:gyVODHa" resolve="body" />
                  <uo k="s:originTrace" v="n:8965006166787352264" />
                </node>
                <node concept="37vLTw" id="aE" role="2Oq$k0">
                  <ref role="3cqZAo" node="ar" resolve="afterTestsMethod" />
                  <uo k="s:originTrace" v="n:8965006166787353660" />
                </node>
              </node>
              <node concept="2Rf3mk" id="aC" role="2OqNvi">
                <uo k="s:originTrace" v="n:8965006166787352265" />
                <node concept="1xMEDy" id="aF" role="1xVPHs">
                  <uo k="s:originTrace" v="n:8965006166787352266" />
                  <node concept="chp4Y" id="aG" role="ri$Ld">
                    <ref role="cht4Q" to="tp4f:hyWthE1" resolve="ThisClassifierExpression" />
                    <uo k="s:originTrace" v="n:8965006166787352267" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2es0OD" id="aA" role="2OqNvi">
              <uo k="s:originTrace" v="n:8965006166787352268" />
              <node concept="1bVj0M" id="aH" role="23t8la">
                <uo k="s:originTrace" v="n:8965006166787352269" />
                <node concept="3clFbS" id="aI" role="1bW5cS">
                  <uo k="s:originTrace" v="n:8965006166787352270" />
                  <node concept="9aQIb" id="aK" role="3cqZAp">
                    <uo k="s:originTrace" v="n:8965006166787352271" />
                    <node concept="3clFbS" id="aL" role="9aQI4">
                      <node concept="3cpWs8" id="aN" role="3cqZAp">
                        <node concept="3cpWsn" id="aP" role="3cpWs9">
                          <property role="TrG5h" value="errorTarget" />
                          <property role="3TUv4t" value="true" />
                          <node concept="3uibUv" id="aQ" role="1tU5fm">
                            <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                          </node>
                          <node concept="2ShNRf" id="aR" role="33vP2m">
                            <node concept="1pGfFk" id="aS" role="2ShVmc">
                              <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="aO" role="3cqZAp">
                        <node concept="3cpWsn" id="aT" role="3cpWs9">
                          <property role="TrG5h" value="_reporter_2309309498" />
                          <node concept="3uibUv" id="aU" role="1tU5fm">
                            <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                          </node>
                          <node concept="2OqwBi" id="aV" role="33vP2m">
                            <node concept="3VmV3z" id="aW" role="2Oq$k0">
                              <property role="3VnrPo" value="typeCheckingContext" />
                              <node concept="3uibUv" id="aY" role="3Vn4Tt">
                                <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                              </node>
                            </node>
                            <node concept="liA8E" id="aX" role="2OqNvi">
                              <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                              <node concept="37vLTw" id="aZ" role="37wK5m">
                                <ref role="3cqZAo" node="aJ" resolve="it" />
                                <uo k="s:originTrace" v="n:8965006166787352273" />
                              </node>
                              <node concept="Xl_RD" id="b0" role="37wK5m">
                                <property role="Xl_RC" value="Cannot refer to this in static context" />
                                <uo k="s:originTrace" v="n:8965006166787352272" />
                              </node>
                              <node concept="Xl_RD" id="b1" role="37wK5m">
                                <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
                              </node>
                              <node concept="Xl_RD" id="b2" role="37wK5m">
                                <property role="Xl_RC" value="8965006166787352271" />
                              </node>
                              <node concept="10Nm6u" id="b3" role="37wK5m" />
                              <node concept="37vLTw" id="b4" role="37wK5m">
                                <ref role="3cqZAo" node="aP" resolve="errorTarget" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="6wLe0" id="aM" role="lGtFl">
                      <property role="6wLej" value="8965006166787352271" />
                      <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="aJ" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <uo k="s:originTrace" v="n:8965006166787352274" />
                  <node concept="2jxLKc" id="b5" role="1tU5fm">
                    <uo k="s:originTrace" v="n:8965006166787352275" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="av" role="1B3o_S">
        <uo k="s:originTrace" v="n:8965006166787352252" />
      </node>
    </node>
    <node concept="3clFb_" id="ah" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:8965006166787352252" />
      <node concept="3bZ5Sz" id="b6" role="3clF45">
        <uo k="s:originTrace" v="n:8965006166787352252" />
      </node>
      <node concept="3clFbS" id="b7" role="3clF47">
        <uo k="s:originTrace" v="n:8965006166787352252" />
        <node concept="3cpWs6" id="b9" role="3cqZAp">
          <uo k="s:originTrace" v="n:8965006166787352252" />
          <node concept="35c_gC" id="ba" role="3cqZAk">
            <ref role="35c_gD" to="tp5g:2154_0wV2x8" resolve="AfterTestsMethod" />
            <uo k="s:originTrace" v="n:8965006166787352252" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="b8" role="1B3o_S">
        <uo k="s:originTrace" v="n:8965006166787352252" />
      </node>
    </node>
    <node concept="3clFb_" id="ai" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:8965006166787352252" />
      <node concept="37vLTG" id="bb" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:8965006166787352252" />
        <node concept="3Tqbb2" id="bf" role="1tU5fm">
          <uo k="s:originTrace" v="n:8965006166787352252" />
        </node>
      </node>
      <node concept="3clFbS" id="bc" role="3clF47">
        <uo k="s:originTrace" v="n:8965006166787352252" />
        <node concept="9aQIb" id="bg" role="3cqZAp">
          <uo k="s:originTrace" v="n:8965006166787352252" />
          <node concept="3clFbS" id="bh" role="9aQI4">
            <uo k="s:originTrace" v="n:8965006166787352252" />
            <node concept="3cpWs6" id="bi" role="3cqZAp">
              <uo k="s:originTrace" v="n:8965006166787352252" />
              <node concept="2ShNRf" id="bj" role="3cqZAk">
                <uo k="s:originTrace" v="n:8965006166787352252" />
                <node concept="1pGfFk" id="bk" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:8965006166787352252" />
                  <node concept="2OqwBi" id="bl" role="37wK5m">
                    <uo k="s:originTrace" v="n:8965006166787352252" />
                    <node concept="2OqwBi" id="bn" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:8965006166787352252" />
                      <node concept="liA8E" id="bp" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:8965006166787352252" />
                      </node>
                      <node concept="2JrnkZ" id="bq" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:8965006166787352252" />
                        <node concept="37vLTw" id="br" role="2JrQYb">
                          <ref role="3cqZAo" node="bb" resolve="argument" />
                          <uo k="s:originTrace" v="n:8965006166787352252" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="bo" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:8965006166787352252" />
                      <node concept="1rXfSq" id="bs" role="37wK5m">
                        <ref role="37wK5l" node="ah" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:8965006166787352252" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="bm" role="37wK5m">
                    <uo k="s:originTrace" v="n:8965006166787352252" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="bd" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:8965006166787352252" />
      </node>
      <node concept="3Tm1VV" id="be" role="1B3o_S">
        <uo k="s:originTrace" v="n:8965006166787352252" />
      </node>
    </node>
    <node concept="3clFb_" id="aj" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:8965006166787352252" />
      <node concept="3clFbS" id="bt" role="3clF47">
        <uo k="s:originTrace" v="n:8965006166787352252" />
        <node concept="3cpWs6" id="bw" role="3cqZAp">
          <uo k="s:originTrace" v="n:8965006166787352252" />
          <node concept="3clFbT" id="bx" role="3cqZAk">
            <uo k="s:originTrace" v="n:8965006166787352252" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="bu" role="3clF45">
        <uo k="s:originTrace" v="n:8965006166787352252" />
      </node>
      <node concept="3Tm1VV" id="bv" role="1B3o_S">
        <uo k="s:originTrace" v="n:8965006166787352252" />
      </node>
    </node>
    <node concept="3uibUv" id="ak" role="EKbjA">
      <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:8965006166787352252" />
    </node>
    <node concept="3uibUv" id="al" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractNonTypesystemRule_Runtime" resolve="AbstractNonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:8965006166787352252" />
    </node>
    <node concept="3Tm1VV" id="am" role="1B3o_S">
      <uo k="s:originTrace" v="n:8965006166787352252" />
    </node>
  </node>
  <node concept="312cEu" id="by">
    <property role="3GE5qa" value="editor" />
    <property role="TrG5h" value="check_AssertStatementInsideEditorTestCase_NonTypesystemRule" />
    <uo k="s:originTrace" v="n:8315441706323992383" />
    <node concept="3clFbW" id="bz" role="jymVt">
      <uo k="s:originTrace" v="n:8315441706323992383" />
      <node concept="3clFbS" id="bF" role="3clF47">
        <uo k="s:originTrace" v="n:8315441706323992383" />
      </node>
      <node concept="3Tm1VV" id="bG" role="1B3o_S">
        <uo k="s:originTrace" v="n:8315441706323992383" />
      </node>
      <node concept="3cqZAl" id="bH" role="3clF45">
        <uo k="s:originTrace" v="n:8315441706323992383" />
      </node>
    </node>
    <node concept="3clFb_" id="b$" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:8315441706323992383" />
      <node concept="3cqZAl" id="bI" role="3clF45">
        <uo k="s:originTrace" v="n:8315441706323992383" />
      </node>
      <node concept="37vLTG" id="bJ" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:8315441706323992383" />
        <node concept="3Tqbb2" id="bO" role="1tU5fm">
          <uo k="s:originTrace" v="n:8315441706323992383" />
        </node>
      </node>
      <node concept="37vLTG" id="bK" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:8315441706323992383" />
        <node concept="3uibUv" id="bP" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:8315441706323992383" />
        </node>
      </node>
      <node concept="37vLTG" id="bL" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:8315441706323992383" />
        <node concept="3uibUv" id="bQ" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:8315441706323992383" />
        </node>
      </node>
      <node concept="3clFbS" id="bM" role="3clF47">
        <uo k="s:originTrace" v="n:8315441706323992384" />
        <node concept="3cpWs8" id="bR" role="3cqZAp">
          <uo k="s:originTrace" v="n:8315441706324004783" />
          <node concept="3cpWsn" id="bV" role="3cpWs9">
            <property role="TrG5h" value="current" />
            <uo k="s:originTrace" v="n:8315441706324004786" />
            <node concept="3Tqbb2" id="bW" role="1tU5fm">
              <uo k="s:originTrace" v="n:8315441706324004781" />
            </node>
            <node concept="37vLTw" id="bX" role="33vP2m">
              <ref role="3cqZAo" node="bJ" resolve="node" />
              <uo k="s:originTrace" v="n:8315441706324004826" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="bS" role="3cqZAp">
          <uo k="s:originTrace" v="n:8315441706323999763" />
          <node concept="3cpWsn" id="bY" role="3cpWs9">
            <property role="TrG5h" value="parent" />
            <uo k="s:originTrace" v="n:8315441706323999764" />
            <node concept="3Tqbb2" id="bZ" role="1tU5fm">
              <uo k="s:originTrace" v="n:8315441706323999762" />
            </node>
            <node concept="2OqwBi" id="c0" role="33vP2m">
              <uo k="s:originTrace" v="n:8315441706323999765" />
              <node concept="37vLTw" id="c1" role="2Oq$k0">
                <ref role="3cqZAo" node="bJ" resolve="node" />
                <uo k="s:originTrace" v="n:8315441706323999766" />
              </node>
              <node concept="1mfA1w" id="c2" role="2OqNvi">
                <uo k="s:originTrace" v="n:8315441706323999767" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="bT" role="3cqZAp">
          <uo k="s:originTrace" v="n:8315441706323999814" />
          <node concept="3clFbS" id="c3" role="2LFqv$">
            <uo k="s:originTrace" v="n:8315441706323999816" />
            <node concept="3clFbF" id="c5" role="3cqZAp">
              <uo k="s:originTrace" v="n:8315441706324004950" />
              <node concept="37vLTI" id="c7" role="3clFbG">
                <uo k="s:originTrace" v="n:8315441706324005356" />
                <node concept="37vLTw" id="c8" role="37vLTx">
                  <ref role="3cqZAo" node="bY" resolve="parent" />
                  <uo k="s:originTrace" v="n:8315441706324005470" />
                </node>
                <node concept="37vLTw" id="c9" role="37vLTJ">
                  <ref role="3cqZAo" node="bV" resolve="current" />
                  <uo k="s:originTrace" v="n:8315441706324004948" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="c6" role="3cqZAp">
              <uo k="s:originTrace" v="n:8315441706324003935" />
              <node concept="37vLTI" id="ca" role="3clFbG">
                <uo k="s:originTrace" v="n:8315441706324004433" />
                <node concept="2OqwBi" id="cb" role="37vLTx">
                  <uo k="s:originTrace" v="n:8315441706324005987" />
                  <node concept="37vLTw" id="cd" role="2Oq$k0">
                    <ref role="3cqZAo" node="bY" resolve="parent" />
                    <uo k="s:originTrace" v="n:8315441706324005579" />
                  </node>
                  <node concept="1mfA1w" id="ce" role="2OqNvi">
                    <uo k="s:originTrace" v="n:8315441706324006389" />
                  </node>
                </node>
                <node concept="37vLTw" id="cc" role="37vLTJ">
                  <ref role="3cqZAo" node="bY" resolve="parent" />
                  <uo k="s:originTrace" v="n:8315441706324003934" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="c4" role="2$JKZa">
            <uo k="s:originTrace" v="n:8315441706324000370" />
            <node concept="3fqX7Q" id="cf" role="3uHU7w">
              <uo k="s:originTrace" v="n:8315441706324000407" />
              <node concept="2OqwBi" id="ch" role="3fr31v">
                <uo k="s:originTrace" v="n:8315441706324000964" />
                <node concept="37vLTw" id="ci" role="2Oq$k0">
                  <ref role="3cqZAo" node="bY" resolve="parent" />
                  <uo k="s:originTrace" v="n:8315441706324000442" />
                </node>
                <node concept="1mIQ4w" id="cj" role="2OqNvi">
                  <uo k="s:originTrace" v="n:8315441706324001575" />
                  <node concept="chp4Y" id="ck" role="cj9EA">
                    <ref role="cht4Q" to="tpee:htgVS9_" resolve="IStatementListContainer" />
                    <uo k="s:originTrace" v="n:8315441706324001717" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="cg" role="3uHU7B">
              <uo k="s:originTrace" v="n:8315441706324000331" />
              <node concept="37vLTw" id="cl" role="3uHU7B">
                <ref role="3cqZAo" node="bY" resolve="parent" />
                <uo k="s:originTrace" v="n:8315441706323999833" />
              </node>
              <node concept="10Nm6u" id="cm" role="3uHU7w">
                <uo k="s:originTrace" v="n:8315441706324000348" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="bU" role="3cqZAp">
          <uo k="s:originTrace" v="n:8315441706324006442" />
          <node concept="3clFbS" id="cn" role="3clFbx">
            <uo k="s:originTrace" v="n:8315441706324006444" />
            <node concept="9aQIb" id="cp" role="3cqZAp">
              <uo k="s:originTrace" v="n:8396091035812119723" />
              <node concept="3clFbS" id="cq" role="9aQI4">
                <node concept="3cpWs8" id="cs" role="3cqZAp">
                  <node concept="3cpWsn" id="cu" role="3cpWs9">
                    <property role="TrG5h" value="errorTarget" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3uibUv" id="cv" role="1tU5fm">
                      <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                    </node>
                    <node concept="2ShNRf" id="cw" role="33vP2m">
                      <node concept="1pGfFk" id="cx" role="2ShVmc">
                        <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="ct" role="3cqZAp">
                  <node concept="3cpWsn" id="cy" role="3cpWs9">
                    <property role="TrG5h" value="_reporter_2309309498" />
                    <node concept="3uibUv" id="cz" role="1tU5fm">
                      <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                    </node>
                    <node concept="2OqwBi" id="c$" role="33vP2m">
                      <node concept="3VmV3z" id="c_" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="cB" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="cA" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportInfo(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportInfo" />
                        <node concept="37vLTw" id="cC" role="37wK5m">
                          <ref role="3cqZAo" node="bJ" resolve="node" />
                          <uo k="s:originTrace" v="n:8315441706324066011" />
                        </node>
                        <node concept="Xl_RD" id="cD" role="37wK5m">
                          <property role="Xl_RC" value="This is a usual Java assert statement. For testing with JUnit use assert constructions from jetbrains.mps.baseLanguage.unitTest" />
                          <uo k="s:originTrace" v="n:8396091035812120368" />
                        </node>
                        <node concept="Xl_RD" id="cE" role="37wK5m">
                          <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="cF" role="37wK5m">
                          <property role="Xl_RC" value="8396091035812119723" />
                        </node>
                        <node concept="10Nm6u" id="cG" role="37wK5m" />
                        <node concept="37vLTw" id="cH" role="37wK5m">
                          <ref role="3cqZAo" node="cu" resolve="errorTarget" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="6wLe0" id="cr" role="lGtFl">
                <property role="6wLej" value="8396091035812119723" />
                <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="co" role="3clFbw">
            <uo k="s:originTrace" v="n:8315441706324009070" />
            <node concept="17R0WA" id="cI" role="3uHU7w">
              <uo k="s:originTrace" v="n:8315441706324020520" />
              <node concept="359W_D" id="cK" role="3uHU7w">
                <ref role="359W_E" to="tp5g:hSLiM3w" resolve="EditorTestCase" />
                <ref role="359W_F" to="tp5g:hSLjaOj" resolve="code" />
                <uo k="s:originTrace" v="n:8315441706324021000" />
              </node>
              <node concept="2OqwBi" id="cL" role="3uHU7B">
                <uo k="s:originTrace" v="n:8315441706324013898" />
                <node concept="2JrnkZ" id="cM" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:8315441706324013116" />
                  <node concept="37vLTw" id="cO" role="2JrQYb">
                    <ref role="3cqZAo" node="bV" resolve="current" />
                    <uo k="s:originTrace" v="n:8315441706324009390" />
                  </node>
                </node>
                <node concept="liA8E" id="cN" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getContainmentLink()" resolve="getContainmentLink" />
                  <uo k="s:originTrace" v="n:8315441706324014585" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="cJ" role="3uHU7B">
              <uo k="s:originTrace" v="n:8315441706324006985" />
              <node concept="37vLTw" id="cP" role="2Oq$k0">
                <ref role="3cqZAo" node="bY" resolve="parent" />
                <uo k="s:originTrace" v="n:8315441706324006488" />
              </node>
              <node concept="1mIQ4w" id="cQ" role="2OqNvi">
                <uo k="s:originTrace" v="n:8315441706324007571" />
                <node concept="chp4Y" id="cR" role="cj9EA">
                  <ref role="cht4Q" to="tp5g:hSLiM3w" resolve="EditorTestCase" />
                  <uo k="s:originTrace" v="n:8315441706324007686" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="bN" role="1B3o_S">
        <uo k="s:originTrace" v="n:8315441706323992383" />
      </node>
    </node>
    <node concept="3clFb_" id="b_" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:8315441706323992383" />
      <node concept="3bZ5Sz" id="cS" role="3clF45">
        <uo k="s:originTrace" v="n:8315441706323992383" />
      </node>
      <node concept="3clFbS" id="cT" role="3clF47">
        <uo k="s:originTrace" v="n:8315441706323992383" />
        <node concept="3cpWs6" id="cV" role="3cqZAp">
          <uo k="s:originTrace" v="n:8315441706323992383" />
          <node concept="35c_gC" id="cW" role="3cqZAk">
            <ref role="35c_gD" to="tpee:gTgVbCX" resolve="AssertStatement" />
            <uo k="s:originTrace" v="n:8315441706323992383" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="cU" role="1B3o_S">
        <uo k="s:originTrace" v="n:8315441706323992383" />
      </node>
    </node>
    <node concept="3clFb_" id="bA" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:8315441706323992383" />
      <node concept="37vLTG" id="cX" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:8315441706323992383" />
        <node concept="3Tqbb2" id="d1" role="1tU5fm">
          <uo k="s:originTrace" v="n:8315441706323992383" />
        </node>
      </node>
      <node concept="3clFbS" id="cY" role="3clF47">
        <uo k="s:originTrace" v="n:8315441706323992383" />
        <node concept="9aQIb" id="d2" role="3cqZAp">
          <uo k="s:originTrace" v="n:8315441706323992383" />
          <node concept="3clFbS" id="d3" role="9aQI4">
            <uo k="s:originTrace" v="n:8315441706323992383" />
            <node concept="3cpWs6" id="d4" role="3cqZAp">
              <uo k="s:originTrace" v="n:8315441706323992383" />
              <node concept="2ShNRf" id="d5" role="3cqZAk">
                <uo k="s:originTrace" v="n:8315441706323992383" />
                <node concept="1pGfFk" id="d6" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:8315441706323992383" />
                  <node concept="2OqwBi" id="d7" role="37wK5m">
                    <uo k="s:originTrace" v="n:8315441706323992383" />
                    <node concept="2OqwBi" id="d9" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:8315441706323992383" />
                      <node concept="liA8E" id="db" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:8315441706323992383" />
                      </node>
                      <node concept="2JrnkZ" id="dc" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:8315441706323992383" />
                        <node concept="37vLTw" id="dd" role="2JrQYb">
                          <ref role="3cqZAo" node="cX" resolve="argument" />
                          <uo k="s:originTrace" v="n:8315441706323992383" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="da" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:8315441706323992383" />
                      <node concept="1rXfSq" id="de" role="37wK5m">
                        <ref role="37wK5l" node="b_" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:8315441706323992383" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="d8" role="37wK5m">
                    <uo k="s:originTrace" v="n:8315441706323992383" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="cZ" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:8315441706323992383" />
      </node>
      <node concept="3Tm1VV" id="d0" role="1B3o_S">
        <uo k="s:originTrace" v="n:8315441706323992383" />
      </node>
    </node>
    <node concept="3clFb_" id="bB" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:8315441706323992383" />
      <node concept="3clFbS" id="df" role="3clF47">
        <uo k="s:originTrace" v="n:8315441706323992383" />
        <node concept="3cpWs6" id="di" role="3cqZAp">
          <uo k="s:originTrace" v="n:8315441706323992383" />
          <node concept="3clFbT" id="dj" role="3cqZAk">
            <uo k="s:originTrace" v="n:8315441706323992383" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="dg" role="3clF45">
        <uo k="s:originTrace" v="n:8315441706323992383" />
      </node>
      <node concept="3Tm1VV" id="dh" role="1B3o_S">
        <uo k="s:originTrace" v="n:8315441706323992383" />
      </node>
    </node>
    <node concept="3uibUv" id="bC" role="EKbjA">
      <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:8315441706323992383" />
    </node>
    <node concept="3uibUv" id="bD" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractNonTypesystemRule_Runtime" resolve="AbstractNonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:8315441706323992383" />
    </node>
    <node concept="3Tm1VV" id="bE" role="1B3o_S">
      <uo k="s:originTrace" v="n:8315441706323992383" />
    </node>
  </node>
  <node concept="312cEu" id="dk">
    <property role="TrG5h" value="check_BeforeTestsMethod_NonTypesystemRule" />
    <uo k="s:originTrace" v="n:8965006166787186197" />
    <node concept="3clFbW" id="dl" role="jymVt">
      <uo k="s:originTrace" v="n:8965006166787186197" />
      <node concept="3clFbS" id="dt" role="3clF47">
        <uo k="s:originTrace" v="n:8965006166787186197" />
      </node>
      <node concept="3Tm1VV" id="du" role="1B3o_S">
        <uo k="s:originTrace" v="n:8965006166787186197" />
      </node>
      <node concept="3cqZAl" id="dv" role="3clF45">
        <uo k="s:originTrace" v="n:8965006166787186197" />
      </node>
    </node>
    <node concept="3clFb_" id="dm" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:8965006166787186197" />
      <node concept="3cqZAl" id="dw" role="3clF45">
        <uo k="s:originTrace" v="n:8965006166787186197" />
      </node>
      <node concept="37vLTG" id="dx" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="beforeTestsMethod" />
        <uo k="s:originTrace" v="n:8965006166787186197" />
        <node concept="3Tqbb2" id="dA" role="1tU5fm">
          <uo k="s:originTrace" v="n:8965006166787186197" />
        </node>
      </node>
      <node concept="37vLTG" id="dy" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:8965006166787186197" />
        <node concept="3uibUv" id="dB" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:8965006166787186197" />
        </node>
      </node>
      <node concept="37vLTG" id="dz" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:8965006166787186197" />
        <node concept="3uibUv" id="dC" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:8965006166787186197" />
        </node>
      </node>
      <node concept="3clFbS" id="d$" role="3clF47">
        <uo k="s:originTrace" v="n:8965006166787186198" />
        <node concept="3clFbF" id="dD" role="3cqZAp">
          <uo k="s:originTrace" v="n:8965006166787188955" />
          <node concept="2OqwBi" id="dE" role="3clFbG">
            <uo k="s:originTrace" v="n:8965006166787220700" />
            <node concept="2OqwBi" id="dF" role="2Oq$k0">
              <uo k="s:originTrace" v="n:8965006166787199327" />
              <node concept="2OqwBi" id="dH" role="2Oq$k0">
                <uo k="s:originTrace" v="n:8965006166787190076" />
                <node concept="37vLTw" id="dJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="dx" resolve="beforeTestsMethod" />
                  <uo k="s:originTrace" v="n:8965006166787188954" />
                </node>
                <node concept="3TrEf2" id="dK" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:gyVODHa" resolve="body" />
                  <uo k="s:originTrace" v="n:8965006166787198139" />
                </node>
              </node>
              <node concept="2Rf3mk" id="dI" role="2OqNvi">
                <uo k="s:originTrace" v="n:8965006166787332657" />
                <node concept="1xMEDy" id="dL" role="1xVPHs">
                  <uo k="s:originTrace" v="n:8965006166787332659" />
                  <node concept="chp4Y" id="dM" role="ri$Ld">
                    <ref role="cht4Q" to="tp4f:hyWthE1" resolve="ThisClassifierExpression" />
                    <uo k="s:originTrace" v="n:8965006166787332947" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2es0OD" id="dG" role="2OqNvi">
              <uo k="s:originTrace" v="n:8965006166787223136" />
              <node concept="1bVj0M" id="dN" role="23t8la">
                <uo k="s:originTrace" v="n:8965006166787223138" />
                <node concept="3clFbS" id="dO" role="1bW5cS">
                  <uo k="s:originTrace" v="n:8965006166787223139" />
                  <node concept="9aQIb" id="dQ" role="3cqZAp">
                    <uo k="s:originTrace" v="n:8965006166787225976" />
                    <node concept="3clFbS" id="dR" role="9aQI4">
                      <node concept="3cpWs8" id="dT" role="3cqZAp">
                        <node concept="3cpWsn" id="dV" role="3cpWs9">
                          <property role="TrG5h" value="errorTarget" />
                          <property role="3TUv4t" value="true" />
                          <node concept="3uibUv" id="dW" role="1tU5fm">
                            <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                          </node>
                          <node concept="2ShNRf" id="dX" role="33vP2m">
                            <node concept="1pGfFk" id="dY" role="2ShVmc">
                              <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="dU" role="3cqZAp">
                        <node concept="3cpWsn" id="dZ" role="3cpWs9">
                          <property role="TrG5h" value="_reporter_2309309498" />
                          <node concept="3uibUv" id="e0" role="1tU5fm">
                            <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                          </node>
                          <node concept="2OqwBi" id="e1" role="33vP2m">
                            <node concept="3VmV3z" id="e2" role="2Oq$k0">
                              <property role="3VnrPo" value="typeCheckingContext" />
                              <node concept="3uibUv" id="e4" role="3Vn4Tt">
                                <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                              </node>
                            </node>
                            <node concept="liA8E" id="e3" role="2OqNvi">
                              <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                              <node concept="37vLTw" id="e5" role="37wK5m">
                                <ref role="3cqZAo" node="dP" resolve="it" />
                                <uo k="s:originTrace" v="n:8965006166787227162" />
                              </node>
                              <node concept="Xl_RD" id="e6" role="37wK5m">
                                <property role="Xl_RC" value="Cannot refer to this in static context" />
                                <uo k="s:originTrace" v="n:8965006166787226167" />
                              </node>
                              <node concept="Xl_RD" id="e7" role="37wK5m">
                                <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
                              </node>
                              <node concept="Xl_RD" id="e8" role="37wK5m">
                                <property role="Xl_RC" value="8965006166787225976" />
                              </node>
                              <node concept="10Nm6u" id="e9" role="37wK5m" />
                              <node concept="37vLTw" id="ea" role="37wK5m">
                                <ref role="3cqZAo" node="dV" resolve="errorTarget" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="6wLe0" id="dS" role="lGtFl">
                      <property role="6wLej" value="8965006166787225976" />
                      <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="dP" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <uo k="s:originTrace" v="n:8965006166787223140" />
                  <node concept="2jxLKc" id="eb" role="1tU5fm">
                    <uo k="s:originTrace" v="n:8965006166787223141" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="d_" role="1B3o_S">
        <uo k="s:originTrace" v="n:8965006166787186197" />
      </node>
    </node>
    <node concept="3clFb_" id="dn" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:8965006166787186197" />
      <node concept="3bZ5Sz" id="ec" role="3clF45">
        <uo k="s:originTrace" v="n:8965006166787186197" />
      </node>
      <node concept="3clFbS" id="ed" role="3clF47">
        <uo k="s:originTrace" v="n:8965006166787186197" />
        <node concept="3cpWs6" id="ef" role="3cqZAp">
          <uo k="s:originTrace" v="n:8965006166787186197" />
          <node concept="35c_gC" id="eg" role="3cqZAk">
            <ref role="35c_gD" to="tp5g:2154_0wV2x7" resolve="BeforeTestsMethod" />
            <uo k="s:originTrace" v="n:8965006166787186197" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="ee" role="1B3o_S">
        <uo k="s:originTrace" v="n:8965006166787186197" />
      </node>
    </node>
    <node concept="3clFb_" id="do" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:8965006166787186197" />
      <node concept="37vLTG" id="eh" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:8965006166787186197" />
        <node concept="3Tqbb2" id="el" role="1tU5fm">
          <uo k="s:originTrace" v="n:8965006166787186197" />
        </node>
      </node>
      <node concept="3clFbS" id="ei" role="3clF47">
        <uo k="s:originTrace" v="n:8965006166787186197" />
        <node concept="9aQIb" id="em" role="3cqZAp">
          <uo k="s:originTrace" v="n:8965006166787186197" />
          <node concept="3clFbS" id="en" role="9aQI4">
            <uo k="s:originTrace" v="n:8965006166787186197" />
            <node concept="3cpWs6" id="eo" role="3cqZAp">
              <uo k="s:originTrace" v="n:8965006166787186197" />
              <node concept="2ShNRf" id="ep" role="3cqZAk">
                <uo k="s:originTrace" v="n:8965006166787186197" />
                <node concept="1pGfFk" id="eq" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:8965006166787186197" />
                  <node concept="2OqwBi" id="er" role="37wK5m">
                    <uo k="s:originTrace" v="n:8965006166787186197" />
                    <node concept="2OqwBi" id="et" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:8965006166787186197" />
                      <node concept="liA8E" id="ev" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:8965006166787186197" />
                      </node>
                      <node concept="2JrnkZ" id="ew" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:8965006166787186197" />
                        <node concept="37vLTw" id="ex" role="2JrQYb">
                          <ref role="3cqZAo" node="eh" resolve="argument" />
                          <uo k="s:originTrace" v="n:8965006166787186197" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="eu" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:8965006166787186197" />
                      <node concept="1rXfSq" id="ey" role="37wK5m">
                        <ref role="37wK5l" node="dn" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:8965006166787186197" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="es" role="37wK5m">
                    <uo k="s:originTrace" v="n:8965006166787186197" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="ej" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:8965006166787186197" />
      </node>
      <node concept="3Tm1VV" id="ek" role="1B3o_S">
        <uo k="s:originTrace" v="n:8965006166787186197" />
      </node>
    </node>
    <node concept="3clFb_" id="dp" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:8965006166787186197" />
      <node concept="3clFbS" id="ez" role="3clF47">
        <uo k="s:originTrace" v="n:8965006166787186197" />
        <node concept="3cpWs6" id="eA" role="3cqZAp">
          <uo k="s:originTrace" v="n:8965006166787186197" />
          <node concept="3clFbT" id="eB" role="3cqZAk">
            <uo k="s:originTrace" v="n:8965006166787186197" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="e$" role="3clF45">
        <uo k="s:originTrace" v="n:8965006166787186197" />
      </node>
      <node concept="3Tm1VV" id="e_" role="1B3o_S">
        <uo k="s:originTrace" v="n:8965006166787186197" />
      </node>
    </node>
    <node concept="3uibUv" id="dq" role="EKbjA">
      <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:8965006166787186197" />
    </node>
    <node concept="3uibUv" id="dr" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractNonTypesystemRule_Runtime" resolve="AbstractNonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:8965006166787186197" />
    </node>
    <node concept="3Tm1VV" id="ds" role="1B3o_S">
      <uo k="s:originTrace" v="n:8965006166787186197" />
    </node>
  </node>
  <node concept="312cEu" id="eC">
    <property role="3GE5qa" value="editor" />
    <property role="TrG5h" value="check_DragMouseStatement_NonTypesystemRule" />
    <uo k="s:originTrace" v="n:4196004291146422140" />
    <node concept="3clFbW" id="eD" role="jymVt">
      <uo k="s:originTrace" v="n:4196004291146422140" />
      <node concept="3clFbS" id="eL" role="3clF47">
        <uo k="s:originTrace" v="n:4196004291146422140" />
      </node>
      <node concept="3Tm1VV" id="eM" role="1B3o_S">
        <uo k="s:originTrace" v="n:4196004291146422140" />
      </node>
      <node concept="3cqZAl" id="eN" role="3clF45">
        <uo k="s:originTrace" v="n:4196004291146422140" />
      </node>
    </node>
    <node concept="3clFb_" id="eE" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:4196004291146422140" />
      <node concept="3cqZAl" id="eO" role="3clF45">
        <uo k="s:originTrace" v="n:4196004291146422140" />
      </node>
      <node concept="37vLTG" id="eP" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="dragMouseStatement" />
        <uo k="s:originTrace" v="n:4196004291146422140" />
        <node concept="3Tqbb2" id="eU" role="1tU5fm">
          <uo k="s:originTrace" v="n:4196004291146422140" />
        </node>
      </node>
      <node concept="37vLTG" id="eQ" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:4196004291146422140" />
        <node concept="3uibUv" id="eV" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:4196004291146422140" />
        </node>
      </node>
      <node concept="37vLTG" id="eR" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:4196004291146422140" />
        <node concept="3uibUv" id="eW" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:4196004291146422140" />
        </node>
      </node>
      <node concept="3clFbS" id="eS" role="3clF47">
        <uo k="s:originTrace" v="n:4196004291146422721" />
        <node concept="3clFbJ" id="eX" role="3cqZAp">
          <uo k="s:originTrace" v="n:4196004291146528197" />
          <node concept="3clFbS" id="eY" role="3clFbx">
            <uo k="s:originTrace" v="n:4196004291146528200" />
            <node concept="9aQIb" id="f0" role="3cqZAp">
              <uo k="s:originTrace" v="n:4196004291146540914" />
              <node concept="3clFbS" id="f1" role="9aQI4">
                <node concept="3cpWs8" id="f3" role="3cqZAp">
                  <node concept="3cpWsn" id="f5" role="3cpWs9">
                    <property role="TrG5h" value="errorTarget" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3uibUv" id="f6" role="1tU5fm">
                      <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                    </node>
                    <node concept="2ShNRf" id="f7" role="33vP2m">
                      <node concept="1pGfFk" id="f8" role="2ShVmc">
                        <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="f4" role="3cqZAp">
                  <node concept="3cpWsn" id="f9" role="3cpWs9">
                    <property role="TrG5h" value="_reporter_2309309498" />
                    <node concept="3uibUv" id="fa" role="1tU5fm">
                      <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                    </node>
                    <node concept="2OqwBi" id="fb" role="33vP2m">
                      <node concept="3VmV3z" id="fc" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="fe" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="fd" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                        <node concept="37vLTw" id="ff" role="37wK5m">
                          <ref role="3cqZAo" node="eP" resolve="dragMouseStatement" />
                          <uo k="s:originTrace" v="n:4196004291146540952" />
                        </node>
                        <node concept="Xl_RD" id="fg" role="37wK5m">
                          <property role="Xl_RC" value="Drag Mouse statement should be located inside Press Mouse statement" />
                          <uo k="s:originTrace" v="n:4196004291146540932" />
                        </node>
                        <node concept="Xl_RD" id="fh" role="37wK5m">
                          <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="fi" role="37wK5m">
                          <property role="Xl_RC" value="4196004291146540914" />
                        </node>
                        <node concept="10Nm6u" id="fj" role="37wK5m" />
                        <node concept="37vLTw" id="fk" role="37wK5m">
                          <ref role="3cqZAo" node="f5" resolve="errorTarget" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="6wLe0" id="f2" role="lGtFl">
                <property role="6wLej" value="4196004291146540914" />
                <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="eZ" role="3clFbw">
            <uo k="s:originTrace" v="n:4196004291146540594" />
            <node concept="10Nm6u" id="fl" role="3uHU7w">
              <uo k="s:originTrace" v="n:4196004291146540605" />
            </node>
            <node concept="2OqwBi" id="fm" role="3uHU7B">
              <uo k="s:originTrace" v="n:4196004291146430316" />
              <node concept="37vLTw" id="fn" role="2Oq$k0">
                <ref role="3cqZAo" node="eP" resolve="dragMouseStatement" />
                <uo k="s:originTrace" v="n:4196004291146430317" />
              </node>
              <node concept="3zqWPK" id="fo" role="2OqNvi">
                <ref role="37wK5l" to="tp5o:3CVcUJxN49_" resolve="getPressMouseStatement" />
                <uo k="s:originTrace" v="n:8085146484218845617" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="eT" role="1B3o_S">
        <uo k="s:originTrace" v="n:4196004291146422140" />
      </node>
    </node>
    <node concept="3clFb_" id="eF" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:4196004291146422140" />
      <node concept="3bZ5Sz" id="fp" role="3clF45">
        <uo k="s:originTrace" v="n:4196004291146422140" />
      </node>
      <node concept="3clFbS" id="fq" role="3clF47">
        <uo k="s:originTrace" v="n:4196004291146422140" />
        <node concept="3cpWs6" id="fs" role="3cqZAp">
          <uo k="s:originTrace" v="n:4196004291146422140" />
          <node concept="35c_gC" id="ft" role="3cqZAk">
            <ref role="35c_gD" to="tp5g:bG3Ez5na2z" resolve="DragMouseStatement" />
            <uo k="s:originTrace" v="n:4196004291146422140" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="fr" role="1B3o_S">
        <uo k="s:originTrace" v="n:4196004291146422140" />
      </node>
    </node>
    <node concept="3clFb_" id="eG" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:4196004291146422140" />
      <node concept="37vLTG" id="fu" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:4196004291146422140" />
        <node concept="3Tqbb2" id="fy" role="1tU5fm">
          <uo k="s:originTrace" v="n:4196004291146422140" />
        </node>
      </node>
      <node concept="3clFbS" id="fv" role="3clF47">
        <uo k="s:originTrace" v="n:4196004291146422140" />
        <node concept="9aQIb" id="fz" role="3cqZAp">
          <uo k="s:originTrace" v="n:4196004291146422140" />
          <node concept="3clFbS" id="f$" role="9aQI4">
            <uo k="s:originTrace" v="n:4196004291146422140" />
            <node concept="3cpWs6" id="f_" role="3cqZAp">
              <uo k="s:originTrace" v="n:4196004291146422140" />
              <node concept="2ShNRf" id="fA" role="3cqZAk">
                <uo k="s:originTrace" v="n:4196004291146422140" />
                <node concept="1pGfFk" id="fB" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:4196004291146422140" />
                  <node concept="2OqwBi" id="fC" role="37wK5m">
                    <uo k="s:originTrace" v="n:4196004291146422140" />
                    <node concept="2OqwBi" id="fE" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:4196004291146422140" />
                      <node concept="liA8E" id="fG" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:4196004291146422140" />
                      </node>
                      <node concept="2JrnkZ" id="fH" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:4196004291146422140" />
                        <node concept="37vLTw" id="fI" role="2JrQYb">
                          <ref role="3cqZAo" node="fu" resolve="argument" />
                          <uo k="s:originTrace" v="n:4196004291146422140" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="fF" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:4196004291146422140" />
                      <node concept="1rXfSq" id="fJ" role="37wK5m">
                        <ref role="37wK5l" node="eF" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:4196004291146422140" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="fD" role="37wK5m">
                    <uo k="s:originTrace" v="n:4196004291146422140" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="fw" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:4196004291146422140" />
      </node>
      <node concept="3Tm1VV" id="fx" role="1B3o_S">
        <uo k="s:originTrace" v="n:4196004291146422140" />
      </node>
    </node>
    <node concept="3clFb_" id="eH" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:4196004291146422140" />
      <node concept="3clFbS" id="fK" role="3clF47">
        <uo k="s:originTrace" v="n:4196004291146422140" />
        <node concept="3cpWs6" id="fN" role="3cqZAp">
          <uo k="s:originTrace" v="n:4196004291146422140" />
          <node concept="3clFbT" id="fO" role="3cqZAk">
            <uo k="s:originTrace" v="n:4196004291146422140" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="fL" role="3clF45">
        <uo k="s:originTrace" v="n:4196004291146422140" />
      </node>
      <node concept="3Tm1VV" id="fM" role="1B3o_S">
        <uo k="s:originTrace" v="n:4196004291146422140" />
      </node>
    </node>
    <node concept="3uibUv" id="eI" role="EKbjA">
      <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:4196004291146422140" />
    </node>
    <node concept="3uibUv" id="eJ" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractNonTypesystemRule_Runtime" resolve="AbstractNonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:4196004291146422140" />
    </node>
    <node concept="3Tm1VV" id="eK" role="1B3o_S">
      <uo k="s:originTrace" v="n:4196004291146422140" />
    </node>
  </node>
  <node concept="312cEu" id="fP">
    <property role="3GE5qa" value="scopes" />
    <property role="TrG5h" value="check_ScopesTest_NonTypesystemRule" />
    <uo k="s:originTrace" v="n:9018216227566643620" />
    <node concept="3clFbW" id="fQ" role="jymVt">
      <uo k="s:originTrace" v="n:9018216227566643620" />
      <node concept="3clFbS" id="fY" role="3clF47">
        <uo k="s:originTrace" v="n:9018216227566643620" />
      </node>
      <node concept="3Tm1VV" id="fZ" role="1B3o_S">
        <uo k="s:originTrace" v="n:9018216227566643620" />
      </node>
      <node concept="3cqZAl" id="g0" role="3clF45">
        <uo k="s:originTrace" v="n:9018216227566643620" />
      </node>
    </node>
    <node concept="3clFb_" id="fR" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:9018216227566643620" />
      <node concept="3cqZAl" id="g1" role="3clF45">
        <uo k="s:originTrace" v="n:9018216227566643620" />
      </node>
      <node concept="37vLTG" id="g2" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="scopesTest" />
        <uo k="s:originTrace" v="n:9018216227566643620" />
        <node concept="3Tqbb2" id="g7" role="1tU5fm">
          <uo k="s:originTrace" v="n:9018216227566643620" />
        </node>
      </node>
      <node concept="37vLTG" id="g3" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:9018216227566643620" />
        <node concept="3uibUv" id="g8" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:9018216227566643620" />
        </node>
      </node>
      <node concept="37vLTG" id="g4" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:9018216227566643620" />
        <node concept="3uibUv" id="g9" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:9018216227566643620" />
        </node>
      </node>
      <node concept="3clFbS" id="g5" role="3clF47">
        <uo k="s:originTrace" v="n:9018216227566643621" />
        <node concept="3clFbJ" id="ga" role="3cqZAp">
          <uo k="s:originTrace" v="n:9018216227566643627" />
          <node concept="3fqX7Q" id="gb" role="3clFbw">
            <uo k="s:originTrace" v="n:9018216227566657378" />
            <node concept="2OqwBi" id="gd" role="3fr31v">
              <uo k="s:originTrace" v="n:9018216227566657380" />
              <node concept="2OqwBi" id="ge" role="2Oq$k0">
                <uo k="s:originTrace" v="n:9018216227566657381" />
                <node concept="37vLTw" id="gg" role="2Oq$k0">
                  <ref role="3cqZAo" node="g2" resolve="scopesTest" />
                  <uo k="s:originTrace" v="n:9018216227566657382" />
                </node>
                <node concept="2yIwOk" id="gh" role="2OqNvi">
                  <uo k="s:originTrace" v="n:9018216227566657383" />
                </node>
              </node>
              <node concept="3zqWPK" id="gf" role="2OqNvi">
                <ref role="37wK5l" to="tp5o:4IvydoGvpbr" resolve="isSimple" />
                <uo k="s:originTrace" v="n:8085146484218845619" />
                <node concept="2OqwBi" id="gi" role="37wK5m">
                  <uo k="s:originTrace" v="n:8085146484218845621" />
                  <node concept="37vLTw" id="gj" role="2Oq$k0">
                    <ref role="3cqZAo" node="g2" resolve="scopesTest" />
                    <uo k="s:originTrace" v="n:8085146484218845622" />
                  </node>
                  <node concept="3zqWPK" id="gk" role="2OqNvi">
                    <ref role="37wK5l" to="tp5o:38gbJV0XvZR" resolve="getAnnotatedNode" />
                    <uo k="s:originTrace" v="n:4743368192416371628" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="gc" role="3clFbx">
            <uo k="s:originTrace" v="n:9018216227566643629" />
            <node concept="3clFbJ" id="gl" role="3cqZAp">
              <uo k="s:originTrace" v="n:9018216227566657445" />
              <node concept="3fqX7Q" id="gm" role="3clFbw">
                <node concept="2OqwBi" id="gp" role="3fr31v">
                  <uo k="s:originTrace" v="n:9018216227566660261" />
                  <node concept="2OqwBi" id="gq" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:9018216227566658280" />
                    <node concept="37vLTw" id="gs" role="2Oq$k0">
                      <ref role="3cqZAo" node="g2" resolve="scopesTest" />
                      <uo k="s:originTrace" v="n:9018216227566657465" />
                    </node>
                    <node concept="3TrEf2" id="gt" role="2OqNvi">
                      <ref role="3Tt5mk" to="tp5g:4IvydoGulmm" resolve="checkingReference" />
                      <uo k="s:originTrace" v="n:9018216227566659724" />
                    </node>
                  </node>
                  <node concept="3x8VRR" id="gr" role="2OqNvi">
                    <uo k="s:originTrace" v="n:9018216227566661321" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="gn" role="3clFbx">
                <node concept="3cpWs8" id="gu" role="3cqZAp">
                  <node concept="3cpWsn" id="gw" role="3cpWs9">
                    <property role="TrG5h" value="errorTarget" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3uibUv" id="gx" role="1tU5fm">
                      <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                    </node>
                    <node concept="2ShNRf" id="gy" role="33vP2m">
                      <node concept="1pGfFk" id="gz" role="2ShVmc">
                        <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="gv" role="3cqZAp">
                  <node concept="3cpWsn" id="g$" role="3cpWs9">
                    <property role="TrG5h" value="_reporter_2309309498" />
                    <node concept="3uibUv" id="g_" role="1tU5fm">
                      <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                    </node>
                    <node concept="2OqwBi" id="gA" role="33vP2m">
                      <node concept="3VmV3z" id="gB" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="gD" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="gC" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                        <node concept="37vLTw" id="gE" role="37wK5m">
                          <ref role="3cqZAo" node="g2" resolve="scopesTest" />
                          <uo k="s:originTrace" v="n:9018216227566661618" />
                        </node>
                        <node concept="Xl_RD" id="gF" role="37wK5m">
                          <property role="Xl_RC" value="should specify reference link to check" />
                          <uo k="s:originTrace" v="n:9018216227566661436" />
                        </node>
                        <node concept="Xl_RD" id="gG" role="37wK5m">
                          <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="gH" role="37wK5m">
                          <property role="Xl_RC" value="9018216227566657445" />
                        </node>
                        <node concept="10Nm6u" id="gI" role="37wK5m" />
                        <node concept="37vLTw" id="gJ" role="37wK5m">
                          <ref role="3cqZAo" node="gw" resolve="errorTarget" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="6wLe0" id="go" role="lGtFl">
                <property role="6wLej" value="9018216227566657445" />
                <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="g6" role="1B3o_S">
        <uo k="s:originTrace" v="n:9018216227566643620" />
      </node>
    </node>
    <node concept="3clFb_" id="fS" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:9018216227566643620" />
      <node concept="3bZ5Sz" id="gK" role="3clF45">
        <uo k="s:originTrace" v="n:9018216227566643620" />
      </node>
      <node concept="3clFbS" id="gL" role="3clF47">
        <uo k="s:originTrace" v="n:9018216227566643620" />
        <node concept="3cpWs6" id="gN" role="3cqZAp">
          <uo k="s:originTrace" v="n:9018216227566643620" />
          <node concept="35c_gC" id="gO" role="3cqZAk">
            <ref role="35c_gD" to="tp5g:so7passww9" resolve="ScopesTest" />
            <uo k="s:originTrace" v="n:9018216227566643620" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="gM" role="1B3o_S">
        <uo k="s:originTrace" v="n:9018216227566643620" />
      </node>
    </node>
    <node concept="3clFb_" id="fT" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:9018216227566643620" />
      <node concept="37vLTG" id="gP" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:9018216227566643620" />
        <node concept="3Tqbb2" id="gT" role="1tU5fm">
          <uo k="s:originTrace" v="n:9018216227566643620" />
        </node>
      </node>
      <node concept="3clFbS" id="gQ" role="3clF47">
        <uo k="s:originTrace" v="n:9018216227566643620" />
        <node concept="9aQIb" id="gU" role="3cqZAp">
          <uo k="s:originTrace" v="n:9018216227566643620" />
          <node concept="3clFbS" id="gV" role="9aQI4">
            <uo k="s:originTrace" v="n:9018216227566643620" />
            <node concept="3cpWs6" id="gW" role="3cqZAp">
              <uo k="s:originTrace" v="n:9018216227566643620" />
              <node concept="2ShNRf" id="gX" role="3cqZAk">
                <uo k="s:originTrace" v="n:9018216227566643620" />
                <node concept="1pGfFk" id="gY" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:9018216227566643620" />
                  <node concept="2OqwBi" id="gZ" role="37wK5m">
                    <uo k="s:originTrace" v="n:9018216227566643620" />
                    <node concept="2OqwBi" id="h1" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:9018216227566643620" />
                      <node concept="liA8E" id="h3" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:9018216227566643620" />
                      </node>
                      <node concept="2JrnkZ" id="h4" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:9018216227566643620" />
                        <node concept="37vLTw" id="h5" role="2JrQYb">
                          <ref role="3cqZAo" node="gP" resolve="argument" />
                          <uo k="s:originTrace" v="n:9018216227566643620" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="h2" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:9018216227566643620" />
                      <node concept="1rXfSq" id="h6" role="37wK5m">
                        <ref role="37wK5l" node="fS" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:9018216227566643620" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="h0" role="37wK5m">
                    <uo k="s:originTrace" v="n:9018216227566643620" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="gR" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:9018216227566643620" />
      </node>
      <node concept="3Tm1VV" id="gS" role="1B3o_S">
        <uo k="s:originTrace" v="n:9018216227566643620" />
      </node>
    </node>
    <node concept="3clFb_" id="fU" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:9018216227566643620" />
      <node concept="3clFbS" id="h7" role="3clF47">
        <uo k="s:originTrace" v="n:9018216227566643620" />
        <node concept="3cpWs6" id="ha" role="3cqZAp">
          <uo k="s:originTrace" v="n:9018216227566643620" />
          <node concept="3clFbT" id="hb" role="3cqZAk">
            <uo k="s:originTrace" v="n:9018216227566643620" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="h8" role="3clF45">
        <uo k="s:originTrace" v="n:9018216227566643620" />
      </node>
      <node concept="3Tm1VV" id="h9" role="1B3o_S">
        <uo k="s:originTrace" v="n:9018216227566643620" />
      </node>
    </node>
    <node concept="3uibUv" id="fV" role="EKbjA">
      <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:9018216227566643620" />
    </node>
    <node concept="3uibUv" id="fW" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractNonTypesystemRule_Runtime" resolve="AbstractNonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:9018216227566643620" />
    </node>
    <node concept="3Tm1VV" id="fX" role="1B3o_S">
      <uo k="s:originTrace" v="n:9018216227566643620" />
    </node>
  </node>
  <node concept="312cEu" id="hc">
    <property role="TrG5h" value="typeof_AssertMatch_InferenceRule" />
    <uo k="s:originTrace" v="n:1211980347427" />
    <node concept="3clFbW" id="hd" role="jymVt">
      <uo k="s:originTrace" v="n:1211980347427" />
      <node concept="3clFbS" id="hl" role="3clF47">
        <uo k="s:originTrace" v="n:1211980347427" />
      </node>
      <node concept="3Tm1VV" id="hm" role="1B3o_S">
        <uo k="s:originTrace" v="n:1211980347427" />
      </node>
      <node concept="3cqZAl" id="hn" role="3clF45">
        <uo k="s:originTrace" v="n:1211980347427" />
      </node>
    </node>
    <node concept="3clFb_" id="he" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:1211980347427" />
      <node concept="3cqZAl" id="ho" role="3clF45">
        <uo k="s:originTrace" v="n:1211980347427" />
      </node>
      <node concept="37vLTG" id="hp" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="nodeToCheck" />
        <uo k="s:originTrace" v="n:1211980347427" />
        <node concept="3Tqbb2" id="hu" role="1tU5fm">
          <uo k="s:originTrace" v="n:1211980347427" />
        </node>
      </node>
      <node concept="37vLTG" id="hq" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:1211980347427" />
        <node concept="3uibUv" id="hv" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:1211980347427" />
        </node>
      </node>
      <node concept="37vLTG" id="hr" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:1211980347427" />
        <node concept="3uibUv" id="hw" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:1211980347427" />
        </node>
      </node>
      <node concept="3clFbS" id="hs" role="3clF47">
        <uo k="s:originTrace" v="n:1211980347428" />
        <node concept="2Gpval" id="hx" role="3cqZAp">
          <uo k="s:originTrace" v="n:1211980450434" />
          <node concept="2GrKxI" id="h$" role="2Gsz3X">
            <property role="TrG5h" value="node" />
            <uo k="s:originTrace" v="n:1211980450435" />
          </node>
          <node concept="2OqwBi" id="h_" role="2GsD0m">
            <uo k="s:originTrace" v="n:1211980457534" />
            <node concept="37vLTw" id="hB" role="2Oq$k0">
              <ref role="3cqZAo" node="hp" resolve="nodeToCheck" />
              <uo k="s:originTrace" v="n:1211980456079" />
            </node>
            <node concept="3Tsc0h" id="hC" role="2OqNvi">
              <ref role="3TtcxE" to="tp5g:hCJA96l" resolve="before" />
              <uo k="s:originTrace" v="n:1211980458070" />
            </node>
          </node>
          <node concept="3clFbS" id="hA" role="2LFqv$">
            <uo k="s:originTrace" v="n:1211980450437" />
            <node concept="9aQIb" id="hD" role="3cqZAp">
              <uo k="s:originTrace" v="n:1211982433132" />
              <node concept="3clFbS" id="hE" role="9aQI4">
                <node concept="3cpWs8" id="hG" role="3cqZAp">
                  <node concept="3cpWsn" id="hJ" role="3cpWs9">
                    <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                    <node concept="2GrUjf" id="hK" role="33vP2m">
                      <ref role="2Gs0qQ" node="h$" resolve="node" />
                      <uo k="s:originTrace" v="n:1211982433135" />
                      <node concept="6wLe0" id="hM" role="lGtFl">
                        <property role="6wLej" value="1211982433132" />
                        <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="hL" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="hH" role="3cqZAp">
                  <node concept="3cpWsn" id="hN" role="3cpWs9">
                    <property role="TrG5h" value="_info_12389875345" />
                    <node concept="3uibUv" id="hO" role="1tU5fm">
                      <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                    </node>
                    <node concept="2ShNRf" id="hP" role="33vP2m">
                      <node concept="1pGfFk" id="hQ" role="2ShVmc">
                        <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                        <node concept="37vLTw" id="hR" role="37wK5m">
                          <ref role="3cqZAo" node="hJ" resolve="_nodeToCheck_1029348928467" />
                        </node>
                        <node concept="10Nm6u" id="hS" role="37wK5m" />
                        <node concept="Xl_RD" id="hT" role="37wK5m">
                          <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="hU" role="37wK5m">
                          <property role="Xl_RC" value="1211982433132" />
                        </node>
                        <node concept="3cmrfG" id="hV" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="10Nm6u" id="hW" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="hI" role="3cqZAp">
                  <node concept="2OqwBi" id="hX" role="3clFbG">
                    <node concept="3VmV3z" id="hY" role="2Oq$k0">
                      <property role="3VnrPo" value="typeCheckingContext" />
                      <node concept="3uibUv" id="i0" role="3Vn4Tt">
                        <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                      </node>
                    </node>
                    <node concept="liA8E" id="hZ" role="2OqNvi">
                      <ref role="37wK5l" to="u78q:~TypeCheckingContext.createLessThanInequality(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,boolean,boolean,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createLessThanInequality" />
                      <node concept="10QFUN" id="i1" role="37wK5m">
                        <uo k="s:originTrace" v="n:1211982433133" />
                        <node concept="3uibUv" id="i6" role="10QFUM">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                        <node concept="2OqwBi" id="i7" role="10QFUP">
                          <uo k="s:originTrace" v="n:1211982433134" />
                          <node concept="3VmV3z" id="i8" role="2Oq$k0">
                            <property role="3VnrPo" value="typeCheckingContext" />
                            <node concept="3uibUv" id="ib" role="3Vn4Tt">
                              <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                            </node>
                          </node>
                          <node concept="liA8E" id="i9" role="2OqNvi">
                            <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                            <node concept="3VmV3z" id="ic" role="37wK5m">
                              <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                              <node concept="3uibUv" id="ig" role="3Vn4Tt">
                                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="id" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
                            </node>
                            <node concept="Xl_RD" id="ie" role="37wK5m">
                              <property role="Xl_RC" value="1211982433134" />
                            </node>
                            <node concept="3clFbT" id="if" role="37wK5m">
                              <property role="3clFbU" value="true" />
                            </node>
                          </node>
                          <node concept="6wLe0" id="ia" role="lGtFl">
                            <property role="6wLej" value="1211982433134" />
                            <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
                          </node>
                        </node>
                      </node>
                      <node concept="10QFUN" id="i2" role="37wK5m">
                        <uo k="s:originTrace" v="n:1211982433136" />
                        <node concept="3uibUv" id="ih" role="10QFUM">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                        <node concept="2c44tf" id="ii" role="10QFUP">
                          <uo k="s:originTrace" v="n:1211982433137" />
                          <node concept="3Tqbb2" id="ij" role="2c44tc">
                            <uo k="s:originTrace" v="n:1211982433138" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbT" id="i3" role="37wK5m" />
                      <node concept="3clFbT" id="i4" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                      <node concept="37vLTw" id="i5" role="37wK5m">
                        <ref role="3cqZAo" node="hN" resolve="_info_12389875345" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="6wLe0" id="hF" role="lGtFl">
                <property role="6wLej" value="1211982433132" />
                <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="hy" role="3cqZAp">
          <uo k="s:originTrace" v="n:1211981351109" />
          <node concept="2GrKxI" id="ik" role="2Gsz3X">
            <property role="TrG5h" value="node" />
            <uo k="s:originTrace" v="n:1211981351110" />
          </node>
          <node concept="2OqwBi" id="il" role="2GsD0m">
            <uo k="s:originTrace" v="n:1211981351111" />
            <node concept="37vLTw" id="in" role="2Oq$k0">
              <ref role="3cqZAo" node="hp" resolve="nodeToCheck" />
              <uo k="s:originTrace" v="n:1211981351112" />
            </node>
            <node concept="3Tsc0h" id="io" role="2OqNvi">
              <ref role="3TtcxE" to="tp5g:hCJAdgf" resolve="after" />
              <uo k="s:originTrace" v="n:1211981362625" />
            </node>
          </node>
          <node concept="3clFbS" id="im" role="2LFqv$">
            <uo k="s:originTrace" v="n:1211981351114" />
            <node concept="9aQIb" id="ip" role="3cqZAp">
              <uo k="s:originTrace" v="n:1211982429078" />
              <node concept="3clFbS" id="iq" role="9aQI4">
                <node concept="3cpWs8" id="is" role="3cqZAp">
                  <node concept="3cpWsn" id="iv" role="3cpWs9">
                    <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                    <node concept="2GrUjf" id="iw" role="33vP2m">
                      <ref role="2Gs0qQ" node="ik" resolve="node" />
                      <uo k="s:originTrace" v="n:1211982429081" />
                      <node concept="6wLe0" id="iy" role="lGtFl">
                        <property role="6wLej" value="1211982429078" />
                        <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="ix" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="it" role="3cqZAp">
                  <node concept="3cpWsn" id="iz" role="3cpWs9">
                    <property role="TrG5h" value="_info_12389875345" />
                    <node concept="3uibUv" id="i$" role="1tU5fm">
                      <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                    </node>
                    <node concept="2ShNRf" id="i_" role="33vP2m">
                      <node concept="1pGfFk" id="iA" role="2ShVmc">
                        <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                        <node concept="37vLTw" id="iB" role="37wK5m">
                          <ref role="3cqZAo" node="iv" resolve="_nodeToCheck_1029348928467" />
                        </node>
                        <node concept="10Nm6u" id="iC" role="37wK5m" />
                        <node concept="Xl_RD" id="iD" role="37wK5m">
                          <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="iE" role="37wK5m">
                          <property role="Xl_RC" value="1211982429078" />
                        </node>
                        <node concept="3cmrfG" id="iF" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="10Nm6u" id="iG" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="iu" role="3cqZAp">
                  <node concept="2OqwBi" id="iH" role="3clFbG">
                    <node concept="3VmV3z" id="iI" role="2Oq$k0">
                      <property role="3VnrPo" value="typeCheckingContext" />
                      <node concept="3uibUv" id="iK" role="3Vn4Tt">
                        <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                      </node>
                    </node>
                    <node concept="liA8E" id="iJ" role="2OqNvi">
                      <ref role="37wK5l" to="u78q:~TypeCheckingContext.createLessThanInequality(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,boolean,boolean,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createLessThanInequality" />
                      <node concept="10QFUN" id="iL" role="37wK5m">
                        <uo k="s:originTrace" v="n:1211982429079" />
                        <node concept="3uibUv" id="iQ" role="10QFUM">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                        <node concept="2OqwBi" id="iR" role="10QFUP">
                          <uo k="s:originTrace" v="n:1211982429080" />
                          <node concept="3VmV3z" id="iS" role="2Oq$k0">
                            <property role="3VnrPo" value="typeCheckingContext" />
                            <node concept="3uibUv" id="iV" role="3Vn4Tt">
                              <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                            </node>
                          </node>
                          <node concept="liA8E" id="iT" role="2OqNvi">
                            <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                            <node concept="3VmV3z" id="iW" role="37wK5m">
                              <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                              <node concept="3uibUv" id="j0" role="3Vn4Tt">
                                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="iX" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
                            </node>
                            <node concept="Xl_RD" id="iY" role="37wK5m">
                              <property role="Xl_RC" value="1211982429080" />
                            </node>
                            <node concept="3clFbT" id="iZ" role="37wK5m">
                              <property role="3clFbU" value="true" />
                            </node>
                          </node>
                          <node concept="6wLe0" id="iU" role="lGtFl">
                            <property role="6wLej" value="1211982429080" />
                            <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
                          </node>
                        </node>
                      </node>
                      <node concept="10QFUN" id="iM" role="37wK5m">
                        <uo k="s:originTrace" v="n:1211982429082" />
                        <node concept="3uibUv" id="j1" role="10QFUM">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                        <node concept="2c44tf" id="j2" role="10QFUP">
                          <uo k="s:originTrace" v="n:1211982429083" />
                          <node concept="3Tqbb2" id="j3" role="2c44tc">
                            <uo k="s:originTrace" v="n:1211982429084" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbT" id="iN" role="37wK5m" />
                      <node concept="3clFbT" id="iO" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                      <node concept="37vLTw" id="iP" role="37wK5m">
                        <ref role="3cqZAo" node="iz" resolve="_info_12389875345" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="6wLe0" id="ir" role="lGtFl">
                <property role="6wLej" value="1211982429078" />
                <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1_o_46" id="hz" role="3cqZAp">
          <uo k="s:originTrace" v="n:6903010549535946319" />
          <node concept="1_o_bx" id="j4" role="1_o_by">
            <uo k="s:originTrace" v="n:6903010549535946321" />
            <node concept="1_o_bG" id="j7" role="1_o_aQ">
              <property role="TrG5h" value="nodeBefore" />
              <uo k="s:originTrace" v="n:6903010549535946323" />
            </node>
            <node concept="2OqwBi" id="j8" role="1_o_bz">
              <uo k="s:originTrace" v="n:6903010549535947040" />
              <node concept="37vLTw" id="j9" role="2Oq$k0">
                <ref role="3cqZAo" node="hp" resolve="nodeToCheck" />
                <uo k="s:originTrace" v="n:6903010549535946421" />
              </node>
              <node concept="3Tsc0h" id="ja" role="2OqNvi">
                <ref role="3TtcxE" to="tp5g:hCJA96l" resolve="before" />
                <uo k="s:originTrace" v="n:6903010549535948036" />
              </node>
            </node>
          </node>
          <node concept="1_o_bx" id="j5" role="1_o_by">
            <uo k="s:originTrace" v="n:6903010549535948376" />
            <node concept="1_o_bG" id="jb" role="1_o_aQ">
              <property role="TrG5h" value="nodeAfter" />
              <uo k="s:originTrace" v="n:6903010549535948377" />
            </node>
            <node concept="2OqwBi" id="jc" role="1_o_bz">
              <uo k="s:originTrace" v="n:6903010549535949066" />
              <node concept="37vLTw" id="jd" role="2Oq$k0">
                <ref role="3cqZAo" node="hp" resolve="nodeToCheck" />
                <uo k="s:originTrace" v="n:6903010549535948447" />
              </node>
              <node concept="3Tsc0h" id="je" role="2OqNvi">
                <ref role="3TtcxE" to="tp5g:hCJAdgf" resolve="after" />
                <uo k="s:originTrace" v="n:6903010549535950126" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="j6" role="2LFqv$">
            <uo k="s:originTrace" v="n:6903010549535946327" />
            <node concept="9aQIb" id="jf" role="3cqZAp">
              <uo k="s:originTrace" v="n:6903010549536046161" />
              <node concept="3clFbS" id="jg" role="9aQI4">
                <node concept="3cpWs8" id="ji" role="3cqZAp">
                  <node concept="3cpWsn" id="jl" role="3cpWs9">
                    <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                    <node concept="3M$PaV" id="jm" role="33vP2m">
                      <ref role="3M$S_o" node="j7" resolve="nodeBefore" />
                      <uo k="s:originTrace" v="n:6903010549536046165" />
                      <node concept="6wLe0" id="jo" role="lGtFl">
                        <property role="6wLej" value="6903010549536046161" />
                        <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="jn" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="jj" role="3cqZAp">
                  <node concept="3cpWsn" id="jp" role="3cpWs9">
                    <property role="TrG5h" value="_info_12389875345" />
                    <node concept="3uibUv" id="jq" role="1tU5fm">
                      <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                    </node>
                    <node concept="2ShNRf" id="jr" role="33vP2m">
                      <node concept="1pGfFk" id="js" role="2ShVmc">
                        <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                        <node concept="37vLTw" id="jt" role="37wK5m">
                          <ref role="3cqZAo" node="jl" resolve="_nodeToCheck_1029348928467" />
                        </node>
                        <node concept="10Nm6u" id="ju" role="37wK5m" />
                        <node concept="Xl_RD" id="jv" role="37wK5m">
                          <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="jw" role="37wK5m">
                          <property role="Xl_RC" value="6903010549536046161" />
                        </node>
                        <node concept="3cmrfG" id="jx" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="10Nm6u" id="jy" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="jk" role="3cqZAp">
                  <node concept="2OqwBi" id="jz" role="3clFbG">
                    <node concept="3VmV3z" id="j$" role="2Oq$k0">
                      <property role="3VnrPo" value="typeCheckingContext" />
                      <node concept="3uibUv" id="jA" role="3Vn4Tt">
                        <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                      </node>
                    </node>
                    <node concept="liA8E" id="j_" role="2OqNvi">
                      <ref role="37wK5l" to="u78q:~TypeCheckingContext.createComparableEquation(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,boolean,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createComparableEquation" />
                      <node concept="10QFUN" id="jB" role="37wK5m">
                        <uo k="s:originTrace" v="n:6903010549536046163" />
                        <node concept="3uibUv" id="jF" role="10QFUM">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                        <node concept="2OqwBi" id="jG" role="10QFUP">
                          <uo k="s:originTrace" v="n:6903010549536046164" />
                          <node concept="3VmV3z" id="jH" role="2Oq$k0">
                            <property role="3VnrPo" value="typeCheckingContext" />
                            <node concept="3uibUv" id="jK" role="3Vn4Tt">
                              <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                            </node>
                          </node>
                          <node concept="liA8E" id="jI" role="2OqNvi">
                            <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                            <node concept="3VmV3z" id="jL" role="37wK5m">
                              <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                              <node concept="3uibUv" id="jP" role="3Vn4Tt">
                                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="jM" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
                            </node>
                            <node concept="Xl_RD" id="jN" role="37wK5m">
                              <property role="Xl_RC" value="6903010549536046164" />
                            </node>
                            <node concept="3clFbT" id="jO" role="37wK5m">
                              <property role="3clFbU" value="true" />
                            </node>
                          </node>
                          <node concept="6wLe0" id="jJ" role="lGtFl">
                            <property role="6wLej" value="6903010549536046164" />
                            <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
                          </node>
                        </node>
                      </node>
                      <node concept="10QFUN" id="jC" role="37wK5m">
                        <uo k="s:originTrace" v="n:6903010549536046166" />
                        <node concept="3uibUv" id="jQ" role="10QFUM">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                        <node concept="2OqwBi" id="jR" role="10QFUP">
                          <uo k="s:originTrace" v="n:6903010549536046167" />
                          <node concept="3VmV3z" id="jS" role="2Oq$k0">
                            <property role="3VnrPo" value="typeCheckingContext" />
                            <node concept="3uibUv" id="jV" role="3Vn4Tt">
                              <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                            </node>
                          </node>
                          <node concept="liA8E" id="jT" role="2OqNvi">
                            <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                            <node concept="3M$PaV" id="jW" role="37wK5m">
                              <ref role="3M$S_o" node="jb" resolve="nodeAfter" />
                              <uo k="s:originTrace" v="n:6903010549536046168" />
                            </node>
                            <node concept="Xl_RD" id="jX" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
                            </node>
                            <node concept="Xl_RD" id="jY" role="37wK5m">
                              <property role="Xl_RC" value="6903010549536046167" />
                            </node>
                            <node concept="3clFbT" id="jZ" role="37wK5m">
                              <property role="3clFbU" value="true" />
                            </node>
                          </node>
                          <node concept="6wLe0" id="jU" role="lGtFl">
                            <property role="6wLej" value="6903010549536046167" />
                            <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbT" id="jD" role="37wK5m" />
                      <node concept="37vLTw" id="jE" role="37wK5m">
                        <ref role="3cqZAo" node="jp" resolve="_info_12389875345" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="6wLe0" id="jh" role="lGtFl">
                <property role="6wLej" value="6903010549536046161" />
                <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="ht" role="1B3o_S">
        <uo k="s:originTrace" v="n:1211980347427" />
      </node>
    </node>
    <node concept="3clFb_" id="hf" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:1211980347427" />
      <node concept="3bZ5Sz" id="k0" role="3clF45">
        <uo k="s:originTrace" v="n:1211980347427" />
      </node>
      <node concept="3clFbS" id="k1" role="3clF47">
        <uo k="s:originTrace" v="n:1211980347427" />
        <node concept="3cpWs6" id="k3" role="3cqZAp">
          <uo k="s:originTrace" v="n:1211980347427" />
          <node concept="35c_gC" id="k4" role="3cqZAk">
            <ref role="35c_gD" to="tp5g:hCJA54K" resolve="AssertMatch" />
            <uo k="s:originTrace" v="n:1211980347427" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="k2" role="1B3o_S">
        <uo k="s:originTrace" v="n:1211980347427" />
      </node>
    </node>
    <node concept="3clFb_" id="hg" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:1211980347427" />
      <node concept="37vLTG" id="k5" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:1211980347427" />
        <node concept="3Tqbb2" id="k9" role="1tU5fm">
          <uo k="s:originTrace" v="n:1211980347427" />
        </node>
      </node>
      <node concept="3clFbS" id="k6" role="3clF47">
        <uo k="s:originTrace" v="n:1211980347427" />
        <node concept="9aQIb" id="ka" role="3cqZAp">
          <uo k="s:originTrace" v="n:1211980347427" />
          <node concept="3clFbS" id="kb" role="9aQI4">
            <uo k="s:originTrace" v="n:1211980347427" />
            <node concept="3cpWs6" id="kc" role="3cqZAp">
              <uo k="s:originTrace" v="n:1211980347427" />
              <node concept="2ShNRf" id="kd" role="3cqZAk">
                <uo k="s:originTrace" v="n:1211980347427" />
                <node concept="1pGfFk" id="ke" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:1211980347427" />
                  <node concept="2OqwBi" id="kf" role="37wK5m">
                    <uo k="s:originTrace" v="n:1211980347427" />
                    <node concept="2OqwBi" id="kh" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:1211980347427" />
                      <node concept="liA8E" id="kj" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:1211980347427" />
                      </node>
                      <node concept="2JrnkZ" id="kk" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:1211980347427" />
                        <node concept="37vLTw" id="kl" role="2JrQYb">
                          <ref role="3cqZAo" node="k5" resolve="argument" />
                          <uo k="s:originTrace" v="n:1211980347427" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="ki" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:1211980347427" />
                      <node concept="1rXfSq" id="km" role="37wK5m">
                        <ref role="37wK5l" node="hf" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:1211980347427" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="kg" role="37wK5m">
                    <uo k="s:originTrace" v="n:1211980347427" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="k7" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:1211980347427" />
      </node>
      <node concept="3Tm1VV" id="k8" role="1B3o_S">
        <uo k="s:originTrace" v="n:1211980347427" />
      </node>
    </node>
    <node concept="3clFb_" id="hh" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:1211980347427" />
      <node concept="3clFbS" id="kn" role="3clF47">
        <uo k="s:originTrace" v="n:1211980347427" />
        <node concept="3cpWs6" id="kq" role="3cqZAp">
          <uo k="s:originTrace" v="n:1211980347427" />
          <node concept="3clFbT" id="kr" role="3cqZAk">
            <uo k="s:originTrace" v="n:1211980347427" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="ko" role="3clF45">
        <uo k="s:originTrace" v="n:1211980347427" />
      </node>
      <node concept="3Tm1VV" id="kp" role="1B3o_S">
        <uo k="s:originTrace" v="n:1211980347427" />
      </node>
    </node>
    <node concept="3uibUv" id="hi" role="EKbjA">
      <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:1211980347427" />
    </node>
    <node concept="3uibUv" id="hj" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractInferenceRule_Runtime" resolve="AbstractInferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:1211980347427" />
    </node>
    <node concept="3Tm1VV" id="hk" role="1B3o_S">
      <uo k="s:originTrace" v="n:1211980347427" />
    </node>
  </node>
  <node concept="312cEu" id="ks">
    <property role="3GE5qa" value="expression" />
    <property role="TrG5h" value="typeof_EditorComponentExpression_InferenceRule" />
    <uo k="s:originTrace" v="n:5773579205430173663" />
    <node concept="3clFbW" id="kt" role="jymVt">
      <uo k="s:originTrace" v="n:5773579205430173663" />
      <node concept="3clFbS" id="k_" role="3clF47">
        <uo k="s:originTrace" v="n:5773579205430173663" />
      </node>
      <node concept="3Tm1VV" id="kA" role="1B3o_S">
        <uo k="s:originTrace" v="n:5773579205430173663" />
      </node>
      <node concept="3cqZAl" id="kB" role="3clF45">
        <uo k="s:originTrace" v="n:5773579205430173663" />
      </node>
    </node>
    <node concept="3clFb_" id="ku" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:5773579205430173663" />
      <node concept="3cqZAl" id="kC" role="3clF45">
        <uo k="s:originTrace" v="n:5773579205430173663" />
      </node>
      <node concept="37vLTG" id="kD" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="expression" />
        <uo k="s:originTrace" v="n:5773579205430173663" />
        <node concept="3Tqbb2" id="kI" role="1tU5fm">
          <uo k="s:originTrace" v="n:5773579205430173663" />
        </node>
      </node>
      <node concept="37vLTG" id="kE" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:5773579205430173663" />
        <node concept="3uibUv" id="kJ" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:5773579205430173663" />
        </node>
      </node>
      <node concept="37vLTG" id="kF" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:5773579205430173663" />
        <node concept="3uibUv" id="kK" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:5773579205430173663" />
        </node>
      </node>
      <node concept="3clFbS" id="kG" role="3clF47">
        <uo k="s:originTrace" v="n:5773579205430173664" />
        <node concept="9aQIb" id="kL" role="3cqZAp">
          <uo k="s:originTrace" v="n:5773579205430190112" />
          <node concept="3clFbS" id="kM" role="9aQI4">
            <node concept="3cpWs8" id="kO" role="3cqZAp">
              <node concept="3cpWsn" id="kR" role="3cpWs9">
                <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                <node concept="37vLTw" id="kS" role="33vP2m">
                  <ref role="3cqZAo" node="kD" resolve="expression" />
                  <uo k="s:originTrace" v="n:5773579205430190118" />
                  <node concept="6wLe0" id="kU" role="lGtFl">
                    <property role="6wLej" value="5773579205430190112" />
                    <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
                  </node>
                </node>
                <node concept="3uibUv" id="kT" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="kP" role="3cqZAp">
              <node concept="3cpWsn" id="kV" role="3cpWs9">
                <property role="TrG5h" value="_info_12389875345" />
                <node concept="3uibUv" id="kW" role="1tU5fm">
                  <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                </node>
                <node concept="2ShNRf" id="kX" role="33vP2m">
                  <node concept="1pGfFk" id="kY" role="2ShVmc">
                    <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                    <node concept="37vLTw" id="kZ" role="37wK5m">
                      <ref role="3cqZAo" node="kR" resolve="_nodeToCheck_1029348928467" />
                    </node>
                    <node concept="10Nm6u" id="l0" role="37wK5m" />
                    <node concept="Xl_RD" id="l1" role="37wK5m">
                      <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
                    </node>
                    <node concept="Xl_RD" id="l2" role="37wK5m">
                      <property role="Xl_RC" value="5773579205430190112" />
                    </node>
                    <node concept="3cmrfG" id="l3" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="10Nm6u" id="l4" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="kQ" role="3cqZAp">
              <node concept="2OqwBi" id="l5" role="3clFbG">
                <node concept="3VmV3z" id="l6" role="2Oq$k0">
                  <property role="3VnrPo" value="typeCheckingContext" />
                  <node concept="3uibUv" id="l8" role="3Vn4Tt">
                    <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                  </node>
                </node>
                <node concept="liA8E" id="l7" role="2OqNvi">
                  <ref role="37wK5l" to="u78q:~TypeCheckingContext.createEquation(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createEquation" />
                  <node concept="10QFUN" id="l9" role="37wK5m">
                    <uo k="s:originTrace" v="n:5773579205430190116" />
                    <node concept="3uibUv" id="lc" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="ld" role="10QFUP">
                      <uo k="s:originTrace" v="n:5773579205430190117" />
                      <node concept="3VmV3z" id="le" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="lh" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="lf" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                        <node concept="3VmV3z" id="li" role="37wK5m">
                          <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                          <node concept="3uibUv" id="lm" role="3Vn4Tt">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="lj" role="37wK5m">
                          <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="lk" role="37wK5m">
                          <property role="Xl_RC" value="5773579205430190117" />
                        </node>
                        <node concept="3clFbT" id="ll" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                      <node concept="6wLe0" id="lg" role="lGtFl">
                        <property role="6wLej" value="5773579205430190117" />
                        <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
                      </node>
                    </node>
                  </node>
                  <node concept="10QFUN" id="la" role="37wK5m">
                    <uo k="s:originTrace" v="n:5773579205430190113" />
                    <node concept="3uibUv" id="ln" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2c44tf" id="lo" role="10QFUP">
                      <uo k="s:originTrace" v="n:5773579205430190114" />
                      <node concept="3uibUv" id="lp" role="2c44tc">
                        <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
                        <uo k="s:originTrace" v="n:5773579205430193252" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="lb" role="37wK5m">
                    <ref role="3cqZAo" node="kV" resolve="_info_12389875345" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="6wLe0" id="kN" role="lGtFl">
            <property role="6wLej" value="5773579205430190112" />
            <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="kH" role="1B3o_S">
        <uo k="s:originTrace" v="n:5773579205430173663" />
      </node>
    </node>
    <node concept="3clFb_" id="kv" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:5773579205430173663" />
      <node concept="3bZ5Sz" id="lq" role="3clF45">
        <uo k="s:originTrace" v="n:5773579205430173663" />
      </node>
      <node concept="3clFbS" id="lr" role="3clF47">
        <uo k="s:originTrace" v="n:5773579205430173663" />
        <node concept="3cpWs6" id="lt" role="3cqZAp">
          <uo k="s:originTrace" v="n:5773579205430173663" />
          <node concept="35c_gC" id="lu" role="3cqZAk">
            <ref role="35c_gD" to="tp5g:50vRVameF3Z" resolve="EditorComponentExpression" />
            <uo k="s:originTrace" v="n:5773579205430173663" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="ls" role="1B3o_S">
        <uo k="s:originTrace" v="n:5773579205430173663" />
      </node>
    </node>
    <node concept="3clFb_" id="kw" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:5773579205430173663" />
      <node concept="37vLTG" id="lv" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:5773579205430173663" />
        <node concept="3Tqbb2" id="lz" role="1tU5fm">
          <uo k="s:originTrace" v="n:5773579205430173663" />
        </node>
      </node>
      <node concept="3clFbS" id="lw" role="3clF47">
        <uo k="s:originTrace" v="n:5773579205430173663" />
        <node concept="9aQIb" id="l$" role="3cqZAp">
          <uo k="s:originTrace" v="n:5773579205430173663" />
          <node concept="3clFbS" id="l_" role="9aQI4">
            <uo k="s:originTrace" v="n:5773579205430173663" />
            <node concept="3cpWs6" id="lA" role="3cqZAp">
              <uo k="s:originTrace" v="n:5773579205430173663" />
              <node concept="2ShNRf" id="lB" role="3cqZAk">
                <uo k="s:originTrace" v="n:5773579205430173663" />
                <node concept="1pGfFk" id="lC" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:5773579205430173663" />
                  <node concept="2OqwBi" id="lD" role="37wK5m">
                    <uo k="s:originTrace" v="n:5773579205430173663" />
                    <node concept="2OqwBi" id="lF" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:5773579205430173663" />
                      <node concept="liA8E" id="lH" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:5773579205430173663" />
                      </node>
                      <node concept="2JrnkZ" id="lI" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:5773579205430173663" />
                        <node concept="37vLTw" id="lJ" role="2JrQYb">
                          <ref role="3cqZAo" node="lv" resolve="argument" />
                          <uo k="s:originTrace" v="n:5773579205430173663" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="lG" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:5773579205430173663" />
                      <node concept="1rXfSq" id="lK" role="37wK5m">
                        <ref role="37wK5l" node="kv" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:5773579205430173663" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="lE" role="37wK5m">
                    <uo k="s:originTrace" v="n:5773579205430173663" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="lx" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:5773579205430173663" />
      </node>
      <node concept="3Tm1VV" id="ly" role="1B3o_S">
        <uo k="s:originTrace" v="n:5773579205430173663" />
      </node>
    </node>
    <node concept="3clFb_" id="kx" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:5773579205430173663" />
      <node concept="3clFbS" id="lL" role="3clF47">
        <uo k="s:originTrace" v="n:5773579205430173663" />
        <node concept="3cpWs6" id="lO" role="3cqZAp">
          <uo k="s:originTrace" v="n:5773579205430173663" />
          <node concept="3clFbT" id="lP" role="3cqZAk">
            <uo k="s:originTrace" v="n:5773579205430173663" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="lM" role="3clF45">
        <uo k="s:originTrace" v="n:5773579205430173663" />
      </node>
      <node concept="3Tm1VV" id="lN" role="1B3o_S">
        <uo k="s:originTrace" v="n:5773579205430173663" />
      </node>
    </node>
    <node concept="3uibUv" id="ky" role="EKbjA">
      <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:5773579205430173663" />
    </node>
    <node concept="3uibUv" id="kz" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractInferenceRule_Runtime" resolve="AbstractInferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:5773579205430173663" />
    </node>
    <node concept="3Tm1VV" id="k$" role="1B3o_S">
      <uo k="s:originTrace" v="n:5773579205430173663" />
    </node>
  </node>
  <node concept="312cEu" id="lQ">
    <property role="3GE5qa" value="editor" />
    <property role="TrG5h" value="typeof_InvokeIntentionStatement_InferenceRule" />
    <uo k="s:originTrace" v="n:8933192351752325071" />
    <node concept="3clFbW" id="lR" role="jymVt">
      <uo k="s:originTrace" v="n:8933192351752325071" />
      <node concept="3clFbS" id="lZ" role="3clF47">
        <uo k="s:originTrace" v="n:8933192351752325071" />
      </node>
      <node concept="3Tm1VV" id="m0" role="1B3o_S">
        <uo k="s:originTrace" v="n:8933192351752325071" />
      </node>
      <node concept="3cqZAl" id="m1" role="3clF45">
        <uo k="s:originTrace" v="n:8933192351752325071" />
      </node>
    </node>
    <node concept="3clFb_" id="lS" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:8933192351752325071" />
      <node concept="3cqZAl" id="m2" role="3clF45">
        <uo k="s:originTrace" v="n:8933192351752325071" />
      </node>
      <node concept="37vLTG" id="m3" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="statement" />
        <uo k="s:originTrace" v="n:8933192351752325071" />
        <node concept="3Tqbb2" id="m8" role="1tU5fm">
          <uo k="s:originTrace" v="n:8933192351752325071" />
        </node>
      </node>
      <node concept="37vLTG" id="m4" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:8933192351752325071" />
        <node concept="3uibUv" id="m9" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:8933192351752325071" />
        </node>
      </node>
      <node concept="37vLTG" id="m5" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:8933192351752325071" />
        <node concept="3uibUv" id="ma" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:8933192351752325071" />
        </node>
      </node>
      <node concept="3clFbS" id="m6" role="3clF47">
        <uo k="s:originTrace" v="n:8933192351752325072" />
        <node concept="3clFbJ" id="mb" role="3cqZAp">
          <uo k="s:originTrace" v="n:8933192351752325078" />
          <node concept="2OqwBi" id="md" role="3clFbw">
            <uo k="s:originTrace" v="n:8933192351752360477" />
            <node concept="2OqwBi" id="mg" role="2Oq$k0">
              <uo k="s:originTrace" v="n:8933192351752360478" />
              <node concept="37vLTw" id="mi" role="2Oq$k0">
                <ref role="3cqZAo" node="m3" resolve="statement" />
                <uo k="s:originTrace" v="n:8933192351752360479" />
              </node>
              <node concept="3TrEf2" id="mj" role="2OqNvi">
                <ref role="3Tt5mk" to="tp5g:hPMFYKr" resolve="intention" />
                <uo k="s:originTrace" v="n:8933192351752360480" />
              </node>
            </node>
            <node concept="1mIQ4w" id="mh" role="2OqNvi">
              <uo k="s:originTrace" v="n:8933192351752360481" />
              <node concept="chp4Y" id="mk" role="cj9EA">
                <ref role="cht4Q" to="tp3j:i3dkpKH" resolve="ParameterizedIntentionDeclaration" />
                <uo k="s:originTrace" v="n:8933192351752360482" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="me" role="3clFbx">
            <uo k="s:originTrace" v="n:4804472818036369478" />
            <node concept="3clFbJ" id="ml" role="3cqZAp">
              <uo k="s:originTrace" v="n:4804472818036374573" />
              <node concept="3clFbS" id="mv" role="3clFbx">
                <uo k="s:originTrace" v="n:4804472818036374575" />
                <node concept="9aQIb" id="mx" role="3cqZAp">
                  <uo k="s:originTrace" v="n:4804472818036379967" />
                  <node concept="3clFbS" id="mz" role="9aQI4">
                    <node concept="3cpWs8" id="m_" role="3cqZAp">
                      <node concept="3cpWsn" id="mB" role="3cpWs9">
                        <property role="TrG5h" value="errorTarget" />
                        <property role="3TUv4t" value="true" />
                        <node concept="3uibUv" id="mC" role="1tU5fm">
                          <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                        </node>
                        <node concept="2ShNRf" id="mD" role="33vP2m">
                          <uo k="s:originTrace" v="n:4804472818036380106" />
                          <node concept="1pGfFk" id="mE" role="2ShVmc">
                            <ref role="37wK5l" to="zavc:~ReferenceMessageTarget.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractLink)" resolve="ReferenceMessageTarget" />
                            <uo k="s:originTrace" v="n:4804472818036380106" />
                            <node concept="359W_D" id="mF" role="37wK5m">
                              <ref role="359W_E" to="tp5g:hPMFPyi" resolve="InvokeIntentionStatement" />
                              <ref role="359W_F" to="tp5g:7JT4LO$qcEi" resolve="parameter" />
                              <uo k="s:originTrace" v="n:4804472818036380106" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="mA" role="3cqZAp">
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
                              <ref role="3cqZAo" node="m3" resolve="statement" />
                              <uo k="s:originTrace" v="n:4804472818036380077" />
                            </node>
                            <node concept="Xl_RD" id="mN" role="37wK5m">
                              <property role="Xl_RC" value="Missing parameter value for parameterized intention" />
                              <uo k="s:originTrace" v="n:4804472818036379982" />
                            </node>
                            <node concept="Xl_RD" id="mO" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
                            </node>
                            <node concept="Xl_RD" id="mP" role="37wK5m">
                              <property role="Xl_RC" value="4804472818036379967" />
                            </node>
                            <node concept="10Nm6u" id="mQ" role="37wK5m" />
                            <node concept="37vLTw" id="mR" role="37wK5m">
                              <ref role="3cqZAo" node="mB" resolve="errorTarget" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="6wLe0" id="m$" role="lGtFl">
                    <property role="6wLej" value="4804472818036379967" />
                    <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
                  </node>
                </node>
                <node concept="3cpWs6" id="my" role="3cqZAp">
                  <uo k="s:originTrace" v="n:4804472818036386278" />
                </node>
              </node>
              <node concept="2OqwBi" id="mw" role="3clFbw">
                <uo k="s:originTrace" v="n:4804472818036378292" />
                <node concept="2OqwBi" id="mS" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:4804472818036375241" />
                  <node concept="37vLTw" id="mU" role="2Oq$k0">
                    <ref role="3cqZAo" node="m3" resolve="statement" />
                    <uo k="s:originTrace" v="n:4804472818036374628" />
                  </node>
                  <node concept="3TrEf2" id="mV" role="2OqNvi">
                    <ref role="3Tt5mk" to="tp5g:7JT4LO$qcEi" resolve="parameter" />
                    <uo k="s:originTrace" v="n:4804472818036377011" />
                  </node>
                </node>
                <node concept="3w_OXm" id="mT" role="2OqNvi">
                  <uo k="s:originTrace" v="n:4804472818036379843" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="mm" role="3cqZAp">
              <uo k="s:originTrace" v="n:4804472818036400183" />
            </node>
            <node concept="3cpWs8" id="mn" role="3cqZAp">
              <uo k="s:originTrace" v="n:8933192351752359145" />
              <node concept="3cpWsn" id="mW" role="3cpWs9">
                <property role="TrG5h" value="decl" />
                <uo k="s:originTrace" v="n:8933192351752359146" />
                <node concept="3Tqbb2" id="mX" role="1tU5fm">
                  <ref role="ehGHo" to="tp3j:i3dkpKH" resolve="ParameterizedIntentionDeclaration" />
                  <uo k="s:originTrace" v="n:8933192351752359142" />
                </node>
                <node concept="1PxgMI" id="mY" role="33vP2m">
                  <uo k="s:originTrace" v="n:8933192351752359147" />
                  <node concept="2OqwBi" id="mZ" role="1m5AlR">
                    <uo k="s:originTrace" v="n:8933192351752359148" />
                    <node concept="37vLTw" id="n1" role="2Oq$k0">
                      <ref role="3cqZAo" node="m3" resolve="statement" />
                      <uo k="s:originTrace" v="n:8933192351752359149" />
                    </node>
                    <node concept="3TrEf2" id="n2" role="2OqNvi">
                      <ref role="3Tt5mk" to="tp5g:hPMFYKr" resolve="intention" />
                      <uo k="s:originTrace" v="n:8933192351752359150" />
                    </node>
                  </node>
                  <node concept="chp4Y" id="n0" role="3oSUPX">
                    <ref role="cht4Q" to="tp3j:i3dkpKH" resolve="ParameterizedIntentionDeclaration" />
                    <uo k="s:originTrace" v="n:8089793891579195664" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="mo" role="3cqZAp">
              <uo k="s:originTrace" v="n:8933192351752360451" />
            </node>
            <node concept="3clFbJ" id="mp" role="3cqZAp">
              <uo k="s:originTrace" v="n:8933192351752363063" />
              <node concept="3clFbS" id="n3" role="3clFbx">
                <uo k="s:originTrace" v="n:8933192351752363065" />
                <node concept="3cpWs6" id="n5" role="3cqZAp">
                  <uo k="s:originTrace" v="n:8933192351752370191" />
                </node>
              </node>
              <node concept="2OqwBi" id="n4" role="3clFbw">
                <uo k="s:originTrace" v="n:8933192351752367731" />
                <node concept="2OqwBi" id="n6" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:8933192351752364009" />
                  <node concept="37vLTw" id="n8" role="2Oq$k0">
                    <ref role="3cqZAo" node="mW" resolve="decl" />
                    <uo k="s:originTrace" v="n:8933192351752363112" />
                  </node>
                  <node concept="3TrEf2" id="n9" role="2OqNvi">
                    <ref role="3Tt5mk" to="tp3j:i3dlsyr" resolve="queryFunction" />
                    <uo k="s:originTrace" v="n:8933192351752365893" />
                  </node>
                </node>
                <node concept="3w_OXm" id="n7" role="2OqNvi">
                  <uo k="s:originTrace" v="n:8933192351752370015" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="mq" role="3cqZAp">
              <uo k="s:originTrace" v="n:8933192351752370194" />
            </node>
            <node concept="3cpWs8" id="mr" role="3cqZAp">
              <uo k="s:originTrace" v="n:8933192351752351274" />
              <node concept="3cpWsn" id="na" role="3cpWs9">
                <property role="TrG5h" value="type" />
                <uo k="s:originTrace" v="n:8933192351752351280" />
                <node concept="3Tqbb2" id="nb" role="1tU5fm">
                  <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
                  <uo k="s:originTrace" v="n:8933192351752351304" />
                </node>
                <node concept="2OqwBi" id="nc" role="33vP2m">
                  <uo k="s:originTrace" v="n:8933192351752353383" />
                  <node concept="2OqwBi" id="nd" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:8933192351752351324" />
                    <node concept="37vLTw" id="nf" role="2Oq$k0">
                      <ref role="3cqZAo" node="mW" resolve="decl" />
                      <uo k="s:originTrace" v="n:8933192351752359151" />
                    </node>
                    <node concept="3TrEf2" id="ng" role="2OqNvi">
                      <ref role="3Tt5mk" to="tp3j:i3dlsyr" resolve="queryFunction" />
                      <uo k="s:originTrace" v="n:8933192351752351329" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="ne" role="2OqNvi">
                    <ref role="3Tt5mk" to="tp3j:i3ddBrI" resolve="paramType" />
                    <uo k="s:originTrace" v="n:8933192351752355206" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="ms" role="3cqZAp">
              <uo k="s:originTrace" v="n:8933192351752370330" />
              <node concept="3clFbS" id="nh" role="3clFbx">
                <uo k="s:originTrace" v="n:8933192351752370332" />
                <node concept="3cpWs6" id="nj" role="3cqZAp">
                  <uo k="s:originTrace" v="n:8933192351752371603" />
                </node>
              </node>
              <node concept="2OqwBi" id="ni" role="3clFbw">
                <uo k="s:originTrace" v="n:8933192351752370917" />
                <node concept="37vLTw" id="nk" role="2Oq$k0">
                  <ref role="3cqZAo" node="na" resolve="type" />
                  <uo k="s:originTrace" v="n:8933192351752370389" />
                </node>
                <node concept="3w_OXm" id="nl" role="2OqNvi">
                  <uo k="s:originTrace" v="n:8933192351752371465" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="mt" role="3cqZAp">
              <uo k="s:originTrace" v="n:8933192351752371606" />
            </node>
            <node concept="9aQIb" id="mu" role="3cqZAp">
              <uo k="s:originTrace" v="n:8933192351752336249" />
              <node concept="3clFbS" id="nm" role="9aQI4">
                <node concept="3cpWs8" id="no" role="3cqZAp">
                  <node concept="3cpWsn" id="nr" role="3cpWs9">
                    <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                    <node concept="2OqwBi" id="ns" role="33vP2m">
                      <uo k="s:originTrace" v="n:8933192351752331893" />
                      <node concept="37vLTw" id="nu" role="2Oq$k0">
                        <ref role="3cqZAo" node="m3" resolve="statement" />
                        <uo k="s:originTrace" v="n:8933192351752331403" />
                      </node>
                      <node concept="3TrEf2" id="nv" role="2OqNvi">
                        <ref role="3Tt5mk" to="tp5g:7JT4LO$qcEi" resolve="parameter" />
                        <uo k="s:originTrace" v="n:8933192351752333922" />
                      </node>
                      <node concept="6wLe0" id="nw" role="lGtFl">
                        <property role="6wLej" value="8933192351752336249" />
                        <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="nt" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="np" role="3cqZAp">
                  <node concept="3cpWsn" id="nx" role="3cpWs9">
                    <property role="TrG5h" value="_info_12389875345" />
                    <node concept="3uibUv" id="ny" role="1tU5fm">
                      <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                    </node>
                    <node concept="2ShNRf" id="nz" role="33vP2m">
                      <node concept="1pGfFk" id="n$" role="2ShVmc">
                        <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                        <node concept="37vLTw" id="n_" role="37wK5m">
                          <ref role="3cqZAo" node="nr" resolve="_nodeToCheck_1029348928467" />
                        </node>
                        <node concept="10Nm6u" id="nA" role="37wK5m" />
                        <node concept="Xl_RD" id="nB" role="37wK5m">
                          <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="nC" role="37wK5m">
                          <property role="Xl_RC" value="8933192351752336249" />
                        </node>
                        <node concept="3cmrfG" id="nD" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="10Nm6u" id="nE" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="nq" role="3cqZAp">
                  <node concept="2OqwBi" id="nF" role="3clFbG">
                    <node concept="3VmV3z" id="nG" role="2Oq$k0">
                      <property role="3VnrPo" value="typeCheckingContext" />
                      <node concept="3uibUv" id="nI" role="3Vn4Tt">
                        <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                      </node>
                    </node>
                    <node concept="liA8E" id="nH" role="2OqNvi">
                      <ref role="37wK5l" to="u78q:~TypeCheckingContext.createLessThanInequality(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,boolean,boolean,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createLessThanInequality" />
                      <node concept="10QFUN" id="nJ" role="37wK5m">
                        <uo k="s:originTrace" v="n:8933192351752336252" />
                        <node concept="3uibUv" id="nO" role="10QFUM">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                        <node concept="2OqwBi" id="nP" role="10QFUP">
                          <uo k="s:originTrace" v="n:8933192351752331291" />
                          <node concept="3VmV3z" id="nQ" role="2Oq$k0">
                            <property role="3VnrPo" value="typeCheckingContext" />
                            <node concept="3uibUv" id="nT" role="3Vn4Tt">
                              <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                            </node>
                          </node>
                          <node concept="liA8E" id="nR" role="2OqNvi">
                            <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                            <node concept="3VmV3z" id="nU" role="37wK5m">
                              <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                              <node concept="3uibUv" id="nY" role="3Vn4Tt">
                                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="nV" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
                            </node>
                            <node concept="Xl_RD" id="nW" role="37wK5m">
                              <property role="Xl_RC" value="8933192351752331291" />
                            </node>
                            <node concept="3clFbT" id="nX" role="37wK5m">
                              <property role="3clFbU" value="true" />
                            </node>
                          </node>
                          <node concept="6wLe0" id="nS" role="lGtFl">
                            <property role="6wLej" value="8933192351752331291" />
                            <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
                          </node>
                        </node>
                      </node>
                      <node concept="10QFUN" id="nK" role="37wK5m">
                        <uo k="s:originTrace" v="n:8933192351752355997" />
                        <node concept="3uibUv" id="nZ" role="10QFUM">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                        <node concept="37vLTw" id="o0" role="10QFUP">
                          <ref role="3cqZAo" node="na" resolve="type" />
                          <uo k="s:originTrace" v="n:8933192351752355995" />
                        </node>
                      </node>
                      <node concept="3clFbT" id="nL" role="37wK5m" />
                      <node concept="3clFbT" id="nM" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                      <node concept="37vLTw" id="nN" role="37wK5m">
                        <ref role="3cqZAo" node="nx" resolve="_info_12389875345" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="6wLe0" id="nn" role="lGtFl">
                <property role="6wLej" value="8933192351752336249" />
                <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="mf" role="9aQIa">
            <uo k="s:originTrace" v="n:4804472818036369476" />
            <node concept="3clFbS" id="o1" role="9aQI4">
              <uo k="s:originTrace" v="n:8933192351752360485" />
              <node concept="3SKdUt" id="o2" role="3cqZAp">
                <uo k="s:originTrace" v="n:4804472818036406355" />
                <node concept="1PaTwC" id="o4" role="1aUNEU">
                  <uo k="s:originTrace" v="n:700871696606841331" />
                  <node concept="3oM_SD" id="o5" role="1PaTwD">
                    <property role="3oM_SC" value="Not" />
                    <uo k="s:originTrace" v="n:700871696606841332" />
                  </node>
                  <node concept="3oM_SD" id="o6" role="1PaTwD">
                    <property role="3oM_SC" value="a" />
                    <uo k="s:originTrace" v="n:700871696606841333" />
                  </node>
                  <node concept="3oM_SD" id="o7" role="1PaTwD">
                    <property role="3oM_SC" value="parameterized" />
                    <uo k="s:originTrace" v="n:700871696606841334" />
                  </node>
                  <node concept="3oM_SD" id="o8" role="1PaTwD">
                    <property role="3oM_SC" value="intention" />
                    <uo k="s:originTrace" v="n:700871696606841335" />
                  </node>
                  <node concept="3oM_SD" id="o9" role="1PaTwD">
                    <property role="3oM_SC" value="-" />
                    <uo k="s:originTrace" v="n:700871696606841336" />
                  </node>
                  <node concept="3oM_SD" id="oa" role="1PaTwD">
                    <property role="3oM_SC" value="should" />
                    <uo k="s:originTrace" v="n:700871696606841337" />
                  </node>
                  <node concept="3oM_SD" id="ob" role="1PaTwD">
                    <property role="3oM_SC" value="not" />
                    <uo k="s:originTrace" v="n:700871696606841338" />
                  </node>
                  <node concept="3oM_SD" id="oc" role="1PaTwD">
                    <property role="3oM_SC" value="have" />
                    <uo k="s:originTrace" v="n:700871696606841339" />
                  </node>
                  <node concept="3oM_SD" id="od" role="1PaTwD">
                    <property role="3oM_SC" value="a" />
                    <uo k="s:originTrace" v="n:700871696606841340" />
                  </node>
                  <node concept="3oM_SD" id="oe" role="1PaTwD">
                    <property role="3oM_SC" value="parameter" />
                    <uo k="s:originTrace" v="n:700871696606841341" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="o3" role="3cqZAp">
                <uo k="s:originTrace" v="n:4804472818036400241" />
                <node concept="3clFbS" id="of" role="3clFbx">
                  <uo k="s:originTrace" v="n:4804472818036400243" />
                  <node concept="9aQIb" id="oh" role="3cqZAp">
                    <uo k="s:originTrace" v="n:4804472818036406369" />
                    <node concept="3clFbS" id="oi" role="9aQI4">
                      <node concept="3cpWs8" id="ok" role="3cqZAp">
                        <node concept="3cpWsn" id="om" role="3cpWs9">
                          <property role="TrG5h" value="errorTarget" />
                          <property role="3TUv4t" value="true" />
                          <node concept="3uibUv" id="on" role="1tU5fm">
                            <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                          </node>
                          <node concept="2ShNRf" id="oo" role="33vP2m">
                            <node concept="1pGfFk" id="op" role="2ShVmc">
                              <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="ol" role="3cqZAp">
                        <node concept="3cpWsn" id="oq" role="3cpWs9">
                          <property role="TrG5h" value="_reporter_2309309498" />
                          <node concept="3uibUv" id="or" role="1tU5fm">
                            <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                          </node>
                          <node concept="2OqwBi" id="os" role="33vP2m">
                            <node concept="3VmV3z" id="ot" role="2Oq$k0">
                              <property role="3VnrPo" value="typeCheckingContext" />
                              <node concept="3uibUv" id="ov" role="3Vn4Tt">
                                <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                              </node>
                            </node>
                            <node concept="liA8E" id="ou" role="2OqNvi">
                              <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                              <node concept="2OqwBi" id="ow" role="37wK5m">
                                <uo k="s:originTrace" v="n:4804472818036407014" />
                                <node concept="37vLTw" id="oA" role="2Oq$k0">
                                  <ref role="3cqZAo" node="m3" resolve="statement" />
                                  <uo k="s:originTrace" v="n:4804472818036406514" />
                                </node>
                                <node concept="3TrEf2" id="oB" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tp5g:7JT4LO$qcEi" resolve="parameter" />
                                  <uo k="s:originTrace" v="n:4804472818036409635" />
                                </node>
                              </node>
                              <node concept="Xl_RD" id="ox" role="37wK5m">
                                <property role="Xl_RC" value="Parameter value specified for a non-parameterized intention" />
                                <uo k="s:originTrace" v="n:4804472818036406384" />
                              </node>
                              <node concept="Xl_RD" id="oy" role="37wK5m">
                                <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
                              </node>
                              <node concept="Xl_RD" id="oz" role="37wK5m">
                                <property role="Xl_RC" value="4804472818036406369" />
                              </node>
                              <node concept="10Nm6u" id="o$" role="37wK5m" />
                              <node concept="37vLTw" id="o_" role="37wK5m">
                                <ref role="3cqZAo" node="om" resolve="errorTarget" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="6wLe0" id="oj" role="lGtFl">
                      <property role="6wLej" value="4804472818036406369" />
                      <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="og" role="3clFbw">
                  <uo k="s:originTrace" v="n:4804472818036404068" />
                  <node concept="2OqwBi" id="oC" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:4804472818036400870" />
                    <node concept="37vLTw" id="oE" role="2Oq$k0">
                      <ref role="3cqZAo" node="m3" resolve="statement" />
                      <uo k="s:originTrace" v="n:4804472818036400257" />
                    </node>
                    <node concept="3TrEf2" id="oF" role="2OqNvi">
                      <ref role="3Tt5mk" to="tp5g:7JT4LO$qcEi" resolve="parameter" />
                      <uo k="s:originTrace" v="n:4804472818036402787" />
                    </node>
                  </node>
                  <node concept="3x8VRR" id="oD" role="2OqNvi">
                    <uo k="s:originTrace" v="n:4804472818036406220" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="mc" role="3cqZAp">
          <uo k="s:originTrace" v="n:8933192351752370238" />
        </node>
      </node>
      <node concept="3Tm1VV" id="m7" role="1B3o_S">
        <uo k="s:originTrace" v="n:8933192351752325071" />
      </node>
    </node>
    <node concept="3clFb_" id="lT" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:8933192351752325071" />
      <node concept="3bZ5Sz" id="oG" role="3clF45">
        <uo k="s:originTrace" v="n:8933192351752325071" />
      </node>
      <node concept="3clFbS" id="oH" role="3clF47">
        <uo k="s:originTrace" v="n:8933192351752325071" />
        <node concept="3cpWs6" id="oJ" role="3cqZAp">
          <uo k="s:originTrace" v="n:8933192351752325071" />
          <node concept="35c_gC" id="oK" role="3cqZAk">
            <ref role="35c_gD" to="tp5g:hPMFPyi" resolve="InvokeIntentionStatement" />
            <uo k="s:originTrace" v="n:8933192351752325071" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="oI" role="1B3o_S">
        <uo k="s:originTrace" v="n:8933192351752325071" />
      </node>
    </node>
    <node concept="3clFb_" id="lU" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:8933192351752325071" />
      <node concept="37vLTG" id="oL" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:8933192351752325071" />
        <node concept="3Tqbb2" id="oP" role="1tU5fm">
          <uo k="s:originTrace" v="n:8933192351752325071" />
        </node>
      </node>
      <node concept="3clFbS" id="oM" role="3clF47">
        <uo k="s:originTrace" v="n:8933192351752325071" />
        <node concept="9aQIb" id="oQ" role="3cqZAp">
          <uo k="s:originTrace" v="n:8933192351752325071" />
          <node concept="3clFbS" id="oR" role="9aQI4">
            <uo k="s:originTrace" v="n:8933192351752325071" />
            <node concept="3cpWs6" id="oS" role="3cqZAp">
              <uo k="s:originTrace" v="n:8933192351752325071" />
              <node concept="2ShNRf" id="oT" role="3cqZAk">
                <uo k="s:originTrace" v="n:8933192351752325071" />
                <node concept="1pGfFk" id="oU" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:8933192351752325071" />
                  <node concept="2OqwBi" id="oV" role="37wK5m">
                    <uo k="s:originTrace" v="n:8933192351752325071" />
                    <node concept="2OqwBi" id="oX" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:8933192351752325071" />
                      <node concept="liA8E" id="oZ" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:8933192351752325071" />
                      </node>
                      <node concept="2JrnkZ" id="p0" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:8933192351752325071" />
                        <node concept="37vLTw" id="p1" role="2JrQYb">
                          <ref role="3cqZAo" node="oL" resolve="argument" />
                          <uo k="s:originTrace" v="n:8933192351752325071" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="oY" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:8933192351752325071" />
                      <node concept="1rXfSq" id="p2" role="37wK5m">
                        <ref role="37wK5l" node="lT" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:8933192351752325071" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="oW" role="37wK5m">
                    <uo k="s:originTrace" v="n:8933192351752325071" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="oN" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:8933192351752325071" />
      </node>
      <node concept="3Tm1VV" id="oO" role="1B3o_S">
        <uo k="s:originTrace" v="n:8933192351752325071" />
      </node>
    </node>
    <node concept="3clFb_" id="lV" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:8933192351752325071" />
      <node concept="3clFbS" id="p3" role="3clF47">
        <uo k="s:originTrace" v="n:8933192351752325071" />
        <node concept="3cpWs6" id="p6" role="3cqZAp">
          <uo k="s:originTrace" v="n:8933192351752325071" />
          <node concept="3clFbT" id="p7" role="3cqZAk">
            <uo k="s:originTrace" v="n:8933192351752325071" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="p4" role="3clF45">
        <uo k="s:originTrace" v="n:8933192351752325071" />
      </node>
      <node concept="3Tm1VV" id="p5" role="1B3o_S">
        <uo k="s:originTrace" v="n:8933192351752325071" />
      </node>
    </node>
    <node concept="3uibUv" id="lW" role="EKbjA">
      <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:8933192351752325071" />
    </node>
    <node concept="3uibUv" id="lX" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractInferenceRule_Runtime" resolve="AbstractInferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:8933192351752325071" />
    </node>
    <node concept="3Tm1VV" id="lY" role="1B3o_S">
      <uo k="s:originTrace" v="n:8933192351752325071" />
    </node>
  </node>
  <node concept="312cEu" id="p8">
    <property role="3GE5qa" value="expression" />
    <property role="TrG5h" value="typeof_IsActionApplicableExpression_InferenceRule" />
    <uo k="s:originTrace" v="n:6610965663656402803" />
    <node concept="3clFbW" id="p9" role="jymVt">
      <uo k="s:originTrace" v="n:6610965663656402803" />
      <node concept="3clFbS" id="ph" role="3clF47">
        <uo k="s:originTrace" v="n:6610965663656402803" />
      </node>
      <node concept="3Tm1VV" id="pi" role="1B3o_S">
        <uo k="s:originTrace" v="n:6610965663656402803" />
      </node>
      <node concept="3cqZAl" id="pj" role="3clF45">
        <uo k="s:originTrace" v="n:6610965663656402803" />
      </node>
    </node>
    <node concept="3clFb_" id="pa" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:6610965663656402803" />
      <node concept="3cqZAl" id="pk" role="3clF45">
        <uo k="s:originTrace" v="n:6610965663656402803" />
      </node>
      <node concept="37vLTG" id="pl" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="isActionApplicableExpression" />
        <uo k="s:originTrace" v="n:6610965663656402803" />
        <node concept="3Tqbb2" id="pq" role="1tU5fm">
          <uo k="s:originTrace" v="n:6610965663656402803" />
        </node>
      </node>
      <node concept="37vLTG" id="pm" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:6610965663656402803" />
        <node concept="3uibUv" id="pr" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:6610965663656402803" />
        </node>
      </node>
      <node concept="37vLTG" id="pn" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:6610965663656402803" />
        <node concept="3uibUv" id="ps" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:6610965663656402803" />
        </node>
      </node>
      <node concept="3clFbS" id="po" role="3clF47">
        <uo k="s:originTrace" v="n:6610965663656402804" />
        <node concept="9aQIb" id="pt" role="3cqZAp">
          <uo k="s:originTrace" v="n:6610965663656404886" />
          <node concept="3clFbS" id="pu" role="9aQI4">
            <node concept="3cpWs8" id="pw" role="3cqZAp">
              <node concept="3cpWsn" id="pz" role="3cpWs9">
                <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                <node concept="37vLTw" id="p$" role="33vP2m">
                  <ref role="3cqZAo" node="pl" resolve="isActionApplicableExpression" />
                  <uo k="s:originTrace" v="n:6610965663656403033" />
                  <node concept="6wLe0" id="pA" role="lGtFl">
                    <property role="6wLej" value="6610965663656404886" />
                    <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
                  </node>
                </node>
                <node concept="3uibUv" id="p_" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="px" role="3cqZAp">
              <node concept="3cpWsn" id="pB" role="3cpWs9">
                <property role="TrG5h" value="_info_12389875345" />
                <node concept="3uibUv" id="pC" role="1tU5fm">
                  <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                </node>
                <node concept="2ShNRf" id="pD" role="33vP2m">
                  <node concept="1pGfFk" id="pE" role="2ShVmc">
                    <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                    <node concept="37vLTw" id="pF" role="37wK5m">
                      <ref role="3cqZAo" node="pz" resolve="_nodeToCheck_1029348928467" />
                    </node>
                    <node concept="10Nm6u" id="pG" role="37wK5m" />
                    <node concept="Xl_RD" id="pH" role="37wK5m">
                      <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
                    </node>
                    <node concept="Xl_RD" id="pI" role="37wK5m">
                      <property role="Xl_RC" value="6610965663656404886" />
                    </node>
                    <node concept="3cmrfG" id="pJ" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="10Nm6u" id="pK" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="py" role="3cqZAp">
              <node concept="2OqwBi" id="pL" role="3clFbG">
                <node concept="3VmV3z" id="pM" role="2Oq$k0">
                  <property role="3VnrPo" value="typeCheckingContext" />
                  <node concept="3uibUv" id="pO" role="3Vn4Tt">
                    <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                  </node>
                </node>
                <node concept="liA8E" id="pN" role="2OqNvi">
                  <ref role="37wK5l" to="u78q:~TypeCheckingContext.createEquation(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createEquation" />
                  <node concept="10QFUN" id="pP" role="37wK5m">
                    <uo k="s:originTrace" v="n:6610965663656404889" />
                    <node concept="3uibUv" id="pS" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="pT" role="10QFUP">
                      <uo k="s:originTrace" v="n:6610965663656402810" />
                      <node concept="3VmV3z" id="pU" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="pX" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="pV" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                        <node concept="3VmV3z" id="pY" role="37wK5m">
                          <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                          <node concept="3uibUv" id="q2" role="3Vn4Tt">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="pZ" role="37wK5m">
                          <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="q0" role="37wK5m">
                          <property role="Xl_RC" value="6610965663656402810" />
                        </node>
                        <node concept="3clFbT" id="q1" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                      <node concept="6wLe0" id="pW" role="lGtFl">
                        <property role="6wLej" value="6610965663656402810" />
                        <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
                      </node>
                    </node>
                  </node>
                  <node concept="10QFUN" id="pQ" role="37wK5m">
                    <uo k="s:originTrace" v="n:6610965663656404902" />
                    <node concept="3uibUv" id="q3" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2ShNRf" id="q4" role="10QFUP">
                      <uo k="s:originTrace" v="n:6610965663656404903" />
                      <node concept="3zrR0B" id="q5" role="2ShVmc">
                        <uo k="s:originTrace" v="n:6610965663656404904" />
                        <node concept="3Tqbb2" id="q6" role="3zrR0E">
                          <ref role="ehGHo" to="tpee:f_0P_4Y" resolve="BooleanType" />
                          <uo k="s:originTrace" v="n:6610965663656404905" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="pR" role="37wK5m">
                    <ref role="3cqZAo" node="pB" resolve="_info_12389875345" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="6wLe0" id="pv" role="lGtFl">
            <property role="6wLej" value="6610965663656404886" />
            <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="pp" role="1B3o_S">
        <uo k="s:originTrace" v="n:6610965663656402803" />
      </node>
    </node>
    <node concept="3clFb_" id="pb" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:6610965663656402803" />
      <node concept="3bZ5Sz" id="q7" role="3clF45">
        <uo k="s:originTrace" v="n:6610965663656402803" />
      </node>
      <node concept="3clFbS" id="q8" role="3clF47">
        <uo k="s:originTrace" v="n:6610965663656402803" />
        <node concept="3cpWs6" id="qa" role="3cqZAp">
          <uo k="s:originTrace" v="n:6610965663656402803" />
          <node concept="35c_gC" id="qb" role="3cqZAk">
            <ref role="35c_gD" to="tp5g:H9$uslP7vo" resolve="IsActionApplicableExpression" />
            <uo k="s:originTrace" v="n:6610965663656402803" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="q9" role="1B3o_S">
        <uo k="s:originTrace" v="n:6610965663656402803" />
      </node>
    </node>
    <node concept="3clFb_" id="pc" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:6610965663656402803" />
      <node concept="37vLTG" id="qc" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:6610965663656402803" />
        <node concept="3Tqbb2" id="qg" role="1tU5fm">
          <uo k="s:originTrace" v="n:6610965663656402803" />
        </node>
      </node>
      <node concept="3clFbS" id="qd" role="3clF47">
        <uo k="s:originTrace" v="n:6610965663656402803" />
        <node concept="9aQIb" id="qh" role="3cqZAp">
          <uo k="s:originTrace" v="n:6610965663656402803" />
          <node concept="3clFbS" id="qi" role="9aQI4">
            <uo k="s:originTrace" v="n:6610965663656402803" />
            <node concept="3cpWs6" id="qj" role="3cqZAp">
              <uo k="s:originTrace" v="n:6610965663656402803" />
              <node concept="2ShNRf" id="qk" role="3cqZAk">
                <uo k="s:originTrace" v="n:6610965663656402803" />
                <node concept="1pGfFk" id="ql" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:6610965663656402803" />
                  <node concept="2OqwBi" id="qm" role="37wK5m">
                    <uo k="s:originTrace" v="n:6610965663656402803" />
                    <node concept="2OqwBi" id="qo" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:6610965663656402803" />
                      <node concept="liA8E" id="qq" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:6610965663656402803" />
                      </node>
                      <node concept="2JrnkZ" id="qr" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:6610965663656402803" />
                        <node concept="37vLTw" id="qs" role="2JrQYb">
                          <ref role="3cqZAo" node="qc" resolve="argument" />
                          <uo k="s:originTrace" v="n:6610965663656402803" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="qp" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:6610965663656402803" />
                      <node concept="1rXfSq" id="qt" role="37wK5m">
                        <ref role="37wK5l" node="pb" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:6610965663656402803" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="qn" role="37wK5m">
                    <uo k="s:originTrace" v="n:6610965663656402803" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="qe" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:6610965663656402803" />
      </node>
      <node concept="3Tm1VV" id="qf" role="1B3o_S">
        <uo k="s:originTrace" v="n:6610965663656402803" />
      </node>
    </node>
    <node concept="3clFb_" id="pd" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:6610965663656402803" />
      <node concept="3clFbS" id="qu" role="3clF47">
        <uo k="s:originTrace" v="n:6610965663656402803" />
        <node concept="3cpWs6" id="qx" role="3cqZAp">
          <uo k="s:originTrace" v="n:6610965663656402803" />
          <node concept="3clFbT" id="qy" role="3cqZAk">
            <uo k="s:originTrace" v="n:6610965663656402803" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="qv" role="3clF45">
        <uo k="s:originTrace" v="n:6610965663656402803" />
      </node>
      <node concept="3Tm1VV" id="qw" role="1B3o_S">
        <uo k="s:originTrace" v="n:6610965663656402803" />
      </node>
    </node>
    <node concept="3uibUv" id="pe" role="EKbjA">
      <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:6610965663656402803" />
    </node>
    <node concept="3uibUv" id="pf" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractInferenceRule_Runtime" resolve="AbstractInferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:6610965663656402803" />
    </node>
    <node concept="3Tm1VV" id="pg" role="1B3o_S">
      <uo k="s:originTrace" v="n:6610965663656402803" />
    </node>
  </node>
  <node concept="312cEu" id="qz">
    <property role="3GE5qa" value="expression" />
    <property role="TrG5h" value="typeof_IsIntentionApplicableExpression_InferenceRule" />
    <uo k="s:originTrace" v="n:592868908271422399" />
    <node concept="3clFbW" id="q$" role="jymVt">
      <uo k="s:originTrace" v="n:592868908271422399" />
      <node concept="3clFbS" id="qG" role="3clF47">
        <uo k="s:originTrace" v="n:592868908271422399" />
      </node>
      <node concept="3Tm1VV" id="qH" role="1B3o_S">
        <uo k="s:originTrace" v="n:592868908271422399" />
      </node>
      <node concept="3cqZAl" id="qI" role="3clF45">
        <uo k="s:originTrace" v="n:592868908271422399" />
      </node>
    </node>
    <node concept="3clFb_" id="q_" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:592868908271422399" />
      <node concept="3cqZAl" id="qJ" role="3clF45">
        <uo k="s:originTrace" v="n:592868908271422399" />
      </node>
      <node concept="37vLTG" id="qK" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="isIntentionApplicableExpression" />
        <uo k="s:originTrace" v="n:592868908271422399" />
        <node concept="3Tqbb2" id="qP" role="1tU5fm">
          <uo k="s:originTrace" v="n:592868908271422399" />
        </node>
      </node>
      <node concept="37vLTG" id="qL" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:592868908271422399" />
        <node concept="3uibUv" id="qQ" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:592868908271422399" />
        </node>
      </node>
      <node concept="37vLTG" id="qM" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:592868908271422399" />
        <node concept="3uibUv" id="qR" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:592868908271422399" />
        </node>
      </node>
      <node concept="3clFbS" id="qN" role="3clF47">
        <uo k="s:originTrace" v="n:592868908271422400" />
        <node concept="9aQIb" id="qS" role="3cqZAp">
          <uo k="s:originTrace" v="n:592868908271422839" />
          <node concept="3clFbS" id="qT" role="9aQI4">
            <node concept="3cpWs8" id="qV" role="3cqZAp">
              <node concept="3cpWsn" id="qY" role="3cpWs9">
                <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                <node concept="37vLTw" id="qZ" role="33vP2m">
                  <ref role="3cqZAo" node="qK" resolve="isIntentionApplicableExpression" />
                  <uo k="s:originTrace" v="n:592868908271422518" />
                  <node concept="6wLe0" id="r1" role="lGtFl">
                    <property role="6wLej" value="592868908271422839" />
                    <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
                  </node>
                </node>
                <node concept="3uibUv" id="r0" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="qW" role="3cqZAp">
              <node concept="3cpWsn" id="r2" role="3cpWs9">
                <property role="TrG5h" value="_info_12389875345" />
                <node concept="3uibUv" id="r3" role="1tU5fm">
                  <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                </node>
                <node concept="2ShNRf" id="r4" role="33vP2m">
                  <node concept="1pGfFk" id="r5" role="2ShVmc">
                    <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                    <node concept="37vLTw" id="r6" role="37wK5m">
                      <ref role="3cqZAo" node="qY" resolve="_nodeToCheck_1029348928467" />
                    </node>
                    <node concept="10Nm6u" id="r7" role="37wK5m" />
                    <node concept="Xl_RD" id="r8" role="37wK5m">
                      <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
                    </node>
                    <node concept="Xl_RD" id="r9" role="37wK5m">
                      <property role="Xl_RC" value="592868908271422839" />
                    </node>
                    <node concept="3cmrfG" id="ra" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="10Nm6u" id="rb" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="qX" role="3cqZAp">
              <node concept="2OqwBi" id="rc" role="3clFbG">
                <node concept="3VmV3z" id="rd" role="2Oq$k0">
                  <property role="3VnrPo" value="typeCheckingContext" />
                  <node concept="3uibUv" id="rf" role="3Vn4Tt">
                    <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                  </node>
                </node>
                <node concept="liA8E" id="re" role="2OqNvi">
                  <ref role="37wK5l" to="u78q:~TypeCheckingContext.createEquation(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createEquation" />
                  <node concept="10QFUN" id="rg" role="37wK5m">
                    <uo k="s:originTrace" v="n:592868908271422842" />
                    <node concept="3uibUv" id="rj" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="rk" role="10QFUP">
                      <uo k="s:originTrace" v="n:592868908271422406" />
                      <node concept="3VmV3z" id="rl" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="ro" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="rm" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                        <node concept="3VmV3z" id="rp" role="37wK5m">
                          <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                          <node concept="3uibUv" id="rt" role="3Vn4Tt">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="rq" role="37wK5m">
                          <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="rr" role="37wK5m">
                          <property role="Xl_RC" value="592868908271422406" />
                        </node>
                        <node concept="3clFbT" id="rs" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                      <node concept="6wLe0" id="rn" role="lGtFl">
                        <property role="6wLej" value="592868908271422406" />
                        <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
                      </node>
                    </node>
                  </node>
                  <node concept="10QFUN" id="rh" role="37wK5m">
                    <uo k="s:originTrace" v="n:592868908271422859" />
                    <node concept="3uibUv" id="ru" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2ShNRf" id="rv" role="10QFUP">
                      <uo k="s:originTrace" v="n:592868908271422855" />
                      <node concept="3zrR0B" id="rw" role="2ShVmc">
                        <uo k="s:originTrace" v="n:592868908271423608" />
                        <node concept="3Tqbb2" id="rx" role="3zrR0E">
                          <ref role="ehGHo" to="tpee:f_0P_4Y" resolve="BooleanType" />
                          <uo k="s:originTrace" v="n:592868908271423610" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="ri" role="37wK5m">
                    <ref role="3cqZAo" node="r2" resolve="_info_12389875345" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="6wLe0" id="qU" role="lGtFl">
            <property role="6wLej" value="592868908271422839" />
            <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="qO" role="1B3o_S">
        <uo k="s:originTrace" v="n:592868908271422399" />
      </node>
    </node>
    <node concept="3clFb_" id="qA" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:592868908271422399" />
      <node concept="3bZ5Sz" id="ry" role="3clF45">
        <uo k="s:originTrace" v="n:592868908271422399" />
      </node>
      <node concept="3clFbS" id="rz" role="3clF47">
        <uo k="s:originTrace" v="n:592868908271422399" />
        <node concept="3cpWs6" id="r_" role="3cqZAp">
          <uo k="s:originTrace" v="n:592868908271422399" />
          <node concept="35c_gC" id="rA" role="3cqZAk">
            <ref role="35c_gD" to="tp5g:wUiM63T4Ip" resolve="IsIntentionApplicableExpression" />
            <uo k="s:originTrace" v="n:592868908271422399" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="r$" role="1B3o_S">
        <uo k="s:originTrace" v="n:592868908271422399" />
      </node>
    </node>
    <node concept="3clFb_" id="qB" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:592868908271422399" />
      <node concept="37vLTG" id="rB" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:592868908271422399" />
        <node concept="3Tqbb2" id="rF" role="1tU5fm">
          <uo k="s:originTrace" v="n:592868908271422399" />
        </node>
      </node>
      <node concept="3clFbS" id="rC" role="3clF47">
        <uo k="s:originTrace" v="n:592868908271422399" />
        <node concept="9aQIb" id="rG" role="3cqZAp">
          <uo k="s:originTrace" v="n:592868908271422399" />
          <node concept="3clFbS" id="rH" role="9aQI4">
            <uo k="s:originTrace" v="n:592868908271422399" />
            <node concept="3cpWs6" id="rI" role="3cqZAp">
              <uo k="s:originTrace" v="n:592868908271422399" />
              <node concept="2ShNRf" id="rJ" role="3cqZAk">
                <uo k="s:originTrace" v="n:592868908271422399" />
                <node concept="1pGfFk" id="rK" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:592868908271422399" />
                  <node concept="2OqwBi" id="rL" role="37wK5m">
                    <uo k="s:originTrace" v="n:592868908271422399" />
                    <node concept="2OqwBi" id="rN" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:592868908271422399" />
                      <node concept="liA8E" id="rP" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:592868908271422399" />
                      </node>
                      <node concept="2JrnkZ" id="rQ" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:592868908271422399" />
                        <node concept="37vLTw" id="rR" role="2JrQYb">
                          <ref role="3cqZAo" node="rB" resolve="argument" />
                          <uo k="s:originTrace" v="n:592868908271422399" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="rO" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:592868908271422399" />
                      <node concept="1rXfSq" id="rS" role="37wK5m">
                        <ref role="37wK5l" node="qA" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:592868908271422399" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="rM" role="37wK5m">
                    <uo k="s:originTrace" v="n:592868908271422399" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="rD" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:592868908271422399" />
      </node>
      <node concept="3Tm1VV" id="rE" role="1B3o_S">
        <uo k="s:originTrace" v="n:592868908271422399" />
      </node>
    </node>
    <node concept="3clFb_" id="qC" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:592868908271422399" />
      <node concept="3clFbS" id="rT" role="3clF47">
        <uo k="s:originTrace" v="n:592868908271422399" />
        <node concept="3cpWs6" id="rW" role="3cqZAp">
          <uo k="s:originTrace" v="n:592868908271422399" />
          <node concept="3clFbT" id="rX" role="3cqZAk">
            <uo k="s:originTrace" v="n:592868908271422399" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="rU" role="3clF45">
        <uo k="s:originTrace" v="n:592868908271422399" />
      </node>
      <node concept="3Tm1VV" id="rV" role="1B3o_S">
        <uo k="s:originTrace" v="n:592868908271422399" />
      </node>
    </node>
    <node concept="3uibUv" id="qD" role="EKbjA">
      <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:592868908271422399" />
    </node>
    <node concept="3uibUv" id="qE" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractInferenceRule_Runtime" resolve="AbstractInferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:592868908271422399" />
    </node>
    <node concept="3Tm1VV" id="qF" role="1B3o_S">
      <uo k="s:originTrace" v="n:592868908271422399" />
    </node>
  </node>
  <node concept="312cEu" id="rY">
    <property role="3GE5qa" value="expression" />
    <property role="TrG5h" value="typeof_ModelExpression_InferenceRule" />
    <uo k="s:originTrace" v="n:1228148619872" />
    <node concept="3clFbW" id="rZ" role="jymVt">
      <uo k="s:originTrace" v="n:1228148619872" />
      <node concept="3clFbS" id="s7" role="3clF47">
        <uo k="s:originTrace" v="n:1228148619872" />
      </node>
      <node concept="3Tm1VV" id="s8" role="1B3o_S">
        <uo k="s:originTrace" v="n:1228148619872" />
      </node>
      <node concept="3cqZAl" id="s9" role="3clF45">
        <uo k="s:originTrace" v="n:1228148619872" />
      </node>
    </node>
    <node concept="3clFb_" id="s0" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:1228148619872" />
      <node concept="3cqZAl" id="sa" role="3clF45">
        <uo k="s:originTrace" v="n:1228148619872" />
      </node>
      <node concept="37vLTG" id="sb" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="expression" />
        <uo k="s:originTrace" v="n:1228148619872" />
        <node concept="3Tqbb2" id="sg" role="1tU5fm">
          <uo k="s:originTrace" v="n:1228148619872" />
        </node>
      </node>
      <node concept="37vLTG" id="sc" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:1228148619872" />
        <node concept="3uibUv" id="sh" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:1228148619872" />
        </node>
      </node>
      <node concept="37vLTG" id="sd" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:1228148619872" />
        <node concept="3uibUv" id="si" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:1228148619872" />
        </node>
      </node>
      <node concept="3clFbS" id="se" role="3clF47">
        <uo k="s:originTrace" v="n:1228148619873" />
        <node concept="9aQIb" id="sj" role="3cqZAp">
          <uo k="s:originTrace" v="n:6080263412726817005" />
          <node concept="3clFbS" id="sk" role="9aQI4">
            <node concept="3cpWs8" id="sm" role="3cqZAp">
              <node concept="3cpWsn" id="sp" role="3cpWs9">
                <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                <node concept="37vLTw" id="sq" role="33vP2m">
                  <ref role="3cqZAo" node="sb" resolve="expression" />
                  <uo k="s:originTrace" v="n:6080263412726817080" />
                  <node concept="6wLe0" id="ss" role="lGtFl">
                    <property role="6wLej" value="6080263412726817005" />
                    <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
                  </node>
                </node>
                <node concept="3uibUv" id="sr" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="sn" role="3cqZAp">
              <node concept="3cpWsn" id="st" role="3cpWs9">
                <property role="TrG5h" value="_info_12389875345" />
                <node concept="3uibUv" id="su" role="1tU5fm">
                  <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                </node>
                <node concept="2ShNRf" id="sv" role="33vP2m">
                  <node concept="1pGfFk" id="sw" role="2ShVmc">
                    <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                    <node concept="37vLTw" id="sx" role="37wK5m">
                      <ref role="3cqZAo" node="sp" resolve="_nodeToCheck_1029348928467" />
                    </node>
                    <node concept="10Nm6u" id="sy" role="37wK5m" />
                    <node concept="Xl_RD" id="sz" role="37wK5m">
                      <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
                    </node>
                    <node concept="Xl_RD" id="s$" role="37wK5m">
                      <property role="Xl_RC" value="6080263412726817005" />
                    </node>
                    <node concept="3cmrfG" id="s_" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="10Nm6u" id="sA" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="so" role="3cqZAp">
              <node concept="2OqwBi" id="sB" role="3clFbG">
                <node concept="3VmV3z" id="sC" role="2Oq$k0">
                  <property role="3VnrPo" value="typeCheckingContext" />
                  <node concept="3uibUv" id="sE" role="3Vn4Tt">
                    <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                  </node>
                </node>
                <node concept="liA8E" id="sD" role="2OqNvi">
                  <ref role="37wK5l" to="u78q:~TypeCheckingContext.createEquation(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createEquation" />
                  <node concept="10QFUN" id="sF" role="37wK5m">
                    <uo k="s:originTrace" v="n:6080263412726817029" />
                    <node concept="3uibUv" id="sI" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="sJ" role="10QFUP">
                      <uo k="s:originTrace" v="n:6080263412726817025" />
                      <node concept="3VmV3z" id="sK" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="sN" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="sL" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                        <node concept="3VmV3z" id="sO" role="37wK5m">
                          <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                          <node concept="3uibUv" id="sS" role="3Vn4Tt">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="sP" role="37wK5m">
                          <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="sQ" role="37wK5m">
                          <property role="Xl_RC" value="6080263412726817025" />
                        </node>
                        <node concept="3clFbT" id="sR" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                      <node concept="6wLe0" id="sM" role="lGtFl">
                        <property role="6wLej" value="6080263412726817025" />
                        <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
                      </node>
                    </node>
                  </node>
                  <node concept="10QFUN" id="sG" role="37wK5m">
                    <uo k="s:originTrace" v="n:6080263412726817126" />
                    <node concept="3uibUv" id="sT" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2c44tf" id="sU" role="10QFUP">
                      <uo k="s:originTrace" v="n:6080263412726817122" />
                      <node concept="H_c77" id="sV" role="2c44tc">
                        <uo k="s:originTrace" v="n:6080263412726817156" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="sH" role="37wK5m">
                    <ref role="3cqZAo" node="st" resolve="_info_12389875345" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="6wLe0" id="sl" role="lGtFl">
            <property role="6wLej" value="6080263412726817005" />
            <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="sf" role="1B3o_S">
        <uo k="s:originTrace" v="n:1228148619872" />
      </node>
    </node>
    <node concept="3clFb_" id="s1" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:1228148619872" />
      <node concept="3bZ5Sz" id="sW" role="3clF45">
        <uo k="s:originTrace" v="n:1228148619872" />
      </node>
      <node concept="3clFbS" id="sX" role="3clF47">
        <uo k="s:originTrace" v="n:1228148619872" />
        <node concept="3cpWs6" id="sZ" role="3cqZAp">
          <uo k="s:originTrace" v="n:1228148619872" />
          <node concept="35c_gC" id="t0" role="3cqZAk">
            <ref role="35c_gD" to="tp5g:hPjGwIs" resolve="ModelExpression" />
            <uo k="s:originTrace" v="n:1228148619872" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="sY" role="1B3o_S">
        <uo k="s:originTrace" v="n:1228148619872" />
      </node>
    </node>
    <node concept="3clFb_" id="s2" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:1228148619872" />
      <node concept="37vLTG" id="t1" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:1228148619872" />
        <node concept="3Tqbb2" id="t5" role="1tU5fm">
          <uo k="s:originTrace" v="n:1228148619872" />
        </node>
      </node>
      <node concept="3clFbS" id="t2" role="3clF47">
        <uo k="s:originTrace" v="n:1228148619872" />
        <node concept="9aQIb" id="t6" role="3cqZAp">
          <uo k="s:originTrace" v="n:1228148619872" />
          <node concept="3clFbS" id="t7" role="9aQI4">
            <uo k="s:originTrace" v="n:1228148619872" />
            <node concept="3cpWs6" id="t8" role="3cqZAp">
              <uo k="s:originTrace" v="n:1228148619872" />
              <node concept="2ShNRf" id="t9" role="3cqZAk">
                <uo k="s:originTrace" v="n:1228148619872" />
                <node concept="1pGfFk" id="ta" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:1228148619872" />
                  <node concept="2OqwBi" id="tb" role="37wK5m">
                    <uo k="s:originTrace" v="n:1228148619872" />
                    <node concept="2OqwBi" id="td" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:1228148619872" />
                      <node concept="liA8E" id="tf" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:1228148619872" />
                      </node>
                      <node concept="2JrnkZ" id="tg" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:1228148619872" />
                        <node concept="37vLTw" id="th" role="2JrQYb">
                          <ref role="3cqZAo" node="t1" resolve="argument" />
                          <uo k="s:originTrace" v="n:1228148619872" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="te" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:1228148619872" />
                      <node concept="1rXfSq" id="ti" role="37wK5m">
                        <ref role="37wK5l" node="s1" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:1228148619872" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="tc" role="37wK5m">
                    <uo k="s:originTrace" v="n:1228148619872" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="t3" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:1228148619872" />
      </node>
      <node concept="3Tm1VV" id="t4" role="1B3o_S">
        <uo k="s:originTrace" v="n:1228148619872" />
      </node>
    </node>
    <node concept="3clFb_" id="s3" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:1228148619872" />
      <node concept="3clFbS" id="tj" role="3clF47">
        <uo k="s:originTrace" v="n:1228148619872" />
        <node concept="3cpWs6" id="tm" role="3cqZAp">
          <uo k="s:originTrace" v="n:1228148619872" />
          <node concept="3clFbT" id="tn" role="3cqZAk">
            <uo k="s:originTrace" v="n:1228148619872" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="tk" role="3clF45">
        <uo k="s:originTrace" v="n:1228148619872" />
      </node>
      <node concept="3Tm1VV" id="tl" role="1B3o_S">
        <uo k="s:originTrace" v="n:1228148619872" />
      </node>
    </node>
    <node concept="3uibUv" id="s4" role="EKbjA">
      <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:1228148619872" />
    </node>
    <node concept="3uibUv" id="s5" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractInferenceRule_Runtime" resolve="AbstractInferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:1228148619872" />
    </node>
    <node concept="3Tm1VV" id="s6" role="1B3o_S">
      <uo k="s:originTrace" v="n:1228148619872" />
    </node>
  </node>
  <node concept="312cEu" id="to">
    <property role="3GE5qa" value="expression" />
    <property role="TrG5h" value="typeof_ProjectExpression_InferenceRule" />
    <uo k="s:originTrace" v="n:1228148844375" />
    <node concept="3clFbW" id="tp" role="jymVt">
      <uo k="s:originTrace" v="n:1228148844375" />
      <node concept="3clFbS" id="tx" role="3clF47">
        <uo k="s:originTrace" v="n:1228148844375" />
      </node>
      <node concept="3Tm1VV" id="ty" role="1B3o_S">
        <uo k="s:originTrace" v="n:1228148844375" />
      </node>
      <node concept="3cqZAl" id="tz" role="3clF45">
        <uo k="s:originTrace" v="n:1228148844375" />
      </node>
    </node>
    <node concept="3clFb_" id="tq" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:1228148844375" />
      <node concept="3cqZAl" id="t$" role="3clF45">
        <uo k="s:originTrace" v="n:1228148844375" />
      </node>
      <node concept="37vLTG" id="t_" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="expression" />
        <uo k="s:originTrace" v="n:1228148844375" />
        <node concept="3Tqbb2" id="tE" role="1tU5fm">
          <uo k="s:originTrace" v="n:1228148844375" />
        </node>
      </node>
      <node concept="37vLTG" id="tA" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:1228148844375" />
        <node concept="3uibUv" id="tF" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:1228148844375" />
        </node>
      </node>
      <node concept="37vLTG" id="tB" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:1228148844375" />
        <node concept="3uibUv" id="tG" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:1228148844375" />
        </node>
      </node>
      <node concept="3clFbS" id="tC" role="3clF47">
        <uo k="s:originTrace" v="n:1228148844376" />
        <node concept="9aQIb" id="tH" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229343523390" />
          <node concept="3clFbS" id="tI" role="9aQI4">
            <node concept="3cpWs8" id="tK" role="3cqZAp">
              <node concept="3cpWsn" id="tN" role="3cpWs9">
                <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                <node concept="37vLTw" id="tO" role="33vP2m">
                  <ref role="3cqZAo" node="t_" resolve="expression" />
                  <uo k="s:originTrace" v="n:1229343523393" />
                  <node concept="6wLe0" id="tQ" role="lGtFl">
                    <property role="6wLej" value="1229343523390" />
                    <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
                  </node>
                </node>
                <node concept="3uibUv" id="tP" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="tL" role="3cqZAp">
              <node concept="3cpWsn" id="tR" role="3cpWs9">
                <property role="TrG5h" value="_info_12389875345" />
                <node concept="3uibUv" id="tS" role="1tU5fm">
                  <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                </node>
                <node concept="2ShNRf" id="tT" role="33vP2m">
                  <node concept="1pGfFk" id="tU" role="2ShVmc">
                    <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                    <node concept="37vLTw" id="tV" role="37wK5m">
                      <ref role="3cqZAo" node="tN" resolve="_nodeToCheck_1029348928467" />
                    </node>
                    <node concept="10Nm6u" id="tW" role="37wK5m" />
                    <node concept="Xl_RD" id="tX" role="37wK5m">
                      <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
                    </node>
                    <node concept="Xl_RD" id="tY" role="37wK5m">
                      <property role="Xl_RC" value="1229343523390" />
                    </node>
                    <node concept="3cmrfG" id="tZ" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="10Nm6u" id="u0" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="tM" role="3cqZAp">
              <node concept="2OqwBi" id="u1" role="3clFbG">
                <node concept="3VmV3z" id="u2" role="2Oq$k0">
                  <property role="3VnrPo" value="typeCheckingContext" />
                  <node concept="3uibUv" id="u4" role="3Vn4Tt">
                    <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                  </node>
                </node>
                <node concept="liA8E" id="u3" role="2OqNvi">
                  <ref role="37wK5l" to="u78q:~TypeCheckingContext.createEquation(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createEquation" />
                  <node concept="10QFUN" id="u5" role="37wK5m">
                    <uo k="s:originTrace" v="n:1229343523391" />
                    <node concept="3uibUv" id="u8" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="u9" role="10QFUP">
                      <uo k="s:originTrace" v="n:1229343523392" />
                      <node concept="3VmV3z" id="ua" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="ud" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="ub" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                        <node concept="3VmV3z" id="ue" role="37wK5m">
                          <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                          <node concept="3uibUv" id="ui" role="3Vn4Tt">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="uf" role="37wK5m">
                          <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="ug" role="37wK5m">
                          <property role="Xl_RC" value="1229343523392" />
                        </node>
                        <node concept="3clFbT" id="uh" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                      <node concept="6wLe0" id="uc" role="lGtFl">
                        <property role="6wLej" value="1229343523392" />
                        <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
                      </node>
                    </node>
                  </node>
                  <node concept="10QFUN" id="u6" role="37wK5m">
                    <uo k="s:originTrace" v="n:1229343523394" />
                    <node concept="3uibUv" id="uj" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2c44tf" id="uk" role="10QFUP">
                      <uo k="s:originTrace" v="n:1229343523395" />
                      <node concept="3uibUv" id="ul" role="2c44tc">
                        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
                        <uo k="s:originTrace" v="n:5711926616362077853" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="u7" role="37wK5m">
                    <ref role="3cqZAo" node="tR" resolve="_info_12389875345" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="6wLe0" id="tJ" role="lGtFl">
            <property role="6wLej" value="1229343523390" />
            <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="tD" role="1B3o_S">
        <uo k="s:originTrace" v="n:1228148844375" />
      </node>
    </node>
    <node concept="3clFb_" id="tr" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:1228148844375" />
      <node concept="3bZ5Sz" id="um" role="3clF45">
        <uo k="s:originTrace" v="n:1228148844375" />
      </node>
      <node concept="3clFbS" id="un" role="3clF47">
        <uo k="s:originTrace" v="n:1228148844375" />
        <node concept="3cpWs6" id="up" role="3cqZAp">
          <uo k="s:originTrace" v="n:1228148844375" />
          <node concept="35c_gC" id="uq" role="3cqZAk">
            <ref role="35c_gD" to="tp5g:hPjxXux" resolve="ProjectExpression" />
            <uo k="s:originTrace" v="n:1228148844375" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="uo" role="1B3o_S">
        <uo k="s:originTrace" v="n:1228148844375" />
      </node>
    </node>
    <node concept="3clFb_" id="ts" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:1228148844375" />
      <node concept="37vLTG" id="ur" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:1228148844375" />
        <node concept="3Tqbb2" id="uv" role="1tU5fm">
          <uo k="s:originTrace" v="n:1228148844375" />
        </node>
      </node>
      <node concept="3clFbS" id="us" role="3clF47">
        <uo k="s:originTrace" v="n:1228148844375" />
        <node concept="9aQIb" id="uw" role="3cqZAp">
          <uo k="s:originTrace" v="n:1228148844375" />
          <node concept="3clFbS" id="ux" role="9aQI4">
            <uo k="s:originTrace" v="n:1228148844375" />
            <node concept="3cpWs6" id="uy" role="3cqZAp">
              <uo k="s:originTrace" v="n:1228148844375" />
              <node concept="2ShNRf" id="uz" role="3cqZAk">
                <uo k="s:originTrace" v="n:1228148844375" />
                <node concept="1pGfFk" id="u$" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:1228148844375" />
                  <node concept="2OqwBi" id="u_" role="37wK5m">
                    <uo k="s:originTrace" v="n:1228148844375" />
                    <node concept="2OqwBi" id="uB" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:1228148844375" />
                      <node concept="liA8E" id="uD" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:1228148844375" />
                      </node>
                      <node concept="2JrnkZ" id="uE" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:1228148844375" />
                        <node concept="37vLTw" id="uF" role="2JrQYb">
                          <ref role="3cqZAo" node="ur" resolve="argument" />
                          <uo k="s:originTrace" v="n:1228148844375" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="uC" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:1228148844375" />
                      <node concept="1rXfSq" id="uG" role="37wK5m">
                        <ref role="37wK5l" node="tr" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:1228148844375" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="uA" role="37wK5m">
                    <uo k="s:originTrace" v="n:1228148844375" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="ut" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:1228148844375" />
      </node>
      <node concept="3Tm1VV" id="uu" role="1B3o_S">
        <uo k="s:originTrace" v="n:1228148844375" />
      </node>
    </node>
    <node concept="3clFb_" id="tt" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:1228148844375" />
      <node concept="3clFbS" id="uH" role="3clF47">
        <uo k="s:originTrace" v="n:1228148844375" />
        <node concept="3cpWs6" id="uK" role="3cqZAp">
          <uo k="s:originTrace" v="n:1228148844375" />
          <node concept="3clFbT" id="uL" role="3cqZAk">
            <uo k="s:originTrace" v="n:1228148844375" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="uI" role="3clF45">
        <uo k="s:originTrace" v="n:1228148844375" />
      </node>
      <node concept="3Tm1VV" id="uJ" role="1B3o_S">
        <uo k="s:originTrace" v="n:1228148844375" />
      </node>
    </node>
    <node concept="3uibUv" id="tu" role="EKbjA">
      <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:1228148844375" />
    </node>
    <node concept="3uibUv" id="tv" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractInferenceRule_Runtime" resolve="AbstractInferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:1228148844375" />
    </node>
    <node concept="3Tm1VV" id="tw" role="1B3o_S">
      <uo k="s:originTrace" v="n:1228148844375" />
    </node>
  </node>
  <node concept="312cEu" id="uM">
    <property role="TrG5h" value="typeof_TestNodeReference_InferenceRule" />
    <uo k="s:originTrace" v="n:1210676511811" />
    <node concept="3clFbW" id="uN" role="jymVt">
      <uo k="s:originTrace" v="n:1210676511811" />
      <node concept="3clFbS" id="uV" role="3clF47">
        <uo k="s:originTrace" v="n:1210676511811" />
      </node>
      <node concept="3Tm1VV" id="uW" role="1B3o_S">
        <uo k="s:originTrace" v="n:1210676511811" />
      </node>
      <node concept="3cqZAl" id="uX" role="3clF45">
        <uo k="s:originTrace" v="n:1210676511811" />
      </node>
    </node>
    <node concept="3clFb_" id="uO" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:1210676511811" />
      <node concept="3cqZAl" id="uY" role="3clF45">
        <uo k="s:originTrace" v="n:1210676511811" />
      </node>
      <node concept="37vLTG" id="uZ" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="nodeToCheck" />
        <uo k="s:originTrace" v="n:1210676511811" />
        <node concept="3Tqbb2" id="v4" role="1tU5fm">
          <uo k="s:originTrace" v="n:1210676511811" />
        </node>
      </node>
      <node concept="37vLTG" id="v0" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:1210676511811" />
        <node concept="3uibUv" id="v5" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:1210676511811" />
        </node>
      </node>
      <node concept="37vLTG" id="v1" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:1210676511811" />
        <node concept="3uibUv" id="v6" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:1210676511811" />
        </node>
      </node>
      <node concept="3clFbS" id="v2" role="3clF47">
        <uo k="s:originTrace" v="n:1210676511812" />
        <node concept="3cpWs8" id="v7" role="3cqZAp">
          <uo k="s:originTrace" v="n:1210677002368" />
          <node concept="3cpWsn" id="v9" role="3cpWs9">
            <property role="TrG5h" value="concept" />
            <uo k="s:originTrace" v="n:1210677002369" />
            <node concept="3Tqbb2" id="va" role="1tU5fm">
              <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
              <uo k="s:originTrace" v="n:7616135429959226363" />
            </node>
            <node concept="2YIFZM" id="vb" role="33vP2m">
              <ref role="37wK5l" to="tpeq:4RDU6R_Aj3j" resolve="closestConcept4NodeType" />
              <ref role="1Pybhc" to="tpeq:h9nq4jh" resolve="RulesUtil" />
              <uo k="s:originTrace" v="n:5614273969195985711" />
              <node concept="2OqwBi" id="vc" role="37wK5m">
                <uo k="s:originTrace" v="n:5614273969195985713" />
                <node concept="2OqwBi" id="vd" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:5614273969195985714" />
                  <node concept="37vLTw" id="vf" role="2Oq$k0">
                    <ref role="3cqZAo" node="uZ" resolve="nodeToCheck" />
                    <uo k="s:originTrace" v="n:5614273969195985715" />
                  </node>
                  <node concept="3TrEf2" id="vg" role="2OqNvi">
                    <ref role="3Tt5mk" to="tp5g:hBxOPr6" resolve="declaration" />
                    <uo k="s:originTrace" v="n:5614273969195985716" />
                  </node>
                </node>
                <node concept="1mfA1w" id="ve" role="2OqNvi">
                  <uo k="s:originTrace" v="n:5614273969195985717" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="v8" role="3cqZAp">
          <uo k="s:originTrace" v="n:1210676536754" />
          <node concept="3clFbS" id="vh" role="9aQI4">
            <node concept="3cpWs8" id="vj" role="3cqZAp">
              <node concept="3cpWsn" id="vm" role="3cpWs9">
                <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                <node concept="37vLTw" id="vn" role="33vP2m">
                  <ref role="3cqZAo" node="uZ" resolve="nodeToCheck" />
                  <uo k="s:originTrace" v="n:1210676533831" />
                  <node concept="6wLe0" id="vp" role="lGtFl">
                    <property role="6wLej" value="1210676536754" />
                    <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
                  </node>
                </node>
                <node concept="3uibUv" id="vo" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="vk" role="3cqZAp">
              <node concept="3cpWsn" id="vq" role="3cpWs9">
                <property role="TrG5h" value="_info_12389875345" />
                <node concept="3uibUv" id="vr" role="1tU5fm">
                  <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                </node>
                <node concept="2ShNRf" id="vs" role="33vP2m">
                  <node concept="1pGfFk" id="vt" role="2ShVmc">
                    <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                    <node concept="37vLTw" id="vu" role="37wK5m">
                      <ref role="3cqZAo" node="vm" resolve="_nodeToCheck_1029348928467" />
                    </node>
                    <node concept="10Nm6u" id="vv" role="37wK5m" />
                    <node concept="Xl_RD" id="vw" role="37wK5m">
                      <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
                    </node>
                    <node concept="Xl_RD" id="vx" role="37wK5m">
                      <property role="Xl_RC" value="1210676536754" />
                    </node>
                    <node concept="3cmrfG" id="vy" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="10Nm6u" id="vz" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="vl" role="3cqZAp">
              <node concept="2OqwBi" id="v$" role="3clFbG">
                <node concept="3VmV3z" id="v_" role="2Oq$k0">
                  <property role="3VnrPo" value="typeCheckingContext" />
                  <node concept="3uibUv" id="vB" role="3Vn4Tt">
                    <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                  </node>
                </node>
                <node concept="liA8E" id="vA" role="2OqNvi">
                  <ref role="37wK5l" to="u78q:~TypeCheckingContext.createEquation(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createEquation" />
                  <node concept="10QFUN" id="vC" role="37wK5m">
                    <uo k="s:originTrace" v="n:1210676536757" />
                    <node concept="3uibUv" id="vF" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="vG" role="10QFUP">
                      <uo k="s:originTrace" v="n:1210676530830" />
                      <node concept="3VmV3z" id="vH" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="vK" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="vI" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                        <node concept="3VmV3z" id="vL" role="37wK5m">
                          <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                          <node concept="3uibUv" id="vP" role="3Vn4Tt">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="vM" role="37wK5m">
                          <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="vN" role="37wK5m">
                          <property role="Xl_RC" value="1210676530830" />
                        </node>
                        <node concept="3clFbT" id="vO" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                      <node concept="6wLe0" id="vJ" role="lGtFl">
                        <property role="6wLej" value="1210676530830" />
                        <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
                      </node>
                    </node>
                  </node>
                  <node concept="10QFUN" id="vD" role="37wK5m">
                    <uo k="s:originTrace" v="n:1210676540289" />
                    <node concept="3uibUv" id="vQ" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2c44tf" id="vR" role="10QFUP">
                      <uo k="s:originTrace" v="n:1210676830240" />
                      <node concept="3Tqbb2" id="vS" role="2c44tc">
                        <uo k="s:originTrace" v="n:1210676924332" />
                        <node concept="2c44tb" id="vT" role="lGtFl">
                          <property role="2qtEX8" value="concept" />
                          <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138055754698/1138405853777" />
                          <uo k="s:originTrace" v="n:1210676927552" />
                          <node concept="37vLTw" id="vU" role="2c44t1">
                            <ref role="3cqZAo" node="v9" resolve="concept" />
                            <uo k="s:originTrace" v="n:4265636116363083277" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="vE" role="37wK5m">
                    <ref role="3cqZAo" node="vq" resolve="_info_12389875345" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="6wLe0" id="vi" role="lGtFl">
            <property role="6wLej" value="1210676536754" />
            <property role="6wLeW" value="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="v3" role="1B3o_S">
        <uo k="s:originTrace" v="n:1210676511811" />
      </node>
    </node>
    <node concept="3clFb_" id="uP" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:1210676511811" />
      <node concept="3bZ5Sz" id="vV" role="3clF45">
        <uo k="s:originTrace" v="n:1210676511811" />
      </node>
      <node concept="3clFbS" id="vW" role="3clF47">
        <uo k="s:originTrace" v="n:1210676511811" />
        <node concept="3cpWs6" id="vY" role="3cqZAp">
          <uo k="s:originTrace" v="n:1210676511811" />
          <node concept="35c_gC" id="vZ" role="3cqZAk">
            <ref role="35c_gD" to="tp5g:hBxON8j" resolve="TestNodeReference" />
            <uo k="s:originTrace" v="n:1210676511811" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="vX" role="1B3o_S">
        <uo k="s:originTrace" v="n:1210676511811" />
      </node>
    </node>
    <node concept="3clFb_" id="uQ" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:1210676511811" />
      <node concept="37vLTG" id="w0" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:1210676511811" />
        <node concept="3Tqbb2" id="w4" role="1tU5fm">
          <uo k="s:originTrace" v="n:1210676511811" />
        </node>
      </node>
      <node concept="3clFbS" id="w1" role="3clF47">
        <uo k="s:originTrace" v="n:1210676511811" />
        <node concept="9aQIb" id="w5" role="3cqZAp">
          <uo k="s:originTrace" v="n:1210676511811" />
          <node concept="3clFbS" id="w6" role="9aQI4">
            <uo k="s:originTrace" v="n:1210676511811" />
            <node concept="3cpWs6" id="w7" role="3cqZAp">
              <uo k="s:originTrace" v="n:1210676511811" />
              <node concept="2ShNRf" id="w8" role="3cqZAk">
                <uo k="s:originTrace" v="n:1210676511811" />
                <node concept="1pGfFk" id="w9" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:1210676511811" />
                  <node concept="2OqwBi" id="wa" role="37wK5m">
                    <uo k="s:originTrace" v="n:1210676511811" />
                    <node concept="2OqwBi" id="wc" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:1210676511811" />
                      <node concept="liA8E" id="we" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:1210676511811" />
                      </node>
                      <node concept="2JrnkZ" id="wf" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:1210676511811" />
                        <node concept="37vLTw" id="wg" role="2JrQYb">
                          <ref role="3cqZAo" node="w0" resolve="argument" />
                          <uo k="s:originTrace" v="n:1210676511811" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="wd" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:1210676511811" />
                      <node concept="1rXfSq" id="wh" role="37wK5m">
                        <ref role="37wK5l" node="uP" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:1210676511811" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="wb" role="37wK5m">
                    <uo k="s:originTrace" v="n:1210676511811" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="w2" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:1210676511811" />
      </node>
      <node concept="3Tm1VV" id="w3" role="1B3o_S">
        <uo k="s:originTrace" v="n:1210676511811" />
      </node>
    </node>
    <node concept="3clFb_" id="uR" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:1210676511811" />
      <node concept="3clFbS" id="wi" role="3clF47">
        <uo k="s:originTrace" v="n:1210676511811" />
        <node concept="3cpWs6" id="wl" role="3cqZAp">
          <uo k="s:originTrace" v="n:1210676511811" />
          <node concept="3clFbT" id="wm" role="3cqZAk">
            <uo k="s:originTrace" v="n:1210676511811" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="wj" role="3clF45">
        <uo k="s:originTrace" v="n:1210676511811" />
      </node>
      <node concept="3Tm1VV" id="wk" role="1B3o_S">
        <uo k="s:originTrace" v="n:1210676511811" />
      </node>
    </node>
    <node concept="3uibUv" id="uS" role="EKbjA">
      <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:1210676511811" />
    </node>
    <node concept="3uibUv" id="uT" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractInferenceRule_Runtime" resolve="AbstractInferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:1210676511811" />
    </node>
    <node concept="3Tm1VV" id="uU" role="1B3o_S">
      <uo k="s:originTrace" v="n:1210676511811" />
    </node>
  </node>
</model>

