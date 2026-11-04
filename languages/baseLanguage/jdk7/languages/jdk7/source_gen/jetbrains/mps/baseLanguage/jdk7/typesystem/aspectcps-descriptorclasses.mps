<?xml version="1.0" encoding="UTF-8"?>
<model ref="00000000-0000-4000-5f02-5beb5f025beb/i:f3e3807(checkpoints/jetbrains.mps.baseLanguage.jdk7.typesystem@descriptorclasses)">
  <persistence version="9" />
  <attribute name="checkpoint" value="DescriptorClasses" />
  <attribute name="generation-plan" value="AspectCPS" />
  <attribute name="user-objects" value="true" />
  <languages />
  <imports>
    <import index="zma8" ref="r:ed059f83-fdac-4e67-8269-91684666291c(jetbrains.mps.baseLanguage.jdk7.typesystem)" />
    <import index="2gg1" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.errors(MPS.Core/)" />
    <import index="tpek" ref="r:00000000-0000-4000-0000-011c895902c0(jetbrains.mps.baseLanguage.behavior)" />
    <import index="d3ym" ref="00000000-0000-4000-5f02-5beb5f025beb/i:fc1124e(checkpoints/jetbrains.mps.baseLanguage.typesystem@descriptorclasses)" />
    <import index="zavc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.errors.messageTargets(MPS.Core/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="1ka" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.typechecking(MPS.Core/)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="qurh" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.lang.typesystem.runtime(MPS.Core/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="u78q" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.typesystem.inference(MPS.Core/)" />
    <import index="rymi" ref="r:64af8966-9a33-4cc7-8f2a-fe243f26c38f(jetbrains.mps.baseLanguage.jdk7.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="3235159848334022093" name="jetbrains.mps.lang.behavior.structure.Node_ConceptMethodCall" flags="nn" index="3zqWPK" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
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
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
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
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
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
    <language id="446c26eb-2b7b-4bf0-9b35-f83fa582753e" name="jetbrains.mps.lang.modelapi">
      <concept id="4733039728785194814" name="jetbrains.mps.lang.modelapi.structure.NamedNodeReference" flags="ng" index="ZC_QK">
        <reference id="7256306938026143658" name="target" index="2aWVGs" />
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
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="3661776679762942774" name="jetbrains.mps.lang.smodel.structure.Node_IsOperation" flags="ng" index="1QLmlb">
        <child id="3661776679762942860" name="ref" index="1QLmnL" />
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
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1226516258405" name="jetbrains.mps.baseLanguage.collections.structure.HashSetCreator" flags="nn" index="2i4dXS" />
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
    </language>
  </registry>
  <node concept="39dXUE" id="0">
    <node concept="39e2AJ" id="1" role="39e2AI">
      <property role="39e3Y2" value="classForRule" />
      <node concept="39e2AG" id="5" role="39e3Y0">
        <ref role="39e2AK" to="zma8:mfnC6nPryf" resolve="check_StringSwitchCase" />
        <node concept="385nmt" id="7" role="385vvn">
          <property role="385vuF" value="check_StringSwitchCase" />
          <node concept="3u3nmq" id="9" role="385v07">
            <property role="3u3nmv" value="400642802550421647" />
          </node>
        </node>
        <node concept="39e2AT" id="8" role="39e2AY">
          <ref role="39e2AS" node="12" resolve="check_StringSwitchCase_NonTypesystemRule" />
        </node>
      </node>
      <node concept="39e2AG" id="6" role="39e3Y0">
        <ref role="39e2AK" to="zma8:mfnC6nPryl" resolve="check_StringSwitchStatement" />
        <node concept="385nmt" id="a" role="385vvn">
          <property role="385vuF" value="check_StringSwitchStatement" />
          <node concept="3u3nmq" id="c" role="385v07">
            <property role="3u3nmv" value="400642802550421653" />
          </node>
        </node>
        <node concept="39e2AT" id="b" role="39e2AY">
          <ref role="39e2AS" node="3k" resolve="check_StringSwitchStatement_NonTypesystemRule" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="2" role="39e2AI">
      <property role="39e3Y2" value="isApplicableMethod" />
      <node concept="39e2AG" id="d" role="39e3Y0">
        <ref role="39e2AK" to="zma8:mfnC6nPryf" resolve="check_StringSwitchCase" />
        <node concept="385nmt" id="f" role="385vvn">
          <property role="385vuF" value="check_StringSwitchCase" />
          <node concept="3u3nmq" id="h" role="385v07">
            <property role="3u3nmv" value="400642802550421647" />
          </node>
        </node>
        <node concept="39e2AT" id="g" role="39e2AY">
          <ref role="39e2AS" node="16" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="e" role="39e3Y0">
        <ref role="39e2AK" to="zma8:mfnC6nPryl" resolve="check_StringSwitchStatement" />
        <node concept="385nmt" id="i" role="385vvn">
          <property role="385vuF" value="check_StringSwitchStatement" />
          <node concept="3u3nmq" id="k" role="385v07">
            <property role="3u3nmv" value="400642802550421653" />
          </node>
        </node>
        <node concept="39e2AT" id="j" role="39e2AY">
          <ref role="39e2AS" node="3p" resolve="isApplicableAndPattern" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="3" role="39e2AI">
      <property role="39e3Y2" value="mainMethodForRule" />
      <node concept="39e2AG" id="l" role="39e3Y0">
        <ref role="39e2AK" to="zma8:mfnC6nPryf" resolve="check_StringSwitchCase" />
        <node concept="385nmt" id="n" role="385vvn">
          <property role="385vuF" value="check_StringSwitchCase" />
          <node concept="3u3nmq" id="p" role="385v07">
            <property role="3u3nmv" value="400642802550421647" />
          </node>
        </node>
        <node concept="39e2AT" id="o" role="39e2AY">
          <ref role="39e2AS" node="14" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="m" role="39e3Y0">
        <ref role="39e2AK" to="zma8:mfnC6nPryl" resolve="check_StringSwitchStatement" />
        <node concept="385nmt" id="q" role="385vvn">
          <property role="385vuF" value="check_StringSwitchStatement" />
          <node concept="3u3nmq" id="s" role="385v07">
            <property role="3u3nmv" value="400642802550421653" />
          </node>
        </node>
        <node concept="39e2AT" id="r" role="39e2AY">
          <ref role="39e2AS" node="3n" resolve="applyRule" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="4" role="39e2AI">
      <property role="39e3Y2" value="descriptorClass" />
      <node concept="39e2AG" id="t" role="39e3Y0">
        <property role="2mV_xN" value="true" />
        <node concept="39e2AT" id="u" role="39e2AY">
          <ref role="39e2AS" node="v" resolve="TypesystemDescriptor" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="v">
    <property role="TrG5h" value="TypesystemDescriptor" />
    <node concept="3clFbW" id="w" role="jymVt">
      <node concept="3clFbS" id="z" role="3clF47">
        <node concept="9aQIb" id="A" role="3cqZAp">
          <node concept="3clFbS" id="C" role="9aQI4">
            <node concept="3cpWs8" id="D" role="3cqZAp">
              <node concept="3cpWsn" id="F" role="3cpWs9">
                <property role="TrG5h" value="nonTypesystemRule" />
                <node concept="3uibUv" id="G" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="H" role="33vP2m">
                  <node concept="1pGfFk" id="I" role="2ShVmc">
                    <ref role="37wK5l" node="13" resolve="check_StringSwitchCase_NonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="E" role="3cqZAp">
              <node concept="2OqwBi" id="J" role="3clFbG">
                <node concept="2OqwBi" id="K" role="2Oq$k0">
                  <node concept="Xjq3P" id="M" role="2Oq$k0" />
                  <node concept="2OwXpG" id="N" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myNonTypesystemRules" resolve="myNonTypesystemRules" />
                  </node>
                </node>
                <node concept="liA8E" id="L" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="O" role="37wK5m">
                    <ref role="3cqZAo" node="F" resolve="nonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="B" role="3cqZAp">
          <node concept="3clFbS" id="P" role="9aQI4">
            <node concept="3cpWs8" id="Q" role="3cqZAp">
              <node concept="3cpWsn" id="S" role="3cpWs9">
                <property role="TrG5h" value="nonTypesystemRule" />
                <node concept="3uibUv" id="T" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="U" role="33vP2m">
                  <node concept="1pGfFk" id="V" role="2ShVmc">
                    <ref role="37wK5l" node="3l" resolve="check_StringSwitchStatement_NonTypesystemRule" />
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
      </node>
      <node concept="3Tm1VV" id="$" role="1B3o_S" />
      <node concept="3cqZAl" id="_" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="x" role="1B3o_S" />
    <node concept="3uibUv" id="y" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~BaseHelginsDescriptor" resolve="BaseHelginsDescriptor" />
    </node>
  </node>
  <node concept="312cEu" id="12">
    <property role="TrG5h" value="check_StringSwitchCase_NonTypesystemRule" />
    <uo k="s:originTrace" v="n:400642802550421647" />
    <node concept="3clFbW" id="13" role="jymVt">
      <uo k="s:originTrace" v="n:400642802550421647" />
      <node concept="3clFbS" id="1b" role="3clF47">
        <uo k="s:originTrace" v="n:400642802550421647" />
      </node>
      <node concept="3Tm1VV" id="1c" role="1B3o_S">
        <uo k="s:originTrace" v="n:400642802550421647" />
      </node>
      <node concept="3cqZAl" id="1d" role="3clF45">
        <uo k="s:originTrace" v="n:400642802550421647" />
      </node>
    </node>
    <node concept="3clFb_" id="14" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:400642802550421647" />
      <node concept="3cqZAl" id="1e" role="3clF45">
        <uo k="s:originTrace" v="n:400642802550421647" />
      </node>
      <node concept="37vLTG" id="1f" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="switchStatement" />
        <uo k="s:originTrace" v="n:400642802550421647" />
        <node concept="3Tqbb2" id="1k" role="1tU5fm">
          <uo k="s:originTrace" v="n:400642802550421647" />
        </node>
      </node>
      <node concept="37vLTG" id="1g" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:400642802550421647" />
        <node concept="3uibUv" id="1l" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:400642802550421647" />
        </node>
      </node>
      <node concept="37vLTG" id="1h" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:400642802550421647" />
        <node concept="3uibUv" id="1m" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:400642802550421647" />
        </node>
      </node>
      <node concept="3clFbS" id="1i" role="3clF47">
        <uo k="s:originTrace" v="n:400642802550421648" />
        <node concept="3SKdUt" id="1n" role="3cqZAp">
          <uo k="s:originTrace" v="n:400642802550421749" />
          <node concept="1PaTwC" id="1q" role="1aUNEU">
            <uo k="s:originTrace" v="n:700871696606793637" />
            <node concept="3oM_SD" id="1r" role="1PaTwD">
              <property role="3oM_SC" value="checking" />
              <uo k="s:originTrace" v="n:700871696606793638" />
            </node>
            <node concept="3oM_SD" id="1s" role="1PaTwD">
              <property role="3oM_SC" value="case" />
              <uo k="s:originTrace" v="n:700871696606793639" />
            </node>
            <node concept="3oM_SD" id="1t" role="1PaTwD">
              <property role="3oM_SC" value="elements" />
              <uo k="s:originTrace" v="n:700871696606793640" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1o" role="3cqZAp">
          <uo k="s:originTrace" v="n:364584182801826612" />
          <node concept="3cpWsn" id="1u" role="3cpWs9">
            <property role="TrG5h" value="caseElements" />
            <uo k="s:originTrace" v="n:364584182801826613" />
            <node concept="2hMVRd" id="1v" role="1tU5fm">
              <uo k="s:originTrace" v="n:364584182801826614" />
              <node concept="17QB3L" id="1x" role="2hN53Y">
                <uo k="s:originTrace" v="n:364584182801826616" />
              </node>
            </node>
            <node concept="2ShNRf" id="1w" role="33vP2m">
              <uo k="s:originTrace" v="n:364584182801826618" />
              <node concept="2i4dXS" id="1y" role="2ShVmc">
                <uo k="s:originTrace" v="n:364584182801826620" />
                <node concept="17QB3L" id="1z" role="HW$YZ">
                  <uo k="s:originTrace" v="n:7211295963330423634" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="1p" role="3cqZAp">
          <uo k="s:originTrace" v="n:400642802550421751" />
          <node concept="3cpWsn" id="1$" role="1Duv9x">
            <property role="TrG5h" value="caseElement" />
            <uo k="s:originTrace" v="n:400642802550421752" />
            <node concept="3Tqbb2" id="1B" role="1tU5fm">
              <ref role="ehGHo" to="tpee:gVKbdOr" resolve="SwitchCase" />
              <uo k="s:originTrace" v="n:400642802550421753" />
            </node>
          </node>
          <node concept="3clFbS" id="1_" role="2LFqv$">
            <uo k="s:originTrace" v="n:400642802550421754" />
            <node concept="3clFbJ" id="1C" role="3cqZAp">
              <uo k="s:originTrace" v="n:400642802550421755" />
              <node concept="3clFbS" id="1D" role="3clFbx">
                <uo k="s:originTrace" v="n:400642802550421756" />
                <node concept="9aQIb" id="1G" role="3cqZAp">
                  <uo k="s:originTrace" v="n:400642802550421757" />
                  <node concept="3clFbS" id="1H" role="9aQI4">
                    <node concept="3cpWs8" id="1J" role="3cqZAp">
                      <node concept="3cpWsn" id="1L" role="3cpWs9">
                        <property role="TrG5h" value="errorTarget" />
                        <property role="3TUv4t" value="true" />
                        <node concept="3uibUv" id="1M" role="1tU5fm">
                          <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                        </node>
                        <node concept="2ShNRf" id="1N" role="33vP2m">
                          <node concept="1pGfFk" id="1O" role="2ShVmc">
                            <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="1K" role="3cqZAp">
                      <node concept="3cpWsn" id="1P" role="3cpWs9">
                        <property role="TrG5h" value="_reporter_2309309498" />
                        <node concept="3uibUv" id="1Q" role="1tU5fm">
                          <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                        </node>
                        <node concept="2OqwBi" id="1R" role="33vP2m">
                          <node concept="3VmV3z" id="1S" role="2Oq$k0">
                            <property role="3VnrPo" value="typeCheckingContext" />
                            <node concept="3uibUv" id="1U" role="3Vn4Tt">
                              <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                            </node>
                          </node>
                          <node concept="liA8E" id="1T" role="2OqNvi">
                            <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                            <node concept="2OqwBi" id="1V" role="37wK5m">
                              <uo k="s:originTrace" v="n:400642802550421759" />
                              <node concept="37vLTw" id="21" role="2Oq$k0">
                                <ref role="3cqZAo" node="1$" resolve="caseElement" />
                                <uo k="s:originTrace" v="n:4265636116363076801" />
                              </node>
                              <node concept="3TrEf2" id="22" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpee:gVKbmvf" resolve="expression" />
                                <uo k="s:originTrace" v="n:400642802550421761" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="1W" role="37wK5m">
                              <property role="Xl_RC" value="Case expression should be string literal" />
                              <uo k="s:originTrace" v="n:400642802550421758" />
                            </node>
                            <node concept="Xl_RD" id="1X" role="37wK5m">
                              <property role="Xl_RC" value="r:ed059f83-fdac-4e67-8269-91684666291c(jetbrains.mps.baseLanguage.jdk7.typesystem)" />
                            </node>
                            <node concept="Xl_RD" id="1Y" role="37wK5m">
                              <property role="Xl_RC" value="400642802550421757" />
                            </node>
                            <node concept="10Nm6u" id="1Z" role="37wK5m" />
                            <node concept="37vLTw" id="20" role="37wK5m">
                              <ref role="3cqZAo" node="1L" resolve="errorTarget" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="6wLe0" id="1I" role="lGtFl">
                    <property role="6wLej" value="400642802550421757" />
                    <property role="6wLeW" value="r:ed059f83-fdac-4e67-8269-91684666291c(jetbrains.mps.baseLanguage.jdk7.typesystem)" />
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="1E" role="3clFbw">
                <uo k="s:originTrace" v="n:400642802550421762" />
                <node concept="2OqwBi" id="23" role="3fr31v">
                  <uo k="s:originTrace" v="n:400642802550421763" />
                  <node concept="2OqwBi" id="24" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:400642802550421764" />
                    <node concept="37vLTw" id="26" role="2Oq$k0">
                      <ref role="3cqZAo" node="1$" resolve="caseElement" />
                      <uo k="s:originTrace" v="n:4265636116363110304" />
                    </node>
                    <node concept="3TrEf2" id="27" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:gVKbmvf" resolve="expression" />
                      <uo k="s:originTrace" v="n:400642802550421766" />
                    </node>
                  </node>
                  <node concept="1mIQ4w" id="25" role="2OqNvi">
                    <uo k="s:originTrace" v="n:400642802550421767" />
                    <node concept="chp4Y" id="28" role="cj9EA">
                      <ref role="cht4Q" to="tpee:f$Xl_Og" resolve="StringLiteral" />
                      <uo k="s:originTrace" v="n:400642802550421768" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="1F" role="9aQIa">
                <uo k="s:originTrace" v="n:3446170115498222119" />
                <node concept="3clFbS" id="29" role="9aQI4">
                  <uo k="s:originTrace" v="n:3446170115498222120" />
                  <node concept="3cpWs8" id="2a" role="3cqZAp">
                    <uo k="s:originTrace" v="n:3446170115498222122" />
                    <node concept="3cpWsn" id="2d" role="3cpWs9">
                      <property role="TrG5h" value="current" />
                      <uo k="s:originTrace" v="n:3446170115498222123" />
                      <node concept="17QB3L" id="2e" role="1tU5fm">
                        <uo k="s:originTrace" v="n:3446170115498222124" />
                      </node>
                      <node concept="2OqwBi" id="2f" role="33vP2m">
                        <uo k="s:originTrace" v="n:3446170115498222125" />
                        <node concept="1PxgMI" id="2g" role="2Oq$k0">
                          <uo k="s:originTrace" v="n:3446170115498222126" />
                          <node concept="2OqwBi" id="2i" role="1m5AlR">
                            <uo k="s:originTrace" v="n:3446170115498222127" />
                            <node concept="37vLTw" id="2k" role="2Oq$k0">
                              <ref role="3cqZAo" node="1$" resolve="caseElement" />
                              <uo k="s:originTrace" v="n:4265636116363086789" />
                            </node>
                            <node concept="3TrEf2" id="2l" role="2OqNvi">
                              <ref role="3Tt5mk" to="tpee:gVKbmvf" resolve="expression" />
                              <uo k="s:originTrace" v="n:3446170115498222129" />
                            </node>
                          </node>
                          <node concept="chp4Y" id="2j" role="3oSUPX">
                            <ref role="cht4Q" to="tpee:f$Xl_Og" resolve="StringLiteral" />
                            <uo k="s:originTrace" v="n:8089793891579193029" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="2h" role="2OqNvi">
                          <ref role="3TsBF5" to="tpee:f$Xl_Oh" resolve="value" />
                          <uo k="s:originTrace" v="n:3446170115498222130" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="2b" role="3cqZAp">
                    <uo k="s:originTrace" v="n:3446170115498222131" />
                    <node concept="3clFbS" id="2m" role="3clFbx">
                      <uo k="s:originTrace" v="n:3446170115498222132" />
                      <node concept="9aQIb" id="2o" role="3cqZAp">
                        <uo k="s:originTrace" v="n:3446170115498222133" />
                        <node concept="3clFbS" id="2p" role="9aQI4">
                          <node concept="3cpWs8" id="2r" role="3cqZAp">
                            <node concept="3cpWsn" id="2t" role="3cpWs9">
                              <property role="TrG5h" value="errorTarget" />
                              <property role="3TUv4t" value="true" />
                              <node concept="3uibUv" id="2u" role="1tU5fm">
                                <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                              </node>
                              <node concept="2ShNRf" id="2v" role="33vP2m">
                                <node concept="1pGfFk" id="2w" role="2ShVmc">
                                  <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs8" id="2s" role="3cqZAp">
                            <node concept="3cpWsn" id="2x" role="3cpWs9">
                              <property role="TrG5h" value="_reporter_2309309498" />
                              <node concept="3uibUv" id="2y" role="1tU5fm">
                                <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                              </node>
                              <node concept="2OqwBi" id="2z" role="33vP2m">
                                <node concept="3VmV3z" id="2$" role="2Oq$k0">
                                  <property role="3VnrPo" value="typeCheckingContext" />
                                  <node concept="3uibUv" id="2A" role="3Vn4Tt">
                                    <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="2_" role="2OqNvi">
                                  <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                                  <node concept="2OqwBi" id="2B" role="37wK5m">
                                    <uo k="s:originTrace" v="n:3446170115498222135" />
                                    <node concept="37vLTw" id="2H" role="2Oq$k0">
                                      <ref role="3cqZAo" node="1$" resolve="caseElement" />
                                      <uo k="s:originTrace" v="n:4265636116363069476" />
                                    </node>
                                    <node concept="3TrEf2" id="2I" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tpee:gVKbmvf" resolve="expression" />
                                      <uo k="s:originTrace" v="n:3446170115498222137" />
                                    </node>
                                  </node>
                                  <node concept="Xl_RD" id="2C" role="37wK5m">
                                    <property role="Xl_RC" value="Case expressions should be unique" />
                                    <uo k="s:originTrace" v="n:3446170115498222134" />
                                  </node>
                                  <node concept="Xl_RD" id="2D" role="37wK5m">
                                    <property role="Xl_RC" value="r:ed059f83-fdac-4e67-8269-91684666291c(jetbrains.mps.baseLanguage.jdk7.typesystem)" />
                                  </node>
                                  <node concept="Xl_RD" id="2E" role="37wK5m">
                                    <property role="Xl_RC" value="3446170115498222133" />
                                  </node>
                                  <node concept="10Nm6u" id="2F" role="37wK5m" />
                                  <node concept="37vLTw" id="2G" role="37wK5m">
                                    <ref role="3cqZAo" node="2t" resolve="errorTarget" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="6wLe0" id="2q" role="lGtFl">
                          <property role="6wLej" value="3446170115498222133" />
                          <property role="6wLeW" value="r:ed059f83-fdac-4e67-8269-91684666291c(jetbrains.mps.baseLanguage.jdk7.typesystem)" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="2n" role="3clFbw">
                      <uo k="s:originTrace" v="n:3446170115498222138" />
                      <node concept="37vLTw" id="2J" role="2Oq$k0">
                        <ref role="3cqZAo" node="1u" resolve="caseElements" />
                        <uo k="s:originTrace" v="n:4265636116363101521" />
                      </node>
                      <node concept="3JPx81" id="2K" role="2OqNvi">
                        <uo k="s:originTrace" v="n:3446170115498222140" />
                        <node concept="37vLTw" id="2L" role="25WWJ7">
                          <ref role="3cqZAo" node="2d" resolve="current" />
                          <uo k="s:originTrace" v="n:4265636116363069350" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2c" role="3cqZAp">
                    <uo k="s:originTrace" v="n:3446170115498222142" />
                    <node concept="2OqwBi" id="2M" role="3clFbG">
                      <uo k="s:originTrace" v="n:3446170115498222143" />
                      <node concept="37vLTw" id="2N" role="2Oq$k0">
                        <ref role="3cqZAo" node="1u" resolve="caseElements" />
                        <uo k="s:originTrace" v="n:4265636116363076222" />
                      </node>
                      <node concept="TSZUe" id="2O" role="2OqNvi">
                        <uo k="s:originTrace" v="n:825934036093532928" />
                        <node concept="37vLTw" id="2P" role="25WWJ7">
                          <ref role="3cqZAo" node="2d" resolve="current" />
                          <uo k="s:originTrace" v="n:825934036093532927" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1A" role="1DdaDG">
            <uo k="s:originTrace" v="n:400642802550421769" />
            <node concept="37vLTw" id="2Q" role="2Oq$k0">
              <ref role="3cqZAo" node="1f" resolve="switchStatement" />
              <uo k="s:originTrace" v="n:400642802550421770" />
            </node>
            <node concept="3Tsc0h" id="2R" role="2OqNvi">
              <ref role="3TtcxE" to="tpee:gVKbHMJ" resolve="case" />
              <uo k="s:originTrace" v="n:400642802550421771" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1j" role="1B3o_S">
        <uo k="s:originTrace" v="n:400642802550421647" />
      </node>
    </node>
    <node concept="3clFb_" id="15" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:400642802550421647" />
      <node concept="3bZ5Sz" id="2S" role="3clF45">
        <uo k="s:originTrace" v="n:400642802550421647" />
      </node>
      <node concept="3clFbS" id="2T" role="3clF47">
        <uo k="s:originTrace" v="n:400642802550421647" />
        <node concept="3cpWs6" id="2V" role="3cqZAp">
          <uo k="s:originTrace" v="n:400642802550421647" />
          <node concept="35c_gC" id="2W" role="3cqZAk">
            <ref role="35c_gD" to="rymi:mfnC6nNy4D" resolve="StringSwitchStatement" />
            <uo k="s:originTrace" v="n:400642802550421647" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2U" role="1B3o_S">
        <uo k="s:originTrace" v="n:400642802550421647" />
      </node>
    </node>
    <node concept="3clFb_" id="16" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:400642802550421647" />
      <node concept="37vLTG" id="2X" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:400642802550421647" />
        <node concept="3Tqbb2" id="31" role="1tU5fm">
          <uo k="s:originTrace" v="n:400642802550421647" />
        </node>
      </node>
      <node concept="3clFbS" id="2Y" role="3clF47">
        <uo k="s:originTrace" v="n:400642802550421647" />
        <node concept="9aQIb" id="32" role="3cqZAp">
          <uo k="s:originTrace" v="n:400642802550421647" />
          <node concept="3clFbS" id="33" role="9aQI4">
            <uo k="s:originTrace" v="n:400642802550421647" />
            <node concept="3cpWs6" id="34" role="3cqZAp">
              <uo k="s:originTrace" v="n:400642802550421647" />
              <node concept="2ShNRf" id="35" role="3cqZAk">
                <uo k="s:originTrace" v="n:400642802550421647" />
                <node concept="1pGfFk" id="36" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:400642802550421647" />
                  <node concept="2OqwBi" id="37" role="37wK5m">
                    <uo k="s:originTrace" v="n:400642802550421647" />
                    <node concept="2OqwBi" id="39" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:400642802550421647" />
                      <node concept="liA8E" id="3b" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:400642802550421647" />
                      </node>
                      <node concept="2JrnkZ" id="3c" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:400642802550421647" />
                        <node concept="37vLTw" id="3d" role="2JrQYb">
                          <ref role="3cqZAo" node="2X" resolve="argument" />
                          <uo k="s:originTrace" v="n:400642802550421647" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="3a" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:400642802550421647" />
                      <node concept="1rXfSq" id="3e" role="37wK5m">
                        <ref role="37wK5l" node="15" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:400642802550421647" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="38" role="37wK5m">
                    <uo k="s:originTrace" v="n:400642802550421647" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="2Z" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:400642802550421647" />
      </node>
      <node concept="3Tm1VV" id="30" role="1B3o_S">
        <uo k="s:originTrace" v="n:400642802550421647" />
      </node>
    </node>
    <node concept="3clFb_" id="17" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:400642802550421647" />
      <node concept="3clFbS" id="3f" role="3clF47">
        <uo k="s:originTrace" v="n:400642802550421647" />
        <node concept="3cpWs6" id="3i" role="3cqZAp">
          <uo k="s:originTrace" v="n:400642802550421647" />
          <node concept="3clFbT" id="3j" role="3cqZAk">
            <uo k="s:originTrace" v="n:400642802550421647" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="3g" role="3clF45">
        <uo k="s:originTrace" v="n:400642802550421647" />
      </node>
      <node concept="3Tm1VV" id="3h" role="1B3o_S">
        <uo k="s:originTrace" v="n:400642802550421647" />
      </node>
    </node>
    <node concept="3uibUv" id="18" role="EKbjA">
      <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:400642802550421647" />
    </node>
    <node concept="3uibUv" id="19" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractNonTypesystemRule_Runtime" resolve="AbstractNonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:400642802550421647" />
    </node>
    <node concept="3Tm1VV" id="1a" role="1B3o_S">
      <uo k="s:originTrace" v="n:400642802550421647" />
    </node>
  </node>
  <node concept="312cEu" id="3k">
    <property role="TrG5h" value="check_StringSwitchStatement_NonTypesystemRule" />
    <uo k="s:originTrace" v="n:400642802550421653" />
    <node concept="3clFbW" id="3l" role="jymVt">
      <uo k="s:originTrace" v="n:400642802550421653" />
      <node concept="3clFbS" id="3u" role="3clF47">
        <uo k="s:originTrace" v="n:400642802550421653" />
      </node>
      <node concept="3Tm1VV" id="3v" role="1B3o_S">
        <uo k="s:originTrace" v="n:400642802550421653" />
      </node>
      <node concept="3cqZAl" id="3w" role="3clF45">
        <uo k="s:originTrace" v="n:400642802550421653" />
      </node>
    </node>
    <node concept="3clFb_" id="3m" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:400642802550421653" />
      <node concept="10P_77" id="3x" role="3clF45">
        <uo k="s:originTrace" v="n:400642802550421653" />
      </node>
      <node concept="3Tm1VV" id="3y" role="1B3o_S">
        <uo k="s:originTrace" v="n:400642802550421653" />
      </node>
      <node concept="3clFbS" id="3z" role="3clF47">
        <uo k="s:originTrace" v="n:400642802550421653" />
        <node concept="3clFbJ" id="3_" role="3cqZAp">
          <uo k="s:originTrace" v="n:400642802550421653" />
          <node concept="2ZW3vV" id="3B" role="3clFbw">
            <uo k="s:originTrace" v="n:400642802550421653" />
            <node concept="3uibUv" id="3D" role="2ZW6by">
              <ref role="3uigEE" to="d3ym:eud" resolve="check_switchArgument_NonTypesystemRule" />
              <uo k="s:originTrace" v="n:400642802550421653" />
            </node>
            <node concept="37vLTw" id="3E" role="2ZW6bz">
              <ref role="3cqZAo" node="3$" resolve="rule" />
              <uo k="s:originTrace" v="n:400642802550421653" />
            </node>
          </node>
          <node concept="3clFbS" id="3C" role="3clFbx">
            <uo k="s:originTrace" v="n:400642802550421653" />
            <node concept="3cpWs6" id="3F" role="3cqZAp">
              <uo k="s:originTrace" v="n:400642802550421653" />
              <node concept="3clFbT" id="3G" role="3cqZAk">
                <property role="3clFbU" value="true" />
                <uo k="s:originTrace" v="n:400642802550421653" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3A" role="3cqZAp">
          <uo k="s:originTrace" v="n:400642802550421653" />
          <node concept="3clFbT" id="3H" role="3cqZAk">
            <uo k="s:originTrace" v="n:400642802550421653" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3$" role="3clF46">
        <property role="TrG5h" value="rule" />
        <uo k="s:originTrace" v="n:400642802550421653" />
        <node concept="3uibUv" id="3I" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
          <uo k="s:originTrace" v="n:400642802550421653" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3n" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:400642802550421653" />
      <node concept="3cqZAl" id="3J" role="3clF45">
        <uo k="s:originTrace" v="n:400642802550421653" />
      </node>
      <node concept="37vLTG" id="3K" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="switchStatement" />
        <uo k="s:originTrace" v="n:400642802550421653" />
        <node concept="3Tqbb2" id="3P" role="1tU5fm">
          <uo k="s:originTrace" v="n:400642802550421653" />
        </node>
      </node>
      <node concept="37vLTG" id="3L" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:400642802550421653" />
        <node concept="3uibUv" id="3Q" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:400642802550421653" />
        </node>
      </node>
      <node concept="37vLTG" id="3M" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:400642802550421653" />
        <node concept="3uibUv" id="3R" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:400642802550421653" />
        </node>
      </node>
      <node concept="3clFbS" id="3N" role="3clF47">
        <uo k="s:originTrace" v="n:400642802550421654" />
        <node concept="3cpWs8" id="3S" role="3cqZAp">
          <uo k="s:originTrace" v="n:400642802550421655" />
          <node concept="3cpWsn" id="41" role="3cpWs9">
            <property role="TrG5h" value="arg" />
            <uo k="s:originTrace" v="n:400642802550421656" />
            <node concept="3Tqbb2" id="42" role="1tU5fm">
              <ref role="ehGHo" to="tpee:fz3vP1J" resolve="Expression" />
              <uo k="s:originTrace" v="n:400642802550421657" />
            </node>
            <node concept="2OqwBi" id="43" role="33vP2m">
              <uo k="s:originTrace" v="n:400642802550421658" />
              <node concept="37vLTw" id="44" role="2Oq$k0">
                <ref role="3cqZAo" node="3K" resolve="switchStatement" />
                <uo k="s:originTrace" v="n:400642802550421659" />
              </node>
              <node concept="3TrEf2" id="45" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:gVKbG91" resolve="expression" />
                <uo k="s:originTrace" v="n:400642802550421660" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3T" role="3cqZAp">
          <uo k="s:originTrace" v="n:400642802550421661" />
          <node concept="3clFbS" id="46" role="3clFbx">
            <uo k="s:originTrace" v="n:400642802550421662" />
            <node concept="3cpWs6" id="48" role="3cqZAp">
              <uo k="s:originTrace" v="n:400642802550421663" />
            </node>
          </node>
          <node concept="3clFbC" id="47" role="3clFbw">
            <uo k="s:originTrace" v="n:400642802550421664" />
            <node concept="10Nm6u" id="49" role="3uHU7w">
              <uo k="s:originTrace" v="n:400642802550421665" />
            </node>
            <node concept="37vLTw" id="4a" role="3uHU7B">
              <ref role="3cqZAo" node="41" resolve="arg" />
              <uo k="s:originTrace" v="n:4265636116363087361" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3U" role="3cqZAp">
          <uo k="s:originTrace" v="n:400642802550421667" />
          <node concept="3clFbS" id="4b" role="3clFbx">
            <uo k="s:originTrace" v="n:400642802550421668" />
            <node concept="3cpWs6" id="4d" role="3cqZAp">
              <uo k="s:originTrace" v="n:400642802550421669" />
            </node>
          </node>
          <node concept="2OqwBi" id="4c" role="3clFbw">
            <uo k="s:originTrace" v="n:400642802550421670" />
            <node concept="2OqwBi" id="4e" role="2Oq$k0">
              <uo k="s:originTrace" v="n:400642802550421673" />
              <node concept="2YIFZM" id="4g" role="2Oq$k0">
                <ref role="37wK5l" to="1ka:~TypecheckingFacade.getFromContext()" resolve="getFromContext" />
                <ref role="1Pybhc" to="1ka:~TypecheckingFacade" resolve="TypecheckingFacade" />
              </node>
              <node concept="liA8E" id="4h" role="2OqNvi">
                <ref role="37wK5l" to="1ka:~TypecheckingFacade.getTypeOf(org.jetbrains.mps.openapi.model.SNode)" resolve="getTypeOf" />
                <node concept="37vLTw" id="4i" role="37wK5m">
                  <ref role="3cqZAo" node="41" resolve="arg" />
                  <uo k="s:originTrace" v="n:4265636116363116149" />
                </node>
              </node>
            </node>
            <node concept="1mIQ4w" id="4f" role="2OqNvi">
              <uo k="s:originTrace" v="n:400642802550421674" />
              <node concept="chp4Y" id="4j" role="cj9EA">
                <ref role="cht4Q" to="tpee:hP7QB7G" resolve="StringType" />
                <uo k="s:originTrace" v="n:400642802550421675" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3V" role="3cqZAp">
          <uo k="s:originTrace" v="n:400642802550421676" />
        </node>
        <node concept="3clFbJ" id="3W" role="3cqZAp">
          <uo k="s:originTrace" v="n:400642802550421677" />
          <node concept="3clFbS" id="4k" role="3clFbx">
            <uo k="s:originTrace" v="n:400642802550421678" />
            <node concept="3clFbJ" id="4m" role="3cqZAp">
              <uo k="s:originTrace" v="n:400642802550421679" />
              <node concept="3clFbS" id="4n" role="3clFbx">
                <uo k="s:originTrace" v="n:400642802550421680" />
                <node concept="3cpWs6" id="4p" role="3cqZAp">
                  <uo k="s:originTrace" v="n:400642802550421681" />
                </node>
              </node>
              <node concept="2OqwBi" id="4o" role="3clFbw">
                <uo k="s:originTrace" v="n:61840601206676837" />
                <node concept="2OqwBi" id="4q" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:400642802550421683" />
                  <node concept="1PxgMI" id="4s" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:400642802550421684" />
                    <node concept="2OqwBi" id="4u" role="1m5AlR">
                      <uo k="s:originTrace" v="n:400642802550421687" />
                      <node concept="2YIFZM" id="4w" role="2Oq$k0">
                        <ref role="37wK5l" to="1ka:~TypecheckingFacade.getFromContext()" resolve="getFromContext" />
                        <ref role="1Pybhc" to="1ka:~TypecheckingFacade" resolve="TypecheckingFacade" />
                      </node>
                      <node concept="liA8E" id="4x" role="2OqNvi">
                        <ref role="37wK5l" to="1ka:~TypecheckingFacade.getTypeOf(org.jetbrains.mps.openapi.model.SNode)" resolve="getTypeOf" />
                        <node concept="37vLTw" id="4y" role="37wK5m">
                          <ref role="3cqZAo" node="41" resolve="arg" />
                          <uo k="s:originTrace" v="n:4265636116363102853" />
                        </node>
                      </node>
                    </node>
                    <node concept="chp4Y" id="4v" role="3oSUPX">
                      <ref role="cht4Q" to="tpee:g7uibYu" resolve="ClassifierType" />
                      <uo k="s:originTrace" v="n:8089793891579193030" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="4t" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:g7uigIF" resolve="classifier" />
                    <uo k="s:originTrace" v="n:400642802550421688" />
                  </node>
                </node>
                <node concept="1QLmlb" id="4r" role="2OqNvi">
                  <uo k="s:originTrace" v="n:61840601206678940" />
                  <node concept="ZC_QK" id="4z" role="1QLmnL">
                    <ref role="2aWVGs" to="wyt6:~String" resolve="String" />
                    <uo k="s:originTrace" v="n:61840601206679722" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4l" role="3clFbw">
            <uo k="s:originTrace" v="n:400642802550421691" />
            <node concept="2OqwBi" id="4$" role="2Oq$k0">
              <uo k="s:originTrace" v="n:400642802550421694" />
              <node concept="2YIFZM" id="4A" role="2Oq$k0">
                <ref role="37wK5l" to="1ka:~TypecheckingFacade.getFromContext()" resolve="getFromContext" />
                <ref role="1Pybhc" to="1ka:~TypecheckingFacade" resolve="TypecheckingFacade" />
              </node>
              <node concept="liA8E" id="4B" role="2OqNvi">
                <ref role="37wK5l" to="1ka:~TypecheckingFacade.getTypeOf(org.jetbrains.mps.openapi.model.SNode)" resolve="getTypeOf" />
                <node concept="37vLTw" id="4C" role="37wK5m">
                  <ref role="3cqZAo" node="41" resolve="arg" />
                  <uo k="s:originTrace" v="n:4265636116363101144" />
                </node>
              </node>
            </node>
            <node concept="1mIQ4w" id="4_" role="2OqNvi">
              <uo k="s:originTrace" v="n:400642802550421695" />
              <node concept="chp4Y" id="4D" role="cj9EA">
                <ref role="cht4Q" to="tpee:g7uibYu" resolve="ClassifierType" />
                <uo k="s:originTrace" v="n:400642802550421696" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3X" role="3cqZAp">
          <uo k="s:originTrace" v="n:400642802550421697" />
        </node>
        <node concept="3clFbJ" id="3Y" role="3cqZAp">
          <uo k="s:originTrace" v="n:400642802550421698" />
          <node concept="3clFbS" id="4E" role="3clFbx">
            <uo k="s:originTrace" v="n:400642802550421699" />
            <node concept="3clFbJ" id="4G" role="3cqZAp">
              <uo k="s:originTrace" v="n:400642802550421700" />
              <node concept="2OqwBi" id="4H" role="3clFbw">
                <uo k="s:originTrace" v="n:61840601206680688" />
                <node concept="2OqwBi" id="4J" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:400642802550421702" />
                  <node concept="1PxgMI" id="4L" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:400642802550421703" />
                    <node concept="2OqwBi" id="4N" role="1m5AlR">
                      <uo k="s:originTrace" v="n:400642802550421706" />
                      <node concept="2YIFZM" id="4P" role="2Oq$k0">
                        <ref role="37wK5l" to="1ka:~TypecheckingFacade.getFromContext()" resolve="getFromContext" />
                        <ref role="1Pybhc" to="1ka:~TypecheckingFacade" resolve="TypecheckingFacade" />
                      </node>
                      <node concept="liA8E" id="4Q" role="2OqNvi">
                        <ref role="37wK5l" to="1ka:~TypecheckingFacade.getTypeOf(org.jetbrains.mps.openapi.model.SNode)" resolve="getTypeOf" />
                        <node concept="37vLTw" id="4R" role="37wK5m">
                          <ref role="3cqZAo" node="41" resolve="arg" />
                          <uo k="s:originTrace" v="n:4265636116363065055" />
                        </node>
                      </node>
                    </node>
                    <node concept="chp4Y" id="4O" role="3oSUPX">
                      <ref role="cht4Q" to="tpee:3ZSHU3pg$bx" resolve="IWillBeClassifier" />
                      <uo k="s:originTrace" v="n:8089793891579193028" />
                    </node>
                  </node>
                  <node concept="3zqWPK" id="4M" role="2OqNvi">
                    <ref role="37wK5l" to="tpek:3_1Lj9FFNJ0" resolve="baseClassifier" />
                    <uo k="s:originTrace" v="n:8085146484218858891" />
                  </node>
                </node>
                <node concept="1QLmlb" id="4K" role="2OqNvi">
                  <uo k="s:originTrace" v="n:61840601206681170" />
                  <node concept="ZC_QK" id="4S" role="1QLmnL">
                    <ref role="2aWVGs" to="wyt6:~String" resolve="String" />
                    <uo k="s:originTrace" v="n:61840601206681962" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="4I" role="3clFbx">
                <uo k="s:originTrace" v="n:400642802550421710" />
                <node concept="3cpWs6" id="4T" role="3cqZAp">
                  <uo k="s:originTrace" v="n:400642802550421711" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4F" role="3clFbw">
            <uo k="s:originTrace" v="n:400642802550421712" />
            <node concept="2OqwBi" id="4U" role="2Oq$k0">
              <uo k="s:originTrace" v="n:400642802550421715" />
              <node concept="2YIFZM" id="4W" role="2Oq$k0">
                <ref role="37wK5l" to="1ka:~TypecheckingFacade.getFromContext()" resolve="getFromContext" />
                <ref role="1Pybhc" to="1ka:~TypecheckingFacade" resolve="TypecheckingFacade" />
              </node>
              <node concept="liA8E" id="4X" role="2OqNvi">
                <ref role="37wK5l" to="1ka:~TypecheckingFacade.getTypeOf(org.jetbrains.mps.openapi.model.SNode)" resolve="getTypeOf" />
                <node concept="37vLTw" id="4Y" role="37wK5m">
                  <ref role="3cqZAo" node="41" resolve="arg" />
                  <uo k="s:originTrace" v="n:4265636116363078238" />
                </node>
              </node>
            </node>
            <node concept="1mIQ4w" id="4V" role="2OqNvi">
              <uo k="s:originTrace" v="n:400642802550421716" />
              <node concept="chp4Y" id="4Z" role="cj9EA">
                <ref role="cht4Q" to="tpee:3ZSHU3pg$bx" resolve="IWillBeClassifier" />
                <uo k="s:originTrace" v="n:400642802550421717" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3Z" role="3cqZAp">
          <uo k="s:originTrace" v="n:400642802550421742" />
        </node>
        <node concept="9aQIb" id="40" role="3cqZAp">
          <uo k="s:originTrace" v="n:400642802550421743" />
          <node concept="3clFbS" id="50" role="9aQI4">
            <node concept="3cpWs8" id="52" role="3cqZAp">
              <node concept="3cpWsn" id="54" role="3cpWs9">
                <property role="TrG5h" value="errorTarget" />
                <property role="3TUv4t" value="true" />
                <node concept="3uibUv" id="55" role="1tU5fm">
                  <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                </node>
                <node concept="2ShNRf" id="56" role="33vP2m">
                  <node concept="1pGfFk" id="57" role="2ShVmc">
                    <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="53" role="3cqZAp">
              <node concept="3cpWsn" id="58" role="3cpWs9">
                <property role="TrG5h" value="_reporter_2309309498" />
                <node concept="3uibUv" id="59" role="1tU5fm">
                  <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                </node>
                <node concept="2OqwBi" id="5a" role="33vP2m">
                  <node concept="3VmV3z" id="5b" role="2Oq$k0">
                    <property role="3VnrPo" value="typeCheckingContext" />
                    <node concept="3uibUv" id="5d" role="3Vn4Tt">
                      <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                    </node>
                  </node>
                  <node concept="liA8E" id="5c" role="2OqNvi">
                    <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                    <node concept="37vLTw" id="5e" role="37wK5m">
                      <ref role="3cqZAo" node="41" resolve="arg" />
                      <uo k="s:originTrace" v="n:4265636116363078317" />
                    </node>
                    <node concept="Xl_RD" id="5f" role="37wK5m">
                      <property role="Xl_RC" value="Argument of string switch should be string" />
                      <uo k="s:originTrace" v="n:400642802550421744" />
                    </node>
                    <node concept="Xl_RD" id="5g" role="37wK5m">
                      <property role="Xl_RC" value="r:ed059f83-fdac-4e67-8269-91684666291c(jetbrains.mps.baseLanguage.jdk7.typesystem)" />
                    </node>
                    <node concept="Xl_RD" id="5h" role="37wK5m">
                      <property role="Xl_RC" value="400642802550421743" />
                    </node>
                    <node concept="10Nm6u" id="5i" role="37wK5m" />
                    <node concept="37vLTw" id="5j" role="37wK5m">
                      <ref role="3cqZAo" node="54" resolve="errorTarget" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="6wLe0" id="51" role="lGtFl">
            <property role="6wLej" value="400642802550421743" />
            <property role="6wLeW" value="r:ed059f83-fdac-4e67-8269-91684666291c(jetbrains.mps.baseLanguage.jdk7.typesystem)" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3O" role="1B3o_S">
        <uo k="s:originTrace" v="n:400642802550421653" />
      </node>
    </node>
    <node concept="3clFb_" id="3o" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:400642802550421653" />
      <node concept="3bZ5Sz" id="5k" role="3clF45">
        <uo k="s:originTrace" v="n:400642802550421653" />
      </node>
      <node concept="3clFbS" id="5l" role="3clF47">
        <uo k="s:originTrace" v="n:400642802550421653" />
        <node concept="3cpWs6" id="5n" role="3cqZAp">
          <uo k="s:originTrace" v="n:400642802550421653" />
          <node concept="35c_gC" id="5o" role="3cqZAk">
            <ref role="35c_gD" to="rymi:mfnC6nNy4D" resolve="StringSwitchStatement" />
            <uo k="s:originTrace" v="n:400642802550421653" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5m" role="1B3o_S">
        <uo k="s:originTrace" v="n:400642802550421653" />
      </node>
    </node>
    <node concept="3clFb_" id="3p" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:400642802550421653" />
      <node concept="37vLTG" id="5p" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:400642802550421653" />
        <node concept="3Tqbb2" id="5t" role="1tU5fm">
          <uo k="s:originTrace" v="n:400642802550421653" />
        </node>
      </node>
      <node concept="3clFbS" id="5q" role="3clF47">
        <uo k="s:originTrace" v="n:400642802550421653" />
        <node concept="9aQIb" id="5u" role="3cqZAp">
          <uo k="s:originTrace" v="n:400642802550421653" />
          <node concept="3clFbS" id="5v" role="9aQI4">
            <uo k="s:originTrace" v="n:400642802550421653" />
            <node concept="3cpWs6" id="5w" role="3cqZAp">
              <uo k="s:originTrace" v="n:400642802550421653" />
              <node concept="2ShNRf" id="5x" role="3cqZAk">
                <uo k="s:originTrace" v="n:400642802550421653" />
                <node concept="1pGfFk" id="5y" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:400642802550421653" />
                  <node concept="2OqwBi" id="5z" role="37wK5m">
                    <uo k="s:originTrace" v="n:400642802550421653" />
                    <node concept="2OqwBi" id="5_" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:400642802550421653" />
                      <node concept="liA8E" id="5B" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:400642802550421653" />
                      </node>
                      <node concept="2JrnkZ" id="5C" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:400642802550421653" />
                        <node concept="37vLTw" id="5D" role="2JrQYb">
                          <ref role="3cqZAo" node="5p" resolve="argument" />
                          <uo k="s:originTrace" v="n:400642802550421653" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="5A" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:400642802550421653" />
                      <node concept="1rXfSq" id="5E" role="37wK5m">
                        <ref role="37wK5l" node="3o" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:400642802550421653" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="5$" role="37wK5m">
                    <uo k="s:originTrace" v="n:400642802550421653" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="5r" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:400642802550421653" />
      </node>
      <node concept="3Tm1VV" id="5s" role="1B3o_S">
        <uo k="s:originTrace" v="n:400642802550421653" />
      </node>
    </node>
    <node concept="3clFb_" id="3q" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:400642802550421653" />
      <node concept="3clFbS" id="5F" role="3clF47">
        <uo k="s:originTrace" v="n:400642802550421653" />
        <node concept="3cpWs6" id="5I" role="3cqZAp">
          <uo k="s:originTrace" v="n:400642802550421653" />
          <node concept="3clFbT" id="5J" role="3cqZAk">
            <uo k="s:originTrace" v="n:400642802550421653" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="5G" role="3clF45">
        <uo k="s:originTrace" v="n:400642802550421653" />
      </node>
      <node concept="3Tm1VV" id="5H" role="1B3o_S">
        <uo k="s:originTrace" v="n:400642802550421653" />
      </node>
    </node>
    <node concept="3uibUv" id="3r" role="EKbjA">
      <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:400642802550421653" />
    </node>
    <node concept="3uibUv" id="3s" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractNonTypesystemRule_Runtime" resolve="AbstractNonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:400642802550421653" />
    </node>
    <node concept="3Tm1VV" id="3t" role="1B3o_S">
      <uo k="s:originTrace" v="n:400642802550421653" />
    </node>
  </node>
</model>

