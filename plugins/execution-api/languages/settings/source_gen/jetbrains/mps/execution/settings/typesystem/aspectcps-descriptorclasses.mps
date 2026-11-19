<?xml version="1.0" encoding="UTF-8"?>
<model ref="00000000-0000-4000-5f02-5beb5f025beb/i:fe63d13(checkpoints/jetbrains.mps.execution.settings.typesystem@descriptorclasses)">
  <persistence version="9" />
  <attribute name="checkpoint" value="DescriptorClasses" />
  <attribute name="generation-plan" value="AspectCPS" />
  <attribute name="user-objects" value="true" />
  <languages />
  <imports>
    <import index="l9j8" ref="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
    <import index="tpek" ref="r:00000000-0000-4000-0000-011c895902c0(jetbrains.mps.baseLanguage.behavior)" />
    <import index="2gg1" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.errors(MPS.Core/)" />
    <import index="fb9u" ref="r:0194e190-08ef-44f6-ab95-d9cffdb7e27b(jetbrains.mps.execution.settings.structure)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="zavc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.errors.messageTargets(MPS.Core/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="tpd4" ref="r:00000000-0000-4000-0000-011c895902b4(jetbrains.mps.lang.typesystem.structure)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="hilv" ref="r:afd0247c-5ce3-4424-8951-51083e421123(jetbrains.mps.execution.settings.behavior)" />
    <import index="ic0f" ref="r:76273c4a-4818-4f7c-8673-bfc2aeb6debb(jetbrains.mps.execution.api.settings)" />
    <import index="qurh" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.lang.typesystem.runtime(MPS.Core/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="u78q" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.typesystem.inference(MPS.Core/)" />
    <import index="w0gx" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project.structure.modules(MPS.Core/)" />
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
      <concept id="1153417849900" name="jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression" flags="nn" index="2d3UOw" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
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
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
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
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
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
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
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
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
      <concept id="5455284157994012186" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitLink" flags="ng" index="2pIpSj">
        <reference id="5455284157994012188" name="link" index="2pIpSl" />
        <child id="1595412875168045827" name="initValue" index="28nt2d" />
      </concept>
      <concept id="5455284157993863837" name="jetbrains.mps.lang.quotation.structure.NodeBuilder" flags="nn" index="2pJPEk">
        <child id="5455284157993863838" name="quotedNode" index="2pJPEn" />
      </concept>
      <concept id="5455284157993863840" name="jetbrains.mps.lang.quotation.structure.NodeBuilderNode" flags="nn" index="2pJPED">
        <reference id="5455284157993910961" name="concept" index="2pJxaS" />
        <child id="5455284157993911099" name="values" index="2pJxcM" />
      </concept>
      <concept id="8182547171709738802" name="jetbrains.mps.lang.quotation.structure.NodeBuilderList" flags="nn" index="36be1Y">
        <child id="8182547171709738803" name="nodes" index="36be1Z" />
      </concept>
      <concept id="8182547171709752110" name="jetbrains.mps.lang.quotation.structure.NodeBuilderExpression" flags="nn" index="36biLy">
        <child id="8182547171709752112" name="expression" index="36biLW" />
      </concept>
      <concept id="8182547171709614739" name="jetbrains.mps.lang.quotation.structure.NodeBuilderRef" flags="nn" index="36bGnv">
        <reference id="8182547171709614741" name="target" index="36bGnp" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="2990591960991114251" name="jetbrains.mps.lang.typesystem.structure.OriginalNodeId" flags="ng" index="6wLe0">
        <property id="2990591960991114264" name="nodeId" index="6wLej" />
        <property id="2990591960991114295" name="modelId" index="6wLeW" />
      </concept>
      <concept id="1179479408386" name="jetbrains.mps.lang.typesystem.structure.JoinType" flags="ng" index="2usRSg">
        <child id="1179479418730" name="argument" index="2usUpS" />
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
      <concept id="8866923313515890008" name="jetbrains.mps.lang.smodel.structure.AsNodeOperation" flags="nn" index="FGMqu" />
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz">
        <reference id="6677504323281689839" name="conceptDeclaration" index="3bZ5Sy" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
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
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1162934736510" name="jetbrains.mps.baseLanguage.collections.structure.GetElementOperation" flags="nn" index="34jXtK" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
    </language>
  </registry>
  <node concept="312cEu" id="0">
    <property role="3GE5qa" value="editor" />
    <property role="TrG5h" value="EditorIsSusbtypeOfEditor_SubtypingRule" />
    <uo k="s:originTrace" v="n:6981317760235477872" />
    <node concept="3clFbW" id="1" role="jymVt">
      <uo k="s:originTrace" v="n:6981317760235477872" />
      <node concept="3clFbS" id="9" role="3clF47">
        <uo k="s:originTrace" v="n:6981317760235477872" />
      </node>
      <node concept="3Tm1VV" id="a" role="1B3o_S">
        <uo k="s:originTrace" v="n:6981317760235477872" />
      </node>
      <node concept="3cqZAl" id="b" role="3clF45">
        <uo k="s:originTrace" v="n:6981317760235477872" />
      </node>
    </node>
    <node concept="3clFb_" id="2" role="jymVt">
      <property role="TrG5h" value="getSubOrSuperType" />
      <uo k="s:originTrace" v="n:6981317760235477872" />
      <node concept="3uibUv" id="c" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        <uo k="s:originTrace" v="n:6981317760235477872" />
      </node>
      <node concept="37vLTG" id="d" role="3clF46">
        <property role="TrG5h" value="settingsEditorType" />
        <uo k="s:originTrace" v="n:6981317760235477872" />
        <node concept="3Tqbb2" id="i" role="1tU5fm">
          <uo k="s:originTrace" v="n:6981317760235477872" />
        </node>
      </node>
      <node concept="37vLTG" id="e" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <uo k="s:originTrace" v="n:6981317760235477872" />
        <node concept="3uibUv" id="j" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:6981317760235477872" />
        </node>
      </node>
      <node concept="37vLTG" id="f" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:6981317760235477872" />
        <node concept="3uibUv" id="k" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:6981317760235477872" />
        </node>
      </node>
      <node concept="3clFbS" id="g" role="3clF47">
        <uo k="s:originTrace" v="n:6981317760235477873" />
        <node concept="3cpWs6" id="l" role="3cqZAp">
          <uo k="s:originTrace" v="n:6981317760235477874" />
          <node concept="2pJPEk" id="m" role="3cqZAk">
            <uo k="s:originTrace" v="n:48168216978189628" />
            <node concept="2pJPED" id="n" role="2pJPEn">
              <ref role="2pJxaS" to="fb9u:O$iR4J$g4U" resolve="SettingsEditorType" />
              <uo k="s:originTrace" v="n:48168216978189627" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="h" role="1B3o_S">
        <uo k="s:originTrace" v="n:6981317760235477872" />
      </node>
    </node>
    <node concept="3clFb_" id="3" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:6981317760235477872" />
      <node concept="3bZ5Sz" id="o" role="3clF45">
        <uo k="s:originTrace" v="n:6981317760235477872" />
      </node>
      <node concept="3clFbS" id="p" role="3clF47">
        <uo k="s:originTrace" v="n:6981317760235477872" />
        <node concept="3cpWs6" id="r" role="3cqZAp">
          <uo k="s:originTrace" v="n:6981317760235477872" />
          <node concept="35c_gC" id="s" role="3cqZAk">
            <ref role="35c_gD" to="fb9u:O$iR4J$g4U" resolve="SettingsEditorType" />
            <uo k="s:originTrace" v="n:6981317760235477872" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="q" role="1B3o_S">
        <uo k="s:originTrace" v="n:6981317760235477872" />
      </node>
    </node>
    <node concept="3clFb_" id="4" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:6981317760235477872" />
      <node concept="37vLTG" id="t" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:6981317760235477872" />
        <node concept="3Tqbb2" id="x" role="1tU5fm">
          <uo k="s:originTrace" v="n:6981317760235477872" />
        </node>
      </node>
      <node concept="3clFbS" id="u" role="3clF47">
        <uo k="s:originTrace" v="n:6981317760235477872" />
        <node concept="9aQIb" id="y" role="3cqZAp">
          <uo k="s:originTrace" v="n:6981317760235477872" />
          <node concept="3clFbS" id="z" role="9aQI4">
            <uo k="s:originTrace" v="n:6981317760235477872" />
            <node concept="3cpWs6" id="$" role="3cqZAp">
              <uo k="s:originTrace" v="n:6981317760235477872" />
              <node concept="2ShNRf" id="_" role="3cqZAk">
                <uo k="s:originTrace" v="n:6981317760235477872" />
                <node concept="1pGfFk" id="A" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:6981317760235477872" />
                  <node concept="2OqwBi" id="B" role="37wK5m">
                    <uo k="s:originTrace" v="n:6981317760235477872" />
                    <node concept="2OqwBi" id="D" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:6981317760235477872" />
                      <node concept="liA8E" id="F" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:6981317760235477872" />
                      </node>
                      <node concept="2JrnkZ" id="G" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:6981317760235477872" />
                        <node concept="37vLTw" id="H" role="2JrQYb">
                          <ref role="3cqZAo" node="t" resolve="argument" />
                          <uo k="s:originTrace" v="n:6981317760235477872" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="E" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:6981317760235477872" />
                      <node concept="1rXfSq" id="I" role="37wK5m">
                        <ref role="37wK5l" node="3" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:6981317760235477872" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="C" role="37wK5m">
                    <uo k="s:originTrace" v="n:6981317760235477872" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="v" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:6981317760235477872" />
      </node>
      <node concept="3Tm1VV" id="w" role="1B3o_S">
        <uo k="s:originTrace" v="n:6981317760235477872" />
      </node>
    </node>
    <node concept="3clFb_" id="5" role="jymVt">
      <property role="TrG5h" value="isWeak" />
      <uo k="s:originTrace" v="n:6981317760235477872" />
      <node concept="3clFbS" id="J" role="3clF47">
        <uo k="s:originTrace" v="n:6981317760235477872" />
        <node concept="3cpWs6" id="M" role="3cqZAp">
          <uo k="s:originTrace" v="n:6981317760235477872" />
          <node concept="3clFbT" id="N" role="3cqZAk">
            <uo k="s:originTrace" v="n:6981317760235477872" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="K" role="1B3o_S">
        <uo k="s:originTrace" v="n:6981317760235477872" />
      </node>
      <node concept="10P_77" id="L" role="3clF45">
        <uo k="s:originTrace" v="n:6981317760235477872" />
      </node>
    </node>
    <node concept="3uibUv" id="6" role="EKbjA">
      <ref role="3uigEE" to="qurh:~ISubtypingRule_Runtime" resolve="ISubtypingRule_Runtime" />
      <uo k="s:originTrace" v="n:6981317760235477872" />
    </node>
    <node concept="3uibUv" id="7" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~SubtypingRule_Runtime" resolve="SubtypingRule_Runtime" />
      <uo k="s:originTrace" v="n:6981317760235477872" />
    </node>
    <node concept="3Tm1VV" id="8" role="1B3o_S">
      <uo k="s:originTrace" v="n:6981317760235477872" />
    </node>
  </node>
  <node concept="39dXUE" id="O">
    <node concept="39e2AJ" id="P" role="39e2AI">
      <property role="39e3Y2" value="classForRule" />
      <node concept="39e2AG" id="U" role="39e3Y0">
        <ref role="39e2AK" to="l9j8:63yBSeEXxHK" resolve="EditorIsSusbtypeOfEditor" />
        <node concept="385nmt" id="1b" role="385vvn">
          <property role="385vuF" value="EditorIsSusbtypeOfEditor" />
          <node concept="3u3nmq" id="1d" role="385v07">
            <property role="3u3nmv" value="6981317760235477872" />
          </node>
        </node>
        <node concept="39e2AT" id="1c" role="39e2AY">
          <ref role="39e2AS" node="0" resolve="EditorIsSusbtypeOfEditor_SubtypingRule" />
        </node>
      </node>
      <node concept="39e2AG" id="V" role="39e3Y0">
        <ref role="39e2AK" to="l9j8:1glKvNTAkm4" resolve="PersistentConfigurationIsObject" />
        <node concept="385nmt" id="1e" role="385vvn">
          <property role="385vuF" value="PersistentConfigurationIsObject" />
          <node concept="3u3nmq" id="1g" role="385v07">
            <property role="3u3nmv" value="1447276147532973444" />
          </node>
        </node>
        <node concept="39e2AT" id="1f" role="39e2AY">
          <ref role="39e2AS" node="4g" resolve="PersistentConfigurationIsObject_SubtypingRule" />
        </node>
      </node>
      <node concept="39e2AG" id="W" role="39e3Y0">
        <ref role="39e2AK" to="l9j8:63yBSeEXxF_" resolve="PersistentConfigurationIsPersistentConfiguration" />
        <node concept="385nmt" id="1h" role="385vvn">
          <property role="385vuF" value="PersistentConfigurationIsPersistentConfiguration" />
          <node concept="3u3nmq" id="1j" role="385v07">
            <property role="3u3nmv" value="6981317760235477733" />
          </node>
        </node>
        <node concept="39e2AT" id="1i" role="39e2AY">
          <ref role="39e2AS" node="54" resolve="PersistentConfigurationIsPersistentConfiguration_SubtypingRule" />
        </node>
      </node>
      <node concept="39e2AG" id="X" role="39e3Y0">
        <ref role="39e2AK" to="l9j8:4e6Nb7Lohrr" resolve="TemplatePersistentConfigurationTypeClassifier" />
        <node concept="385nmt" id="1k" role="385vvn">
          <property role="385vuF" value="TemplatePersistentConfigurationTypeClassifier" />
          <node concept="3u3nmq" id="1m" role="385v07">
            <property role="3u3nmv" value="4865801512051349211" />
          </node>
        </node>
        <node concept="39e2AT" id="1l" role="39e2AY">
          <ref role="39e2AS" node="5S" resolve="TemplatePersistentConfigurationTypeClassifier_SubtypingRule" />
        </node>
      </node>
      <node concept="39e2AG" id="Y" role="39e3Y0">
        <ref role="39e2AK" to="l9j8:5QxK6Ad4_Da" resolve="TemplatePersistentConfigurationTypeIsTemplatePersistentConfiguration" />
        <node concept="385nmt" id="1n" role="385vvn">
          <property role="385vuF" value="TemplatePersistentConfigurationTypeIsTemplatePersistentConfiguration" />
          <node concept="3u3nmq" id="1p" role="385v07">
            <property role="3u3nmv" value="6746885276348602954" />
          </node>
        </node>
        <node concept="39e2AT" id="1o" role="39e2AY">
          <ref role="39e2AS" node="6I" resolve="TemplatePersistentConfigurationTypeIsTemplatePersistentConfiguration_SubtypingRule" />
        </node>
      </node>
      <node concept="39e2AG" id="Z" role="39e3Y0">
        <ref role="39e2AK" to="l9j8:63yBSeEXxGv" resolve="TemplatePersistentPropertyIsSubtypeOfPersistentConfiguration" />
        <node concept="385nmt" id="1q" role="385vvn">
          <property role="385vuF" value="TemplatePersistentPropertyIsSubtypeOfPersistentConfiguration" />
          <node concept="3u3nmq" id="1s" role="385v07">
            <property role="3u3nmv" value="6981317760235477791" />
          </node>
        </node>
        <node concept="39e2AT" id="1r" role="39e2AY">
          <ref role="39e2AS" node="7y" resolve="TemplatePersistentPropertyIsSubtypeOfPersistentConfiguration_SubtypingRule" />
        </node>
      </node>
      <node concept="39e2AG" id="10" role="39e3Y0">
        <ref role="39e2AK" to="l9j8:63yBSeEXAqO" resolve="typeof_Configuration_Parameter" />
        <node concept="385nmt" id="1t" role="385vvn">
          <property role="385vuF" value="typeof_Configuration_Parameter" />
          <node concept="3u3nmq" id="1v" role="385v07">
            <property role="3u3nmv" value="6981317760235497140" />
          </node>
        </node>
        <node concept="39e2AT" id="1u" role="39e2AY">
          <ref role="39e2AS" node="cg" resolve="typeof_Configuration_Parameter_InferenceRule" />
        </node>
      </node>
      <node concept="39e2AG" id="11" role="39e3Y0">
        <ref role="39e2AK" to="l9j8:63yBSeEXxHQ" resolve="typeof_EditorExpression" />
        <node concept="385nmt" id="1w" role="385vvn">
          <property role="385vuF" value="typeof_EditorExpression" />
          <node concept="3u3nmq" id="1y" role="385v07">
            <property role="3u3nmv" value="6981317760235477878" />
          </node>
        </node>
        <node concept="39e2AT" id="1x" role="39e2AY">
          <ref role="39e2AS" node="dT" resolve="typeof_EditorExpression_InferenceRule" />
        </node>
      </node>
      <node concept="39e2AG" id="12" role="39e3Y0">
        <ref role="39e2AK" to="l9j8:63yBSeEXxIf" resolve="typeof_EditorOperation" />
        <node concept="385nmt" id="1z" role="385vvn">
          <property role="385vuF" value="typeof_EditorOperation" />
          <node concept="3u3nmq" id="1_" role="385v07">
            <property role="3u3nmv" value="6981317760235477903" />
          </node>
        </node>
        <node concept="39e2AT" id="1$" role="39e2AY">
          <ref role="39e2AS" node="gl" resolve="typeof_EditorOperation_InferenceRule" />
        </node>
      </node>
      <node concept="39e2AG" id="13" role="39e3Y0">
        <ref role="39e2AK" to="l9j8:63yBSeEXd9B" resolve="typeof_GetEditorOperation" />
        <node concept="385nmt" id="1A" role="385vvn">
          <property role="385vuF" value="typeof_GetEditorOperation" />
          <node concept="3u3nmq" id="1C" role="385v07">
            <property role="3u3nmv" value="6981317760235393639" />
          </node>
        </node>
        <node concept="39e2AT" id="1B" role="39e2AY">
          <ref role="39e2AS" node="k_" resolve="typeof_GetEditorOperation_InferenceRule" />
        </node>
      </node>
      <node concept="39e2AG" id="14" role="39e3Y0">
        <ref role="39e2AK" to="l9j8:2n8I3DYjuYj" resolve="typeof_GridBagConstraints" />
        <node concept="385nmt" id="1D" role="385vvn">
          <property role="385vuF" value="typeof_GridBagConstraints" />
          <node concept="3u3nmq" id="1F" role="385v07">
            <property role="3u3nmv" value="2722628536112115603" />
          </node>
        </node>
        <node concept="39e2AT" id="1E" role="39e2AY">
          <ref role="39e2AS" node="n5" resolve="typeof_GridBagConstraints_InferenceRule" />
        </node>
      </node>
      <node concept="39e2AG" id="15" role="39e3Y0">
        <ref role="39e2AK" to="l9j8:1T5iP2agbYD" resolve="typeof_PersistentConfigurationTemplate" />
        <node concept="385nmt" id="1G" role="385vvn">
          <property role="385vuF" value="typeof_PersistentConfigurationTemplate" />
          <node concept="3u3nmq" id="1I" role="385v07">
            <property role="3u3nmv" value="2181232403819839401" />
          </node>
        </node>
        <node concept="39e2AT" id="1H" role="39e2AY">
          <ref role="39e2AS" node="sq" resolve="typeof_PersistentConfigurationTemplate_InferenceRule" />
        </node>
      </node>
      <node concept="39e2AG" id="16" role="39e3Y0">
        <ref role="39e2AK" to="l9j8:63yBSeEXxGJ" resolve="typeof_PersistentConfigurationTemplateInitializer" />
        <node concept="385nmt" id="1J" role="385vvn">
          <property role="385vuF" value="typeof_PersistentConfigurationTemplateInitializer" />
          <node concept="3u3nmq" id="1L" role="385v07">
            <property role="3u3nmv" value="6981317760235477807" />
          </node>
        </node>
        <node concept="39e2AT" id="1K" role="39e2AY">
          <ref role="39e2AS" node="pe" resolve="typeof_PersistentConfigurationTemplateInitializer_InferenceRule" />
        </node>
      </node>
      <node concept="39e2AG" id="17" role="39e3Y0">
        <ref role="39e2AK" to="l9j8:63yBSeEXxFS" resolve="typeof_PersistentPropertyDeclaration" />
        <node concept="385nmt" id="1M" role="385vvn">
          <property role="385vuF" value="typeof_PersistentPropertyDeclaration" />
          <node concept="3u3nmq" id="1O" role="385v07">
            <property role="3u3nmv" value="6981317760235477752" />
          </node>
        </node>
        <node concept="39e2AT" id="1N" role="39e2AY">
          <ref role="39e2AS" node="tR" resolve="typeof_PersistentPropertyDeclaration_InferenceRule" />
        </node>
      </node>
      <node concept="39e2AG" id="18" role="39e3Y0">
        <ref role="39e2AK" to="l9j8:63yBSeEXxGi" resolve="typeof_PersistentPropertyReferenceOperation" />
        <node concept="385nmt" id="1P" role="385vvn">
          <property role="385vuF" value="typeof_PersistentPropertyReferenceOperation" />
          <node concept="3u3nmq" id="1R" role="385v07">
            <property role="3u3nmv" value="6981317760235477778" />
          </node>
        </node>
        <node concept="39e2AT" id="1Q" role="39e2AY">
          <ref role="39e2AS" node="xq" resolve="typeof_PersistentPropertyReferenceOperation_InferenceRule" />
        </node>
      </node>
      <node concept="39e2AG" id="19" role="39e3Y0">
        <ref role="39e2AK" to="l9j8:1MVY3kFAiYY" resolve="typeof_ProjectAccessExpression" />
        <node concept="385nmt" id="1S" role="385vvn">
          <property role="385vuF" value="typeof_ProjectAccessExpression" />
          <node concept="3u3nmq" id="1U" role="385v07">
            <property role="3u3nmv" value="2070521360955289534" />
          </node>
        </node>
        <node concept="39e2AT" id="1T" role="39e2AY">
          <ref role="39e2AS" node="yR" resolve="typeof_ProjectAccessExpression_InferenceRule" />
        </node>
      </node>
      <node concept="39e2AG" id="1a" role="39e3Y0">
        <ref role="39e2AK" to="l9j8:63yBSeEXxFF" resolve="typeof_ReportConfigurationErrorStatement" />
        <node concept="385nmt" id="1V" role="385vvn">
          <property role="385vuF" value="typeof_ReportConfigurationErrorStatement" />
          <node concept="3u3nmq" id="1X" role="385v07">
            <property role="3u3nmv" value="6981317760235477739" />
          </node>
        </node>
        <node concept="39e2AT" id="1W" role="39e2AY">
          <ref role="39e2AS" node="$j" resolve="typeof_ReportConfigurationErrorStatement_InferenceRule" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="Q" role="39e2AI">
      <property role="39e3Y2" value="isApplicableMethod" />
      <node concept="39e2AG" id="1Y" role="39e3Y0">
        <ref role="39e2AK" to="l9j8:63yBSeEXxHK" resolve="EditorIsSusbtypeOfEditor" />
        <node concept="385nmt" id="2f" role="385vvn">
          <property role="385vuF" value="EditorIsSusbtypeOfEditor" />
          <node concept="3u3nmq" id="2h" role="385v07">
            <property role="3u3nmv" value="6981317760235477872" />
          </node>
        </node>
        <node concept="39e2AT" id="2g" role="39e2AY">
          <ref role="39e2AS" node="4" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="1Z" role="39e3Y0">
        <ref role="39e2AK" to="l9j8:1glKvNTAkm4" resolve="PersistentConfigurationIsObject" />
        <node concept="385nmt" id="2i" role="385vvn">
          <property role="385vuF" value="PersistentConfigurationIsObject" />
          <node concept="3u3nmq" id="2k" role="385v07">
            <property role="3u3nmv" value="1447276147532973444" />
          </node>
        </node>
        <node concept="39e2AT" id="2j" role="39e2AY">
          <ref role="39e2AS" node="4k" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="20" role="39e3Y0">
        <ref role="39e2AK" to="l9j8:63yBSeEXxF_" resolve="PersistentConfigurationIsPersistentConfiguration" />
        <node concept="385nmt" id="2l" role="385vvn">
          <property role="385vuF" value="PersistentConfigurationIsPersistentConfiguration" />
          <node concept="3u3nmq" id="2n" role="385v07">
            <property role="3u3nmv" value="6981317760235477733" />
          </node>
        </node>
        <node concept="39e2AT" id="2m" role="39e2AY">
          <ref role="39e2AS" node="58" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="21" role="39e3Y0">
        <ref role="39e2AK" to="l9j8:4e6Nb7Lohrr" resolve="TemplatePersistentConfigurationTypeClassifier" />
        <node concept="385nmt" id="2o" role="385vvn">
          <property role="385vuF" value="TemplatePersistentConfigurationTypeClassifier" />
          <node concept="3u3nmq" id="2q" role="385v07">
            <property role="3u3nmv" value="4865801512051349211" />
          </node>
        </node>
        <node concept="39e2AT" id="2p" role="39e2AY">
          <ref role="39e2AS" node="5W" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="22" role="39e3Y0">
        <ref role="39e2AK" to="l9j8:5QxK6Ad4_Da" resolve="TemplatePersistentConfigurationTypeIsTemplatePersistentConfiguration" />
        <node concept="385nmt" id="2r" role="385vvn">
          <property role="385vuF" value="TemplatePersistentConfigurationTypeIsTemplatePersistentConfiguration" />
          <node concept="3u3nmq" id="2t" role="385v07">
            <property role="3u3nmv" value="6746885276348602954" />
          </node>
        </node>
        <node concept="39e2AT" id="2s" role="39e2AY">
          <ref role="39e2AS" node="6M" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="23" role="39e3Y0">
        <ref role="39e2AK" to="l9j8:63yBSeEXxGv" resolve="TemplatePersistentPropertyIsSubtypeOfPersistentConfiguration" />
        <node concept="385nmt" id="2u" role="385vvn">
          <property role="385vuF" value="TemplatePersistentPropertyIsSubtypeOfPersistentConfiguration" />
          <node concept="3u3nmq" id="2w" role="385v07">
            <property role="3u3nmv" value="6981317760235477791" />
          </node>
        </node>
        <node concept="39e2AT" id="2v" role="39e2AY">
          <ref role="39e2AS" node="7A" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="24" role="39e3Y0">
        <ref role="39e2AK" to="l9j8:63yBSeEXAqO" resolve="typeof_Configuration_Parameter" />
        <node concept="385nmt" id="2x" role="385vvn">
          <property role="385vuF" value="typeof_Configuration_Parameter" />
          <node concept="3u3nmq" id="2z" role="385v07">
            <property role="3u3nmv" value="6981317760235497140" />
          </node>
        </node>
        <node concept="39e2AT" id="2y" role="39e2AY">
          <ref role="39e2AS" node="ck" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="25" role="39e3Y0">
        <ref role="39e2AK" to="l9j8:63yBSeEXxHQ" resolve="typeof_EditorExpression" />
        <node concept="385nmt" id="2$" role="385vvn">
          <property role="385vuF" value="typeof_EditorExpression" />
          <node concept="3u3nmq" id="2A" role="385v07">
            <property role="3u3nmv" value="6981317760235477878" />
          </node>
        </node>
        <node concept="39e2AT" id="2_" role="39e2AY">
          <ref role="39e2AS" node="dX" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="26" role="39e3Y0">
        <ref role="39e2AK" to="l9j8:63yBSeEXxIf" resolve="typeof_EditorOperation" />
        <node concept="385nmt" id="2B" role="385vvn">
          <property role="385vuF" value="typeof_EditorOperation" />
          <node concept="3u3nmq" id="2D" role="385v07">
            <property role="3u3nmv" value="6981317760235477903" />
          </node>
        </node>
        <node concept="39e2AT" id="2C" role="39e2AY">
          <ref role="39e2AS" node="gp" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="27" role="39e3Y0">
        <ref role="39e2AK" to="l9j8:63yBSeEXd9B" resolve="typeof_GetEditorOperation" />
        <node concept="385nmt" id="2E" role="385vvn">
          <property role="385vuF" value="typeof_GetEditorOperation" />
          <node concept="3u3nmq" id="2G" role="385v07">
            <property role="3u3nmv" value="6981317760235393639" />
          </node>
        </node>
        <node concept="39e2AT" id="2F" role="39e2AY">
          <ref role="39e2AS" node="kD" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="28" role="39e3Y0">
        <ref role="39e2AK" to="l9j8:2n8I3DYjuYj" resolve="typeof_GridBagConstraints" />
        <node concept="385nmt" id="2H" role="385vvn">
          <property role="385vuF" value="typeof_GridBagConstraints" />
          <node concept="3u3nmq" id="2J" role="385v07">
            <property role="3u3nmv" value="2722628536112115603" />
          </node>
        </node>
        <node concept="39e2AT" id="2I" role="39e2AY">
          <ref role="39e2AS" node="n9" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="29" role="39e3Y0">
        <ref role="39e2AK" to="l9j8:1T5iP2agbYD" resolve="typeof_PersistentConfigurationTemplate" />
        <node concept="385nmt" id="2K" role="385vvn">
          <property role="385vuF" value="typeof_PersistentConfigurationTemplate" />
          <node concept="3u3nmq" id="2M" role="385v07">
            <property role="3u3nmv" value="2181232403819839401" />
          </node>
        </node>
        <node concept="39e2AT" id="2L" role="39e2AY">
          <ref role="39e2AS" node="su" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="2a" role="39e3Y0">
        <ref role="39e2AK" to="l9j8:63yBSeEXxGJ" resolve="typeof_PersistentConfigurationTemplateInitializer" />
        <node concept="385nmt" id="2N" role="385vvn">
          <property role="385vuF" value="typeof_PersistentConfigurationTemplateInitializer" />
          <node concept="3u3nmq" id="2P" role="385v07">
            <property role="3u3nmv" value="6981317760235477807" />
          </node>
        </node>
        <node concept="39e2AT" id="2O" role="39e2AY">
          <ref role="39e2AS" node="pi" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="2b" role="39e3Y0">
        <ref role="39e2AK" to="l9j8:63yBSeEXxFS" resolve="typeof_PersistentPropertyDeclaration" />
        <node concept="385nmt" id="2Q" role="385vvn">
          <property role="385vuF" value="typeof_PersistentPropertyDeclaration" />
          <node concept="3u3nmq" id="2S" role="385v07">
            <property role="3u3nmv" value="6981317760235477752" />
          </node>
        </node>
        <node concept="39e2AT" id="2R" role="39e2AY">
          <ref role="39e2AS" node="tV" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="2c" role="39e3Y0">
        <ref role="39e2AK" to="l9j8:63yBSeEXxGi" resolve="typeof_PersistentPropertyReferenceOperation" />
        <node concept="385nmt" id="2T" role="385vvn">
          <property role="385vuF" value="typeof_PersistentPropertyReferenceOperation" />
          <node concept="3u3nmq" id="2V" role="385v07">
            <property role="3u3nmv" value="6981317760235477778" />
          </node>
        </node>
        <node concept="39e2AT" id="2U" role="39e2AY">
          <ref role="39e2AS" node="xu" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="2d" role="39e3Y0">
        <ref role="39e2AK" to="l9j8:1MVY3kFAiYY" resolve="typeof_ProjectAccessExpression" />
        <node concept="385nmt" id="2W" role="385vvn">
          <property role="385vuF" value="typeof_ProjectAccessExpression" />
          <node concept="3u3nmq" id="2Y" role="385v07">
            <property role="3u3nmv" value="2070521360955289534" />
          </node>
        </node>
        <node concept="39e2AT" id="2X" role="39e2AY">
          <ref role="39e2AS" node="yV" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="2e" role="39e3Y0">
        <ref role="39e2AK" to="l9j8:63yBSeEXxFF" resolve="typeof_ReportConfigurationErrorStatement" />
        <node concept="385nmt" id="2Z" role="385vvn">
          <property role="385vuF" value="typeof_ReportConfigurationErrorStatement" />
          <node concept="3u3nmq" id="31" role="385v07">
            <property role="3u3nmv" value="6981317760235477739" />
          </node>
        </node>
        <node concept="39e2AT" id="30" role="39e2AY">
          <ref role="39e2AS" node="$n" resolve="isApplicableAndPattern" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="R" role="39e2AI">
      <property role="39e3Y2" value="mainMethodForRule" />
      <node concept="39e2AG" id="32" role="39e3Y0">
        <ref role="39e2AK" to="l9j8:63yBSeEXxHK" resolve="EditorIsSusbtypeOfEditor" />
        <node concept="385nmt" id="3j" role="385vvn">
          <property role="385vuF" value="EditorIsSusbtypeOfEditor" />
          <node concept="3u3nmq" id="3l" role="385v07">
            <property role="3u3nmv" value="6981317760235477872" />
          </node>
        </node>
        <node concept="39e2AT" id="3k" role="39e2AY">
          <ref role="39e2AS" node="2" resolve="getSubOrSuperType" />
        </node>
      </node>
      <node concept="39e2AG" id="33" role="39e3Y0">
        <ref role="39e2AK" to="l9j8:1glKvNTAkm4" resolve="PersistentConfigurationIsObject" />
        <node concept="385nmt" id="3m" role="385vvn">
          <property role="385vuF" value="PersistentConfigurationIsObject" />
          <node concept="3u3nmq" id="3o" role="385v07">
            <property role="3u3nmv" value="1447276147532973444" />
          </node>
        </node>
        <node concept="39e2AT" id="3n" role="39e2AY">
          <ref role="39e2AS" node="4i" resolve="getSubOrSuperType" />
        </node>
      </node>
      <node concept="39e2AG" id="34" role="39e3Y0">
        <ref role="39e2AK" to="l9j8:63yBSeEXxF_" resolve="PersistentConfigurationIsPersistentConfiguration" />
        <node concept="385nmt" id="3p" role="385vvn">
          <property role="385vuF" value="PersistentConfigurationIsPersistentConfiguration" />
          <node concept="3u3nmq" id="3r" role="385v07">
            <property role="3u3nmv" value="6981317760235477733" />
          </node>
        </node>
        <node concept="39e2AT" id="3q" role="39e2AY">
          <ref role="39e2AS" node="56" resolve="getSubOrSuperType" />
        </node>
      </node>
      <node concept="39e2AG" id="35" role="39e3Y0">
        <ref role="39e2AK" to="l9j8:4e6Nb7Lohrr" resolve="TemplatePersistentConfigurationTypeClassifier" />
        <node concept="385nmt" id="3s" role="385vvn">
          <property role="385vuF" value="TemplatePersistentConfigurationTypeClassifier" />
          <node concept="3u3nmq" id="3u" role="385v07">
            <property role="3u3nmv" value="4865801512051349211" />
          </node>
        </node>
        <node concept="39e2AT" id="3t" role="39e2AY">
          <ref role="39e2AS" node="5U" resolve="getSubOrSuperType" />
        </node>
      </node>
      <node concept="39e2AG" id="36" role="39e3Y0">
        <ref role="39e2AK" to="l9j8:5QxK6Ad4_Da" resolve="TemplatePersistentConfigurationTypeIsTemplatePersistentConfiguration" />
        <node concept="385nmt" id="3v" role="385vvn">
          <property role="385vuF" value="TemplatePersistentConfigurationTypeIsTemplatePersistentConfiguration" />
          <node concept="3u3nmq" id="3x" role="385v07">
            <property role="3u3nmv" value="6746885276348602954" />
          </node>
        </node>
        <node concept="39e2AT" id="3w" role="39e2AY">
          <ref role="39e2AS" node="6K" resolve="getSubOrSuperType" />
        </node>
      </node>
      <node concept="39e2AG" id="37" role="39e3Y0">
        <ref role="39e2AK" to="l9j8:63yBSeEXxGv" resolve="TemplatePersistentPropertyIsSubtypeOfPersistentConfiguration" />
        <node concept="385nmt" id="3y" role="385vvn">
          <property role="385vuF" value="TemplatePersistentPropertyIsSubtypeOfPersistentConfiguration" />
          <node concept="3u3nmq" id="3$" role="385v07">
            <property role="3u3nmv" value="6981317760235477791" />
          </node>
        </node>
        <node concept="39e2AT" id="3z" role="39e2AY">
          <ref role="39e2AS" node="7$" resolve="getSubOrSuperType" />
        </node>
      </node>
      <node concept="39e2AG" id="38" role="39e3Y0">
        <ref role="39e2AK" to="l9j8:63yBSeEXAqO" resolve="typeof_Configuration_Parameter" />
        <node concept="385nmt" id="3_" role="385vvn">
          <property role="385vuF" value="typeof_Configuration_Parameter" />
          <node concept="3u3nmq" id="3B" role="385v07">
            <property role="3u3nmv" value="6981317760235497140" />
          </node>
        </node>
        <node concept="39e2AT" id="3A" role="39e2AY">
          <ref role="39e2AS" node="ci" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="39" role="39e3Y0">
        <ref role="39e2AK" to="l9j8:63yBSeEXxHQ" resolve="typeof_EditorExpression" />
        <node concept="385nmt" id="3C" role="385vvn">
          <property role="385vuF" value="typeof_EditorExpression" />
          <node concept="3u3nmq" id="3E" role="385v07">
            <property role="3u3nmv" value="6981317760235477878" />
          </node>
        </node>
        <node concept="39e2AT" id="3D" role="39e2AY">
          <ref role="39e2AS" node="dV" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="3a" role="39e3Y0">
        <ref role="39e2AK" to="l9j8:63yBSeEXxIf" resolve="typeof_EditorOperation" />
        <node concept="385nmt" id="3F" role="385vvn">
          <property role="385vuF" value="typeof_EditorOperation" />
          <node concept="3u3nmq" id="3H" role="385v07">
            <property role="3u3nmv" value="6981317760235477903" />
          </node>
        </node>
        <node concept="39e2AT" id="3G" role="39e2AY">
          <ref role="39e2AS" node="gn" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="3b" role="39e3Y0">
        <ref role="39e2AK" to="l9j8:63yBSeEXd9B" resolve="typeof_GetEditorOperation" />
        <node concept="385nmt" id="3I" role="385vvn">
          <property role="385vuF" value="typeof_GetEditorOperation" />
          <node concept="3u3nmq" id="3K" role="385v07">
            <property role="3u3nmv" value="6981317760235393639" />
          </node>
        </node>
        <node concept="39e2AT" id="3J" role="39e2AY">
          <ref role="39e2AS" node="kB" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="3c" role="39e3Y0">
        <ref role="39e2AK" to="l9j8:2n8I3DYjuYj" resolve="typeof_GridBagConstraints" />
        <node concept="385nmt" id="3L" role="385vvn">
          <property role="385vuF" value="typeof_GridBagConstraints" />
          <node concept="3u3nmq" id="3N" role="385v07">
            <property role="3u3nmv" value="2722628536112115603" />
          </node>
        </node>
        <node concept="39e2AT" id="3M" role="39e2AY">
          <ref role="39e2AS" node="n7" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="3d" role="39e3Y0">
        <ref role="39e2AK" to="l9j8:1T5iP2agbYD" resolve="typeof_PersistentConfigurationTemplate" />
        <node concept="385nmt" id="3O" role="385vvn">
          <property role="385vuF" value="typeof_PersistentConfigurationTemplate" />
          <node concept="3u3nmq" id="3Q" role="385v07">
            <property role="3u3nmv" value="2181232403819839401" />
          </node>
        </node>
        <node concept="39e2AT" id="3P" role="39e2AY">
          <ref role="39e2AS" node="ss" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="3e" role="39e3Y0">
        <ref role="39e2AK" to="l9j8:63yBSeEXxGJ" resolve="typeof_PersistentConfigurationTemplateInitializer" />
        <node concept="385nmt" id="3R" role="385vvn">
          <property role="385vuF" value="typeof_PersistentConfigurationTemplateInitializer" />
          <node concept="3u3nmq" id="3T" role="385v07">
            <property role="3u3nmv" value="6981317760235477807" />
          </node>
        </node>
        <node concept="39e2AT" id="3S" role="39e2AY">
          <ref role="39e2AS" node="pg" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="3f" role="39e3Y0">
        <ref role="39e2AK" to="l9j8:63yBSeEXxFS" resolve="typeof_PersistentPropertyDeclaration" />
        <node concept="385nmt" id="3U" role="385vvn">
          <property role="385vuF" value="typeof_PersistentPropertyDeclaration" />
          <node concept="3u3nmq" id="3W" role="385v07">
            <property role="3u3nmv" value="6981317760235477752" />
          </node>
        </node>
        <node concept="39e2AT" id="3V" role="39e2AY">
          <ref role="39e2AS" node="tT" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="3g" role="39e3Y0">
        <ref role="39e2AK" to="l9j8:63yBSeEXxGi" resolve="typeof_PersistentPropertyReferenceOperation" />
        <node concept="385nmt" id="3X" role="385vvn">
          <property role="385vuF" value="typeof_PersistentPropertyReferenceOperation" />
          <node concept="3u3nmq" id="3Z" role="385v07">
            <property role="3u3nmv" value="6981317760235477778" />
          </node>
        </node>
        <node concept="39e2AT" id="3Y" role="39e2AY">
          <ref role="39e2AS" node="xs" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="3h" role="39e3Y0">
        <ref role="39e2AK" to="l9j8:1MVY3kFAiYY" resolve="typeof_ProjectAccessExpression" />
        <node concept="385nmt" id="40" role="385vvn">
          <property role="385vuF" value="typeof_ProjectAccessExpression" />
          <node concept="3u3nmq" id="42" role="385v07">
            <property role="3u3nmv" value="2070521360955289534" />
          </node>
        </node>
        <node concept="39e2AT" id="41" role="39e2AY">
          <ref role="39e2AS" node="yT" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="3i" role="39e3Y0">
        <ref role="39e2AK" to="l9j8:63yBSeEXxFF" resolve="typeof_ReportConfigurationErrorStatement" />
        <node concept="385nmt" id="43" role="385vvn">
          <property role="385vuF" value="typeof_ReportConfigurationErrorStatement" />
          <node concept="3u3nmq" id="45" role="385v07">
            <property role="3u3nmv" value="6981317760235477739" />
          </node>
        </node>
        <node concept="39e2AT" id="44" role="39e2AY">
          <ref role="39e2AS" node="$l" resolve="applyRule" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="S" role="39e2AI">
      <property role="39e3Y2" value="typeVarDeclaration" />
      <node concept="39e2AG" id="46" role="39e3Y0">
        <ref role="39e2AK" to="l9j8:63yBSeEXfsa" resolve="T" />
        <node concept="385nmt" id="48" role="385vvn">
          <property role="385vuF" value="T" />
          <node concept="3u3nmq" id="4a" role="385v07">
            <property role="3u3nmv" value="6981317760235403018" />
          </node>
        </node>
        <node concept="39e2AT" id="49" role="39e2AY">
          <ref role="39e2AS" node="kU" />
        </node>
      </node>
      <node concept="39e2AG" id="47" role="39e3Y0">
        <ref role="39e2AK" to="l9j8:63yBSeEXxHS" resolve="T" />
        <node concept="385nmt" id="4b" role="385vvn">
          <property role="385vuF" value="T" />
          <node concept="3u3nmq" id="4d" role="385v07">
            <property role="3u3nmv" value="6981317760235477880" />
          </node>
        </node>
        <node concept="39e2AT" id="4c" role="39e2AY">
          <ref role="39e2AS" node="ee" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="T" role="39e2AI">
      <property role="39e3Y2" value="descriptorClass" />
      <node concept="39e2AG" id="4e" role="39e3Y0">
        <property role="2mV_xN" value="true" />
        <node concept="39e2AT" id="4f" role="39e2AY">
          <ref role="39e2AS" node="8r" resolve="TypesystemDescriptor" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="4g">
    <property role="TrG5h" value="PersistentConfigurationIsObject_SubtypingRule" />
    <uo k="s:originTrace" v="n:1447276147532973444" />
    <node concept="3clFbW" id="4h" role="jymVt">
      <uo k="s:originTrace" v="n:1447276147532973444" />
      <node concept="3clFbS" id="4p" role="3clF47">
        <uo k="s:originTrace" v="n:1447276147532973444" />
      </node>
      <node concept="3Tm1VV" id="4q" role="1B3o_S">
        <uo k="s:originTrace" v="n:1447276147532973444" />
      </node>
      <node concept="3cqZAl" id="4r" role="3clF45">
        <uo k="s:originTrace" v="n:1447276147532973444" />
      </node>
    </node>
    <node concept="3clFb_" id="4i" role="jymVt">
      <property role="TrG5h" value="getSubOrSuperType" />
      <uo k="s:originTrace" v="n:1447276147532973444" />
      <node concept="3uibUv" id="4s" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        <uo k="s:originTrace" v="n:1447276147532973444" />
      </node>
      <node concept="37vLTG" id="4t" role="3clF46">
        <property role="TrG5h" value="configurationType" />
        <uo k="s:originTrace" v="n:1447276147532973444" />
        <node concept="3Tqbb2" id="4y" role="1tU5fm">
          <uo k="s:originTrace" v="n:1447276147532973444" />
        </node>
      </node>
      <node concept="37vLTG" id="4u" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <uo k="s:originTrace" v="n:1447276147532973444" />
        <node concept="3uibUv" id="4z" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:1447276147532973444" />
        </node>
      </node>
      <node concept="37vLTG" id="4v" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:1447276147532973444" />
        <node concept="3uibUv" id="4$" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:1447276147532973444" />
        </node>
      </node>
      <node concept="3clFbS" id="4w" role="3clF47">
        <uo k="s:originTrace" v="n:1447276147532973445" />
        <node concept="3cpWs6" id="4_" role="3cqZAp">
          <uo k="s:originTrace" v="n:1447276147532973447" />
          <node concept="2c44tf" id="4A" role="3cqZAk">
            <uo k="s:originTrace" v="n:1447276147532973449" />
            <node concept="3uibUv" id="4B" role="2c44tc">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              <uo k="s:originTrace" v="n:1447276147532973452" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4x" role="1B3o_S">
        <uo k="s:originTrace" v="n:1447276147532973444" />
      </node>
    </node>
    <node concept="3clFb_" id="4j" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:1447276147532973444" />
      <node concept="3bZ5Sz" id="4C" role="3clF45">
        <uo k="s:originTrace" v="n:1447276147532973444" />
      </node>
      <node concept="3clFbS" id="4D" role="3clF47">
        <uo k="s:originTrace" v="n:1447276147532973444" />
        <node concept="3cpWs6" id="4F" role="3cqZAp">
          <uo k="s:originTrace" v="n:1447276147532973444" />
          <node concept="35c_gC" id="4G" role="3cqZAk">
            <ref role="35c_gD" to="fb9u:O$iR4J$g0s" resolve="PersistentConfigurationType" />
            <uo k="s:originTrace" v="n:1447276147532973444" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4E" role="1B3o_S">
        <uo k="s:originTrace" v="n:1447276147532973444" />
      </node>
    </node>
    <node concept="3clFb_" id="4k" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:1447276147532973444" />
      <node concept="37vLTG" id="4H" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:1447276147532973444" />
        <node concept="3Tqbb2" id="4L" role="1tU5fm">
          <uo k="s:originTrace" v="n:1447276147532973444" />
        </node>
      </node>
      <node concept="3clFbS" id="4I" role="3clF47">
        <uo k="s:originTrace" v="n:1447276147532973444" />
        <node concept="9aQIb" id="4M" role="3cqZAp">
          <uo k="s:originTrace" v="n:1447276147532973444" />
          <node concept="3clFbS" id="4N" role="9aQI4">
            <uo k="s:originTrace" v="n:1447276147532973444" />
            <node concept="3cpWs6" id="4O" role="3cqZAp">
              <uo k="s:originTrace" v="n:1447276147532973444" />
              <node concept="2ShNRf" id="4P" role="3cqZAk">
                <uo k="s:originTrace" v="n:1447276147532973444" />
                <node concept="1pGfFk" id="4Q" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:1447276147532973444" />
                  <node concept="2OqwBi" id="4R" role="37wK5m">
                    <uo k="s:originTrace" v="n:1447276147532973444" />
                    <node concept="2OqwBi" id="4T" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:1447276147532973444" />
                      <node concept="liA8E" id="4V" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:1447276147532973444" />
                      </node>
                      <node concept="2JrnkZ" id="4W" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:1447276147532973444" />
                        <node concept="37vLTw" id="4X" role="2JrQYb">
                          <ref role="3cqZAo" node="4H" resolve="argument" />
                          <uo k="s:originTrace" v="n:1447276147532973444" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="4U" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:1447276147532973444" />
                      <node concept="1rXfSq" id="4Y" role="37wK5m">
                        <ref role="37wK5l" node="4j" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:1447276147532973444" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="4S" role="37wK5m">
                    <uo k="s:originTrace" v="n:1447276147532973444" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4J" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:1447276147532973444" />
      </node>
      <node concept="3Tm1VV" id="4K" role="1B3o_S">
        <uo k="s:originTrace" v="n:1447276147532973444" />
      </node>
    </node>
    <node concept="3clFb_" id="4l" role="jymVt">
      <property role="TrG5h" value="isWeak" />
      <uo k="s:originTrace" v="n:1447276147532973444" />
      <node concept="3clFbS" id="4Z" role="3clF47">
        <uo k="s:originTrace" v="n:1447276147532973444" />
        <node concept="3cpWs6" id="52" role="3cqZAp">
          <uo k="s:originTrace" v="n:1447276147532973444" />
          <node concept="3clFbT" id="53" role="3cqZAk">
            <uo k="s:originTrace" v="n:1447276147532973444" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="50" role="1B3o_S">
        <uo k="s:originTrace" v="n:1447276147532973444" />
      </node>
      <node concept="10P_77" id="51" role="3clF45">
        <uo k="s:originTrace" v="n:1447276147532973444" />
      </node>
    </node>
    <node concept="3uibUv" id="4m" role="EKbjA">
      <ref role="3uigEE" to="qurh:~ISubtypingRule_Runtime" resolve="ISubtypingRule_Runtime" />
      <uo k="s:originTrace" v="n:1447276147532973444" />
    </node>
    <node concept="3uibUv" id="4n" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~SubtypingRule_Runtime" resolve="SubtypingRule_Runtime" />
      <uo k="s:originTrace" v="n:1447276147532973444" />
    </node>
    <node concept="3Tm1VV" id="4o" role="1B3o_S">
      <uo k="s:originTrace" v="n:1447276147532973444" />
    </node>
  </node>
  <node concept="312cEu" id="54">
    <property role="TrG5h" value="PersistentConfigurationIsPersistentConfiguration_SubtypingRule" />
    <uo k="s:originTrace" v="n:6981317760235477733" />
    <node concept="3clFbW" id="55" role="jymVt">
      <uo k="s:originTrace" v="n:6981317760235477733" />
      <node concept="3clFbS" id="5d" role="3clF47">
        <uo k="s:originTrace" v="n:6981317760235477733" />
      </node>
      <node concept="3Tm1VV" id="5e" role="1B3o_S">
        <uo k="s:originTrace" v="n:6981317760235477733" />
      </node>
      <node concept="3cqZAl" id="5f" role="3clF45">
        <uo k="s:originTrace" v="n:6981317760235477733" />
      </node>
    </node>
    <node concept="3clFb_" id="56" role="jymVt">
      <property role="TrG5h" value="getSubOrSuperType" />
      <uo k="s:originTrace" v="n:6981317760235477733" />
      <node concept="3uibUv" id="5g" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        <uo k="s:originTrace" v="n:6981317760235477733" />
      </node>
      <node concept="37vLTG" id="5h" role="3clF46">
        <property role="TrG5h" value="persistentConfigurationType" />
        <uo k="s:originTrace" v="n:6981317760235477733" />
        <node concept="3Tqbb2" id="5m" role="1tU5fm">
          <uo k="s:originTrace" v="n:6981317760235477733" />
        </node>
      </node>
      <node concept="37vLTG" id="5i" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <uo k="s:originTrace" v="n:6981317760235477733" />
        <node concept="3uibUv" id="5n" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:6981317760235477733" />
        </node>
      </node>
      <node concept="37vLTG" id="5j" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:6981317760235477733" />
        <node concept="3uibUv" id="5o" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:6981317760235477733" />
        </node>
      </node>
      <node concept="3clFbS" id="5k" role="3clF47">
        <uo k="s:originTrace" v="n:6981317760235477734" />
        <node concept="3cpWs6" id="5p" role="3cqZAp">
          <uo k="s:originTrace" v="n:6981317760235477735" />
          <node concept="2pJPEk" id="5q" role="3cqZAk">
            <uo k="s:originTrace" v="n:48168216978189653" />
            <node concept="2pJPED" id="5r" role="2pJPEn">
              <ref role="2pJxaS" to="fb9u:O$iR4J$g0s" resolve="PersistentConfigurationType" />
              <uo k="s:originTrace" v="n:48168216978189652" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5l" role="1B3o_S">
        <uo k="s:originTrace" v="n:6981317760235477733" />
      </node>
    </node>
    <node concept="3clFb_" id="57" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:6981317760235477733" />
      <node concept="3bZ5Sz" id="5s" role="3clF45">
        <uo k="s:originTrace" v="n:6981317760235477733" />
      </node>
      <node concept="3clFbS" id="5t" role="3clF47">
        <uo k="s:originTrace" v="n:6981317760235477733" />
        <node concept="3cpWs6" id="5v" role="3cqZAp">
          <uo k="s:originTrace" v="n:6981317760235477733" />
          <node concept="35c_gC" id="5w" role="3cqZAk">
            <ref role="35c_gD" to="fb9u:O$iR4J$g0s" resolve="PersistentConfigurationType" />
            <uo k="s:originTrace" v="n:6981317760235477733" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5u" role="1B3o_S">
        <uo k="s:originTrace" v="n:6981317760235477733" />
      </node>
    </node>
    <node concept="3clFb_" id="58" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:6981317760235477733" />
      <node concept="37vLTG" id="5x" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:6981317760235477733" />
        <node concept="3Tqbb2" id="5_" role="1tU5fm">
          <uo k="s:originTrace" v="n:6981317760235477733" />
        </node>
      </node>
      <node concept="3clFbS" id="5y" role="3clF47">
        <uo k="s:originTrace" v="n:6981317760235477733" />
        <node concept="9aQIb" id="5A" role="3cqZAp">
          <uo k="s:originTrace" v="n:6981317760235477733" />
          <node concept="3clFbS" id="5B" role="9aQI4">
            <uo k="s:originTrace" v="n:6981317760235477733" />
            <node concept="3cpWs6" id="5C" role="3cqZAp">
              <uo k="s:originTrace" v="n:6981317760235477733" />
              <node concept="2ShNRf" id="5D" role="3cqZAk">
                <uo k="s:originTrace" v="n:6981317760235477733" />
                <node concept="1pGfFk" id="5E" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:6981317760235477733" />
                  <node concept="2OqwBi" id="5F" role="37wK5m">
                    <uo k="s:originTrace" v="n:6981317760235477733" />
                    <node concept="2OqwBi" id="5H" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:6981317760235477733" />
                      <node concept="liA8E" id="5J" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:6981317760235477733" />
                      </node>
                      <node concept="2JrnkZ" id="5K" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:6981317760235477733" />
                        <node concept="37vLTw" id="5L" role="2JrQYb">
                          <ref role="3cqZAo" node="5x" resolve="argument" />
                          <uo k="s:originTrace" v="n:6981317760235477733" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="5I" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:6981317760235477733" />
                      <node concept="1rXfSq" id="5M" role="37wK5m">
                        <ref role="37wK5l" node="57" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:6981317760235477733" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="5G" role="37wK5m">
                    <uo k="s:originTrace" v="n:6981317760235477733" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="5z" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:6981317760235477733" />
      </node>
      <node concept="3Tm1VV" id="5$" role="1B3o_S">
        <uo k="s:originTrace" v="n:6981317760235477733" />
      </node>
    </node>
    <node concept="3clFb_" id="59" role="jymVt">
      <property role="TrG5h" value="isWeak" />
      <uo k="s:originTrace" v="n:6981317760235477733" />
      <node concept="3clFbS" id="5N" role="3clF47">
        <uo k="s:originTrace" v="n:6981317760235477733" />
        <node concept="3cpWs6" id="5Q" role="3cqZAp">
          <uo k="s:originTrace" v="n:6981317760235477733" />
          <node concept="3clFbT" id="5R" role="3cqZAk">
            <property role="3clFbU" value="true" />
            <uo k="s:originTrace" v="n:6981317760235477733" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5O" role="1B3o_S">
        <uo k="s:originTrace" v="n:6981317760235477733" />
      </node>
      <node concept="10P_77" id="5P" role="3clF45">
        <uo k="s:originTrace" v="n:6981317760235477733" />
      </node>
    </node>
    <node concept="3uibUv" id="5a" role="EKbjA">
      <ref role="3uigEE" to="qurh:~ISubtypingRule_Runtime" resolve="ISubtypingRule_Runtime" />
      <uo k="s:originTrace" v="n:6981317760235477733" />
    </node>
    <node concept="3uibUv" id="5b" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~SubtypingRule_Runtime" resolve="SubtypingRule_Runtime" />
      <uo k="s:originTrace" v="n:6981317760235477733" />
    </node>
    <node concept="3Tm1VV" id="5c" role="1B3o_S">
      <uo k="s:originTrace" v="n:6981317760235477733" />
    </node>
  </node>
  <node concept="312cEu" id="5S">
    <property role="3GE5qa" value="template" />
    <property role="TrG5h" value="TemplatePersistentConfigurationTypeClassifier_SubtypingRule" />
    <uo k="s:originTrace" v="n:4865801512051349211" />
    <node concept="3clFbW" id="5T" role="jymVt">
      <uo k="s:originTrace" v="n:4865801512051349211" />
      <node concept="3clFbS" id="61" role="3clF47">
        <uo k="s:originTrace" v="n:4865801512051349211" />
      </node>
      <node concept="3Tm1VV" id="62" role="1B3o_S">
        <uo k="s:originTrace" v="n:4865801512051349211" />
      </node>
      <node concept="3cqZAl" id="63" role="3clF45">
        <uo k="s:originTrace" v="n:4865801512051349211" />
      </node>
    </node>
    <node concept="3clFb_" id="5U" role="jymVt">
      <property role="TrG5h" value="getSubOrSuperType" />
      <uo k="s:originTrace" v="n:4865801512051349211" />
      <node concept="3uibUv" id="64" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        <uo k="s:originTrace" v="n:4865801512051349211" />
      </node>
      <node concept="37vLTG" id="65" role="3clF46">
        <property role="TrG5h" value="tpct" />
        <uo k="s:originTrace" v="n:4865801512051349211" />
        <node concept="3Tqbb2" id="6a" role="1tU5fm">
          <uo k="s:originTrace" v="n:4865801512051349211" />
        </node>
      </node>
      <node concept="37vLTG" id="66" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <uo k="s:originTrace" v="n:4865801512051349211" />
        <node concept="3uibUv" id="6b" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:4865801512051349211" />
        </node>
      </node>
      <node concept="37vLTG" id="67" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:4865801512051349211" />
        <node concept="3uibUv" id="6c" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:4865801512051349211" />
        </node>
      </node>
      <node concept="3clFbS" id="68" role="3clF47">
        <uo k="s:originTrace" v="n:4865801512051349212" />
        <node concept="3clFbF" id="6d" role="3cqZAp">
          <uo k="s:originTrace" v="n:4865801512051349228" />
          <node concept="2pJPEk" id="6e" role="3clFbG">
            <uo k="s:originTrace" v="n:4865801512051349226" />
            <node concept="2pJPED" id="6f" role="2pJPEn">
              <ref role="2pJxaS" to="tpee:g7uibYu" resolve="ClassifierType" />
              <uo k="s:originTrace" v="n:4865801512051349528" />
              <node concept="2pIpSj" id="6g" role="2pJxcM">
                <ref role="2pIpSl" to="tpee:g7uigIF" resolve="classifier" />
                <uo k="s:originTrace" v="n:4865801512051349701" />
                <node concept="36bGnv" id="6h" role="28nt2d">
                  <ref role="36bGnp" to="ic0f:3oW7HLfqDqW" resolve="IPersistentConfiguration" />
                  <uo k="s:originTrace" v="n:4865801512051349878" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="69" role="1B3o_S">
        <uo k="s:originTrace" v="n:4865801512051349211" />
      </node>
    </node>
    <node concept="3clFb_" id="5V" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:4865801512051349211" />
      <node concept="3bZ5Sz" id="6i" role="3clF45">
        <uo k="s:originTrace" v="n:4865801512051349211" />
      </node>
      <node concept="3clFbS" id="6j" role="3clF47">
        <uo k="s:originTrace" v="n:4865801512051349211" />
        <node concept="3cpWs6" id="6l" role="3cqZAp">
          <uo k="s:originTrace" v="n:4865801512051349211" />
          <node concept="35c_gC" id="6m" role="3cqZAk">
            <ref role="35c_gD" to="fb9u:O$iR4J$g3X" resolve="TemplatePersistentConfigurationType" />
            <uo k="s:originTrace" v="n:4865801512051349211" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6k" role="1B3o_S">
        <uo k="s:originTrace" v="n:4865801512051349211" />
      </node>
    </node>
    <node concept="3clFb_" id="5W" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:4865801512051349211" />
      <node concept="37vLTG" id="6n" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:4865801512051349211" />
        <node concept="3Tqbb2" id="6r" role="1tU5fm">
          <uo k="s:originTrace" v="n:4865801512051349211" />
        </node>
      </node>
      <node concept="3clFbS" id="6o" role="3clF47">
        <uo k="s:originTrace" v="n:4865801512051349211" />
        <node concept="9aQIb" id="6s" role="3cqZAp">
          <uo k="s:originTrace" v="n:4865801512051349211" />
          <node concept="3clFbS" id="6t" role="9aQI4">
            <uo k="s:originTrace" v="n:4865801512051349211" />
            <node concept="3cpWs6" id="6u" role="3cqZAp">
              <uo k="s:originTrace" v="n:4865801512051349211" />
              <node concept="2ShNRf" id="6v" role="3cqZAk">
                <uo k="s:originTrace" v="n:4865801512051349211" />
                <node concept="1pGfFk" id="6w" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:4865801512051349211" />
                  <node concept="2OqwBi" id="6x" role="37wK5m">
                    <uo k="s:originTrace" v="n:4865801512051349211" />
                    <node concept="2OqwBi" id="6z" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:4865801512051349211" />
                      <node concept="liA8E" id="6_" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:4865801512051349211" />
                      </node>
                      <node concept="2JrnkZ" id="6A" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:4865801512051349211" />
                        <node concept="37vLTw" id="6B" role="2JrQYb">
                          <ref role="3cqZAo" node="6n" resolve="argument" />
                          <uo k="s:originTrace" v="n:4865801512051349211" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="6$" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:4865801512051349211" />
                      <node concept="1rXfSq" id="6C" role="37wK5m">
                        <ref role="37wK5l" node="5V" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:4865801512051349211" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="6y" role="37wK5m">
                    <uo k="s:originTrace" v="n:4865801512051349211" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="6p" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:4865801512051349211" />
      </node>
      <node concept="3Tm1VV" id="6q" role="1B3o_S">
        <uo k="s:originTrace" v="n:4865801512051349211" />
      </node>
    </node>
    <node concept="3clFb_" id="5X" role="jymVt">
      <property role="TrG5h" value="isWeak" />
      <uo k="s:originTrace" v="n:4865801512051349211" />
      <node concept="3clFbS" id="6D" role="3clF47">
        <uo k="s:originTrace" v="n:4865801512051349211" />
        <node concept="3cpWs6" id="6G" role="3cqZAp">
          <uo k="s:originTrace" v="n:4865801512051349211" />
          <node concept="3clFbT" id="6H" role="3cqZAk">
            <uo k="s:originTrace" v="n:4865801512051349211" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6E" role="1B3o_S">
        <uo k="s:originTrace" v="n:4865801512051349211" />
      </node>
      <node concept="10P_77" id="6F" role="3clF45">
        <uo k="s:originTrace" v="n:4865801512051349211" />
      </node>
    </node>
    <node concept="3uibUv" id="5Y" role="EKbjA">
      <ref role="3uigEE" to="qurh:~ISubtypingRule_Runtime" resolve="ISubtypingRule_Runtime" />
      <uo k="s:originTrace" v="n:4865801512051349211" />
    </node>
    <node concept="3uibUv" id="5Z" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~SubtypingRule_Runtime" resolve="SubtypingRule_Runtime" />
      <uo k="s:originTrace" v="n:4865801512051349211" />
    </node>
    <node concept="3Tm1VV" id="60" role="1B3o_S">
      <uo k="s:originTrace" v="n:4865801512051349211" />
    </node>
  </node>
  <node concept="312cEu" id="6I">
    <property role="3GE5qa" value="template" />
    <property role="TrG5h" value="TemplatePersistentConfigurationTypeIsTemplatePersistentConfiguration_SubtypingRule" />
    <uo k="s:originTrace" v="n:6746885276348602954" />
    <node concept="3clFbW" id="6J" role="jymVt">
      <uo k="s:originTrace" v="n:6746885276348602954" />
      <node concept="3clFbS" id="6R" role="3clF47">
        <uo k="s:originTrace" v="n:6746885276348602954" />
      </node>
      <node concept="3Tm1VV" id="6S" role="1B3o_S">
        <uo k="s:originTrace" v="n:6746885276348602954" />
      </node>
      <node concept="3cqZAl" id="6T" role="3clF45">
        <uo k="s:originTrace" v="n:6746885276348602954" />
      </node>
    </node>
    <node concept="3clFb_" id="6K" role="jymVt">
      <property role="TrG5h" value="getSubOrSuperType" />
      <uo k="s:originTrace" v="n:6746885276348602954" />
      <node concept="3uibUv" id="6U" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        <uo k="s:originTrace" v="n:6746885276348602954" />
      </node>
      <node concept="37vLTG" id="6V" role="3clF46">
        <property role="TrG5h" value="templatePersistentConfigurationType" />
        <uo k="s:originTrace" v="n:6746885276348602954" />
        <node concept="3Tqbb2" id="70" role="1tU5fm">
          <uo k="s:originTrace" v="n:6746885276348602954" />
        </node>
      </node>
      <node concept="37vLTG" id="6W" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <uo k="s:originTrace" v="n:6746885276348602954" />
        <node concept="3uibUv" id="71" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:6746885276348602954" />
        </node>
      </node>
      <node concept="37vLTG" id="6X" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:6746885276348602954" />
        <node concept="3uibUv" id="72" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:6746885276348602954" />
        </node>
      </node>
      <node concept="3clFbS" id="6Y" role="3clF47">
        <uo k="s:originTrace" v="n:6746885276348602955" />
        <node concept="3cpWs6" id="73" role="3cqZAp">
          <uo k="s:originTrace" v="n:6746885276348607764" />
          <node concept="2pJPEk" id="74" role="3cqZAk">
            <uo k="s:originTrace" v="n:48168216978189678" />
            <node concept="2pJPED" id="75" role="2pJPEn">
              <ref role="2pJxaS" to="fb9u:O$iR4J$g3X" resolve="TemplatePersistentConfigurationType" />
              <uo k="s:originTrace" v="n:48168216978189677" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6Z" role="1B3o_S">
        <uo k="s:originTrace" v="n:6746885276348602954" />
      </node>
    </node>
    <node concept="3clFb_" id="6L" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:6746885276348602954" />
      <node concept="3bZ5Sz" id="76" role="3clF45">
        <uo k="s:originTrace" v="n:6746885276348602954" />
      </node>
      <node concept="3clFbS" id="77" role="3clF47">
        <uo k="s:originTrace" v="n:6746885276348602954" />
        <node concept="3cpWs6" id="79" role="3cqZAp">
          <uo k="s:originTrace" v="n:6746885276348602954" />
          <node concept="35c_gC" id="7a" role="3cqZAk">
            <ref role="35c_gD" to="fb9u:O$iR4J$g3X" resolve="TemplatePersistentConfigurationType" />
            <uo k="s:originTrace" v="n:6746885276348602954" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="78" role="1B3o_S">
        <uo k="s:originTrace" v="n:6746885276348602954" />
      </node>
    </node>
    <node concept="3clFb_" id="6M" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:6746885276348602954" />
      <node concept="37vLTG" id="7b" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:6746885276348602954" />
        <node concept="3Tqbb2" id="7f" role="1tU5fm">
          <uo k="s:originTrace" v="n:6746885276348602954" />
        </node>
      </node>
      <node concept="3clFbS" id="7c" role="3clF47">
        <uo k="s:originTrace" v="n:6746885276348602954" />
        <node concept="9aQIb" id="7g" role="3cqZAp">
          <uo k="s:originTrace" v="n:6746885276348602954" />
          <node concept="3clFbS" id="7h" role="9aQI4">
            <uo k="s:originTrace" v="n:6746885276348602954" />
            <node concept="3cpWs6" id="7i" role="3cqZAp">
              <uo k="s:originTrace" v="n:6746885276348602954" />
              <node concept="2ShNRf" id="7j" role="3cqZAk">
                <uo k="s:originTrace" v="n:6746885276348602954" />
                <node concept="1pGfFk" id="7k" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:6746885276348602954" />
                  <node concept="2OqwBi" id="7l" role="37wK5m">
                    <uo k="s:originTrace" v="n:6746885276348602954" />
                    <node concept="2OqwBi" id="7n" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:6746885276348602954" />
                      <node concept="liA8E" id="7p" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:6746885276348602954" />
                      </node>
                      <node concept="2JrnkZ" id="7q" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:6746885276348602954" />
                        <node concept="37vLTw" id="7r" role="2JrQYb">
                          <ref role="3cqZAo" node="7b" resolve="argument" />
                          <uo k="s:originTrace" v="n:6746885276348602954" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="7o" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:6746885276348602954" />
                      <node concept="1rXfSq" id="7s" role="37wK5m">
                        <ref role="37wK5l" node="6L" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:6746885276348602954" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="7m" role="37wK5m">
                    <uo k="s:originTrace" v="n:6746885276348602954" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7d" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:6746885276348602954" />
      </node>
      <node concept="3Tm1VV" id="7e" role="1B3o_S">
        <uo k="s:originTrace" v="n:6746885276348602954" />
      </node>
    </node>
    <node concept="3clFb_" id="6N" role="jymVt">
      <property role="TrG5h" value="isWeak" />
      <uo k="s:originTrace" v="n:6746885276348602954" />
      <node concept="3clFbS" id="7t" role="3clF47">
        <uo k="s:originTrace" v="n:6746885276348602954" />
        <node concept="3cpWs6" id="7w" role="3cqZAp">
          <uo k="s:originTrace" v="n:6746885276348602954" />
          <node concept="3clFbT" id="7x" role="3cqZAk">
            <property role="3clFbU" value="true" />
            <uo k="s:originTrace" v="n:6746885276348602954" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7u" role="1B3o_S">
        <uo k="s:originTrace" v="n:6746885276348602954" />
      </node>
      <node concept="10P_77" id="7v" role="3clF45">
        <uo k="s:originTrace" v="n:6746885276348602954" />
      </node>
    </node>
    <node concept="3uibUv" id="6O" role="EKbjA">
      <ref role="3uigEE" to="qurh:~ISubtypingRule_Runtime" resolve="ISubtypingRule_Runtime" />
      <uo k="s:originTrace" v="n:6746885276348602954" />
    </node>
    <node concept="3uibUv" id="6P" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~SubtypingRule_Runtime" resolve="SubtypingRule_Runtime" />
      <uo k="s:originTrace" v="n:6746885276348602954" />
    </node>
    <node concept="3Tm1VV" id="6Q" role="1B3o_S">
      <uo k="s:originTrace" v="n:6746885276348602954" />
    </node>
  </node>
  <node concept="312cEu" id="7y">
    <property role="3GE5qa" value="template" />
    <property role="TrG5h" value="TemplatePersistentPropertyIsSubtypeOfPersistentConfiguration_SubtypingRule" />
    <uo k="s:originTrace" v="n:6981317760235477791" />
    <node concept="3clFbW" id="7z" role="jymVt">
      <uo k="s:originTrace" v="n:6981317760235477791" />
      <node concept="3clFbS" id="7F" role="3clF47">
        <uo k="s:originTrace" v="n:6981317760235477791" />
      </node>
      <node concept="3Tm1VV" id="7G" role="1B3o_S">
        <uo k="s:originTrace" v="n:6981317760235477791" />
      </node>
      <node concept="3cqZAl" id="7H" role="3clF45">
        <uo k="s:originTrace" v="n:6981317760235477791" />
      </node>
    </node>
    <node concept="3clFb_" id="7$" role="jymVt">
      <property role="TrG5h" value="getSubOrSuperType" />
      <uo k="s:originTrace" v="n:6981317760235477791" />
      <node concept="3uibUv" id="7I" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        <uo k="s:originTrace" v="n:6981317760235477791" />
      </node>
      <node concept="37vLTG" id="7J" role="3clF46">
        <property role="TrG5h" value="templatePersistentPropertyType" />
        <uo k="s:originTrace" v="n:6981317760235477791" />
        <node concept="3Tqbb2" id="7O" role="1tU5fm">
          <uo k="s:originTrace" v="n:6981317760235477791" />
        </node>
      </node>
      <node concept="37vLTG" id="7K" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <uo k="s:originTrace" v="n:6981317760235477791" />
        <node concept="3uibUv" id="7P" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:6981317760235477791" />
        </node>
      </node>
      <node concept="37vLTG" id="7L" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:6981317760235477791" />
        <node concept="3uibUv" id="7Q" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:6981317760235477791" />
        </node>
      </node>
      <node concept="3clFbS" id="7M" role="3clF47">
        <uo k="s:originTrace" v="n:6981317760235477792" />
        <node concept="3cpWs6" id="7R" role="3cqZAp">
          <uo k="s:originTrace" v="n:6981317760235477793" />
          <node concept="2pJPEk" id="7S" role="3cqZAk">
            <uo k="s:originTrace" v="n:48168216978189781" />
            <node concept="2pJPED" id="7T" role="2pJPEn">
              <ref role="2pJxaS" to="fb9u:O$iR4J$g0s" resolve="PersistentConfigurationType" />
              <uo k="s:originTrace" v="n:48168216978189778" />
              <node concept="2pIpSj" id="7U" role="2pJxcM">
                <ref role="2pIpSl" to="fb9u:O$iR4J$g0t" resolve="persistentConfiguration" />
                <uo k="s:originTrace" v="n:48168216978189779" />
                <node concept="36biLy" id="7V" role="28nt2d">
                  <uo k="s:originTrace" v="n:48168216978189780" />
                  <node concept="2OqwBi" id="7W" role="36biLW">
                    <uo k="s:originTrace" v="n:6981317760235477797" />
                    <node concept="37vLTw" id="7X" role="2Oq$k0">
                      <ref role="3cqZAo" node="7J" resolve="templatePersistentPropertyType" />
                      <uo k="s:originTrace" v="n:6981317760235477798" />
                    </node>
                    <node concept="3TrEf2" id="7Y" role="2OqNvi">
                      <ref role="3Tt5mk" to="fb9u:O$iR4J$g3Y" resolve="template" />
                      <uo k="s:originTrace" v="n:6981317760235477799" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7N" role="1B3o_S">
        <uo k="s:originTrace" v="n:6981317760235477791" />
      </node>
    </node>
    <node concept="3clFb_" id="7_" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:6981317760235477791" />
      <node concept="3bZ5Sz" id="7Z" role="3clF45">
        <uo k="s:originTrace" v="n:6981317760235477791" />
      </node>
      <node concept="3clFbS" id="80" role="3clF47">
        <uo k="s:originTrace" v="n:6981317760235477791" />
        <node concept="3cpWs6" id="82" role="3cqZAp">
          <uo k="s:originTrace" v="n:6981317760235477791" />
          <node concept="35c_gC" id="83" role="3cqZAk">
            <ref role="35c_gD" to="fb9u:O$iR4J$g3X" resolve="TemplatePersistentConfigurationType" />
            <uo k="s:originTrace" v="n:6981317760235477791" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="81" role="1B3o_S">
        <uo k="s:originTrace" v="n:6981317760235477791" />
      </node>
    </node>
    <node concept="3clFb_" id="7A" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:6981317760235477791" />
      <node concept="37vLTG" id="84" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:6981317760235477791" />
        <node concept="3Tqbb2" id="88" role="1tU5fm">
          <uo k="s:originTrace" v="n:6981317760235477791" />
        </node>
      </node>
      <node concept="3clFbS" id="85" role="3clF47">
        <uo k="s:originTrace" v="n:6981317760235477791" />
        <node concept="9aQIb" id="89" role="3cqZAp">
          <uo k="s:originTrace" v="n:6981317760235477791" />
          <node concept="3clFbS" id="8a" role="9aQI4">
            <uo k="s:originTrace" v="n:6981317760235477791" />
            <node concept="3cpWs6" id="8b" role="3cqZAp">
              <uo k="s:originTrace" v="n:6981317760235477791" />
              <node concept="2ShNRf" id="8c" role="3cqZAk">
                <uo k="s:originTrace" v="n:6981317760235477791" />
                <node concept="1pGfFk" id="8d" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:6981317760235477791" />
                  <node concept="2OqwBi" id="8e" role="37wK5m">
                    <uo k="s:originTrace" v="n:6981317760235477791" />
                    <node concept="2OqwBi" id="8g" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:6981317760235477791" />
                      <node concept="liA8E" id="8i" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:6981317760235477791" />
                      </node>
                      <node concept="2JrnkZ" id="8j" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:6981317760235477791" />
                        <node concept="37vLTw" id="8k" role="2JrQYb">
                          <ref role="3cqZAo" node="84" resolve="argument" />
                          <uo k="s:originTrace" v="n:6981317760235477791" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="8h" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:6981317760235477791" />
                      <node concept="1rXfSq" id="8l" role="37wK5m">
                        <ref role="37wK5l" node="7_" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:6981317760235477791" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="8f" role="37wK5m">
                    <uo k="s:originTrace" v="n:6981317760235477791" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="86" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:6981317760235477791" />
      </node>
      <node concept="3Tm1VV" id="87" role="1B3o_S">
        <uo k="s:originTrace" v="n:6981317760235477791" />
      </node>
    </node>
    <node concept="3clFb_" id="7B" role="jymVt">
      <property role="TrG5h" value="isWeak" />
      <uo k="s:originTrace" v="n:6981317760235477791" />
      <node concept="3clFbS" id="8m" role="3clF47">
        <uo k="s:originTrace" v="n:6981317760235477791" />
        <node concept="3cpWs6" id="8p" role="3cqZAp">
          <uo k="s:originTrace" v="n:6981317760235477791" />
          <node concept="3clFbT" id="8q" role="3cqZAk">
            <uo k="s:originTrace" v="n:6981317760235477791" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="8n" role="1B3o_S">
        <uo k="s:originTrace" v="n:6981317760235477791" />
      </node>
      <node concept="10P_77" id="8o" role="3clF45">
        <uo k="s:originTrace" v="n:6981317760235477791" />
      </node>
    </node>
    <node concept="3uibUv" id="7C" role="EKbjA">
      <ref role="3uigEE" to="qurh:~ISubtypingRule_Runtime" resolve="ISubtypingRule_Runtime" />
      <uo k="s:originTrace" v="n:6981317760235477791" />
    </node>
    <node concept="3uibUv" id="7D" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~SubtypingRule_Runtime" resolve="SubtypingRule_Runtime" />
      <uo k="s:originTrace" v="n:6981317760235477791" />
    </node>
    <node concept="3Tm1VV" id="7E" role="1B3o_S">
      <uo k="s:originTrace" v="n:6981317760235477791" />
    </node>
  </node>
  <node concept="312cEu" id="8r">
    <property role="TrG5h" value="TypesystemDescriptor" />
    <node concept="3clFbW" id="8s" role="jymVt">
      <node concept="3clFbS" id="8v" role="3clF47">
        <node concept="9aQIb" id="8y" role="3cqZAp">
          <node concept="3clFbS" id="8N" role="9aQI4">
            <node concept="3cpWs8" id="8O" role="3cqZAp">
              <node concept="3cpWsn" id="8Q" role="3cpWs9">
                <property role="TrG5h" value="inferenceRule" />
                <node concept="2ShNRf" id="8R" role="33vP2m">
                  <node concept="1pGfFk" id="8T" role="2ShVmc">
                    <ref role="37wK5l" node="ch" resolve="typeof_Configuration_Parameter_InferenceRule" />
                  </node>
                </node>
                <node concept="3uibUv" id="8S" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="8P" role="3cqZAp">
              <node concept="2OqwBi" id="8U" role="3clFbG">
                <node concept="liA8E" id="8V" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="8X" role="37wK5m">
                    <ref role="3cqZAo" node="8Q" resolve="inferenceRule" />
                  </node>
                </node>
                <node concept="2OqwBi" id="8W" role="2Oq$k0">
                  <node concept="Xjq3P" id="8Y" role="2Oq$k0" />
                  <node concept="2OwXpG" id="8Z" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myInferenceRules" resolve="myInferenceRules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="8z" role="3cqZAp">
          <node concept="3clFbS" id="90" role="9aQI4">
            <node concept="3cpWs8" id="91" role="3cqZAp">
              <node concept="3cpWsn" id="93" role="3cpWs9">
                <property role="TrG5h" value="inferenceRule" />
                <node concept="2ShNRf" id="94" role="33vP2m">
                  <node concept="1pGfFk" id="96" role="2ShVmc">
                    <ref role="37wK5l" node="dU" resolve="typeof_EditorExpression_InferenceRule" />
                  </node>
                </node>
                <node concept="3uibUv" id="95" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="92" role="3cqZAp">
              <node concept="2OqwBi" id="97" role="3clFbG">
                <node concept="liA8E" id="98" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="9a" role="37wK5m">
                    <ref role="3cqZAo" node="93" resolve="inferenceRule" />
                  </node>
                </node>
                <node concept="2OqwBi" id="99" role="2Oq$k0">
                  <node concept="Xjq3P" id="9b" role="2Oq$k0" />
                  <node concept="2OwXpG" id="9c" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myInferenceRules" resolve="myInferenceRules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="8$" role="3cqZAp">
          <node concept="3clFbS" id="9d" role="9aQI4">
            <node concept="3cpWs8" id="9e" role="3cqZAp">
              <node concept="3cpWsn" id="9g" role="3cpWs9">
                <property role="TrG5h" value="inferenceRule" />
                <node concept="2ShNRf" id="9h" role="33vP2m">
                  <node concept="1pGfFk" id="9j" role="2ShVmc">
                    <ref role="37wK5l" node="gm" resolve="typeof_EditorOperation_InferenceRule" />
                  </node>
                </node>
                <node concept="3uibUv" id="9i" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="9f" role="3cqZAp">
              <node concept="2OqwBi" id="9k" role="3clFbG">
                <node concept="liA8E" id="9l" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="9n" role="37wK5m">
                    <ref role="3cqZAo" node="9g" resolve="inferenceRule" />
                  </node>
                </node>
                <node concept="2OqwBi" id="9m" role="2Oq$k0">
                  <node concept="Xjq3P" id="9o" role="2Oq$k0" />
                  <node concept="2OwXpG" id="9p" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myInferenceRules" resolve="myInferenceRules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="8_" role="3cqZAp">
          <node concept="3clFbS" id="9q" role="9aQI4">
            <node concept="3cpWs8" id="9r" role="3cqZAp">
              <node concept="3cpWsn" id="9t" role="3cpWs9">
                <property role="TrG5h" value="inferenceRule" />
                <node concept="2ShNRf" id="9u" role="33vP2m">
                  <node concept="1pGfFk" id="9w" role="2ShVmc">
                    <ref role="37wK5l" node="kA" resolve="typeof_GetEditorOperation_InferenceRule" />
                  </node>
                </node>
                <node concept="3uibUv" id="9v" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="9s" role="3cqZAp">
              <node concept="2OqwBi" id="9x" role="3clFbG">
                <node concept="liA8E" id="9y" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="9$" role="37wK5m">
                    <ref role="3cqZAo" node="9t" resolve="inferenceRule" />
                  </node>
                </node>
                <node concept="2OqwBi" id="9z" role="2Oq$k0">
                  <node concept="Xjq3P" id="9_" role="2Oq$k0" />
                  <node concept="2OwXpG" id="9A" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myInferenceRules" resolve="myInferenceRules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="8A" role="3cqZAp">
          <node concept="3clFbS" id="9B" role="9aQI4">
            <node concept="3cpWs8" id="9C" role="3cqZAp">
              <node concept="3cpWsn" id="9E" role="3cpWs9">
                <property role="TrG5h" value="inferenceRule" />
                <node concept="2ShNRf" id="9F" role="33vP2m">
                  <node concept="1pGfFk" id="9H" role="2ShVmc">
                    <ref role="37wK5l" node="n6" resolve="typeof_GridBagConstraints_InferenceRule" />
                  </node>
                </node>
                <node concept="3uibUv" id="9G" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="9D" role="3cqZAp">
              <node concept="2OqwBi" id="9I" role="3clFbG">
                <node concept="liA8E" id="9J" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="9L" role="37wK5m">
                    <ref role="3cqZAo" node="9E" resolve="inferenceRule" />
                  </node>
                </node>
                <node concept="2OqwBi" id="9K" role="2Oq$k0">
                  <node concept="Xjq3P" id="9M" role="2Oq$k0" />
                  <node concept="2OwXpG" id="9N" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myInferenceRules" resolve="myInferenceRules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="8B" role="3cqZAp">
          <node concept="3clFbS" id="9O" role="9aQI4">
            <node concept="3cpWs8" id="9P" role="3cqZAp">
              <node concept="3cpWsn" id="9R" role="3cpWs9">
                <property role="TrG5h" value="inferenceRule" />
                <node concept="2ShNRf" id="9S" role="33vP2m">
                  <node concept="1pGfFk" id="9U" role="2ShVmc">
                    <ref role="37wK5l" node="sr" resolve="typeof_PersistentConfigurationTemplate_InferenceRule" />
                  </node>
                </node>
                <node concept="3uibUv" id="9T" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="9Q" role="3cqZAp">
              <node concept="2OqwBi" id="9V" role="3clFbG">
                <node concept="liA8E" id="9W" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="9Y" role="37wK5m">
                    <ref role="3cqZAo" node="9R" resolve="inferenceRule" />
                  </node>
                </node>
                <node concept="2OqwBi" id="9X" role="2Oq$k0">
                  <node concept="Xjq3P" id="9Z" role="2Oq$k0" />
                  <node concept="2OwXpG" id="a0" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myInferenceRules" resolve="myInferenceRules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="8C" role="3cqZAp">
          <node concept="3clFbS" id="a1" role="9aQI4">
            <node concept="3cpWs8" id="a2" role="3cqZAp">
              <node concept="3cpWsn" id="a4" role="3cpWs9">
                <property role="TrG5h" value="inferenceRule" />
                <node concept="2ShNRf" id="a5" role="33vP2m">
                  <node concept="1pGfFk" id="a7" role="2ShVmc">
                    <ref role="37wK5l" node="pf" resolve="typeof_PersistentConfigurationTemplateInitializer_InferenceRule" />
                  </node>
                </node>
                <node concept="3uibUv" id="a6" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="a3" role="3cqZAp">
              <node concept="2OqwBi" id="a8" role="3clFbG">
                <node concept="liA8E" id="a9" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="ab" role="37wK5m">
                    <ref role="3cqZAo" node="a4" resolve="inferenceRule" />
                  </node>
                </node>
                <node concept="2OqwBi" id="aa" role="2Oq$k0">
                  <node concept="Xjq3P" id="ac" role="2Oq$k0" />
                  <node concept="2OwXpG" id="ad" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myInferenceRules" resolve="myInferenceRules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="8D" role="3cqZAp">
          <node concept="3clFbS" id="ae" role="9aQI4">
            <node concept="3cpWs8" id="af" role="3cqZAp">
              <node concept="3cpWsn" id="ah" role="3cpWs9">
                <property role="TrG5h" value="inferenceRule" />
                <node concept="2ShNRf" id="ai" role="33vP2m">
                  <node concept="1pGfFk" id="ak" role="2ShVmc">
                    <ref role="37wK5l" node="tS" resolve="typeof_PersistentPropertyDeclaration_InferenceRule" />
                  </node>
                </node>
                <node concept="3uibUv" id="aj" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="ag" role="3cqZAp">
              <node concept="2OqwBi" id="al" role="3clFbG">
                <node concept="liA8E" id="am" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="ao" role="37wK5m">
                    <ref role="3cqZAo" node="ah" resolve="inferenceRule" />
                  </node>
                </node>
                <node concept="2OqwBi" id="an" role="2Oq$k0">
                  <node concept="Xjq3P" id="ap" role="2Oq$k0" />
                  <node concept="2OwXpG" id="aq" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myInferenceRules" resolve="myInferenceRules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="8E" role="3cqZAp">
          <node concept="3clFbS" id="ar" role="9aQI4">
            <node concept="3cpWs8" id="as" role="3cqZAp">
              <node concept="3cpWsn" id="au" role="3cpWs9">
                <property role="TrG5h" value="inferenceRule" />
                <node concept="2ShNRf" id="av" role="33vP2m">
                  <node concept="1pGfFk" id="ax" role="2ShVmc">
                    <ref role="37wK5l" node="xr" resolve="typeof_PersistentPropertyReferenceOperation_InferenceRule" />
                  </node>
                </node>
                <node concept="3uibUv" id="aw" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="at" role="3cqZAp">
              <node concept="2OqwBi" id="ay" role="3clFbG">
                <node concept="liA8E" id="az" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="a_" role="37wK5m">
                    <ref role="3cqZAo" node="au" resolve="inferenceRule" />
                  </node>
                </node>
                <node concept="2OqwBi" id="a$" role="2Oq$k0">
                  <node concept="Xjq3P" id="aA" role="2Oq$k0" />
                  <node concept="2OwXpG" id="aB" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myInferenceRules" resolve="myInferenceRules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="8F" role="3cqZAp">
          <node concept="3clFbS" id="aC" role="9aQI4">
            <node concept="3cpWs8" id="aD" role="3cqZAp">
              <node concept="3cpWsn" id="aF" role="3cpWs9">
                <property role="TrG5h" value="inferenceRule" />
                <node concept="2ShNRf" id="aG" role="33vP2m">
                  <node concept="1pGfFk" id="aI" role="2ShVmc">
                    <ref role="37wK5l" node="yS" resolve="typeof_ProjectAccessExpression_InferenceRule" />
                  </node>
                </node>
                <node concept="3uibUv" id="aH" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="aE" role="3cqZAp">
              <node concept="2OqwBi" id="aJ" role="3clFbG">
                <node concept="liA8E" id="aK" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="aM" role="37wK5m">
                    <ref role="3cqZAo" node="aF" resolve="inferenceRule" />
                  </node>
                </node>
                <node concept="2OqwBi" id="aL" role="2Oq$k0">
                  <node concept="Xjq3P" id="aN" role="2Oq$k0" />
                  <node concept="2OwXpG" id="aO" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myInferenceRules" resolve="myInferenceRules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="8G" role="3cqZAp">
          <node concept="3clFbS" id="aP" role="9aQI4">
            <node concept="3cpWs8" id="aQ" role="3cqZAp">
              <node concept="3cpWsn" id="aS" role="3cpWs9">
                <property role="TrG5h" value="inferenceRule" />
                <node concept="2ShNRf" id="aT" role="33vP2m">
                  <node concept="1pGfFk" id="aV" role="2ShVmc">
                    <ref role="37wK5l" node="$k" resolve="typeof_ReportConfigurationErrorStatement_InferenceRule" />
                  </node>
                </node>
                <node concept="3uibUv" id="aU" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="aR" role="3cqZAp">
              <node concept="2OqwBi" id="aW" role="3clFbG">
                <node concept="liA8E" id="aX" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="aZ" role="37wK5m">
                    <ref role="3cqZAo" node="aS" resolve="inferenceRule" />
                  </node>
                </node>
                <node concept="2OqwBi" id="aY" role="2Oq$k0">
                  <node concept="Xjq3P" id="b0" role="2Oq$k0" />
                  <node concept="2OwXpG" id="b1" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myInferenceRules" resolve="myInferenceRules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="8H" role="3cqZAp">
          <node concept="3clFbS" id="b2" role="9aQI4">
            <node concept="3cpWs8" id="b3" role="3cqZAp">
              <node concept="3cpWsn" id="b5" role="3cpWs9">
                <property role="TrG5h" value="subtypingRule" />
                <node concept="3uibUv" id="b6" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~SubtypingRule_Runtime" resolve="SubtypingRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="b7" role="33vP2m">
                  <node concept="1pGfFk" id="b8" role="2ShVmc">
                    <ref role="37wK5l" node="1" resolve="EditorIsSusbtypeOfEditor_SubtypingRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="b4" role="3cqZAp">
              <node concept="2OqwBi" id="b9" role="3clFbG">
                <node concept="2OqwBi" id="ba" role="2Oq$k0">
                  <node concept="2OwXpG" id="bc" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.mySubtypingRules" resolve="mySubtypingRules" />
                  </node>
                  <node concept="Xjq3P" id="bd" role="2Oq$k0" />
                </node>
                <node concept="liA8E" id="bb" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="be" role="37wK5m">
                    <ref role="3cqZAo" node="b5" resolve="subtypingRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="8I" role="3cqZAp">
          <node concept="3clFbS" id="bf" role="9aQI4">
            <node concept="3cpWs8" id="bg" role="3cqZAp">
              <node concept="3cpWsn" id="bi" role="3cpWs9">
                <property role="TrG5h" value="subtypingRule" />
                <node concept="3uibUv" id="bj" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~SubtypingRule_Runtime" resolve="SubtypingRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="bk" role="33vP2m">
                  <node concept="1pGfFk" id="bl" role="2ShVmc">
                    <ref role="37wK5l" node="4h" resolve="PersistentConfigurationIsObject_SubtypingRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="bh" role="3cqZAp">
              <node concept="2OqwBi" id="bm" role="3clFbG">
                <node concept="2OqwBi" id="bn" role="2Oq$k0">
                  <node concept="2OwXpG" id="bp" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.mySubtypingRules" resolve="mySubtypingRules" />
                  </node>
                  <node concept="Xjq3P" id="bq" role="2Oq$k0" />
                </node>
                <node concept="liA8E" id="bo" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="br" role="37wK5m">
                    <ref role="3cqZAo" node="bi" resolve="subtypingRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="8J" role="3cqZAp">
          <node concept="3clFbS" id="bs" role="9aQI4">
            <node concept="3cpWs8" id="bt" role="3cqZAp">
              <node concept="3cpWsn" id="bv" role="3cpWs9">
                <property role="TrG5h" value="subtypingRule" />
                <node concept="3uibUv" id="bw" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~SubtypingRule_Runtime" resolve="SubtypingRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="bx" role="33vP2m">
                  <node concept="1pGfFk" id="by" role="2ShVmc">
                    <ref role="37wK5l" node="55" resolve="PersistentConfigurationIsPersistentConfiguration_SubtypingRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="bu" role="3cqZAp">
              <node concept="2OqwBi" id="bz" role="3clFbG">
                <node concept="2OqwBi" id="b$" role="2Oq$k0">
                  <node concept="2OwXpG" id="bA" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.mySubtypingRules" resolve="mySubtypingRules" />
                  </node>
                  <node concept="Xjq3P" id="bB" role="2Oq$k0" />
                </node>
                <node concept="liA8E" id="b_" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="bC" role="37wK5m">
                    <ref role="3cqZAo" node="bv" resolve="subtypingRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="8K" role="3cqZAp">
          <node concept="3clFbS" id="bD" role="9aQI4">
            <node concept="3cpWs8" id="bE" role="3cqZAp">
              <node concept="3cpWsn" id="bG" role="3cpWs9">
                <property role="TrG5h" value="subtypingRule" />
                <node concept="3uibUv" id="bH" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~SubtypingRule_Runtime" resolve="SubtypingRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="bI" role="33vP2m">
                  <node concept="1pGfFk" id="bJ" role="2ShVmc">
                    <ref role="37wK5l" node="5T" resolve="TemplatePersistentConfigurationTypeClassifier_SubtypingRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="bF" role="3cqZAp">
              <node concept="2OqwBi" id="bK" role="3clFbG">
                <node concept="2OqwBi" id="bL" role="2Oq$k0">
                  <node concept="2OwXpG" id="bN" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.mySubtypingRules" resolve="mySubtypingRules" />
                  </node>
                  <node concept="Xjq3P" id="bO" role="2Oq$k0" />
                </node>
                <node concept="liA8E" id="bM" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="bP" role="37wK5m">
                    <ref role="3cqZAo" node="bG" resolve="subtypingRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="8L" role="3cqZAp">
          <node concept="3clFbS" id="bQ" role="9aQI4">
            <node concept="3cpWs8" id="bR" role="3cqZAp">
              <node concept="3cpWsn" id="bT" role="3cpWs9">
                <property role="TrG5h" value="subtypingRule" />
                <node concept="3uibUv" id="bU" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~SubtypingRule_Runtime" resolve="SubtypingRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="bV" role="33vP2m">
                  <node concept="1pGfFk" id="bW" role="2ShVmc">
                    <ref role="37wK5l" node="6J" resolve="TemplatePersistentConfigurationTypeIsTemplatePersistentConfiguration_SubtypingRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="bS" role="3cqZAp">
              <node concept="2OqwBi" id="bX" role="3clFbG">
                <node concept="2OqwBi" id="bY" role="2Oq$k0">
                  <node concept="2OwXpG" id="c0" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.mySubtypingRules" resolve="mySubtypingRules" />
                  </node>
                  <node concept="Xjq3P" id="c1" role="2Oq$k0" />
                </node>
                <node concept="liA8E" id="bZ" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="c2" role="37wK5m">
                    <ref role="3cqZAo" node="bT" resolve="subtypingRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="8M" role="3cqZAp">
          <node concept="3clFbS" id="c3" role="9aQI4">
            <node concept="3cpWs8" id="c4" role="3cqZAp">
              <node concept="3cpWsn" id="c6" role="3cpWs9">
                <property role="TrG5h" value="subtypingRule" />
                <node concept="3uibUv" id="c7" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~SubtypingRule_Runtime" resolve="SubtypingRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="c8" role="33vP2m">
                  <node concept="1pGfFk" id="c9" role="2ShVmc">
                    <ref role="37wK5l" node="7z" resolve="TemplatePersistentPropertyIsSubtypeOfPersistentConfiguration_SubtypingRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="c5" role="3cqZAp">
              <node concept="2OqwBi" id="ca" role="3clFbG">
                <node concept="2OqwBi" id="cb" role="2Oq$k0">
                  <node concept="2OwXpG" id="cd" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.mySubtypingRules" resolve="mySubtypingRules" />
                  </node>
                  <node concept="Xjq3P" id="ce" role="2Oq$k0" />
                </node>
                <node concept="liA8E" id="cc" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="cf" role="37wK5m">
                    <ref role="3cqZAo" node="c6" resolve="subtypingRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="8w" role="1B3o_S" />
      <node concept="3cqZAl" id="8x" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="8t" role="1B3o_S" />
    <node concept="3uibUv" id="8u" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~BaseHelginsDescriptor" resolve="BaseHelginsDescriptor" />
    </node>
  </node>
  <node concept="312cEu" id="cg">
    <property role="TrG5h" value="typeof_Configuration_Parameter_InferenceRule" />
    <uo k="s:originTrace" v="n:6981317760235497140" />
    <node concept="3clFbW" id="ch" role="jymVt">
      <uo k="s:originTrace" v="n:6981317760235497140" />
      <node concept="3clFbS" id="cp" role="3clF47">
        <uo k="s:originTrace" v="n:6981317760235497140" />
      </node>
      <node concept="3Tm1VV" id="cq" role="1B3o_S">
        <uo k="s:originTrace" v="n:6981317760235497140" />
      </node>
      <node concept="3cqZAl" id="cr" role="3clF45">
        <uo k="s:originTrace" v="n:6981317760235497140" />
      </node>
    </node>
    <node concept="3clFb_" id="ci" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:6981317760235497140" />
      <node concept="3cqZAl" id="cs" role="3clF45">
        <uo k="s:originTrace" v="n:6981317760235497140" />
      </node>
      <node concept="37vLTG" id="ct" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="configurationParameter" />
        <uo k="s:originTrace" v="n:6981317760235497140" />
        <node concept="3Tqbb2" id="cy" role="1tU5fm">
          <uo k="s:originTrace" v="n:6981317760235497140" />
        </node>
      </node>
      <node concept="37vLTG" id="cu" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:6981317760235497140" />
        <node concept="3uibUv" id="cz" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:6981317760235497140" />
        </node>
      </node>
      <node concept="37vLTG" id="cv" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:6981317760235497140" />
        <node concept="3uibUv" id="c$" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:6981317760235497140" />
        </node>
      </node>
      <node concept="3clFbS" id="cw" role="3clF47">
        <uo k="s:originTrace" v="n:6981317760235497141" />
        <node concept="3clFbH" id="c_" role="3cqZAp">
          <uo k="s:originTrace" v="n:2181232403820064550" />
        </node>
        <node concept="3cpWs8" id="cA" role="3cqZAp">
          <uo k="s:originTrace" v="n:2181232403820065078" />
          <node concept="3cpWsn" id="cC" role="3cpWs9">
            <property role="TrG5h" value="contextConfiguration" />
            <uo k="s:originTrace" v="n:2181232403820065079" />
            <node concept="3Tqbb2" id="cD" role="1tU5fm">
              <ref role="ehGHo" to="fb9u:O$iR4J$g0w" resolve="PersistentConfiguration" />
              <uo k="s:originTrace" v="n:2181232403820065075" />
            </node>
            <node concept="2OqwBi" id="cE" role="33vP2m">
              <uo k="s:originTrace" v="n:2181232403820065080" />
              <node concept="35c_gC" id="cF" role="2Oq$k0">
                <ref role="35c_gD" to="fb9u:O$iR4J$g0w" resolve="PersistentConfiguration" />
                <uo k="s:originTrace" v="n:2181232403820065081" />
              </node>
              <node concept="3zqWPK" id="cG" role="2OqNvi">
                <ref role="37wK5l" to="hilv:O$iR4J$g1l" resolve="getContextPersistentConfiguration" />
                <uo k="s:originTrace" v="n:8085146484218852500" />
                <node concept="37vLTw" id="cH" role="37wK5m">
                  <ref role="3cqZAo" node="ct" resolve="configurationParameter" />
                  <uo k="s:originTrace" v="n:8085146484218852502" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="cB" role="3cqZAp">
          <uo k="s:originTrace" v="n:2181232403819906005" />
          <node concept="3clFbS" id="cI" role="9aQI4">
            <node concept="3cpWs8" id="cK" role="3cqZAp">
              <node concept="3cpWsn" id="cN" role="3cpWs9">
                <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                <node concept="37vLTw" id="cO" role="33vP2m">
                  <ref role="3cqZAo" node="ct" resolve="configurationParameter" />
                  <uo k="s:originTrace" v="n:2181232403819906009" />
                  <node concept="6wLe0" id="cQ" role="lGtFl">
                    <property role="6wLej" value="2181232403819906005" />
                    <property role="6wLeW" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                  </node>
                </node>
                <node concept="3uibUv" id="cP" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="cL" role="3cqZAp">
              <node concept="3cpWsn" id="cR" role="3cpWs9">
                <property role="TrG5h" value="_info_12389875345" />
                <node concept="3uibUv" id="cS" role="1tU5fm">
                  <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                </node>
                <node concept="2ShNRf" id="cT" role="33vP2m">
                  <node concept="1pGfFk" id="cU" role="2ShVmc">
                    <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                    <node concept="37vLTw" id="cV" role="37wK5m">
                      <ref role="3cqZAo" node="cN" resolve="_nodeToCheck_1029348928467" />
                    </node>
                    <node concept="10Nm6u" id="cW" role="37wK5m" />
                    <node concept="Xl_RD" id="cX" role="37wK5m">
                      <property role="Xl_RC" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                    </node>
                    <node concept="Xl_RD" id="cY" role="37wK5m">
                      <property role="Xl_RC" value="2181232403819906005" />
                    </node>
                    <node concept="3cmrfG" id="cZ" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="10Nm6u" id="d0" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="cM" role="3cqZAp">
              <node concept="2OqwBi" id="d1" role="3clFbG">
                <node concept="3VmV3z" id="d2" role="2Oq$k0">
                  <property role="3VnrPo" value="typeCheckingContext" />
                  <node concept="3uibUv" id="d4" role="3Vn4Tt">
                    <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                  </node>
                </node>
                <node concept="liA8E" id="d3" role="2OqNvi">
                  <ref role="37wK5l" to="u78q:~TypeCheckingContext.createEquation(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createEquation" />
                  <node concept="10QFUN" id="d5" role="37wK5m">
                    <uo k="s:originTrace" v="n:2181232403819906007" />
                    <node concept="3uibUv" id="d8" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="d9" role="10QFUP">
                      <uo k="s:originTrace" v="n:2181232403819906008" />
                      <node concept="3VmV3z" id="da" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="dd" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="db" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                        <node concept="3VmV3z" id="de" role="37wK5m">
                          <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                          <node concept="3uibUv" id="di" role="3Vn4Tt">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="df" role="37wK5m">
                          <property role="Xl_RC" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="dg" role="37wK5m">
                          <property role="Xl_RC" value="2181232403819906008" />
                        </node>
                        <node concept="3clFbT" id="dh" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                      <node concept="6wLe0" id="dc" role="lGtFl">
                        <property role="6wLej" value="2181232403819906008" />
                        <property role="6wLeW" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                      </node>
                    </node>
                  </node>
                  <node concept="10QFUN" id="d6" role="37wK5m">
                    <uo k="s:originTrace" v="n:2181232403819906010" />
                    <node concept="3uibUv" id="dj" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="dk" role="10QFUP">
                      <uo k="s:originTrace" v="n:2181232403820068479" />
                      <node concept="3VmV3z" id="dl" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="do" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="dm" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                        <node concept="37vLTw" id="dp" role="37wK5m">
                          <ref role="3cqZAo" node="cC" resolve="contextConfiguration" />
                          <uo k="s:originTrace" v="n:2181232403820068480" />
                        </node>
                        <node concept="Xl_RD" id="dq" role="37wK5m">
                          <property role="Xl_RC" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="dr" role="37wK5m">
                          <property role="Xl_RC" value="2181232403820068479" />
                        </node>
                        <node concept="3clFbT" id="ds" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                      <node concept="6wLe0" id="dn" role="lGtFl">
                        <property role="6wLej" value="2181232403820068479" />
                        <property role="6wLeW" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="d7" role="37wK5m">
                    <ref role="3cqZAo" node="cR" resolve="_info_12389875345" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="6wLe0" id="cJ" role="lGtFl">
            <property role="6wLej" value="2181232403819906005" />
            <property role="6wLeW" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="cx" role="1B3o_S">
        <uo k="s:originTrace" v="n:6981317760235497140" />
      </node>
    </node>
    <node concept="3clFb_" id="cj" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:6981317760235497140" />
      <node concept="3bZ5Sz" id="dt" role="3clF45">
        <uo k="s:originTrace" v="n:6981317760235497140" />
      </node>
      <node concept="3clFbS" id="du" role="3clF47">
        <uo k="s:originTrace" v="n:6981317760235497140" />
        <node concept="3cpWs6" id="dw" role="3cqZAp">
          <uo k="s:originTrace" v="n:6981317760235497140" />
          <node concept="35c_gC" id="dx" role="3cqZAk">
            <ref role="35c_gD" to="fb9u:O$iR4J$geg" resolve="Configuration_Parameter" />
            <uo k="s:originTrace" v="n:6981317760235497140" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="dv" role="1B3o_S">
        <uo k="s:originTrace" v="n:6981317760235497140" />
      </node>
    </node>
    <node concept="3clFb_" id="ck" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:6981317760235497140" />
      <node concept="37vLTG" id="dy" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:6981317760235497140" />
        <node concept="3Tqbb2" id="dA" role="1tU5fm">
          <uo k="s:originTrace" v="n:6981317760235497140" />
        </node>
      </node>
      <node concept="3clFbS" id="dz" role="3clF47">
        <uo k="s:originTrace" v="n:6981317760235497140" />
        <node concept="9aQIb" id="dB" role="3cqZAp">
          <uo k="s:originTrace" v="n:6981317760235497140" />
          <node concept="3clFbS" id="dC" role="9aQI4">
            <uo k="s:originTrace" v="n:6981317760235497140" />
            <node concept="3cpWs6" id="dD" role="3cqZAp">
              <uo k="s:originTrace" v="n:6981317760235497140" />
              <node concept="2ShNRf" id="dE" role="3cqZAk">
                <uo k="s:originTrace" v="n:6981317760235497140" />
                <node concept="1pGfFk" id="dF" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:6981317760235497140" />
                  <node concept="2OqwBi" id="dG" role="37wK5m">
                    <uo k="s:originTrace" v="n:6981317760235497140" />
                    <node concept="2OqwBi" id="dI" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:6981317760235497140" />
                      <node concept="liA8E" id="dK" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:6981317760235497140" />
                      </node>
                      <node concept="2JrnkZ" id="dL" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:6981317760235497140" />
                        <node concept="37vLTw" id="dM" role="2JrQYb">
                          <ref role="3cqZAo" node="dy" resolve="argument" />
                          <uo k="s:originTrace" v="n:6981317760235497140" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="dJ" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:6981317760235497140" />
                      <node concept="1rXfSq" id="dN" role="37wK5m">
                        <ref role="37wK5l" node="cj" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:6981317760235497140" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="dH" role="37wK5m">
                    <uo k="s:originTrace" v="n:6981317760235497140" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="d$" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:6981317760235497140" />
      </node>
      <node concept="3Tm1VV" id="d_" role="1B3o_S">
        <uo k="s:originTrace" v="n:6981317760235497140" />
      </node>
    </node>
    <node concept="3clFb_" id="cl" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:6981317760235497140" />
      <node concept="3clFbS" id="dO" role="3clF47">
        <uo k="s:originTrace" v="n:6981317760235497140" />
        <node concept="3cpWs6" id="dR" role="3cqZAp">
          <uo k="s:originTrace" v="n:6981317760235497140" />
          <node concept="3clFbT" id="dS" role="3cqZAk">
            <uo k="s:originTrace" v="n:6981317760235497140" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="dP" role="3clF45">
        <uo k="s:originTrace" v="n:6981317760235497140" />
      </node>
      <node concept="3Tm1VV" id="dQ" role="1B3o_S">
        <uo k="s:originTrace" v="n:6981317760235497140" />
      </node>
    </node>
    <node concept="3uibUv" id="cm" role="EKbjA">
      <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:6981317760235497140" />
    </node>
    <node concept="3uibUv" id="cn" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractInferenceRule_Runtime" resolve="AbstractInferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:6981317760235497140" />
    </node>
    <node concept="3Tm1VV" id="co" role="1B3o_S">
      <uo k="s:originTrace" v="n:6981317760235497140" />
    </node>
  </node>
  <node concept="312cEu" id="dT">
    <property role="3GE5qa" value="editor" />
    <property role="TrG5h" value="typeof_EditorExpression_InferenceRule" />
    <uo k="s:originTrace" v="n:6981317760235477878" />
    <node concept="3clFbW" id="dU" role="jymVt">
      <uo k="s:originTrace" v="n:6981317760235477878" />
      <node concept="3clFbS" id="e2" role="3clF47">
        <uo k="s:originTrace" v="n:6981317760235477878" />
      </node>
      <node concept="3Tm1VV" id="e3" role="1B3o_S">
        <uo k="s:originTrace" v="n:6981317760235477878" />
      </node>
      <node concept="3cqZAl" id="e4" role="3clF45">
        <uo k="s:originTrace" v="n:6981317760235477878" />
      </node>
    </node>
    <node concept="3clFb_" id="dV" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:6981317760235477878" />
      <node concept="3cqZAl" id="e5" role="3clF45">
        <uo k="s:originTrace" v="n:6981317760235477878" />
      </node>
      <node concept="37vLTG" id="e6" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="editorExpression" />
        <uo k="s:originTrace" v="n:6981317760235477878" />
        <node concept="3Tqbb2" id="eb" role="1tU5fm">
          <uo k="s:originTrace" v="n:6981317760235477878" />
        </node>
      </node>
      <node concept="37vLTG" id="e7" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:6981317760235477878" />
        <node concept="3uibUv" id="ec" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:6981317760235477878" />
        </node>
      </node>
      <node concept="37vLTG" id="e8" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:6981317760235477878" />
        <node concept="3uibUv" id="ed" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:6981317760235477878" />
        </node>
      </node>
      <node concept="3clFbS" id="e9" role="3clF47">
        <uo k="s:originTrace" v="n:6981317760235477879" />
        <node concept="3cpWs8" id="ee" role="3cqZAp">
          <uo k="s:originTrace" v="n:6981317760235477880" />
          <node concept="3cpWsn" id="eh" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="T_typevar_6981317760235477880" />
            <node concept="2OqwBi" id="ei" role="33vP2m">
              <node concept="3VmV3z" id="ek" role="2Oq$k0">
                <property role="3VnrPo" value="typeCheckingContext" />
                <node concept="3uibUv" id="em" role="3Vn4Tt">
                  <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                </node>
              </node>
              <node concept="liA8E" id="el" role="2OqNvi">
                <ref role="37wK5l" to="u78q:~TypeCheckingContext.createNewRuntimeTypesVariable()" resolve="createNewRuntimeTypesVariable" />
              </node>
            </node>
            <node concept="3Tqbb2" id="ej" role="1tU5fm" />
          </node>
        </node>
        <node concept="9aQIb" id="ef" role="3cqZAp">
          <uo k="s:originTrace" v="n:6981317760235477881" />
          <node concept="3clFbS" id="en" role="9aQI4">
            <node concept="3cpWs8" id="ep" role="3cqZAp">
              <node concept="3cpWsn" id="es" role="3cpWs9">
                <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                <node concept="2OqwBi" id="et" role="33vP2m">
                  <uo k="s:originTrace" v="n:6981317760235477884" />
                  <node concept="37vLTw" id="ev" role="2Oq$k0">
                    <ref role="3cqZAo" node="e6" resolve="editorExpression" />
                    <uo k="s:originTrace" v="n:6981317760235477885" />
                  </node>
                  <node concept="3TrEf2" id="ew" role="2OqNvi">
                    <ref role="3Tt5mk" to="fb9u:O$iR4J$g4t" resolve="persistentPropertyDeclaration" />
                    <uo k="s:originTrace" v="n:6981317760235477886" />
                  </node>
                  <node concept="6wLe0" id="ex" role="lGtFl">
                    <property role="6wLej" value="6981317760235477881" />
                    <property role="6wLeW" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                  </node>
                </node>
                <node concept="3uibUv" id="eu" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="eq" role="3cqZAp">
              <node concept="3cpWsn" id="ey" role="3cpWs9">
                <property role="TrG5h" value="_info_12389875345" />
                <node concept="3uibUv" id="ez" role="1tU5fm">
                  <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                </node>
                <node concept="2ShNRf" id="e$" role="33vP2m">
                  <node concept="1pGfFk" id="e_" role="2ShVmc">
                    <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                    <node concept="37vLTw" id="eA" role="37wK5m">
                      <ref role="3cqZAo" node="es" resolve="_nodeToCheck_1029348928467" />
                    </node>
                    <node concept="10Nm6u" id="eB" role="37wK5m" />
                    <node concept="Xl_RD" id="eC" role="37wK5m">
                      <property role="Xl_RC" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                    </node>
                    <node concept="Xl_RD" id="eD" role="37wK5m">
                      <property role="Xl_RC" value="6981317760235477881" />
                    </node>
                    <node concept="3cmrfG" id="eE" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="10Nm6u" id="eF" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="er" role="3cqZAp">
              <node concept="2OqwBi" id="eG" role="3clFbG">
                <node concept="3VmV3z" id="eH" role="2Oq$k0">
                  <property role="3VnrPo" value="typeCheckingContext" />
                  <node concept="3uibUv" id="eJ" role="3Vn4Tt">
                    <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                  </node>
                </node>
                <node concept="liA8E" id="eI" role="2OqNvi">
                  <ref role="37wK5l" to="u78q:~TypeCheckingContext.createLessThanInequality(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,boolean,boolean,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createLessThanInequality" />
                  <node concept="10QFUN" id="eK" role="37wK5m">
                    <uo k="s:originTrace" v="n:6981317760235477882" />
                    <node concept="3uibUv" id="eP" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="eQ" role="10QFUP">
                      <uo k="s:originTrace" v="n:6981317760235477883" />
                      <node concept="3VmV3z" id="eR" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="eU" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="eS" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                        <node concept="3VmV3z" id="eV" role="37wK5m">
                          <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                          <node concept="3uibUv" id="eZ" role="3Vn4Tt">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="eW" role="37wK5m">
                          <property role="Xl_RC" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="eX" role="37wK5m">
                          <property role="Xl_RC" value="6981317760235477883" />
                        </node>
                        <node concept="3clFbT" id="eY" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                      <node concept="6wLe0" id="eT" role="lGtFl">
                        <property role="6wLej" value="6981317760235477883" />
                        <property role="6wLeW" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                      </node>
                    </node>
                  </node>
                  <node concept="10QFUN" id="eL" role="37wK5m">
                    <uo k="s:originTrace" v="n:6981317760235477887" />
                    <node concept="3uibUv" id="f0" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2pJPEk" id="f1" role="10QFUP">
                      <uo k="s:originTrace" v="n:48168216978190013" />
                      <node concept="2pJPED" id="f2" role="2pJPEn">
                        <ref role="2pJxaS" to="fb9u:O$iR4J$g0s" resolve="PersistentConfigurationType" />
                        <uo k="s:originTrace" v="n:48168216978190010" />
                        <node concept="2pIpSj" id="f3" role="2pJxcM">
                          <ref role="2pIpSl" to="fb9u:O$iR4J$g0t" resolve="persistentConfiguration" />
                          <uo k="s:originTrace" v="n:48168216978190011" />
                          <node concept="36biLy" id="f4" role="28nt2d">
                            <uo k="s:originTrace" v="n:48168216978190012" />
                            <node concept="2OqwBi" id="f5" role="36biLW">
                              <uo k="s:originTrace" v="n:6981317760235477891" />
                              <node concept="3VmV3z" id="f6" role="2Oq$k0">
                                <property role="3VnrPo" value="typeCheckingContext" />
                                <node concept="3uibUv" id="f8" role="3Vn4Tt">
                                  <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                                </node>
                              </node>
                              <node concept="liA8E" id="f7" role="2OqNvi">
                                <ref role="37wK5l" to="u78q:~TypeCheckingContext.getRepresentative(org.jetbrains.mps.openapi.model.SNode)" resolve="getRepresentative" />
                                <node concept="37vLTw" id="f9" role="37wK5m">
                                  <ref role="3cqZAo" node="eh" resolve="T_typevar_6981317760235477880" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbT" id="eM" role="37wK5m" />
                  <node concept="3clFbT" id="eN" role="37wK5m" />
                  <node concept="37vLTw" id="eO" role="37wK5m">
                    <ref role="3cqZAo" node="ey" resolve="_info_12389875345" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="6wLe0" id="eo" role="lGtFl">
            <property role="6wLej" value="6981317760235477881" />
            <property role="6wLeW" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
          </node>
        </node>
        <node concept="9aQIb" id="eg" role="3cqZAp">
          <uo k="s:originTrace" v="n:6981317760235477893" />
          <node concept="3clFbS" id="fa" role="9aQI4">
            <node concept="3cpWs8" id="fc" role="3cqZAp">
              <node concept="3cpWsn" id="ff" role="3cpWs9">
                <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                <node concept="37vLTw" id="fg" role="33vP2m">
                  <ref role="3cqZAo" node="e6" resolve="editorExpression" />
                  <uo k="s:originTrace" v="n:6981317760235477901" />
                  <node concept="6wLe0" id="fi" role="lGtFl">
                    <property role="6wLej" value="6981317760235477893" />
                    <property role="6wLeW" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                  </node>
                </node>
                <node concept="3uibUv" id="fh" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="fd" role="3cqZAp">
              <node concept="3cpWsn" id="fj" role="3cpWs9">
                <property role="TrG5h" value="_info_12389875345" />
                <node concept="3uibUv" id="fk" role="1tU5fm">
                  <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                </node>
                <node concept="2ShNRf" id="fl" role="33vP2m">
                  <node concept="1pGfFk" id="fm" role="2ShVmc">
                    <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                    <node concept="37vLTw" id="fn" role="37wK5m">
                      <ref role="3cqZAo" node="ff" resolve="_nodeToCheck_1029348928467" />
                    </node>
                    <node concept="10Nm6u" id="fo" role="37wK5m" />
                    <node concept="Xl_RD" id="fp" role="37wK5m">
                      <property role="Xl_RC" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                    </node>
                    <node concept="Xl_RD" id="fq" role="37wK5m">
                      <property role="Xl_RC" value="6981317760235477893" />
                    </node>
                    <node concept="3cmrfG" id="fr" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="10Nm6u" id="fs" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="fe" role="3cqZAp">
              <node concept="2OqwBi" id="ft" role="3clFbG">
                <node concept="3VmV3z" id="fu" role="2Oq$k0">
                  <property role="3VnrPo" value="typeCheckingContext" />
                  <node concept="3uibUv" id="fw" role="3Vn4Tt">
                    <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                  </node>
                </node>
                <node concept="liA8E" id="fv" role="2OqNvi">
                  <ref role="37wK5l" to="u78q:~TypeCheckingContext.createEquation(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createEquation" />
                  <node concept="10QFUN" id="fx" role="37wK5m">
                    <uo k="s:originTrace" v="n:6981317760235477899" />
                    <node concept="3uibUv" id="f$" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="f_" role="10QFUP">
                      <uo k="s:originTrace" v="n:6981317760235477900" />
                      <node concept="3VmV3z" id="fA" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="fD" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="fB" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                        <node concept="3VmV3z" id="fE" role="37wK5m">
                          <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                          <node concept="3uibUv" id="fI" role="3Vn4Tt">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="fF" role="37wK5m">
                          <property role="Xl_RC" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="fG" role="37wK5m">
                          <property role="Xl_RC" value="6981317760235477900" />
                        </node>
                        <node concept="3clFbT" id="fH" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                      <node concept="6wLe0" id="fC" role="lGtFl">
                        <property role="6wLej" value="6981317760235477900" />
                        <property role="6wLeW" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                      </node>
                    </node>
                  </node>
                  <node concept="10QFUN" id="fy" role="37wK5m">
                    <uo k="s:originTrace" v="n:6981317760235477894" />
                    <node concept="3uibUv" id="fJ" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2pJPEk" id="fK" role="10QFUP">
                      <uo k="s:originTrace" v="n:48168216978190065" />
                      <node concept="2pJPED" id="fL" role="2pJPEn">
                        <ref role="2pJxaS" to="fb9u:O$iR4J$g4U" resolve="SettingsEditorType" />
                        <uo k="s:originTrace" v="n:48168216978190062" />
                        <node concept="2pIpSj" id="fM" role="2pJxcM">
                          <ref role="2pIpSl" to="fb9u:O$iR4J$g4V" resolve="configuration" />
                          <uo k="s:originTrace" v="n:48168216978190063" />
                          <node concept="36biLy" id="fN" role="28nt2d">
                            <uo k="s:originTrace" v="n:48168216978190064" />
                            <node concept="2OqwBi" id="fO" role="36biLW">
                              <uo k="s:originTrace" v="n:6981317760235477898" />
                              <node concept="3VmV3z" id="fP" role="2Oq$k0">
                                <property role="3VnrPo" value="typeCheckingContext" />
                                <node concept="3uibUv" id="fR" role="3Vn4Tt">
                                  <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                                </node>
                              </node>
                              <node concept="liA8E" id="fQ" role="2OqNvi">
                                <ref role="37wK5l" to="u78q:~TypeCheckingContext.getRepresentative(org.jetbrains.mps.openapi.model.SNode)" resolve="getRepresentative" />
                                <node concept="37vLTw" id="fS" role="37wK5m">
                                  <ref role="3cqZAo" node="eh" resolve="T_typevar_6981317760235477880" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="fz" role="37wK5m">
                    <ref role="3cqZAo" node="fj" resolve="_info_12389875345" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="6wLe0" id="fb" role="lGtFl">
            <property role="6wLej" value="6981317760235477893" />
            <property role="6wLeW" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="ea" role="1B3o_S">
        <uo k="s:originTrace" v="n:6981317760235477878" />
      </node>
    </node>
    <node concept="3clFb_" id="dW" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:6981317760235477878" />
      <node concept="3bZ5Sz" id="fT" role="3clF45">
        <uo k="s:originTrace" v="n:6981317760235477878" />
      </node>
      <node concept="3clFbS" id="fU" role="3clF47">
        <uo k="s:originTrace" v="n:6981317760235477878" />
        <node concept="3cpWs6" id="fW" role="3cqZAp">
          <uo k="s:originTrace" v="n:6981317760235477878" />
          <node concept="35c_gC" id="fX" role="3cqZAk">
            <ref role="35c_gD" to="fb9u:O$iR4J$g4s" resolve="EditorExpression" />
            <uo k="s:originTrace" v="n:6981317760235477878" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="fV" role="1B3o_S">
        <uo k="s:originTrace" v="n:6981317760235477878" />
      </node>
    </node>
    <node concept="3clFb_" id="dX" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:6981317760235477878" />
      <node concept="37vLTG" id="fY" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:6981317760235477878" />
        <node concept="3Tqbb2" id="g2" role="1tU5fm">
          <uo k="s:originTrace" v="n:6981317760235477878" />
        </node>
      </node>
      <node concept="3clFbS" id="fZ" role="3clF47">
        <uo k="s:originTrace" v="n:6981317760235477878" />
        <node concept="9aQIb" id="g3" role="3cqZAp">
          <uo k="s:originTrace" v="n:6981317760235477878" />
          <node concept="3clFbS" id="g4" role="9aQI4">
            <uo k="s:originTrace" v="n:6981317760235477878" />
            <node concept="3cpWs6" id="g5" role="3cqZAp">
              <uo k="s:originTrace" v="n:6981317760235477878" />
              <node concept="2ShNRf" id="g6" role="3cqZAk">
                <uo k="s:originTrace" v="n:6981317760235477878" />
                <node concept="1pGfFk" id="g7" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:6981317760235477878" />
                  <node concept="2OqwBi" id="g8" role="37wK5m">
                    <uo k="s:originTrace" v="n:6981317760235477878" />
                    <node concept="2OqwBi" id="ga" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:6981317760235477878" />
                      <node concept="liA8E" id="gc" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:6981317760235477878" />
                      </node>
                      <node concept="2JrnkZ" id="gd" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:6981317760235477878" />
                        <node concept="37vLTw" id="ge" role="2JrQYb">
                          <ref role="3cqZAo" node="fY" resolve="argument" />
                          <uo k="s:originTrace" v="n:6981317760235477878" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="gb" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:6981317760235477878" />
                      <node concept="1rXfSq" id="gf" role="37wK5m">
                        <ref role="37wK5l" node="dW" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:6981317760235477878" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="g9" role="37wK5m">
                    <uo k="s:originTrace" v="n:6981317760235477878" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="g0" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:6981317760235477878" />
      </node>
      <node concept="3Tm1VV" id="g1" role="1B3o_S">
        <uo k="s:originTrace" v="n:6981317760235477878" />
      </node>
    </node>
    <node concept="3clFb_" id="dY" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:6981317760235477878" />
      <node concept="3clFbS" id="gg" role="3clF47">
        <uo k="s:originTrace" v="n:6981317760235477878" />
        <node concept="3cpWs6" id="gj" role="3cqZAp">
          <uo k="s:originTrace" v="n:6981317760235477878" />
          <node concept="3clFbT" id="gk" role="3cqZAk">
            <uo k="s:originTrace" v="n:6981317760235477878" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="gh" role="3clF45">
        <uo k="s:originTrace" v="n:6981317760235477878" />
      </node>
      <node concept="3Tm1VV" id="gi" role="1B3o_S">
        <uo k="s:originTrace" v="n:6981317760235477878" />
      </node>
    </node>
    <node concept="3uibUv" id="dZ" role="EKbjA">
      <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:6981317760235477878" />
    </node>
    <node concept="3uibUv" id="e0" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractInferenceRule_Runtime" resolve="AbstractInferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:6981317760235477878" />
    </node>
    <node concept="3Tm1VV" id="e1" role="1B3o_S">
      <uo k="s:originTrace" v="n:6981317760235477878" />
    </node>
  </node>
  <node concept="312cEu" id="gl">
    <property role="3GE5qa" value="editor" />
    <property role="TrG5h" value="typeof_EditorOperation_InferenceRule" />
    <uo k="s:originTrace" v="n:6981317760235477903" />
    <node concept="3clFbW" id="gm" role="jymVt">
      <uo k="s:originTrace" v="n:6981317760235477903" />
      <node concept="3clFbS" id="gu" role="3clF47">
        <uo k="s:originTrace" v="n:6981317760235477903" />
      </node>
      <node concept="3Tm1VV" id="gv" role="1B3o_S">
        <uo k="s:originTrace" v="n:6981317760235477903" />
      </node>
      <node concept="3cqZAl" id="gw" role="3clF45">
        <uo k="s:originTrace" v="n:6981317760235477903" />
      </node>
    </node>
    <node concept="3clFb_" id="gn" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:6981317760235477903" />
      <node concept="3cqZAl" id="gx" role="3clF45">
        <uo k="s:originTrace" v="n:6981317760235477903" />
      </node>
      <node concept="37vLTG" id="gy" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="editorOperation" />
        <uo k="s:originTrace" v="n:6981317760235477903" />
        <node concept="3Tqbb2" id="gB" role="1tU5fm">
          <uo k="s:originTrace" v="n:6981317760235477903" />
        </node>
      </node>
      <node concept="37vLTG" id="gz" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:6981317760235477903" />
        <node concept="3uibUv" id="gC" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:6981317760235477903" />
        </node>
      </node>
      <node concept="37vLTG" id="g$" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:6981317760235477903" />
        <node concept="3uibUv" id="gD" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:6981317760235477903" />
        </node>
      </node>
      <node concept="3clFbS" id="g_" role="3clF47">
        <uo k="s:originTrace" v="n:6981317760235477904" />
        <node concept="9aQIb" id="gE" role="3cqZAp">
          <uo k="s:originTrace" v="n:6981317760235477905" />
          <node concept="3clFbS" id="gM" role="9aQI4">
            <node concept="3cpWs8" id="gO" role="3cqZAp">
              <node concept="3cpWsn" id="gR" role="3cpWs9">
                <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                <node concept="37vLTw" id="gS" role="33vP2m">
                  <ref role="3cqZAo" node="gy" resolve="editorOperation" />
                  <uo k="s:originTrace" v="n:6981317760235477913" />
                  <node concept="6wLe0" id="gU" role="lGtFl">
                    <property role="6wLej" value="6981317760235477905" />
                    <property role="6wLeW" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                  </node>
                </node>
                <node concept="3uibUv" id="gT" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="gP" role="3cqZAp">
              <node concept="3cpWsn" id="gV" role="3cpWs9">
                <property role="TrG5h" value="_info_12389875345" />
                <node concept="3uibUv" id="gW" role="1tU5fm">
                  <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                </node>
                <node concept="2ShNRf" id="gX" role="33vP2m">
                  <node concept="1pGfFk" id="gY" role="2ShVmc">
                    <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                    <node concept="37vLTw" id="gZ" role="37wK5m">
                      <ref role="3cqZAo" node="gR" resolve="_nodeToCheck_1029348928467" />
                    </node>
                    <node concept="10Nm6u" id="h0" role="37wK5m" />
                    <node concept="Xl_RD" id="h1" role="37wK5m">
                      <property role="Xl_RC" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                    </node>
                    <node concept="Xl_RD" id="h2" role="37wK5m">
                      <property role="Xl_RC" value="6981317760235477905" />
                    </node>
                    <node concept="3cmrfG" id="h3" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="10Nm6u" id="h4" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="gQ" role="3cqZAp">
              <node concept="2OqwBi" id="h5" role="3clFbG">
                <node concept="3VmV3z" id="h6" role="2Oq$k0">
                  <property role="3VnrPo" value="typeCheckingContext" />
                  <node concept="3uibUv" id="h8" role="3Vn4Tt">
                    <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                  </node>
                </node>
                <node concept="liA8E" id="h7" role="2OqNvi">
                  <ref role="37wK5l" to="u78q:~TypeCheckingContext.createEquation(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createEquation" />
                  <node concept="10QFUN" id="h9" role="37wK5m">
                    <uo k="s:originTrace" v="n:6981317760235477911" />
                    <node concept="3uibUv" id="hc" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="hd" role="10QFUP">
                      <uo k="s:originTrace" v="n:6981317760235477912" />
                      <node concept="3VmV3z" id="he" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="hh" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="hf" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                        <node concept="3VmV3z" id="hi" role="37wK5m">
                          <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                          <node concept="3uibUv" id="hm" role="3Vn4Tt">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="hj" role="37wK5m">
                          <property role="Xl_RC" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="hk" role="37wK5m">
                          <property role="Xl_RC" value="6981317760235477912" />
                        </node>
                        <node concept="3clFbT" id="hl" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                      <node concept="6wLe0" id="hg" role="lGtFl">
                        <property role="6wLej" value="6981317760235477912" />
                        <property role="6wLeW" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                      </node>
                    </node>
                  </node>
                  <node concept="10QFUN" id="ha" role="37wK5m">
                    <uo k="s:originTrace" v="n:6981317760235477906" />
                    <node concept="3uibUv" id="hn" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="ho" role="10QFUP">
                      <uo k="s:originTrace" v="n:6981317760235477907" />
                      <node concept="3VmV3z" id="hp" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="hs" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="hq" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                        <node concept="2OqwBi" id="ht" role="37wK5m">
                          <uo k="s:originTrace" v="n:6981317760235477908" />
                          <node concept="37vLTw" id="hx" role="2Oq$k0">
                            <ref role="3cqZAo" node="gy" resolve="editorOperation" />
                            <uo k="s:originTrace" v="n:6981317760235477909" />
                          </node>
                          <node concept="3TrEf2" id="hy" role="2OqNvi">
                            <ref role="3Tt5mk" to="fb9u:O$iR4J$g4L" resolve="editorOperationDeclaration" />
                            <uo k="s:originTrace" v="n:6981317760235477910" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="hu" role="37wK5m">
                          <property role="Xl_RC" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="hv" role="37wK5m">
                          <property role="Xl_RC" value="6981317760235477907" />
                        </node>
                        <node concept="3clFbT" id="hw" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                      <node concept="6wLe0" id="hr" role="lGtFl">
                        <property role="6wLej" value="6981317760235477907" />
                        <property role="6wLeW" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="hb" role="37wK5m">
                    <ref role="3cqZAo" node="gV" resolve="_info_12389875345" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="6wLe0" id="gN" role="lGtFl">
            <property role="6wLej" value="6981317760235477905" />
            <property role="6wLeW" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
          </node>
        </node>
        <node concept="3cpWs8" id="gF" role="3cqZAp">
          <uo k="s:originTrace" v="n:6981317760235477914" />
          <node concept="3cpWsn" id="hz" role="3cpWs9">
            <property role="TrG5h" value="parameters" />
            <uo k="s:originTrace" v="n:6981317760235477915" />
            <node concept="_YKpA" id="h$" role="1tU5fm">
              <uo k="s:originTrace" v="n:6981317760235477916" />
              <node concept="3bZ5Sz" id="hA" role="_ZDj9">
                <ref role="3bZ5Sy" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
                <uo k="s:originTrace" v="n:2912357169742631975" />
              </node>
            </node>
            <node concept="2OqwBi" id="h_" role="33vP2m">
              <uo k="s:originTrace" v="n:6981317760235477918" />
              <node concept="2OqwBi" id="hB" role="2Oq$k0">
                <uo k="s:originTrace" v="n:6981317760235477919" />
                <node concept="37vLTw" id="hD" role="2Oq$k0">
                  <ref role="3cqZAo" node="gy" resolve="editorOperation" />
                  <uo k="s:originTrace" v="n:6981317760235477920" />
                </node>
                <node concept="3TrEf2" id="hE" role="2OqNvi">
                  <ref role="3Tt5mk" to="fb9u:O$iR4J$g4L" resolve="editorOperationDeclaration" />
                  <uo k="s:originTrace" v="n:6981317760235477921" />
                </node>
              </node>
              <node concept="3zqWPK" id="hC" role="2OqNvi">
                <ref role="37wK5l" to="tpek:2xELmDxyi2v" resolve="getParameterConcepts" />
                <uo k="s:originTrace" v="n:8085146484218852498" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="gG" role="3cqZAp">
          <uo k="s:originTrace" v="n:6981317760235639136" />
        </node>
        <node concept="3SKdUt" id="gH" role="3cqZAp">
          <uo k="s:originTrace" v="n:6981317760235639134" />
          <node concept="1PaTwC" id="hF" role="1aUNEU">
            <uo k="s:originTrace" v="n:700871696606822490" />
            <node concept="3oM_SD" id="hG" role="1PaTwD">
              <property role="3oM_SC" value="all" />
              <uo k="s:originTrace" v="n:700871696606822491" />
            </node>
            <node concept="3oM_SD" id="hH" role="1PaTwD">
              <property role="3oM_SC" value="editor" />
              <uo k="s:originTrace" v="n:700871696606822492" />
            </node>
            <node concept="3oM_SD" id="hI" role="1PaTwD">
              <property role="3oM_SC" value="operation" />
              <uo k="s:originTrace" v="n:700871696606822493" />
            </node>
            <node concept="3oM_SD" id="hJ" role="1PaTwD">
              <property role="3oM_SC" value="parameters" />
              <uo k="s:originTrace" v="n:700871696606822494" />
            </node>
            <node concept="3oM_SD" id="hK" role="1PaTwD">
              <property role="3oM_SC" value="are" />
              <uo k="s:originTrace" v="n:700871696606822495" />
            </node>
            <node concept="3oM_SD" id="hL" role="1PaTwD">
              <property role="3oM_SC" value="declared" />
              <uo k="s:originTrace" v="n:700871696606822496" />
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="gI" role="3cqZAp">
          <uo k="s:originTrace" v="n:6981317760235477923" />
          <node concept="3uNrnE" id="hM" role="1Dwrff">
            <uo k="s:originTrace" v="n:6981317760235477924" />
            <node concept="37vLTw" id="hQ" role="2$L3a6">
              <ref role="3cqZAo" node="hO" resolve="i" />
              <uo k="s:originTrace" v="n:4265636116363080124" />
            </node>
          </node>
          <node concept="3clFbS" id="hN" role="2LFqv$">
            <uo k="s:originTrace" v="n:6981317760235477926" />
            <node concept="3clFbJ" id="hR" role="3cqZAp">
              <uo k="s:originTrace" v="n:6981317760235477927" />
              <node concept="3clFbS" id="hU" role="3clFbx">
                <uo k="s:originTrace" v="n:6981317760235477928" />
                <node concept="9aQIb" id="hW" role="3cqZAp">
                  <uo k="s:originTrace" v="n:6981317760235477929" />
                  <node concept="3clFbS" id="hY" role="9aQI4">
                    <node concept="3cpWs8" id="i0" role="3cqZAp">
                      <node concept="3cpWsn" id="i2" role="3cpWs9">
                        <property role="TrG5h" value="errorTarget" />
                        <property role="3TUv4t" value="true" />
                        <node concept="3uibUv" id="i3" role="1tU5fm">
                          <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                        </node>
                        <node concept="2ShNRf" id="i4" role="33vP2m">
                          <node concept="1pGfFk" id="i5" role="2ShVmc">
                            <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="i1" role="3cqZAp">
                      <node concept="3cpWsn" id="i6" role="3cpWs9">
                        <property role="TrG5h" value="_reporter_2309309498" />
                        <node concept="3uibUv" id="i7" role="1tU5fm">
                          <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                        </node>
                        <node concept="2OqwBi" id="i8" role="33vP2m">
                          <node concept="3VmV3z" id="i9" role="2Oq$k0">
                            <property role="3VnrPo" value="typeCheckingContext" />
                            <node concept="3uibUv" id="ib" role="3Vn4Tt">
                              <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                            </node>
                          </node>
                          <node concept="liA8E" id="ia" role="2OqNvi">
                            <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                            <node concept="37vLTw" id="ic" role="37wK5m">
                              <ref role="3cqZAo" node="gy" resolve="editorOperation" />
                              <uo k="s:originTrace" v="n:6981317760235477930" />
                            </node>
                            <node concept="Xl_RD" id="id" role="37wK5m">
                              <property role="Xl_RC" value="Incompatible number of parameters" />
                              <uo k="s:originTrace" v="n:6981317760235477931" />
                            </node>
                            <node concept="Xl_RD" id="ie" role="37wK5m">
                              <property role="Xl_RC" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                            </node>
                            <node concept="Xl_RD" id="if" role="37wK5m">
                              <property role="Xl_RC" value="6981317760235477929" />
                            </node>
                            <node concept="10Nm6u" id="ig" role="37wK5m" />
                            <node concept="37vLTw" id="ih" role="37wK5m">
                              <ref role="3cqZAo" node="i2" resolve="errorTarget" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="6wLe0" id="hZ" role="lGtFl">
                    <property role="6wLej" value="6981317760235477929" />
                    <property role="6wLeW" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                  </node>
                </node>
                <node concept="3cpWs6" id="hX" role="3cqZAp">
                  <uo k="s:originTrace" v="n:6981317760235477932" />
                </node>
              </node>
              <node concept="2d3UOw" id="hV" role="3clFbw">
                <uo k="s:originTrace" v="n:6981317760235477933" />
                <node concept="2OqwBi" id="ii" role="3uHU7w">
                  <uo k="s:originTrace" v="n:6981317760235477934" />
                  <node concept="37vLTw" id="ik" role="2Oq$k0">
                    <ref role="3cqZAo" node="hz" resolve="parameters" />
                    <uo k="s:originTrace" v="n:4265636116363064451" />
                  </node>
                  <node concept="34oBXx" id="il" role="2OqNvi">
                    <uo k="s:originTrace" v="n:6981317760235477936" />
                  </node>
                </node>
                <node concept="37vLTw" id="ij" role="3uHU7B">
                  <ref role="3cqZAo" node="hO" resolve="i" />
                  <uo k="s:originTrace" v="n:4265636116363097014" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="hS" role="3cqZAp">
              <uo k="s:originTrace" v="n:2912357169742645867" />
              <node concept="1PaTwC" id="im" role="1aUNEU">
                <uo k="s:originTrace" v="n:700871696606822497" />
                <node concept="3oM_SD" id="in" role="1PaTwD">
                  <property role="3oM_SC" value="todo" />
                  <uo k="s:originTrace" v="n:700871696606822498" />
                </node>
                <node concept="3oM_SD" id="io" role="1PaTwD">
                  <property role="3oM_SC" value="[MM]" />
                  <uo k="s:originTrace" v="n:700871696606822499" />
                </node>
                <node concept="3oM_SD" id="ip" role="1PaTwD">
                  <property role="3oM_SC" value="isn't" />
                  <uo k="s:originTrace" v="n:700871696606822500" />
                </node>
                <node concept="3oM_SD" id="iq" role="1PaTwD">
                  <property role="3oM_SC" value="it" />
                  <uo k="s:originTrace" v="n:700871696606822501" />
                </node>
                <node concept="3oM_SD" id="ir" role="1PaTwD">
                  <property role="3oM_SC" value="wrong?" />
                  <uo k="s:originTrace" v="n:700871696606822502" />
                </node>
                <node concept="3oM_SD" id="is" role="1PaTwD">
                  <property role="3oM_SC" value="Why" />
                  <uo k="s:originTrace" v="n:700871696606822503" />
                </node>
                <node concept="3oM_SD" id="it" role="1PaTwD">
                  <property role="3oM_SC" value="type" />
                  <uo k="s:originTrace" v="n:700871696606822504" />
                </node>
                <node concept="3oM_SD" id="iu" role="1PaTwD">
                  <property role="3oM_SC" value="of" />
                  <uo k="s:originTrace" v="n:700871696606822505" />
                </node>
                <node concept="3oM_SD" id="iv" role="1PaTwD">
                  <property role="3oM_SC" value="a" />
                  <uo k="s:originTrace" v="n:700871696606822506" />
                </node>
                <node concept="3oM_SD" id="iw" role="1PaTwD">
                  <property role="3oM_SC" value="concept" />
                  <uo k="s:originTrace" v="n:700871696606822507" />
                </node>
                <node concept="3oM_SD" id="ix" role="1PaTwD">
                  <property role="3oM_SC" value="node?" />
                  <uo k="s:originTrace" v="n:700871696606822508" />
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="hT" role="3cqZAp">
              <uo k="s:originTrace" v="n:5313207397360251117" />
              <node concept="3clFbS" id="iy" role="9aQI4">
                <node concept="3cpWs8" id="i$" role="3cqZAp">
                  <node concept="3cpWsn" id="iB" role="3cpWs9">
                    <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                    <node concept="2OqwBi" id="iC" role="33vP2m">
                      <uo k="s:originTrace" v="n:5313207397360251120" />
                      <node concept="2OqwBi" id="iE" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:5313207397360251121" />
                        <node concept="37vLTw" id="iH" role="2Oq$k0">
                          <ref role="3cqZAo" node="gy" resolve="editorOperation" />
                          <uo k="s:originTrace" v="n:5313207397360251122" />
                        </node>
                        <node concept="3Tsc0h" id="iI" role="2OqNvi">
                          <ref role="3TtcxE" to="fb9u:O$iR4J$g4J" resolve="arguments" />
                          <uo k="s:originTrace" v="n:5313207397360251123" />
                        </node>
                      </node>
                      <node concept="liA8E" id="iF" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                        <uo k="s:originTrace" v="n:5313207397360251124" />
                        <node concept="37vLTw" id="iJ" role="37wK5m">
                          <ref role="3cqZAo" node="hO" resolve="i" />
                          <uo k="s:originTrace" v="n:4265636116363077076" />
                        </node>
                      </node>
                      <node concept="6wLe0" id="iG" role="lGtFl">
                        <property role="6wLej" value="5313207397360251117" />
                        <property role="6wLeW" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="iD" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="i_" role="3cqZAp">
                  <node concept="3cpWsn" id="iK" role="3cpWs9">
                    <property role="TrG5h" value="_info_12389875345" />
                    <node concept="3uibUv" id="iL" role="1tU5fm">
                      <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                    </node>
                    <node concept="2ShNRf" id="iM" role="33vP2m">
                      <node concept="1pGfFk" id="iN" role="2ShVmc">
                        <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                        <node concept="37vLTw" id="iO" role="37wK5m">
                          <ref role="3cqZAo" node="iB" resolve="_nodeToCheck_1029348928467" />
                        </node>
                        <node concept="10Nm6u" id="iP" role="37wK5m" />
                        <node concept="Xl_RD" id="iQ" role="37wK5m">
                          <property role="Xl_RC" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="iR" role="37wK5m">
                          <property role="Xl_RC" value="5313207397360251117" />
                        </node>
                        <node concept="3cmrfG" id="iS" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="10Nm6u" id="iT" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="iA" role="3cqZAp">
                  <node concept="2OqwBi" id="iU" role="3clFbG">
                    <node concept="3VmV3z" id="iV" role="2Oq$k0">
                      <property role="3VnrPo" value="typeCheckingContext" />
                      <node concept="3uibUv" id="iX" role="3Vn4Tt">
                        <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                      </node>
                    </node>
                    <node concept="liA8E" id="iW" role="2OqNvi">
                      <ref role="37wK5l" to="u78q:~TypeCheckingContext.createLessThanInequality(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,boolean,boolean,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createLessThanInequality" />
                      <node concept="10QFUN" id="iY" role="37wK5m">
                        <uo k="s:originTrace" v="n:5313207397360251118" />
                        <node concept="3uibUv" id="j3" role="10QFUM">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                        <node concept="2OqwBi" id="j4" role="10QFUP">
                          <uo k="s:originTrace" v="n:5313207397360251119" />
                          <node concept="3VmV3z" id="j5" role="2Oq$k0">
                            <property role="3VnrPo" value="typeCheckingContext" />
                            <node concept="3uibUv" id="j8" role="3Vn4Tt">
                              <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                            </node>
                          </node>
                          <node concept="liA8E" id="j6" role="2OqNvi">
                            <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                            <node concept="3VmV3z" id="j9" role="37wK5m">
                              <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                              <node concept="3uibUv" id="jd" role="3Vn4Tt">
                                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="ja" role="37wK5m">
                              <property role="Xl_RC" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                            </node>
                            <node concept="Xl_RD" id="jb" role="37wK5m">
                              <property role="Xl_RC" value="5313207397360251119" />
                            </node>
                            <node concept="3clFbT" id="jc" role="37wK5m">
                              <property role="3clFbU" value="true" />
                            </node>
                          </node>
                          <node concept="6wLe0" id="j7" role="lGtFl">
                            <property role="6wLej" value="5313207397360251119" />
                            <property role="6wLeW" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                          </node>
                        </node>
                      </node>
                      <node concept="10QFUN" id="iZ" role="37wK5m">
                        <uo k="s:originTrace" v="n:5313207397360251126" />
                        <node concept="3uibUv" id="je" role="10QFUM">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                        <node concept="2OqwBi" id="jf" role="10QFUP">
                          <uo k="s:originTrace" v="n:5313207397360251127" />
                          <node concept="3VmV3z" id="jg" role="2Oq$k0">
                            <property role="3VnrPo" value="typeCheckingContext" />
                            <node concept="3uibUv" id="jj" role="3Vn4Tt">
                              <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                            </node>
                          </node>
                          <node concept="liA8E" id="jh" role="2OqNvi">
                            <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                            <node concept="2OqwBi" id="jk" role="37wK5m">
                              <uo k="s:originTrace" v="n:2912357169742655366" />
                              <node concept="2OqwBi" id="jo" role="2Oq$k0">
                                <uo k="s:originTrace" v="n:5313207397360251128" />
                                <node concept="37vLTw" id="jq" role="2Oq$k0">
                                  <ref role="3cqZAo" node="hz" resolve="parameters" />
                                  <uo k="s:originTrace" v="n:4265636116363067220" />
                                </node>
                                <node concept="34jXtK" id="jr" role="2OqNvi">
                                  <uo k="s:originTrace" v="n:5313207397360251130" />
                                  <node concept="37vLTw" id="js" role="25WWJ7">
                                    <ref role="3cqZAo" node="hO" resolve="i" />
                                    <uo k="s:originTrace" v="n:4265636116363115795" />
                                  </node>
                                </node>
                              </node>
                              <node concept="FGMqu" id="jp" role="2OqNvi">
                                <uo k="s:originTrace" v="n:2912357169742656348" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="jl" role="37wK5m">
                              <property role="Xl_RC" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                            </node>
                            <node concept="Xl_RD" id="jm" role="37wK5m">
                              <property role="Xl_RC" value="5313207397360251127" />
                            </node>
                            <node concept="3clFbT" id="jn" role="37wK5m">
                              <property role="3clFbU" value="true" />
                            </node>
                          </node>
                          <node concept="6wLe0" id="ji" role="lGtFl">
                            <property role="6wLej" value="5313207397360251127" />
                            <property role="6wLeW" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbT" id="j0" role="37wK5m" />
                      <node concept="3clFbT" id="j1" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                      <node concept="37vLTw" id="j2" role="37wK5m">
                        <ref role="3cqZAo" node="iK" resolve="_info_12389875345" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="6wLe0" id="iz" role="lGtFl">
                <property role="6wLej" value="5313207397360251117" />
                <property role="6wLeW" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="hO" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <uo k="s:originTrace" v="n:6981317760235477954" />
            <node concept="10Oyi0" id="jt" role="1tU5fm">
              <uo k="s:originTrace" v="n:6981317760235477955" />
            </node>
            <node concept="3cmrfG" id="ju" role="33vP2m">
              <property role="3cmrfH" value="0" />
              <uo k="s:originTrace" v="n:6981317760235477956" />
            </node>
          </node>
          <node concept="3eOVzh" id="hP" role="1Dwp0S">
            <uo k="s:originTrace" v="n:6981317760235477957" />
            <node concept="2OqwBi" id="jv" role="3uHU7w">
              <uo k="s:originTrace" v="n:6981317760235477958" />
              <node concept="2OqwBi" id="jx" role="2Oq$k0">
                <uo k="s:originTrace" v="n:6981317760235477959" />
                <node concept="37vLTw" id="jz" role="2Oq$k0">
                  <ref role="3cqZAo" node="gy" resolve="editorOperation" />
                  <uo k="s:originTrace" v="n:6981317760235477960" />
                </node>
                <node concept="3Tsc0h" id="j$" role="2OqNvi">
                  <ref role="3TtcxE" to="fb9u:O$iR4J$g4J" resolve="arguments" />
                  <uo k="s:originTrace" v="n:6981317760235477961" />
                </node>
              </node>
              <node concept="34oBXx" id="jy" role="2OqNvi">
                <uo k="s:originTrace" v="n:6981317760235477962" />
              </node>
            </node>
            <node concept="37vLTw" id="jw" role="3uHU7B">
              <ref role="3cqZAo" node="hO" resolve="i" />
              <uo k="s:originTrace" v="n:4265636116363068284" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="gJ" role="3cqZAp">
          <uo k="s:originTrace" v="n:6981317760235639138" />
        </node>
        <node concept="3SKdUt" id="gK" role="3cqZAp">
          <uo k="s:originTrace" v="n:6981317760235639140" />
          <node concept="1PaTwC" id="j_" role="1aUNEU">
            <uo k="s:originTrace" v="n:700871696606822509" />
            <node concept="3oM_SD" id="jA" role="1PaTwD">
              <property role="3oM_SC" value="all" />
              <uo k="s:originTrace" v="n:700871696606822510" />
            </node>
            <node concept="3oM_SD" id="jB" role="1PaTwD">
              <property role="3oM_SC" value="declared" />
              <uo k="s:originTrace" v="n:700871696606822511" />
            </node>
            <node concept="3oM_SD" id="jC" role="1PaTwD">
              <property role="3oM_SC" value="parameters" />
              <uo k="s:originTrace" v="n:700871696606822512" />
            </node>
            <node concept="3oM_SD" id="jD" role="1PaTwD">
              <property role="3oM_SC" value="present" />
              <uo k="s:originTrace" v="n:700871696606822513" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="gL" role="3cqZAp">
          <uo k="s:originTrace" v="n:6981317760235639129" />
          <node concept="3clFbS" id="jE" role="3clFbx">
            <uo k="s:originTrace" v="n:6981317760235639130" />
            <node concept="9aQIb" id="jG" role="3cqZAp">
              <uo k="s:originTrace" v="n:6981317760235639162" />
              <node concept="3clFbS" id="jH" role="9aQI4">
                <node concept="3cpWs8" id="jJ" role="3cqZAp">
                  <node concept="3cpWsn" id="jL" role="3cpWs9">
                    <property role="TrG5h" value="errorTarget" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3uibUv" id="jM" role="1tU5fm">
                      <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                    </node>
                    <node concept="2ShNRf" id="jN" role="33vP2m">
                      <node concept="1pGfFk" id="jO" role="2ShVmc">
                        <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="jK" role="3cqZAp">
                  <node concept="3cpWsn" id="jP" role="3cpWs9">
                    <property role="TrG5h" value="_reporter_2309309498" />
                    <node concept="3uibUv" id="jQ" role="1tU5fm">
                      <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                    </node>
                    <node concept="2OqwBi" id="jR" role="33vP2m">
                      <node concept="3VmV3z" id="jS" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="jU" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="jT" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                        <node concept="37vLTw" id="jV" role="37wK5m">
                          <ref role="3cqZAo" node="gy" resolve="editorOperation" />
                          <uo k="s:originTrace" v="n:6981317760235639166" />
                        </node>
                        <node concept="Xl_RD" id="jW" role="37wK5m">
                          <property role="Xl_RC" value="Incompatible number of parameters" />
                          <uo k="s:originTrace" v="n:6981317760235639165" />
                        </node>
                        <node concept="Xl_RD" id="jX" role="37wK5m">
                          <property role="Xl_RC" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="jY" role="37wK5m">
                          <property role="Xl_RC" value="6981317760235639162" />
                        </node>
                        <node concept="10Nm6u" id="jZ" role="37wK5m" />
                        <node concept="37vLTw" id="k0" role="37wK5m">
                          <ref role="3cqZAo" node="jL" resolve="errorTarget" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="6wLe0" id="jI" role="lGtFl">
                <property role="6wLej" value="6981317760235639162" />
                <property role="6wLeW" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
              </node>
            </node>
          </node>
          <node concept="3eOVzh" id="jF" role="3clFbw">
            <uo k="s:originTrace" v="n:6981317760235639153" />
            <node concept="2OqwBi" id="k1" role="3uHU7w">
              <uo k="s:originTrace" v="n:6981317760235639157" />
              <node concept="37vLTw" id="k3" role="2Oq$k0">
                <ref role="3cqZAo" node="hz" resolve="parameters" />
                <uo k="s:originTrace" v="n:4265636116363114019" />
              </node>
              <node concept="34oBXx" id="k4" role="2OqNvi">
                <uo k="s:originTrace" v="n:6981317760235639161" />
              </node>
            </node>
            <node concept="2OqwBi" id="k2" role="3uHU7B">
              <uo k="s:originTrace" v="n:6981317760235639148" />
              <node concept="2OqwBi" id="k5" role="2Oq$k0">
                <uo k="s:originTrace" v="n:6981317760235639143" />
                <node concept="37vLTw" id="k7" role="2Oq$k0">
                  <ref role="3cqZAo" node="gy" resolve="editorOperation" />
                  <uo k="s:originTrace" v="n:6981317760235639142" />
                </node>
                <node concept="3Tsc0h" id="k8" role="2OqNvi">
                  <ref role="3TtcxE" to="fb9u:O$iR4J$g4J" resolve="arguments" />
                  <uo k="s:originTrace" v="n:6981317760235639147" />
                </node>
              </node>
              <node concept="34oBXx" id="k6" role="2OqNvi">
                <uo k="s:originTrace" v="n:6981317760235639152" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="gA" role="1B3o_S">
        <uo k="s:originTrace" v="n:6981317760235477903" />
      </node>
    </node>
    <node concept="3clFb_" id="go" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:6981317760235477903" />
      <node concept="3bZ5Sz" id="k9" role="3clF45">
        <uo k="s:originTrace" v="n:6981317760235477903" />
      </node>
      <node concept="3clFbS" id="ka" role="3clF47">
        <uo k="s:originTrace" v="n:6981317760235477903" />
        <node concept="3cpWs6" id="kc" role="3cqZAp">
          <uo k="s:originTrace" v="n:6981317760235477903" />
          <node concept="35c_gC" id="kd" role="3cqZAk">
            <ref role="35c_gD" to="fb9u:O$iR4J$g4I" resolve="EditorOperationCall" />
            <uo k="s:originTrace" v="n:6981317760235477903" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="kb" role="1B3o_S">
        <uo k="s:originTrace" v="n:6981317760235477903" />
      </node>
    </node>
    <node concept="3clFb_" id="gp" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:6981317760235477903" />
      <node concept="37vLTG" id="ke" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:6981317760235477903" />
        <node concept="3Tqbb2" id="ki" role="1tU5fm">
          <uo k="s:originTrace" v="n:6981317760235477903" />
        </node>
      </node>
      <node concept="3clFbS" id="kf" role="3clF47">
        <uo k="s:originTrace" v="n:6981317760235477903" />
        <node concept="9aQIb" id="kj" role="3cqZAp">
          <uo k="s:originTrace" v="n:6981317760235477903" />
          <node concept="3clFbS" id="kk" role="9aQI4">
            <uo k="s:originTrace" v="n:6981317760235477903" />
            <node concept="3cpWs6" id="kl" role="3cqZAp">
              <uo k="s:originTrace" v="n:6981317760235477903" />
              <node concept="2ShNRf" id="km" role="3cqZAk">
                <uo k="s:originTrace" v="n:6981317760235477903" />
                <node concept="1pGfFk" id="kn" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:6981317760235477903" />
                  <node concept="2OqwBi" id="ko" role="37wK5m">
                    <uo k="s:originTrace" v="n:6981317760235477903" />
                    <node concept="2OqwBi" id="kq" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:6981317760235477903" />
                      <node concept="liA8E" id="ks" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:6981317760235477903" />
                      </node>
                      <node concept="2JrnkZ" id="kt" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:6981317760235477903" />
                        <node concept="37vLTw" id="ku" role="2JrQYb">
                          <ref role="3cqZAo" node="ke" resolve="argument" />
                          <uo k="s:originTrace" v="n:6981317760235477903" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="kr" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:6981317760235477903" />
                      <node concept="1rXfSq" id="kv" role="37wK5m">
                        <ref role="37wK5l" node="go" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:6981317760235477903" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="kp" role="37wK5m">
                    <uo k="s:originTrace" v="n:6981317760235477903" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="kg" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:6981317760235477903" />
      </node>
      <node concept="3Tm1VV" id="kh" role="1B3o_S">
        <uo k="s:originTrace" v="n:6981317760235477903" />
      </node>
    </node>
    <node concept="3clFb_" id="gq" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:6981317760235477903" />
      <node concept="3clFbS" id="kw" role="3clF47">
        <uo k="s:originTrace" v="n:6981317760235477903" />
        <node concept="3cpWs6" id="kz" role="3cqZAp">
          <uo k="s:originTrace" v="n:6981317760235477903" />
          <node concept="3clFbT" id="k$" role="3cqZAk">
            <uo k="s:originTrace" v="n:6981317760235477903" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="kx" role="3clF45">
        <uo k="s:originTrace" v="n:6981317760235477903" />
      </node>
      <node concept="3Tm1VV" id="ky" role="1B3o_S">
        <uo k="s:originTrace" v="n:6981317760235477903" />
      </node>
    </node>
    <node concept="3uibUv" id="gr" role="EKbjA">
      <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:6981317760235477903" />
    </node>
    <node concept="3uibUv" id="gs" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractInferenceRule_Runtime" resolve="AbstractInferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:6981317760235477903" />
    </node>
    <node concept="3Tm1VV" id="gt" role="1B3o_S">
      <uo k="s:originTrace" v="n:6981317760235477903" />
    </node>
  </node>
  <node concept="312cEu" id="k_">
    <property role="TrG5h" value="typeof_GetEditorOperation_InferenceRule" />
    <uo k="s:originTrace" v="n:6981317760235393639" />
    <node concept="3clFbW" id="kA" role="jymVt">
      <uo k="s:originTrace" v="n:6981317760235393639" />
      <node concept="3clFbS" id="kI" role="3clF47">
        <uo k="s:originTrace" v="n:6981317760235393639" />
      </node>
      <node concept="3Tm1VV" id="kJ" role="1B3o_S">
        <uo k="s:originTrace" v="n:6981317760235393639" />
      </node>
      <node concept="3cqZAl" id="kK" role="3clF45">
        <uo k="s:originTrace" v="n:6981317760235393639" />
      </node>
    </node>
    <node concept="3clFb_" id="kB" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:6981317760235393639" />
      <node concept="3cqZAl" id="kL" role="3clF45">
        <uo k="s:originTrace" v="n:6981317760235393639" />
      </node>
      <node concept="37vLTG" id="kM" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="operation" />
        <uo k="s:originTrace" v="n:6981317760235393639" />
        <node concept="3Tqbb2" id="kR" role="1tU5fm">
          <uo k="s:originTrace" v="n:6981317760235393639" />
        </node>
      </node>
      <node concept="37vLTG" id="kN" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:6981317760235393639" />
        <node concept="3uibUv" id="kS" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:6981317760235393639" />
        </node>
      </node>
      <node concept="37vLTG" id="kO" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:6981317760235393639" />
        <node concept="3uibUv" id="kT" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:6981317760235393639" />
        </node>
      </node>
      <node concept="3clFbS" id="kP" role="3clF47">
        <uo k="s:originTrace" v="n:6981317760235393640" />
        <node concept="3cpWs8" id="kU" role="3cqZAp">
          <uo k="s:originTrace" v="n:6981317760235403018" />
          <node concept="3cpWsn" id="kX" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="T_typevar_6981317760235403018" />
            <node concept="2OqwBi" id="kY" role="33vP2m">
              <node concept="3VmV3z" id="l0" role="2Oq$k0">
                <property role="3VnrPo" value="typeCheckingContext" />
                <node concept="3uibUv" id="l2" role="3Vn4Tt">
                  <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                </node>
              </node>
              <node concept="liA8E" id="l1" role="2OqNvi">
                <ref role="37wK5l" to="u78q:~TypeCheckingContext.createNewRuntimeTypesVariable()" resolve="createNewRuntimeTypesVariable" />
              </node>
            </node>
            <node concept="3Tqbb2" id="kZ" role="1tU5fm" />
          </node>
        </node>
        <node concept="9aQIb" id="kV" role="3cqZAp">
          <uo k="s:originTrace" v="n:48168216978395466" />
          <node concept="3clFbS" id="l3" role="9aQI4">
            <node concept="3cpWs8" id="l5" role="3cqZAp">
              <node concept="3cpWsn" id="l8" role="3cpWs9">
                <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                <node concept="2OqwBi" id="l9" role="33vP2m">
                  <uo k="s:originTrace" v="n:48168216978395476" />
                  <node concept="1PxgMI" id="lb" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:48168216978395477" />
                    <node concept="2OqwBi" id="le" role="1m5AlR">
                      <uo k="s:originTrace" v="n:48168216978395478" />
                      <node concept="37vLTw" id="lg" role="2Oq$k0">
                        <ref role="3cqZAo" node="kM" resolve="operation" />
                        <uo k="s:originTrace" v="n:48168216978395479" />
                      </node>
                      <node concept="1mfA1w" id="lh" role="2OqNvi">
                        <uo k="s:originTrace" v="n:48168216978395480" />
                      </node>
                    </node>
                    <node concept="chp4Y" id="lf" role="3oSUPX">
                      <ref role="cht4Q" to="tpee:hqOqwz4" resolve="DotExpression" />
                      <uo k="s:originTrace" v="n:8089793891579201757" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="lc" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:hqOq$gm" resolve="operand" />
                    <uo k="s:originTrace" v="n:48168216978395481" />
                  </node>
                  <node concept="6wLe0" id="ld" role="lGtFl">
                    <property role="6wLej" value="48168216978395466" />
                    <property role="6wLeW" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                  </node>
                </node>
                <node concept="3uibUv" id="la" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="l6" role="3cqZAp">
              <node concept="3cpWsn" id="li" role="3cpWs9">
                <property role="TrG5h" value="_info_12389875345" />
                <node concept="3uibUv" id="lj" role="1tU5fm">
                  <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                </node>
                <node concept="2ShNRf" id="lk" role="33vP2m">
                  <node concept="1pGfFk" id="ll" role="2ShVmc">
                    <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                    <node concept="37vLTw" id="lm" role="37wK5m">
                      <ref role="3cqZAo" node="l8" resolve="_nodeToCheck_1029348928467" />
                    </node>
                    <node concept="10Nm6u" id="ln" role="37wK5m" />
                    <node concept="Xl_RD" id="lo" role="37wK5m">
                      <property role="Xl_RC" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                    </node>
                    <node concept="Xl_RD" id="lp" role="37wK5m">
                      <property role="Xl_RC" value="48168216978395466" />
                    </node>
                    <node concept="3cmrfG" id="lq" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="10Nm6u" id="lr" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="l7" role="3cqZAp">
              <node concept="2OqwBi" id="ls" role="3clFbG">
                <node concept="3VmV3z" id="lt" role="2Oq$k0">
                  <property role="3VnrPo" value="typeCheckingContext" />
                  <node concept="3uibUv" id="lv" role="3Vn4Tt">
                    <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                  </node>
                </node>
                <node concept="liA8E" id="lu" role="2OqNvi">
                  <ref role="37wK5l" to="u78q:~TypeCheckingContext.createLessThanInequality(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,boolean,boolean,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createLessThanInequality" />
                  <node concept="10QFUN" id="lw" role="37wK5m">
                    <uo k="s:originTrace" v="n:48168216978395474" />
                    <node concept="3uibUv" id="l_" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="lA" role="10QFUP">
                      <uo k="s:originTrace" v="n:48168216978395475" />
                      <node concept="3VmV3z" id="lB" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="lE" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="lC" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                        <node concept="3VmV3z" id="lF" role="37wK5m">
                          <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                          <node concept="3uibUv" id="lJ" role="3Vn4Tt">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="lG" role="37wK5m">
                          <property role="Xl_RC" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="lH" role="37wK5m">
                          <property role="Xl_RC" value="48168216978395475" />
                        </node>
                        <node concept="3clFbT" id="lI" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                      <node concept="6wLe0" id="lD" role="lGtFl">
                        <property role="6wLej" value="48168216978395475" />
                        <property role="6wLeW" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                      </node>
                    </node>
                  </node>
                  <node concept="10QFUN" id="lx" role="37wK5m">
                    <uo k="s:originTrace" v="n:48168216978395468" />
                    <node concept="3uibUv" id="lK" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2pJPEk" id="lL" role="10QFUP">
                      <uo k="s:originTrace" v="n:48168216978395469" />
                      <node concept="2pJPED" id="lM" role="2pJPEn">
                        <ref role="2pJxaS" to="fb9u:O$iR4J$g0s" resolve="PersistentConfigurationType" />
                        <uo k="s:originTrace" v="n:48168216978395470" />
                        <node concept="2pIpSj" id="lN" role="2pJxcM">
                          <ref role="2pIpSl" to="fb9u:O$iR4J$g0t" resolve="persistentConfiguration" />
                          <uo k="s:originTrace" v="n:48168216978395471" />
                          <node concept="36biLy" id="lO" role="28nt2d">
                            <uo k="s:originTrace" v="n:48168216978395472" />
                            <node concept="2OqwBi" id="lP" role="36biLW">
                              <uo k="s:originTrace" v="n:48168216978395473" />
                              <node concept="3VmV3z" id="lQ" role="2Oq$k0">
                                <property role="3VnrPo" value="typeCheckingContext" />
                                <node concept="3uibUv" id="lS" role="3Vn4Tt">
                                  <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                                </node>
                              </node>
                              <node concept="liA8E" id="lR" role="2OqNvi">
                                <ref role="37wK5l" to="u78q:~TypeCheckingContext.getRepresentative(org.jetbrains.mps.openapi.model.SNode)" resolve="getRepresentative" />
                                <node concept="37vLTw" id="lT" role="37wK5m">
                                  <ref role="3cqZAo" node="kX" resolve="T_typevar_6981317760235403018" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbT" id="ly" role="37wK5m" />
                  <node concept="3clFbT" id="lz" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                  <node concept="37vLTw" id="l$" role="37wK5m">
                    <ref role="3cqZAo" node="li" resolve="_info_12389875345" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="6wLe0" id="l4" role="lGtFl">
            <property role="6wLej" value="48168216978395466" />
            <property role="6wLeW" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
          </node>
        </node>
        <node concept="9aQIb" id="kW" role="3cqZAp">
          <uo k="s:originTrace" v="n:6981317760235403009" />
          <node concept="3clFbS" id="lU" role="9aQI4">
            <node concept="3cpWs8" id="lW" role="3cqZAp">
              <node concept="3cpWsn" id="lZ" role="3cpWs9">
                <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                <node concept="37vLTw" id="m0" role="33vP2m">
                  <ref role="3cqZAo" node="kM" resolve="operation" />
                  <uo k="s:originTrace" v="n:6981317760235403008" />
                  <node concept="6wLe0" id="m2" role="lGtFl">
                    <property role="6wLej" value="6981317760235403009" />
                    <property role="6wLeW" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                  </node>
                </node>
                <node concept="3uibUv" id="m1" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="lX" role="3cqZAp">
              <node concept="3cpWsn" id="m3" role="3cpWs9">
                <property role="TrG5h" value="_info_12389875345" />
                <node concept="3uibUv" id="m4" role="1tU5fm">
                  <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                </node>
                <node concept="2ShNRf" id="m5" role="33vP2m">
                  <node concept="1pGfFk" id="m6" role="2ShVmc">
                    <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                    <node concept="37vLTw" id="m7" role="37wK5m">
                      <ref role="3cqZAo" node="lZ" resolve="_nodeToCheck_1029348928467" />
                    </node>
                    <node concept="10Nm6u" id="m8" role="37wK5m" />
                    <node concept="Xl_RD" id="m9" role="37wK5m">
                      <property role="Xl_RC" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                    </node>
                    <node concept="Xl_RD" id="ma" role="37wK5m">
                      <property role="Xl_RC" value="6981317760235403009" />
                    </node>
                    <node concept="3cmrfG" id="mb" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="10Nm6u" id="mc" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="lY" role="3cqZAp">
              <node concept="2OqwBi" id="md" role="3clFbG">
                <node concept="3VmV3z" id="me" role="2Oq$k0">
                  <property role="3VnrPo" value="typeCheckingContext" />
                  <node concept="3uibUv" id="mg" role="3Vn4Tt">
                    <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                  </node>
                </node>
                <node concept="liA8E" id="mf" role="2OqNvi">
                  <ref role="37wK5l" to="u78q:~TypeCheckingContext.createEquation(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createEquation" />
                  <node concept="10QFUN" id="mh" role="37wK5m">
                    <uo k="s:originTrace" v="n:6981317760235403012" />
                    <node concept="3uibUv" id="mk" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="ml" role="10QFUP">
                      <uo k="s:originTrace" v="n:6981317760235403006" />
                      <node concept="3VmV3z" id="mm" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="mp" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="mn" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                        <node concept="3VmV3z" id="mq" role="37wK5m">
                          <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                          <node concept="3uibUv" id="mu" role="3Vn4Tt">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="mr" role="37wK5m">
                          <property role="Xl_RC" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="ms" role="37wK5m">
                          <property role="Xl_RC" value="6981317760235403006" />
                        </node>
                        <node concept="3clFbT" id="mt" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                      <node concept="6wLe0" id="mo" role="lGtFl">
                        <property role="6wLej" value="6981317760235403006" />
                        <property role="6wLeW" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                      </node>
                    </node>
                  </node>
                  <node concept="10QFUN" id="mi" role="37wK5m">
                    <uo k="s:originTrace" v="n:6981317760235403013" />
                    <node concept="3uibUv" id="mv" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2pJPEk" id="mw" role="10QFUP">
                      <uo k="s:originTrace" v="n:48168216978407400" />
                      <node concept="2pJPED" id="mx" role="2pJPEn">
                        <ref role="2pJxaS" to="fb9u:O$iR4J$g4U" resolve="SettingsEditorType" />
                        <uo k="s:originTrace" v="n:48168216978407397" />
                        <node concept="2pIpSj" id="my" role="2pJxcM">
                          <ref role="2pIpSl" to="fb9u:O$iR4J$g4V" resolve="configuration" />
                          <uo k="s:originTrace" v="n:48168216978407398" />
                          <node concept="36biLy" id="mz" role="28nt2d">
                            <uo k="s:originTrace" v="n:48168216978407399" />
                            <node concept="2OqwBi" id="m$" role="36biLW">
                              <uo k="s:originTrace" v="n:6981317760235403050" />
                              <node concept="3VmV3z" id="m_" role="2Oq$k0">
                                <property role="3VnrPo" value="typeCheckingContext" />
                                <node concept="3uibUv" id="mB" role="3Vn4Tt">
                                  <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                                </node>
                              </node>
                              <node concept="liA8E" id="mA" role="2OqNvi">
                                <ref role="37wK5l" to="u78q:~TypeCheckingContext.getRepresentative(org.jetbrains.mps.openapi.model.SNode)" resolve="getRepresentative" />
                                <node concept="37vLTw" id="mC" role="37wK5m">
                                  <ref role="3cqZAo" node="kX" resolve="T_typevar_6981317760235403018" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="mj" role="37wK5m">
                    <ref role="3cqZAo" node="m3" resolve="_info_12389875345" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="6wLe0" id="lV" role="lGtFl">
            <property role="6wLej" value="6981317760235403009" />
            <property role="6wLeW" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="kQ" role="1B3o_S">
        <uo k="s:originTrace" v="n:6981317760235393639" />
      </node>
    </node>
    <node concept="3clFb_" id="kC" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:6981317760235393639" />
      <node concept="3bZ5Sz" id="mD" role="3clF45">
        <uo k="s:originTrace" v="n:6981317760235393639" />
      </node>
      <node concept="3clFbS" id="mE" role="3clF47">
        <uo k="s:originTrace" v="n:6981317760235393639" />
        <node concept="3cpWs6" id="mG" role="3cqZAp">
          <uo k="s:originTrace" v="n:6981317760235393639" />
          <node concept="35c_gC" id="mH" role="3cqZAk">
            <ref role="35c_gD" to="fb9u:4DPUXm60GE_" resolve="GetEditorOperation" />
            <uo k="s:originTrace" v="n:6981317760235393639" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="mF" role="1B3o_S">
        <uo k="s:originTrace" v="n:6981317760235393639" />
      </node>
    </node>
    <node concept="3clFb_" id="kD" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:6981317760235393639" />
      <node concept="37vLTG" id="mI" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:6981317760235393639" />
        <node concept="3Tqbb2" id="mM" role="1tU5fm">
          <uo k="s:originTrace" v="n:6981317760235393639" />
        </node>
      </node>
      <node concept="3clFbS" id="mJ" role="3clF47">
        <uo k="s:originTrace" v="n:6981317760235393639" />
        <node concept="9aQIb" id="mN" role="3cqZAp">
          <uo k="s:originTrace" v="n:6981317760235393639" />
          <node concept="3clFbS" id="mO" role="9aQI4">
            <uo k="s:originTrace" v="n:6981317760235393639" />
            <node concept="3cpWs6" id="mP" role="3cqZAp">
              <uo k="s:originTrace" v="n:6981317760235393639" />
              <node concept="2ShNRf" id="mQ" role="3cqZAk">
                <uo k="s:originTrace" v="n:6981317760235393639" />
                <node concept="1pGfFk" id="mR" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:6981317760235393639" />
                  <node concept="2OqwBi" id="mS" role="37wK5m">
                    <uo k="s:originTrace" v="n:6981317760235393639" />
                    <node concept="2OqwBi" id="mU" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:6981317760235393639" />
                      <node concept="liA8E" id="mW" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:6981317760235393639" />
                      </node>
                      <node concept="2JrnkZ" id="mX" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:6981317760235393639" />
                        <node concept="37vLTw" id="mY" role="2JrQYb">
                          <ref role="3cqZAo" node="mI" resolve="argument" />
                          <uo k="s:originTrace" v="n:6981317760235393639" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="mV" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:6981317760235393639" />
                      <node concept="1rXfSq" id="mZ" role="37wK5m">
                        <ref role="37wK5l" node="kC" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:6981317760235393639" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="mT" role="37wK5m">
                    <uo k="s:originTrace" v="n:6981317760235393639" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="mK" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:6981317760235393639" />
      </node>
      <node concept="3Tm1VV" id="mL" role="1B3o_S">
        <uo k="s:originTrace" v="n:6981317760235393639" />
      </node>
    </node>
    <node concept="3clFb_" id="kE" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:6981317760235393639" />
      <node concept="3clFbS" id="n0" role="3clF47">
        <uo k="s:originTrace" v="n:6981317760235393639" />
        <node concept="3cpWs6" id="n3" role="3cqZAp">
          <uo k="s:originTrace" v="n:6981317760235393639" />
          <node concept="3clFbT" id="n4" role="3cqZAk">
            <uo k="s:originTrace" v="n:6981317760235393639" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="n1" role="3clF45">
        <uo k="s:originTrace" v="n:6981317760235393639" />
      </node>
      <node concept="3Tm1VV" id="n2" role="1B3o_S">
        <uo k="s:originTrace" v="n:6981317760235393639" />
      </node>
    </node>
    <node concept="3uibUv" id="kF" role="EKbjA">
      <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:6981317760235393639" />
    </node>
    <node concept="3uibUv" id="kG" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractInferenceRule_Runtime" resolve="AbstractInferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:6981317760235393639" />
    </node>
    <node concept="3Tm1VV" id="kH" role="1B3o_S">
      <uo k="s:originTrace" v="n:6981317760235393639" />
    </node>
  </node>
  <node concept="312cEu" id="n5">
    <property role="3GE5qa" value="editor.ui" />
    <property role="TrG5h" value="typeof_GridBagConstraints_InferenceRule" />
    <uo k="s:originTrace" v="n:2722628536112115603" />
    <node concept="3clFbW" id="n6" role="jymVt">
      <uo k="s:originTrace" v="n:2722628536112115603" />
      <node concept="3clFbS" id="ne" role="3clF47">
        <uo k="s:originTrace" v="n:2722628536112115603" />
      </node>
      <node concept="3Tm1VV" id="nf" role="1B3o_S">
        <uo k="s:originTrace" v="n:2722628536112115603" />
      </node>
      <node concept="3cqZAl" id="ng" role="3clF45">
        <uo k="s:originTrace" v="n:2722628536112115603" />
      </node>
    </node>
    <node concept="3clFb_" id="n7" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:2722628536112115603" />
      <node concept="3cqZAl" id="nh" role="3clF45">
        <uo k="s:originTrace" v="n:2722628536112115603" />
      </node>
      <node concept="37vLTG" id="ni" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="gridBagConstraints" />
        <uo k="s:originTrace" v="n:2722628536112115603" />
        <node concept="3Tqbb2" id="nn" role="1tU5fm">
          <uo k="s:originTrace" v="n:2722628536112115603" />
        </node>
      </node>
      <node concept="37vLTG" id="nj" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:2722628536112115603" />
        <node concept="3uibUv" id="no" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:2722628536112115603" />
        </node>
      </node>
      <node concept="37vLTG" id="nk" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:2722628536112115603" />
        <node concept="3uibUv" id="np" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:2722628536112115603" />
        </node>
      </node>
      <node concept="3clFbS" id="nl" role="3clF47">
        <uo k="s:originTrace" v="n:2722628536112115604" />
        <node concept="9aQIb" id="nq" role="3cqZAp">
          <uo k="s:originTrace" v="n:2722628536112115610" />
          <node concept="3clFbS" id="ns" role="9aQI4">
            <node concept="3cpWs8" id="nu" role="3cqZAp">
              <node concept="3cpWsn" id="nx" role="3cpWs9">
                <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                <node concept="37vLTw" id="ny" role="33vP2m">
                  <ref role="3cqZAo" node="ni" resolve="gridBagConstraints" />
                  <uo k="s:originTrace" v="n:2722628536112115609" />
                  <node concept="6wLe0" id="n$" role="lGtFl">
                    <property role="6wLej" value="2722628536112115610" />
                    <property role="6wLeW" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                  </node>
                </node>
                <node concept="3uibUv" id="nz" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="nv" role="3cqZAp">
              <node concept="3cpWsn" id="n_" role="3cpWs9">
                <property role="TrG5h" value="_info_12389875345" />
                <node concept="3uibUv" id="nA" role="1tU5fm">
                  <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                </node>
                <node concept="2ShNRf" id="nB" role="33vP2m">
                  <node concept="1pGfFk" id="nC" role="2ShVmc">
                    <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                    <node concept="37vLTw" id="nD" role="37wK5m">
                      <ref role="3cqZAo" node="nx" resolve="_nodeToCheck_1029348928467" />
                    </node>
                    <node concept="10Nm6u" id="nE" role="37wK5m" />
                    <node concept="Xl_RD" id="nF" role="37wK5m">
                      <property role="Xl_RC" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                    </node>
                    <node concept="Xl_RD" id="nG" role="37wK5m">
                      <property role="Xl_RC" value="2722628536112115610" />
                    </node>
                    <node concept="3cmrfG" id="nH" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="10Nm6u" id="nI" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="nw" role="3cqZAp">
              <node concept="2OqwBi" id="nJ" role="3clFbG">
                <node concept="3VmV3z" id="nK" role="2Oq$k0">
                  <property role="3VnrPo" value="typeCheckingContext" />
                  <node concept="3uibUv" id="nM" role="3Vn4Tt">
                    <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                  </node>
                </node>
                <node concept="liA8E" id="nL" role="2OqNvi">
                  <ref role="37wK5l" to="u78q:~TypeCheckingContext.createEquation(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createEquation" />
                  <node concept="10QFUN" id="nN" role="37wK5m">
                    <uo k="s:originTrace" v="n:2722628536112115613" />
                    <node concept="3uibUv" id="nQ" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="nR" role="10QFUP">
                      <uo k="s:originTrace" v="n:2722628536112115607" />
                      <node concept="3VmV3z" id="nS" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="nV" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="nT" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                        <node concept="3VmV3z" id="nW" role="37wK5m">
                          <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                          <node concept="3uibUv" id="o0" role="3Vn4Tt">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="nX" role="37wK5m">
                          <property role="Xl_RC" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="nY" role="37wK5m">
                          <property role="Xl_RC" value="2722628536112115607" />
                        </node>
                        <node concept="3clFbT" id="nZ" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                      <node concept="6wLe0" id="nU" role="lGtFl">
                        <property role="6wLej" value="2722628536112115607" />
                        <property role="6wLeW" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                      </node>
                    </node>
                  </node>
                  <node concept="10QFUN" id="nO" role="37wK5m">
                    <uo k="s:originTrace" v="n:2722628536112115614" />
                    <node concept="3uibUv" id="o1" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2c44tf" id="o2" role="10QFUP">
                      <uo k="s:originTrace" v="n:2722628536112115615" />
                      <node concept="3uibUv" id="o3" role="2c44tc">
                        <ref role="3uigEE" to="z60i:~GridBagConstraints" resolve="GridBagConstraints" />
                        <uo k="s:originTrace" v="n:2722628536112115618" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="nP" role="37wK5m">
                    <ref role="3cqZAo" node="n_" resolve="_info_12389875345" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="6wLe0" id="nt" role="lGtFl">
            <property role="6wLej" value="2722628536112115610" />
            <property role="6wLeW" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
          </node>
        </node>
        <node concept="9aQIb" id="nr" role="3cqZAp">
          <uo k="s:originTrace" v="n:2158326176673575456" />
          <node concept="3clFbS" id="o4" role="9aQI4">
            <node concept="3cpWs8" id="o6" role="3cqZAp">
              <node concept="3cpWsn" id="o9" role="3cpWs9">
                <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                <node concept="2OqwBi" id="oa" role="33vP2m">
                  <uo k="s:originTrace" v="n:2158326176673575459" />
                  <node concept="37vLTw" id="oc" role="2Oq$k0">
                    <ref role="3cqZAo" node="ni" resolve="gridBagConstraints" />
                    <uo k="s:originTrace" v="n:2158326176673575460" />
                  </node>
                  <node concept="3TrEf2" id="od" role="2OqNvi">
                    <ref role="3Tt5mk" to="fb9u:2n8I3DYjA96" resolve="order" />
                    <uo k="s:originTrace" v="n:2158326176673575461" />
                  </node>
                  <node concept="6wLe0" id="oe" role="lGtFl">
                    <property role="6wLej" value="2158326176673575456" />
                    <property role="6wLeW" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                  </node>
                </node>
                <node concept="3uibUv" id="ob" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="o7" role="3cqZAp">
              <node concept="3cpWsn" id="of" role="3cpWs9">
                <property role="TrG5h" value="_info_12389875345" />
                <node concept="3uibUv" id="og" role="1tU5fm">
                  <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                </node>
                <node concept="2ShNRf" id="oh" role="33vP2m">
                  <node concept="1pGfFk" id="oi" role="2ShVmc">
                    <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                    <node concept="37vLTw" id="oj" role="37wK5m">
                      <ref role="3cqZAo" node="o9" resolve="_nodeToCheck_1029348928467" />
                    </node>
                    <node concept="10Nm6u" id="ok" role="37wK5m" />
                    <node concept="Xl_RD" id="ol" role="37wK5m">
                      <property role="Xl_RC" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                    </node>
                    <node concept="Xl_RD" id="om" role="37wK5m">
                      <property role="Xl_RC" value="2158326176673575456" />
                    </node>
                    <node concept="3cmrfG" id="on" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="10Nm6u" id="oo" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="o8" role="3cqZAp">
              <node concept="2OqwBi" id="op" role="3clFbG">
                <node concept="3VmV3z" id="oq" role="2Oq$k0">
                  <property role="3VnrPo" value="typeCheckingContext" />
                  <node concept="3uibUv" id="os" role="3Vn4Tt">
                    <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                  </node>
                </node>
                <node concept="liA8E" id="or" role="2OqNvi">
                  <ref role="37wK5l" to="u78q:~TypeCheckingContext.createLessThanInequality(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,boolean,boolean,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createLessThanInequality" />
                  <node concept="10QFUN" id="ot" role="37wK5m">
                    <uo k="s:originTrace" v="n:2158326176673575457" />
                    <node concept="3uibUv" id="oy" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="oz" role="10QFUP">
                      <uo k="s:originTrace" v="n:2158326176673575458" />
                      <node concept="3VmV3z" id="o$" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="oB" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="o_" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                        <node concept="3VmV3z" id="oC" role="37wK5m">
                          <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                          <node concept="3uibUv" id="oG" role="3Vn4Tt">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="oD" role="37wK5m">
                          <property role="Xl_RC" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="oE" role="37wK5m">
                          <property role="Xl_RC" value="2158326176673575458" />
                        </node>
                        <node concept="3clFbT" id="oF" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                      <node concept="6wLe0" id="oA" role="lGtFl">
                        <property role="6wLej" value="2158326176673575458" />
                        <property role="6wLeW" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                      </node>
                    </node>
                  </node>
                  <node concept="10QFUN" id="ou" role="37wK5m">
                    <uo k="s:originTrace" v="n:2158326176673575462" />
                    <node concept="3uibUv" id="oH" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2c44tf" id="oI" role="10QFUP">
                      <uo k="s:originTrace" v="n:2158326176673575463" />
                      <node concept="2usRSg" id="oJ" role="2c44tc">
                        <uo k="s:originTrace" v="n:2158326176673575464" />
                        <node concept="10Oyi0" id="oK" role="2usUpS">
                          <uo k="s:originTrace" v="n:2158326176673575465" />
                        </node>
                        <node concept="3uibUv" id="oL" role="2usUpS">
                          <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                          <uo k="s:originTrace" v="n:2158326176673575466" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbT" id="ov" role="37wK5m" />
                  <node concept="3clFbT" id="ow" role="37wK5m" />
                  <node concept="37vLTw" id="ox" role="37wK5m">
                    <ref role="3cqZAo" node="of" resolve="_info_12389875345" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="6wLe0" id="o5" role="lGtFl">
            <property role="6wLej" value="2158326176673575456" />
            <property role="6wLeW" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="nm" role="1B3o_S">
        <uo k="s:originTrace" v="n:2722628536112115603" />
      </node>
    </node>
    <node concept="3clFb_" id="n8" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:2722628536112115603" />
      <node concept="3bZ5Sz" id="oM" role="3clF45">
        <uo k="s:originTrace" v="n:2722628536112115603" />
      </node>
      <node concept="3clFbS" id="oN" role="3clF47">
        <uo k="s:originTrace" v="n:2722628536112115603" />
        <node concept="3cpWs6" id="oP" role="3cqZAp">
          <uo k="s:originTrace" v="n:2722628536112115603" />
          <node concept="35c_gC" id="oQ" role="3cqZAk">
            <ref role="35c_gD" to="fb9u:2n8I3DYiVi8" resolve="GridBagConstraints" />
            <uo k="s:originTrace" v="n:2722628536112115603" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="oO" role="1B3o_S">
        <uo k="s:originTrace" v="n:2722628536112115603" />
      </node>
    </node>
    <node concept="3clFb_" id="n9" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:2722628536112115603" />
      <node concept="37vLTG" id="oR" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:2722628536112115603" />
        <node concept="3Tqbb2" id="oV" role="1tU5fm">
          <uo k="s:originTrace" v="n:2722628536112115603" />
        </node>
      </node>
      <node concept="3clFbS" id="oS" role="3clF47">
        <uo k="s:originTrace" v="n:2722628536112115603" />
        <node concept="9aQIb" id="oW" role="3cqZAp">
          <uo k="s:originTrace" v="n:2722628536112115603" />
          <node concept="3clFbS" id="oX" role="9aQI4">
            <uo k="s:originTrace" v="n:2722628536112115603" />
            <node concept="3cpWs6" id="oY" role="3cqZAp">
              <uo k="s:originTrace" v="n:2722628536112115603" />
              <node concept="2ShNRf" id="oZ" role="3cqZAk">
                <uo k="s:originTrace" v="n:2722628536112115603" />
                <node concept="1pGfFk" id="p0" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:2722628536112115603" />
                  <node concept="2OqwBi" id="p1" role="37wK5m">
                    <uo k="s:originTrace" v="n:2722628536112115603" />
                    <node concept="2OqwBi" id="p3" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:2722628536112115603" />
                      <node concept="liA8E" id="p5" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:2722628536112115603" />
                      </node>
                      <node concept="2JrnkZ" id="p6" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:2722628536112115603" />
                        <node concept="37vLTw" id="p7" role="2JrQYb">
                          <ref role="3cqZAo" node="oR" resolve="argument" />
                          <uo k="s:originTrace" v="n:2722628536112115603" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="p4" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:2722628536112115603" />
                      <node concept="1rXfSq" id="p8" role="37wK5m">
                        <ref role="37wK5l" node="n8" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:2722628536112115603" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="p2" role="37wK5m">
                    <uo k="s:originTrace" v="n:2722628536112115603" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="oT" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:2722628536112115603" />
      </node>
      <node concept="3Tm1VV" id="oU" role="1B3o_S">
        <uo k="s:originTrace" v="n:2722628536112115603" />
      </node>
    </node>
    <node concept="3clFb_" id="na" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:2722628536112115603" />
      <node concept="3clFbS" id="p9" role="3clF47">
        <uo k="s:originTrace" v="n:2722628536112115603" />
        <node concept="3cpWs6" id="pc" role="3cqZAp">
          <uo k="s:originTrace" v="n:2722628536112115603" />
          <node concept="3clFbT" id="pd" role="3cqZAk">
            <uo k="s:originTrace" v="n:2722628536112115603" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="pa" role="3clF45">
        <uo k="s:originTrace" v="n:2722628536112115603" />
      </node>
      <node concept="3Tm1VV" id="pb" role="1B3o_S">
        <uo k="s:originTrace" v="n:2722628536112115603" />
      </node>
    </node>
    <node concept="3uibUv" id="nb" role="EKbjA">
      <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:2722628536112115603" />
    </node>
    <node concept="3uibUv" id="nc" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractInferenceRule_Runtime" resolve="AbstractInferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:2722628536112115603" />
    </node>
    <node concept="3Tm1VV" id="nd" role="1B3o_S">
      <uo k="s:originTrace" v="n:2722628536112115603" />
    </node>
  </node>
  <node concept="312cEu" id="pe">
    <property role="3GE5qa" value="template" />
    <property role="TrG5h" value="typeof_PersistentConfigurationTemplateInitializer_InferenceRule" />
    <uo k="s:originTrace" v="n:6981317760235477807" />
    <node concept="3clFbW" id="pf" role="jymVt">
      <uo k="s:originTrace" v="n:6981317760235477807" />
      <node concept="3clFbS" id="pn" role="3clF47">
        <uo k="s:originTrace" v="n:6981317760235477807" />
      </node>
      <node concept="3Tm1VV" id="po" role="1B3o_S">
        <uo k="s:originTrace" v="n:6981317760235477807" />
      </node>
      <node concept="3cqZAl" id="pp" role="3clF45">
        <uo k="s:originTrace" v="n:6981317760235477807" />
      </node>
    </node>
    <node concept="3clFb_" id="pg" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:6981317760235477807" />
      <node concept="3cqZAl" id="pq" role="3clF45">
        <uo k="s:originTrace" v="n:6981317760235477807" />
      </node>
      <node concept="37vLTG" id="pr" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="configurationTemplateInitializer" />
        <uo k="s:originTrace" v="n:6981317760235477807" />
        <node concept="3Tqbb2" id="pw" role="1tU5fm">
          <uo k="s:originTrace" v="n:6981317760235477807" />
        </node>
      </node>
      <node concept="37vLTG" id="ps" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:6981317760235477807" />
        <node concept="3uibUv" id="px" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:6981317760235477807" />
        </node>
      </node>
      <node concept="37vLTG" id="pt" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:6981317760235477807" />
        <node concept="3uibUv" id="py" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:6981317760235477807" />
        </node>
      </node>
      <node concept="3clFbS" id="pu" role="3clF47">
        <uo k="s:originTrace" v="n:6981317760235477808" />
        <node concept="9aQIb" id="pz" role="3cqZAp">
          <uo k="s:originTrace" v="n:6981317760235477809" />
          <node concept="3clFbS" id="pA" role="9aQI4">
            <node concept="3cpWs8" id="pC" role="3cqZAp">
              <node concept="3cpWsn" id="pF" role="3cpWs9">
                <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                <node concept="37vLTw" id="pG" role="33vP2m">
                  <ref role="3cqZAo" node="pr" resolve="configurationTemplateInitializer" />
                  <uo k="s:originTrace" v="n:6981317760235477819" />
                  <node concept="6wLe0" id="pI" role="lGtFl">
                    <property role="6wLej" value="6981317760235477809" />
                    <property role="6wLeW" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                  </node>
                </node>
                <node concept="3uibUv" id="pH" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="pD" role="3cqZAp">
              <node concept="3cpWsn" id="pJ" role="3cpWs9">
                <property role="TrG5h" value="_info_12389875345" />
                <node concept="3uibUv" id="pK" role="1tU5fm">
                  <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                </node>
                <node concept="2ShNRf" id="pL" role="33vP2m">
                  <node concept="1pGfFk" id="pM" role="2ShVmc">
                    <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                    <node concept="37vLTw" id="pN" role="37wK5m">
                      <ref role="3cqZAo" node="pF" resolve="_nodeToCheck_1029348928467" />
                    </node>
                    <node concept="10Nm6u" id="pO" role="37wK5m" />
                    <node concept="Xl_RD" id="pP" role="37wK5m">
                      <property role="Xl_RC" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                    </node>
                    <node concept="Xl_RD" id="pQ" role="37wK5m">
                      <property role="Xl_RC" value="6981317760235477809" />
                    </node>
                    <node concept="3cmrfG" id="pR" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="10Nm6u" id="pS" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="pE" role="3cqZAp">
              <node concept="2OqwBi" id="pT" role="3clFbG">
                <node concept="3VmV3z" id="pU" role="2Oq$k0">
                  <property role="3VnrPo" value="typeCheckingContext" />
                  <node concept="3uibUv" id="pW" role="3Vn4Tt">
                    <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                  </node>
                </node>
                <node concept="liA8E" id="pV" role="2OqNvi">
                  <ref role="37wK5l" to="u78q:~TypeCheckingContext.createEquation(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createEquation" />
                  <node concept="10QFUN" id="pX" role="37wK5m">
                    <uo k="s:originTrace" v="n:6981317760235477817" />
                    <node concept="3uibUv" id="q0" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="q1" role="10QFUP">
                      <uo k="s:originTrace" v="n:6981317760235477818" />
                      <node concept="3VmV3z" id="q2" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="q5" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="q3" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                        <node concept="3VmV3z" id="q6" role="37wK5m">
                          <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                          <node concept="3uibUv" id="qa" role="3Vn4Tt">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="q7" role="37wK5m">
                          <property role="Xl_RC" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="q8" role="37wK5m">
                          <property role="Xl_RC" value="6981317760235477818" />
                        </node>
                        <node concept="3clFbT" id="q9" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                      <node concept="6wLe0" id="q4" role="lGtFl">
                        <property role="6wLej" value="6981317760235477818" />
                        <property role="6wLeW" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                      </node>
                    </node>
                  </node>
                  <node concept="10QFUN" id="pY" role="37wK5m">
                    <uo k="s:originTrace" v="n:6981317760235477810" />
                    <node concept="3uibUv" id="qb" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2pJPEk" id="qc" role="10QFUP">
                      <uo k="s:originTrace" v="n:48168216978191037" />
                      <node concept="2pJPED" id="qd" role="2pJPEn">
                        <ref role="2pJxaS" to="fb9u:O$iR4J$g3X" resolve="TemplatePersistentConfigurationType" />
                        <uo k="s:originTrace" v="n:48168216978191034" />
                        <node concept="2pIpSj" id="qe" role="2pJxcM">
                          <ref role="2pIpSl" to="fb9u:O$iR4J$g3Y" resolve="template" />
                          <uo k="s:originTrace" v="n:48168216978191035" />
                          <node concept="36biLy" id="qf" role="28nt2d">
                            <uo k="s:originTrace" v="n:48168216978191036" />
                            <node concept="2OqwBi" id="qg" role="36biLW">
                              <uo k="s:originTrace" v="n:6981317760235546763" />
                              <node concept="37vLTw" id="qh" role="2Oq$k0">
                                <ref role="3cqZAo" node="pr" resolve="configurationTemplateInitializer" />
                                <uo k="s:originTrace" v="n:6981317760235546762" />
                              </node>
                              <node concept="3TrEf2" id="qi" role="2OqNvi">
                                <ref role="3Tt5mk" to="fb9u:O$iR4J$g4n" resolve="template" />
                                <uo k="s:originTrace" v="n:6981317760235546767" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="pZ" role="37wK5m">
                    <ref role="3cqZAo" node="pJ" resolve="_info_12389875345" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="6wLe0" id="pB" role="lGtFl">
            <property role="6wLej" value="6981317760235477809" />
            <property role="6wLeW" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
          </node>
        </node>
        <node concept="3cpWs8" id="p$" role="3cqZAp">
          <uo k="s:originTrace" v="n:6981317760235477820" />
          <node concept="3cpWsn" id="qj" role="3cpWs9">
            <property role="TrG5h" value="parameters" />
            <uo k="s:originTrace" v="n:6981317760235477821" />
            <node concept="2I9FWS" id="qk" role="1tU5fm">
              <ref role="2I9WkF" to="fb9u:O$iR4J$g4q" resolve="TemplateParameter" />
              <uo k="s:originTrace" v="n:6981317760235477822" />
            </node>
            <node concept="2OqwBi" id="ql" role="33vP2m">
              <uo k="s:originTrace" v="n:6981317760235477823" />
              <node concept="2OqwBi" id="qm" role="2Oq$k0">
                <uo k="s:originTrace" v="n:6981317760235477824" />
                <node concept="37vLTw" id="qo" role="2Oq$k0">
                  <ref role="3cqZAo" node="pr" resolve="configurationTemplateInitializer" />
                  <uo k="s:originTrace" v="n:6981317760235477825" />
                </node>
                <node concept="3TrEf2" id="qp" role="2OqNvi">
                  <ref role="3Tt5mk" to="fb9u:O$iR4J$g4n" resolve="template" />
                  <uo k="s:originTrace" v="n:6981317760235477826" />
                </node>
              </node>
              <node concept="3Tsc0h" id="qn" role="2OqNvi">
                <ref role="3TtcxE" to="fb9u:O$iR4J$g4l" resolve="templateParameter" />
                <uo k="s:originTrace" v="n:6981317760235477827" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="p_" role="3cqZAp">
          <uo k="s:originTrace" v="n:6981317760235477828" />
          <node concept="3uNrnE" id="qq" role="1Dwrff">
            <uo k="s:originTrace" v="n:6981317760235477829" />
            <node concept="37vLTw" id="qu" role="2$L3a6">
              <ref role="3cqZAo" node="qs" resolve="i" />
              <uo k="s:originTrace" v="n:4265636116363086234" />
            </node>
          </node>
          <node concept="3clFbS" id="qr" role="2LFqv$">
            <uo k="s:originTrace" v="n:6981317760235477831" />
            <node concept="3clFbJ" id="qv" role="3cqZAp">
              <uo k="s:originTrace" v="n:6981317760235477832" />
              <node concept="3clFbS" id="qx" role="3clFbx">
                <uo k="s:originTrace" v="n:6981317760235477833" />
                <node concept="9aQIb" id="qz" role="3cqZAp">
                  <uo k="s:originTrace" v="n:6981317760235477834" />
                  <node concept="3clFbS" id="q_" role="9aQI4">
                    <node concept="3cpWs8" id="qB" role="3cqZAp">
                      <node concept="3cpWsn" id="qD" role="3cpWs9">
                        <property role="TrG5h" value="errorTarget" />
                        <property role="3TUv4t" value="true" />
                        <node concept="3uibUv" id="qE" role="1tU5fm">
                          <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                        </node>
                        <node concept="2ShNRf" id="qF" role="33vP2m">
                          <node concept="1pGfFk" id="qG" role="2ShVmc">
                            <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="qC" role="3cqZAp">
                      <node concept="3cpWsn" id="qH" role="3cpWs9">
                        <property role="TrG5h" value="_reporter_2309309498" />
                        <node concept="3uibUv" id="qI" role="1tU5fm">
                          <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                        </node>
                        <node concept="2OqwBi" id="qJ" role="33vP2m">
                          <node concept="3VmV3z" id="qK" role="2Oq$k0">
                            <property role="3VnrPo" value="typeCheckingContext" />
                            <node concept="3uibUv" id="qM" role="3Vn4Tt">
                              <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                            </node>
                          </node>
                          <node concept="liA8E" id="qL" role="2OqNvi">
                            <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                            <node concept="37vLTw" id="qN" role="37wK5m">
                              <ref role="3cqZAo" node="pr" resolve="configurationTemplateInitializer" />
                              <uo k="s:originTrace" v="n:6981317760235477835" />
                            </node>
                            <node concept="Xl_RD" id="qO" role="37wK5m">
                              <property role="Xl_RC" value="Incompatible number of parameters" />
                              <uo k="s:originTrace" v="n:6981317760235477836" />
                            </node>
                            <node concept="Xl_RD" id="qP" role="37wK5m">
                              <property role="Xl_RC" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                            </node>
                            <node concept="Xl_RD" id="qQ" role="37wK5m">
                              <property role="Xl_RC" value="6981317760235477834" />
                            </node>
                            <node concept="10Nm6u" id="qR" role="37wK5m" />
                            <node concept="37vLTw" id="qS" role="37wK5m">
                              <ref role="3cqZAo" node="qD" resolve="errorTarget" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="6wLe0" id="qA" role="lGtFl">
                    <property role="6wLej" value="6981317760235477834" />
                    <property role="6wLeW" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                  </node>
                </node>
                <node concept="3cpWs6" id="q$" role="3cqZAp">
                  <uo k="s:originTrace" v="n:6981317760235477837" />
                </node>
              </node>
              <node concept="2d3UOw" id="qy" role="3clFbw">
                <uo k="s:originTrace" v="n:6981317760235477838" />
                <node concept="2OqwBi" id="qT" role="3uHU7w">
                  <uo k="s:originTrace" v="n:6981317760235477839" />
                  <node concept="37vLTw" id="qV" role="2Oq$k0">
                    <ref role="3cqZAo" node="qj" resolve="parameters" />
                    <uo k="s:originTrace" v="n:4265636116363065446" />
                  </node>
                  <node concept="34oBXx" id="qW" role="2OqNvi">
                    <uo k="s:originTrace" v="n:6981317760235477841" />
                  </node>
                </node>
                <node concept="37vLTw" id="qU" role="3uHU7B">
                  <ref role="3cqZAo" node="qs" resolve="i" />
                  <uo k="s:originTrace" v="n:4265636116363094643" />
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="qw" role="3cqZAp">
              <uo k="s:originTrace" v="n:6981317760235477843" />
              <node concept="3clFbS" id="qX" role="9aQI4">
                <node concept="3cpWs8" id="qZ" role="3cqZAp">
                  <node concept="3cpWsn" id="r2" role="3cpWs9">
                    <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                    <node concept="2OqwBi" id="r3" role="33vP2m">
                      <uo k="s:originTrace" v="n:6981317760235477853" />
                      <node concept="2OqwBi" id="r5" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:6981317760235477854" />
                        <node concept="37vLTw" id="r8" role="2Oq$k0">
                          <ref role="3cqZAo" node="pr" resolve="configurationTemplateInitializer" />
                          <uo k="s:originTrace" v="n:6981317760235477855" />
                        </node>
                        <node concept="3Tsc0h" id="r9" role="2OqNvi">
                          <ref role="3TtcxE" to="fb9u:O$iR4J$g4o" resolve="parameter" />
                          <uo k="s:originTrace" v="n:6981317760235477856" />
                        </node>
                      </node>
                      <node concept="liA8E" id="r6" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                        <uo k="s:originTrace" v="n:6981317760235477857" />
                        <node concept="37vLTw" id="ra" role="37wK5m">
                          <ref role="3cqZAo" node="qs" resolve="i" />
                          <uo k="s:originTrace" v="n:4265636116363087763" />
                        </node>
                      </node>
                      <node concept="6wLe0" id="r7" role="lGtFl">
                        <property role="6wLej" value="6981317760235477843" />
                        <property role="6wLeW" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="r4" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="r0" role="3cqZAp">
                  <node concept="3cpWsn" id="rb" role="3cpWs9">
                    <property role="TrG5h" value="_info_12389875345" />
                    <node concept="3uibUv" id="rc" role="1tU5fm">
                      <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                    </node>
                    <node concept="2ShNRf" id="rd" role="33vP2m">
                      <node concept="1pGfFk" id="re" role="2ShVmc">
                        <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                        <node concept="37vLTw" id="rf" role="37wK5m">
                          <ref role="3cqZAo" node="r2" resolve="_nodeToCheck_1029348928467" />
                        </node>
                        <node concept="10Nm6u" id="rg" role="37wK5m" />
                        <node concept="Xl_RD" id="rh" role="37wK5m">
                          <property role="Xl_RC" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="ri" role="37wK5m">
                          <property role="Xl_RC" value="6981317760235477843" />
                        </node>
                        <node concept="3cmrfG" id="rj" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="10Nm6u" id="rk" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="r1" role="3cqZAp">
                  <node concept="2OqwBi" id="rl" role="3clFbG">
                    <node concept="3VmV3z" id="rm" role="2Oq$k0">
                      <property role="3VnrPo" value="typeCheckingContext" />
                      <node concept="3uibUv" id="ro" role="3Vn4Tt">
                        <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                      </node>
                    </node>
                    <node concept="liA8E" id="rn" role="2OqNvi">
                      <ref role="37wK5l" to="u78q:~TypeCheckingContext.createLessThanInequality(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,boolean,boolean,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createLessThanInequality" />
                      <node concept="10QFUN" id="rp" role="37wK5m">
                        <uo k="s:originTrace" v="n:6981317760235477851" />
                        <node concept="3uibUv" id="ru" role="10QFUM">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                        <node concept="2OqwBi" id="rv" role="10QFUP">
                          <uo k="s:originTrace" v="n:6981317760235477852" />
                          <node concept="3VmV3z" id="rw" role="2Oq$k0">
                            <property role="3VnrPo" value="typeCheckingContext" />
                            <node concept="3uibUv" id="rz" role="3Vn4Tt">
                              <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                            </node>
                          </node>
                          <node concept="liA8E" id="rx" role="2OqNvi">
                            <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                            <node concept="3VmV3z" id="r$" role="37wK5m">
                              <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                              <node concept="3uibUv" id="rC" role="3Vn4Tt">
                                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="r_" role="37wK5m">
                              <property role="Xl_RC" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                            </node>
                            <node concept="Xl_RD" id="rA" role="37wK5m">
                              <property role="Xl_RC" value="6981317760235477852" />
                            </node>
                            <node concept="3clFbT" id="rB" role="37wK5m">
                              <property role="3clFbU" value="true" />
                            </node>
                          </node>
                          <node concept="6wLe0" id="ry" role="lGtFl">
                            <property role="6wLej" value="6981317760235477852" />
                            <property role="6wLeW" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                          </node>
                        </node>
                      </node>
                      <node concept="10QFUN" id="rq" role="37wK5m">
                        <uo k="s:originTrace" v="n:6981317760235477845" />
                        <node concept="3uibUv" id="rD" role="10QFUM">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                        <node concept="2OqwBi" id="rE" role="10QFUP">
                          <uo k="s:originTrace" v="n:6981317760235477846" />
                          <node concept="3VmV3z" id="rF" role="2Oq$k0">
                            <property role="3VnrPo" value="typeCheckingContext" />
                            <node concept="3uibUv" id="rI" role="3Vn4Tt">
                              <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                            </node>
                          </node>
                          <node concept="liA8E" id="rG" role="2OqNvi">
                            <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                            <node concept="2OqwBi" id="rJ" role="37wK5m">
                              <uo k="s:originTrace" v="n:6981317760235477847" />
                              <node concept="37vLTw" id="rN" role="2Oq$k0">
                                <ref role="3cqZAo" node="qj" resolve="parameters" />
                                <uo k="s:originTrace" v="n:4265636116363087921" />
                              </node>
                              <node concept="34jXtK" id="rO" role="2OqNvi">
                                <uo k="s:originTrace" v="n:6981317760235477849" />
                                <node concept="37vLTw" id="rP" role="25WWJ7">
                                  <ref role="3cqZAo" node="qs" resolve="i" />
                                  <uo k="s:originTrace" v="n:4265636116363082364" />
                                </node>
                              </node>
                            </node>
                            <node concept="Xl_RD" id="rK" role="37wK5m">
                              <property role="Xl_RC" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                            </node>
                            <node concept="Xl_RD" id="rL" role="37wK5m">
                              <property role="Xl_RC" value="6981317760235477846" />
                            </node>
                            <node concept="3clFbT" id="rM" role="37wK5m">
                              <property role="3clFbU" value="true" />
                            </node>
                          </node>
                          <node concept="6wLe0" id="rH" role="lGtFl">
                            <property role="6wLej" value="6981317760235477846" />
                            <property role="6wLeW" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbT" id="rr" role="37wK5m" />
                      <node concept="3clFbT" id="rs" role="37wK5m" />
                      <node concept="37vLTw" id="rt" role="37wK5m">
                        <ref role="3cqZAo" node="rb" resolve="_info_12389875345" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="6wLe0" id="qY" role="lGtFl">
                <property role="6wLej" value="6981317760235477843" />
                <property role="6wLeW" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="qs" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <uo k="s:originTrace" v="n:6981317760235477859" />
            <node concept="10Oyi0" id="rQ" role="1tU5fm">
              <uo k="s:originTrace" v="n:6981317760235477860" />
            </node>
            <node concept="3cmrfG" id="rR" role="33vP2m">
              <property role="3cmrfH" value="0" />
              <uo k="s:originTrace" v="n:6981317760235477861" />
            </node>
          </node>
          <node concept="3eOVzh" id="qt" role="1Dwp0S">
            <uo k="s:originTrace" v="n:6981317760235477862" />
            <node concept="2OqwBi" id="rS" role="3uHU7w">
              <uo k="s:originTrace" v="n:6981317760235477863" />
              <node concept="2OqwBi" id="rU" role="2Oq$k0">
                <uo k="s:originTrace" v="n:6981317760235477864" />
                <node concept="37vLTw" id="rW" role="2Oq$k0">
                  <ref role="3cqZAo" node="pr" resolve="configurationTemplateInitializer" />
                  <uo k="s:originTrace" v="n:6981317760235477865" />
                </node>
                <node concept="3Tsc0h" id="rX" role="2OqNvi">
                  <ref role="3TtcxE" to="fb9u:O$iR4J$g4o" resolve="parameter" />
                  <uo k="s:originTrace" v="n:6981317760235477866" />
                </node>
              </node>
              <node concept="34oBXx" id="rV" role="2OqNvi">
                <uo k="s:originTrace" v="n:6981317760235477867" />
              </node>
            </node>
            <node concept="37vLTw" id="rT" role="3uHU7B">
              <ref role="3cqZAo" node="qs" resolve="i" />
              <uo k="s:originTrace" v="n:4265636116363068089" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="pv" role="1B3o_S">
        <uo k="s:originTrace" v="n:6981317760235477807" />
      </node>
    </node>
    <node concept="3clFb_" id="ph" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:6981317760235477807" />
      <node concept="3bZ5Sz" id="rY" role="3clF45">
        <uo k="s:originTrace" v="n:6981317760235477807" />
      </node>
      <node concept="3clFbS" id="rZ" role="3clF47">
        <uo k="s:originTrace" v="n:6981317760235477807" />
        <node concept="3cpWs6" id="s1" role="3cqZAp">
          <uo k="s:originTrace" v="n:6981317760235477807" />
          <node concept="35c_gC" id="s2" role="3cqZAk">
            <ref role="35c_gD" to="fb9u:O$iR4J$g4m" resolve="PersistentConfigurationTemplateInitializer" />
            <uo k="s:originTrace" v="n:6981317760235477807" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="s0" role="1B3o_S">
        <uo k="s:originTrace" v="n:6981317760235477807" />
      </node>
    </node>
    <node concept="3clFb_" id="pi" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:6981317760235477807" />
      <node concept="37vLTG" id="s3" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:6981317760235477807" />
        <node concept="3Tqbb2" id="s7" role="1tU5fm">
          <uo k="s:originTrace" v="n:6981317760235477807" />
        </node>
      </node>
      <node concept="3clFbS" id="s4" role="3clF47">
        <uo k="s:originTrace" v="n:6981317760235477807" />
        <node concept="9aQIb" id="s8" role="3cqZAp">
          <uo k="s:originTrace" v="n:6981317760235477807" />
          <node concept="3clFbS" id="s9" role="9aQI4">
            <uo k="s:originTrace" v="n:6981317760235477807" />
            <node concept="3cpWs6" id="sa" role="3cqZAp">
              <uo k="s:originTrace" v="n:6981317760235477807" />
              <node concept="2ShNRf" id="sb" role="3cqZAk">
                <uo k="s:originTrace" v="n:6981317760235477807" />
                <node concept="1pGfFk" id="sc" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:6981317760235477807" />
                  <node concept="2OqwBi" id="sd" role="37wK5m">
                    <uo k="s:originTrace" v="n:6981317760235477807" />
                    <node concept="2OqwBi" id="sf" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:6981317760235477807" />
                      <node concept="liA8E" id="sh" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:6981317760235477807" />
                      </node>
                      <node concept="2JrnkZ" id="si" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:6981317760235477807" />
                        <node concept="37vLTw" id="sj" role="2JrQYb">
                          <ref role="3cqZAo" node="s3" resolve="argument" />
                          <uo k="s:originTrace" v="n:6981317760235477807" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="sg" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:6981317760235477807" />
                      <node concept="1rXfSq" id="sk" role="37wK5m">
                        <ref role="37wK5l" node="ph" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:6981317760235477807" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="se" role="37wK5m">
                    <uo k="s:originTrace" v="n:6981317760235477807" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="s5" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:6981317760235477807" />
      </node>
      <node concept="3Tm1VV" id="s6" role="1B3o_S">
        <uo k="s:originTrace" v="n:6981317760235477807" />
      </node>
    </node>
    <node concept="3clFb_" id="pj" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:6981317760235477807" />
      <node concept="3clFbS" id="sl" role="3clF47">
        <uo k="s:originTrace" v="n:6981317760235477807" />
        <node concept="3cpWs6" id="so" role="3cqZAp">
          <uo k="s:originTrace" v="n:6981317760235477807" />
          <node concept="3clFbT" id="sp" role="3cqZAk">
            <uo k="s:originTrace" v="n:6981317760235477807" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="sm" role="3clF45">
        <uo k="s:originTrace" v="n:6981317760235477807" />
      </node>
      <node concept="3Tm1VV" id="sn" role="1B3o_S">
        <uo k="s:originTrace" v="n:6981317760235477807" />
      </node>
    </node>
    <node concept="3uibUv" id="pk" role="EKbjA">
      <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:6981317760235477807" />
    </node>
    <node concept="3uibUv" id="pl" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractInferenceRule_Runtime" resolve="AbstractInferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:6981317760235477807" />
    </node>
    <node concept="3Tm1VV" id="pm" role="1B3o_S">
      <uo k="s:originTrace" v="n:6981317760235477807" />
    </node>
  </node>
  <node concept="312cEu" id="sq">
    <property role="3GE5qa" value="template" />
    <property role="TrG5h" value="typeof_PersistentConfigurationTemplate_InferenceRule" />
    <uo k="s:originTrace" v="n:2181232403819839401" />
    <node concept="3clFbW" id="sr" role="jymVt">
      <uo k="s:originTrace" v="n:2181232403819839401" />
      <node concept="3clFbS" id="sz" role="3clF47">
        <uo k="s:originTrace" v="n:2181232403819839401" />
      </node>
      <node concept="3Tm1VV" id="s$" role="1B3o_S">
        <uo k="s:originTrace" v="n:2181232403819839401" />
      </node>
      <node concept="3cqZAl" id="s_" role="3clF45">
        <uo k="s:originTrace" v="n:2181232403819839401" />
      </node>
    </node>
    <node concept="3clFb_" id="ss" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:2181232403819839401" />
      <node concept="3cqZAl" id="sA" role="3clF45">
        <uo k="s:originTrace" v="n:2181232403819839401" />
      </node>
      <node concept="37vLTG" id="sB" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="template" />
        <uo k="s:originTrace" v="n:2181232403819839401" />
        <node concept="3Tqbb2" id="sG" role="1tU5fm">
          <uo k="s:originTrace" v="n:2181232403819839401" />
        </node>
      </node>
      <node concept="37vLTG" id="sC" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:2181232403819839401" />
        <node concept="3uibUv" id="sH" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:2181232403819839401" />
        </node>
      </node>
      <node concept="37vLTG" id="sD" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:2181232403819839401" />
        <node concept="3uibUv" id="sI" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:2181232403819839401" />
        </node>
      </node>
      <node concept="3clFbS" id="sE" role="3clF47">
        <uo k="s:originTrace" v="n:2181232403819839402" />
        <node concept="9aQIb" id="sJ" role="3cqZAp">
          <uo k="s:originTrace" v="n:4414733712828690304" />
          <node concept="3clFbS" id="sK" role="9aQI4">
            <node concept="3cpWs8" id="sM" role="3cqZAp">
              <node concept="3cpWsn" id="sP" role="3cpWs9">
                <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                <node concept="37vLTw" id="sQ" role="33vP2m">
                  <ref role="3cqZAo" node="sB" resolve="template" />
                  <uo k="s:originTrace" v="n:2181232403819839484" />
                  <node concept="6wLe0" id="sS" role="lGtFl">
                    <property role="6wLej" value="4414733712828690304" />
                    <property role="6wLeW" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                  </node>
                </node>
                <node concept="3uibUv" id="sR" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="sN" role="3cqZAp">
              <node concept="3cpWsn" id="sT" role="3cpWs9">
                <property role="TrG5h" value="_info_12389875345" />
                <node concept="3uibUv" id="sU" role="1tU5fm">
                  <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                </node>
                <node concept="2ShNRf" id="sV" role="33vP2m">
                  <node concept="1pGfFk" id="sW" role="2ShVmc">
                    <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                    <node concept="37vLTw" id="sX" role="37wK5m">
                      <ref role="3cqZAo" node="sP" resolve="_nodeToCheck_1029348928467" />
                    </node>
                    <node concept="10Nm6u" id="sY" role="37wK5m" />
                    <node concept="Xl_RD" id="sZ" role="37wK5m">
                      <property role="Xl_RC" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                    </node>
                    <node concept="Xl_RD" id="t0" role="37wK5m">
                      <property role="Xl_RC" value="4414733712828690304" />
                    </node>
                    <node concept="3cmrfG" id="t1" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="10Nm6u" id="t2" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="sO" role="3cqZAp">
              <node concept="2OqwBi" id="t3" role="3clFbG">
                <node concept="3VmV3z" id="t4" role="2Oq$k0">
                  <property role="3VnrPo" value="typeCheckingContext" />
                  <node concept="3uibUv" id="t6" role="3Vn4Tt">
                    <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                  </node>
                </node>
                <node concept="liA8E" id="t5" role="2OqNvi">
                  <ref role="37wK5l" to="u78q:~TypeCheckingContext.createEquation(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createEquation" />
                  <node concept="10QFUN" id="t7" role="37wK5m">
                    <uo k="s:originTrace" v="n:4414733712828690307" />
                    <node concept="3uibUv" id="ta" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="tb" role="10QFUP">
                      <uo k="s:originTrace" v="n:4414733712828683088" />
                      <node concept="3VmV3z" id="tc" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="tf" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="td" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                        <node concept="3VmV3z" id="tg" role="37wK5m">
                          <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                          <node concept="3uibUv" id="tk" role="3Vn4Tt">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="th" role="37wK5m">
                          <property role="Xl_RC" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="ti" role="37wK5m">
                          <property role="Xl_RC" value="4414733712828683088" />
                        </node>
                        <node concept="3clFbT" id="tj" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                      <node concept="6wLe0" id="te" role="lGtFl">
                        <property role="6wLej" value="4414733712828683088" />
                        <property role="6wLeW" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                      </node>
                    </node>
                  </node>
                  <node concept="10QFUN" id="t8" role="37wK5m">
                    <uo k="s:originTrace" v="n:4414733712828692762" />
                    <node concept="3uibUv" id="tl" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2pJPEk" id="tm" role="10QFUP">
                      <uo k="s:originTrace" v="n:4414733712828692754" />
                      <node concept="2pJPED" id="tn" role="2pJPEn">
                        <ref role="2pJxaS" to="fb9u:O$iR4J$g3X" resolve="TemplatePersistentConfigurationType" />
                        <uo k="s:originTrace" v="n:4414733712828692773" />
                        <node concept="2pIpSj" id="to" role="2pJxcM">
                          <ref role="2pIpSl" to="fb9u:O$iR4J$g3Y" resolve="template" />
                          <uo k="s:originTrace" v="n:4414733712828703495" />
                          <node concept="36biLy" id="tp" role="28nt2d">
                            <uo k="s:originTrace" v="n:4414733712828703496" />
                            <node concept="37vLTw" id="tq" role="36biLW">
                              <ref role="3cqZAo" node="sB" resolve="template" />
                              <uo k="s:originTrace" v="n:2181232403819839847" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="t9" role="37wK5m">
                    <ref role="3cqZAo" node="sT" resolve="_info_12389875345" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="6wLe0" id="sL" role="lGtFl">
            <property role="6wLej" value="4414733712828690304" />
            <property role="6wLeW" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="sF" role="1B3o_S">
        <uo k="s:originTrace" v="n:2181232403819839401" />
      </node>
    </node>
    <node concept="3clFb_" id="st" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:2181232403819839401" />
      <node concept="3bZ5Sz" id="tr" role="3clF45">
        <uo k="s:originTrace" v="n:2181232403819839401" />
      </node>
      <node concept="3clFbS" id="ts" role="3clF47">
        <uo k="s:originTrace" v="n:2181232403819839401" />
        <node concept="3cpWs6" id="tu" role="3cqZAp">
          <uo k="s:originTrace" v="n:2181232403819839401" />
          <node concept="35c_gC" id="tv" role="3cqZAk">
            <ref role="35c_gD" to="fb9u:O$iR4J$g4j" resolve="PersistentConfigurationTemplate" />
            <uo k="s:originTrace" v="n:2181232403819839401" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="tt" role="1B3o_S">
        <uo k="s:originTrace" v="n:2181232403819839401" />
      </node>
    </node>
    <node concept="3clFb_" id="su" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:2181232403819839401" />
      <node concept="37vLTG" id="tw" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:2181232403819839401" />
        <node concept="3Tqbb2" id="t$" role="1tU5fm">
          <uo k="s:originTrace" v="n:2181232403819839401" />
        </node>
      </node>
      <node concept="3clFbS" id="tx" role="3clF47">
        <uo k="s:originTrace" v="n:2181232403819839401" />
        <node concept="9aQIb" id="t_" role="3cqZAp">
          <uo k="s:originTrace" v="n:2181232403819839401" />
          <node concept="3clFbS" id="tA" role="9aQI4">
            <uo k="s:originTrace" v="n:2181232403819839401" />
            <node concept="3cpWs6" id="tB" role="3cqZAp">
              <uo k="s:originTrace" v="n:2181232403819839401" />
              <node concept="2ShNRf" id="tC" role="3cqZAk">
                <uo k="s:originTrace" v="n:2181232403819839401" />
                <node concept="1pGfFk" id="tD" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:2181232403819839401" />
                  <node concept="2OqwBi" id="tE" role="37wK5m">
                    <uo k="s:originTrace" v="n:2181232403819839401" />
                    <node concept="2OqwBi" id="tG" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:2181232403819839401" />
                      <node concept="liA8E" id="tI" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:2181232403819839401" />
                      </node>
                      <node concept="2JrnkZ" id="tJ" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:2181232403819839401" />
                        <node concept="37vLTw" id="tK" role="2JrQYb">
                          <ref role="3cqZAo" node="tw" resolve="argument" />
                          <uo k="s:originTrace" v="n:2181232403819839401" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="tH" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:2181232403819839401" />
                      <node concept="1rXfSq" id="tL" role="37wK5m">
                        <ref role="37wK5l" node="st" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:2181232403819839401" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="tF" role="37wK5m">
                    <uo k="s:originTrace" v="n:2181232403819839401" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="ty" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:2181232403819839401" />
      </node>
      <node concept="3Tm1VV" id="tz" role="1B3o_S">
        <uo k="s:originTrace" v="n:2181232403819839401" />
      </node>
    </node>
    <node concept="3clFb_" id="sv" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:2181232403819839401" />
      <node concept="3clFbS" id="tM" role="3clF47">
        <uo k="s:originTrace" v="n:2181232403819839401" />
        <node concept="3cpWs6" id="tP" role="3cqZAp">
          <uo k="s:originTrace" v="n:2181232403819839401" />
          <node concept="3clFbT" id="tQ" role="3cqZAk">
            <uo k="s:originTrace" v="n:2181232403819839401" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="tN" role="3clF45">
        <uo k="s:originTrace" v="n:2181232403819839401" />
      </node>
      <node concept="3Tm1VV" id="tO" role="1B3o_S">
        <uo k="s:originTrace" v="n:2181232403819839401" />
      </node>
    </node>
    <node concept="3uibUv" id="sw" role="EKbjA">
      <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:2181232403819839401" />
    </node>
    <node concept="3uibUv" id="sx" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractInferenceRule_Runtime" resolve="AbstractInferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:2181232403819839401" />
    </node>
    <node concept="3Tm1VV" id="sy" role="1B3o_S">
      <uo k="s:originTrace" v="n:2181232403819839401" />
    </node>
  </node>
  <node concept="312cEu" id="tR">
    <property role="3GE5qa" value="properties" />
    <property role="TrG5h" value="typeof_PersistentPropertyDeclaration_InferenceRule" />
    <uo k="s:originTrace" v="n:6981317760235477752" />
    <node concept="3clFbW" id="tS" role="jymVt">
      <uo k="s:originTrace" v="n:6981317760235477752" />
      <node concept="3clFbS" id="u0" role="3clF47">
        <uo k="s:originTrace" v="n:6981317760235477752" />
      </node>
      <node concept="3Tm1VV" id="u1" role="1B3o_S">
        <uo k="s:originTrace" v="n:6981317760235477752" />
      </node>
      <node concept="3cqZAl" id="u2" role="3clF45">
        <uo k="s:originTrace" v="n:6981317760235477752" />
      </node>
    </node>
    <node concept="3clFb_" id="tT" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:6981317760235477752" />
      <node concept="3cqZAl" id="u3" role="3clF45">
        <uo k="s:originTrace" v="n:6981317760235477752" />
      </node>
      <node concept="37vLTG" id="u4" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="persistentPropertyDeclaration" />
        <uo k="s:originTrace" v="n:6981317760235477752" />
        <node concept="3Tqbb2" id="u9" role="1tU5fm">
          <uo k="s:originTrace" v="n:6981317760235477752" />
        </node>
      </node>
      <node concept="37vLTG" id="u5" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:6981317760235477752" />
        <node concept="3uibUv" id="ua" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:6981317760235477752" />
        </node>
      </node>
      <node concept="37vLTG" id="u6" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:6981317760235477752" />
        <node concept="3uibUv" id="ub" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:6981317760235477752" />
        </node>
      </node>
      <node concept="3clFbS" id="u7" role="3clF47">
        <uo k="s:originTrace" v="n:6981317760235477753" />
        <node concept="3SKdUt" id="uc" role="3cqZAp">
          <uo k="s:originTrace" v="n:8312241405112303093" />
          <node concept="1PaTwC" id="ul" role="1aUNEU">
            <uo k="s:originTrace" v="n:700871696606822376" />
            <node concept="3oM_SD" id="um" role="1PaTwD">
              <property role="3oM_SC" value="unfortunately," />
              <uo k="s:originTrace" v="n:700871696606822377" />
            </node>
            <node concept="3oM_SD" id="un" role="1PaTwD">
              <property role="3oM_SC" value="can't" />
              <uo k="s:originTrace" v="n:700871696606822378" />
            </node>
            <node concept="3oM_SD" id="uo" role="1PaTwD">
              <property role="3oM_SC" value="use" />
              <uo k="s:originTrace" v="n:700871696606822379" />
            </node>
            <node concept="3oM_SD" id="up" role="1PaTwD">
              <property role="3oM_SC" value="superclass" />
              <uo k="s:originTrace" v="n:700871696606822380" />
            </node>
            <node concept="3oM_SD" id="uq" role="1PaTwD">
              <property role="3oM_SC" value="of" />
              <uo k="s:originTrace" v="n:700871696606822381" />
            </node>
            <node concept="3oM_SD" id="ur" role="1PaTwD">
              <property role="3oM_SC" value="all" />
              <uo k="s:originTrace" v="n:700871696606822382" />
            </node>
            <node concept="3oM_SD" id="us" role="1PaTwD">
              <property role="3oM_SC" value="primitives," />
              <uo k="s:originTrace" v="n:700871696606822383" />
            </node>
            <node concept="3oM_SD" id="ut" role="1PaTwD">
              <property role="3oM_SC" value="PrimitiveType," />
              <uo k="s:originTrace" v="n:700871696606822384" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="ud" role="3cqZAp">
          <uo k="s:originTrace" v="n:8312241405112303158" />
          <node concept="1PaTwC" id="uu" role="1aUNEU">
            <uo k="s:originTrace" v="n:700871696606822385" />
            <node concept="3oM_SD" id="uv" role="1PaTwD">
              <property role="3oM_SC" value="as" />
              <uo k="s:originTrace" v="n:700871696606822386" />
            </node>
            <node concept="3oM_SD" id="uw" role="1PaTwD">
              <property role="3oM_SC" value="there's" />
              <uo k="s:originTrace" v="n:700871696606822387" />
            </node>
            <node concept="3oM_SD" id="ux" role="1PaTwD">
              <property role="3oM_SC" value="no" />
              <uo k="s:originTrace" v="n:700871696606822388" />
            </node>
            <node concept="3oM_SD" id="uy" role="1PaTwD">
              <property role="3oM_SC" value="'supertype'" />
              <uo k="s:originTrace" v="n:700871696606822389" />
            </node>
            <node concept="3oM_SD" id="uz" role="1PaTwD">
              <property role="3oM_SC" value="relation" />
              <uo k="s:originTrace" v="n:700871696606822390" />
            </node>
            <node concept="3oM_SD" id="u$" role="1PaTwD">
              <property role="3oM_SC" value="between" />
              <uo k="s:originTrace" v="n:700871696606822391" />
            </node>
            <node concept="3oM_SD" id="u_" role="1PaTwD">
              <property role="3oM_SC" value="specific" />
              <uo k="s:originTrace" v="n:700871696606822392" />
            </node>
            <node concept="3oM_SD" id="uA" role="1PaTwD">
              <property role="3oM_SC" value="primitive" />
              <uo k="s:originTrace" v="n:700871696606822393" />
            </node>
            <node concept="3oM_SD" id="uB" role="1PaTwD">
              <property role="3oM_SC" value="type" />
              <uo k="s:originTrace" v="n:700871696606822394" />
            </node>
            <node concept="3oM_SD" id="uC" role="1PaTwD">
              <property role="3oM_SC" value="(e.g." />
              <uo k="s:originTrace" v="n:700871696606822395" />
            </node>
            <node concept="3oM_SD" id="uD" role="1PaTwD">
              <property role="3oM_SC" value="IntegerType)" />
              <uo k="s:originTrace" v="n:700871696606822396" />
            </node>
            <node concept="3oM_SD" id="uE" role="1PaTwD">
              <property role="3oM_SC" value="and" />
              <uo k="s:originTrace" v="n:700871696606822397" />
            </node>
            <node concept="3oM_SD" id="uF" role="1PaTwD">
              <property role="3oM_SC" value="PrimitiveType" />
              <uo k="s:originTrace" v="n:700871696606822398" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="ue" role="3cqZAp">
          <uo k="s:originTrace" v="n:8312241405112303227" />
          <node concept="1PaTwC" id="uG" role="1aUNEU">
            <uo k="s:originTrace" v="n:700871696606822399" />
            <node concept="3oM_SD" id="uH" role="1PaTwD">
              <property role="3oM_SC" value="There's" />
              <uo k="s:originTrace" v="n:700871696606822400" />
            </node>
            <node concept="3oM_SD" id="uI" role="1PaTwD">
              <property role="3oM_SC" value="indeed" />
              <uo k="s:originTrace" v="n:700871696606822401" />
            </node>
            <node concept="3oM_SD" id="uJ" role="1PaTwD">
              <property role="3oM_SC" value="such" />
              <uo k="s:originTrace" v="n:700871696606822402" />
            </node>
            <node concept="3oM_SD" id="uK" role="1PaTwD">
              <property role="3oM_SC" value="relation" />
              <uo k="s:originTrace" v="n:700871696606822403" />
            </node>
            <node concept="3oM_SD" id="uL" role="1PaTwD">
              <property role="3oM_SC" value="with" />
              <uo k="s:originTrace" v="n:700871696606822404" />
            </node>
            <node concept="3oM_SD" id="uM" role="1PaTwD">
              <property role="3oM_SC" value="blTypes.PrimitiveTypeDescriptor" />
              <uo k="s:originTrace" v="n:700871696606822405" />
            </node>
            <node concept="3oM_SD" id="uN" role="1PaTwD">
              <property role="3oM_SC" value="(which" />
              <uo k="s:originTrace" v="n:700871696606822406" />
            </node>
            <node concept="3oM_SD" id="uO" role="1PaTwD">
              <property role="3oM_SC" value="in" />
              <uo k="s:originTrace" v="n:700871696606822407" />
            </node>
            <node concept="3oM_SD" id="uP" role="1PaTwD">
              <property role="3oM_SC" value="fact" />
              <uo k="s:originTrace" v="n:700871696606822408" />
            </node>
            <node concept="3oM_SD" id="uQ" role="1PaTwD">
              <property role="3oM_SC" value="was" />
              <uo k="s:originTrace" v="n:700871696606822409" />
            </node>
            <node concept="3oM_SD" id="uR" role="1PaTwD">
              <property role="3oM_SC" value="in" />
              <uo k="s:originTrace" v="n:700871696606822410" />
            </node>
            <node concept="3oM_SD" id="uS" role="1PaTwD">
              <property role="3oM_SC" value="use" />
              <uo k="s:originTrace" v="n:700871696606822411" />
            </node>
            <node concept="3oM_SD" id="uT" role="1PaTwD">
              <property role="3oM_SC" value="here" />
              <uo k="s:originTrace" v="n:700871696606822412" />
            </node>
            <node concept="3oM_SD" id="uU" role="1PaTwD">
              <property role="3oM_SC" value="initially)," />
              <uo k="s:originTrace" v="n:700871696606822413" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="uf" role="3cqZAp">
          <uo k="s:originTrace" v="n:8312241405112303300" />
          <node concept="1PaTwC" id="uV" role="1aUNEU">
            <uo k="s:originTrace" v="n:700871696606822414" />
            <node concept="3oM_SD" id="uW" role="1PaTwD">
              <property role="3oM_SC" value="however," />
              <uo k="s:originTrace" v="n:700871696606822415" />
            </node>
            <node concept="3oM_SD" id="uX" role="1PaTwD">
              <property role="3oM_SC" value="PrimitiveTypeDescriptor" />
              <uo k="s:originTrace" v="n:700871696606822416" />
            </node>
            <node concept="3oM_SD" id="uY" role="1PaTwD">
              <property role="3oM_SC" value="is" />
              <uo k="s:originTrace" v="n:700871696606822417" />
            </node>
            <node concept="3oM_SD" id="uZ" role="1PaTwD">
              <property role="3oM_SC" value="not" />
              <uo k="s:originTrace" v="n:700871696606822418" />
            </node>
            <node concept="3oM_SD" id="v0" role="1PaTwD">
              <property role="3oM_SC" value="an" />
              <uo k="s:originTrace" v="n:700871696606822419" />
            </node>
            <node concept="3oM_SD" id="v1" role="1PaTwD">
              <property role="3oM_SC" value="IType" />
              <uo k="s:originTrace" v="n:700871696606822420" />
            </node>
            <node concept="3oM_SD" id="v2" role="1PaTwD">
              <property role="3oM_SC" value="(required" />
              <uo k="s:originTrace" v="n:700871696606822421" />
            </node>
            <node concept="3oM_SD" id="v3" role="1PaTwD">
              <property role="3oM_SC" value="by" />
              <uo k="s:originTrace" v="n:700871696606822422" />
            </node>
            <node concept="3oM_SD" id="v4" role="1PaTwD">
              <property role="3oM_SC" value="JoinType.argument)," />
              <uo k="s:originTrace" v="n:700871696606822423" />
            </node>
            <node concept="3oM_SD" id="v5" role="1PaTwD">
              <property role="3oM_SC" value="and" />
              <uo k="s:originTrace" v="n:700871696606822424" />
            </node>
            <node concept="3oM_SD" id="v6" role="1PaTwD">
              <property role="3oM_SC" value="I" />
              <uo k="s:originTrace" v="n:700871696606822425" />
            </node>
            <node concept="3oM_SD" id="v7" role="1PaTwD">
              <property role="3oM_SC" value="don't" />
              <uo k="s:originTrace" v="n:700871696606822426" />
            </node>
            <node concept="3oM_SD" id="v8" role="1PaTwD">
              <property role="3oM_SC" value="want" />
              <uo k="s:originTrace" v="n:700871696606822427" />
            </node>
            <node concept="3oM_SD" id="v9" role="1PaTwD">
              <property role="3oM_SC" value="neither" />
              <uo k="s:originTrace" v="n:700871696606822428" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="ug" role="3cqZAp">
          <uo k="s:originTrace" v="n:8312241405112303377" />
          <node concept="1PaTwC" id="va" role="1aUNEU">
            <uo k="s:originTrace" v="n:700871696606822429" />
            <node concept="3oM_SD" id="vb" role="1PaTwD">
              <property role="3oM_SC" value="to" />
              <uo k="s:originTrace" v="n:700871696606822430" />
            </node>
            <node concept="3oM_SD" id="vc" role="1PaTwD">
              <property role="3oM_SC" value="push" />
              <uo k="s:originTrace" v="n:700871696606822431" />
            </node>
            <node concept="3oM_SD" id="vd" role="1PaTwD">
              <property role="3oM_SC" value="incompatible" />
              <uo k="s:originTrace" v="n:700871696606822432" />
            </node>
            <node concept="3oM_SD" id="ve" role="1PaTwD">
              <property role="3oM_SC" value="value" />
              <uo k="s:originTrace" v="n:700871696606822433" />
            </node>
            <node concept="3oM_SD" id="vf" role="1PaTwD">
              <property role="3oM_SC" value="into" />
              <uo k="s:originTrace" v="n:700871696606822434" />
            </node>
            <node concept="3oM_SD" id="vg" role="1PaTwD">
              <property role="3oM_SC" value="model" />
              <uo k="s:originTrace" v="n:700871696606822435" />
            </node>
            <node concept="3oM_SD" id="vh" role="1PaTwD">
              <property role="3oM_SC" value="(could" />
              <uo k="s:originTrace" v="n:700871696606822436" />
            </node>
            <node concept="3oM_SD" id="vi" role="1PaTwD">
              <property role="3oM_SC" value="do" />
              <uo k="s:originTrace" v="n:700871696606822437" />
            </node>
            <node concept="3oM_SD" id="vj" role="1PaTwD">
              <property role="3oM_SC" value="using" />
              <uo k="s:originTrace" v="n:700871696606822438" />
            </node>
            <node concept="3oM_SD" id="vk" role="1PaTwD">
              <property role="3oM_SC" value="smodel" />
              <uo k="s:originTrace" v="n:700871696606822439" />
            </node>
            <node concept="3oM_SD" id="vl" role="1PaTwD">
              <property role="3oM_SC" value="lang," />
              <uo k="s:originTrace" v="n:700871696606822440" />
            </node>
            <node concept="3oM_SD" id="vm" role="1PaTwD">
              <property role="3oM_SC" value="as" />
              <uo k="s:originTrace" v="n:700871696606822441" />
            </node>
            <node concept="3oM_SD" id="vn" role="1PaTwD">
              <property role="3oM_SC" value="light" />
              <uo k="s:originTrace" v="n:700871696606822442" />
            </node>
            <node concept="3oM_SD" id="vo" role="1PaTwD">
              <property role="3oM_SC" value="quotation" />
              <uo k="s:originTrace" v="n:700871696606822443" />
            </node>
            <node concept="3oM_SD" id="vp" role="1PaTwD">
              <property role="3oM_SC" value="force" />
              <uo k="s:originTrace" v="n:700871696606822444" />
            </node>
            <node concept="3oM_SD" id="vq" role="1PaTwD">
              <property role="3oM_SC" value="cast" />
              <uo k="s:originTrace" v="n:700871696606822445" />
            </node>
            <node concept="3oM_SD" id="vr" role="1PaTwD">
              <property role="3oM_SC" value="and" />
              <uo k="s:originTrace" v="n:700871696606822446" />
            </node>
            <node concept="3oM_SD" id="vs" role="1PaTwD">
              <property role="3oM_SC" value="fails" />
              <uo k="s:originTrace" v="n:700871696606822447" />
            </node>
            <node concept="3oM_SD" id="vt" role="1PaTwD">
              <property role="3oM_SC" value="at" />
              <uo k="s:originTrace" v="n:700871696606822448" />
            </node>
            <node concept="3oM_SD" id="vu" role="1PaTwD">
              <property role="3oM_SC" value="exec)," />
              <uo k="s:originTrace" v="n:700871696606822449" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="uh" role="3cqZAp">
          <uo k="s:originTrace" v="n:8312241405112303458" />
          <node concept="1PaTwC" id="vv" role="1aUNEU">
            <uo k="s:originTrace" v="n:700871696606822450" />
            <node concept="3oM_SD" id="vw" role="1PaTwD">
              <property role="3oM_SC" value="nor" />
              <uo k="s:originTrace" v="n:700871696606822451" />
            </node>
            <node concept="3oM_SD" id="vx" role="1PaTwD">
              <property role="3oM_SC" value="to" />
              <uo k="s:originTrace" v="n:700871696606822452" />
            </node>
            <node concept="3oM_SD" id="vy" role="1PaTwD">
              <property role="3oM_SC" value="make" />
              <uo k="s:originTrace" v="n:700871696606822453" />
            </node>
            <node concept="3oM_SD" id="vz" role="1PaTwD">
              <property role="3oM_SC" value="PrimitiveTypeDescriptor" />
              <uo k="s:originTrace" v="n:700871696606822454" />
            </node>
            <node concept="3oM_SD" id="v$" role="1PaTwD">
              <property role="3oM_SC" value="to" />
              <uo k="s:originTrace" v="n:700871696606822455" />
            </node>
            <node concept="3oM_SD" id="v_" role="1PaTwD">
              <property role="3oM_SC" value="implement" />
              <uo k="s:originTrace" v="n:700871696606822456" />
            </node>
            <node concept="3oM_SD" id="vA" role="1PaTwD">
              <property role="3oM_SC" value="IType" />
              <uo k="s:originTrace" v="n:700871696606822457" />
            </node>
            <node concept="3oM_SD" id="vB" role="1PaTwD">
              <property role="3oM_SC" value="(which" />
              <uo k="s:originTrace" v="n:700871696606822458" />
            </node>
            <node concept="3oM_SD" id="vC" role="1PaTwD">
              <property role="3oM_SC" value="it" />
              <uo k="s:originTrace" v="n:700871696606822459" />
            </node>
            <node concept="3oM_SD" id="vD" role="1PaTwD">
              <property role="3oM_SC" value="should," />
              <uo k="s:originTrace" v="n:700871696606822460" />
            </node>
            <node concept="3oM_SD" id="vE" role="1PaTwD">
              <property role="3oM_SC" value="but" />
              <uo k="s:originTrace" v="n:700871696606822461" />
            </node>
            <node concept="3oM_SD" id="vF" role="1PaTwD">
              <property role="3oM_SC" value="it" />
              <uo k="s:originTrace" v="n:700871696606822462" />
            </node>
            <node concept="3oM_SD" id="vG" role="1PaTwD">
              <property role="3oM_SC" value="would" />
              <uo k="s:originTrace" v="n:700871696606822463" />
            </node>
            <node concept="3oM_SD" id="vH" role="1PaTwD">
              <property role="3oM_SC" value="yield" />
              <uo k="s:originTrace" v="n:700871696606822464" />
            </node>
            <node concept="3oM_SD" id="vI" role="1PaTwD">
              <property role="3oM_SC" value="another" />
              <uo k="s:originTrace" v="n:700871696606822465" />
            </node>
            <node concept="3oM_SD" id="vJ" role="1PaTwD">
              <property role="3oM_SC" value="dependency" />
              <uo k="s:originTrace" v="n:700871696606822466" />
            </node>
            <node concept="3oM_SD" id="vK" role="1PaTwD">
              <property role="3oM_SC" value="cycle" />
              <uo k="s:originTrace" v="n:700871696606822467" />
            </node>
            <node concept="3oM_SD" id="vL" role="1PaTwD">
              <property role="3oM_SC" value="I" />
              <uo k="s:originTrace" v="n:700871696606822468" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="ui" role="3cqZAp">
          <uo k="s:originTrace" v="n:8312241405112303543" />
          <node concept="1PaTwC" id="vM" role="1aUNEU">
            <uo k="s:originTrace" v="n:700871696606822469" />
            <node concept="3oM_SD" id="vN" role="1PaTwD">
              <property role="3oM_SC" value="can't" />
              <uo k="s:originTrace" v="n:700871696606822470" />
            </node>
            <node concept="3oM_SD" id="vO" role="1PaTwD">
              <property role="3oM_SC" value="afford" />
              <uo k="s:originTrace" v="n:700871696606822471" />
            </node>
            <node concept="3oM_SD" id="vP" role="1PaTwD">
              <property role="3oM_SC" value="dealing" />
              <uo k="s:originTrace" v="n:700871696606822472" />
            </node>
            <node concept="3oM_SD" id="vQ" role="1PaTwD">
              <property role="3oM_SC" value="with" />
              <uo k="s:originTrace" v="n:700871696606822473" />
            </node>
            <node concept="3oM_SD" id="vR" role="1PaTwD">
              <property role="3oM_SC" value="right" />
              <uo k="s:originTrace" v="n:700871696606822474" />
            </node>
            <node concept="3oM_SD" id="vS" role="1PaTwD">
              <property role="3oM_SC" value="now." />
              <uo k="s:originTrace" v="n:700871696606822475" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="uj" role="3cqZAp">
          <uo k="s:originTrace" v="n:8312241405112303632" />
          <node concept="1PaTwC" id="vT" role="1aUNEU">
            <uo k="s:originTrace" v="n:700871696606822476" />
            <node concept="3oM_SD" id="vU" role="1PaTwD">
              <property role="3oM_SC" value="Thus," />
              <uo k="s:originTrace" v="n:700871696606822477" />
            </node>
            <node concept="3oM_SD" id="vV" role="1PaTwD">
              <property role="3oM_SC" value="I've" />
              <uo k="s:originTrace" v="n:700871696606822478" />
            </node>
            <node concept="3oM_SD" id="vW" role="1PaTwD">
              <property role="3oM_SC" value="just" />
              <uo k="s:originTrace" v="n:700871696606822479" />
            </node>
            <node concept="3oM_SD" id="vX" role="1PaTwD">
              <property role="3oM_SC" value="listed" />
              <uo k="s:originTrace" v="n:700871696606822480" />
            </node>
            <node concept="3oM_SD" id="vY" role="1PaTwD">
              <property role="3oM_SC" value="all" />
              <uo k="s:originTrace" v="n:700871696606822481" />
            </node>
            <node concept="3oM_SD" id="vZ" role="1PaTwD">
              <property role="3oM_SC" value="subtypes" />
              <uo k="s:originTrace" v="n:700871696606822482" />
            </node>
            <node concept="3oM_SD" id="w0" role="1PaTwD">
              <property role="3oM_SC" value="of" />
              <uo k="s:originTrace" v="n:700871696606822483" />
            </node>
            <node concept="3oM_SD" id="w1" role="1PaTwD">
              <property role="3oM_SC" value="PrimitiveType" />
              <uo k="s:originTrace" v="n:700871696606822484" />
            </node>
            <node concept="3oM_SD" id="w2" role="1PaTwD">
              <property role="3oM_SC" value="deemed" />
              <uo k="s:originTrace" v="n:700871696606822485" />
            </node>
            <node concept="3oM_SD" id="w3" role="1PaTwD">
              <property role="3oM_SC" value="reasonable" />
              <uo k="s:originTrace" v="n:700871696606822486" />
            </node>
            <node concept="3oM_SD" id="w4" role="1PaTwD">
              <property role="3oM_SC" value="at" />
              <uo k="s:originTrace" v="n:700871696606822487" />
            </node>
            <node concept="3oM_SD" id="w5" role="1PaTwD">
              <property role="3oM_SC" value="the" />
              <uo k="s:originTrace" v="n:700871696606822488" />
            </node>
            <node concept="3oM_SD" id="w6" role="1PaTwD">
              <property role="3oM_SC" value="moment." />
              <uo k="s:originTrace" v="n:700871696606822489" />
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="uk" role="3cqZAp">
          <uo k="s:originTrace" v="n:6981317760235477761" />
          <node concept="3clFbS" id="w7" role="9aQI4">
            <node concept="3cpWs8" id="w9" role="3cqZAp">
              <node concept="3cpWsn" id="wc" role="3cpWs9">
                <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                <node concept="37vLTw" id="wd" role="33vP2m">
                  <ref role="3cqZAo" node="u4" resolve="persistentPropertyDeclaration" />
                  <uo k="s:originTrace" v="n:6981317760235477761" />
                  <node concept="6wLe0" id="wf" role="lGtFl">
                    <property role="6wLej" value="6981317760235477761" />
                    <property role="6wLeW" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                    <uo k="s:originTrace" v="n:6981317760235477761" />
                  </node>
                </node>
                <node concept="3uibUv" id="we" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="wa" role="3cqZAp">
              <node concept="3cpWsn" id="wg" role="3cpWs9">
                <property role="TrG5h" value="_info_12389875345" />
                <node concept="3uibUv" id="wh" role="1tU5fm">
                  <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                </node>
                <node concept="2ShNRf" id="wi" role="33vP2m">
                  <node concept="1pGfFk" id="wj" role="2ShVmc">
                    <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                    <node concept="37vLTw" id="wk" role="37wK5m">
                      <ref role="3cqZAo" node="wc" resolve="_nodeToCheck_1029348928467" />
                    </node>
                    <node concept="10Nm6u" id="wl" role="37wK5m" />
                    <node concept="Xl_RD" id="wm" role="37wK5m">
                      <property role="Xl_RC" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                    </node>
                    <node concept="Xl_RD" id="wn" role="37wK5m">
                      <property role="Xl_RC" value="6981317760235477761" />
                    </node>
                    <node concept="3cmrfG" id="wo" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="10Nm6u" id="wp" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="wb" role="3cqZAp">
              <node concept="2OqwBi" id="wq" role="3clFbG">
                <node concept="3VmV3z" id="wr" role="2Oq$k0">
                  <property role="3VnrPo" value="typeCheckingContext" />
                  <node concept="3uibUv" id="wt" role="3Vn4Tt">
                    <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                  </node>
                </node>
                <node concept="liA8E" id="ws" role="2OqNvi">
                  <ref role="37wK5l" to="u78q:~TypeCheckingContext.createLessThanInequality(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,boolean,boolean,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createLessThanInequality" />
                  <node concept="10QFUN" id="wu" role="37wK5m">
                    <uo k="s:originTrace" v="n:6981317760235477763" />
                    <node concept="3uibUv" id="wz" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="w$" role="10QFUP">
                      <uo k="s:originTrace" v="n:6981317760235477764" />
                      <node concept="37vLTw" id="w_" role="2Oq$k0">
                        <ref role="3cqZAo" node="u4" resolve="persistentPropertyDeclaration" />
                        <uo k="s:originTrace" v="n:6981317760235477765" />
                      </node>
                      <node concept="3TrEf2" id="wA" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpee:4VkOLwjf83e" resolve="type" />
                        <uo k="s:originTrace" v="n:6981317760235477766" />
                      </node>
                    </node>
                  </node>
                  <node concept="10QFUN" id="wv" role="37wK5m">
                    <uo k="s:originTrace" v="n:6981317760235477767" />
                    <node concept="3uibUv" id="wB" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2pJPEk" id="wC" role="10QFUP">
                      <uo k="s:originTrace" v="n:48168216978191719" />
                      <node concept="2pJPED" id="wD" role="2pJPEn">
                        <ref role="2pJxaS" to="tpd4:hausRW2" resolve="JoinType" />
                        <uo k="s:originTrace" v="n:48168216978191705" />
                        <node concept="2pIpSj" id="wE" role="2pJxcM">
                          <ref role="2pIpSl" to="tpd4:hausUtE" resolve="argument" />
                          <uo k="s:originTrace" v="n:48168216978191709" />
                          <node concept="36be1Y" id="wF" role="28nt2d">
                            <uo k="s:originTrace" v="n:48168216978191710" />
                            <node concept="2pJPED" id="wG" role="36be1Z">
                              <ref role="2pJxaS" to="tpee:g7uibYu" resolve="ClassifierType" />
                              <uo k="s:originTrace" v="n:48168216978191706" />
                              <node concept="2pIpSj" id="wS" role="2pJxcM">
                                <ref role="2pIpSl" to="tpee:g7uigIF" resolve="classifier" />
                                <uo k="s:originTrace" v="n:48168216978191707" />
                                <node concept="36bGnv" id="wT" role="28nt2d">
                                  <ref role="36bGnp" to="w0gx:~Copyable" resolve="Copyable" />
                                  <uo k="s:originTrace" v="n:48168216978191708" />
                                </node>
                              </node>
                            </node>
                            <node concept="2pJPED" id="wH" role="36be1Z">
                              <ref role="2pJxaS" to="tpee:g7uibYu" resolve="ClassifierType" />
                              <uo k="s:originTrace" v="n:48168216978191711" />
                              <node concept="2pIpSj" id="wU" role="2pJxcM">
                                <ref role="2pIpSl" to="tpee:g7uigIF" resolve="classifier" />
                                <uo k="s:originTrace" v="n:48168216978191712" />
                                <node concept="36bGnv" id="wV" role="28nt2d">
                                  <ref role="36bGnp" to="wyt6:~Enum" resolve="Enum" />
                                  <uo k="s:originTrace" v="n:48168216978191713" />
                                </node>
                              </node>
                            </node>
                            <node concept="2pJPED" id="wI" role="36be1Z">
                              <ref role="2pJxaS" to="tpee:g7uibYu" resolve="ClassifierType" />
                              <uo k="s:originTrace" v="n:48168216978191714" />
                              <node concept="2pIpSj" id="wW" role="2pJxcM">
                                <ref role="2pIpSl" to="tpee:g7uigIF" resolve="classifier" />
                                <uo k="s:originTrace" v="n:48168216978191715" />
                                <node concept="36bGnv" id="wX" role="28nt2d">
                                  <ref role="36bGnp" to="wyt6:~String" resolve="String" />
                                  <uo k="s:originTrace" v="n:48168216978191716" />
                                </node>
                              </node>
                            </node>
                            <node concept="2pJPED" id="wJ" role="36be1Z">
                              <ref role="2pJxaS" to="tpee:f_0P_4Y" resolve="BooleanType" />
                              <uo k="s:originTrace" v="n:8312241405112301598" />
                            </node>
                            <node concept="2pJPED" id="wK" role="36be1Z">
                              <ref role="2pJxaS" to="tpee:f_0OyhT" resolve="IntegerType" />
                              <uo k="s:originTrace" v="n:8312241405112301748" />
                            </node>
                            <node concept="2pJPED" id="wL" role="36be1Z">
                              <ref role="2pJxaS" to="tpee:f_0OMvX" resolve="FloatType" />
                              <uo k="s:originTrace" v="n:8312241405112301912" />
                            </node>
                            <node concept="2pJPED" id="wM" role="36be1Z">
                              <ref role="2pJxaS" to="tpee:f_0P56A" resolve="DoubleType" />
                              <uo k="s:originTrace" v="n:8312241405112302090" />
                            </node>
                            <node concept="2pJPED" id="wN" role="36be1Z">
                              <ref role="2pJxaS" to="tpee:f_0PfwA" resolve="CharType" />
                              <uo k="s:originTrace" v="n:8312241405112302282" />
                            </node>
                            <node concept="2pJPED" id="wO" role="36be1Z">
                              <ref role="2pJxaS" to="tpee:f_0Pron" resolve="ByteType" />
                              <uo k="s:originTrace" v="n:8312241405112302488" />
                            </node>
                            <node concept="2pJPED" id="wP" role="36be1Z">
                              <ref role="2pJxaS" to="tpee:fzcpWvN" resolve="LongType" />
                              <uo k="s:originTrace" v="n:8312241405112302708" />
                            </node>
                            <node concept="2pJPED" id="wQ" role="36be1Z">
                              <ref role="2pJxaS" to="tpee:f_0N3wd" resolve="ShortType" />
                              <uo k="s:originTrace" v="n:8312241405112302942" />
                            </node>
                            <node concept="2pJPED" id="wR" role="36be1Z">
                              <ref role="2pJxaS" to="fb9u:O$iR4J$g3X" resolve="TemplatePersistentConfigurationType" />
                              <uo k="s:originTrace" v="n:48168216978191718" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbT" id="ww" role="37wK5m" />
                  <node concept="3clFbT" id="wx" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                  <node concept="37vLTw" id="wy" role="37wK5m">
                    <ref role="3cqZAo" node="wg" resolve="_info_12389875345" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="6wLe0" id="w8" role="lGtFl">
            <property role="6wLej" value="6981317760235477761" />
            <property role="6wLeW" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="u8" role="1B3o_S">
        <uo k="s:originTrace" v="n:6981317760235477752" />
      </node>
    </node>
    <node concept="3clFb_" id="tU" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:6981317760235477752" />
      <node concept="3bZ5Sz" id="wY" role="3clF45">
        <uo k="s:originTrace" v="n:6981317760235477752" />
      </node>
      <node concept="3clFbS" id="wZ" role="3clF47">
        <uo k="s:originTrace" v="n:6981317760235477752" />
        <node concept="3cpWs6" id="x1" role="3cqZAp">
          <uo k="s:originTrace" v="n:6981317760235477752" />
          <node concept="35c_gC" id="x2" role="3cqZAk">
            <ref role="35c_gD" to="fb9u:O$iR4J$g4p" resolve="PersistentPropertyDeclaration" />
            <uo k="s:originTrace" v="n:6981317760235477752" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="x0" role="1B3o_S">
        <uo k="s:originTrace" v="n:6981317760235477752" />
      </node>
    </node>
    <node concept="3clFb_" id="tV" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:6981317760235477752" />
      <node concept="37vLTG" id="x3" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:6981317760235477752" />
        <node concept="3Tqbb2" id="x7" role="1tU5fm">
          <uo k="s:originTrace" v="n:6981317760235477752" />
        </node>
      </node>
      <node concept="3clFbS" id="x4" role="3clF47">
        <uo k="s:originTrace" v="n:6981317760235477752" />
        <node concept="9aQIb" id="x8" role="3cqZAp">
          <uo k="s:originTrace" v="n:6981317760235477752" />
          <node concept="3clFbS" id="x9" role="9aQI4">
            <uo k="s:originTrace" v="n:6981317760235477752" />
            <node concept="3cpWs6" id="xa" role="3cqZAp">
              <uo k="s:originTrace" v="n:6981317760235477752" />
              <node concept="2ShNRf" id="xb" role="3cqZAk">
                <uo k="s:originTrace" v="n:6981317760235477752" />
                <node concept="1pGfFk" id="xc" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:6981317760235477752" />
                  <node concept="2OqwBi" id="xd" role="37wK5m">
                    <uo k="s:originTrace" v="n:6981317760235477752" />
                    <node concept="2OqwBi" id="xf" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:6981317760235477752" />
                      <node concept="liA8E" id="xh" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:6981317760235477752" />
                      </node>
                      <node concept="2JrnkZ" id="xi" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:6981317760235477752" />
                        <node concept="37vLTw" id="xj" role="2JrQYb">
                          <ref role="3cqZAo" node="x3" resolve="argument" />
                          <uo k="s:originTrace" v="n:6981317760235477752" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="xg" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:6981317760235477752" />
                      <node concept="1rXfSq" id="xk" role="37wK5m">
                        <ref role="37wK5l" node="tU" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:6981317760235477752" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="xe" role="37wK5m">
                    <uo k="s:originTrace" v="n:6981317760235477752" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="x5" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:6981317760235477752" />
      </node>
      <node concept="3Tm1VV" id="x6" role="1B3o_S">
        <uo k="s:originTrace" v="n:6981317760235477752" />
      </node>
    </node>
    <node concept="3clFb_" id="tW" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:6981317760235477752" />
      <node concept="3clFbS" id="xl" role="3clF47">
        <uo k="s:originTrace" v="n:6981317760235477752" />
        <node concept="3cpWs6" id="xo" role="3cqZAp">
          <uo k="s:originTrace" v="n:6981317760235477752" />
          <node concept="3clFbT" id="xp" role="3cqZAk">
            <uo k="s:originTrace" v="n:6981317760235477752" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="xm" role="3clF45">
        <uo k="s:originTrace" v="n:6981317760235477752" />
      </node>
      <node concept="3Tm1VV" id="xn" role="1B3o_S">
        <uo k="s:originTrace" v="n:6981317760235477752" />
      </node>
    </node>
    <node concept="3uibUv" id="tX" role="EKbjA">
      <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:6981317760235477752" />
    </node>
    <node concept="3uibUv" id="tY" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractInferenceRule_Runtime" resolve="AbstractInferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:6981317760235477752" />
    </node>
    <node concept="3Tm1VV" id="tZ" role="1B3o_S">
      <uo k="s:originTrace" v="n:6981317760235477752" />
    </node>
  </node>
  <node concept="312cEu" id="xq">
    <property role="3GE5qa" value="properties" />
    <property role="TrG5h" value="typeof_PersistentPropertyReferenceOperation_InferenceRule" />
    <uo k="s:originTrace" v="n:6981317760235477778" />
    <node concept="3clFbW" id="xr" role="jymVt">
      <uo k="s:originTrace" v="n:6981317760235477778" />
      <node concept="3clFbS" id="xz" role="3clF47">
        <uo k="s:originTrace" v="n:6981317760235477778" />
      </node>
      <node concept="3Tm1VV" id="x$" role="1B3o_S">
        <uo k="s:originTrace" v="n:6981317760235477778" />
      </node>
      <node concept="3cqZAl" id="x_" role="3clF45">
        <uo k="s:originTrace" v="n:6981317760235477778" />
      </node>
    </node>
    <node concept="3clFb_" id="xs" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:6981317760235477778" />
      <node concept="3cqZAl" id="xA" role="3clF45">
        <uo k="s:originTrace" v="n:6981317760235477778" />
      </node>
      <node concept="37vLTG" id="xB" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="op" />
        <uo k="s:originTrace" v="n:6981317760235477778" />
        <node concept="3Tqbb2" id="xG" role="1tU5fm">
          <uo k="s:originTrace" v="n:6981317760235477778" />
        </node>
      </node>
      <node concept="37vLTG" id="xC" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:6981317760235477778" />
        <node concept="3uibUv" id="xH" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:6981317760235477778" />
        </node>
      </node>
      <node concept="37vLTG" id="xD" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:6981317760235477778" />
        <node concept="3uibUv" id="xI" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:6981317760235477778" />
        </node>
      </node>
      <node concept="3clFbS" id="xE" role="3clF47">
        <uo k="s:originTrace" v="n:6981317760235477779" />
        <node concept="9aQIb" id="xJ" role="3cqZAp">
          <uo k="s:originTrace" v="n:6981317760235477780" />
          <node concept="3clFbS" id="xK" role="9aQI4">
            <node concept="3cpWs8" id="xM" role="3cqZAp">
              <node concept="3cpWsn" id="xP" role="3cpWs9">
                <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                <node concept="37vLTw" id="xQ" role="33vP2m">
                  <ref role="3cqZAo" node="xB" resolve="op" />
                  <uo k="s:originTrace" v="n:6981317760235477789" />
                  <node concept="6wLe0" id="xS" role="lGtFl">
                    <property role="6wLej" value="6981317760235477780" />
                    <property role="6wLeW" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                  </node>
                </node>
                <node concept="3uibUv" id="xR" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="xN" role="3cqZAp">
              <node concept="3cpWsn" id="xT" role="3cpWs9">
                <property role="TrG5h" value="_info_12389875345" />
                <node concept="3uibUv" id="xU" role="1tU5fm">
                  <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                </node>
                <node concept="2ShNRf" id="xV" role="33vP2m">
                  <node concept="1pGfFk" id="xW" role="2ShVmc">
                    <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                    <node concept="37vLTw" id="xX" role="37wK5m">
                      <ref role="3cqZAo" node="xP" resolve="_nodeToCheck_1029348928467" />
                    </node>
                    <node concept="10Nm6u" id="xY" role="37wK5m" />
                    <node concept="Xl_RD" id="xZ" role="37wK5m">
                      <property role="Xl_RC" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                    </node>
                    <node concept="Xl_RD" id="y0" role="37wK5m">
                      <property role="Xl_RC" value="6981317760235477780" />
                    </node>
                    <node concept="3cmrfG" id="y1" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="10Nm6u" id="y2" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="xO" role="3cqZAp">
              <node concept="2OqwBi" id="y3" role="3clFbG">
                <node concept="3VmV3z" id="y4" role="2Oq$k0">
                  <property role="3VnrPo" value="typeCheckingContext" />
                  <node concept="3uibUv" id="y6" role="3Vn4Tt">
                    <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                  </node>
                </node>
                <node concept="liA8E" id="y5" role="2OqNvi">
                  <ref role="37wK5l" to="u78q:~TypeCheckingContext.createEquation(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createEquation" />
                  <node concept="10QFUN" id="y7" role="37wK5m">
                    <uo k="s:originTrace" v="n:6981317760235477787" />
                    <node concept="3uibUv" id="ya" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="yb" role="10QFUP">
                      <uo k="s:originTrace" v="n:6981317760235477788" />
                      <node concept="3VmV3z" id="yc" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="yf" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="yd" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                        <node concept="3VmV3z" id="yg" role="37wK5m">
                          <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                          <node concept="3uibUv" id="yk" role="3Vn4Tt">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="yh" role="37wK5m">
                          <property role="Xl_RC" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="yi" role="37wK5m">
                          <property role="Xl_RC" value="6981317760235477788" />
                        </node>
                        <node concept="3clFbT" id="yj" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                      <node concept="6wLe0" id="ye" role="lGtFl">
                        <property role="6wLej" value="6981317760235477788" />
                        <property role="6wLeW" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                      </node>
                    </node>
                  </node>
                  <node concept="10QFUN" id="y8" role="37wK5m">
                    <uo k="s:originTrace" v="n:6981317760235477781" />
                    <node concept="3uibUv" id="yl" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="ym" role="10QFUP">
                      <uo k="s:originTrace" v="n:6981317760235477782" />
                      <node concept="2OqwBi" id="yn" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:6981317760235477783" />
                        <node concept="37vLTw" id="yp" role="2Oq$k0">
                          <ref role="3cqZAo" node="xB" resolve="op" />
                          <uo k="s:originTrace" v="n:6981317760235477784" />
                        </node>
                        <node concept="3TrEf2" id="yq" role="2OqNvi">
                          <ref role="3Tt5mk" to="fb9u:O$iR4J$g4f" resolve="variableDeclaration" />
                          <uo k="s:originTrace" v="n:6981317760235477785" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="yo" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpee:4VkOLwjf83e" resolve="type" />
                        <uo k="s:originTrace" v="n:6981317760235477786" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="y9" role="37wK5m">
                    <ref role="3cqZAo" node="xT" resolve="_info_12389875345" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="6wLe0" id="xL" role="lGtFl">
            <property role="6wLej" value="6981317760235477780" />
            <property role="6wLeW" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="xF" role="1B3o_S">
        <uo k="s:originTrace" v="n:6981317760235477778" />
      </node>
    </node>
    <node concept="3clFb_" id="xt" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:6981317760235477778" />
      <node concept="3bZ5Sz" id="yr" role="3clF45">
        <uo k="s:originTrace" v="n:6981317760235477778" />
      </node>
      <node concept="3clFbS" id="ys" role="3clF47">
        <uo k="s:originTrace" v="n:6981317760235477778" />
        <node concept="3cpWs6" id="yu" role="3cqZAp">
          <uo k="s:originTrace" v="n:6981317760235477778" />
          <node concept="35c_gC" id="yv" role="3cqZAk">
            <ref role="35c_gD" to="fb9u:O$iR4J$g4e" resolve="PersistentPropertyReferenceOperation" />
            <uo k="s:originTrace" v="n:6981317760235477778" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="yt" role="1B3o_S">
        <uo k="s:originTrace" v="n:6981317760235477778" />
      </node>
    </node>
    <node concept="3clFb_" id="xu" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:6981317760235477778" />
      <node concept="37vLTG" id="yw" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:6981317760235477778" />
        <node concept="3Tqbb2" id="y$" role="1tU5fm">
          <uo k="s:originTrace" v="n:6981317760235477778" />
        </node>
      </node>
      <node concept="3clFbS" id="yx" role="3clF47">
        <uo k="s:originTrace" v="n:6981317760235477778" />
        <node concept="9aQIb" id="y_" role="3cqZAp">
          <uo k="s:originTrace" v="n:6981317760235477778" />
          <node concept="3clFbS" id="yA" role="9aQI4">
            <uo k="s:originTrace" v="n:6981317760235477778" />
            <node concept="3cpWs6" id="yB" role="3cqZAp">
              <uo k="s:originTrace" v="n:6981317760235477778" />
              <node concept="2ShNRf" id="yC" role="3cqZAk">
                <uo k="s:originTrace" v="n:6981317760235477778" />
                <node concept="1pGfFk" id="yD" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:6981317760235477778" />
                  <node concept="2OqwBi" id="yE" role="37wK5m">
                    <uo k="s:originTrace" v="n:6981317760235477778" />
                    <node concept="2OqwBi" id="yG" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:6981317760235477778" />
                      <node concept="liA8E" id="yI" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:6981317760235477778" />
                      </node>
                      <node concept="2JrnkZ" id="yJ" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:6981317760235477778" />
                        <node concept="37vLTw" id="yK" role="2JrQYb">
                          <ref role="3cqZAo" node="yw" resolve="argument" />
                          <uo k="s:originTrace" v="n:6981317760235477778" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="yH" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:6981317760235477778" />
                      <node concept="1rXfSq" id="yL" role="37wK5m">
                        <ref role="37wK5l" node="xt" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:6981317760235477778" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="yF" role="37wK5m">
                    <uo k="s:originTrace" v="n:6981317760235477778" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="yy" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:6981317760235477778" />
      </node>
      <node concept="3Tm1VV" id="yz" role="1B3o_S">
        <uo k="s:originTrace" v="n:6981317760235477778" />
      </node>
    </node>
    <node concept="3clFb_" id="xv" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:6981317760235477778" />
      <node concept="3clFbS" id="yM" role="3clF47">
        <uo k="s:originTrace" v="n:6981317760235477778" />
        <node concept="3cpWs6" id="yP" role="3cqZAp">
          <uo k="s:originTrace" v="n:6981317760235477778" />
          <node concept="3clFbT" id="yQ" role="3cqZAk">
            <uo k="s:originTrace" v="n:6981317760235477778" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="yN" role="3clF45">
        <uo k="s:originTrace" v="n:6981317760235477778" />
      </node>
      <node concept="3Tm1VV" id="yO" role="1B3o_S">
        <uo k="s:originTrace" v="n:6981317760235477778" />
      </node>
    </node>
    <node concept="3uibUv" id="xw" role="EKbjA">
      <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:6981317760235477778" />
    </node>
    <node concept="3uibUv" id="xx" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractInferenceRule_Runtime" resolve="AbstractInferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:6981317760235477778" />
    </node>
    <node concept="3Tm1VV" id="xy" role="1B3o_S">
      <uo k="s:originTrace" v="n:6981317760235477778" />
    </node>
  </node>
  <node concept="312cEu" id="yR">
    <property role="3GE5qa" value="properties" />
    <property role="TrG5h" value="typeof_ProjectAccessExpression_InferenceRule" />
    <uo k="s:originTrace" v="n:2070521360955289534" />
    <node concept="3clFbW" id="yS" role="jymVt">
      <uo k="s:originTrace" v="n:2070521360955289534" />
      <node concept="3clFbS" id="z0" role="3clF47">
        <uo k="s:originTrace" v="n:2070521360955289534" />
      </node>
      <node concept="3Tm1VV" id="z1" role="1B3o_S">
        <uo k="s:originTrace" v="n:2070521360955289534" />
      </node>
      <node concept="3cqZAl" id="z2" role="3clF45">
        <uo k="s:originTrace" v="n:2070521360955289534" />
      </node>
    </node>
    <node concept="3clFb_" id="yT" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:2070521360955289534" />
      <node concept="3cqZAl" id="z3" role="3clF45">
        <uo k="s:originTrace" v="n:2070521360955289534" />
      </node>
      <node concept="37vLTG" id="z4" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="expr" />
        <uo k="s:originTrace" v="n:2070521360955289534" />
        <node concept="3Tqbb2" id="z9" role="1tU5fm">
          <uo k="s:originTrace" v="n:2070521360955289534" />
        </node>
      </node>
      <node concept="37vLTG" id="z5" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:2070521360955289534" />
        <node concept="3uibUv" id="za" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:2070521360955289534" />
        </node>
      </node>
      <node concept="37vLTG" id="z6" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:2070521360955289534" />
        <node concept="3uibUv" id="zb" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:2070521360955289534" />
        </node>
      </node>
      <node concept="3clFbS" id="z7" role="3clF47">
        <uo k="s:originTrace" v="n:2070521360955289535" />
        <node concept="9aQIb" id="zc" role="3cqZAp">
          <uo k="s:originTrace" v="n:2070521360955290666" />
          <node concept="3clFbS" id="zd" role="9aQI4">
            <node concept="3cpWs8" id="zf" role="3cqZAp">
              <node concept="3cpWsn" id="zi" role="3cpWs9">
                <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                <node concept="37vLTw" id="zj" role="33vP2m">
                  <ref role="3cqZAo" node="z4" resolve="expr" />
                  <uo k="s:originTrace" v="n:2070521360955289764" />
                  <node concept="6wLe0" id="zl" role="lGtFl">
                    <property role="6wLej" value="2070521360955290666" />
                    <property role="6wLeW" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                  </node>
                </node>
                <node concept="3uibUv" id="zk" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="zg" role="3cqZAp">
              <node concept="3cpWsn" id="zm" role="3cpWs9">
                <property role="TrG5h" value="_info_12389875345" />
                <node concept="3uibUv" id="zn" role="1tU5fm">
                  <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                </node>
                <node concept="2ShNRf" id="zo" role="33vP2m">
                  <node concept="1pGfFk" id="zp" role="2ShVmc">
                    <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                    <node concept="37vLTw" id="zq" role="37wK5m">
                      <ref role="3cqZAo" node="zi" resolve="_nodeToCheck_1029348928467" />
                    </node>
                    <node concept="10Nm6u" id="zr" role="37wK5m" />
                    <node concept="Xl_RD" id="zs" role="37wK5m">
                      <property role="Xl_RC" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                    </node>
                    <node concept="Xl_RD" id="zt" role="37wK5m">
                      <property role="Xl_RC" value="2070521360955290666" />
                    </node>
                    <node concept="3cmrfG" id="zu" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="10Nm6u" id="zv" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="zh" role="3cqZAp">
              <node concept="2OqwBi" id="zw" role="3clFbG">
                <node concept="3VmV3z" id="zx" role="2Oq$k0">
                  <property role="3VnrPo" value="typeCheckingContext" />
                  <node concept="3uibUv" id="zz" role="3Vn4Tt">
                    <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                  </node>
                </node>
                <node concept="liA8E" id="zy" role="2OqNvi">
                  <ref role="37wK5l" to="u78q:~TypeCheckingContext.createEquation(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createEquation" />
                  <node concept="10QFUN" id="z$" role="37wK5m">
                    <uo k="s:originTrace" v="n:2070521360955290669" />
                    <node concept="3uibUv" id="zB" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="zC" role="10QFUP">
                      <uo k="s:originTrace" v="n:2070521360955289746" />
                      <node concept="3VmV3z" id="zD" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="zG" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="zE" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                        <node concept="3VmV3z" id="zH" role="37wK5m">
                          <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                          <node concept="3uibUv" id="zL" role="3Vn4Tt">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="zI" role="37wK5m">
                          <property role="Xl_RC" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="zJ" role="37wK5m">
                          <property role="Xl_RC" value="2070521360955289746" />
                        </node>
                        <node concept="3clFbT" id="zK" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                      <node concept="6wLe0" id="zF" role="lGtFl">
                        <property role="6wLej" value="2070521360955289746" />
                        <property role="6wLeW" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                      </node>
                    </node>
                  </node>
                  <node concept="10QFUN" id="z_" role="37wK5m">
                    <uo k="s:originTrace" v="n:2070521360955291031" />
                    <node concept="3uibUv" id="zM" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2pJPEk" id="zN" role="10QFUP">
                      <uo k="s:originTrace" v="n:2070521360955291027" />
                      <node concept="2pJPED" id="zO" role="2pJPEn">
                        <ref role="2pJxaS" to="tpee:g7uibYu" resolve="ClassifierType" />
                        <uo k="s:originTrace" v="n:479872435243152845" />
                        <node concept="2pIpSj" id="zP" role="2pJxcM">
                          <ref role="2pIpSl" to="tpee:g7uigIF" resolve="classifier" />
                          <uo k="s:originTrace" v="n:479872435243153018" />
                          <node concept="36bGnv" id="zQ" role="28nt2d">
                            <ref role="36bGnp" to="z1c3:~Project" resolve="Project" />
                            <uo k="s:originTrace" v="n:479872435243153342" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="zA" role="37wK5m">
                    <ref role="3cqZAo" node="zm" resolve="_info_12389875345" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="6wLe0" id="ze" role="lGtFl">
            <property role="6wLej" value="2070521360955290666" />
            <property role="6wLeW" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="z8" role="1B3o_S">
        <uo k="s:originTrace" v="n:2070521360955289534" />
      </node>
    </node>
    <node concept="3clFb_" id="yU" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:2070521360955289534" />
      <node concept="3bZ5Sz" id="zR" role="3clF45">
        <uo k="s:originTrace" v="n:2070521360955289534" />
      </node>
      <node concept="3clFbS" id="zS" role="3clF47">
        <uo k="s:originTrace" v="n:2070521360955289534" />
        <node concept="3cpWs6" id="zU" role="3cqZAp">
          <uo k="s:originTrace" v="n:2070521360955289534" />
          <node concept="35c_gC" id="zV" role="3cqZAk">
            <ref role="35c_gD" to="fb9u:qCQmZSaKbS" resolve="ProjectAccessExpression" />
            <uo k="s:originTrace" v="n:2070521360955289534" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="zT" role="1B3o_S">
        <uo k="s:originTrace" v="n:2070521360955289534" />
      </node>
    </node>
    <node concept="3clFb_" id="yV" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:2070521360955289534" />
      <node concept="37vLTG" id="zW" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:2070521360955289534" />
        <node concept="3Tqbb2" id="$0" role="1tU5fm">
          <uo k="s:originTrace" v="n:2070521360955289534" />
        </node>
      </node>
      <node concept="3clFbS" id="zX" role="3clF47">
        <uo k="s:originTrace" v="n:2070521360955289534" />
        <node concept="9aQIb" id="$1" role="3cqZAp">
          <uo k="s:originTrace" v="n:2070521360955289534" />
          <node concept="3clFbS" id="$2" role="9aQI4">
            <uo k="s:originTrace" v="n:2070521360955289534" />
            <node concept="3cpWs6" id="$3" role="3cqZAp">
              <uo k="s:originTrace" v="n:2070521360955289534" />
              <node concept="2ShNRf" id="$4" role="3cqZAk">
                <uo k="s:originTrace" v="n:2070521360955289534" />
                <node concept="1pGfFk" id="$5" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:2070521360955289534" />
                  <node concept="2OqwBi" id="$6" role="37wK5m">
                    <uo k="s:originTrace" v="n:2070521360955289534" />
                    <node concept="2OqwBi" id="$8" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:2070521360955289534" />
                      <node concept="liA8E" id="$a" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:2070521360955289534" />
                      </node>
                      <node concept="2JrnkZ" id="$b" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:2070521360955289534" />
                        <node concept="37vLTw" id="$c" role="2JrQYb">
                          <ref role="3cqZAo" node="zW" resolve="argument" />
                          <uo k="s:originTrace" v="n:2070521360955289534" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="$9" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:2070521360955289534" />
                      <node concept="1rXfSq" id="$d" role="37wK5m">
                        <ref role="37wK5l" node="yU" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:2070521360955289534" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="$7" role="37wK5m">
                    <uo k="s:originTrace" v="n:2070521360955289534" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="zY" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:2070521360955289534" />
      </node>
      <node concept="3Tm1VV" id="zZ" role="1B3o_S">
        <uo k="s:originTrace" v="n:2070521360955289534" />
      </node>
    </node>
    <node concept="3clFb_" id="yW" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:2070521360955289534" />
      <node concept="3clFbS" id="$e" role="3clF47">
        <uo k="s:originTrace" v="n:2070521360955289534" />
        <node concept="3cpWs6" id="$h" role="3cqZAp">
          <uo k="s:originTrace" v="n:2070521360955289534" />
          <node concept="3clFbT" id="$i" role="3cqZAk">
            <uo k="s:originTrace" v="n:2070521360955289534" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="$f" role="3clF45">
        <uo k="s:originTrace" v="n:2070521360955289534" />
      </node>
      <node concept="3Tm1VV" id="$g" role="1B3o_S">
        <uo k="s:originTrace" v="n:2070521360955289534" />
      </node>
    </node>
    <node concept="3uibUv" id="yX" role="EKbjA">
      <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:2070521360955289534" />
    </node>
    <node concept="3uibUv" id="yY" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractInferenceRule_Runtime" resolve="AbstractInferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:2070521360955289534" />
    </node>
    <node concept="3Tm1VV" id="yZ" role="1B3o_S">
      <uo k="s:originTrace" v="n:2070521360955289534" />
    </node>
  </node>
  <node concept="312cEu" id="$j">
    <property role="TrG5h" value="typeof_ReportConfigurationErrorStatement_InferenceRule" />
    <uo k="s:originTrace" v="n:6981317760235477739" />
    <node concept="3clFbW" id="$k" role="jymVt">
      <uo k="s:originTrace" v="n:6981317760235477739" />
      <node concept="3clFbS" id="$s" role="3clF47">
        <uo k="s:originTrace" v="n:6981317760235477739" />
      </node>
      <node concept="3Tm1VV" id="$t" role="1B3o_S">
        <uo k="s:originTrace" v="n:6981317760235477739" />
      </node>
      <node concept="3cqZAl" id="$u" role="3clF45">
        <uo k="s:originTrace" v="n:6981317760235477739" />
      </node>
    </node>
    <node concept="3clFb_" id="$l" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:6981317760235477739" />
      <node concept="3cqZAl" id="$v" role="3clF45">
        <uo k="s:originTrace" v="n:6981317760235477739" />
      </node>
      <node concept="37vLTG" id="$w" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="reportConfigurationErrorStatement" />
        <uo k="s:originTrace" v="n:6981317760235477739" />
        <node concept="3Tqbb2" id="$_" role="1tU5fm">
          <uo k="s:originTrace" v="n:6981317760235477739" />
        </node>
      </node>
      <node concept="37vLTG" id="$x" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:6981317760235477739" />
        <node concept="3uibUv" id="$A" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:6981317760235477739" />
        </node>
      </node>
      <node concept="37vLTG" id="$y" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:6981317760235477739" />
        <node concept="3uibUv" id="$B" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:6981317760235477739" />
        </node>
      </node>
      <node concept="3clFbS" id="$z" role="3clF47">
        <uo k="s:originTrace" v="n:6981317760235477740" />
        <node concept="9aQIb" id="$C" role="3cqZAp">
          <uo k="s:originTrace" v="n:6981317760235477741" />
          <node concept="3clFbS" id="$D" role="9aQI4">
            <node concept="3cpWs8" id="$F" role="3cqZAp">
              <node concept="3cpWsn" id="$I" role="3cpWs9">
                <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                <node concept="2OqwBi" id="$J" role="33vP2m">
                  <uo k="s:originTrace" v="n:6981317760235477745" />
                  <node concept="37vLTw" id="$L" role="2Oq$k0">
                    <ref role="3cqZAo" node="$w" resolve="reportConfigurationErrorStatement" />
                    <uo k="s:originTrace" v="n:6981317760235477746" />
                  </node>
                  <node concept="3TrEf2" id="$M" role="2OqNvi">
                    <ref role="3Tt5mk" to="fb9u:O$iR4J$g45" resolve="expression" />
                    <uo k="s:originTrace" v="n:6981317760235477747" />
                  </node>
                  <node concept="6wLe0" id="$N" role="lGtFl">
                    <property role="6wLej" value="6981317760235477741" />
                    <property role="6wLeW" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                  </node>
                </node>
                <node concept="3uibUv" id="$K" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="$G" role="3cqZAp">
              <node concept="3cpWsn" id="$O" role="3cpWs9">
                <property role="TrG5h" value="_info_12389875345" />
                <node concept="3uibUv" id="$P" role="1tU5fm">
                  <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                </node>
                <node concept="2ShNRf" id="$Q" role="33vP2m">
                  <node concept="1pGfFk" id="$R" role="2ShVmc">
                    <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                    <node concept="37vLTw" id="$S" role="37wK5m">
                      <ref role="3cqZAo" node="$I" resolve="_nodeToCheck_1029348928467" />
                    </node>
                    <node concept="10Nm6u" id="$T" role="37wK5m" />
                    <node concept="Xl_RD" id="$U" role="37wK5m">
                      <property role="Xl_RC" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                    </node>
                    <node concept="Xl_RD" id="$V" role="37wK5m">
                      <property role="Xl_RC" value="6981317760235477741" />
                    </node>
                    <node concept="3cmrfG" id="$W" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="10Nm6u" id="$X" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="$H" role="3cqZAp">
              <node concept="2OqwBi" id="$Y" role="3clFbG">
                <node concept="3VmV3z" id="$Z" role="2Oq$k0">
                  <property role="3VnrPo" value="typeCheckingContext" />
                  <node concept="3uibUv" id="_1" role="3Vn4Tt">
                    <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                  </node>
                </node>
                <node concept="liA8E" id="_0" role="2OqNvi">
                  <ref role="37wK5l" to="u78q:~TypeCheckingContext.createLessThanInequality(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,boolean,boolean,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createLessThanInequality" />
                  <node concept="10QFUN" id="_2" role="37wK5m">
                    <uo k="s:originTrace" v="n:6981317760235477743" />
                    <node concept="3uibUv" id="_7" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="_8" role="10QFUP">
                      <uo k="s:originTrace" v="n:6981317760235477744" />
                      <node concept="3VmV3z" id="_9" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="_c" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="_a" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                        <node concept="3VmV3z" id="_d" role="37wK5m">
                          <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                          <node concept="3uibUv" id="_h" role="3Vn4Tt">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="_e" role="37wK5m">
                          <property role="Xl_RC" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="_f" role="37wK5m">
                          <property role="Xl_RC" value="6981317760235477744" />
                        </node>
                        <node concept="3clFbT" id="_g" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                      <node concept="6wLe0" id="_b" role="lGtFl">
                        <property role="6wLej" value="6981317760235477744" />
                        <property role="6wLeW" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
                      </node>
                    </node>
                  </node>
                  <node concept="10QFUN" id="_3" role="37wK5m">
                    <uo k="s:originTrace" v="n:6981317760235477748" />
                    <node concept="3uibUv" id="_i" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2c44tf" id="_j" role="10QFUP">
                      <uo k="s:originTrace" v="n:6981317760235477749" />
                      <node concept="17QB3L" id="_k" role="2c44tc">
                        <uo k="s:originTrace" v="n:6981317760235477750" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbT" id="_4" role="37wK5m" />
                  <node concept="3clFbT" id="_5" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                  <node concept="37vLTw" id="_6" role="37wK5m">
                    <ref role="3cqZAo" node="$O" resolve="_info_12389875345" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="6wLe0" id="$E" role="lGtFl">
            <property role="6wLej" value="6981317760235477741" />
            <property role="6wLeW" value="r:e115237b-80f4-4ca3-87d6-2ac891492994(jetbrains.mps.execution.settings.typesystem)" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="$$" role="1B3o_S">
        <uo k="s:originTrace" v="n:6981317760235477739" />
      </node>
    </node>
    <node concept="3clFb_" id="$m" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:6981317760235477739" />
      <node concept="3bZ5Sz" id="_l" role="3clF45">
        <uo k="s:originTrace" v="n:6981317760235477739" />
      </node>
      <node concept="3clFbS" id="_m" role="3clF47">
        <uo k="s:originTrace" v="n:6981317760235477739" />
        <node concept="3cpWs6" id="_o" role="3cqZAp">
          <uo k="s:originTrace" v="n:6981317760235477739" />
          <node concept="35c_gC" id="_p" role="3cqZAk">
            <ref role="35c_gD" to="fb9u:O$iR4J$g43" resolve="ReportConfigurationErrorStatement" />
            <uo k="s:originTrace" v="n:6981317760235477739" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="_n" role="1B3o_S">
        <uo k="s:originTrace" v="n:6981317760235477739" />
      </node>
    </node>
    <node concept="3clFb_" id="$n" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:6981317760235477739" />
      <node concept="37vLTG" id="_q" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:6981317760235477739" />
        <node concept="3Tqbb2" id="_u" role="1tU5fm">
          <uo k="s:originTrace" v="n:6981317760235477739" />
        </node>
      </node>
      <node concept="3clFbS" id="_r" role="3clF47">
        <uo k="s:originTrace" v="n:6981317760235477739" />
        <node concept="9aQIb" id="_v" role="3cqZAp">
          <uo k="s:originTrace" v="n:6981317760235477739" />
          <node concept="3clFbS" id="_w" role="9aQI4">
            <uo k="s:originTrace" v="n:6981317760235477739" />
            <node concept="3cpWs6" id="_x" role="3cqZAp">
              <uo k="s:originTrace" v="n:6981317760235477739" />
              <node concept="2ShNRf" id="_y" role="3cqZAk">
                <uo k="s:originTrace" v="n:6981317760235477739" />
                <node concept="1pGfFk" id="_z" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:6981317760235477739" />
                  <node concept="2OqwBi" id="_$" role="37wK5m">
                    <uo k="s:originTrace" v="n:6981317760235477739" />
                    <node concept="2OqwBi" id="_A" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:6981317760235477739" />
                      <node concept="liA8E" id="_C" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:6981317760235477739" />
                      </node>
                      <node concept="2JrnkZ" id="_D" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:6981317760235477739" />
                        <node concept="37vLTw" id="_E" role="2JrQYb">
                          <ref role="3cqZAo" node="_q" resolve="argument" />
                          <uo k="s:originTrace" v="n:6981317760235477739" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="_B" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:6981317760235477739" />
                      <node concept="1rXfSq" id="_F" role="37wK5m">
                        <ref role="37wK5l" node="$m" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:6981317760235477739" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="__" role="37wK5m">
                    <uo k="s:originTrace" v="n:6981317760235477739" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="_s" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:6981317760235477739" />
      </node>
      <node concept="3Tm1VV" id="_t" role="1B3o_S">
        <uo k="s:originTrace" v="n:6981317760235477739" />
      </node>
    </node>
    <node concept="3clFb_" id="$o" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:6981317760235477739" />
      <node concept="3clFbS" id="_G" role="3clF47">
        <uo k="s:originTrace" v="n:6981317760235477739" />
        <node concept="3cpWs6" id="_J" role="3cqZAp">
          <uo k="s:originTrace" v="n:6981317760235477739" />
          <node concept="3clFbT" id="_K" role="3cqZAk">
            <uo k="s:originTrace" v="n:6981317760235477739" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="_H" role="3clF45">
        <uo k="s:originTrace" v="n:6981317760235477739" />
      </node>
      <node concept="3Tm1VV" id="_I" role="1B3o_S">
        <uo k="s:originTrace" v="n:6981317760235477739" />
      </node>
    </node>
    <node concept="3uibUv" id="$p" role="EKbjA">
      <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:6981317760235477739" />
    </node>
    <node concept="3uibUv" id="$q" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractInferenceRule_Runtime" resolve="AbstractInferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:6981317760235477739" />
    </node>
    <node concept="3Tm1VV" id="$r" role="1B3o_S">
      <uo k="s:originTrace" v="n:6981317760235477739" />
    </node>
  </node>
</model>

