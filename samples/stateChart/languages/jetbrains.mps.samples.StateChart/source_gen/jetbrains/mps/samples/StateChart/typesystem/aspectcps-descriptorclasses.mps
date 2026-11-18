<?xml version="1.0" encoding="UTF-8"?>
<model ref="00000000-0000-4000-5f02-5beb5f025beb/i:f6d8bab(checkpoints/jetbrains.mps.samples.StateChart.typesystem@descriptorclasses)">
  <persistence version="9" />
  <attribute name="checkpoint" value="DescriptorClasses" />
  <attribute name="generation-plan" value="AspectCPS" />
  <attribute name="user-objects" value="true" />
  <languages />
  <imports>
    <import index="hoos" ref="r:b7821567-11c0-4baa-a4e7-25240b50a1d5(jetbrains.mps.samples.StateChart.typesystem)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="2gg1" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.errors(MPS.Core/)" />
    <import index="qurh" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.lang.typesystem.runtime(MPS.Core/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="u78q" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.typesystem.inference(MPS.Core/)" />
    <import index="oyog" ref="r:89aa1fb5-b463-4059-be0d-fc7ef188f902(jetbrains.mps.samples.StateChart.structure)" />
    <import index="zavc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.errors.messageTargets(MPS.Core/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
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
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
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
      <concept id="1225271221393" name="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression" flags="nn" index="17QLQc" />
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
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT" />
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
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
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
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
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
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1196978630214" name="jetbrains.mps.lang.core.structure.IResolveInfo" flags="ngI" index="2Lv6Xg">
        <property id="1196978656277" name="resolveInfo" index="2Lvdk3" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1235566554328" name="jetbrains.mps.baseLanguage.collections.structure.AnyOperation" flags="nn" index="2HwmR7" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1240687580870" name="jetbrains.mps.baseLanguage.collections.structure.JoinOperation" flags="nn" index="3uJxvA">
        <child id="1240687658305" name="delimiter" index="3uJOhx" />
      </concept>
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="39dXUE" id="0">
    <node concept="39e2AJ" id="1" role="39e2AI">
      <property role="39e3Y2" value="classForRule" />
      <node concept="39e2AG" id="5" role="39e3Y0">
        <ref role="39e2AK" to="hoos:1bheBWAB3y5" resolve="check_EventNeverUsed" />
        <node concept="385nmt" id="8" role="385vvn">
          <property role="385vuF" value="check_EventNeverUsed" />
          <node concept="3u3nmq" id="a" role="385v07">
            <property role="3u3nmv" value="1355929280598259845" />
          </node>
        </node>
        <node concept="39e2AT" id="9" role="39e2AY">
          <ref role="39e2AS" node="1s" resolve="check_EventNeverUsed_NonTypesystemRule" />
        </node>
      </node>
      <node concept="39e2AG" id="6" role="39e3Y0">
        <ref role="39e2AK" to="hoos:1bheBWAB3y8" resolve="check_NondeterministicTransition" />
        <node concept="385nmt" id="b" role="385vvn">
          <property role="385vuF" value="check_NondeterministicTransition" />
          <node concept="3u3nmq" id="d" role="385v07">
            <property role="3u3nmv" value="1355929280598259848" />
          </node>
        </node>
        <node concept="39e2AT" id="c" role="39e2AY">
          <ref role="39e2AS" node="3O" resolve="check_NondeterministicTransition_NonTypesystemRule" />
        </node>
      </node>
      <node concept="39e2AG" id="7" role="39e3Y0">
        <ref role="39e2AK" to="hoos:1bheBWAB3y2" resolve="check_UnreachableState" />
        <node concept="385nmt" id="e" role="385vvn">
          <property role="385vuF" value="check_UnreachableState" />
          <node concept="3u3nmq" id="g" role="385v07">
            <property role="3u3nmv" value="1355929280598259842" />
          </node>
        </node>
        <node concept="39e2AT" id="f" role="39e2AY">
          <ref role="39e2AS" node="6j" resolve="check_UnreachableState_NonTypesystemRule" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="2" role="39e2AI">
      <property role="39e3Y2" value="isApplicableMethod" />
      <node concept="39e2AG" id="h" role="39e3Y0">
        <ref role="39e2AK" to="hoos:1bheBWAB3y5" resolve="check_EventNeverUsed" />
        <node concept="385nmt" id="k" role="385vvn">
          <property role="385vuF" value="check_EventNeverUsed" />
          <node concept="3u3nmq" id="m" role="385v07">
            <property role="3u3nmv" value="1355929280598259845" />
          </node>
        </node>
        <node concept="39e2AT" id="l" role="39e2AY">
          <ref role="39e2AS" node="1w" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="i" role="39e3Y0">
        <ref role="39e2AK" to="hoos:1bheBWAB3y8" resolve="check_NondeterministicTransition" />
        <node concept="385nmt" id="n" role="385vvn">
          <property role="385vuF" value="check_NondeterministicTransition" />
          <node concept="3u3nmq" id="p" role="385v07">
            <property role="3u3nmv" value="1355929280598259848" />
          </node>
        </node>
        <node concept="39e2AT" id="o" role="39e2AY">
          <ref role="39e2AS" node="3S" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="j" role="39e3Y0">
        <ref role="39e2AK" to="hoos:1bheBWAB3y2" resolve="check_UnreachableState" />
        <node concept="385nmt" id="q" role="385vvn">
          <property role="385vuF" value="check_UnreachableState" />
          <node concept="3u3nmq" id="s" role="385v07">
            <property role="3u3nmv" value="1355929280598259842" />
          </node>
        </node>
        <node concept="39e2AT" id="r" role="39e2AY">
          <ref role="39e2AS" node="6n" resolve="isApplicableAndPattern" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="3" role="39e2AI">
      <property role="39e3Y2" value="mainMethodForRule" />
      <node concept="39e2AG" id="t" role="39e3Y0">
        <ref role="39e2AK" to="hoos:1bheBWAB3y5" resolve="check_EventNeverUsed" />
        <node concept="385nmt" id="w" role="385vvn">
          <property role="385vuF" value="check_EventNeverUsed" />
          <node concept="3u3nmq" id="y" role="385v07">
            <property role="3u3nmv" value="1355929280598259845" />
          </node>
        </node>
        <node concept="39e2AT" id="x" role="39e2AY">
          <ref role="39e2AS" node="1u" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="u" role="39e3Y0">
        <ref role="39e2AK" to="hoos:1bheBWAB3y8" resolve="check_NondeterministicTransition" />
        <node concept="385nmt" id="z" role="385vvn">
          <property role="385vuF" value="check_NondeterministicTransition" />
          <node concept="3u3nmq" id="_" role="385v07">
            <property role="3u3nmv" value="1355929280598259848" />
          </node>
        </node>
        <node concept="39e2AT" id="$" role="39e2AY">
          <ref role="39e2AS" node="3Q" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="v" role="39e3Y0">
        <ref role="39e2AK" to="hoos:1bheBWAB3y2" resolve="check_UnreachableState" />
        <node concept="385nmt" id="A" role="385vvn">
          <property role="385vuF" value="check_UnreachableState" />
          <node concept="3u3nmq" id="C" role="385v07">
            <property role="3u3nmv" value="1355929280598259842" />
          </node>
        </node>
        <node concept="39e2AT" id="B" role="39e2AY">
          <ref role="39e2AS" node="6l" resolve="applyRule" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="4" role="39e2AI">
      <property role="39e3Y2" value="descriptorClass" />
      <node concept="39e2AG" id="D" role="39e3Y0">
        <property role="2mV_xN" value="true" />
        <node concept="39e2AT" id="E" role="39e2AY">
          <ref role="39e2AS" node="F" resolve="TypesystemDescriptor" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="F">
    <property role="TrG5h" value="TypesystemDescriptor" />
    <node concept="3clFbW" id="G" role="jymVt">
      <node concept="3clFbS" id="J" role="3clF47">
        <node concept="9aQIb" id="M" role="3cqZAp">
          <node concept="3clFbS" id="P" role="9aQI4">
            <node concept="3cpWs8" id="Q" role="3cqZAp">
              <node concept="3cpWsn" id="S" role="3cpWs9">
                <property role="TrG5h" value="nonTypesystemRule" />
                <node concept="3uibUv" id="T" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="U" role="33vP2m">
                  <node concept="1pGfFk" id="V" role="2ShVmc">
                    <ref role="37wK5l" node="1t" resolve="check_EventNeverUsed_NonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="R" role="3cqZAp">
              <node concept="2OqwBi" id="W" role="3clFbG">
                <node concept="2OqwBi" id="X" role="2Oq$k0">
                  <node concept="Xjq3P" id="Z" role="2Oq$k0" />
                  <node concept="2OwXpG" id="10" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myNonTypesystemRules" resolve="myNonTypesystemRules" />
                  </node>
                </node>
                <node concept="liA8E" id="Y" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="11" role="37wK5m">
                    <ref role="3cqZAo" node="S" resolve="nonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="N" role="3cqZAp">
          <node concept="3clFbS" id="12" role="9aQI4">
            <node concept="3cpWs8" id="13" role="3cqZAp">
              <node concept="3cpWsn" id="15" role="3cpWs9">
                <property role="TrG5h" value="nonTypesystemRule" />
                <node concept="3uibUv" id="16" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="17" role="33vP2m">
                  <node concept="1pGfFk" id="18" role="2ShVmc">
                    <ref role="37wK5l" node="3P" resolve="check_NondeterministicTransition_NonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="14" role="3cqZAp">
              <node concept="2OqwBi" id="19" role="3clFbG">
                <node concept="2OqwBi" id="1a" role="2Oq$k0">
                  <node concept="Xjq3P" id="1c" role="2Oq$k0" />
                  <node concept="2OwXpG" id="1d" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myNonTypesystemRules" resolve="myNonTypesystemRules" />
                  </node>
                </node>
                <node concept="liA8E" id="1b" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="1e" role="37wK5m">
                    <ref role="3cqZAo" node="15" resolve="nonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="O" role="3cqZAp">
          <node concept="3clFbS" id="1f" role="9aQI4">
            <node concept="3cpWs8" id="1g" role="3cqZAp">
              <node concept="3cpWsn" id="1i" role="3cpWs9">
                <property role="TrG5h" value="nonTypesystemRule" />
                <node concept="3uibUv" id="1j" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="1k" role="33vP2m">
                  <node concept="1pGfFk" id="1l" role="2ShVmc">
                    <ref role="37wK5l" node="6k" resolve="check_UnreachableState_NonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1h" role="3cqZAp">
              <node concept="2OqwBi" id="1m" role="3clFbG">
                <node concept="2OqwBi" id="1n" role="2Oq$k0">
                  <node concept="Xjq3P" id="1p" role="2Oq$k0" />
                  <node concept="2OwXpG" id="1q" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myNonTypesystemRules" resolve="myNonTypesystemRules" />
                  </node>
                </node>
                <node concept="liA8E" id="1o" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="1r" role="37wK5m">
                    <ref role="3cqZAo" node="1i" resolve="nonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="K" role="1B3o_S" />
      <node concept="3cqZAl" id="L" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="H" role="1B3o_S" />
    <node concept="3uibUv" id="I" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~BaseHelginsDescriptor" resolve="BaseHelginsDescriptor" />
    </node>
  </node>
  <node concept="312cEu" id="1s">
    <property role="TrG5h" value="check_EventNeverUsed_NonTypesystemRule" />
    <uo k="s:originTrace" v="n:1355929280598259845" />
    <node concept="3clFbW" id="1t" role="jymVt">
      <uo k="s:originTrace" v="n:1355929280598259845" />
      <node concept="3clFbS" id="1_" role="3clF47">
        <uo k="s:originTrace" v="n:1355929280598259845" />
      </node>
      <node concept="3Tm1VV" id="1A" role="1B3o_S">
        <uo k="s:originTrace" v="n:1355929280598259845" />
      </node>
      <node concept="3cqZAl" id="1B" role="3clF45">
        <uo k="s:originTrace" v="n:1355929280598259845" />
      </node>
    </node>
    <node concept="3clFb_" id="1u" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:1355929280598259845" />
      <node concept="3cqZAl" id="1C" role="3clF45">
        <uo k="s:originTrace" v="n:1355929280598259845" />
      </node>
      <node concept="37vLTG" id="1D" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="event" />
        <uo k="s:originTrace" v="n:1355929280598259845" />
        <node concept="3Tqbb2" id="1I" role="1tU5fm">
          <uo k="s:originTrace" v="n:1355929280598259845" />
        </node>
      </node>
      <node concept="37vLTG" id="1E" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:1355929280598259845" />
        <node concept="3uibUv" id="1J" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:1355929280598259845" />
        </node>
      </node>
      <node concept="37vLTG" id="1F" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:1355929280598259845" />
        <node concept="3uibUv" id="1K" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:1355929280598259845" />
        </node>
      </node>
      <node concept="3clFbS" id="1G" role="3clF47">
        <uo k="s:originTrace" v="n:1355929280598288310" />
        <node concept="3cpWs8" id="1L" role="3cqZAp">
          <uo k="s:originTrace" v="n:1355929280598288311" />
          <node concept="3cpWsn" id="1N" role="3cpWs9">
            <property role="TrG5h" value="chart" />
            <property role="2Lvdk3" value="chart" />
            <uo k="s:originTrace" v="n:1355929280598288312" />
            <node concept="3Tqbb2" id="1O" role="1tU5fm">
              <ref role="ehGHo" to="oyog:1id1$wMpehE" resolve="StateChart" />
              <uo k="s:originTrace" v="n:1355929280598288313" />
            </node>
            <node concept="2OqwBi" id="1P" role="33vP2m">
              <uo k="s:originTrace" v="n:1355929280598288314" />
              <node concept="37vLTw" id="1Q" role="2Oq$k0">
                <ref role="3cqZAo" node="1D" resolve="event" />
                <uo k="s:originTrace" v="n:1355929280598288315" />
              </node>
              <node concept="2Xjw5R" id="1R" role="2OqNvi">
                <uo k="s:originTrace" v="n:1355929280598288316" />
                <node concept="1xMEDy" id="1S" role="1xVPHs">
                  <uo k="s:originTrace" v="n:1355929280598288319" />
                  <node concept="chp4Y" id="1T" role="ri$Ld">
                    <ref role="cht4Q" to="oyog:1id1$wMpehE" resolve="StateChart" />
                    <uo k="s:originTrace" v="n:1355929280598288320" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1M" role="3cqZAp">
          <uo k="s:originTrace" v="n:1355929280598288321" />
          <node concept="1Wc70l" id="1U" role="3clFbw">
            <uo k="s:originTrace" v="n:1355929280598288322" />
            <node concept="2OqwBi" id="1W" role="3uHU7B">
              <uo k="s:originTrace" v="n:1355929280598288323" />
              <node concept="37vLTw" id="1Y" role="2Oq$k0">
                <ref role="3cqZAo" node="1N" resolve="chart" />
                <uo k="s:originTrace" v="n:1355929280598288324" />
              </node>
              <node concept="3x8VRR" id="1Z" role="2OqNvi">
                <uo k="s:originTrace" v="n:1355929280598288325" />
              </node>
            </node>
            <node concept="3fqX7Q" id="1X" role="3uHU7w">
              <uo k="s:originTrace" v="n:1355929280598288326" />
              <node concept="1eOMI4" id="20" role="3fr31v">
                <uo k="s:originTrace" v="n:1355929280598343096" />
                <node concept="22lmx$" id="21" role="1eOMHV">
                  <uo k="s:originTrace" v="n:1355929280598288327" />
                  <node concept="2OqwBi" id="22" role="3uHU7B">
                    <uo k="s:originTrace" v="n:1355929280598288328" />
                    <node concept="2OqwBi" id="24" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:1355929280598288329" />
                      <node concept="37vLTw" id="26" role="2Oq$k0">
                        <ref role="3cqZAo" node="1N" resolve="chart" />
                        <uo k="s:originTrace" v="n:1355929280598288330" />
                      </node>
                      <node concept="2Rf3mk" id="27" role="2OqNvi">
                        <uo k="s:originTrace" v="n:1355929280598288331" />
                        <node concept="1xMEDy" id="28" role="1xVPHs">
                          <uo k="s:originTrace" v="n:1355929280598288334" />
                          <node concept="chp4Y" id="29" role="ri$Ld">
                            <ref role="cht4Q" to="oyog:1id1$wMpeiD" resolve="Transition" />
                            <uo k="s:originTrace" v="n:1355929280598288335" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2HwmR7" id="25" role="2OqNvi">
                      <uo k="s:originTrace" v="n:1355929280598288336" />
                      <node concept="1bVj0M" id="2a" role="23t8la">
                        <uo k="s:originTrace" v="n:1355929280598288341" />
                        <node concept="gl6BB" id="2b" role="1bW2Oz">
                          <property role="TrG5h" value="tr" />
                          <property role="2Lvdk3" value="tr" />
                          <uo k="s:originTrace" v="n:1355929280598288342" />
                          <node concept="2jxLKc" id="2d" role="1tU5fm">
                            <uo k="s:originTrace" v="n:1355929280598288344" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="2c" role="1bW5cS">
                          <uo k="s:originTrace" v="n:1355929280598288345" />
                          <node concept="3clFbF" id="2e" role="3cqZAp">
                            <uo k="s:originTrace" v="n:1355929280598288346" />
                            <node concept="17R0WA" id="2f" role="3clFbG">
                              <uo k="s:originTrace" v="n:1355929280598288347" />
                              <node concept="2OqwBi" id="2g" role="3uHU7B">
                                <uo k="s:originTrace" v="n:1355929280598288348" />
                                <node concept="37vLTw" id="2i" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2b" resolve="tr" />
                                  <uo k="s:originTrace" v="n:1355929280598288349" />
                                </node>
                                <node concept="3TrEf2" id="2j" role="2OqNvi">
                                  <ref role="3Tt5mk" to="oyog:1id1$wMpeiE" resolve="trigger" />
                                  <uo k="s:originTrace" v="n:1355929280598288350" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="2h" role="3uHU7w">
                                <ref role="3cqZAo" node="1D" resolve="event" />
                                <uo k="s:originTrace" v="n:1355929280598288351" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="23" role="3uHU7w">
                    <uo k="s:originTrace" v="n:1355929280598288352" />
                    <node concept="2OqwBi" id="2k" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:1355929280598288353" />
                      <node concept="37vLTw" id="2m" role="2Oq$k0">
                        <ref role="3cqZAo" node="1N" resolve="chart" />
                        <uo k="s:originTrace" v="n:1355929280598288354" />
                      </node>
                      <node concept="2Rf3mk" id="2n" role="2OqNvi">
                        <uo k="s:originTrace" v="n:1355929280598288355" />
                        <node concept="1xMEDy" id="2o" role="1xVPHs">
                          <uo k="s:originTrace" v="n:1355929280598288358" />
                          <node concept="chp4Y" id="2p" role="ri$Ld">
                            <ref role="cht4Q" to="oyog:5Uf3geaGADK" resolve="Raise" />
                            <uo k="s:originTrace" v="n:1355929280598288359" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2HwmR7" id="2l" role="2OqNvi">
                      <uo k="s:originTrace" v="n:1355929280598288360" />
                      <node concept="1bVj0M" id="2q" role="23t8la">
                        <uo k="s:originTrace" v="n:1355929280598288365" />
                        <node concept="gl6BB" id="2r" role="1bW2Oz">
                          <property role="TrG5h" value="raised" />
                          <property role="2Lvdk3" value="raised" />
                          <uo k="s:originTrace" v="n:1355929280598288366" />
                          <node concept="2jxLKc" id="2t" role="1tU5fm">
                            <uo k="s:originTrace" v="n:1355929280598288368" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="2s" role="1bW5cS">
                          <uo k="s:originTrace" v="n:1355929280598288369" />
                          <node concept="3clFbF" id="2u" role="3cqZAp">
                            <uo k="s:originTrace" v="n:1355929280598288370" />
                            <node concept="17R0WA" id="2v" role="3clFbG">
                              <uo k="s:originTrace" v="n:1355929280598288371" />
                              <node concept="2OqwBi" id="2w" role="3uHU7B">
                                <uo k="s:originTrace" v="n:1355929280598288372" />
                                <node concept="37vLTw" id="2y" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2r" resolve="raised" />
                                  <uo k="s:originTrace" v="n:1355929280598288373" />
                                </node>
                                <node concept="3TrEf2" id="2z" role="2OqNvi">
                                  <ref role="3Tt5mk" to="oyog:5Uf3geaGADL" resolve="event" />
                                  <uo k="s:originTrace" v="n:1355929280598288374" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="2x" role="3uHU7w">
                                <ref role="3cqZAo" node="1D" resolve="event" />
                                <uo k="s:originTrace" v="n:1355929280598288375" />
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
          <node concept="3clFbS" id="1V" role="3clFbx">
            <uo k="s:originTrace" v="n:1355929280598288376" />
            <node concept="9aQIb" id="2$" role="3cqZAp">
              <uo k="s:originTrace" v="n:1355929280598288377" />
              <node concept="3clFbS" id="2_" role="9aQI4">
                <node concept="3cpWs8" id="2B" role="3cqZAp">
                  <node concept="3cpWsn" id="2D" role="3cpWs9">
                    <property role="TrG5h" value="errorTarget" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3uibUv" id="2E" role="1tU5fm">
                      <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                    </node>
                    <node concept="2ShNRf" id="2F" role="33vP2m">
                      <node concept="1pGfFk" id="2G" role="2ShVmc">
                        <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="2C" role="3cqZAp">
                  <node concept="3cpWsn" id="2H" role="3cpWs9">
                    <property role="TrG5h" value="_reporter_2309309498" />
                    <node concept="3uibUv" id="2I" role="1tU5fm">
                      <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                    </node>
                    <node concept="2OqwBi" id="2J" role="33vP2m">
                      <node concept="3VmV3z" id="2K" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="2M" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="2L" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportWarning(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportWarning" />
                        <node concept="37vLTw" id="2N" role="37wK5m">
                          <ref role="3cqZAo" node="1D" resolve="event" />
                          <uo k="s:originTrace" v="n:1355929280598288409" />
                        </node>
                        <node concept="3cpWs3" id="2O" role="37wK5m">
                          <uo k="s:originTrace" v="n:1355929280598288378" />
                          <node concept="3cpWs3" id="2T" role="3uHU7B">
                            <uo k="s:originTrace" v="n:1355929280598288379" />
                            <node concept="3cpWs3" id="2V" role="3uHU7B">
                              <uo k="s:originTrace" v="n:1355929280598288380" />
                              <node concept="3cpWs3" id="2X" role="3uHU7B">
                                <uo k="s:originTrace" v="n:1355929280598288381" />
                                <node concept="Xl_RD" id="2Z" role="3uHU7B">
                                  <property role="Xl_RC" value="event '" />
                                  <uo k="s:originTrace" v="n:1355929280598288382" />
                                </node>
                                <node concept="2OqwBi" id="30" role="3uHU7w">
                                  <uo k="s:originTrace" v="n:1355929280598288383" />
                                  <node concept="37vLTw" id="31" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1D" resolve="event" />
                                    <uo k="s:originTrace" v="n:1355929280598288384" />
                                  </node>
                                  <node concept="3TrcHB" id="32" role="2OqNvi">
                                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                    <uo k="s:originTrace" v="n:1355929280598288385" />
                                  </node>
                                </node>
                              </node>
                              <node concept="Xl_RD" id="2Y" role="3uHU7w">
                                <property role="Xl_RC" value="' declared in '" />
                                <uo k="s:originTrace" v="n:1355929280598288386" />
                              </node>
                            </node>
                            <node concept="1eOMI4" id="2W" role="3uHU7w">
                              <uo k="s:originTrace" v="n:1355929280598334388" />
                              <node concept="3K4zz7" id="33" role="1eOMHV">
                                <uo k="s:originTrace" v="n:1355929280598288387" />
                                <node concept="2OqwBi" id="34" role="3K4Cdx">
                                  <uo k="s:originTrace" v="n:1355929280598288388" />
                                  <node concept="2OqwBi" id="37" role="2Oq$k0">
                                    <uo k="s:originTrace" v="n:1355929280598288389" />
                                    <node concept="37vLTw" id="39" role="2Oq$k0">
                                      <ref role="3cqZAo" node="1D" resolve="event" />
                                      <uo k="s:originTrace" v="n:1355929280598288390" />
                                    </node>
                                    <node concept="1mfA1w" id="3a" role="2OqNvi">
                                      <uo k="s:originTrace" v="n:1355929280598288391" />
                                    </node>
                                  </node>
                                  <node concept="1mIQ4w" id="38" role="2OqNvi">
                                    <uo k="s:originTrace" v="n:1355929280598288392" />
                                    <node concept="chp4Y" id="3b" role="cj9EA">
                                      <ref role="cht4Q" to="oyog:1id1$wMpeiA" resolve="State" />
                                      <uo k="s:originTrace" v="n:1355929280598288393" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="35" role="3K4E3e">
                                  <uo k="s:originTrace" v="n:1355929280598288394" />
                                  <node concept="1PxgMI" id="3c" role="2Oq$k0">
                                    <property role="1BlNFB" value="true" />
                                    <uo k="s:originTrace" v="n:1355929280598288395" />
                                    <node concept="2OqwBi" id="3e" role="1m5AlR">
                                      <uo k="s:originTrace" v="n:1355929280598288396" />
                                      <node concept="37vLTw" id="3g" role="2Oq$k0">
                                        <ref role="3cqZAo" node="1D" resolve="event" />
                                        <uo k="s:originTrace" v="n:1355929280598288397" />
                                      </node>
                                      <node concept="1mfA1w" id="3h" role="2OqNvi">
                                        <uo k="s:originTrace" v="n:1355929280598288398" />
                                      </node>
                                    </node>
                                    <node concept="chp4Y" id="3f" role="3oSUPX">
                                      <ref role="cht4Q" to="oyog:1id1$wMpeiA" resolve="State" />
                                      <uo k="s:originTrace" v="n:1355929280598288399" />
                                    </node>
                                  </node>
                                  <node concept="3TrcHB" id="3d" role="2OqNvi">
                                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                    <uo k="s:originTrace" v="n:1355929280598288400" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="36" role="3K4GZi">
                                  <uo k="s:originTrace" v="n:1355929280598288401" />
                                  <node concept="1PxgMI" id="3i" role="2Oq$k0">
                                    <property role="1BlNFB" value="true" />
                                    <uo k="s:originTrace" v="n:1355929280598288402" />
                                    <node concept="2OqwBi" id="3k" role="1m5AlR">
                                      <uo k="s:originTrace" v="n:1355929280598288403" />
                                      <node concept="37vLTw" id="3m" role="2Oq$k0">
                                        <ref role="3cqZAo" node="1D" resolve="event" />
                                        <uo k="s:originTrace" v="n:1355929280598288404" />
                                      </node>
                                      <node concept="1mfA1w" id="3n" role="2OqNvi">
                                        <uo k="s:originTrace" v="n:1355929280598288405" />
                                      </node>
                                    </node>
                                    <node concept="chp4Y" id="3l" role="3oSUPX">
                                      <ref role="cht4Q" to="oyog:1id1$wMpehE" resolve="StateChart" />
                                      <uo k="s:originTrace" v="n:1355929280598288406" />
                                    </node>
                                  </node>
                                  <node concept="3TrcHB" id="3j" role="2OqNvi">
                                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                    <uo k="s:originTrace" v="n:1355929280598288407" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Xl_RD" id="2U" role="3uHU7w">
                            <property role="Xl_RC" value="' is never used: no transition is triggered by it and no raise operation refers to it" />
                            <uo k="s:originTrace" v="n:1355929280598288408" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="2P" role="37wK5m">
                          <property role="Xl_RC" value="r:b7821567-11c0-4baa-a4e7-25240b50a1d5(jetbrains.mps.samples.StateChart.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="2Q" role="37wK5m">
                          <property role="Xl_RC" value="1355929280598288377" />
                        </node>
                        <node concept="10Nm6u" id="2R" role="37wK5m" />
                        <node concept="37vLTw" id="2S" role="37wK5m">
                          <ref role="3cqZAo" node="2D" resolve="errorTarget" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="6wLe0" id="2A" role="lGtFl">
                <property role="6wLej" value="1355929280598288377" />
                <property role="6wLeW" value="r:b7821567-11c0-4baa-a4e7-25240b50a1d5(jetbrains.mps.samples.StateChart.typesystem)" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1H" role="1B3o_S">
        <uo k="s:originTrace" v="n:1355929280598259845" />
      </node>
    </node>
    <node concept="3clFb_" id="1v" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:1355929280598259845" />
      <node concept="3bZ5Sz" id="3o" role="3clF45">
        <uo k="s:originTrace" v="n:1355929280598259845" />
      </node>
      <node concept="3clFbS" id="3p" role="3clF47">
        <uo k="s:originTrace" v="n:1355929280598259845" />
        <node concept="3cpWs6" id="3r" role="3cqZAp">
          <uo k="s:originTrace" v="n:1355929280598259845" />
          <node concept="35c_gC" id="3s" role="3cqZAk">
            <ref role="35c_gD" to="oyog:1id1$wMpeiz" resolve="Event" />
            <uo k="s:originTrace" v="n:1355929280598259845" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3q" role="1B3o_S">
        <uo k="s:originTrace" v="n:1355929280598259845" />
      </node>
    </node>
    <node concept="3clFb_" id="1w" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:1355929280598259845" />
      <node concept="37vLTG" id="3t" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:1355929280598259845" />
        <node concept="3Tqbb2" id="3x" role="1tU5fm">
          <uo k="s:originTrace" v="n:1355929280598259845" />
        </node>
      </node>
      <node concept="3clFbS" id="3u" role="3clF47">
        <uo k="s:originTrace" v="n:1355929280598259845" />
        <node concept="9aQIb" id="3y" role="3cqZAp">
          <uo k="s:originTrace" v="n:1355929280598259845" />
          <node concept="3clFbS" id="3z" role="9aQI4">
            <uo k="s:originTrace" v="n:1355929280598259845" />
            <node concept="3cpWs6" id="3$" role="3cqZAp">
              <uo k="s:originTrace" v="n:1355929280598259845" />
              <node concept="2ShNRf" id="3_" role="3cqZAk">
                <uo k="s:originTrace" v="n:1355929280598259845" />
                <node concept="1pGfFk" id="3A" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:1355929280598259845" />
                  <node concept="2OqwBi" id="3B" role="37wK5m">
                    <uo k="s:originTrace" v="n:1355929280598259845" />
                    <node concept="2OqwBi" id="3D" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:1355929280598259845" />
                      <node concept="liA8E" id="3F" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:1355929280598259845" />
                      </node>
                      <node concept="2JrnkZ" id="3G" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:1355929280598259845" />
                        <node concept="37vLTw" id="3H" role="2JrQYb">
                          <ref role="3cqZAo" node="3t" resolve="argument" />
                          <uo k="s:originTrace" v="n:1355929280598259845" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="3E" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:1355929280598259845" />
                      <node concept="1rXfSq" id="3I" role="37wK5m">
                        <ref role="37wK5l" node="1v" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:1355929280598259845" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="3C" role="37wK5m">
                    <uo k="s:originTrace" v="n:1355929280598259845" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="3v" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:1355929280598259845" />
      </node>
      <node concept="3Tm1VV" id="3w" role="1B3o_S">
        <uo k="s:originTrace" v="n:1355929280598259845" />
      </node>
    </node>
    <node concept="3clFb_" id="1x" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:1355929280598259845" />
      <node concept="3clFbS" id="3J" role="3clF47">
        <uo k="s:originTrace" v="n:1355929280598259845" />
        <node concept="3cpWs6" id="3M" role="3cqZAp">
          <uo k="s:originTrace" v="n:1355929280598259845" />
          <node concept="3clFbT" id="3N" role="3cqZAk">
            <uo k="s:originTrace" v="n:1355929280598259845" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="3K" role="3clF45">
        <uo k="s:originTrace" v="n:1355929280598259845" />
      </node>
      <node concept="3Tm1VV" id="3L" role="1B3o_S">
        <uo k="s:originTrace" v="n:1355929280598259845" />
      </node>
    </node>
    <node concept="3uibUv" id="1y" role="EKbjA">
      <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:1355929280598259845" />
    </node>
    <node concept="3uibUv" id="1z" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractNonTypesystemRule_Runtime" resolve="AbstractNonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:1355929280598259845" />
    </node>
    <node concept="3Tm1VV" id="1$" role="1B3o_S">
      <uo k="s:originTrace" v="n:1355929280598259845" />
    </node>
  </node>
  <node concept="312cEu" id="3O">
    <property role="TrG5h" value="check_NondeterministicTransition_NonTypesystemRule" />
    <uo k="s:originTrace" v="n:1355929280598259848" />
    <node concept="3clFbW" id="3P" role="jymVt">
      <uo k="s:originTrace" v="n:1355929280598259848" />
      <node concept="3clFbS" id="3X" role="3clF47">
        <uo k="s:originTrace" v="n:1355929280598259848" />
      </node>
      <node concept="3Tm1VV" id="3Y" role="1B3o_S">
        <uo k="s:originTrace" v="n:1355929280598259848" />
      </node>
      <node concept="3cqZAl" id="3Z" role="3clF45">
        <uo k="s:originTrace" v="n:1355929280598259848" />
      </node>
    </node>
    <node concept="3clFb_" id="3Q" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:1355929280598259848" />
      <node concept="3cqZAl" id="40" role="3clF45">
        <uo k="s:originTrace" v="n:1355929280598259848" />
      </node>
      <node concept="37vLTG" id="41" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="state" />
        <uo k="s:originTrace" v="n:1355929280598259848" />
        <node concept="3Tqbb2" id="46" role="1tU5fm">
          <uo k="s:originTrace" v="n:1355929280598259848" />
        </node>
      </node>
      <node concept="37vLTG" id="42" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:1355929280598259848" />
        <node concept="3uibUv" id="47" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:1355929280598259848" />
        </node>
      </node>
      <node concept="37vLTG" id="43" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:1355929280598259848" />
        <node concept="3uibUv" id="48" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:1355929280598259848" />
        </node>
      </node>
      <node concept="3clFbS" id="44" role="3clF47">
        <uo k="s:originTrace" v="n:1355929280598288976" />
        <node concept="1DcWWT" id="49" role="3cqZAp">
          <uo k="s:originTrace" v="n:1355929280598288977" />
          <node concept="3cpWsn" id="4a" role="1Duv9x">
            <property role="TrG5h" value="transition" />
            <property role="2Lvdk3" value="transition" />
            <uo k="s:originTrace" v="n:1355929280598288979" />
            <node concept="3Tqbb2" id="4d" role="1tU5fm">
              <ref role="ehGHo" to="oyog:1id1$wMpeiD" resolve="Transition" />
              <uo k="s:originTrace" v="n:1355929280598288980" />
            </node>
          </node>
          <node concept="2OqwBi" id="4b" role="1DdaDG">
            <uo k="s:originTrace" v="n:1355929280598288981" />
            <node concept="37vLTw" id="4e" role="2Oq$k0">
              <ref role="3cqZAo" node="41" resolve="state" />
              <uo k="s:originTrace" v="n:1355929280598288982" />
            </node>
            <node concept="3Tsc0h" id="4f" role="2OqNvi">
              <ref role="3TtcxE" to="oyog:1id1$wMpeiJ" resolve="transitions" />
              <uo k="s:originTrace" v="n:1355929280598288983" />
            </node>
          </node>
          <node concept="3clFbS" id="4c" role="2LFqv$">
            <uo k="s:originTrace" v="n:1355929280598288984" />
            <node concept="3clFbJ" id="4g" role="3cqZAp">
              <uo k="s:originTrace" v="n:1355929280598288985" />
              <node concept="2OqwBi" id="4h" role="3clFbw">
                <uo k="s:originTrace" v="n:1355929280598288986" />
                <node concept="2OqwBi" id="4j" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:1355929280598288987" />
                  <node concept="37vLTw" id="4l" role="2Oq$k0">
                    <ref role="3cqZAo" node="4a" resolve="transition" />
                    <uo k="s:originTrace" v="n:1355929280598288988" />
                  </node>
                  <node concept="3TrEf2" id="4m" role="2OqNvi">
                    <ref role="3Tt5mk" to="oyog:1id1$wMpeiE" resolve="trigger" />
                    <uo k="s:originTrace" v="n:1355929280598288989" />
                  </node>
                </node>
                <node concept="3x8VRR" id="4k" role="2OqNvi">
                  <uo k="s:originTrace" v="n:1355929280598288990" />
                </node>
              </node>
              <node concept="3clFbS" id="4i" role="3clFbx">
                <uo k="s:originTrace" v="n:1355929280598288991" />
                <node concept="3cpWs8" id="4n" role="3cqZAp">
                  <uo k="s:originTrace" v="n:1355929280598288992" />
                  <node concept="3cpWsn" id="4p" role="3cpWs9">
                    <property role="TrG5h" value="same" />
                    <property role="2Lvdk3" value="same" />
                    <uo k="s:originTrace" v="n:1355929280598288993" />
                    <node concept="A3Dl8" id="4q" role="1tU5fm">
                      <uo k="s:originTrace" v="n:1355929280598288994" />
                      <node concept="3Tqbb2" id="4s" role="A3Ik2">
                        <ref role="ehGHo" to="oyog:1id1$wMpeiD" resolve="Transition" />
                        <uo k="s:originTrace" v="n:1355929280598288996" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="4r" role="33vP2m">
                      <uo k="s:originTrace" v="n:1355929280598288997" />
                      <node concept="2OqwBi" id="4t" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:1355929280598288998" />
                        <node concept="37vLTw" id="4v" role="2Oq$k0">
                          <ref role="3cqZAo" node="41" resolve="state" />
                          <uo k="s:originTrace" v="n:1355929280598288999" />
                        </node>
                        <node concept="3Tsc0h" id="4w" role="2OqNvi">
                          <ref role="3TtcxE" to="oyog:1id1$wMpeiJ" resolve="transitions" />
                          <uo k="s:originTrace" v="n:1355929280598289000" />
                        </node>
                      </node>
                      <node concept="3zZkjj" id="4u" role="2OqNvi">
                        <uo k="s:originTrace" v="n:1355929280598289001" />
                        <node concept="1bVj0M" id="4x" role="23t8la">
                          <uo k="s:originTrace" v="n:1355929280598289006" />
                          <node concept="gl6BB" id="4y" role="1bW2Oz">
                            <property role="TrG5h" value="other" />
                            <property role="2Lvdk3" value="other" />
                            <uo k="s:originTrace" v="n:1355929280598289007" />
                            <node concept="2jxLKc" id="4$" role="1tU5fm">
                              <uo k="s:originTrace" v="n:1355929280598289009" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="4z" role="1bW5cS">
                            <uo k="s:originTrace" v="n:1355929280598289010" />
                            <node concept="3clFbF" id="4_" role="3cqZAp">
                              <uo k="s:originTrace" v="n:1355929280598289011" />
                              <node concept="1Wc70l" id="4A" role="3clFbG">
                                <uo k="s:originTrace" v="n:1355929280598289012" />
                                <node concept="17QLQc" id="4B" role="3uHU7B">
                                  <uo k="s:originTrace" v="n:1355929280598289013" />
                                  <node concept="37vLTw" id="4D" role="3uHU7B">
                                    <ref role="3cqZAo" node="4y" resolve="other" />
                                    <uo k="s:originTrace" v="n:1355929280598289014" />
                                  </node>
                                  <node concept="37vLTw" id="4E" role="3uHU7w">
                                    <ref role="3cqZAo" node="4a" resolve="transition" />
                                    <uo k="s:originTrace" v="n:1355929280598289015" />
                                  </node>
                                </node>
                                <node concept="17R0WA" id="4C" role="3uHU7w">
                                  <uo k="s:originTrace" v="n:1355929280598289016" />
                                  <node concept="2OqwBi" id="4F" role="3uHU7B">
                                    <uo k="s:originTrace" v="n:1355929280598289017" />
                                    <node concept="37vLTw" id="4H" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4y" resolve="other" />
                                      <uo k="s:originTrace" v="n:1355929280598289018" />
                                    </node>
                                    <node concept="3TrEf2" id="4I" role="2OqNvi">
                                      <ref role="3Tt5mk" to="oyog:1id1$wMpeiE" resolve="trigger" />
                                      <uo k="s:originTrace" v="n:1355929280598289019" />
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="4G" role="3uHU7w">
                                    <uo k="s:originTrace" v="n:1355929280598289020" />
                                    <node concept="37vLTw" id="4J" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4a" resolve="transition" />
                                      <uo k="s:originTrace" v="n:1355929280598289021" />
                                    </node>
                                    <node concept="3TrEf2" id="4K" role="2OqNvi">
                                      <ref role="3Tt5mk" to="oyog:1id1$wMpeiE" resolve="trigger" />
                                      <uo k="s:originTrace" v="n:1355929280598289022" />
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
                <node concept="3clFbJ" id="4o" role="3cqZAp">
                  <uo k="s:originTrace" v="n:1355929280598289023" />
                  <node concept="2OqwBi" id="4L" role="3clFbw">
                    <uo k="s:originTrace" v="n:1355929280598289024" />
                    <node concept="37vLTw" id="4N" role="2Oq$k0">
                      <ref role="3cqZAo" node="4p" resolve="same" />
                      <uo k="s:originTrace" v="n:1355929280598289025" />
                    </node>
                    <node concept="3GX2aA" id="4O" role="2OqNvi">
                      <uo k="s:originTrace" v="n:1355929280598289026" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="4M" role="3clFbx">
                    <uo k="s:originTrace" v="n:1355929280598289027" />
                    <node concept="9aQIb" id="4P" role="3cqZAp">
                      <uo k="s:originTrace" v="n:1355929280598289028" />
                      <node concept="3clFbS" id="4Q" role="9aQI4">
                        <node concept="3cpWs8" id="4S" role="3cqZAp">
                          <node concept="3cpWsn" id="4U" role="3cpWs9">
                            <property role="TrG5h" value="errorTarget" />
                            <property role="3TUv4t" value="true" />
                            <node concept="3uibUv" id="4V" role="1tU5fm">
                              <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                            </node>
                            <node concept="2ShNRf" id="4W" role="33vP2m">
                              <uo k="s:originTrace" v="n:1355929280598289080" />
                              <node concept="1pGfFk" id="4X" role="2ShVmc">
                                <ref role="37wK5l" to="zavc:~ReferenceMessageTarget.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractLink)" resolve="ReferenceMessageTarget" />
                                <uo k="s:originTrace" v="n:1355929280598289080" />
                                <node concept="359W_D" id="4Y" role="37wK5m">
                                  <ref role="359W_E" to="oyog:1id1$wMpeiD" resolve="Transition" />
                                  <ref role="359W_F" to="oyog:1id1$wMpeiE" resolve="trigger" />
                                  <uo k="s:originTrace" v="n:1355929280598289080" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="4T" role="3cqZAp">
                          <node concept="3cpWsn" id="4Z" role="3cpWs9">
                            <property role="TrG5h" value="_reporter_2309309498" />
                            <node concept="3uibUv" id="50" role="1tU5fm">
                              <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                            </node>
                            <node concept="2OqwBi" id="51" role="33vP2m">
                              <node concept="3VmV3z" id="52" role="2Oq$k0">
                                <property role="3VnrPo" value="typeCheckingContext" />
                                <node concept="3uibUv" id="54" role="3Vn4Tt">
                                  <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                                </node>
                              </node>
                              <node concept="liA8E" id="53" role="2OqNvi">
                                <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                                <node concept="37vLTw" id="55" role="37wK5m">
                                  <ref role="3cqZAo" node="4a" resolve="transition" />
                                  <uo k="s:originTrace" v="n:1355929280598289079" />
                                </node>
                                <node concept="3cpWs3" id="56" role="37wK5m">
                                  <uo k="s:originTrace" v="n:1355929280598289029" />
                                  <node concept="3cpWs3" id="5b" role="3uHU7B">
                                    <uo k="s:originTrace" v="n:1355929280598289030" />
                                    <node concept="3cpWs3" id="5d" role="3uHU7B">
                                      <uo k="s:originTrace" v="n:1355929280598289031" />
                                      <node concept="3cpWs3" id="5f" role="3uHU7B">
                                        <uo k="s:originTrace" v="n:1355929280598289032" />
                                        <node concept="3cpWs3" id="5h" role="3uHU7B">
                                          <uo k="s:originTrace" v="n:1355929280598289033" />
                                          <node concept="3cpWs3" id="5j" role="3uHU7B">
                                            <uo k="s:originTrace" v="n:1355929280598289034" />
                                            <node concept="3cpWs3" id="5l" role="3uHU7B">
                                              <uo k="s:originTrace" v="n:1355929280598289035" />
                                              <node concept="Xl_RD" id="5n" role="3uHU7B">
                                                <property role="Xl_RC" value="non-deterministic transitions in state '" />
                                                <uo k="s:originTrace" v="n:1355929280598289036" />
                                              </node>
                                              <node concept="2OqwBi" id="5o" role="3uHU7w">
                                                <uo k="s:originTrace" v="n:1355929280598289037" />
                                                <node concept="37vLTw" id="5p" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="41" resolve="state" />
                                                  <uo k="s:originTrace" v="n:1355929280598289038" />
                                                </node>
                                                <node concept="3TrcHB" id="5q" role="2OqNvi">
                                                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                                  <uo k="s:originTrace" v="n:1355929280598289039" />
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="Xl_RD" id="5m" role="3uHU7w">
                                              <property role="Xl_RC" value="': trigger '" />
                                              <uo k="s:originTrace" v="n:1355929280598289040" />
                                            </node>
                                          </node>
                                          <node concept="2OqwBi" id="5k" role="3uHU7w">
                                            <uo k="s:originTrace" v="n:1355929280598289041" />
                                            <node concept="2OqwBi" id="5r" role="2Oq$k0">
                                              <uo k="s:originTrace" v="n:1355929280598289042" />
                                              <node concept="37vLTw" id="5t" role="2Oq$k0">
                                                <ref role="3cqZAo" node="4a" resolve="transition" />
                                                <uo k="s:originTrace" v="n:1355929280598289043" />
                                              </node>
                                              <node concept="3TrEf2" id="5u" role="2OqNvi">
                                                <ref role="3Tt5mk" to="oyog:1id1$wMpeiE" resolve="trigger" />
                                                <uo k="s:originTrace" v="n:1355929280598289044" />
                                              </node>
                                            </node>
                                            <node concept="3TrcHB" id="5s" role="2OqNvi">
                                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                              <uo k="s:originTrace" v="n:1355929280598289045" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="Xl_RD" id="5i" role="3uHU7w">
                                          <property role="Xl_RC" value="' is shared with " />
                                          <uo k="s:originTrace" v="n:1355929280598289046" />
                                        </node>
                                      </node>
                                      <node concept="2OqwBi" id="5g" role="3uHU7w">
                                        <uo k="s:originTrace" v="n:1355929280598289047" />
                                        <node concept="37vLTw" id="5v" role="2Oq$k0">
                                          <ref role="3cqZAo" node="4p" resolve="same" />
                                          <uo k="s:originTrace" v="n:1355929280598289048" />
                                        </node>
                                        <node concept="34oBXx" id="5w" role="2OqNvi">
                                          <uo k="s:originTrace" v="n:1355929280598289049" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="Xl_RD" id="5e" role="3uHU7w">
                                      <property role="Xl_RC" value=" other transition(s) to " />
                                      <uo k="s:originTrace" v="n:1355929280598289050" />
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="5c" role="3uHU7w">
                                    <uo k="s:originTrace" v="n:1355929280598289051" />
                                    <node concept="2OqwBi" id="5x" role="2Oq$k0">
                                      <uo k="s:originTrace" v="n:1355929280598289052" />
                                      <node concept="37vLTw" id="5z" role="2Oq$k0">
                                        <ref role="3cqZAo" node="4p" resolve="same" />
                                        <uo k="s:originTrace" v="n:1355929280598289053" />
                                      </node>
                                      <node concept="3$u5V9" id="5$" role="2OqNvi">
                                        <uo k="s:originTrace" v="n:1355929280598289054" />
                                        <node concept="1bVj0M" id="5_" role="23t8la">
                                          <uo k="s:originTrace" v="n:1355929280598289059" />
                                          <node concept="gl6BB" id="5A" role="1bW2Oz">
                                            <property role="TrG5h" value="named" />
                                            <property role="2Lvdk3" value="named" />
                                            <uo k="s:originTrace" v="n:1355929280598289060" />
                                            <node concept="2jxLKc" id="5C" role="1tU5fm">
                                              <uo k="s:originTrace" v="n:1355929280598289062" />
                                            </node>
                                          </node>
                                          <node concept="3clFbS" id="5B" role="1bW5cS">
                                            <uo k="s:originTrace" v="n:1355929280598289063" />
                                            <node concept="3clFbF" id="5D" role="3cqZAp">
                                              <uo k="s:originTrace" v="n:1355929280598289064" />
                                              <node concept="3K4zz7" id="5E" role="3clFbG">
                                                <uo k="s:originTrace" v="n:1355929280598289065" />
                                                <node concept="2OqwBi" id="5F" role="3K4Cdx">
                                                  <uo k="s:originTrace" v="n:1355929280598289066" />
                                                  <node concept="2OqwBi" id="5I" role="2Oq$k0">
                                                    <uo k="s:originTrace" v="n:1355929280598289067" />
                                                    <node concept="37vLTw" id="5K" role="2Oq$k0">
                                                      <ref role="3cqZAo" node="5A" resolve="named" />
                                                      <uo k="s:originTrace" v="n:1355929280598289068" />
                                                    </node>
                                                    <node concept="3TrEf2" id="5L" role="2OqNvi">
                                                      <ref role="3Tt5mk" to="oyog:1id1$wMpeiG" resolve="target" />
                                                      <uo k="s:originTrace" v="n:1355929280598289069" />
                                                    </node>
                                                  </node>
                                                  <node concept="3x8VRR" id="5J" role="2OqNvi">
                                                    <uo k="s:originTrace" v="n:1355929280598289070" />
                                                  </node>
                                                </node>
                                                <node concept="2OqwBi" id="5G" role="3K4E3e">
                                                  <uo k="s:originTrace" v="n:1355929280598289071" />
                                                  <node concept="2OqwBi" id="5M" role="2Oq$k0">
                                                    <uo k="s:originTrace" v="n:1355929280598289072" />
                                                    <node concept="37vLTw" id="5O" role="2Oq$k0">
                                                      <ref role="3cqZAo" node="5A" resolve="named" />
                                                      <uo k="s:originTrace" v="n:1355929280598289073" />
                                                    </node>
                                                    <node concept="3TrEf2" id="5P" role="2OqNvi">
                                                      <ref role="3Tt5mk" to="oyog:1id1$wMpeiG" resolve="target" />
                                                      <uo k="s:originTrace" v="n:1355929280598289074" />
                                                    </node>
                                                  </node>
                                                  <node concept="3TrcHB" id="5N" role="2OqNvi">
                                                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                                    <uo k="s:originTrace" v="n:1355929280598289075" />
                                                  </node>
                                                </node>
                                                <node concept="Xl_RD" id="5H" role="3K4GZi">
                                                  <property role="Xl_RC" value="&lt;unresolved&gt;" />
                                                  <uo k="s:originTrace" v="n:1355929280598289076" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3uJxvA" id="5y" role="2OqNvi">
                                      <uo k="s:originTrace" v="n:1355929280598289077" />
                                      <node concept="Xl_RD" id="5Q" role="3uJOhx">
                                        <property role="Xl_RC" value=", " />
                                        <uo k="s:originTrace" v="n:1355929280598289078" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="Xl_RD" id="57" role="37wK5m">
                                  <property role="Xl_RC" value="r:b7821567-11c0-4baa-a4e7-25240b50a1d5(jetbrains.mps.samples.StateChart.typesystem)" />
                                </node>
                                <node concept="Xl_RD" id="58" role="37wK5m">
                                  <property role="Xl_RC" value="1355929280598289028" />
                                </node>
                                <node concept="10Nm6u" id="59" role="37wK5m" />
                                <node concept="37vLTw" id="5a" role="37wK5m">
                                  <ref role="3cqZAo" node="4U" resolve="errorTarget" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="6wLe0" id="4R" role="lGtFl">
                        <property role="6wLej" value="1355929280598289028" />
                        <property role="6wLeW" value="r:b7821567-11c0-4baa-a4e7-25240b50a1d5(jetbrains.mps.samples.StateChart.typesystem)" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="45" role="1B3o_S">
        <uo k="s:originTrace" v="n:1355929280598259848" />
      </node>
    </node>
    <node concept="3clFb_" id="3R" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:1355929280598259848" />
      <node concept="3bZ5Sz" id="5R" role="3clF45">
        <uo k="s:originTrace" v="n:1355929280598259848" />
      </node>
      <node concept="3clFbS" id="5S" role="3clF47">
        <uo k="s:originTrace" v="n:1355929280598259848" />
        <node concept="3cpWs6" id="5U" role="3cqZAp">
          <uo k="s:originTrace" v="n:1355929280598259848" />
          <node concept="35c_gC" id="5V" role="3cqZAk">
            <ref role="35c_gD" to="oyog:1id1$wMpeiA" resolve="State" />
            <uo k="s:originTrace" v="n:1355929280598259848" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5T" role="1B3o_S">
        <uo k="s:originTrace" v="n:1355929280598259848" />
      </node>
    </node>
    <node concept="3clFb_" id="3S" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:1355929280598259848" />
      <node concept="37vLTG" id="5W" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:1355929280598259848" />
        <node concept="3Tqbb2" id="60" role="1tU5fm">
          <uo k="s:originTrace" v="n:1355929280598259848" />
        </node>
      </node>
      <node concept="3clFbS" id="5X" role="3clF47">
        <uo k="s:originTrace" v="n:1355929280598259848" />
        <node concept="9aQIb" id="61" role="3cqZAp">
          <uo k="s:originTrace" v="n:1355929280598259848" />
          <node concept="3clFbS" id="62" role="9aQI4">
            <uo k="s:originTrace" v="n:1355929280598259848" />
            <node concept="3cpWs6" id="63" role="3cqZAp">
              <uo k="s:originTrace" v="n:1355929280598259848" />
              <node concept="2ShNRf" id="64" role="3cqZAk">
                <uo k="s:originTrace" v="n:1355929280598259848" />
                <node concept="1pGfFk" id="65" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:1355929280598259848" />
                  <node concept="2OqwBi" id="66" role="37wK5m">
                    <uo k="s:originTrace" v="n:1355929280598259848" />
                    <node concept="2OqwBi" id="68" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:1355929280598259848" />
                      <node concept="liA8E" id="6a" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:1355929280598259848" />
                      </node>
                      <node concept="2JrnkZ" id="6b" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:1355929280598259848" />
                        <node concept="37vLTw" id="6c" role="2JrQYb">
                          <ref role="3cqZAo" node="5W" resolve="argument" />
                          <uo k="s:originTrace" v="n:1355929280598259848" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="69" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:1355929280598259848" />
                      <node concept="1rXfSq" id="6d" role="37wK5m">
                        <ref role="37wK5l" node="3R" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:1355929280598259848" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="67" role="37wK5m">
                    <uo k="s:originTrace" v="n:1355929280598259848" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="5Y" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:1355929280598259848" />
      </node>
      <node concept="3Tm1VV" id="5Z" role="1B3o_S">
        <uo k="s:originTrace" v="n:1355929280598259848" />
      </node>
    </node>
    <node concept="3clFb_" id="3T" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:1355929280598259848" />
      <node concept="3clFbS" id="6e" role="3clF47">
        <uo k="s:originTrace" v="n:1355929280598259848" />
        <node concept="3cpWs6" id="6h" role="3cqZAp">
          <uo k="s:originTrace" v="n:1355929280598259848" />
          <node concept="3clFbT" id="6i" role="3cqZAk">
            <uo k="s:originTrace" v="n:1355929280598259848" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="6f" role="3clF45">
        <uo k="s:originTrace" v="n:1355929280598259848" />
      </node>
      <node concept="3Tm1VV" id="6g" role="1B3o_S">
        <uo k="s:originTrace" v="n:1355929280598259848" />
      </node>
    </node>
    <node concept="3uibUv" id="3U" role="EKbjA">
      <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:1355929280598259848" />
    </node>
    <node concept="3uibUv" id="3V" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractNonTypesystemRule_Runtime" resolve="AbstractNonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:1355929280598259848" />
    </node>
    <node concept="3Tm1VV" id="3W" role="1B3o_S">
      <uo k="s:originTrace" v="n:1355929280598259848" />
    </node>
  </node>
  <node concept="312cEu" id="6j">
    <property role="TrG5h" value="check_UnreachableState_NonTypesystemRule" />
    <uo k="s:originTrace" v="n:1355929280598259842" />
    <node concept="3clFbW" id="6k" role="jymVt">
      <uo k="s:originTrace" v="n:1355929280598259842" />
      <node concept="3clFbS" id="6s" role="3clF47">
        <uo k="s:originTrace" v="n:1355929280598259842" />
      </node>
      <node concept="3Tm1VV" id="6t" role="1B3o_S">
        <uo k="s:originTrace" v="n:1355929280598259842" />
      </node>
      <node concept="3cqZAl" id="6u" role="3clF45">
        <uo k="s:originTrace" v="n:1355929280598259842" />
      </node>
    </node>
    <node concept="3clFb_" id="6l" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:1355929280598259842" />
      <node concept="3cqZAl" id="6v" role="3clF45">
        <uo k="s:originTrace" v="n:1355929280598259842" />
      </node>
      <node concept="37vLTG" id="6w" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="state" />
        <uo k="s:originTrace" v="n:1355929280598259842" />
        <node concept="3Tqbb2" id="6_" role="1tU5fm">
          <uo k="s:originTrace" v="n:1355929280598259842" />
        </node>
      </node>
      <node concept="37vLTG" id="6x" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:1355929280598259842" />
        <node concept="3uibUv" id="6A" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:1355929280598259842" />
        </node>
      </node>
      <node concept="37vLTG" id="6y" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:1355929280598259842" />
        <node concept="3uibUv" id="6B" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:1355929280598259842" />
        </node>
      </node>
      <node concept="3clFbS" id="6z" role="3clF47">
        <uo k="s:originTrace" v="n:1355929280598277070" />
        <node concept="3clFbJ" id="6C" role="3cqZAp">
          <uo k="s:originTrace" v="n:1355929280598277071" />
          <node concept="3fqX7Q" id="6D" role="3clFbw">
            <uo k="s:originTrace" v="n:1355929280598277072" />
            <node concept="2OqwBi" id="6F" role="3fr31v">
              <uo k="s:originTrace" v="n:1355929280598277073" />
              <node concept="37vLTw" id="6G" role="2Oq$k0">
                <ref role="3cqZAo" node="6w" resolve="state" />
                <uo k="s:originTrace" v="n:1355929280598277074" />
              </node>
              <node concept="3TrcHB" id="6H" role="2OqNvi">
                <ref role="3TsBF5" to="oyog:1id1$wMpoKY" resolve="isInitial" />
                <uo k="s:originTrace" v="n:1355929280598277075" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="6E" role="3clFbx">
            <uo k="s:originTrace" v="n:1355929280598277076" />
            <node concept="3cpWs8" id="6I" role="3cqZAp">
              <uo k="s:originTrace" v="n:1355929280598277077" />
              <node concept="3cpWsn" id="6K" role="3cpWs9">
                <property role="TrG5h" value="chart" />
                <property role="2Lvdk3" value="chart" />
                <uo k="s:originTrace" v="n:1355929280598277078" />
                <node concept="3Tqbb2" id="6L" role="1tU5fm">
                  <ref role="ehGHo" to="oyog:1id1$wMpehE" resolve="StateChart" />
                  <uo k="s:originTrace" v="n:1355929280598277079" />
                </node>
                <node concept="2OqwBi" id="6M" role="33vP2m">
                  <uo k="s:originTrace" v="n:1355929280598277080" />
                  <node concept="37vLTw" id="6N" role="2Oq$k0">
                    <ref role="3cqZAo" node="6w" resolve="state" />
                    <uo k="s:originTrace" v="n:1355929280598277081" />
                  </node>
                  <node concept="2Xjw5R" id="6O" role="2OqNvi">
                    <uo k="s:originTrace" v="n:1355929280598277082" />
                    <node concept="1xMEDy" id="6P" role="1xVPHs">
                      <uo k="s:originTrace" v="n:1355929280598277085" />
                      <node concept="chp4Y" id="6Q" role="ri$Ld">
                        <ref role="cht4Q" to="oyog:1id1$wMpehE" resolve="StateChart" />
                        <uo k="s:originTrace" v="n:1355929280598277086" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6J" role="3cqZAp">
              <uo k="s:originTrace" v="n:1355929280598277087" />
              <node concept="1Wc70l" id="6R" role="3clFbw">
                <uo k="s:originTrace" v="n:1355929280598277088" />
                <node concept="2OqwBi" id="6T" role="3uHU7B">
                  <uo k="s:originTrace" v="n:1355929280598277089" />
                  <node concept="37vLTw" id="6V" role="2Oq$k0">
                    <ref role="3cqZAo" node="6K" resolve="chart" />
                    <uo k="s:originTrace" v="n:1355929280598277090" />
                  </node>
                  <node concept="3x8VRR" id="6W" role="2OqNvi">
                    <uo k="s:originTrace" v="n:1355929280598277091" />
                  </node>
                </node>
                <node concept="3fqX7Q" id="6U" role="3uHU7w">
                  <uo k="s:originTrace" v="n:1355929280598277092" />
                  <node concept="2OqwBi" id="6X" role="3fr31v">
                    <uo k="s:originTrace" v="n:1355929280598277093" />
                    <node concept="2OqwBi" id="6Y" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:1355929280598277094" />
                      <node concept="37vLTw" id="70" role="2Oq$k0">
                        <ref role="3cqZAo" node="6K" resolve="chart" />
                        <uo k="s:originTrace" v="n:1355929280598277095" />
                      </node>
                      <node concept="2Rf3mk" id="71" role="2OqNvi">
                        <uo k="s:originTrace" v="n:1355929280598277096" />
                        <node concept="1xMEDy" id="72" role="1xVPHs">
                          <uo k="s:originTrace" v="n:1355929280598277099" />
                          <node concept="chp4Y" id="73" role="ri$Ld">
                            <ref role="cht4Q" to="oyog:1id1$wMpeiD" resolve="Transition" />
                            <uo k="s:originTrace" v="n:1355929280598277100" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2HwmR7" id="6Z" role="2OqNvi">
                      <uo k="s:originTrace" v="n:1355929280598277101" />
                      <node concept="1bVj0M" id="74" role="23t8la">
                        <uo k="s:originTrace" v="n:1355929280598277106" />
                        <node concept="gl6BB" id="75" role="1bW2Oz">
                          <property role="TrG5h" value="incoming" />
                          <property role="2Lvdk3" value="incoming" />
                          <uo k="s:originTrace" v="n:1355929280598277107" />
                          <node concept="2jxLKc" id="77" role="1tU5fm">
                            <uo k="s:originTrace" v="n:1355929280598277109" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="76" role="1bW5cS">
                          <uo k="s:originTrace" v="n:1355929280598277110" />
                          <node concept="3clFbF" id="78" role="3cqZAp">
                            <uo k="s:originTrace" v="n:1355929280598277111" />
                            <node concept="17R0WA" id="79" role="3clFbG">
                              <uo k="s:originTrace" v="n:1355929280598277112" />
                              <node concept="2OqwBi" id="7a" role="3uHU7B">
                                <uo k="s:originTrace" v="n:1355929280598277113" />
                                <node concept="37vLTw" id="7c" role="2Oq$k0">
                                  <ref role="3cqZAo" node="75" resolve="incoming" />
                                  <uo k="s:originTrace" v="n:1355929280598277114" />
                                </node>
                                <node concept="3TrEf2" id="7d" role="2OqNvi">
                                  <ref role="3Tt5mk" to="oyog:1id1$wMpeiG" resolve="target" />
                                  <uo k="s:originTrace" v="n:1355929280598277115" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="7b" role="3uHU7w">
                                <ref role="3cqZAo" node="6w" resolve="state" />
                                <uo k="s:originTrace" v="n:1355929280598277116" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="6S" role="3clFbx">
                <uo k="s:originTrace" v="n:1355929280598277117" />
                <node concept="9aQIb" id="7e" role="3cqZAp">
                  <uo k="s:originTrace" v="n:1355929280598277118" />
                  <node concept="3clFbS" id="7f" role="9aQI4">
                    <node concept="3cpWs8" id="7h" role="3cqZAp">
                      <node concept="3cpWsn" id="7j" role="3cpWs9">
                        <property role="TrG5h" value="errorTarget" />
                        <property role="3TUv4t" value="true" />
                        <node concept="3uibUv" id="7k" role="1tU5fm">
                          <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                        </node>
                        <node concept="2ShNRf" id="7l" role="33vP2m">
                          <node concept="1pGfFk" id="7m" role="2ShVmc">
                            <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="7i" role="3cqZAp">
                      <node concept="3cpWsn" id="7n" role="3cpWs9">
                        <property role="TrG5h" value="_reporter_2309309498" />
                        <node concept="3uibUv" id="7o" role="1tU5fm">
                          <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                        </node>
                        <node concept="2OqwBi" id="7p" role="33vP2m">
                          <node concept="3VmV3z" id="7q" role="2Oq$k0">
                            <property role="3VnrPo" value="typeCheckingContext" />
                            <node concept="3uibUv" id="7s" role="3Vn4Tt">
                              <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                            </node>
                          </node>
                          <node concept="liA8E" id="7r" role="2OqNvi">
                            <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportWarning(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportWarning" />
                            <node concept="37vLTw" id="7t" role="37wK5m">
                              <ref role="3cqZAo" node="6w" resolve="state" />
                              <uo k="s:originTrace" v="n:1355929280598277152" />
                            </node>
                            <node concept="3cpWs3" id="7u" role="37wK5m">
                              <uo k="s:originTrace" v="n:1355929280598277119" />
                              <node concept="3cpWs3" id="7z" role="3uHU7B">
                                <uo k="s:originTrace" v="n:1355929280598277120" />
                                <node concept="3cpWs3" id="7_" role="3uHU7B">
                                  <uo k="s:originTrace" v="n:1355929280598277121" />
                                  <node concept="3cpWs3" id="7B" role="3uHU7B">
                                    <uo k="s:originTrace" v="n:1355929280598277122" />
                                    <node concept="Xl_RD" id="7D" role="3uHU7B">
                                      <property role="Xl_RC" value="unreachable state '" />
                                      <uo k="s:originTrace" v="n:1355929280598277123" />
                                    </node>
                                    <node concept="2OqwBi" id="7E" role="3uHU7w">
                                      <uo k="s:originTrace" v="n:1355929280598277124" />
                                      <node concept="37vLTw" id="7F" role="2Oq$k0">
                                        <ref role="3cqZAo" node="6w" resolve="state" />
                                        <uo k="s:originTrace" v="n:1355929280598277125" />
                                      </node>
                                      <node concept="3TrcHB" id="7G" role="2OqNvi">
                                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                        <uo k="s:originTrace" v="n:1355929280598277126" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="Xl_RD" id="7C" role="3uHU7w">
                                    <property role="Xl_RC" value="' in '" />
                                    <uo k="s:originTrace" v="n:1355929280598277129" />
                                  </node>
                                </node>
                                <node concept="1eOMI4" id="7A" role="3uHU7w">
                                  <uo k="s:originTrace" v="n:1355929280598325994" />
                                  <node concept="3K4zz7" id="7H" role="1eOMHV">
                                    <uo k="s:originTrace" v="n:1355929280598277130" />
                                    <node concept="2OqwBi" id="7I" role="3K4Cdx">
                                      <uo k="s:originTrace" v="n:1355929280598277131" />
                                      <node concept="2OqwBi" id="7L" role="2Oq$k0">
                                        <uo k="s:originTrace" v="n:1355929280598277132" />
                                        <node concept="37vLTw" id="7N" role="2Oq$k0">
                                          <ref role="3cqZAo" node="6w" resolve="state" />
                                          <uo k="s:originTrace" v="n:1355929280598277133" />
                                        </node>
                                        <node concept="1mfA1w" id="7O" role="2OqNvi">
                                          <uo k="s:originTrace" v="n:1355929280598277134" />
                                        </node>
                                      </node>
                                      <node concept="1mIQ4w" id="7M" role="2OqNvi">
                                        <uo k="s:originTrace" v="n:1355929280598277135" />
                                        <node concept="chp4Y" id="7P" role="cj9EA">
                                          <ref role="cht4Q" to="oyog:1id1$wMpeiA" resolve="State" />
                                          <uo k="s:originTrace" v="n:1355929280598277136" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="7J" role="3K4E3e">
                                      <uo k="s:originTrace" v="n:1355929280598277137" />
                                      <node concept="1PxgMI" id="7Q" role="2Oq$k0">
                                        <property role="1BlNFB" value="true" />
                                        <uo k="s:originTrace" v="n:1355929280598277138" />
                                        <node concept="2OqwBi" id="7S" role="1m5AlR">
                                          <uo k="s:originTrace" v="n:1355929280598277139" />
                                          <node concept="37vLTw" id="7U" role="2Oq$k0">
                                            <ref role="3cqZAo" node="6w" resolve="state" />
                                            <uo k="s:originTrace" v="n:1355929280598277140" />
                                          </node>
                                          <node concept="1mfA1w" id="7V" role="2OqNvi">
                                            <uo k="s:originTrace" v="n:1355929280598277141" />
                                          </node>
                                        </node>
                                        <node concept="chp4Y" id="7T" role="3oSUPX">
                                          <ref role="cht4Q" to="oyog:1id1$wMpeiA" resolve="State" />
                                          <uo k="s:originTrace" v="n:1355929280598277142" />
                                        </node>
                                      </node>
                                      <node concept="3TrcHB" id="7R" role="2OqNvi">
                                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                        <uo k="s:originTrace" v="n:1355929280598277143" />
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="7K" role="3K4GZi">
                                      <uo k="s:originTrace" v="n:1355929280598277144" />
                                      <node concept="1PxgMI" id="7W" role="2Oq$k0">
                                        <property role="1BlNFB" value="true" />
                                        <uo k="s:originTrace" v="n:1355929280598277145" />
                                        <node concept="2OqwBi" id="7Y" role="1m5AlR">
                                          <uo k="s:originTrace" v="n:1355929280598277146" />
                                          <node concept="37vLTw" id="80" role="2Oq$k0">
                                            <ref role="3cqZAo" node="6w" resolve="state" />
                                            <uo k="s:originTrace" v="n:1355929280598277147" />
                                          </node>
                                          <node concept="1mfA1w" id="81" role="2OqNvi">
                                            <uo k="s:originTrace" v="n:1355929280598277148" />
                                          </node>
                                        </node>
                                        <node concept="chp4Y" id="7Z" role="3oSUPX">
                                          <ref role="cht4Q" to="oyog:1id1$wMpehE" resolve="StateChart" />
                                          <uo k="s:originTrace" v="n:1355929280598277149" />
                                        </node>
                                      </node>
                                      <node concept="3TrcHB" id="7X" role="2OqNvi">
                                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                        <uo k="s:originTrace" v="n:1355929280598277150" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="Xl_RD" id="7$" role="3uHU7w">
                                <property role="Xl_RC" value="': it is not initial and no transition targets it" />
                                <uo k="s:originTrace" v="n:1355929280598277151" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="7v" role="37wK5m">
                              <property role="Xl_RC" value="r:b7821567-11c0-4baa-a4e7-25240b50a1d5(jetbrains.mps.samples.StateChart.typesystem)" />
                            </node>
                            <node concept="Xl_RD" id="7w" role="37wK5m">
                              <property role="Xl_RC" value="1355929280598277118" />
                            </node>
                            <node concept="10Nm6u" id="7x" role="37wK5m" />
                            <node concept="37vLTw" id="7y" role="37wK5m">
                              <ref role="3cqZAo" node="7j" resolve="errorTarget" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="6wLe0" id="7g" role="lGtFl">
                    <property role="6wLej" value="1355929280598277118" />
                    <property role="6wLeW" value="r:b7821567-11c0-4baa-a4e7-25240b50a1d5(jetbrains.mps.samples.StateChart.typesystem)" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6$" role="1B3o_S">
        <uo k="s:originTrace" v="n:1355929280598259842" />
      </node>
    </node>
    <node concept="3clFb_" id="6m" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:1355929280598259842" />
      <node concept="3bZ5Sz" id="82" role="3clF45">
        <uo k="s:originTrace" v="n:1355929280598259842" />
      </node>
      <node concept="3clFbS" id="83" role="3clF47">
        <uo k="s:originTrace" v="n:1355929280598259842" />
        <node concept="3cpWs6" id="85" role="3cqZAp">
          <uo k="s:originTrace" v="n:1355929280598259842" />
          <node concept="35c_gC" id="86" role="3cqZAk">
            <ref role="35c_gD" to="oyog:1id1$wMpeiA" resolve="State" />
            <uo k="s:originTrace" v="n:1355929280598259842" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="84" role="1B3o_S">
        <uo k="s:originTrace" v="n:1355929280598259842" />
      </node>
    </node>
    <node concept="3clFb_" id="6n" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:1355929280598259842" />
      <node concept="37vLTG" id="87" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:1355929280598259842" />
        <node concept="3Tqbb2" id="8b" role="1tU5fm">
          <uo k="s:originTrace" v="n:1355929280598259842" />
        </node>
      </node>
      <node concept="3clFbS" id="88" role="3clF47">
        <uo k="s:originTrace" v="n:1355929280598259842" />
        <node concept="9aQIb" id="8c" role="3cqZAp">
          <uo k="s:originTrace" v="n:1355929280598259842" />
          <node concept="3clFbS" id="8d" role="9aQI4">
            <uo k="s:originTrace" v="n:1355929280598259842" />
            <node concept="3cpWs6" id="8e" role="3cqZAp">
              <uo k="s:originTrace" v="n:1355929280598259842" />
              <node concept="2ShNRf" id="8f" role="3cqZAk">
                <uo k="s:originTrace" v="n:1355929280598259842" />
                <node concept="1pGfFk" id="8g" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:1355929280598259842" />
                  <node concept="2OqwBi" id="8h" role="37wK5m">
                    <uo k="s:originTrace" v="n:1355929280598259842" />
                    <node concept="2OqwBi" id="8j" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:1355929280598259842" />
                      <node concept="liA8E" id="8l" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:1355929280598259842" />
                      </node>
                      <node concept="2JrnkZ" id="8m" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:1355929280598259842" />
                        <node concept="37vLTw" id="8n" role="2JrQYb">
                          <ref role="3cqZAo" node="87" resolve="argument" />
                          <uo k="s:originTrace" v="n:1355929280598259842" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="8k" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:1355929280598259842" />
                      <node concept="1rXfSq" id="8o" role="37wK5m">
                        <ref role="37wK5l" node="6m" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:1355929280598259842" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="8i" role="37wK5m">
                    <uo k="s:originTrace" v="n:1355929280598259842" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="89" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:1355929280598259842" />
      </node>
      <node concept="3Tm1VV" id="8a" role="1B3o_S">
        <uo k="s:originTrace" v="n:1355929280598259842" />
      </node>
    </node>
    <node concept="3clFb_" id="6o" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:1355929280598259842" />
      <node concept="3clFbS" id="8p" role="3clF47">
        <uo k="s:originTrace" v="n:1355929280598259842" />
        <node concept="3cpWs6" id="8s" role="3cqZAp">
          <uo k="s:originTrace" v="n:1355929280598259842" />
          <node concept="3clFbT" id="8t" role="3cqZAk">
            <uo k="s:originTrace" v="n:1355929280598259842" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="8q" role="3clF45">
        <uo k="s:originTrace" v="n:1355929280598259842" />
      </node>
      <node concept="3Tm1VV" id="8r" role="1B3o_S">
        <uo k="s:originTrace" v="n:1355929280598259842" />
      </node>
    </node>
    <node concept="3uibUv" id="6p" role="EKbjA">
      <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:1355929280598259842" />
    </node>
    <node concept="3uibUv" id="6q" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractNonTypesystemRule_Runtime" resolve="AbstractNonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:1355929280598259842" />
    </node>
    <node concept="3Tm1VV" id="6r" role="1B3o_S">
      <uo k="s:originTrace" v="n:1355929280598259842" />
    </node>
  </node>
</model>

