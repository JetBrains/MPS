<?xml version="1.0" encoding="UTF-8"?>
<model ref="00000000-0000-4000-5f02-5beb5f025beb/i:f46bea8(checkpoints/jetbrains.mps.lang.resources.typesystem@descriptorclasses)">
  <persistence version="9" />
  <attribute name="checkpoint" value="DescriptorClasses" />
  <attribute name="generation-plan" value="AspectCPS" />
  <attribute name="user-objects" value="true" />
  <languages />
  <imports>
    <import index="ghfj" ref="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="3767" ref="r:7f24d329-a444-4288-af92-f8ef91dfd241(jetbrains.mps.lang.resources.behavior)" />
    <import index="1oap" ref="r:03d44d4c-3d65-461c-9085-0f48e9569e59(jetbrains.mps.lang.resources.structure)" />
    <import index="2gg1" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.errors(MPS.Core/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="zavc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.errors.messageTargets(MPS.Core/)" />
    <import index="zf81" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.net(JDK/)" />
    <import index="tpd5" ref="r:00000000-0000-4000-0000-011c895902b5(jetbrains.mps.lang.typesystem.dependencies)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="ze1i" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.runtime(MPS.Core/)" />
    <import index="qurh" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.lang.typesystem.runtime(MPS.Core/)" />
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
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
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
      <concept id="4952749571008284462" name="jetbrains.mps.baseLanguage.structure.CatchVariable" flags="ng" index="XOnhg" />
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
      <concept id="1225271369338" name="jetbrains.mps.baseLanguage.structure.IsEmptyOperation" flags="nn" index="17RlXB" />
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
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
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
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
      <concept id="3093926081414150598" name="jetbrains.mps.baseLanguage.structure.MultipleCatchClause" flags="ng" index="3uVAMA">
        <child id="8276990574895933173" name="catchBody" index="1zc67A" />
        <child id="8276990574895933172" name="throwable" index="1zc67B" />
      </concept>
      <concept id="1081855346303" name="jetbrains.mps.baseLanguage.structure.BreakStatement" flags="nn" index="3zACq4" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="nn" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
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
      <concept id="1199542442495" name="jetbrains.mps.baseLanguage.closures.structure.FunctionType" flags="in" index="1ajhzC">
        <child id="1199542457201" name="resultType" index="1ajl9A" />
      </concept>
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
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="767145758118872828" name="jetbrains.mps.lang.actions.structure.NF_Node_ReplaceWithNewOperation" flags="nn" index="2DeJnW" />
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
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171323947159" name="jetbrains.mps.lang.smodel.structure.Model_NodesOperation" flags="nn" index="2SmgA7">
        <child id="1758937410080001570" name="conceptArgument" index="1dBWTz" />
      </concept>
      <concept id="2644386474302386080" name="jetbrains.mps.lang.smodel.structure.PropertyIdRefExpression" flags="nn" index="355D3s">
        <reference id="2644386474302386081" name="conceptDeclaration" index="355D3t" />
        <reference id="2644386474302386082" name="propertyDeclaration" index="355D3u" />
      </concept>
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1139867745658" name="jetbrains.mps.lang.smodel.structure.Node_ReplaceWithNewOperation" flags="nn" index="1_qnLN">
        <reference id="1139867957129" name="concept" index="1_rbq0" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
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
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1226516258405" name="jetbrains.mps.baseLanguage.collections.structure.HashSetCreator" flags="nn" index="2i4dXS" />
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1235566831861" name="jetbrains.mps.baseLanguage.collections.structure.AllOperation" flags="nn" index="2HxqBE" />
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
    </language>
  </registry>
  <node concept="39dXUE" id="0">
    <node concept="39e2AJ" id="1" role="39e2AI">
      <property role="39e3Y2" value="classForRule" />
      <node concept="39e2AG" id="6" role="39e3Y0">
        <ref role="39e2AK" to="ghfj:1bJ7n0ppNCm" resolve="check_FileIcon" />
        <node concept="385nmt" id="i" role="385vvn">
          <property role="385vuF" value="check_FileIcon" />
          <node concept="3u3nmq" id="k" role="385v07">
            <property role="3u3nmv" value="1364341579416287766" />
          </node>
        </node>
        <node concept="39e2AT" id="j" role="39e2AY">
          <ref role="39e2AS" node="6Z" resolve="check_FileIcon_NonTypesystemRule" />
        </node>
      </node>
      <node concept="39e2AG" id="7" role="39e3Y0">
        <ref role="39e2AK" to="ghfj:4voYo4rtbTL" resolve="check_HelpURL" />
        <node concept="385nmt" id="l" role="385vvn">
          <property role="385vuF" value="check_HelpURL" />
          <node concept="3u3nmq" id="n" role="385v07">
            <property role="3u3nmv" value="5177162104569118321" />
          </node>
        </node>
        <node concept="39e2AT" id="m" role="39e2AY">
          <ref role="39e2AS" node="8X" resolve="check_HelpURL_NonTypesystemRule" />
        </node>
      </node>
      <node concept="39e2AG" id="8" role="39e3Y0">
        <ref role="39e2AK" to="ghfj:6cky_RDwnyo" resolve="check_JBColorLiteral" />
        <node concept="385nmt" id="o" role="385vvn">
          <property role="385vuF" value="check_JBColorLiteral" />
          <node concept="3u3nmq" id="q" role="385v07">
            <property role="3u3nmv" value="7139483445243246744" />
          </node>
        </node>
        <node concept="39e2AT" id="p" role="39e2AY">
          <ref role="39e2AS" node="a7" resolve="check_JBColorLiteral_NonTypesystemRule" />
        </node>
      </node>
      <node concept="39e2AG" id="9" role="39e3Y0">
        <ref role="39e2AK" to="ghfj:1BguvjG44f3" resolve="check_TextIcon" />
        <node concept="385nmt" id="r" role="385vvn">
          <property role="385vuF" value="check_TextIcon" />
          <node concept="3u3nmq" id="t" role="385v07">
            <property role="3u3nmv" value="1860120738943484867" />
          </node>
        </node>
        <node concept="39e2AT" id="s" role="39e2AY">
          <ref role="39e2AS" node="bB" resolve="check_TextIcon_NonTypesystemRule" />
        </node>
      </node>
      <node concept="39e2AG" id="a" role="39e3Y0">
        <ref role="39e2AK" to="ghfj:46nPloeqDUW" resolve="check_URLLiteral" />
        <node concept="385nmt" id="u" role="385vvn">
          <property role="385vuF" value="check_URLLiteral" />
          <node concept="3u3nmq" id="w" role="385v07">
            <property role="3u3nmv" value="4726480899534397116" />
          </node>
        </node>
        <node concept="39e2AT" id="v" role="39e2AY">
          <ref role="39e2AS" node="er" resolve="check_URLLiteral_NonTypesystemRule" />
        </node>
      </node>
      <node concept="39e2AG" id="b" role="39e3Y0">
        <ref role="39e2AK" to="ghfj:36aT086WPIo" resolve="typeof_BaseURLFunction" />
        <node concept="385nmt" id="x" role="385vvn">
          <property role="385vuF" value="typeof_BaseURLFunction" />
          <node concept="3u3nmq" id="z" role="385v07">
            <property role="3u3nmv" value="3569916352002218904" />
          </node>
        </node>
        <node concept="39e2AT" id="y" role="39e2AY">
          <ref role="39e2AS" node="fs" resolve="typeof_BaseURLFunction_InferenceRule" />
        </node>
      </node>
      <node concept="39e2AG" id="c" role="39e3Y0">
        <ref role="39e2AK" to="ghfj:49FXMLkTX5a" resolve="typeof_ConceptIconResourceExpression" />
        <node concept="385nmt" id="$" role="385vvn">
          <property role="385vuF" value="typeof_ConceptIconResourceExpression" />
          <node concept="3u3nmq" id="A" role="385v07">
            <property role="3u3nmv" value="4786190798786384202" />
          </node>
        </node>
        <node concept="39e2AT" id="_" role="39e2AY">
          <ref role="39e2AS" node="h2" resolve="typeof_ConceptIconResourceExpression_InferenceRule" />
        </node>
      </node>
      <node concept="39e2AG" id="d" role="39e3Y0">
        <ref role="39e2AK" to="ghfj:3AneBQArpUO" resolve="typeof_ConstantFieldIcon" />
        <node concept="385nmt" id="B" role="385vvn">
          <property role="385vuF" value="typeof_ConstantFieldIcon" />
          <node concept="3u3nmq" id="D" role="385v07">
            <property role="3u3nmv" value="4149849892982726324" />
          </node>
        </node>
        <node concept="39e2AT" id="C" role="39e2AY">
          <ref role="39e2AS" node="jg" resolve="typeof_ConstantFieldIcon_InferenceRule" />
        </node>
      </node>
      <node concept="39e2AG" id="e" role="39e3Y0">
        <ref role="39e2AK" to="ghfj:7tcRu9qvLtH" resolve="typeof_FactoryMethodIcon" />
        <node concept="385nmt" id="E" role="385vvn">
          <property role="385vuF" value="typeof_FactoryMethodIcon" />
          <node concept="3u3nmq" id="G" role="385v07">
            <property role="3u3nmv" value="8596489752994060141" />
          </node>
        </node>
        <node concept="39e2AT" id="F" role="39e2AY">
          <ref role="39e2AS" node="kI" resolve="typeof_FactoryMethodIcon_InferenceRule" />
        </node>
      </node>
      <node concept="39e2AG" id="f" role="39e3Y0">
        <ref role="39e2AK" to="ghfj:7Mb2akaesvL" resolve="typeof_IconExpression" />
        <node concept="385nmt" id="H" role="385vvn">
          <property role="385vuF" value="typeof_IconExpression" />
          <node concept="3u3nmq" id="J" role="385v07">
            <property role="3u3nmv" value="8974276187400030193" />
          </node>
        </node>
        <node concept="39e2AT" id="I" role="39e2AY">
          <ref role="39e2AS" node="mc" resolve="typeof_IconExpression_InferenceRule" />
        </node>
      </node>
      <node concept="39e2AG" id="g" role="39e3Y0">
        <ref role="39e2AK" to="ghfj:5bVxHVEur_I" resolve="typeof_IconResourceExpression" />
        <node concept="385nmt" id="K" role="385vvn">
          <property role="385vuF" value="typeof_IconResourceExpression" />
          <node concept="3u3nmq" id="M" role="385v07">
            <property role="3u3nmv" value="5979521222239172974" />
          </node>
        </node>
        <node concept="39e2AT" id="L" role="39e2AY">
          <ref role="39e2AS" node="nA" resolve="typeof_IconResourceExpression_InferenceRule" />
        </node>
      </node>
      <node concept="39e2AG" id="h" role="39e3Y0">
        <ref role="39e2AK" to="ghfj:49FXMLkTWtB" resolve="typeof_NodeIconResourceExpression" />
        <node concept="385nmt" id="N" role="385vvn">
          <property role="385vuF" value="typeof_NodeIconResourceExpression" />
          <node concept="3u3nmq" id="P" role="385v07">
            <property role="3u3nmv" value="4786190798786381671" />
          </node>
        </node>
        <node concept="39e2AT" id="O" role="39e2AY">
          <ref role="39e2AS" node="p0" resolve="typeof_NodeIconResourceExpression_InferenceRule" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="2" role="39e2AI">
      <property role="39e3Y2" value="isApplicableMethod" />
      <node concept="39e2AG" id="Q" role="39e3Y0">
        <ref role="39e2AK" to="ghfj:1bJ7n0ppNCm" resolve="check_FileIcon" />
        <node concept="385nmt" id="12" role="385vvn">
          <property role="385vuF" value="check_FileIcon" />
          <node concept="3u3nmq" id="14" role="385v07">
            <property role="3u3nmv" value="1364341579416287766" />
          </node>
        </node>
        <node concept="39e2AT" id="13" role="39e2AY">
          <ref role="39e2AS" node="73" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="R" role="39e3Y0">
        <ref role="39e2AK" to="ghfj:4voYo4rtbTL" resolve="check_HelpURL" />
        <node concept="385nmt" id="15" role="385vvn">
          <property role="385vuF" value="check_HelpURL" />
          <node concept="3u3nmq" id="17" role="385v07">
            <property role="3u3nmv" value="5177162104569118321" />
          </node>
        </node>
        <node concept="39e2AT" id="16" role="39e2AY">
          <ref role="39e2AS" node="91" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="S" role="39e3Y0">
        <ref role="39e2AK" to="ghfj:6cky_RDwnyo" resolve="check_JBColorLiteral" />
        <node concept="385nmt" id="18" role="385vvn">
          <property role="385vuF" value="check_JBColorLiteral" />
          <node concept="3u3nmq" id="1a" role="385v07">
            <property role="3u3nmv" value="7139483445243246744" />
          </node>
        </node>
        <node concept="39e2AT" id="19" role="39e2AY">
          <ref role="39e2AS" node="ab" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="T" role="39e3Y0">
        <ref role="39e2AK" to="ghfj:1BguvjG44f3" resolve="check_TextIcon" />
        <node concept="385nmt" id="1b" role="385vvn">
          <property role="385vuF" value="check_TextIcon" />
          <node concept="3u3nmq" id="1d" role="385v07">
            <property role="3u3nmv" value="1860120738943484867" />
          </node>
        </node>
        <node concept="39e2AT" id="1c" role="39e2AY">
          <ref role="39e2AS" node="bF" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="U" role="39e3Y0">
        <ref role="39e2AK" to="ghfj:46nPloeqDUW" resolve="check_URLLiteral" />
        <node concept="385nmt" id="1e" role="385vvn">
          <property role="385vuF" value="check_URLLiteral" />
          <node concept="3u3nmq" id="1g" role="385v07">
            <property role="3u3nmv" value="4726480899534397116" />
          </node>
        </node>
        <node concept="39e2AT" id="1f" role="39e2AY">
          <ref role="39e2AS" node="ev" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="V" role="39e3Y0">
        <ref role="39e2AK" to="ghfj:36aT086WPIo" resolve="typeof_BaseURLFunction" />
        <node concept="385nmt" id="1h" role="385vvn">
          <property role="385vuF" value="typeof_BaseURLFunction" />
          <node concept="3u3nmq" id="1j" role="385v07">
            <property role="3u3nmv" value="3569916352002218904" />
          </node>
        </node>
        <node concept="39e2AT" id="1i" role="39e2AY">
          <ref role="39e2AS" node="fw" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="W" role="39e3Y0">
        <ref role="39e2AK" to="ghfj:49FXMLkTX5a" resolve="typeof_ConceptIconResourceExpression" />
        <node concept="385nmt" id="1k" role="385vvn">
          <property role="385vuF" value="typeof_ConceptIconResourceExpression" />
          <node concept="3u3nmq" id="1m" role="385v07">
            <property role="3u3nmv" value="4786190798786384202" />
          </node>
        </node>
        <node concept="39e2AT" id="1l" role="39e2AY">
          <ref role="39e2AS" node="h6" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="X" role="39e3Y0">
        <ref role="39e2AK" to="ghfj:3AneBQArpUO" resolve="typeof_ConstantFieldIcon" />
        <node concept="385nmt" id="1n" role="385vvn">
          <property role="385vuF" value="typeof_ConstantFieldIcon" />
          <node concept="3u3nmq" id="1p" role="385v07">
            <property role="3u3nmv" value="4149849892982726324" />
          </node>
        </node>
        <node concept="39e2AT" id="1o" role="39e2AY">
          <ref role="39e2AS" node="jk" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="Y" role="39e3Y0">
        <ref role="39e2AK" to="ghfj:7tcRu9qvLtH" resolve="typeof_FactoryMethodIcon" />
        <node concept="385nmt" id="1q" role="385vvn">
          <property role="385vuF" value="typeof_FactoryMethodIcon" />
          <node concept="3u3nmq" id="1s" role="385v07">
            <property role="3u3nmv" value="8596489752994060141" />
          </node>
        </node>
        <node concept="39e2AT" id="1r" role="39e2AY">
          <ref role="39e2AS" node="kM" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="Z" role="39e3Y0">
        <ref role="39e2AK" to="ghfj:7Mb2akaesvL" resolve="typeof_IconExpression" />
        <node concept="385nmt" id="1t" role="385vvn">
          <property role="385vuF" value="typeof_IconExpression" />
          <node concept="3u3nmq" id="1v" role="385v07">
            <property role="3u3nmv" value="8974276187400030193" />
          </node>
        </node>
        <node concept="39e2AT" id="1u" role="39e2AY">
          <ref role="39e2AS" node="mg" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="10" role="39e3Y0">
        <ref role="39e2AK" to="ghfj:5bVxHVEur_I" resolve="typeof_IconResourceExpression" />
        <node concept="385nmt" id="1w" role="385vvn">
          <property role="385vuF" value="typeof_IconResourceExpression" />
          <node concept="3u3nmq" id="1y" role="385v07">
            <property role="3u3nmv" value="5979521222239172974" />
          </node>
        </node>
        <node concept="39e2AT" id="1x" role="39e2AY">
          <ref role="39e2AS" node="nE" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="11" role="39e3Y0">
        <ref role="39e2AK" to="ghfj:49FXMLkTWtB" resolve="typeof_NodeIconResourceExpression" />
        <node concept="385nmt" id="1z" role="385vvn">
          <property role="385vuF" value="typeof_NodeIconResourceExpression" />
          <node concept="3u3nmq" id="1_" role="385v07">
            <property role="3u3nmv" value="4786190798786381671" />
          </node>
        </node>
        <node concept="39e2AT" id="1$" role="39e2AY">
          <ref role="39e2AS" node="p4" resolve="isApplicableAndPattern" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="3" role="39e2AI">
      <property role="39e3Y2" value="mainMethodForRule" />
      <node concept="39e2AG" id="1A" role="39e3Y0">
        <ref role="39e2AK" to="ghfj:1bJ7n0ppNCm" resolve="check_FileIcon" />
        <node concept="385nmt" id="1M" role="385vvn">
          <property role="385vuF" value="check_FileIcon" />
          <node concept="3u3nmq" id="1O" role="385v07">
            <property role="3u3nmv" value="1364341579416287766" />
          </node>
        </node>
        <node concept="39e2AT" id="1N" role="39e2AY">
          <ref role="39e2AS" node="71" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="1B" role="39e3Y0">
        <ref role="39e2AK" to="ghfj:4voYo4rtbTL" resolve="check_HelpURL" />
        <node concept="385nmt" id="1P" role="385vvn">
          <property role="385vuF" value="check_HelpURL" />
          <node concept="3u3nmq" id="1R" role="385v07">
            <property role="3u3nmv" value="5177162104569118321" />
          </node>
        </node>
        <node concept="39e2AT" id="1Q" role="39e2AY">
          <ref role="39e2AS" node="8Z" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="1C" role="39e3Y0">
        <ref role="39e2AK" to="ghfj:6cky_RDwnyo" resolve="check_JBColorLiteral" />
        <node concept="385nmt" id="1S" role="385vvn">
          <property role="385vuF" value="check_JBColorLiteral" />
          <node concept="3u3nmq" id="1U" role="385v07">
            <property role="3u3nmv" value="7139483445243246744" />
          </node>
        </node>
        <node concept="39e2AT" id="1T" role="39e2AY">
          <ref role="39e2AS" node="a9" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="1D" role="39e3Y0">
        <ref role="39e2AK" to="ghfj:1BguvjG44f3" resolve="check_TextIcon" />
        <node concept="385nmt" id="1V" role="385vvn">
          <property role="385vuF" value="check_TextIcon" />
          <node concept="3u3nmq" id="1X" role="385v07">
            <property role="3u3nmv" value="1860120738943484867" />
          </node>
        </node>
        <node concept="39e2AT" id="1W" role="39e2AY">
          <ref role="39e2AS" node="bD" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="1E" role="39e3Y0">
        <ref role="39e2AK" to="ghfj:46nPloeqDUW" resolve="check_URLLiteral" />
        <node concept="385nmt" id="1Y" role="385vvn">
          <property role="385vuF" value="check_URLLiteral" />
          <node concept="3u3nmq" id="20" role="385v07">
            <property role="3u3nmv" value="4726480899534397116" />
          </node>
        </node>
        <node concept="39e2AT" id="1Z" role="39e2AY">
          <ref role="39e2AS" node="et" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="1F" role="39e3Y0">
        <ref role="39e2AK" to="ghfj:36aT086WPIo" resolve="typeof_BaseURLFunction" />
        <node concept="385nmt" id="21" role="385vvn">
          <property role="385vuF" value="typeof_BaseURLFunction" />
          <node concept="3u3nmq" id="23" role="385v07">
            <property role="3u3nmv" value="3569916352002218904" />
          </node>
        </node>
        <node concept="39e2AT" id="22" role="39e2AY">
          <ref role="39e2AS" node="fu" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="1G" role="39e3Y0">
        <ref role="39e2AK" to="ghfj:49FXMLkTX5a" resolve="typeof_ConceptIconResourceExpression" />
        <node concept="385nmt" id="24" role="385vvn">
          <property role="385vuF" value="typeof_ConceptIconResourceExpression" />
          <node concept="3u3nmq" id="26" role="385v07">
            <property role="3u3nmv" value="4786190798786384202" />
          </node>
        </node>
        <node concept="39e2AT" id="25" role="39e2AY">
          <ref role="39e2AS" node="h4" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="1H" role="39e3Y0">
        <ref role="39e2AK" to="ghfj:3AneBQArpUO" resolve="typeof_ConstantFieldIcon" />
        <node concept="385nmt" id="27" role="385vvn">
          <property role="385vuF" value="typeof_ConstantFieldIcon" />
          <node concept="3u3nmq" id="29" role="385v07">
            <property role="3u3nmv" value="4149849892982726324" />
          </node>
        </node>
        <node concept="39e2AT" id="28" role="39e2AY">
          <ref role="39e2AS" node="ji" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="1I" role="39e3Y0">
        <ref role="39e2AK" to="ghfj:7tcRu9qvLtH" resolve="typeof_FactoryMethodIcon" />
        <node concept="385nmt" id="2a" role="385vvn">
          <property role="385vuF" value="typeof_FactoryMethodIcon" />
          <node concept="3u3nmq" id="2c" role="385v07">
            <property role="3u3nmv" value="8596489752994060141" />
          </node>
        </node>
        <node concept="39e2AT" id="2b" role="39e2AY">
          <ref role="39e2AS" node="kK" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="1J" role="39e3Y0">
        <ref role="39e2AK" to="ghfj:7Mb2akaesvL" resolve="typeof_IconExpression" />
        <node concept="385nmt" id="2d" role="385vvn">
          <property role="385vuF" value="typeof_IconExpression" />
          <node concept="3u3nmq" id="2f" role="385v07">
            <property role="3u3nmv" value="8974276187400030193" />
          </node>
        </node>
        <node concept="39e2AT" id="2e" role="39e2AY">
          <ref role="39e2AS" node="me" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="1K" role="39e3Y0">
        <ref role="39e2AK" to="ghfj:5bVxHVEur_I" resolve="typeof_IconResourceExpression" />
        <node concept="385nmt" id="2g" role="385vvn">
          <property role="385vuF" value="typeof_IconResourceExpression" />
          <node concept="3u3nmq" id="2i" role="385v07">
            <property role="3u3nmv" value="5979521222239172974" />
          </node>
        </node>
        <node concept="39e2AT" id="2h" role="39e2AY">
          <ref role="39e2AS" node="nC" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="1L" role="39e3Y0">
        <ref role="39e2AK" to="ghfj:49FXMLkTWtB" resolve="typeof_NodeIconResourceExpression" />
        <node concept="385nmt" id="2j" role="385vvn">
          <property role="385vuF" value="typeof_NodeIconResourceExpression" />
          <node concept="3u3nmq" id="2l" role="385v07">
            <property role="3u3nmv" value="4786190798786381671" />
          </node>
        </node>
        <node concept="39e2AT" id="2k" role="39e2AY">
          <ref role="39e2AS" node="p2" resolve="applyRule" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="4" role="39e2AI">
      <property role="39e3Y2" value="quickFix" />
      <node concept="39e2AG" id="2m" role="39e3Y0">
        <ref role="39e2AK" to="ghfj:6cky_RDwpgo" resolve="ReplaceUnneededJBColorLiteral" />
        <node concept="385nmt" id="2n" role="385vvn">
          <property role="385vuF" value="ReplaceUnneededJBColorLiteral" />
          <node concept="3u3nmq" id="2p" role="385v07">
            <property role="3u3nmv" value="7139483445243253784" />
          </node>
        </node>
        <node concept="39e2AT" id="2o" role="39e2AY">
          <ref role="39e2AS" node="2s" resolve="ReplaceUnneededJBColorLiteral_QuickFix" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="5" role="39e2AI">
      <property role="39e3Y2" value="descriptorClass" />
      <node concept="39e2AG" id="2q" role="39e3Y0">
        <property role="2mV_xN" value="true" />
        <node concept="39e2AT" id="2r" role="39e2AY">
          <ref role="39e2AS" node="2V" resolve="TypesystemDescriptor" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2s">
    <property role="3GE5qa" value="icons.descriptors.text" />
    <property role="TrG5h" value="ReplaceUnneededJBColorLiteral_QuickFix" />
    <uo k="s:originTrace" v="n:7139483445243253784" />
    <node concept="3clFbW" id="2t" role="jymVt">
      <uo k="s:originTrace" v="n:7139483445243253784" />
      <node concept="3clFbS" id="2z" role="3clF47">
        <uo k="s:originTrace" v="n:7139483445243253784" />
        <node concept="XkiVB" id="2A" role="3cqZAp">
          <ref role="37wK5l" to="2gg1:~QuickFix_Runtime.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="QuickFix_Runtime" />
          <uo k="s:originTrace" v="n:7139483445243253784" />
          <node concept="2ShNRf" id="2B" role="37wK5m">
            <uo k="s:originTrace" v="n:7139483445243253784" />
            <node concept="1pGfFk" id="2C" role="2ShVmc">
              <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
              <uo k="s:originTrace" v="n:7139483445243253784" />
              <node concept="Xl_RD" id="2D" role="37wK5m">
                <property role="Xl_RC" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
                <uo k="s:originTrace" v="n:7139483445243253784" />
              </node>
              <node concept="Xl_RD" id="2E" role="37wK5m">
                <property role="Xl_RC" value="7139483445243253784" />
                <uo k="s:originTrace" v="n:7139483445243253784" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="2$" role="3clF45">
        <uo k="s:originTrace" v="n:7139483445243253784" />
      </node>
      <node concept="3Tm1VV" id="2_" role="1B3o_S">
        <uo k="s:originTrace" v="n:7139483445243253784" />
      </node>
    </node>
    <node concept="3clFb_" id="2u" role="jymVt">
      <property role="TrG5h" value="getDescription" />
      <uo k="s:originTrace" v="n:7139483445243253784" />
      <node concept="3Tm1VV" id="2F" role="1B3o_S">
        <uo k="s:originTrace" v="n:7139483445243253784" />
      </node>
      <node concept="3clFbS" id="2G" role="3clF47">
        <uo k="s:originTrace" v="n:7139483445243253812" />
        <node concept="3clFbF" id="2J" role="3cqZAp">
          <uo k="s:originTrace" v="n:7139483445243254226" />
          <node concept="Xl_RD" id="2K" role="3clFbG">
            <property role="Xl_RC" value="Replace with Single-Color Literal" />
            <uo k="s:originTrace" v="n:7139483445243254225" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2H" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:7139483445243253784" />
        <node concept="3uibUv" id="2L" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:7139483445243253784" />
        </node>
      </node>
      <node concept="17QB3L" id="2I" role="3clF45">
        <uo k="s:originTrace" v="n:7139483445243253784" />
      </node>
    </node>
    <node concept="3clFb_" id="2v" role="jymVt">
      <property role="TrG5h" value="execute" />
      <uo k="s:originTrace" v="n:7139483445243253784" />
      <node concept="3clFbS" id="2M" role="3clF47">
        <uo k="s:originTrace" v="n:7139483445243253786" />
        <node concept="3clFbF" id="2Q" role="3cqZAp">
          <uo k="s:originTrace" v="n:7139483445243254646" />
          <node concept="2OqwBi" id="2R" role="3clFbG">
            <uo k="s:originTrace" v="n:7139483445243255200" />
            <node concept="Q6c8r" id="2S" role="2Oq$k0">
              <uo k="s:originTrace" v="n:7139483445243254645" />
            </node>
            <node concept="2DeJnW" id="2T" role="2OqNvi">
              <ref role="1_rbq0" to="1oap:1BguvjG4kJt" resolve="ColorLiteral" />
              <uo k="s:originTrace" v="n:7139483445243255853" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="2N" role="3clF45">
        <uo k="s:originTrace" v="n:7139483445243253784" />
      </node>
      <node concept="3Tm1VV" id="2O" role="1B3o_S">
        <uo k="s:originTrace" v="n:7139483445243253784" />
      </node>
      <node concept="37vLTG" id="2P" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:7139483445243253784" />
        <node concept="3uibUv" id="2U" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:7139483445243253784" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="2w" role="1B3o_S">
      <uo k="s:originTrace" v="n:7139483445243253784" />
    </node>
    <node concept="3uibUv" id="2x" role="1zkMxy">
      <ref role="3uigEE" to="2gg1:~QuickFix_Runtime" resolve="QuickFix_Runtime" />
      <uo k="s:originTrace" v="n:7139483445243253784" />
    </node>
    <node concept="6wLe0" id="2y" role="lGtFl">
      <property role="6wLej" value="7139483445243253784" />
      <property role="6wLeW" value="jetbrains.mps.lang.resources.typesystem" />
      <uo k="s:originTrace" v="n:7139483445243253784" />
    </node>
  </node>
  <node concept="312cEu" id="2V">
    <property role="TrG5h" value="TypesystemDescriptor" />
    <node concept="3clFbW" id="2W" role="jymVt">
      <node concept="3clFbS" id="2Z" role="3clF47">
        <node concept="9aQIb" id="32" role="3cqZAp">
          <node concept="3clFbS" id="3e" role="9aQI4">
            <node concept="3cpWs8" id="3f" role="3cqZAp">
              <node concept="3cpWsn" id="3h" role="3cpWs9">
                <property role="TrG5h" value="inferenceRule" />
                <node concept="2ShNRf" id="3i" role="33vP2m">
                  <node concept="1pGfFk" id="3k" role="2ShVmc">
                    <ref role="37wK5l" node="ft" resolve="typeof_BaseURLFunction_InferenceRule" />
                  </node>
                </node>
                <node concept="3uibUv" id="3j" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3g" role="3cqZAp">
              <node concept="2OqwBi" id="3l" role="3clFbG">
                <node concept="liA8E" id="3m" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="3o" role="37wK5m">
                    <ref role="3cqZAo" node="3h" resolve="inferenceRule" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3n" role="2Oq$k0">
                  <node concept="Xjq3P" id="3p" role="2Oq$k0" />
                  <node concept="2OwXpG" id="3q" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myInferenceRules" resolve="myInferenceRules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="33" role="3cqZAp">
          <node concept="3clFbS" id="3r" role="9aQI4">
            <node concept="3cpWs8" id="3s" role="3cqZAp">
              <node concept="3cpWsn" id="3u" role="3cpWs9">
                <property role="TrG5h" value="inferenceRule" />
                <node concept="2ShNRf" id="3v" role="33vP2m">
                  <node concept="1pGfFk" id="3x" role="2ShVmc">
                    <ref role="37wK5l" node="h3" resolve="typeof_ConceptIconResourceExpression_InferenceRule" />
                  </node>
                </node>
                <node concept="3uibUv" id="3w" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3t" role="3cqZAp">
              <node concept="2OqwBi" id="3y" role="3clFbG">
                <node concept="liA8E" id="3z" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="3_" role="37wK5m">
                    <ref role="3cqZAo" node="3u" resolve="inferenceRule" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3$" role="2Oq$k0">
                  <node concept="Xjq3P" id="3A" role="2Oq$k0" />
                  <node concept="2OwXpG" id="3B" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myInferenceRules" resolve="myInferenceRules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="34" role="3cqZAp">
          <node concept="3clFbS" id="3C" role="9aQI4">
            <node concept="3cpWs8" id="3D" role="3cqZAp">
              <node concept="3cpWsn" id="3F" role="3cpWs9">
                <property role="TrG5h" value="inferenceRule" />
                <node concept="2ShNRf" id="3G" role="33vP2m">
                  <node concept="1pGfFk" id="3I" role="2ShVmc">
                    <ref role="37wK5l" node="jh" resolve="typeof_ConstantFieldIcon_InferenceRule" />
                  </node>
                </node>
                <node concept="3uibUv" id="3H" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3E" role="3cqZAp">
              <node concept="2OqwBi" id="3J" role="3clFbG">
                <node concept="liA8E" id="3K" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="3M" role="37wK5m">
                    <ref role="3cqZAo" node="3F" resolve="inferenceRule" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3L" role="2Oq$k0">
                  <node concept="Xjq3P" id="3N" role="2Oq$k0" />
                  <node concept="2OwXpG" id="3O" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myInferenceRules" resolve="myInferenceRules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="35" role="3cqZAp">
          <node concept="3clFbS" id="3P" role="9aQI4">
            <node concept="3cpWs8" id="3Q" role="3cqZAp">
              <node concept="3cpWsn" id="3S" role="3cpWs9">
                <property role="TrG5h" value="inferenceRule" />
                <node concept="2ShNRf" id="3T" role="33vP2m">
                  <node concept="1pGfFk" id="3V" role="2ShVmc">
                    <ref role="37wK5l" node="kJ" resolve="typeof_FactoryMethodIcon_InferenceRule" />
                  </node>
                </node>
                <node concept="3uibUv" id="3U" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3R" role="3cqZAp">
              <node concept="2OqwBi" id="3W" role="3clFbG">
                <node concept="liA8E" id="3X" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="3Z" role="37wK5m">
                    <ref role="3cqZAo" node="3S" resolve="inferenceRule" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3Y" role="2Oq$k0">
                  <node concept="Xjq3P" id="40" role="2Oq$k0" />
                  <node concept="2OwXpG" id="41" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myInferenceRules" resolve="myInferenceRules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="36" role="3cqZAp">
          <node concept="3clFbS" id="42" role="9aQI4">
            <node concept="3cpWs8" id="43" role="3cqZAp">
              <node concept="3cpWsn" id="45" role="3cpWs9">
                <property role="TrG5h" value="inferenceRule" />
                <node concept="2ShNRf" id="46" role="33vP2m">
                  <node concept="1pGfFk" id="48" role="2ShVmc">
                    <ref role="37wK5l" node="md" resolve="typeof_IconExpression_InferenceRule" />
                  </node>
                </node>
                <node concept="3uibUv" id="47" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="44" role="3cqZAp">
              <node concept="2OqwBi" id="49" role="3clFbG">
                <node concept="liA8E" id="4a" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="4c" role="37wK5m">
                    <ref role="3cqZAo" node="45" resolve="inferenceRule" />
                  </node>
                </node>
                <node concept="2OqwBi" id="4b" role="2Oq$k0">
                  <node concept="Xjq3P" id="4d" role="2Oq$k0" />
                  <node concept="2OwXpG" id="4e" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myInferenceRules" resolve="myInferenceRules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="37" role="3cqZAp">
          <node concept="3clFbS" id="4f" role="9aQI4">
            <node concept="3cpWs8" id="4g" role="3cqZAp">
              <node concept="3cpWsn" id="4i" role="3cpWs9">
                <property role="TrG5h" value="inferenceRule" />
                <node concept="2ShNRf" id="4j" role="33vP2m">
                  <node concept="1pGfFk" id="4l" role="2ShVmc">
                    <ref role="37wK5l" node="nB" resolve="typeof_IconResourceExpression_InferenceRule" />
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
        <node concept="9aQIb" id="38" role="3cqZAp">
          <node concept="3clFbS" id="4s" role="9aQI4">
            <node concept="3cpWs8" id="4t" role="3cqZAp">
              <node concept="3cpWsn" id="4v" role="3cpWs9">
                <property role="TrG5h" value="inferenceRule" />
                <node concept="2ShNRf" id="4w" role="33vP2m">
                  <node concept="1pGfFk" id="4y" role="2ShVmc">
                    <ref role="37wK5l" node="p1" resolve="typeof_NodeIconResourceExpression_InferenceRule" />
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
        <node concept="9aQIb" id="39" role="3cqZAp">
          <node concept="3clFbS" id="4D" role="9aQI4">
            <node concept="3cpWs8" id="4E" role="3cqZAp">
              <node concept="3cpWsn" id="4G" role="3cpWs9">
                <property role="TrG5h" value="nonTypesystemRule" />
                <node concept="3uibUv" id="4H" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="4I" role="33vP2m">
                  <node concept="1pGfFk" id="4J" role="2ShVmc">
                    <ref role="37wK5l" node="70" resolve="check_FileIcon_NonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4F" role="3cqZAp">
              <node concept="2OqwBi" id="4K" role="3clFbG">
                <node concept="2OqwBi" id="4L" role="2Oq$k0">
                  <node concept="Xjq3P" id="4N" role="2Oq$k0" />
                  <node concept="2OwXpG" id="4O" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myNonTypesystemRules" resolve="myNonTypesystemRules" />
                  </node>
                </node>
                <node concept="liA8E" id="4M" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="4P" role="37wK5m">
                    <ref role="3cqZAo" node="4G" resolve="nonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="3a" role="3cqZAp">
          <node concept="3clFbS" id="4Q" role="9aQI4">
            <node concept="3cpWs8" id="4R" role="3cqZAp">
              <node concept="3cpWsn" id="4T" role="3cpWs9">
                <property role="TrG5h" value="nonTypesystemRule" />
                <node concept="3uibUv" id="4U" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="4V" role="33vP2m">
                  <node concept="1pGfFk" id="4W" role="2ShVmc">
                    <ref role="37wK5l" node="8Y" resolve="check_HelpURL_NonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4S" role="3cqZAp">
              <node concept="2OqwBi" id="4X" role="3clFbG">
                <node concept="2OqwBi" id="4Y" role="2Oq$k0">
                  <node concept="Xjq3P" id="50" role="2Oq$k0" />
                  <node concept="2OwXpG" id="51" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myNonTypesystemRules" resolve="myNonTypesystemRules" />
                  </node>
                </node>
                <node concept="liA8E" id="4Z" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="52" role="37wK5m">
                    <ref role="3cqZAo" node="4T" resolve="nonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="3b" role="3cqZAp">
          <node concept="3clFbS" id="53" role="9aQI4">
            <node concept="3cpWs8" id="54" role="3cqZAp">
              <node concept="3cpWsn" id="56" role="3cpWs9">
                <property role="TrG5h" value="nonTypesystemRule" />
                <node concept="3uibUv" id="57" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="58" role="33vP2m">
                  <node concept="1pGfFk" id="59" role="2ShVmc">
                    <ref role="37wK5l" node="a8" resolve="check_JBColorLiteral_NonTypesystemRule" />
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
        <node concept="9aQIb" id="3c" role="3cqZAp">
          <node concept="3clFbS" id="5g" role="9aQI4">
            <node concept="3cpWs8" id="5h" role="3cqZAp">
              <node concept="3cpWsn" id="5j" role="3cpWs9">
                <property role="TrG5h" value="nonTypesystemRule" />
                <node concept="3uibUv" id="5k" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="5l" role="33vP2m">
                  <node concept="1pGfFk" id="5m" role="2ShVmc">
                    <ref role="37wK5l" node="bC" resolve="check_TextIcon_NonTypesystemRule" />
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
        <node concept="9aQIb" id="3d" role="3cqZAp">
          <node concept="3clFbS" id="5t" role="9aQI4">
            <node concept="3cpWs8" id="5u" role="3cqZAp">
              <node concept="3cpWsn" id="5w" role="3cpWs9">
                <property role="TrG5h" value="nonTypesystemRule" />
                <node concept="3uibUv" id="5x" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="5y" role="33vP2m">
                  <node concept="1pGfFk" id="5z" role="2ShVmc">
                    <ref role="37wK5l" node="es" resolve="check_URLLiteral_NonTypesystemRule" />
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
      </node>
      <node concept="3Tm1VV" id="30" role="1B3o_S" />
      <node concept="3cqZAl" id="31" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="2X" role="1B3o_S" />
    <node concept="3uibUv" id="2Y" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~BaseHelginsDescriptor" resolve="BaseHelginsDescriptor" />
    </node>
  </node>
  <node concept="312cEu" id="5E">
    <property role="3GE5qa" value="url" />
    <property role="TrG5h" value="URLCheckUtil" />
    <uo k="s:originTrace" v="n:4726480899534374932" />
    <node concept="2YIFZL" id="5F" role="jymVt">
      <property role="TrG5h" value="check" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <uo k="s:originTrace" v="n:4726480899534388577" />
      <node concept="37vLTG" id="5H" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="5O" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
        </node>
      </node>
      <node concept="2AHcQZ" id="5I" role="2AJF6D">
        <ref role="2AI5Lk" to="tpd5:hNAUp6x" resolve="CheckingMethod" />
        <uo k="s:originTrace" v="n:4726480899534377476" />
      </node>
      <node concept="3clFbS" id="5J" role="3clF47">
        <uo k="s:originTrace" v="n:4726480899534375148" />
        <node concept="3clFbJ" id="5P" role="3cqZAp">
          <uo k="s:originTrace" v="n:5177162104569561844" />
          <node concept="3clFbS" id="5Q" role="3clFbx">
            <uo k="s:originTrace" v="n:5177162104569561846" />
            <node concept="9aQIb" id="5T" role="3cqZAp">
              <uo k="s:originTrace" v="n:5177162104569565281" />
              <node concept="3clFbS" id="5U" role="9aQI4">
                <node concept="3cpWs8" id="5W" role="3cqZAp">
                  <node concept="3cpWsn" id="5Y" role="3cpWs9">
                    <property role="TrG5h" value="errorTarget" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3uibUv" id="5Z" role="1tU5fm">
                      <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                    </node>
                    <node concept="2ShNRf" id="60" role="33vP2m">
                      <node concept="1pGfFk" id="61" role="2ShVmc">
                        <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="5X" role="3cqZAp">
                  <node concept="3cpWsn" id="62" role="3cpWs9">
                    <property role="TrG5h" value="_reporter_2309309498" />
                    <node concept="3uibUv" id="63" role="1tU5fm">
                      <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                    </node>
                    <node concept="2OqwBi" id="64" role="33vP2m">
                      <node concept="3VmV3z" id="65" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="67" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="66" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                        <node concept="37vLTw" id="68" role="37wK5m">
                          <ref role="3cqZAo" node="5K" resolve="node" />
                          <uo k="s:originTrace" v="n:4726480899534585420" />
                        </node>
                        <node concept="Xl_RD" id="69" role="37wK5m">
                          <property role="Xl_RC" value="Help URL should start with http:// or https://" />
                          <uo k="s:originTrace" v="n:5177162104569565287" />
                        </node>
                        <node concept="Xl_RD" id="6a" role="37wK5m">
                          <property role="Xl_RC" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="6b" role="37wK5m">
                          <property role="Xl_RC" value="5177162104569565281" />
                        </node>
                        <node concept="10Nm6u" id="6c" role="37wK5m" />
                        <node concept="37vLTw" id="6d" role="37wK5m">
                          <ref role="3cqZAo" node="5Y" resolve="errorTarget" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="6wLe0" id="5V" role="lGtFl">
                <property role="6wLej" value="5177162104569565281" />
                <property role="6wLeW" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="5R" role="3clFbw">
            <uo k="s:originTrace" v="n:5177162104569561952" />
            <node concept="1eOMI4" id="6e" role="3fr31v">
              <uo k="s:originTrace" v="n:5177162104569564481" />
              <node concept="22lmx$" id="6f" role="1eOMHV">
                <uo k="s:originTrace" v="n:5177162104569564840" />
                <node concept="2OqwBi" id="6g" role="3uHU7B">
                  <uo k="s:originTrace" v="n:5177162104569564482" />
                  <node concept="37vLTw" id="6i" role="2Oq$k0">
                    <ref role="3cqZAo" node="5L" resolve="url" />
                    <uo k="s:originTrace" v="n:4726480899534380717" />
                  </node>
                  <node concept="liA8E" id="6j" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                    <uo k="s:originTrace" v="n:5177162104569564486" />
                    <node concept="Xl_RD" id="6k" role="37wK5m">
                      <property role="Xl_RC" value="http://" />
                      <uo k="s:originTrace" v="n:5177162104569564487" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="6h" role="3uHU7w">
                  <uo k="s:originTrace" v="n:5177162104569562842" />
                  <node concept="37vLTw" id="6l" role="2Oq$k0">
                    <ref role="3cqZAo" node="5L" resolve="url" />
                    <uo k="s:originTrace" v="n:4726480899534385219" />
                  </node>
                  <node concept="liA8E" id="6m" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                    <uo k="s:originTrace" v="n:5177162104569563595" />
                    <node concept="Xl_RD" id="6n" role="37wK5m">
                      <property role="Xl_RC" value="https://" />
                      <uo k="s:originTrace" v="n:5177162104569563694" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="5S" role="9aQIa">
            <uo k="s:originTrace" v="n:5177162104569565471" />
            <node concept="3clFbS" id="6o" role="9aQI4">
              <uo k="s:originTrace" v="n:5177162104569565472" />
              <node concept="3J1_TO" id="6p" role="3cqZAp">
                <uo k="s:originTrace" v="n:5177162104569127457" />
                <node concept="3clFbS" id="6q" role="1zxBo7">
                  <uo k="s:originTrace" v="n:5177162104569127459" />
                  <node concept="3clFbF" id="6s" role="3cqZAp">
                    <uo k="s:originTrace" v="n:5177162104569123155" />
                    <node concept="2ShNRf" id="6t" role="3clFbG">
                      <uo k="s:originTrace" v="n:5177162104569123149" />
                      <node concept="1pGfFk" id="6u" role="2ShVmc">
                        <ref role="37wK5l" to="zf81:~URL.&lt;init&gt;(java.lang.String)" resolve="URL" />
                        <uo k="s:originTrace" v="n:5177162104569127082" />
                        <node concept="37vLTw" id="6v" role="37wK5m">
                          <ref role="3cqZAo" node="5L" resolve="url" />
                          <uo k="s:originTrace" v="n:4726480899534386448" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3uVAMA" id="6r" role="1zxBo5">
                  <uo k="s:originTrace" v="n:5177162104569127460" />
                  <node concept="XOnhg" id="6w" role="1zc67B">
                    <property role="3TUv4t" value="false" />
                    <property role="TrG5h" value="e" />
                    <uo k="s:originTrace" v="n:5177162104569127464" />
                    <node concept="nSUau" id="6y" role="1tU5fm">
                      <uo k="s:originTrace" v="n:603324024917836009" />
                      <node concept="3uibUv" id="6z" role="nSUat">
                        <ref role="3uigEE" to="zf81:~MalformedURLException" resolve="MalformedURLException" />
                        <uo k="s:originTrace" v="n:5177162104569127575" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="6x" role="1zc67A">
                    <uo k="s:originTrace" v="n:5177162104569127462" />
                    <node concept="9aQIb" id="6$" role="3cqZAp">
                      <uo k="s:originTrace" v="n:5177162104569127649" />
                      <node concept="3clFbS" id="6_" role="9aQI4">
                        <node concept="3cpWs8" id="6B" role="3cqZAp">
                          <node concept="3cpWsn" id="6D" role="3cpWs9">
                            <property role="TrG5h" value="errorTarget" />
                            <property role="3TUv4t" value="true" />
                            <node concept="3uibUv" id="6E" role="1tU5fm">
                              <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                            </node>
                            <node concept="2ShNRf" id="6F" role="33vP2m">
                              <node concept="1pGfFk" id="6G" role="2ShVmc">
                                <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="6C" role="3cqZAp">
                          <node concept="3cpWsn" id="6H" role="3cpWs9">
                            <property role="TrG5h" value="_reporter_2309309498" />
                            <node concept="3uibUv" id="6I" role="1tU5fm">
                              <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                            </node>
                            <node concept="2OqwBi" id="6J" role="33vP2m">
                              <node concept="3VmV3z" id="6K" role="2Oq$k0">
                                <property role="3VnrPo" value="typeCheckingContext" />
                                <node concept="3uibUv" id="6M" role="3Vn4Tt">
                                  <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                                </node>
                              </node>
                              <node concept="liA8E" id="6L" role="2OqNvi">
                                <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                                <node concept="37vLTw" id="6N" role="37wK5m">
                                  <ref role="3cqZAo" node="5K" resolve="node" />
                                  <uo k="s:originTrace" v="n:4726480899534395365" />
                                </node>
                                <node concept="3cpWs3" id="6O" role="37wK5m">
                                  <uo k="s:originTrace" v="n:5177162104569127902" />
                                  <node concept="2OqwBi" id="6T" role="3uHU7w">
                                    <uo k="s:originTrace" v="n:5177162104569128018" />
                                    <node concept="37vLTw" id="6V" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6w" resolve="e" />
                                      <uo k="s:originTrace" v="n:5177162104569127905" />
                                    </node>
                                    <node concept="liA8E" id="6W" role="2OqNvi">
                                      <ref role="37wK5l" to="wyt6:~Throwable.getMessage()" resolve="getMessage" />
                                      <uo k="s:originTrace" v="n:5177162104569128345" />
                                    </node>
                                  </node>
                                  <node concept="Xl_RD" id="6U" role="3uHU7B">
                                    <property role="Xl_RC" value="Malformed URL: " />
                                    <uo k="s:originTrace" v="n:5177162104569127665" />
                                  </node>
                                </node>
                                <node concept="Xl_RD" id="6P" role="37wK5m">
                                  <property role="Xl_RC" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
                                </node>
                                <node concept="Xl_RD" id="6Q" role="37wK5m">
                                  <property role="Xl_RC" value="5177162104569127649" />
                                </node>
                                <node concept="10Nm6u" id="6R" role="37wK5m" />
                                <node concept="37vLTw" id="6S" role="37wK5m">
                                  <ref role="3cqZAo" node="6D" resolve="errorTarget" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="6wLe0" id="6A" role="lGtFl">
                        <property role="6wLej" value="5177162104569127649" />
                        <property role="6wLeW" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5K" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:4726480899534394254" />
        <node concept="3Tqbb2" id="6X" role="1tU5fm">
          <uo k="s:originTrace" v="n:4726480899534394846" />
        </node>
      </node>
      <node concept="37vLTG" id="5L" role="3clF46">
        <property role="TrG5h" value="url" />
        <uo k="s:originTrace" v="n:4726480899534379741" />
        <node concept="3uibUv" id="6Y" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          <uo k="s:originTrace" v="n:4726480899534379740" />
        </node>
      </node>
      <node concept="3cqZAl" id="5M" role="3clF45">
        <uo k="s:originTrace" v="n:4726480899534379101" />
      </node>
      <node concept="3Tm1VV" id="5N" role="1B3o_S">
        <uo k="s:originTrace" v="n:4726480899534375147" />
      </node>
    </node>
    <node concept="3Tm1VV" id="5G" role="1B3o_S">
      <uo k="s:originTrace" v="n:4726480899534374933" />
    </node>
  </node>
  <node concept="312cEu" id="6Z">
    <property role="3GE5qa" value="icons.descriptors" />
    <property role="TrG5h" value="check_FileIcon_NonTypesystemRule" />
    <uo k="s:originTrace" v="n:1364341579416287766" />
    <node concept="3clFbW" id="70" role="jymVt">
      <uo k="s:originTrace" v="n:1364341579416287766" />
      <node concept="3clFbS" id="78" role="3clF47">
        <uo k="s:originTrace" v="n:1364341579416287766" />
      </node>
      <node concept="3Tm1VV" id="79" role="1B3o_S">
        <uo k="s:originTrace" v="n:1364341579416287766" />
      </node>
      <node concept="3cqZAl" id="7a" role="3clF45">
        <uo k="s:originTrace" v="n:1364341579416287766" />
      </node>
    </node>
    <node concept="3clFb_" id="71" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:1364341579416287766" />
      <node concept="3cqZAl" id="7b" role="3clF45">
        <uo k="s:originTrace" v="n:1364341579416287766" />
      </node>
      <node concept="37vLTG" id="7c" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="fileIcon" />
        <uo k="s:originTrace" v="n:1364341579416287766" />
        <node concept="3Tqbb2" id="7h" role="1tU5fm">
          <uo k="s:originTrace" v="n:1364341579416287766" />
        </node>
      </node>
      <node concept="37vLTG" id="7d" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:1364341579416287766" />
        <node concept="3uibUv" id="7i" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:1364341579416287766" />
        </node>
      </node>
      <node concept="37vLTG" id="7e" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:1364341579416287766" />
        <node concept="3uibUv" id="7j" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:1364341579416287766" />
        </node>
      </node>
      <node concept="3clFbS" id="7f" role="3clF47">
        <uo k="s:originTrace" v="n:1364341579416287767" />
        <node concept="3clFbJ" id="7k" role="3cqZAp">
          <uo k="s:originTrace" v="n:1364341579416287800" />
          <node concept="1Wc70l" id="7m" role="3clFbw">
            <uo k="s:originTrace" v="n:1364341579416302700" />
            <node concept="2OqwBi" id="7o" role="3uHU7w">
              <uo k="s:originTrace" v="n:1364341579416302979" />
              <node concept="2OqwBi" id="7q" role="2Oq$k0">
                <uo k="s:originTrace" v="n:1364341579416302795" />
                <node concept="37vLTw" id="7s" role="2Oq$k0">
                  <ref role="3cqZAo" node="7c" resolve="fileIcon" />
                  <uo k="s:originTrace" v="n:1364341579416302752" />
                </node>
                <node concept="3TrcHB" id="7t" role="2OqNvi">
                  <ref role="3TsBF5" to="1oap:1$fQzw7xISD" resolve="newuiFile" />
                  <uo k="s:originTrace" v="n:1364341579416302887" />
                </node>
              </node>
              <node concept="17RvpY" id="7r" role="2OqNvi">
                <uo k="s:originTrace" v="n:1364341579416303491" />
              </node>
            </node>
            <node concept="2OqwBi" id="7p" role="3uHU7B">
              <uo k="s:originTrace" v="n:1364341579416294603" />
              <node concept="2OqwBi" id="7u" role="2Oq$k0">
                <uo k="s:originTrace" v="n:1364341579416288511" />
                <node concept="37vLTw" id="7w" role="2Oq$k0">
                  <ref role="3cqZAo" node="7c" resolve="fileIcon" />
                  <uo k="s:originTrace" v="n:1364341579416287812" />
                </node>
                <node concept="3TrcHB" id="7x" role="2OqNvi">
                  <ref role="3TsBF5" to="1oap:2p1v3tOafqN" resolve="file" />
                  <uo k="s:originTrace" v="n:1364341579416289323" />
                </node>
              </node>
              <node concept="17RlXB" id="7v" role="2OqNvi">
                <uo k="s:originTrace" v="n:1364341579416298421" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7n" role="3clFbx">
            <uo k="s:originTrace" v="n:1364341579416287802" />
            <node concept="9aQIb" id="7y" role="3cqZAp">
              <uo k="s:originTrace" v="n:1364341579416303586" />
              <node concept="3clFbS" id="7z" role="9aQI4">
                <node concept="3cpWs8" id="7_" role="3cqZAp">
                  <node concept="3cpWsn" id="7B" role="3cpWs9">
                    <property role="TrG5h" value="errorTarget" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3uibUv" id="7C" role="1tU5fm">
                      <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                    </node>
                    <node concept="2ShNRf" id="7D" role="33vP2m">
                      <uo k="s:originTrace" v="n:1364341579416303737" />
                      <node concept="1pGfFk" id="7E" role="2ShVmc">
                        <ref role="37wK5l" to="zavc:~PropertyMessageTarget.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty)" resolve="PropertyMessageTarget" />
                        <uo k="s:originTrace" v="n:1364341579416303737" />
                        <node concept="355D3s" id="7F" role="37wK5m">
                          <ref role="355D3t" to="1oap:7Mb2akaesqV" resolve="FileIcon" />
                          <ref role="355D3u" to="1oap:2p1v3tOafqN" resolve="file" />
                          <uo k="s:originTrace" v="n:1364341579416303737" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="7A" role="3cqZAp">
                  <node concept="3cpWsn" id="7G" role="3cpWs9">
                    <property role="TrG5h" value="_reporter_2309309498" />
                    <node concept="3uibUv" id="7H" role="1tU5fm">
                      <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                    </node>
                    <node concept="2OqwBi" id="7I" role="33vP2m">
                      <node concept="3VmV3z" id="7J" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="7L" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7K" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                        <node concept="37vLTw" id="7M" role="37wK5m">
                          <ref role="3cqZAo" node="7c" resolve="fileIcon" />
                          <uo k="s:originTrace" v="n:1364341579416303699" />
                        </node>
                        <node concept="Xl_RD" id="7N" role="37wK5m">
                          <property role="Xl_RC" value="The standard UI icon must be specified." />
                          <uo k="s:originTrace" v="n:1364341579416303598" />
                        </node>
                        <node concept="Xl_RD" id="7O" role="37wK5m">
                          <property role="Xl_RC" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="7P" role="37wK5m">
                          <property role="Xl_RC" value="1364341579416303586" />
                        </node>
                        <node concept="10Nm6u" id="7Q" role="37wK5m" />
                        <node concept="37vLTw" id="7R" role="37wK5m">
                          <ref role="3cqZAo" node="7B" resolve="errorTarget" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="6wLe0" id="7$" role="lGtFl">
                <property role="6wLej" value="1364341579416303586" />
                <property role="6wLeW" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7l" role="3cqZAp">
          <uo k="s:originTrace" v="n:2325064555394983609" />
          <node concept="1Wc70l" id="7S" role="3clFbw">
            <uo k="s:originTrace" v="n:2325064555394983610" />
            <node concept="2OqwBi" id="7U" role="3uHU7w">
              <uo k="s:originTrace" v="n:2325064555394983611" />
              <node concept="2OqwBi" id="7W" role="2Oq$k0">
                <uo k="s:originTrace" v="n:2325064555394983612" />
                <node concept="37vLTw" id="7Y" role="2Oq$k0">
                  <ref role="3cqZAo" node="7c" resolve="fileIcon" />
                  <uo k="s:originTrace" v="n:2325064555394983613" />
                </node>
                <node concept="3TrcHB" id="7Z" role="2OqNvi">
                  <ref role="3TsBF5" to="1oap:1$fQzw7xISD" resolve="newuiFile" />
                  <uo k="s:originTrace" v="n:2325064555394983614" />
                </node>
              </node>
              <node concept="17RvpY" id="7X" role="2OqNvi">
                <uo k="s:originTrace" v="n:2325064555394983615" />
              </node>
            </node>
            <node concept="1Wc70l" id="7V" role="3uHU7B">
              <uo k="s:originTrace" v="n:2325064555399327841" />
              <node concept="2OqwBi" id="80" role="3uHU7w">
                <uo k="s:originTrace" v="n:2325064555394983617" />
                <node concept="37vLTw" id="82" role="2Oq$k0">
                  <ref role="3cqZAo" node="7c" resolve="fileIcon" />
                  <uo k="s:originTrace" v="n:2325064555394983618" />
                </node>
                <node concept="3zqWPK" id="83" role="2OqNvi">
                  <ref role="37wK5l" to="3767:1$fQzw7$hd7" resolve="isFileValid" />
                  <uo k="s:originTrace" v="n:8085146484218845385" />
                  <node concept="2OqwBi" id="84" role="37wK5m">
                    <uo k="s:originTrace" v="n:8085146484218845387" />
                    <node concept="37vLTw" id="85" role="2Oq$k0">
                      <ref role="3cqZAo" node="7c" resolve="fileIcon" />
                      <uo k="s:originTrace" v="n:8085146484218845388" />
                    </node>
                    <node concept="3zqWPK" id="86" role="2OqNvi">
                      <ref role="37wK5l" to="3767:1$fQzw7$wcx" resolve="getNamingConventionNewuiFileName" />
                      <uo k="s:originTrace" v="n:4743368192416371670" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="81" role="3uHU7B">
                <uo k="s:originTrace" v="n:2325064555399353185" />
                <node concept="2OqwBi" id="87" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:2325064555399327982" />
                  <node concept="37vLTw" id="89" role="2Oq$k0">
                    <ref role="3cqZAo" node="7c" resolve="fileIcon" />
                    <uo k="s:originTrace" v="n:2325064555399327983" />
                  </node>
                  <node concept="3TrcHB" id="8a" role="2OqNvi">
                    <ref role="3TsBF5" to="1oap:2p1v3tOafqN" resolve="file" />
                    <uo k="s:originTrace" v="n:2325064555399349885" />
                  </node>
                </node>
                <node concept="17RvpY" id="88" role="2OqNvi">
                  <uo k="s:originTrace" v="n:2325064555399356709" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7T" role="3clFbx">
            <uo k="s:originTrace" v="n:2325064555394983621" />
            <node concept="9aQIb" id="8b" role="3cqZAp">
              <uo k="s:originTrace" v="n:2325064555394987275" />
              <node concept="3clFbS" id="8c" role="9aQI4">
                <node concept="3cpWs8" id="8e" role="3cqZAp">
                  <node concept="3cpWsn" id="8g" role="3cpWs9">
                    <property role="TrG5h" value="errorTarget" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3uibUv" id="8h" role="1tU5fm">
                      <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                    </node>
                    <node concept="2ShNRf" id="8i" role="33vP2m">
                      <uo k="s:originTrace" v="n:2325064555394987279" />
                      <node concept="1pGfFk" id="8j" role="2ShVmc">
                        <ref role="37wK5l" to="zavc:~PropertyMessageTarget.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty)" resolve="PropertyMessageTarget" />
                        <uo k="s:originTrace" v="n:2325064555394987279" />
                        <node concept="355D3s" id="8k" role="37wK5m">
                          <ref role="355D3t" to="1oap:7Mb2akaesqV" resolve="FileIcon" />
                          <ref role="355D3u" to="1oap:2p1v3tOafqN" resolve="file" />
                          <uo k="s:originTrace" v="n:2325064555394987279" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="8f" role="3cqZAp">
                  <node concept="3cpWsn" id="8l" role="3cpWs9">
                    <property role="TrG5h" value="_reporter_2309309498" />
                    <node concept="3uibUv" id="8m" role="1tU5fm">
                      <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                    </node>
                    <node concept="2OqwBi" id="8n" role="33vP2m">
                      <node concept="3VmV3z" id="8o" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="8q" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="8p" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportWarning(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportWarning" />
                        <node concept="37vLTw" id="8r" role="37wK5m">
                          <ref role="3cqZAo" node="7c" resolve="fileIcon" />
                          <uo k="s:originTrace" v="n:2325064555394987278" />
                        </node>
                        <node concept="Xl_RD" id="8s" role="37wK5m">
                          <property role="Xl_RC" value="Both implicit (aka '_newui.svg') and explicit files for a new UI icons are available. The explicitly specified icon will be used under new UI." />
                          <uo k="s:originTrace" v="n:2325064555394987277" />
                        </node>
                        <node concept="Xl_RD" id="8t" role="37wK5m">
                          <property role="Xl_RC" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="8u" role="37wK5m">
                          <property role="Xl_RC" value="2325064555394987275" />
                        </node>
                        <node concept="10Nm6u" id="8v" role="37wK5m" />
                        <node concept="37vLTw" id="8w" role="37wK5m">
                          <ref role="3cqZAo" node="8g" resolve="errorTarget" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="6wLe0" id="8d" role="lGtFl">
                <property role="6wLej" value="2325064555394987275" />
                <property role="6wLeW" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7g" role="1B3o_S">
        <uo k="s:originTrace" v="n:1364341579416287766" />
      </node>
    </node>
    <node concept="3clFb_" id="72" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:1364341579416287766" />
      <node concept="3bZ5Sz" id="8x" role="3clF45">
        <uo k="s:originTrace" v="n:1364341579416287766" />
      </node>
      <node concept="3clFbS" id="8y" role="3clF47">
        <uo k="s:originTrace" v="n:1364341579416287766" />
        <node concept="3cpWs6" id="8$" role="3cqZAp">
          <uo k="s:originTrace" v="n:1364341579416287766" />
          <node concept="35c_gC" id="8_" role="3cqZAk">
            <ref role="35c_gD" to="1oap:7Mb2akaesqV" resolve="FileIcon" />
            <uo k="s:originTrace" v="n:1364341579416287766" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="8z" role="1B3o_S">
        <uo k="s:originTrace" v="n:1364341579416287766" />
      </node>
    </node>
    <node concept="3clFb_" id="73" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:1364341579416287766" />
      <node concept="37vLTG" id="8A" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:1364341579416287766" />
        <node concept="3Tqbb2" id="8E" role="1tU5fm">
          <uo k="s:originTrace" v="n:1364341579416287766" />
        </node>
      </node>
      <node concept="3clFbS" id="8B" role="3clF47">
        <uo k="s:originTrace" v="n:1364341579416287766" />
        <node concept="9aQIb" id="8F" role="3cqZAp">
          <uo k="s:originTrace" v="n:1364341579416287766" />
          <node concept="3clFbS" id="8G" role="9aQI4">
            <uo k="s:originTrace" v="n:1364341579416287766" />
            <node concept="3cpWs6" id="8H" role="3cqZAp">
              <uo k="s:originTrace" v="n:1364341579416287766" />
              <node concept="2ShNRf" id="8I" role="3cqZAk">
                <uo k="s:originTrace" v="n:1364341579416287766" />
                <node concept="1pGfFk" id="8J" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:1364341579416287766" />
                  <node concept="2OqwBi" id="8K" role="37wK5m">
                    <uo k="s:originTrace" v="n:1364341579416287766" />
                    <node concept="2OqwBi" id="8M" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:1364341579416287766" />
                      <node concept="liA8E" id="8O" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:1364341579416287766" />
                      </node>
                      <node concept="2JrnkZ" id="8P" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:1364341579416287766" />
                        <node concept="37vLTw" id="8Q" role="2JrQYb">
                          <ref role="3cqZAo" node="8A" resolve="argument" />
                          <uo k="s:originTrace" v="n:1364341579416287766" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="8N" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:1364341579416287766" />
                      <node concept="1rXfSq" id="8R" role="37wK5m">
                        <ref role="37wK5l" node="72" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:1364341579416287766" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="8L" role="37wK5m">
                    <uo k="s:originTrace" v="n:1364341579416287766" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="8C" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:1364341579416287766" />
      </node>
      <node concept="3Tm1VV" id="8D" role="1B3o_S">
        <uo k="s:originTrace" v="n:1364341579416287766" />
      </node>
    </node>
    <node concept="3clFb_" id="74" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:1364341579416287766" />
      <node concept="3clFbS" id="8S" role="3clF47">
        <uo k="s:originTrace" v="n:1364341579416287766" />
        <node concept="3cpWs6" id="8V" role="3cqZAp">
          <uo k="s:originTrace" v="n:1364341579416287766" />
          <node concept="3clFbT" id="8W" role="3cqZAk">
            <uo k="s:originTrace" v="n:1364341579416287766" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="8T" role="3clF45">
        <uo k="s:originTrace" v="n:1364341579416287766" />
      </node>
      <node concept="3Tm1VV" id="8U" role="1B3o_S">
        <uo k="s:originTrace" v="n:1364341579416287766" />
      </node>
    </node>
    <node concept="3uibUv" id="75" role="EKbjA">
      <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:1364341579416287766" />
    </node>
    <node concept="3uibUv" id="76" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractNonTypesystemRule_Runtime" resolve="AbstractNonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:1364341579416287766" />
    </node>
    <node concept="3Tm1VV" id="77" role="1B3o_S">
      <uo k="s:originTrace" v="n:1364341579416287766" />
    </node>
  </node>
  <node concept="312cEu" id="8X">
    <property role="3GE5qa" value="url" />
    <property role="TrG5h" value="check_HelpURL_NonTypesystemRule" />
    <uo k="s:originTrace" v="n:5177162104569118321" />
    <node concept="3clFbW" id="8Y" role="jymVt">
      <uo k="s:originTrace" v="n:5177162104569118321" />
      <node concept="3clFbS" id="96" role="3clF47">
        <uo k="s:originTrace" v="n:5177162104569118321" />
      </node>
      <node concept="3Tm1VV" id="97" role="1B3o_S">
        <uo k="s:originTrace" v="n:5177162104569118321" />
      </node>
      <node concept="3cqZAl" id="98" role="3clF45">
        <uo k="s:originTrace" v="n:5177162104569118321" />
      </node>
    </node>
    <node concept="3clFb_" id="8Z" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:5177162104569118321" />
      <node concept="3cqZAl" id="99" role="3clF45">
        <uo k="s:originTrace" v="n:5177162104569118321" />
      </node>
      <node concept="37vLTG" id="9a" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="url" />
        <uo k="s:originTrace" v="n:5177162104569118321" />
        <node concept="3Tqbb2" id="9f" role="1tU5fm">
          <uo k="s:originTrace" v="n:5177162104569118321" />
        </node>
      </node>
      <node concept="37vLTG" id="9b" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:5177162104569118321" />
        <node concept="3uibUv" id="9g" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:5177162104569118321" />
        </node>
      </node>
      <node concept="37vLTG" id="9c" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:5177162104569118321" />
        <node concept="3uibUv" id="9h" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:5177162104569118321" />
        </node>
      </node>
      <node concept="3clFbS" id="9d" role="3clF47">
        <uo k="s:originTrace" v="n:5177162104569118322" />
        <node concept="3clFbJ" id="9i" role="3cqZAp">
          <uo k="s:originTrace" v="n:4726480899534326683" />
          <node concept="3clFbS" id="9m" role="3clFbx">
            <uo k="s:originTrace" v="n:4726480899534326685" />
            <node concept="3cpWs6" id="9o" role="3cqZAp">
              <uo k="s:originTrace" v="n:4726480899534333634" />
            </node>
          </node>
          <node concept="2OqwBi" id="9n" role="3clFbw">
            <uo k="s:originTrace" v="n:4726480899534332081" />
            <node concept="2OqwBi" id="9p" role="2Oq$k0">
              <uo k="s:originTrace" v="n:4726480899534327799" />
              <node concept="37vLTw" id="9r" role="2Oq$k0">
                <ref role="3cqZAo" node="9a" resolve="url" />
                <uo k="s:originTrace" v="n:4726480899534327248" />
              </node>
              <node concept="3TrEf2" id="9s" role="2OqNvi">
                <ref role="3Tt5mk" to="1oap:46nPloeqmr4" resolve="baseURL" />
                <uo k="s:originTrace" v="n:4726480899534330983" />
              </node>
            </node>
            <node concept="3x8VRR" id="9q" role="2OqNvi">
              <uo k="s:originTrace" v="n:4726480899534333493" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="9j" role="3cqZAp">
          <uo k="s:originTrace" v="n:8903462855151275825" />
          <node concept="3clFbS" id="9t" role="3clFbx">
            <uo k="s:originTrace" v="n:8903462855151275827" />
            <node concept="3cpWs6" id="9v" role="3cqZAp">
              <uo k="s:originTrace" v="n:8903462855151283632" />
            </node>
          </node>
          <node concept="2OqwBi" id="9u" role="3clFbw">
            <uo k="s:originTrace" v="n:8903462855151281623" />
            <node concept="2OqwBi" id="9w" role="2Oq$k0">
              <uo k="s:originTrace" v="n:8903462855151276933" />
              <node concept="37vLTw" id="9y" role="2Oq$k0">
                <ref role="3cqZAo" node="9a" resolve="url" />
                <uo k="s:originTrace" v="n:8903462855151276382" />
              </node>
              <node concept="3TrcHB" id="9z" role="2OqNvi">
                <ref role="3TsBF5" to="1oap:4voYo4rsXeo" resolve="url" />
                <uo k="s:originTrace" v="n:8903462855151277566" />
              </node>
            </node>
            <node concept="17RlXB" id="9x" role="2OqNvi">
              <uo k="s:originTrace" v="n:8903462855151283614" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="9k" role="3cqZAp">
          <uo k="s:originTrace" v="n:4726480899534333641" />
        </node>
        <node concept="3clFbF" id="9l" role="3cqZAp">
          <uo k="s:originTrace" v="n:4726480899534388491" />
          <node concept="2YIFZM" id="9$" role="3clFbG">
            <ref role="37wK5l" node="5F" resolve="check" />
            <ref role="1Pybhc" node="5E" resolve="URLCheckUtil" />
            <uo k="s:originTrace" v="n:4726480899534389415" />
            <node concept="3VmV3z" id="9_" role="37wK5m">
              <property role="3VnrPo" value="typeCheckingContext" />
              <node concept="3uibUv" id="9C" role="3Vn4Tt">
                <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
              </node>
            </node>
            <node concept="37vLTw" id="9A" role="37wK5m">
              <ref role="3cqZAo" node="9a" resolve="url" />
              <uo k="s:originTrace" v="n:4726480899534396676" />
            </node>
            <node concept="2OqwBi" id="9B" role="37wK5m">
              <uo k="s:originTrace" v="n:4726480899534389982" />
              <node concept="37vLTw" id="9D" role="2Oq$k0">
                <ref role="3cqZAo" node="9a" resolve="url" />
                <uo k="s:originTrace" v="n:4726480899534389428" />
              </node>
              <node concept="3TrcHB" id="9E" role="2OqNvi">
                <ref role="3TsBF5" to="1oap:4voYo4rsXeo" resolve="url" />
                <uo k="s:originTrace" v="n:4726480899534390660" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="9e" role="1B3o_S">
        <uo k="s:originTrace" v="n:5177162104569118321" />
      </node>
    </node>
    <node concept="3clFb_" id="90" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:5177162104569118321" />
      <node concept="3bZ5Sz" id="9F" role="3clF45">
        <uo k="s:originTrace" v="n:5177162104569118321" />
      </node>
      <node concept="3clFbS" id="9G" role="3clF47">
        <uo k="s:originTrace" v="n:5177162104569118321" />
        <node concept="3cpWs6" id="9I" role="3cqZAp">
          <uo k="s:originTrace" v="n:5177162104569118321" />
          <node concept="35c_gC" id="9J" role="3cqZAk">
            <ref role="35c_gD" to="1oap:4voYo4rsXen" resolve="HelpURL" />
            <uo k="s:originTrace" v="n:5177162104569118321" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="9H" role="1B3o_S">
        <uo k="s:originTrace" v="n:5177162104569118321" />
      </node>
    </node>
    <node concept="3clFb_" id="91" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:5177162104569118321" />
      <node concept="37vLTG" id="9K" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:5177162104569118321" />
        <node concept="3Tqbb2" id="9O" role="1tU5fm">
          <uo k="s:originTrace" v="n:5177162104569118321" />
        </node>
      </node>
      <node concept="3clFbS" id="9L" role="3clF47">
        <uo k="s:originTrace" v="n:5177162104569118321" />
        <node concept="9aQIb" id="9P" role="3cqZAp">
          <uo k="s:originTrace" v="n:5177162104569118321" />
          <node concept="3clFbS" id="9Q" role="9aQI4">
            <uo k="s:originTrace" v="n:5177162104569118321" />
            <node concept="3cpWs6" id="9R" role="3cqZAp">
              <uo k="s:originTrace" v="n:5177162104569118321" />
              <node concept="2ShNRf" id="9S" role="3cqZAk">
                <uo k="s:originTrace" v="n:5177162104569118321" />
                <node concept="1pGfFk" id="9T" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:5177162104569118321" />
                  <node concept="2OqwBi" id="9U" role="37wK5m">
                    <uo k="s:originTrace" v="n:5177162104569118321" />
                    <node concept="2OqwBi" id="9W" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:5177162104569118321" />
                      <node concept="liA8E" id="9Y" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:5177162104569118321" />
                      </node>
                      <node concept="2JrnkZ" id="9Z" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:5177162104569118321" />
                        <node concept="37vLTw" id="a0" role="2JrQYb">
                          <ref role="3cqZAo" node="9K" resolve="argument" />
                          <uo k="s:originTrace" v="n:5177162104569118321" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="9X" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:5177162104569118321" />
                      <node concept="1rXfSq" id="a1" role="37wK5m">
                        <ref role="37wK5l" node="90" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:5177162104569118321" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="9V" role="37wK5m">
                    <uo k="s:originTrace" v="n:5177162104569118321" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="9M" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:5177162104569118321" />
      </node>
      <node concept="3Tm1VV" id="9N" role="1B3o_S">
        <uo k="s:originTrace" v="n:5177162104569118321" />
      </node>
    </node>
    <node concept="3clFb_" id="92" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:5177162104569118321" />
      <node concept="3clFbS" id="a2" role="3clF47">
        <uo k="s:originTrace" v="n:5177162104569118321" />
        <node concept="3cpWs6" id="a5" role="3cqZAp">
          <uo k="s:originTrace" v="n:5177162104569118321" />
          <node concept="3clFbT" id="a6" role="3cqZAk">
            <uo k="s:originTrace" v="n:5177162104569118321" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="a3" role="3clF45">
        <uo k="s:originTrace" v="n:5177162104569118321" />
      </node>
      <node concept="3Tm1VV" id="a4" role="1B3o_S">
        <uo k="s:originTrace" v="n:5177162104569118321" />
      </node>
    </node>
    <node concept="3uibUv" id="93" role="EKbjA">
      <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:5177162104569118321" />
    </node>
    <node concept="3uibUv" id="94" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractNonTypesystemRule_Runtime" resolve="AbstractNonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:5177162104569118321" />
    </node>
    <node concept="3Tm1VV" id="95" role="1B3o_S">
      <uo k="s:originTrace" v="n:5177162104569118321" />
    </node>
  </node>
  <node concept="312cEu" id="a7">
    <property role="3GE5qa" value="icons.descriptors.text" />
    <property role="TrG5h" value="check_JBColorLiteral_NonTypesystemRule" />
    <uo k="s:originTrace" v="n:7139483445243246744" />
    <node concept="3clFbW" id="a8" role="jymVt">
      <uo k="s:originTrace" v="n:7139483445243246744" />
      <node concept="3clFbS" id="ag" role="3clF47">
        <uo k="s:originTrace" v="n:7139483445243246744" />
      </node>
      <node concept="3Tm1VV" id="ah" role="1B3o_S">
        <uo k="s:originTrace" v="n:7139483445243246744" />
      </node>
      <node concept="3cqZAl" id="ai" role="3clF45">
        <uo k="s:originTrace" v="n:7139483445243246744" />
      </node>
    </node>
    <node concept="3clFb_" id="a9" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:7139483445243246744" />
      <node concept="3cqZAl" id="aj" role="3clF45">
        <uo k="s:originTrace" v="n:7139483445243246744" />
      </node>
      <node concept="37vLTG" id="ak" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="jbColorLiteral" />
        <uo k="s:originTrace" v="n:7139483445243246744" />
        <node concept="3Tqbb2" id="ap" role="1tU5fm">
          <uo k="s:originTrace" v="n:7139483445243246744" />
        </node>
      </node>
      <node concept="37vLTG" id="al" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:7139483445243246744" />
        <node concept="3uibUv" id="aq" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:7139483445243246744" />
        </node>
      </node>
      <node concept="37vLTG" id="am" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:7139483445243246744" />
        <node concept="3uibUv" id="ar" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:7139483445243246744" />
        </node>
      </node>
      <node concept="3clFbS" id="an" role="3clF47">
        <uo k="s:originTrace" v="n:7139483445243246745" />
        <node concept="3clFbJ" id="as" role="3cqZAp">
          <uo k="s:originTrace" v="n:7139483445243246791" />
          <node concept="2OqwBi" id="at" role="3clFbw">
            <uo k="s:originTrace" v="n:7139483445243252505" />
            <node concept="2OqwBi" id="av" role="2Oq$k0">
              <uo k="s:originTrace" v="n:7139483445243251088" />
              <node concept="1PxgMI" id="ax" role="2Oq$k0">
                <property role="1BlNFB" value="true" />
                <uo k="s:originTrace" v="n:7139483445243250197" />
                <node concept="chp4Y" id="az" role="3oSUPX">
                  <ref role="cht4Q" to="1oap:3CuULxINGAz" resolve="IThemeKindSpecific" />
                  <uo k="s:originTrace" v="n:7139483445243250511" />
                </node>
                <node concept="2OqwBi" id="a$" role="1m5AlR">
                  <uo k="s:originTrace" v="n:7139483445243247448" />
                  <node concept="37vLTw" id="a_" role="2Oq$k0">
                    <ref role="3cqZAo" node="ak" resolve="jbColorLiteral" />
                    <uo k="s:originTrace" v="n:7139483445243246800" />
                  </node>
                  <node concept="1mfA1w" id="aA" role="2OqNvi">
                    <uo k="s:originTrace" v="n:7139483445243248356" />
                  </node>
                </node>
              </node>
              <node concept="3TrEf2" id="ay" role="2OqNvi">
                <ref role="3Tt5mk" to="1oap:3CuULxINMq$" resolve="targetThemeKind" />
                <uo k="s:originTrace" v="n:7139483445243251695" />
              </node>
            </node>
            <node concept="3x8VRR" id="aw" role="2OqNvi">
              <uo k="s:originTrace" v="n:7139483445243253318" />
            </node>
          </node>
          <node concept="3clFbS" id="au" role="3clFbx">
            <uo k="s:originTrace" v="n:7139483445243246793" />
            <node concept="9aQIb" id="aB" role="3cqZAp">
              <uo k="s:originTrace" v="n:7139483445243253644" />
              <node concept="3clFbS" id="aC" role="9aQI4">
                <node concept="3cpWs8" id="aE" role="3cqZAp">
                  <node concept="3cpWsn" id="aH" role="3cpWs9">
                    <property role="TrG5h" value="errorTarget" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3uibUv" id="aI" role="1tU5fm">
                      <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                    </node>
                    <node concept="2ShNRf" id="aJ" role="33vP2m">
                      <node concept="1pGfFk" id="aK" role="2ShVmc">
                        <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="aF" role="3cqZAp">
                  <node concept="3cpWsn" id="aL" role="3cpWs9">
                    <property role="TrG5h" value="_reporter_2309309498" />
                    <node concept="3uibUv" id="aM" role="1tU5fm">
                      <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                    </node>
                    <node concept="2OqwBi" id="aN" role="33vP2m">
                      <node concept="3VmV3z" id="aO" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="aQ" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="aP" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportWarning(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportWarning" />
                        <node concept="37vLTw" id="aR" role="37wK5m">
                          <ref role="3cqZAo" node="ak" resolve="jbColorLiteral" />
                          <uo k="s:originTrace" v="n:7139483445243253762" />
                        </node>
                        <node concept="Xl_RD" id="aS" role="37wK5m">
                          <property role="Xl_RC" value="Single color can be used for a theme-specific layer." />
                          <uo k="s:originTrace" v="n:7139483445243253653" />
                        </node>
                        <node concept="Xl_RD" id="aT" role="37wK5m">
                          <property role="Xl_RC" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="aU" role="37wK5m">
                          <property role="Xl_RC" value="7139483445243253644" />
                        </node>
                        <node concept="10Nm6u" id="aV" role="37wK5m" />
                        <node concept="37vLTw" id="aW" role="37wK5m">
                          <ref role="3cqZAo" node="aH" resolve="errorTarget" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="aG" role="3cqZAp">
                  <node concept="3clFbS" id="aX" role="9aQI4">
                    <node concept="3cpWs8" id="aY" role="3cqZAp">
                      <node concept="3cpWsn" id="b0" role="3cpWs9">
                        <property role="TrG5h" value="intentionProvider" />
                        <node concept="3uibUv" id="b1" role="1tU5fm">
                          <ref role="3uigEE" to="2gg1:~BaseQuickFixProvider" resolve="BaseQuickFixProvider" />
                        </node>
                        <node concept="2ShNRf" id="b2" role="33vP2m">
                          <node concept="1pGfFk" id="b3" role="2ShVmc">
                            <ref role="37wK5l" to="2gg1:~BaseQuickFixProvider.&lt;init&gt;(java.lang.String,java.lang.String,boolean)" resolve="BaseQuickFixProvider" />
                            <node concept="Xl_RD" id="b4" role="37wK5m">
                              <property role="Xl_RC" value="jetbrains.mps.lang.resources.typesystem.ReplaceUnneededJBColorLiteral_QuickFix" />
                            </node>
                            <node concept="Xl_RD" id="b5" role="37wK5m">
                              <property role="Xl_RC" value="7139483445243255917" />
                            </node>
                            <node concept="3clFbT" id="b6" role="37wK5m" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="aZ" role="3cqZAp">
                      <node concept="2OqwBi" id="b7" role="3clFbG">
                        <node concept="37vLTw" id="b8" role="2Oq$k0">
                          <ref role="3cqZAo" node="aL" resolve="_reporter_2309309498" />
                        </node>
                        <node concept="liA8E" id="b9" role="2OqNvi">
                          <ref role="37wK5l" to="2gg1:~IErrorReporter.addIntentionProvider(jetbrains.mps.errors.QuickFixProvider)" resolve="addIntentionProvider" />
                          <node concept="37vLTw" id="ba" role="37wK5m">
                            <ref role="3cqZAo" node="b0" resolve="intentionProvider" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="6wLe0" id="aD" role="lGtFl">
                <property role="6wLej" value="7139483445243253644" />
                <property role="6wLeW" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="ao" role="1B3o_S">
        <uo k="s:originTrace" v="n:7139483445243246744" />
      </node>
    </node>
    <node concept="3clFb_" id="aa" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:7139483445243246744" />
      <node concept="3bZ5Sz" id="bb" role="3clF45">
        <uo k="s:originTrace" v="n:7139483445243246744" />
      </node>
      <node concept="3clFbS" id="bc" role="3clF47">
        <uo k="s:originTrace" v="n:7139483445243246744" />
        <node concept="3cpWs6" id="be" role="3cqZAp">
          <uo k="s:originTrace" v="n:7139483445243246744" />
          <node concept="35c_gC" id="bf" role="3cqZAk">
            <ref role="35c_gD" to="1oap:4rOpugPdabk" resolve="JBColorLiteral" />
            <uo k="s:originTrace" v="n:7139483445243246744" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="bd" role="1B3o_S">
        <uo k="s:originTrace" v="n:7139483445243246744" />
      </node>
    </node>
    <node concept="3clFb_" id="ab" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:7139483445243246744" />
      <node concept="37vLTG" id="bg" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:7139483445243246744" />
        <node concept="3Tqbb2" id="bk" role="1tU5fm">
          <uo k="s:originTrace" v="n:7139483445243246744" />
        </node>
      </node>
      <node concept="3clFbS" id="bh" role="3clF47">
        <uo k="s:originTrace" v="n:7139483445243246744" />
        <node concept="9aQIb" id="bl" role="3cqZAp">
          <uo k="s:originTrace" v="n:7139483445243246744" />
          <node concept="3clFbS" id="bm" role="9aQI4">
            <uo k="s:originTrace" v="n:7139483445243246744" />
            <node concept="3cpWs6" id="bn" role="3cqZAp">
              <uo k="s:originTrace" v="n:7139483445243246744" />
              <node concept="2ShNRf" id="bo" role="3cqZAk">
                <uo k="s:originTrace" v="n:7139483445243246744" />
                <node concept="1pGfFk" id="bp" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:7139483445243246744" />
                  <node concept="2OqwBi" id="bq" role="37wK5m">
                    <uo k="s:originTrace" v="n:7139483445243246744" />
                    <node concept="2OqwBi" id="bs" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:7139483445243246744" />
                      <node concept="liA8E" id="bu" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:7139483445243246744" />
                      </node>
                      <node concept="2JrnkZ" id="bv" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:7139483445243246744" />
                        <node concept="37vLTw" id="bw" role="2JrQYb">
                          <ref role="3cqZAo" node="bg" resolve="argument" />
                          <uo k="s:originTrace" v="n:7139483445243246744" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="bt" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:7139483445243246744" />
                      <node concept="1rXfSq" id="bx" role="37wK5m">
                        <ref role="37wK5l" node="aa" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:7139483445243246744" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="br" role="37wK5m">
                    <uo k="s:originTrace" v="n:7139483445243246744" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="bi" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:7139483445243246744" />
      </node>
      <node concept="3Tm1VV" id="bj" role="1B3o_S">
        <uo k="s:originTrace" v="n:7139483445243246744" />
      </node>
    </node>
    <node concept="3clFb_" id="ac" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:7139483445243246744" />
      <node concept="3clFbS" id="by" role="3clF47">
        <uo k="s:originTrace" v="n:7139483445243246744" />
        <node concept="3cpWs6" id="b_" role="3cqZAp">
          <uo k="s:originTrace" v="n:7139483445243246744" />
          <node concept="3clFbT" id="bA" role="3cqZAk">
            <uo k="s:originTrace" v="n:7139483445243246744" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="bz" role="3clF45">
        <uo k="s:originTrace" v="n:7139483445243246744" />
      </node>
      <node concept="3Tm1VV" id="b$" role="1B3o_S">
        <uo k="s:originTrace" v="n:7139483445243246744" />
      </node>
    </node>
    <node concept="3uibUv" id="ad" role="EKbjA">
      <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:7139483445243246744" />
    </node>
    <node concept="3uibUv" id="ae" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractNonTypesystemRule_Runtime" resolve="AbstractNonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:7139483445243246744" />
    </node>
    <node concept="3Tm1VV" id="af" role="1B3o_S">
      <uo k="s:originTrace" v="n:7139483445243246744" />
    </node>
  </node>
  <node concept="312cEu" id="bB">
    <property role="3GE5qa" value="icons.descriptors" />
    <property role="TrG5h" value="check_TextIcon_NonTypesystemRule" />
    <uo k="s:originTrace" v="n:1860120738943484867" />
    <node concept="3clFbW" id="bC" role="jymVt">
      <uo k="s:originTrace" v="n:1860120738943484867" />
      <node concept="3clFbS" id="bK" role="3clF47">
        <uo k="s:originTrace" v="n:1860120738943484867" />
      </node>
      <node concept="3Tm1VV" id="bL" role="1B3o_S">
        <uo k="s:originTrace" v="n:1860120738943484867" />
      </node>
      <node concept="3cqZAl" id="bM" role="3clF45">
        <uo k="s:originTrace" v="n:1860120738943484867" />
      </node>
    </node>
    <node concept="3clFb_" id="bD" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:1860120738943484867" />
      <node concept="3cqZAl" id="bN" role="3clF45">
        <uo k="s:originTrace" v="n:1860120738943484867" />
      </node>
      <node concept="37vLTG" id="bO" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="textIcon" />
        <uo k="s:originTrace" v="n:1860120738943484867" />
        <node concept="3Tqbb2" id="bT" role="1tU5fm">
          <uo k="s:originTrace" v="n:1860120738943484867" />
        </node>
      </node>
      <node concept="37vLTG" id="bP" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:1860120738943484867" />
        <node concept="3uibUv" id="bU" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:1860120738943484867" />
        </node>
      </node>
      <node concept="37vLTG" id="bQ" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:1860120738943484867" />
        <node concept="3uibUv" id="bV" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:1860120738943484867" />
        </node>
      </node>
      <node concept="3clFbS" id="bR" role="3clF47">
        <uo k="s:originTrace" v="n:1860120738943484868" />
        <node concept="3cpWs8" id="bW" role="3cqZAp">
          <uo k="s:originTrace" v="n:1860120738943424034" />
          <node concept="3cpWsn" id="bZ" role="3cpWs9">
            <property role="TrG5h" value="usedIds" />
            <uo k="s:originTrace" v="n:1860120738943424037" />
            <node concept="2hMVRd" id="c0" role="1tU5fm">
              <uo k="s:originTrace" v="n:1860120738943424032" />
              <node concept="17QB3L" id="c2" role="2hN53Y">
                <uo k="s:originTrace" v="n:1860120738943424056" />
              </node>
            </node>
            <node concept="2ShNRf" id="c1" role="33vP2m">
              <uo k="s:originTrace" v="n:1860120738943424171" />
              <node concept="2i4dXS" id="c3" role="2ShVmc">
                <uo k="s:originTrace" v="n:1860120738943424166" />
                <node concept="17QB3L" id="c4" role="HW$YZ">
                  <uo k="s:originTrace" v="n:1860120738943424167" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="bX" role="3cqZAp">
          <uo k="s:originTrace" v="n:1860120738943424226" />
          <node concept="2GrKxI" id="c5" role="2Gsz3X">
            <property role="TrG5h" value="ti" />
            <uo k="s:originTrace" v="n:1860120738943424228" />
          </node>
          <node concept="2OqwBi" id="c6" role="2GsD0m">
            <uo k="s:originTrace" v="n:1860120738943424731" />
            <node concept="2OqwBi" id="c8" role="2Oq$k0">
              <uo k="s:originTrace" v="n:1860120738943487105" />
              <node concept="37vLTw" id="ca" role="2Oq$k0">
                <ref role="3cqZAo" node="bO" resolve="textIcon" />
                <uo k="s:originTrace" v="n:1860120738943486656" />
              </node>
              <node concept="I4A8Y" id="cb" role="2OqNvi">
                <uo k="s:originTrace" v="n:1860120738943488068" />
              </node>
            </node>
            <node concept="2SmgA7" id="c9" role="2OqNvi">
              <uo k="s:originTrace" v="n:1860120738943426146" />
              <node concept="chp4Y" id="cc" role="1dBWTz">
                <ref role="cht4Q" to="1oap:2p1v3tObwP5" resolve="TextIcon" />
                <uo k="s:originTrace" v="n:1860120738943426182" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="c7" role="2LFqv$">
            <uo k="s:originTrace" v="n:1860120738943424232" />
            <node concept="3clFbJ" id="cd" role="3cqZAp">
              <uo k="s:originTrace" v="n:1860120738943489912" />
              <node concept="3clFbS" id="cg" role="3clFbx">
                <uo k="s:originTrace" v="n:1860120738943489914" />
                <node concept="9aQIb" id="ci" role="3cqZAp">
                  <uo k="s:originTrace" v="n:1860120738943515427" />
                  <node concept="3clFbS" id="ck" role="9aQI4">
                    <node concept="3cpWs8" id="cm" role="3cqZAp">
                      <node concept="3cpWsn" id="co" role="3cpWs9">
                        <property role="TrG5h" value="errorTarget" />
                        <property role="3TUv4t" value="true" />
                        <node concept="3uibUv" id="cp" role="1tU5fm">
                          <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                        </node>
                        <node concept="2ShNRf" id="cq" role="33vP2m">
                          <uo k="s:originTrace" v="n:1860120738943536311" />
                          <node concept="1pGfFk" id="cr" role="2ShVmc">
                            <ref role="37wK5l" to="zavc:~PropertyMessageTarget.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty)" resolve="PropertyMessageTarget" />
                            <uo k="s:originTrace" v="n:1860120738943536311" />
                            <node concept="355D3s" id="cs" role="37wK5m">
                              <ref role="355D3t" to="1oap:2p1v3tObwP5" resolve="TextIcon" />
                              <ref role="355D3u" to="1oap:1brHjIQHw0T" resolve="iconId" />
                              <uo k="s:originTrace" v="n:1860120738943536311" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="cn" role="3cqZAp">
                      <node concept="3cpWsn" id="ct" role="3cpWs9">
                        <property role="TrG5h" value="_reporter_2309309498" />
                        <node concept="3uibUv" id="cu" role="1tU5fm">
                          <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                        </node>
                        <node concept="2OqwBi" id="cv" role="33vP2m">
                          <node concept="3VmV3z" id="cw" role="2Oq$k0">
                            <property role="3VnrPo" value="typeCheckingContext" />
                            <node concept="3uibUv" id="cy" role="3Vn4Tt">
                              <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                            </node>
                          </node>
                          <node concept="liA8E" id="cx" role="2OqNvi">
                            <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                            <node concept="2GrUjf" id="cz" role="37wK5m">
                              <ref role="2Gs0qQ" node="c5" resolve="ti" />
                              <uo k="s:originTrace" v="n:1860120738943515443" />
                            </node>
                            <node concept="Xl_RD" id="c$" role="37wK5m">
                              <property role="Xl_RC" value="duplicate ID" />
                              <uo k="s:originTrace" v="n:1860120738943515478" />
                            </node>
                            <node concept="Xl_RD" id="c_" role="37wK5m">
                              <property role="Xl_RC" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
                            </node>
                            <node concept="Xl_RD" id="cA" role="37wK5m">
                              <property role="Xl_RC" value="1860120738943515427" />
                            </node>
                            <node concept="10Nm6u" id="cB" role="37wK5m" />
                            <node concept="37vLTw" id="cC" role="37wK5m">
                              <ref role="3cqZAo" node="co" resolve="errorTarget" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="6wLe0" id="cl" role="lGtFl">
                    <property role="6wLej" value="1860120738943515427" />
                    <property role="6wLeW" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
                  </node>
                </node>
                <node concept="3zACq4" id="cj" role="3cqZAp">
                  <uo k="s:originTrace" v="n:1860120738943515423" />
                </node>
              </node>
              <node concept="2OqwBi" id="ch" role="3clFbw">
                <uo k="s:originTrace" v="n:1860120738943501452" />
                <node concept="37vLTw" id="cD" role="2Oq$k0">
                  <ref role="3cqZAo" node="bZ" resolve="usedIds" />
                  <uo k="s:originTrace" v="n:1860120738943499214" />
                </node>
                <node concept="3JPx81" id="cE" role="2OqNvi">
                  <uo k="s:originTrace" v="n:1860120738943513205" />
                  <node concept="2OqwBi" id="cF" role="25WWJ7">
                    <uo k="s:originTrace" v="n:1860120738943513975" />
                    <node concept="2GrUjf" id="cG" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="c5" resolve="ti" />
                      <uo k="s:originTrace" v="n:1860120738943513333" />
                    </node>
                    <node concept="3TrcHB" id="cH" role="2OqNvi">
                      <ref role="3TsBF5" to="1oap:1brHjIQHw0T" resolve="iconId" />
                      <uo k="s:originTrace" v="n:1860120738943515159" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="ce" role="3cqZAp">
              <uo k="s:originTrace" v="n:1860120738943516001" />
            </node>
            <node concept="3clFbF" id="cf" role="3cqZAp">
              <uo k="s:originTrace" v="n:1860120738943516032" />
              <node concept="2OqwBi" id="cI" role="3clFbG">
                <uo k="s:originTrace" v="n:1860120738943517837" />
                <node concept="37vLTw" id="cJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="bZ" resolve="usedIds" />
                  <uo k="s:originTrace" v="n:1860120738943516030" />
                </node>
                <node concept="TSZUe" id="cK" role="2OqNvi">
                  <uo k="s:originTrace" v="n:1860120738943522280" />
                  <node concept="2OqwBi" id="cL" role="25WWJ7">
                    <uo k="s:originTrace" v="n:1860120738943525333" />
                    <node concept="2GrUjf" id="cM" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="c5" resolve="ti" />
                      <uo k="s:originTrace" v="n:1860120738943523673" />
                    </node>
                    <node concept="3TrcHB" id="cN" role="2OqNvi">
                      <ref role="3TsBF5" to="1oap:1brHjIQHw0T" resolve="iconId" />
                      <uo k="s:originTrace" v="n:1860120738943528094" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="bY" role="3cqZAp">
          <uo k="s:originTrace" v="n:2063474025451472582" />
          <node concept="3clFbS" id="cO" role="3clFbx">
            <uo k="s:originTrace" v="n:2063474025451472584" />
            <node concept="3clFbJ" id="cR" role="3cqZAp">
              <uo k="s:originTrace" v="n:2063474025451538875" />
              <node concept="3clFbS" id="cS" role="3clFbx">
                <uo k="s:originTrace" v="n:2063474025451538877" />
                <node concept="9aQIb" id="cU" role="3cqZAp">
                  <uo k="s:originTrace" v="n:2063474025451538288" />
                  <node concept="3clFbS" id="cV" role="9aQI4">
                    <node concept="3cpWs8" id="cX" role="3cqZAp">
                      <node concept="3cpWsn" id="cZ" role="3cpWs9">
                        <property role="TrG5h" value="errorTarget" />
                        <property role="3TUv4t" value="true" />
                        <node concept="3uibUv" id="d0" role="1tU5fm">
                          <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                        </node>
                        <node concept="2ShNRf" id="d1" role="33vP2m">
                          <node concept="1pGfFk" id="d2" role="2ShVmc">
                            <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="cY" role="3cqZAp">
                      <node concept="3cpWsn" id="d3" role="3cpWs9">
                        <property role="TrG5h" value="_reporter_2309309498" />
                        <node concept="3uibUv" id="d4" role="1tU5fm">
                          <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                        </node>
                        <node concept="2OqwBi" id="d5" role="33vP2m">
                          <node concept="3VmV3z" id="d6" role="2Oq$k0">
                            <property role="3VnrPo" value="typeCheckingContext" />
                            <node concept="3uibUv" id="d8" role="3Vn4Tt">
                              <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                            </node>
                          </node>
                          <node concept="liA8E" id="d7" role="2OqNvi">
                            <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportWarning(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportWarning" />
                            <node concept="37vLTw" id="d9" role="37wK5m">
                              <ref role="3cqZAo" node="bO" resolve="textIcon" />
                              <uo k="s:originTrace" v="n:2063474025451538291" />
                            </node>
                            <node concept="Xl_RD" id="da" role="37wK5m">
                              <property role="Xl_RC" value="No layers have specified." />
                              <uo k="s:originTrace" v="n:2063474025451538290" />
                            </node>
                            <node concept="Xl_RD" id="db" role="37wK5m">
                              <property role="Xl_RC" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
                            </node>
                            <node concept="Xl_RD" id="dc" role="37wK5m">
                              <property role="Xl_RC" value="2063474025451538288" />
                            </node>
                            <node concept="10Nm6u" id="dd" role="37wK5m" />
                            <node concept="37vLTw" id="de" role="37wK5m">
                              <ref role="3cqZAo" node="cZ" resolve="errorTarget" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="6wLe0" id="cW" role="lGtFl">
                    <property role="6wLej" value="2063474025451538288" />
                    <property role="6wLeW" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="cT" role="3clFbw">
                <uo k="s:originTrace" v="n:2063474025451502816" />
                <node concept="2OqwBi" id="df" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:2063474025451501670" />
                  <node concept="37vLTw" id="dh" role="2Oq$k0">
                    <ref role="3cqZAo" node="bO" resolve="textIcon" />
                    <uo k="s:originTrace" v="n:2063474025451500497" />
                  </node>
                  <node concept="3Tsc0h" id="di" role="2OqNvi">
                    <ref role="3TtcxE" to="1oap:2p1v3tObwTA" resolve="layers" />
                    <uo k="s:originTrace" v="n:2063474025451502226" />
                  </node>
                </node>
                <node concept="1v1jN8" id="dg" role="2OqNvi">
                  <uo k="s:originTrace" v="n:2063474025451517796" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="cP" role="3clFbw">
            <uo k="s:originTrace" v="n:2063474025451483504" />
            <node concept="2OqwBi" id="dj" role="2Oq$k0">
              <uo k="s:originTrace" v="n:2063474025451473062" />
              <node concept="37vLTw" id="dl" role="2Oq$k0">
                <ref role="3cqZAo" node="bO" resolve="textIcon" />
                <uo k="s:originTrace" v="n:2063474025451473048" />
              </node>
              <node concept="3Tsc0h" id="dm" role="2OqNvi">
                <ref role="3TtcxE" to="1oap:7MKI4BBUT$V" resolve="newuiLayers" />
                <uo k="s:originTrace" v="n:2063474025451475317" />
              </node>
            </node>
            <node concept="1v1jN8" id="dk" role="2OqNvi">
              <uo k="s:originTrace" v="n:2063474025451496586" />
            </node>
          </node>
          <node concept="9aQIb" id="cQ" role="9aQIa">
            <uo k="s:originTrace" v="n:2063474025451540082" />
            <node concept="3clFbS" id="dn" role="9aQI4">
              <uo k="s:originTrace" v="n:2063474025451540083" />
              <node concept="3clFbJ" id="do" role="3cqZAp">
                <uo k="s:originTrace" v="n:2063474025451336393" />
                <node concept="3clFbS" id="dp" role="3clFbx">
                  <uo k="s:originTrace" v="n:2063474025451336395" />
                  <node concept="9aQIb" id="dr" role="3cqZAp">
                    <uo k="s:originTrace" v="n:2063474025451361217" />
                    <node concept="3clFbS" id="ds" role="9aQI4">
                      <node concept="3cpWs8" id="du" role="3cqZAp">
                        <node concept="3cpWsn" id="dw" role="3cpWs9">
                          <property role="TrG5h" value="errorTarget" />
                          <property role="3TUv4t" value="true" />
                          <node concept="3uibUv" id="dx" role="1tU5fm">
                            <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                          </node>
                          <node concept="2ShNRf" id="dy" role="33vP2m">
                            <node concept="1pGfFk" id="dz" role="2ShVmc">
                              <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="dv" role="3cqZAp">
                        <node concept="3cpWsn" id="d$" role="3cpWs9">
                          <property role="TrG5h" value="_reporter_2309309498" />
                          <node concept="3uibUv" id="d_" role="1tU5fm">
                            <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                          </node>
                          <node concept="2OqwBi" id="dA" role="33vP2m">
                            <node concept="3VmV3z" id="dB" role="2Oq$k0">
                              <property role="3VnrPo" value="typeCheckingContext" />
                              <node concept="3uibUv" id="dD" role="3Vn4Tt">
                                <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                              </node>
                            </node>
                            <node concept="liA8E" id="dC" role="2OqNvi">
                              <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                              <node concept="37vLTw" id="dE" role="37wK5m">
                                <ref role="3cqZAo" node="bO" resolve="textIcon" />
                                <uo k="s:originTrace" v="n:2063474025451361347" />
                              </node>
                              <node concept="Xl_RD" id="dF" role="37wK5m">
                                <property role="Xl_RC" value="Missing a layer applicable to the default (light) theme." />
                                <uo k="s:originTrace" v="n:2063474025451361229" />
                              </node>
                              <node concept="Xl_RD" id="dG" role="37wK5m">
                                <property role="Xl_RC" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
                              </node>
                              <node concept="Xl_RD" id="dH" role="37wK5m">
                                <property role="Xl_RC" value="2063474025451361217" />
                              </node>
                              <node concept="10Nm6u" id="dI" role="37wK5m" />
                              <node concept="37vLTw" id="dJ" role="37wK5m">
                                <ref role="3cqZAo" node="dw" resolve="errorTarget" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="6wLe0" id="dt" role="lGtFl">
                      <property role="6wLej" value="2063474025451361217" />
                      <property role="6wLeW" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="dq" role="3clFbw">
                  <uo k="s:originTrace" v="n:2063474025451345675" />
                  <node concept="2OqwBi" id="dK" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:2063474025451337106" />
                    <node concept="37vLTw" id="dM" role="2Oq$k0">
                      <ref role="3cqZAo" node="bO" resolve="textIcon" />
                      <uo k="s:originTrace" v="n:2063474025451336408" />
                    </node>
                    <node concept="3Tsc0h" id="dN" role="2OqNvi">
                      <ref role="3TtcxE" to="1oap:7MKI4BBUT$V" resolve="newuiLayers" />
                      <uo k="s:originTrace" v="n:2063474025451338325" />
                    </node>
                  </node>
                  <node concept="2HxqBE" id="dL" role="2OqNvi">
                    <uo k="s:originTrace" v="n:2063474025451355567" />
                    <node concept="1bVj0M" id="dO" role="23t8la">
                      <uo k="s:originTrace" v="n:2063474025451355569" />
                      <node concept="3clFbS" id="dP" role="1bW5cS">
                        <uo k="s:originTrace" v="n:2063474025451355570" />
                        <node concept="3clFbF" id="dR" role="3cqZAp">
                          <uo k="s:originTrace" v="n:2063474025451356229" />
                          <node concept="2OqwBi" id="dS" role="3clFbG">
                            <uo k="s:originTrace" v="n:2063474025451357339" />
                            <node concept="1PxgMI" id="dT" role="2Oq$k0">
                              <property role="1BlNFB" value="true" />
                              <uo k="s:originTrace" v="n:4188043193672062937" />
                              <node concept="chp4Y" id="dV" role="3oSUPX">
                                <ref role="cht4Q" to="1oap:3CuULxINGAz" resolve="IThemeKindSpecific" />
                                <uo k="s:originTrace" v="n:4188043193672063209" />
                              </node>
                              <node concept="37vLTw" id="dW" role="1m5AlR">
                                <ref role="3cqZAo" node="dQ" resolve="it" />
                                <uo k="s:originTrace" v="n:2063474025451356228" />
                              </node>
                            </node>
                            <node concept="3zqWPK" id="dU" role="2OqNvi">
                              <ref role="37wK5l" to="3767:3CuULxINXoF" resolve="isSpecificFor" />
                              <uo k="s:originTrace" v="n:8085146484218845382" />
                              <node concept="35c_gC" id="dX" role="37wK5m">
                                <ref role="35c_gD" to="1oap:4rOpugP5j8_" resolve="DarkTargetThemes" />
                                <uo k="s:originTrace" v="n:8085146484218845384" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="dQ" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <uo k="s:originTrace" v="n:2063474025451355571" />
                        <node concept="2jxLKc" id="dY" role="1tU5fm">
                          <uo k="s:originTrace" v="n:2063474025451355572" />
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
      <node concept="3Tm1VV" id="bS" role="1B3o_S">
        <uo k="s:originTrace" v="n:1860120738943484867" />
      </node>
    </node>
    <node concept="3clFb_" id="bE" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:1860120738943484867" />
      <node concept="3bZ5Sz" id="dZ" role="3clF45">
        <uo k="s:originTrace" v="n:1860120738943484867" />
      </node>
      <node concept="3clFbS" id="e0" role="3clF47">
        <uo k="s:originTrace" v="n:1860120738943484867" />
        <node concept="3cpWs6" id="e2" role="3cqZAp">
          <uo k="s:originTrace" v="n:1860120738943484867" />
          <node concept="35c_gC" id="e3" role="3cqZAk">
            <ref role="35c_gD" to="1oap:2p1v3tObwP5" resolve="TextIcon" />
            <uo k="s:originTrace" v="n:1860120738943484867" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="e1" role="1B3o_S">
        <uo k="s:originTrace" v="n:1860120738943484867" />
      </node>
    </node>
    <node concept="3clFb_" id="bF" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:1860120738943484867" />
      <node concept="37vLTG" id="e4" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:1860120738943484867" />
        <node concept="3Tqbb2" id="e8" role="1tU5fm">
          <uo k="s:originTrace" v="n:1860120738943484867" />
        </node>
      </node>
      <node concept="3clFbS" id="e5" role="3clF47">
        <uo k="s:originTrace" v="n:1860120738943484867" />
        <node concept="9aQIb" id="e9" role="3cqZAp">
          <uo k="s:originTrace" v="n:1860120738943484867" />
          <node concept="3clFbS" id="ea" role="9aQI4">
            <uo k="s:originTrace" v="n:1860120738943484867" />
            <node concept="3cpWs6" id="eb" role="3cqZAp">
              <uo k="s:originTrace" v="n:1860120738943484867" />
              <node concept="2ShNRf" id="ec" role="3cqZAk">
                <uo k="s:originTrace" v="n:1860120738943484867" />
                <node concept="1pGfFk" id="ed" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:1860120738943484867" />
                  <node concept="2OqwBi" id="ee" role="37wK5m">
                    <uo k="s:originTrace" v="n:1860120738943484867" />
                    <node concept="2OqwBi" id="eg" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:1860120738943484867" />
                      <node concept="liA8E" id="ei" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:1860120738943484867" />
                      </node>
                      <node concept="2JrnkZ" id="ej" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:1860120738943484867" />
                        <node concept="37vLTw" id="ek" role="2JrQYb">
                          <ref role="3cqZAo" node="e4" resolve="argument" />
                          <uo k="s:originTrace" v="n:1860120738943484867" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="eh" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:1860120738943484867" />
                      <node concept="1rXfSq" id="el" role="37wK5m">
                        <ref role="37wK5l" node="bE" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:1860120738943484867" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="ef" role="37wK5m">
                    <uo k="s:originTrace" v="n:1860120738943484867" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="e6" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:1860120738943484867" />
      </node>
      <node concept="3Tm1VV" id="e7" role="1B3o_S">
        <uo k="s:originTrace" v="n:1860120738943484867" />
      </node>
    </node>
    <node concept="3clFb_" id="bG" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:1860120738943484867" />
      <node concept="3clFbS" id="em" role="3clF47">
        <uo k="s:originTrace" v="n:1860120738943484867" />
        <node concept="3cpWs6" id="ep" role="3cqZAp">
          <uo k="s:originTrace" v="n:1860120738943484867" />
          <node concept="3clFbT" id="eq" role="3cqZAk">
            <uo k="s:originTrace" v="n:1860120738943484867" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="en" role="3clF45">
        <uo k="s:originTrace" v="n:1860120738943484867" />
      </node>
      <node concept="3Tm1VV" id="eo" role="1B3o_S">
        <uo k="s:originTrace" v="n:1860120738943484867" />
      </node>
    </node>
    <node concept="3uibUv" id="bH" role="EKbjA">
      <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:1860120738943484867" />
    </node>
    <node concept="3uibUv" id="bI" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractNonTypesystemRule_Runtime" resolve="AbstractNonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:1860120738943484867" />
    </node>
    <node concept="3Tm1VV" id="bJ" role="1B3o_S">
      <uo k="s:originTrace" v="n:1860120738943484867" />
    </node>
  </node>
  <node concept="312cEu" id="er">
    <property role="3GE5qa" value="url" />
    <property role="TrG5h" value="check_URLLiteral_NonTypesystemRule" />
    <uo k="s:originTrace" v="n:4726480899534397116" />
    <node concept="3clFbW" id="es" role="jymVt">
      <uo k="s:originTrace" v="n:4726480899534397116" />
      <node concept="3clFbS" id="e$" role="3clF47">
        <uo k="s:originTrace" v="n:4726480899534397116" />
      </node>
      <node concept="3Tm1VV" id="e_" role="1B3o_S">
        <uo k="s:originTrace" v="n:4726480899534397116" />
      </node>
      <node concept="3cqZAl" id="eA" role="3clF45">
        <uo k="s:originTrace" v="n:4726480899534397116" />
      </node>
    </node>
    <node concept="3clFb_" id="et" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:4726480899534397116" />
      <node concept="3cqZAl" id="eB" role="3clF45">
        <uo k="s:originTrace" v="n:4726480899534397116" />
      </node>
      <node concept="37vLTG" id="eC" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="url" />
        <uo k="s:originTrace" v="n:4726480899534397116" />
        <node concept="3Tqbb2" id="eH" role="1tU5fm">
          <uo k="s:originTrace" v="n:4726480899534397116" />
        </node>
      </node>
      <node concept="37vLTG" id="eD" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:4726480899534397116" />
        <node concept="3uibUv" id="eI" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:4726480899534397116" />
        </node>
      </node>
      <node concept="37vLTG" id="eE" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:4726480899534397116" />
        <node concept="3uibUv" id="eJ" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:4726480899534397116" />
        </node>
      </node>
      <node concept="3clFbS" id="eF" role="3clF47">
        <uo k="s:originTrace" v="n:4726480899534397117" />
        <node concept="3clFbJ" id="eK" role="3cqZAp">
          <uo k="s:originTrace" v="n:4726480899534397126" />
          <node concept="3clFbS" id="eM" role="3clFbx">
            <uo k="s:originTrace" v="n:4726480899534397127" />
            <node concept="3cpWs6" id="eO" role="3cqZAp">
              <uo k="s:originTrace" v="n:4726480899534397128" />
            </node>
          </node>
          <node concept="2OqwBi" id="eN" role="3clFbw">
            <uo k="s:originTrace" v="n:4726480899534397129" />
            <node concept="2OqwBi" id="eP" role="2Oq$k0">
              <uo k="s:originTrace" v="n:4726480899534397130" />
              <node concept="37vLTw" id="eR" role="2Oq$k0">
                <ref role="3cqZAo" node="eC" resolve="url" />
                <uo k="s:originTrace" v="n:4726480899534397131" />
              </node>
              <node concept="3TrcHB" id="eS" role="2OqNvi">
                <ref role="3TsBF5" to="1oap:46nPloeqzzN" resolve="url" />
                <uo k="s:originTrace" v="n:4726480899534397132" />
              </node>
            </node>
            <node concept="17RlXB" id="eQ" role="2OqNvi">
              <uo k="s:originTrace" v="n:4726480899534397133" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="eL" role="3cqZAp">
          <uo k="s:originTrace" v="n:4726480899534397135" />
          <node concept="2YIFZM" id="eT" role="3clFbG">
            <ref role="37wK5l" node="5F" resolve="check" />
            <ref role="1Pybhc" node="5E" resolve="URLCheckUtil" />
            <uo k="s:originTrace" v="n:4726480899534397136" />
            <node concept="3VmV3z" id="eU" role="37wK5m">
              <property role="3VnrPo" value="typeCheckingContext" />
              <node concept="3uibUv" id="eX" role="3Vn4Tt">
                <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
              </node>
            </node>
            <node concept="37vLTw" id="eV" role="37wK5m">
              <ref role="3cqZAo" node="eC" resolve="url" />
              <uo k="s:originTrace" v="n:4726480899534397137" />
            </node>
            <node concept="2OqwBi" id="eW" role="37wK5m">
              <uo k="s:originTrace" v="n:4726480899534397138" />
              <node concept="37vLTw" id="eY" role="2Oq$k0">
                <ref role="3cqZAo" node="eC" resolve="url" />
                <uo k="s:originTrace" v="n:4726480899534397139" />
              </node>
              <node concept="3TrcHB" id="eZ" role="2OqNvi">
                <ref role="3TsBF5" to="1oap:46nPloeqzzN" resolve="url" />
                <uo k="s:originTrace" v="n:4726480899534400129" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="eG" role="1B3o_S">
        <uo k="s:originTrace" v="n:4726480899534397116" />
      </node>
    </node>
    <node concept="3clFb_" id="eu" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:4726480899534397116" />
      <node concept="3bZ5Sz" id="f0" role="3clF45">
        <uo k="s:originTrace" v="n:4726480899534397116" />
      </node>
      <node concept="3clFbS" id="f1" role="3clF47">
        <uo k="s:originTrace" v="n:4726480899534397116" />
        <node concept="3cpWs6" id="f3" role="3cqZAp">
          <uo k="s:originTrace" v="n:4726480899534397116" />
          <node concept="35c_gC" id="f4" role="3cqZAk">
            <ref role="35c_gD" to="1oap:46nPloeqzyS" resolve="BaseURLLiteral" />
            <uo k="s:originTrace" v="n:4726480899534397116" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="f2" role="1B3o_S">
        <uo k="s:originTrace" v="n:4726480899534397116" />
      </node>
    </node>
    <node concept="3clFb_" id="ev" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:4726480899534397116" />
      <node concept="37vLTG" id="f5" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:4726480899534397116" />
        <node concept="3Tqbb2" id="f9" role="1tU5fm">
          <uo k="s:originTrace" v="n:4726480899534397116" />
        </node>
      </node>
      <node concept="3clFbS" id="f6" role="3clF47">
        <uo k="s:originTrace" v="n:4726480899534397116" />
        <node concept="9aQIb" id="fa" role="3cqZAp">
          <uo k="s:originTrace" v="n:4726480899534397116" />
          <node concept="3clFbS" id="fb" role="9aQI4">
            <uo k="s:originTrace" v="n:4726480899534397116" />
            <node concept="3cpWs6" id="fc" role="3cqZAp">
              <uo k="s:originTrace" v="n:4726480899534397116" />
              <node concept="2ShNRf" id="fd" role="3cqZAk">
                <uo k="s:originTrace" v="n:4726480899534397116" />
                <node concept="1pGfFk" id="fe" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:4726480899534397116" />
                  <node concept="2OqwBi" id="ff" role="37wK5m">
                    <uo k="s:originTrace" v="n:4726480899534397116" />
                    <node concept="2OqwBi" id="fh" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:4726480899534397116" />
                      <node concept="liA8E" id="fj" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:4726480899534397116" />
                      </node>
                      <node concept="2JrnkZ" id="fk" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:4726480899534397116" />
                        <node concept="37vLTw" id="fl" role="2JrQYb">
                          <ref role="3cqZAo" node="f5" resolve="argument" />
                          <uo k="s:originTrace" v="n:4726480899534397116" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="fi" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:4726480899534397116" />
                      <node concept="1rXfSq" id="fm" role="37wK5m">
                        <ref role="37wK5l" node="eu" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:4726480899534397116" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="fg" role="37wK5m">
                    <uo k="s:originTrace" v="n:4726480899534397116" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="f7" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:4726480899534397116" />
      </node>
      <node concept="3Tm1VV" id="f8" role="1B3o_S">
        <uo k="s:originTrace" v="n:4726480899534397116" />
      </node>
    </node>
    <node concept="3clFb_" id="ew" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:4726480899534397116" />
      <node concept="3clFbS" id="fn" role="3clF47">
        <uo k="s:originTrace" v="n:4726480899534397116" />
        <node concept="3cpWs6" id="fq" role="3cqZAp">
          <uo k="s:originTrace" v="n:4726480899534397116" />
          <node concept="3clFbT" id="fr" role="3cqZAk">
            <uo k="s:originTrace" v="n:4726480899534397116" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="fo" role="3clF45">
        <uo k="s:originTrace" v="n:4726480899534397116" />
      </node>
      <node concept="3Tm1VV" id="fp" role="1B3o_S">
        <uo k="s:originTrace" v="n:4726480899534397116" />
      </node>
    </node>
    <node concept="3uibUv" id="ex" role="EKbjA">
      <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:4726480899534397116" />
    </node>
    <node concept="3uibUv" id="ey" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractNonTypesystemRule_Runtime" resolve="AbstractNonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:4726480899534397116" />
    </node>
    <node concept="3Tm1VV" id="ez" role="1B3o_S">
      <uo k="s:originTrace" v="n:4726480899534397116" />
    </node>
  </node>
  <node concept="312cEu" id="fs">
    <property role="3GE5qa" value="url" />
    <property role="TrG5h" value="typeof_BaseURLFunction_InferenceRule" />
    <uo k="s:originTrace" v="n:3569916352002218904" />
    <node concept="3clFbW" id="ft" role="jymVt">
      <uo k="s:originTrace" v="n:3569916352002218904" />
      <node concept="3clFbS" id="f_" role="3clF47">
        <uo k="s:originTrace" v="n:3569916352002218904" />
      </node>
      <node concept="3Tm1VV" id="fA" role="1B3o_S">
        <uo k="s:originTrace" v="n:3569916352002218904" />
      </node>
      <node concept="3cqZAl" id="fB" role="3clF45">
        <uo k="s:originTrace" v="n:3569916352002218904" />
      </node>
    </node>
    <node concept="3clFb_" id="fu" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:3569916352002218904" />
      <node concept="3cqZAl" id="fC" role="3clF45">
        <uo k="s:originTrace" v="n:3569916352002218904" />
      </node>
      <node concept="37vLTG" id="fD" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="url" />
        <uo k="s:originTrace" v="n:3569916352002218904" />
        <node concept="3Tqbb2" id="fI" role="1tU5fm">
          <uo k="s:originTrace" v="n:3569916352002218904" />
        </node>
      </node>
      <node concept="37vLTG" id="fE" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:3569916352002218904" />
        <node concept="3uibUv" id="fJ" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:3569916352002218904" />
        </node>
      </node>
      <node concept="37vLTG" id="fF" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:3569916352002218904" />
        <node concept="3uibUv" id="fK" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:3569916352002218904" />
        </node>
      </node>
      <node concept="3clFbS" id="fG" role="3clF47">
        <uo k="s:originTrace" v="n:3569916352002218905" />
        <node concept="3clFbJ" id="fL" role="3cqZAp">
          <uo k="s:originTrace" v="n:3569916352002253219" />
          <node concept="3fqX7Q" id="fM" role="3clFbw">
            <node concept="2OqwBi" id="fP" role="3fr31v">
              <node concept="3VmV3z" id="fQ" role="2Oq$k0">
                <property role="3VnrPo" value="typeCheckingContext" />
                <node concept="3uibUv" id="fS" role="3Vn4Tt">
                  <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                </node>
              </node>
              <node concept="liA8E" id="fR" role="2OqNvi">
                <ref role="37wK5l" to="u78q:~TypeCheckingContext.isSingleTypeComputation()" resolve="isSingleTypeComputation" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="fN" role="3clFbx">
            <node concept="9aQIb" id="fT" role="3cqZAp">
              <node concept="3clFbS" id="fU" role="9aQI4">
                <node concept="3cpWs8" id="fV" role="3cqZAp">
                  <node concept="3cpWsn" id="fY" role="3cpWs9">
                    <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                    <node concept="2OqwBi" id="fZ" role="33vP2m">
                      <uo k="s:originTrace" v="n:3569916352002253227" />
                      <node concept="37vLTw" id="g1" role="2Oq$k0">
                        <ref role="3cqZAo" node="fD" resolve="url" />
                        <uo k="s:originTrace" v="n:3569916352002253228" />
                      </node>
                      <node concept="3TrEf2" id="g2" role="2OqNvi">
                        <ref role="3Tt5mk" to="1oap:46nPloeqmpn" resolve="calculator" />
                        <uo k="s:originTrace" v="n:3569916352002253229" />
                      </node>
                      <node concept="6wLe0" id="g3" role="lGtFl">
                        <property role="6wLej" value="3569916352002253219" />
                        <property role="6wLeW" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="g0" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="fW" role="3cqZAp">
                  <node concept="3cpWsn" id="g4" role="3cpWs9">
                    <property role="TrG5h" value="_info_12389875345" />
                    <node concept="3uibUv" id="g5" role="1tU5fm">
                      <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                    </node>
                    <node concept="2ShNRf" id="g6" role="33vP2m">
                      <node concept="1pGfFk" id="g7" role="2ShVmc">
                        <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                        <node concept="37vLTw" id="g8" role="37wK5m">
                          <ref role="3cqZAo" node="fY" resolve="_nodeToCheck_1029348928467" />
                        </node>
                        <node concept="Xl_RD" id="g9" role="37wK5m">
                          <property role="Xl_RC" value="URL function must be of type { =&gt; String}" />
                          <uo k="s:originTrace" v="n:3569916352002264849" />
                        </node>
                        <node concept="Xl_RD" id="ga" role="37wK5m">
                          <property role="Xl_RC" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="gb" role="37wK5m">
                          <property role="Xl_RC" value="3569916352002253219" />
                        </node>
                        <node concept="3cmrfG" id="gc" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="10Nm6u" id="gd" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="fX" role="3cqZAp">
                  <node concept="2OqwBi" id="ge" role="3clFbG">
                    <node concept="3VmV3z" id="gf" role="2Oq$k0">
                      <property role="3VnrPo" value="typeCheckingContext" />
                      <node concept="3uibUv" id="gh" role="3Vn4Tt">
                        <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                      </node>
                    </node>
                    <node concept="liA8E" id="gg" role="2OqNvi">
                      <ref role="37wK5l" to="u78q:~TypeCheckingContext.createLessThanInequality(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,boolean,boolean,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createLessThanInequality" />
                      <node concept="10QFUN" id="gi" role="37wK5m">
                        <uo k="s:originTrace" v="n:3569916352002253225" />
                        <node concept="3uibUv" id="gn" role="10QFUM">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                        <node concept="2OqwBi" id="go" role="10QFUP">
                          <uo k="s:originTrace" v="n:3569916352002253226" />
                          <node concept="3VmV3z" id="gp" role="2Oq$k0">
                            <property role="3VnrPo" value="typeCheckingContext" />
                            <node concept="3uibUv" id="gs" role="3Vn4Tt">
                              <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                            </node>
                          </node>
                          <node concept="liA8E" id="gq" role="2OqNvi">
                            <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                            <node concept="3VmV3z" id="gt" role="37wK5m">
                              <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                              <node concept="3uibUv" id="gx" role="3Vn4Tt">
                                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="gu" role="37wK5m">
                              <property role="Xl_RC" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
                            </node>
                            <node concept="Xl_RD" id="gv" role="37wK5m">
                              <property role="Xl_RC" value="3569916352002253226" />
                            </node>
                            <node concept="3clFbT" id="gw" role="37wK5m">
                              <property role="3clFbU" value="true" />
                            </node>
                          </node>
                          <node concept="6wLe0" id="gr" role="lGtFl">
                            <property role="6wLej" value="3569916352002253226" />
                            <property role="6wLeW" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
                          </node>
                        </node>
                      </node>
                      <node concept="10QFUN" id="gj" role="37wK5m">
                        <uo k="s:originTrace" v="n:3569916352002253221" />
                        <node concept="3uibUv" id="gy" role="10QFUM">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                        <node concept="2c44tf" id="gz" role="10QFUP">
                          <uo k="s:originTrace" v="n:3569916352002253222" />
                          <node concept="1ajhzC" id="g$" role="2c44tc">
                            <uo k="s:originTrace" v="n:4249179297012706794" />
                            <node concept="3uibUv" id="g_" role="1ajl9A">
                              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                              <uo k="s:originTrace" v="n:4249179297012706795" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbT" id="gk" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                      <node concept="3clFbT" id="gl" role="37wK5m" />
                      <node concept="37vLTw" id="gm" role="37wK5m">
                        <ref role="3cqZAo" node="g4" resolve="_info_12389875345" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="6wLe0" id="fO" role="lGtFl">
            <property role="6wLej" value="3569916352002253219" />
            <property role="6wLeW" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="fH" role="1B3o_S">
        <uo k="s:originTrace" v="n:3569916352002218904" />
      </node>
    </node>
    <node concept="3clFb_" id="fv" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:3569916352002218904" />
      <node concept="3bZ5Sz" id="gA" role="3clF45">
        <uo k="s:originTrace" v="n:3569916352002218904" />
      </node>
      <node concept="3clFbS" id="gB" role="3clF47">
        <uo k="s:originTrace" v="n:3569916352002218904" />
        <node concept="3cpWs6" id="gD" role="3cqZAp">
          <uo k="s:originTrace" v="n:3569916352002218904" />
          <node concept="35c_gC" id="gE" role="3cqZAk">
            <ref role="35c_gD" to="1oap:46nPloeqmpm" resolve="BaseURLFunction" />
            <uo k="s:originTrace" v="n:3569916352002218904" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="gC" role="1B3o_S">
        <uo k="s:originTrace" v="n:3569916352002218904" />
      </node>
    </node>
    <node concept="3clFb_" id="fw" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:3569916352002218904" />
      <node concept="37vLTG" id="gF" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:3569916352002218904" />
        <node concept="3Tqbb2" id="gJ" role="1tU5fm">
          <uo k="s:originTrace" v="n:3569916352002218904" />
        </node>
      </node>
      <node concept="3clFbS" id="gG" role="3clF47">
        <uo k="s:originTrace" v="n:3569916352002218904" />
        <node concept="9aQIb" id="gK" role="3cqZAp">
          <uo k="s:originTrace" v="n:3569916352002218904" />
          <node concept="3clFbS" id="gL" role="9aQI4">
            <uo k="s:originTrace" v="n:3569916352002218904" />
            <node concept="3cpWs6" id="gM" role="3cqZAp">
              <uo k="s:originTrace" v="n:3569916352002218904" />
              <node concept="2ShNRf" id="gN" role="3cqZAk">
                <uo k="s:originTrace" v="n:3569916352002218904" />
                <node concept="1pGfFk" id="gO" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:3569916352002218904" />
                  <node concept="2OqwBi" id="gP" role="37wK5m">
                    <uo k="s:originTrace" v="n:3569916352002218904" />
                    <node concept="2OqwBi" id="gR" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:3569916352002218904" />
                      <node concept="liA8E" id="gT" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:3569916352002218904" />
                      </node>
                      <node concept="2JrnkZ" id="gU" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:3569916352002218904" />
                        <node concept="37vLTw" id="gV" role="2JrQYb">
                          <ref role="3cqZAo" node="gF" resolve="argument" />
                          <uo k="s:originTrace" v="n:3569916352002218904" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="gS" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:3569916352002218904" />
                      <node concept="1rXfSq" id="gW" role="37wK5m">
                        <ref role="37wK5l" node="fv" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:3569916352002218904" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="gQ" role="37wK5m">
                    <uo k="s:originTrace" v="n:3569916352002218904" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="gH" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:3569916352002218904" />
      </node>
      <node concept="3Tm1VV" id="gI" role="1B3o_S">
        <uo k="s:originTrace" v="n:3569916352002218904" />
      </node>
    </node>
    <node concept="3clFb_" id="fx" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:3569916352002218904" />
      <node concept="3clFbS" id="gX" role="3clF47">
        <uo k="s:originTrace" v="n:3569916352002218904" />
        <node concept="3cpWs6" id="h0" role="3cqZAp">
          <uo k="s:originTrace" v="n:3569916352002218904" />
          <node concept="3clFbT" id="h1" role="3cqZAk">
            <uo k="s:originTrace" v="n:3569916352002218904" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="gY" role="3clF45">
        <uo k="s:originTrace" v="n:3569916352002218904" />
      </node>
      <node concept="3Tm1VV" id="gZ" role="1B3o_S">
        <uo k="s:originTrace" v="n:3569916352002218904" />
      </node>
    </node>
    <node concept="3uibUv" id="fy" role="EKbjA">
      <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:3569916352002218904" />
    </node>
    <node concept="3uibUv" id="fz" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractInferenceRule_Runtime" resolve="AbstractInferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:3569916352002218904" />
    </node>
    <node concept="3Tm1VV" id="f$" role="1B3o_S">
      <uo k="s:originTrace" v="n:3569916352002218904" />
    </node>
  </node>
  <node concept="312cEu" id="h2">
    <property role="3GE5qa" value="icons.instantiation" />
    <property role="TrG5h" value="typeof_ConceptIconResourceExpression_InferenceRule" />
    <uo k="s:originTrace" v="n:4786190798786384202" />
    <node concept="3clFbW" id="h3" role="jymVt">
      <uo k="s:originTrace" v="n:4786190798786384202" />
      <node concept="3clFbS" id="hb" role="3clF47">
        <uo k="s:originTrace" v="n:4786190798786384202" />
      </node>
      <node concept="3Tm1VV" id="hc" role="1B3o_S">
        <uo k="s:originTrace" v="n:4786190798786384202" />
      </node>
      <node concept="3cqZAl" id="hd" role="3clF45">
        <uo k="s:originTrace" v="n:4786190798786384202" />
      </node>
    </node>
    <node concept="3clFb_" id="h4" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:4786190798786384202" />
      <node concept="3cqZAl" id="he" role="3clF45">
        <uo k="s:originTrace" v="n:4786190798786384202" />
      </node>
      <node concept="37vLTG" id="hf" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="n" />
        <uo k="s:originTrace" v="n:4786190798786384202" />
        <node concept="3Tqbb2" id="hk" role="1tU5fm">
          <uo k="s:originTrace" v="n:4786190798786384202" />
        </node>
      </node>
      <node concept="37vLTG" id="hg" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:4786190798786384202" />
        <node concept="3uibUv" id="hl" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:4786190798786384202" />
        </node>
      </node>
      <node concept="37vLTG" id="hh" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:4786190798786384202" />
        <node concept="3uibUv" id="hm" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:4786190798786384202" />
        </node>
      </node>
      <node concept="3clFbS" id="hi" role="3clF47">
        <uo k="s:originTrace" v="n:4786190798786384203" />
        <node concept="9aQIb" id="hn" role="3cqZAp">
          <uo k="s:originTrace" v="n:6018138421348044573" />
          <node concept="3clFbS" id="hp" role="9aQI4">
            <node concept="3cpWs8" id="hr" role="3cqZAp">
              <node concept="3cpWsn" id="hu" role="3cpWs9">
                <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                <node concept="37vLTw" id="hv" role="33vP2m">
                  <ref role="3cqZAo" node="hf" resolve="n" />
                  <uo k="s:originTrace" v="n:6018138421348043575" />
                  <node concept="6wLe0" id="hx" role="lGtFl">
                    <property role="6wLej" value="6018138421348044573" />
                    <property role="6wLeW" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
                  </node>
                </node>
                <node concept="3uibUv" id="hw" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="hs" role="3cqZAp">
              <node concept="3cpWsn" id="hy" role="3cpWs9">
                <property role="TrG5h" value="_info_12389875345" />
                <node concept="3uibUv" id="hz" role="1tU5fm">
                  <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                </node>
                <node concept="2ShNRf" id="h$" role="33vP2m">
                  <node concept="1pGfFk" id="h_" role="2ShVmc">
                    <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                    <node concept="37vLTw" id="hA" role="37wK5m">
                      <ref role="3cqZAo" node="hu" resolve="_nodeToCheck_1029348928467" />
                    </node>
                    <node concept="10Nm6u" id="hB" role="37wK5m" />
                    <node concept="Xl_RD" id="hC" role="37wK5m">
                      <property role="Xl_RC" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
                    </node>
                    <node concept="Xl_RD" id="hD" role="37wK5m">
                      <property role="Xl_RC" value="6018138421348044573" />
                    </node>
                    <node concept="3cmrfG" id="hE" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="10Nm6u" id="hF" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="ht" role="3cqZAp">
              <node concept="2OqwBi" id="hG" role="3clFbG">
                <node concept="3VmV3z" id="hH" role="2Oq$k0">
                  <property role="3VnrPo" value="typeCheckingContext" />
                  <node concept="3uibUv" id="hJ" role="3Vn4Tt">
                    <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                  </node>
                </node>
                <node concept="liA8E" id="hI" role="2OqNvi">
                  <ref role="37wK5l" to="u78q:~TypeCheckingContext.createEquation(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createEquation" />
                  <node concept="10QFUN" id="hK" role="37wK5m">
                    <uo k="s:originTrace" v="n:6018138421348044576" />
                    <node concept="3uibUv" id="hN" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="hO" role="10QFUP">
                      <uo k="s:originTrace" v="n:6018138421348043452" />
                      <node concept="3VmV3z" id="hP" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="hS" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="hQ" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                        <node concept="3VmV3z" id="hT" role="37wK5m">
                          <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                          <node concept="3uibUv" id="hX" role="3Vn4Tt">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="hU" role="37wK5m">
                          <property role="Xl_RC" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="hV" role="37wK5m">
                          <property role="Xl_RC" value="6018138421348043452" />
                        </node>
                        <node concept="3clFbT" id="hW" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                      <node concept="6wLe0" id="hR" role="lGtFl">
                        <property role="6wLej" value="6018138421348043452" />
                        <property role="6wLeW" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
                      </node>
                    </node>
                  </node>
                  <node concept="10QFUN" id="hL" role="37wK5m">
                    <uo k="s:originTrace" v="n:6018138421348044602" />
                    <node concept="3uibUv" id="hY" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2c44tf" id="hZ" role="10QFUP">
                      <uo k="s:originTrace" v="n:6018138421348044598" />
                      <node concept="3uibUv" id="i0" role="2c44tc">
                        <ref role="3uigEE" to="ze1i:~IconResource" resolve="IconResource" />
                        <uo k="s:originTrace" v="n:6018138421348044647" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="hM" role="37wK5m">
                    <ref role="3cqZAo" node="hy" resolve="_info_12389875345" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="6wLe0" id="hq" role="lGtFl">
            <property role="6wLej" value="6018138421348044573" />
            <property role="6wLeW" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
          </node>
        </node>
        <node concept="3clFbJ" id="ho" role="3cqZAp">
          <uo k="s:originTrace" v="n:4786190798786384204" />
          <node concept="3fqX7Q" id="i1" role="3clFbw">
            <node concept="2OqwBi" id="i4" role="3fr31v">
              <node concept="3VmV3z" id="i5" role="2Oq$k0">
                <property role="3VnrPo" value="typeCheckingContext" />
                <node concept="3uibUv" id="i7" role="3Vn4Tt">
                  <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                </node>
              </node>
              <node concept="liA8E" id="i6" role="2OqNvi">
                <ref role="37wK5l" to="u78q:~TypeCheckingContext.isSingleTypeComputation()" resolve="isSingleTypeComputation" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="i2" role="3clFbx">
            <node concept="9aQIb" id="i8" role="3cqZAp">
              <node concept="3clFbS" id="i9" role="9aQI4">
                <node concept="3cpWs8" id="ia" role="3cqZAp">
                  <node concept="3cpWsn" id="id" role="3cpWs9">
                    <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                    <node concept="2OqwBi" id="ie" role="33vP2m">
                      <uo k="s:originTrace" v="n:4786190798786384210" />
                      <node concept="37vLTw" id="ig" role="2Oq$k0">
                        <ref role="3cqZAo" node="hf" resolve="n" />
                        <uo k="s:originTrace" v="n:4786190798786384211" />
                      </node>
                      <node concept="3TrEf2" id="ih" role="2OqNvi">
                        <ref role="3Tt5mk" to="1oap:49FXMLkTOT$" resolve="concept" />
                        <uo k="s:originTrace" v="n:1087735320669856279" />
                      </node>
                      <node concept="6wLe0" id="ii" role="lGtFl">
                        <property role="6wLej" value="4786190798786384204" />
                        <property role="6wLeW" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="if" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="ib" role="3cqZAp">
                  <node concept="3cpWsn" id="ij" role="3cpWs9">
                    <property role="TrG5h" value="_info_12389875345" />
                    <node concept="3uibUv" id="ik" role="1tU5fm">
                      <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                    </node>
                    <node concept="2ShNRf" id="il" role="33vP2m">
                      <node concept="1pGfFk" id="im" role="2ShVmc">
                        <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                        <node concept="37vLTw" id="in" role="37wK5m">
                          <ref role="3cqZAo" node="id" resolve="_nodeToCheck_1029348928467" />
                        </node>
                        <node concept="10Nm6u" id="io" role="37wK5m" />
                        <node concept="Xl_RD" id="ip" role="37wK5m">
                          <property role="Xl_RC" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="iq" role="37wK5m">
                          <property role="Xl_RC" value="4786190798786384204" />
                        </node>
                        <node concept="3cmrfG" id="ir" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="10Nm6u" id="is" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="ic" role="3cqZAp">
                  <node concept="2OqwBi" id="it" role="3clFbG">
                    <node concept="3VmV3z" id="iu" role="2Oq$k0">
                      <property role="3VnrPo" value="typeCheckingContext" />
                      <node concept="3uibUv" id="iw" role="3Vn4Tt">
                        <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                      </node>
                    </node>
                    <node concept="liA8E" id="iv" role="2OqNvi">
                      <ref role="37wK5l" to="u78q:~TypeCheckingContext.createLessThanInequality(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,boolean,boolean,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createLessThanInequality" />
                      <node concept="10QFUN" id="ix" role="37wK5m">
                        <uo k="s:originTrace" v="n:4786190798786384208" />
                        <node concept="3uibUv" id="iA" role="10QFUM">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                        <node concept="2OqwBi" id="iB" role="10QFUP">
                          <uo k="s:originTrace" v="n:4786190798786384209" />
                          <node concept="3VmV3z" id="iC" role="2Oq$k0">
                            <property role="3VnrPo" value="typeCheckingContext" />
                            <node concept="3uibUv" id="iF" role="3Vn4Tt">
                              <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                            </node>
                          </node>
                          <node concept="liA8E" id="iD" role="2OqNvi">
                            <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                            <node concept="3VmV3z" id="iG" role="37wK5m">
                              <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                              <node concept="3uibUv" id="iK" role="3Vn4Tt">
                                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="iH" role="37wK5m">
                              <property role="Xl_RC" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
                            </node>
                            <node concept="Xl_RD" id="iI" role="37wK5m">
                              <property role="Xl_RC" value="4786190798786384209" />
                            </node>
                            <node concept="3clFbT" id="iJ" role="37wK5m">
                              <property role="3clFbU" value="true" />
                            </node>
                          </node>
                          <node concept="6wLe0" id="iE" role="lGtFl">
                            <property role="6wLej" value="4786190798786384209" />
                            <property role="6wLeW" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
                          </node>
                        </node>
                      </node>
                      <node concept="10QFUN" id="iy" role="37wK5m">
                        <uo k="s:originTrace" v="n:4786190798786384205" />
                        <node concept="3uibUv" id="iL" role="10QFUM">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                        <node concept="2c44tf" id="iM" role="10QFUP">
                          <uo k="s:originTrace" v="n:4786190798786384206" />
                          <node concept="3bZ5Sz" id="iN" role="2c44tc">
                            <uo k="s:originTrace" v="n:4786190798786384237" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbT" id="iz" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                      <node concept="3clFbT" id="i$" role="37wK5m" />
                      <node concept="37vLTw" id="i_" role="37wK5m">
                        <ref role="3cqZAo" node="ij" resolve="_info_12389875345" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="6wLe0" id="i3" role="lGtFl">
            <property role="6wLej" value="4786190798786384204" />
            <property role="6wLeW" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="hj" role="1B3o_S">
        <uo k="s:originTrace" v="n:4786190798786384202" />
      </node>
    </node>
    <node concept="3clFb_" id="h5" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:4786190798786384202" />
      <node concept="3bZ5Sz" id="iO" role="3clF45">
        <uo k="s:originTrace" v="n:4786190798786384202" />
      </node>
      <node concept="3clFbS" id="iP" role="3clF47">
        <uo k="s:originTrace" v="n:4786190798786384202" />
        <node concept="3cpWs6" id="iR" role="3cqZAp">
          <uo k="s:originTrace" v="n:4786190798786384202" />
          <node concept="35c_gC" id="iS" role="3cqZAk">
            <ref role="35c_gD" to="1oap:ve0pw_$bOu" resolve="ConceptIconResourceExpression" />
            <uo k="s:originTrace" v="n:4786190798786384202" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="iQ" role="1B3o_S">
        <uo k="s:originTrace" v="n:4786190798786384202" />
      </node>
    </node>
    <node concept="3clFb_" id="h6" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:4786190798786384202" />
      <node concept="37vLTG" id="iT" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:4786190798786384202" />
        <node concept="3Tqbb2" id="iX" role="1tU5fm">
          <uo k="s:originTrace" v="n:4786190798786384202" />
        </node>
      </node>
      <node concept="3clFbS" id="iU" role="3clF47">
        <uo k="s:originTrace" v="n:4786190798786384202" />
        <node concept="9aQIb" id="iY" role="3cqZAp">
          <uo k="s:originTrace" v="n:4786190798786384202" />
          <node concept="3clFbS" id="iZ" role="9aQI4">
            <uo k="s:originTrace" v="n:4786190798786384202" />
            <node concept="3cpWs6" id="j0" role="3cqZAp">
              <uo k="s:originTrace" v="n:4786190798786384202" />
              <node concept="2ShNRf" id="j1" role="3cqZAk">
                <uo k="s:originTrace" v="n:4786190798786384202" />
                <node concept="1pGfFk" id="j2" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:4786190798786384202" />
                  <node concept="2OqwBi" id="j3" role="37wK5m">
                    <uo k="s:originTrace" v="n:4786190798786384202" />
                    <node concept="2OqwBi" id="j5" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:4786190798786384202" />
                      <node concept="liA8E" id="j7" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:4786190798786384202" />
                      </node>
                      <node concept="2JrnkZ" id="j8" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:4786190798786384202" />
                        <node concept="37vLTw" id="j9" role="2JrQYb">
                          <ref role="3cqZAo" node="iT" resolve="argument" />
                          <uo k="s:originTrace" v="n:4786190798786384202" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="j6" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:4786190798786384202" />
                      <node concept="1rXfSq" id="ja" role="37wK5m">
                        <ref role="37wK5l" node="h5" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:4786190798786384202" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="j4" role="37wK5m">
                    <uo k="s:originTrace" v="n:4786190798786384202" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="iV" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:4786190798786384202" />
      </node>
      <node concept="3Tm1VV" id="iW" role="1B3o_S">
        <uo k="s:originTrace" v="n:4786190798786384202" />
      </node>
    </node>
    <node concept="3clFb_" id="h7" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:4786190798786384202" />
      <node concept="3clFbS" id="jb" role="3clF47">
        <uo k="s:originTrace" v="n:4786190798786384202" />
        <node concept="3cpWs6" id="je" role="3cqZAp">
          <uo k="s:originTrace" v="n:4786190798786384202" />
          <node concept="3clFbT" id="jf" role="3cqZAk">
            <uo k="s:originTrace" v="n:4786190798786384202" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="jc" role="3clF45">
        <uo k="s:originTrace" v="n:4786190798786384202" />
      </node>
      <node concept="3Tm1VV" id="jd" role="1B3o_S">
        <uo k="s:originTrace" v="n:4786190798786384202" />
      </node>
    </node>
    <node concept="3uibUv" id="h8" role="EKbjA">
      <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:4786190798786384202" />
    </node>
    <node concept="3uibUv" id="h9" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractInferenceRule_Runtime" resolve="AbstractInferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:4786190798786384202" />
    </node>
    <node concept="3Tm1VV" id="ha" role="1B3o_S">
      <uo k="s:originTrace" v="n:4786190798786384202" />
    </node>
  </node>
  <node concept="312cEu" id="jg">
    <property role="3GE5qa" value="icons.descriptors" />
    <property role="TrG5h" value="typeof_ConstantFieldIcon_InferenceRule" />
    <uo k="s:originTrace" v="n:4149849892982726324" />
    <node concept="3clFbW" id="jh" role="jymVt">
      <uo k="s:originTrace" v="n:4149849892982726324" />
      <node concept="3clFbS" id="jp" role="3clF47">
        <uo k="s:originTrace" v="n:4149849892982726324" />
      </node>
      <node concept="3Tm1VV" id="jq" role="1B3o_S">
        <uo k="s:originTrace" v="n:4149849892982726324" />
      </node>
      <node concept="3cqZAl" id="jr" role="3clF45">
        <uo k="s:originTrace" v="n:4149849892982726324" />
      </node>
    </node>
    <node concept="3clFb_" id="ji" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:4149849892982726324" />
      <node concept="3cqZAl" id="js" role="3clF45">
        <uo k="s:originTrace" v="n:4149849892982726324" />
      </node>
      <node concept="37vLTG" id="jt" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="constantFieldIcon" />
        <uo k="s:originTrace" v="n:4149849892982726324" />
        <node concept="3Tqbb2" id="jy" role="1tU5fm">
          <uo k="s:originTrace" v="n:4149849892982726324" />
        </node>
      </node>
      <node concept="37vLTG" id="ju" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:4149849892982726324" />
        <node concept="3uibUv" id="jz" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:4149849892982726324" />
        </node>
      </node>
      <node concept="37vLTG" id="jv" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:4149849892982726324" />
        <node concept="3uibUv" id="j$" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:4149849892982726324" />
        </node>
      </node>
      <node concept="3clFbS" id="jw" role="3clF47">
        <uo k="s:originTrace" v="n:4149849892982726325" />
        <node concept="9aQIb" id="j_" role="3cqZAp">
          <uo k="s:originTrace" v="n:4149849892982736219" />
          <node concept="3clFbS" id="jA" role="9aQI4">
            <node concept="3cpWs8" id="jC" role="3cqZAp">
              <node concept="3cpWsn" id="jF" role="3cpWs9">
                <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                <node concept="2OqwBi" id="jG" role="33vP2m">
                  <uo k="s:originTrace" v="n:4149849892982733670" />
                  <node concept="37vLTw" id="jI" role="2Oq$k0">
                    <ref role="3cqZAo" node="jt" resolve="constantFieldIcon" />
                    <uo k="s:originTrace" v="n:4149849892982732982" />
                  </node>
                  <node concept="3TrEf2" id="jJ" role="2OqNvi">
                    <ref role="3Tt5mk" to="1oap:6S5fI02sJzE" resolve="field" />
                    <uo k="s:originTrace" v="n:4149849892982734549" />
                  </node>
                  <node concept="6wLe0" id="jK" role="lGtFl">
                    <property role="6wLej" value="4149849892982736219" />
                    <property role="6wLeW" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
                  </node>
                </node>
                <node concept="3uibUv" id="jH" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="jD" role="3cqZAp">
              <node concept="3cpWsn" id="jL" role="3cpWs9">
                <property role="TrG5h" value="_info_12389875345" />
                <node concept="3uibUv" id="jM" role="1tU5fm">
                  <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                </node>
                <node concept="2ShNRf" id="jN" role="33vP2m">
                  <node concept="1pGfFk" id="jO" role="2ShVmc">
                    <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                    <node concept="37vLTw" id="jP" role="37wK5m">
                      <ref role="3cqZAo" node="jF" resolve="_nodeToCheck_1029348928467" />
                    </node>
                    <node concept="10Nm6u" id="jQ" role="37wK5m" />
                    <node concept="Xl_RD" id="jR" role="37wK5m">
                      <property role="Xl_RC" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
                    </node>
                    <node concept="Xl_RD" id="jS" role="37wK5m">
                      <property role="Xl_RC" value="4149849892982736219" />
                    </node>
                    <node concept="3cmrfG" id="jT" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="10Nm6u" id="jU" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="jE" role="3cqZAp">
              <node concept="2OqwBi" id="jV" role="3clFbG">
                <node concept="3VmV3z" id="jW" role="2Oq$k0">
                  <property role="3VnrPo" value="typeCheckingContext" />
                  <node concept="3uibUv" id="jY" role="3Vn4Tt">
                    <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                  </node>
                </node>
                <node concept="liA8E" id="jX" role="2OqNvi">
                  <ref role="37wK5l" to="u78q:~TypeCheckingContext.createLessThanInequality(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,boolean,boolean,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createLessThanInequality" />
                  <node concept="10QFUN" id="jZ" role="37wK5m">
                    <uo k="s:originTrace" v="n:4149849892982736222" />
                    <node concept="3uibUv" id="k4" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="k5" role="10QFUP">
                      <uo k="s:originTrace" v="n:4149849892982732725" />
                      <node concept="3VmV3z" id="k6" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="k9" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="k7" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                        <node concept="3VmV3z" id="ka" role="37wK5m">
                          <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                          <node concept="3uibUv" id="ke" role="3Vn4Tt">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="kb" role="37wK5m">
                          <property role="Xl_RC" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="kc" role="37wK5m">
                          <property role="Xl_RC" value="4149849892982732725" />
                        </node>
                        <node concept="3clFbT" id="kd" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                      <node concept="6wLe0" id="k8" role="lGtFl">
                        <property role="6wLej" value="4149849892982732725" />
                        <property role="6wLeW" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
                      </node>
                    </node>
                  </node>
                  <node concept="10QFUN" id="k0" role="37wK5m">
                    <uo k="s:originTrace" v="n:4149849892982736507" />
                    <node concept="3uibUv" id="kf" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2c44tf" id="kg" role="10QFUP">
                      <uo k="s:originTrace" v="n:4149849892982736503" />
                      <node concept="3uibUv" id="kh" role="2c44tc">
                        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
                        <uo k="s:originTrace" v="n:4149849892982736664" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbT" id="k1" role="37wK5m" />
                  <node concept="3clFbT" id="k2" role="37wK5m" />
                  <node concept="37vLTw" id="k3" role="37wK5m">
                    <ref role="3cqZAo" node="jL" resolve="_info_12389875345" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="6wLe0" id="jB" role="lGtFl">
            <property role="6wLej" value="4149849892982736219" />
            <property role="6wLeW" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="jx" role="1B3o_S">
        <uo k="s:originTrace" v="n:4149849892982726324" />
      </node>
    </node>
    <node concept="3clFb_" id="jj" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:4149849892982726324" />
      <node concept="3bZ5Sz" id="ki" role="3clF45">
        <uo k="s:originTrace" v="n:4149849892982726324" />
      </node>
      <node concept="3clFbS" id="kj" role="3clF47">
        <uo k="s:originTrace" v="n:4149849892982726324" />
        <node concept="3cpWs6" id="kl" role="3cqZAp">
          <uo k="s:originTrace" v="n:4149849892982726324" />
          <node concept="35c_gC" id="km" role="3cqZAk">
            <ref role="35c_gD" to="1oap:6S5fI02sJjS" resolve="ConstantFieldIcon" />
            <uo k="s:originTrace" v="n:4149849892982726324" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="kk" role="1B3o_S">
        <uo k="s:originTrace" v="n:4149849892982726324" />
      </node>
    </node>
    <node concept="3clFb_" id="jk" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:4149849892982726324" />
      <node concept="37vLTG" id="kn" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:4149849892982726324" />
        <node concept="3Tqbb2" id="kr" role="1tU5fm">
          <uo k="s:originTrace" v="n:4149849892982726324" />
        </node>
      </node>
      <node concept="3clFbS" id="ko" role="3clF47">
        <uo k="s:originTrace" v="n:4149849892982726324" />
        <node concept="9aQIb" id="ks" role="3cqZAp">
          <uo k="s:originTrace" v="n:4149849892982726324" />
          <node concept="3clFbS" id="kt" role="9aQI4">
            <uo k="s:originTrace" v="n:4149849892982726324" />
            <node concept="3cpWs6" id="ku" role="3cqZAp">
              <uo k="s:originTrace" v="n:4149849892982726324" />
              <node concept="2ShNRf" id="kv" role="3cqZAk">
                <uo k="s:originTrace" v="n:4149849892982726324" />
                <node concept="1pGfFk" id="kw" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:4149849892982726324" />
                  <node concept="2OqwBi" id="kx" role="37wK5m">
                    <uo k="s:originTrace" v="n:4149849892982726324" />
                    <node concept="2OqwBi" id="kz" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:4149849892982726324" />
                      <node concept="liA8E" id="k_" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:4149849892982726324" />
                      </node>
                      <node concept="2JrnkZ" id="kA" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:4149849892982726324" />
                        <node concept="37vLTw" id="kB" role="2JrQYb">
                          <ref role="3cqZAo" node="kn" resolve="argument" />
                          <uo k="s:originTrace" v="n:4149849892982726324" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="k$" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:4149849892982726324" />
                      <node concept="1rXfSq" id="kC" role="37wK5m">
                        <ref role="37wK5l" node="jj" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:4149849892982726324" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="ky" role="37wK5m">
                    <uo k="s:originTrace" v="n:4149849892982726324" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="kp" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:4149849892982726324" />
      </node>
      <node concept="3Tm1VV" id="kq" role="1B3o_S">
        <uo k="s:originTrace" v="n:4149849892982726324" />
      </node>
    </node>
    <node concept="3clFb_" id="jl" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:4149849892982726324" />
      <node concept="3clFbS" id="kD" role="3clF47">
        <uo k="s:originTrace" v="n:4149849892982726324" />
        <node concept="3cpWs6" id="kG" role="3cqZAp">
          <uo k="s:originTrace" v="n:4149849892982726324" />
          <node concept="3clFbT" id="kH" role="3cqZAk">
            <uo k="s:originTrace" v="n:4149849892982726324" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="kE" role="3clF45">
        <uo k="s:originTrace" v="n:4149849892982726324" />
      </node>
      <node concept="3Tm1VV" id="kF" role="1B3o_S">
        <uo k="s:originTrace" v="n:4149849892982726324" />
      </node>
    </node>
    <node concept="3uibUv" id="jm" role="EKbjA">
      <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:4149849892982726324" />
    </node>
    <node concept="3uibUv" id="jn" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractInferenceRule_Runtime" resolve="AbstractInferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:4149849892982726324" />
    </node>
    <node concept="3Tm1VV" id="jo" role="1B3o_S">
      <uo k="s:originTrace" v="n:4149849892982726324" />
    </node>
  </node>
  <node concept="312cEu" id="kI">
    <property role="3GE5qa" value="icons.descriptors" />
    <property role="TrG5h" value="typeof_FactoryMethodIcon_InferenceRule" />
    <uo k="s:originTrace" v="n:8596489752994060141" />
    <node concept="3clFbW" id="kJ" role="jymVt">
      <uo k="s:originTrace" v="n:8596489752994060141" />
      <node concept="3clFbS" id="kR" role="3clF47">
        <uo k="s:originTrace" v="n:8596489752994060141" />
      </node>
      <node concept="3Tm1VV" id="kS" role="1B3o_S">
        <uo k="s:originTrace" v="n:8596489752994060141" />
      </node>
      <node concept="3cqZAl" id="kT" role="3clF45">
        <uo k="s:originTrace" v="n:8596489752994060141" />
      </node>
    </node>
    <node concept="3clFb_" id="kK" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:8596489752994060141" />
      <node concept="3cqZAl" id="kU" role="3clF45">
        <uo k="s:originTrace" v="n:8596489752994060141" />
      </node>
      <node concept="37vLTG" id="kV" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="factoryMethodIcon" />
        <uo k="s:originTrace" v="n:8596489752994060141" />
        <node concept="3Tqbb2" id="l0" role="1tU5fm">
          <uo k="s:originTrace" v="n:8596489752994060141" />
        </node>
      </node>
      <node concept="37vLTG" id="kW" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:8596489752994060141" />
        <node concept="3uibUv" id="l1" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:8596489752994060141" />
        </node>
      </node>
      <node concept="37vLTG" id="kX" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:8596489752994060141" />
        <node concept="3uibUv" id="l2" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:8596489752994060141" />
        </node>
      </node>
      <node concept="3clFbS" id="kY" role="3clF47">
        <uo k="s:originTrace" v="n:8596489752994060142" />
        <node concept="9aQIb" id="l3" role="3cqZAp">
          <uo k="s:originTrace" v="n:8596489752994060288" />
          <node concept="3clFbS" id="l4" role="9aQI4">
            <node concept="3cpWs8" id="l6" role="3cqZAp">
              <node concept="3cpWsn" id="l9" role="3cpWs9">
                <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                <node concept="2OqwBi" id="la" role="33vP2m">
                  <uo k="s:originTrace" v="n:8596489752994060294" />
                  <node concept="37vLTw" id="lc" role="2Oq$k0">
                    <ref role="3cqZAo" node="kV" resolve="factoryMethodIcon" />
                    <uo k="s:originTrace" v="n:8596489752994060295" />
                  </node>
                  <node concept="3TrEf2" id="ld" role="2OqNvi">
                    <ref role="3Tt5mk" to="1oap:7tcRu9qvxgD" resolve="factoryMethod" />
                    <uo k="s:originTrace" v="n:8596489752994060296" />
                  </node>
                  <node concept="6wLe0" id="le" role="lGtFl">
                    <property role="6wLej" value="8596489752994060288" />
                    <property role="6wLeW" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
                  </node>
                </node>
                <node concept="3uibUv" id="lb" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="l7" role="3cqZAp">
              <node concept="3cpWsn" id="lf" role="3cpWs9">
                <property role="TrG5h" value="_info_12389875345" />
                <node concept="3uibUv" id="lg" role="1tU5fm">
                  <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                </node>
                <node concept="2ShNRf" id="lh" role="33vP2m">
                  <node concept="1pGfFk" id="li" role="2ShVmc">
                    <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                    <node concept="37vLTw" id="lj" role="37wK5m">
                      <ref role="3cqZAo" node="l9" resolve="_nodeToCheck_1029348928467" />
                    </node>
                    <node concept="10Nm6u" id="lk" role="37wK5m" />
                    <node concept="Xl_RD" id="ll" role="37wK5m">
                      <property role="Xl_RC" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
                    </node>
                    <node concept="Xl_RD" id="lm" role="37wK5m">
                      <property role="Xl_RC" value="8596489752994060288" />
                    </node>
                    <node concept="3cmrfG" id="ln" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="10Nm6u" id="lo" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="l8" role="3cqZAp">
              <node concept="2OqwBi" id="lp" role="3clFbG">
                <node concept="3VmV3z" id="lq" role="2Oq$k0">
                  <property role="3VnrPo" value="typeCheckingContext" />
                  <node concept="3uibUv" id="ls" role="3Vn4Tt">
                    <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                  </node>
                </node>
                <node concept="liA8E" id="lr" role="2OqNvi">
                  <ref role="37wK5l" to="u78q:~TypeCheckingContext.createLessThanInequality(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,boolean,boolean,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createLessThanInequality" />
                  <node concept="10QFUN" id="lt" role="37wK5m">
                    <uo k="s:originTrace" v="n:8596489752994060292" />
                    <node concept="3uibUv" id="ly" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="lz" role="10QFUP">
                      <uo k="s:originTrace" v="n:8596489752994060293" />
                      <node concept="3VmV3z" id="l$" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="lB" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="l_" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                        <node concept="3VmV3z" id="lC" role="37wK5m">
                          <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                          <node concept="3uibUv" id="lG" role="3Vn4Tt">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="lD" role="37wK5m">
                          <property role="Xl_RC" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="lE" role="37wK5m">
                          <property role="Xl_RC" value="8596489752994060293" />
                        </node>
                        <node concept="3clFbT" id="lF" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                      <node concept="6wLe0" id="lA" role="lGtFl">
                        <property role="6wLej" value="8596489752994060293" />
                        <property role="6wLeW" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
                      </node>
                    </node>
                  </node>
                  <node concept="10QFUN" id="lu" role="37wK5m">
                    <uo k="s:originTrace" v="n:8596489752994060289" />
                    <node concept="3uibUv" id="lH" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2c44tf" id="lI" role="10QFUP">
                      <uo k="s:originTrace" v="n:8596489752994060290" />
                      <node concept="3uibUv" id="lJ" role="2c44tc">
                        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
                        <uo k="s:originTrace" v="n:8596489752994060291" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbT" id="lv" role="37wK5m" />
                  <node concept="3clFbT" id="lw" role="37wK5m" />
                  <node concept="37vLTw" id="lx" role="37wK5m">
                    <ref role="3cqZAo" node="lf" resolve="_info_12389875345" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="6wLe0" id="l5" role="lGtFl">
            <property role="6wLej" value="8596489752994060288" />
            <property role="6wLeW" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="kZ" role="1B3o_S">
        <uo k="s:originTrace" v="n:8596489752994060141" />
      </node>
    </node>
    <node concept="3clFb_" id="kL" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:8596489752994060141" />
      <node concept="3bZ5Sz" id="lK" role="3clF45">
        <uo k="s:originTrace" v="n:8596489752994060141" />
      </node>
      <node concept="3clFbS" id="lL" role="3clF47">
        <uo k="s:originTrace" v="n:8596489752994060141" />
        <node concept="3cpWs6" id="lN" role="3cqZAp">
          <uo k="s:originTrace" v="n:8596489752994060141" />
          <node concept="35c_gC" id="lO" role="3cqZAk">
            <ref role="35c_gD" to="1oap:7tcRu9qvxgB" resolve="FactoryMethodIcon" />
            <uo k="s:originTrace" v="n:8596489752994060141" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="lM" role="1B3o_S">
        <uo k="s:originTrace" v="n:8596489752994060141" />
      </node>
    </node>
    <node concept="3clFb_" id="kM" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:8596489752994060141" />
      <node concept="37vLTG" id="lP" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:8596489752994060141" />
        <node concept="3Tqbb2" id="lT" role="1tU5fm">
          <uo k="s:originTrace" v="n:8596489752994060141" />
        </node>
      </node>
      <node concept="3clFbS" id="lQ" role="3clF47">
        <uo k="s:originTrace" v="n:8596489752994060141" />
        <node concept="9aQIb" id="lU" role="3cqZAp">
          <uo k="s:originTrace" v="n:8596489752994060141" />
          <node concept="3clFbS" id="lV" role="9aQI4">
            <uo k="s:originTrace" v="n:8596489752994060141" />
            <node concept="3cpWs6" id="lW" role="3cqZAp">
              <uo k="s:originTrace" v="n:8596489752994060141" />
              <node concept="2ShNRf" id="lX" role="3cqZAk">
                <uo k="s:originTrace" v="n:8596489752994060141" />
                <node concept="1pGfFk" id="lY" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:8596489752994060141" />
                  <node concept="2OqwBi" id="lZ" role="37wK5m">
                    <uo k="s:originTrace" v="n:8596489752994060141" />
                    <node concept="2OqwBi" id="m1" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:8596489752994060141" />
                      <node concept="liA8E" id="m3" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:8596489752994060141" />
                      </node>
                      <node concept="2JrnkZ" id="m4" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:8596489752994060141" />
                        <node concept="37vLTw" id="m5" role="2JrQYb">
                          <ref role="3cqZAo" node="lP" resolve="argument" />
                          <uo k="s:originTrace" v="n:8596489752994060141" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="m2" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:8596489752994060141" />
                      <node concept="1rXfSq" id="m6" role="37wK5m">
                        <ref role="37wK5l" node="kL" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:8596489752994060141" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="m0" role="37wK5m">
                    <uo k="s:originTrace" v="n:8596489752994060141" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="lR" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:8596489752994060141" />
      </node>
      <node concept="3Tm1VV" id="lS" role="1B3o_S">
        <uo k="s:originTrace" v="n:8596489752994060141" />
      </node>
    </node>
    <node concept="3clFb_" id="kN" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:8596489752994060141" />
      <node concept="3clFbS" id="m7" role="3clF47">
        <uo k="s:originTrace" v="n:8596489752994060141" />
        <node concept="3cpWs6" id="ma" role="3cqZAp">
          <uo k="s:originTrace" v="n:8596489752994060141" />
          <node concept="3clFbT" id="mb" role="3cqZAk">
            <uo k="s:originTrace" v="n:8596489752994060141" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="m8" role="3clF45">
        <uo k="s:originTrace" v="n:8596489752994060141" />
      </node>
      <node concept="3Tm1VV" id="m9" role="1B3o_S">
        <uo k="s:originTrace" v="n:8596489752994060141" />
      </node>
    </node>
    <node concept="3uibUv" id="kO" role="EKbjA">
      <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:8596489752994060141" />
    </node>
    <node concept="3uibUv" id="kP" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractInferenceRule_Runtime" resolve="AbstractInferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:8596489752994060141" />
    </node>
    <node concept="3Tm1VV" id="kQ" role="1B3o_S">
      <uo k="s:originTrace" v="n:8596489752994060141" />
    </node>
  </node>
  <node concept="312cEu" id="mc">
    <property role="3GE5qa" value="icons.instantiation" />
    <property role="TrG5h" value="typeof_IconExpression_InferenceRule" />
    <uo k="s:originTrace" v="n:8974276187400030193" />
    <node concept="3clFbW" id="md" role="jymVt">
      <uo k="s:originTrace" v="n:8974276187400030193" />
      <node concept="3clFbS" id="ml" role="3clF47">
        <uo k="s:originTrace" v="n:8974276187400030193" />
      </node>
      <node concept="3Tm1VV" id="mm" role="1B3o_S">
        <uo k="s:originTrace" v="n:8974276187400030193" />
      </node>
      <node concept="3cqZAl" id="mn" role="3clF45">
        <uo k="s:originTrace" v="n:8974276187400030193" />
      </node>
    </node>
    <node concept="3clFb_" id="me" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:8974276187400030193" />
      <node concept="3cqZAl" id="mo" role="3clF45">
        <uo k="s:originTrace" v="n:8974276187400030193" />
      </node>
      <node concept="37vLTG" id="mp" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="icon" />
        <uo k="s:originTrace" v="n:8974276187400030193" />
        <node concept="3Tqbb2" id="mu" role="1tU5fm">
          <uo k="s:originTrace" v="n:8974276187400030193" />
        </node>
      </node>
      <node concept="37vLTG" id="mq" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:8974276187400030193" />
        <node concept="3uibUv" id="mv" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:8974276187400030193" />
        </node>
      </node>
      <node concept="37vLTG" id="mr" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:8974276187400030193" />
        <node concept="3uibUv" id="mw" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:8974276187400030193" />
        </node>
      </node>
      <node concept="3clFbS" id="ms" role="3clF47">
        <uo k="s:originTrace" v="n:8974276187400030194" />
        <node concept="9aQIb" id="mx" role="3cqZAp">
          <uo k="s:originTrace" v="n:8974276187400030195" />
          <node concept="3clFbS" id="my" role="9aQI4">
            <node concept="3cpWs8" id="m$" role="3cqZAp">
              <node concept="3cpWsn" id="mB" role="3cpWs9">
                <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                <node concept="37vLTw" id="mC" role="33vP2m">
                  <ref role="3cqZAo" node="mp" resolve="icon" />
                  <uo k="s:originTrace" v="n:8974276187400030201" />
                  <node concept="6wLe0" id="mE" role="lGtFl">
                    <property role="6wLej" value="8974276187400030195" />
                    <property role="6wLeW" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
                  </node>
                </node>
                <node concept="3uibUv" id="mD" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="m_" role="3cqZAp">
              <node concept="3cpWsn" id="mF" role="3cpWs9">
                <property role="TrG5h" value="_info_12389875345" />
                <node concept="3uibUv" id="mG" role="1tU5fm">
                  <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                </node>
                <node concept="2ShNRf" id="mH" role="33vP2m">
                  <node concept="1pGfFk" id="mI" role="2ShVmc">
                    <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                    <node concept="37vLTw" id="mJ" role="37wK5m">
                      <ref role="3cqZAo" node="mB" resolve="_nodeToCheck_1029348928467" />
                    </node>
                    <node concept="10Nm6u" id="mK" role="37wK5m" />
                    <node concept="Xl_RD" id="mL" role="37wK5m">
                      <property role="Xl_RC" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
                    </node>
                    <node concept="Xl_RD" id="mM" role="37wK5m">
                      <property role="Xl_RC" value="8974276187400030195" />
                    </node>
                    <node concept="3cmrfG" id="mN" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="10Nm6u" id="mO" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="mA" role="3cqZAp">
              <node concept="2OqwBi" id="mP" role="3clFbG">
                <node concept="3VmV3z" id="mQ" role="2Oq$k0">
                  <property role="3VnrPo" value="typeCheckingContext" />
                  <node concept="3uibUv" id="mS" role="3Vn4Tt">
                    <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                  </node>
                </node>
                <node concept="liA8E" id="mR" role="2OqNvi">
                  <ref role="37wK5l" to="u78q:~TypeCheckingContext.createEquation(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createEquation" />
                  <node concept="10QFUN" id="mT" role="37wK5m">
                    <uo k="s:originTrace" v="n:8974276187400030199" />
                    <node concept="3uibUv" id="mW" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="mX" role="10QFUP">
                      <uo k="s:originTrace" v="n:8974276187400030200" />
                      <node concept="3VmV3z" id="mY" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="n1" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="mZ" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                        <node concept="3VmV3z" id="n2" role="37wK5m">
                          <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                          <node concept="3uibUv" id="n6" role="3Vn4Tt">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="n3" role="37wK5m">
                          <property role="Xl_RC" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="n4" role="37wK5m">
                          <property role="Xl_RC" value="8974276187400030200" />
                        </node>
                        <node concept="3clFbT" id="n5" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                      <node concept="6wLe0" id="n0" role="lGtFl">
                        <property role="6wLej" value="8974276187400030200" />
                        <property role="6wLeW" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
                      </node>
                    </node>
                  </node>
                  <node concept="10QFUN" id="mU" role="37wK5m">
                    <uo k="s:originTrace" v="n:8974276187400030196" />
                    <node concept="3uibUv" id="n7" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2c44tf" id="n8" role="10QFUP">
                      <uo k="s:originTrace" v="n:8974276187400030197" />
                      <node concept="3uibUv" id="n9" role="2c44tc">
                        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
                        <uo k="s:originTrace" v="n:8974276187400030198" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="mV" role="37wK5m">
                    <ref role="3cqZAo" node="mF" resolve="_info_12389875345" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="6wLe0" id="mz" role="lGtFl">
            <property role="6wLej" value="8974276187400030195" />
            <property role="6wLeW" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="mt" role="1B3o_S">
        <uo k="s:originTrace" v="n:8974276187400030193" />
      </node>
    </node>
    <node concept="3clFb_" id="mf" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:8974276187400030193" />
      <node concept="3bZ5Sz" id="na" role="3clF45">
        <uo k="s:originTrace" v="n:8974276187400030193" />
      </node>
      <node concept="3clFbS" id="nb" role="3clF47">
        <uo k="s:originTrace" v="n:8974276187400030193" />
        <node concept="3cpWs6" id="nd" role="3cqZAp">
          <uo k="s:originTrace" v="n:8974276187400030193" />
          <node concept="35c_gC" id="ne" role="3cqZAk">
            <ref role="35c_gD" to="1oap:7Mb2akaesr3" resolve="IconExpression" />
            <uo k="s:originTrace" v="n:8974276187400030193" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="nc" role="1B3o_S">
        <uo k="s:originTrace" v="n:8974276187400030193" />
      </node>
    </node>
    <node concept="3clFb_" id="mg" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:8974276187400030193" />
      <node concept="37vLTG" id="nf" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:8974276187400030193" />
        <node concept="3Tqbb2" id="nj" role="1tU5fm">
          <uo k="s:originTrace" v="n:8974276187400030193" />
        </node>
      </node>
      <node concept="3clFbS" id="ng" role="3clF47">
        <uo k="s:originTrace" v="n:8974276187400030193" />
        <node concept="9aQIb" id="nk" role="3cqZAp">
          <uo k="s:originTrace" v="n:8974276187400030193" />
          <node concept="3clFbS" id="nl" role="9aQI4">
            <uo k="s:originTrace" v="n:8974276187400030193" />
            <node concept="3cpWs6" id="nm" role="3cqZAp">
              <uo k="s:originTrace" v="n:8974276187400030193" />
              <node concept="2ShNRf" id="nn" role="3cqZAk">
                <uo k="s:originTrace" v="n:8974276187400030193" />
                <node concept="1pGfFk" id="no" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:8974276187400030193" />
                  <node concept="2OqwBi" id="np" role="37wK5m">
                    <uo k="s:originTrace" v="n:8974276187400030193" />
                    <node concept="2OqwBi" id="nr" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:8974276187400030193" />
                      <node concept="liA8E" id="nt" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:8974276187400030193" />
                      </node>
                      <node concept="2JrnkZ" id="nu" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:8974276187400030193" />
                        <node concept="37vLTw" id="nv" role="2JrQYb">
                          <ref role="3cqZAo" node="nf" resolve="argument" />
                          <uo k="s:originTrace" v="n:8974276187400030193" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="ns" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:8974276187400030193" />
                      <node concept="1rXfSq" id="nw" role="37wK5m">
                        <ref role="37wK5l" node="mf" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:8974276187400030193" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="nq" role="37wK5m">
                    <uo k="s:originTrace" v="n:8974276187400030193" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="nh" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:8974276187400030193" />
      </node>
      <node concept="3Tm1VV" id="ni" role="1B3o_S">
        <uo k="s:originTrace" v="n:8974276187400030193" />
      </node>
    </node>
    <node concept="3clFb_" id="mh" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:8974276187400030193" />
      <node concept="3clFbS" id="nx" role="3clF47">
        <uo k="s:originTrace" v="n:8974276187400030193" />
        <node concept="3cpWs6" id="n$" role="3cqZAp">
          <uo k="s:originTrace" v="n:8974276187400030193" />
          <node concept="3clFbT" id="n_" role="3cqZAk">
            <uo k="s:originTrace" v="n:8974276187400030193" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="ny" role="3clF45">
        <uo k="s:originTrace" v="n:8974276187400030193" />
      </node>
      <node concept="3Tm1VV" id="nz" role="1B3o_S">
        <uo k="s:originTrace" v="n:8974276187400030193" />
      </node>
    </node>
    <node concept="3uibUv" id="mi" role="EKbjA">
      <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:8974276187400030193" />
    </node>
    <node concept="3uibUv" id="mj" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractInferenceRule_Runtime" resolve="AbstractInferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:8974276187400030193" />
    </node>
    <node concept="3Tm1VV" id="mk" role="1B3o_S">
      <uo k="s:originTrace" v="n:8974276187400030193" />
    </node>
  </node>
  <node concept="312cEu" id="nA">
    <property role="3GE5qa" value="icons.instantiation" />
    <property role="TrG5h" value="typeof_IconResourceExpression_InferenceRule" />
    <uo k="s:originTrace" v="n:5979521222239172974" />
    <node concept="3clFbW" id="nB" role="jymVt">
      <uo k="s:originTrace" v="n:5979521222239172974" />
      <node concept="3clFbS" id="nJ" role="3clF47">
        <uo k="s:originTrace" v="n:5979521222239172974" />
      </node>
      <node concept="3Tm1VV" id="nK" role="1B3o_S">
        <uo k="s:originTrace" v="n:5979521222239172974" />
      </node>
      <node concept="3cqZAl" id="nL" role="3clF45">
        <uo k="s:originTrace" v="n:5979521222239172974" />
      </node>
    </node>
    <node concept="3clFb_" id="nC" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:5979521222239172974" />
      <node concept="3cqZAl" id="nM" role="3clF45">
        <uo k="s:originTrace" v="n:5979521222239172974" />
      </node>
      <node concept="37vLTG" id="nN" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="iconResourceExpression" />
        <uo k="s:originTrace" v="n:5979521222239172974" />
        <node concept="3Tqbb2" id="nS" role="1tU5fm">
          <uo k="s:originTrace" v="n:5979521222239172974" />
        </node>
      </node>
      <node concept="37vLTG" id="nO" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:5979521222239172974" />
        <node concept="3uibUv" id="nT" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:5979521222239172974" />
        </node>
      </node>
      <node concept="37vLTG" id="nP" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:5979521222239172974" />
        <node concept="3uibUv" id="nU" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:5979521222239172974" />
        </node>
      </node>
      <node concept="3clFbS" id="nQ" role="3clF47">
        <uo k="s:originTrace" v="n:5979521222239172975" />
        <node concept="9aQIb" id="nV" role="3cqZAp">
          <uo k="s:originTrace" v="n:5979521222239172976" />
          <node concept="3clFbS" id="nW" role="9aQI4">
            <node concept="3cpWs8" id="nY" role="3cqZAp">
              <node concept="3cpWsn" id="o1" role="3cpWs9">
                <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                <node concept="37vLTw" id="o2" role="33vP2m">
                  <ref role="3cqZAo" node="nN" resolve="iconResourceExpression" />
                  <uo k="s:originTrace" v="n:5979521222239172982" />
                  <node concept="6wLe0" id="o4" role="lGtFl">
                    <property role="6wLej" value="5979521222239172976" />
                    <property role="6wLeW" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
                  </node>
                </node>
                <node concept="3uibUv" id="o3" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="nZ" role="3cqZAp">
              <node concept="3cpWsn" id="o5" role="3cpWs9">
                <property role="TrG5h" value="_info_12389875345" />
                <node concept="3uibUv" id="o6" role="1tU5fm">
                  <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                </node>
                <node concept="2ShNRf" id="o7" role="33vP2m">
                  <node concept="1pGfFk" id="o8" role="2ShVmc">
                    <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                    <node concept="37vLTw" id="o9" role="37wK5m">
                      <ref role="3cqZAo" node="o1" resolve="_nodeToCheck_1029348928467" />
                    </node>
                    <node concept="10Nm6u" id="oa" role="37wK5m" />
                    <node concept="Xl_RD" id="ob" role="37wK5m">
                      <property role="Xl_RC" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
                    </node>
                    <node concept="Xl_RD" id="oc" role="37wK5m">
                      <property role="Xl_RC" value="5979521222239172976" />
                    </node>
                    <node concept="3cmrfG" id="od" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="10Nm6u" id="oe" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="o0" role="3cqZAp">
              <node concept="2OqwBi" id="of" role="3clFbG">
                <node concept="3VmV3z" id="og" role="2Oq$k0">
                  <property role="3VnrPo" value="typeCheckingContext" />
                  <node concept="3uibUv" id="oi" role="3Vn4Tt">
                    <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                  </node>
                </node>
                <node concept="liA8E" id="oh" role="2OqNvi">
                  <ref role="37wK5l" to="u78q:~TypeCheckingContext.createEquation(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createEquation" />
                  <node concept="10QFUN" id="oj" role="37wK5m">
                    <uo k="s:originTrace" v="n:5979521222239172980" />
                    <node concept="3uibUv" id="om" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="on" role="10QFUP">
                      <uo k="s:originTrace" v="n:5979521222239172981" />
                      <node concept="3VmV3z" id="oo" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="or" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="op" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                        <node concept="3VmV3z" id="os" role="37wK5m">
                          <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                          <node concept="3uibUv" id="ow" role="3Vn4Tt">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="ot" role="37wK5m">
                          <property role="Xl_RC" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="ou" role="37wK5m">
                          <property role="Xl_RC" value="5979521222239172981" />
                        </node>
                        <node concept="3clFbT" id="ov" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                      <node concept="6wLe0" id="oq" role="lGtFl">
                        <property role="6wLej" value="5979521222239172981" />
                        <property role="6wLeW" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
                      </node>
                    </node>
                  </node>
                  <node concept="10QFUN" id="ok" role="37wK5m">
                    <uo k="s:originTrace" v="n:5979521222239172977" />
                    <node concept="3uibUv" id="ox" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2c44tf" id="oy" role="10QFUP">
                      <uo k="s:originTrace" v="n:5979521222239172978" />
                      <node concept="3uibUv" id="oz" role="2c44tc">
                        <ref role="3uigEE" to="ze1i:~IconResource" resolve="IconResource" />
                        <uo k="s:originTrace" v="n:5979521222239185740" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="ol" role="37wK5m">
                    <ref role="3cqZAo" node="o5" resolve="_info_12389875345" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="6wLe0" id="nX" role="lGtFl">
            <property role="6wLej" value="5979521222239172976" />
            <property role="6wLeW" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="nR" role="1B3o_S">
        <uo k="s:originTrace" v="n:5979521222239172974" />
      </node>
    </node>
    <node concept="3clFb_" id="nD" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:5979521222239172974" />
      <node concept="3bZ5Sz" id="o$" role="3clF45">
        <uo k="s:originTrace" v="n:5979521222239172974" />
      </node>
      <node concept="3clFbS" id="o_" role="3clF47">
        <uo k="s:originTrace" v="n:5979521222239172974" />
        <node concept="3cpWs6" id="oB" role="3cqZAp">
          <uo k="s:originTrace" v="n:5979521222239172974" />
          <node concept="35c_gC" id="oC" role="3cqZAk">
            <ref role="35c_gD" to="1oap:5bVxHVEuklu" resolve="IconResourceExpression" />
            <uo k="s:originTrace" v="n:5979521222239172974" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="oA" role="1B3o_S">
        <uo k="s:originTrace" v="n:5979521222239172974" />
      </node>
    </node>
    <node concept="3clFb_" id="nE" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:5979521222239172974" />
      <node concept="37vLTG" id="oD" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:5979521222239172974" />
        <node concept="3Tqbb2" id="oH" role="1tU5fm">
          <uo k="s:originTrace" v="n:5979521222239172974" />
        </node>
      </node>
      <node concept="3clFbS" id="oE" role="3clF47">
        <uo k="s:originTrace" v="n:5979521222239172974" />
        <node concept="9aQIb" id="oI" role="3cqZAp">
          <uo k="s:originTrace" v="n:5979521222239172974" />
          <node concept="3clFbS" id="oJ" role="9aQI4">
            <uo k="s:originTrace" v="n:5979521222239172974" />
            <node concept="3cpWs6" id="oK" role="3cqZAp">
              <uo k="s:originTrace" v="n:5979521222239172974" />
              <node concept="2ShNRf" id="oL" role="3cqZAk">
                <uo k="s:originTrace" v="n:5979521222239172974" />
                <node concept="1pGfFk" id="oM" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:5979521222239172974" />
                  <node concept="2OqwBi" id="oN" role="37wK5m">
                    <uo k="s:originTrace" v="n:5979521222239172974" />
                    <node concept="2OqwBi" id="oP" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:5979521222239172974" />
                      <node concept="liA8E" id="oR" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:5979521222239172974" />
                      </node>
                      <node concept="2JrnkZ" id="oS" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:5979521222239172974" />
                        <node concept="37vLTw" id="oT" role="2JrQYb">
                          <ref role="3cqZAo" node="oD" resolve="argument" />
                          <uo k="s:originTrace" v="n:5979521222239172974" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="oQ" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:5979521222239172974" />
                      <node concept="1rXfSq" id="oU" role="37wK5m">
                        <ref role="37wK5l" node="nD" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:5979521222239172974" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="oO" role="37wK5m">
                    <uo k="s:originTrace" v="n:5979521222239172974" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="oF" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:5979521222239172974" />
      </node>
      <node concept="3Tm1VV" id="oG" role="1B3o_S">
        <uo k="s:originTrace" v="n:5979521222239172974" />
      </node>
    </node>
    <node concept="3clFb_" id="nF" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:5979521222239172974" />
      <node concept="3clFbS" id="oV" role="3clF47">
        <uo k="s:originTrace" v="n:5979521222239172974" />
        <node concept="3cpWs6" id="oY" role="3cqZAp">
          <uo k="s:originTrace" v="n:5979521222239172974" />
          <node concept="3clFbT" id="oZ" role="3cqZAk">
            <uo k="s:originTrace" v="n:5979521222239172974" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="oW" role="3clF45">
        <uo k="s:originTrace" v="n:5979521222239172974" />
      </node>
      <node concept="3Tm1VV" id="oX" role="1B3o_S">
        <uo k="s:originTrace" v="n:5979521222239172974" />
      </node>
    </node>
    <node concept="3uibUv" id="nG" role="EKbjA">
      <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:5979521222239172974" />
    </node>
    <node concept="3uibUv" id="nH" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractInferenceRule_Runtime" resolve="AbstractInferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:5979521222239172974" />
    </node>
    <node concept="3Tm1VV" id="nI" role="1B3o_S">
      <uo k="s:originTrace" v="n:5979521222239172974" />
    </node>
  </node>
  <node concept="312cEu" id="p0">
    <property role="3GE5qa" value="icons.instantiation" />
    <property role="TrG5h" value="typeof_NodeIconResourceExpression_InferenceRule" />
    <uo k="s:originTrace" v="n:4786190798786381671" />
    <node concept="3clFbW" id="p1" role="jymVt">
      <uo k="s:originTrace" v="n:4786190798786381671" />
      <node concept="3clFbS" id="p9" role="3clF47">
        <uo k="s:originTrace" v="n:4786190798786381671" />
      </node>
      <node concept="3Tm1VV" id="pa" role="1B3o_S">
        <uo k="s:originTrace" v="n:4786190798786381671" />
      </node>
      <node concept="3cqZAl" id="pb" role="3clF45">
        <uo k="s:originTrace" v="n:4786190798786381671" />
      </node>
    </node>
    <node concept="3clFb_" id="p2" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:4786190798786381671" />
      <node concept="3cqZAl" id="pc" role="3clF45">
        <uo k="s:originTrace" v="n:4786190798786381671" />
      </node>
      <node concept="37vLTG" id="pd" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="n" />
        <uo k="s:originTrace" v="n:4786190798786381671" />
        <node concept="3Tqbb2" id="pi" role="1tU5fm">
          <uo k="s:originTrace" v="n:4786190798786381671" />
        </node>
      </node>
      <node concept="37vLTG" id="pe" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:4786190798786381671" />
        <node concept="3uibUv" id="pj" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:4786190798786381671" />
        </node>
      </node>
      <node concept="37vLTG" id="pf" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:4786190798786381671" />
        <node concept="3uibUv" id="pk" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:4786190798786381671" />
        </node>
      </node>
      <node concept="3clFbS" id="pg" role="3clF47">
        <uo k="s:originTrace" v="n:4786190798786381672" />
        <node concept="3clFbJ" id="pl" role="3cqZAp">
          <uo k="s:originTrace" v="n:4786190798786384174" />
          <node concept="3fqX7Q" id="pm" role="3clFbw">
            <node concept="2OqwBi" id="pp" role="3fr31v">
              <node concept="3VmV3z" id="pq" role="2Oq$k0">
                <property role="3VnrPo" value="typeCheckingContext" />
                <node concept="3uibUv" id="ps" role="3Vn4Tt">
                  <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                </node>
              </node>
              <node concept="liA8E" id="pr" role="2OqNvi">
                <ref role="37wK5l" to="u78q:~TypeCheckingContext.isSingleTypeComputation()" resolve="isSingleTypeComputation" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="pn" role="3clFbx">
            <node concept="9aQIb" id="pt" role="3cqZAp">
              <node concept="3clFbS" id="pu" role="9aQI4">
                <node concept="3cpWs8" id="pv" role="3cqZAp">
                  <node concept="3cpWsn" id="py" role="3cpWs9">
                    <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                    <node concept="2OqwBi" id="pz" role="33vP2m">
                      <uo k="s:originTrace" v="n:4786190798786382456" />
                      <node concept="37vLTw" id="p_" role="2Oq$k0">
                        <ref role="3cqZAo" node="pd" resolve="n" />
                        <uo k="s:originTrace" v="n:4786190798786381910" />
                      </node>
                      <node concept="3TrEf2" id="pA" role="2OqNvi">
                        <ref role="3Tt5mk" to="1oap:ve0pw_$_Ks" resolve="node" />
                        <uo k="s:originTrace" v="n:4786190798786383024" />
                      </node>
                      <node concept="6wLe0" id="pB" role="lGtFl">
                        <property role="6wLej" value="4786190798786384174" />
                        <property role="6wLeW" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="p$" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="pw" role="3cqZAp">
                  <node concept="3cpWsn" id="pC" role="3cpWs9">
                    <property role="TrG5h" value="_info_12389875345" />
                    <node concept="3uibUv" id="pD" role="1tU5fm">
                      <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                    </node>
                    <node concept="2ShNRf" id="pE" role="33vP2m">
                      <node concept="1pGfFk" id="pF" role="2ShVmc">
                        <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                        <node concept="37vLTw" id="pG" role="37wK5m">
                          <ref role="3cqZAo" node="py" resolve="_nodeToCheck_1029348928467" />
                        </node>
                        <node concept="10Nm6u" id="pH" role="37wK5m" />
                        <node concept="Xl_RD" id="pI" role="37wK5m">
                          <property role="Xl_RC" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="pJ" role="37wK5m">
                          <property role="Xl_RC" value="4786190798786384174" />
                        </node>
                        <node concept="3cmrfG" id="pK" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="10Nm6u" id="pL" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="px" role="3cqZAp">
                  <node concept="2OqwBi" id="pM" role="3clFbG">
                    <node concept="3VmV3z" id="pN" role="2Oq$k0">
                      <property role="3VnrPo" value="typeCheckingContext" />
                      <node concept="3uibUv" id="pP" role="3Vn4Tt">
                        <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                      </node>
                    </node>
                    <node concept="liA8E" id="pO" role="2OqNvi">
                      <ref role="37wK5l" to="u78q:~TypeCheckingContext.createLessThanInequality(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,boolean,boolean,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createLessThanInequality" />
                      <node concept="10QFUN" id="pQ" role="37wK5m">
                        <uo k="s:originTrace" v="n:4786190798786384177" />
                        <node concept="3uibUv" id="pV" role="10QFUM">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                        <node concept="2OqwBi" id="pW" role="10QFUP">
                          <uo k="s:originTrace" v="n:4786190798786381696" />
                          <node concept="3VmV3z" id="pX" role="2Oq$k0">
                            <property role="3VnrPo" value="typeCheckingContext" />
                            <node concept="3uibUv" id="q0" role="3Vn4Tt">
                              <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                            </node>
                          </node>
                          <node concept="liA8E" id="pY" role="2OqNvi">
                            <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                            <node concept="3VmV3z" id="q1" role="37wK5m">
                              <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                              <node concept="3uibUv" id="q5" role="3Vn4Tt">
                                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="q2" role="37wK5m">
                              <property role="Xl_RC" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
                            </node>
                            <node concept="Xl_RD" id="q3" role="37wK5m">
                              <property role="Xl_RC" value="4786190798786381696" />
                            </node>
                            <node concept="3clFbT" id="q4" role="37wK5m">
                              <property role="3clFbU" value="true" />
                            </node>
                          </node>
                          <node concept="6wLe0" id="pZ" role="lGtFl">
                            <property role="6wLej" value="4786190798786381696" />
                            <property role="6wLeW" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
                          </node>
                        </node>
                      </node>
                      <node concept="10QFUN" id="pR" role="37wK5m">
                        <uo k="s:originTrace" v="n:4786190798786384195" />
                        <node concept="3uibUv" id="q6" role="10QFUM">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                        <node concept="2c44tf" id="q7" role="10QFUP">
                          <uo k="s:originTrace" v="n:4786190798786384191" />
                          <node concept="3Tqbb2" id="q8" role="2c44tc">
                            <uo k="s:originTrace" v="n:4786190798786384200" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbT" id="pS" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                      <node concept="3clFbT" id="pT" role="37wK5m" />
                      <node concept="37vLTw" id="pU" role="37wK5m">
                        <ref role="3cqZAo" node="pC" resolve="_info_12389875345" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="6wLe0" id="po" role="lGtFl">
            <property role="6wLej" value="4786190798786384174" />
            <property role="6wLeW" value="r:cafe8450-2876-42f2-9c43-75da10155c47(jetbrains.mps.lang.resources.typesystem)" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="ph" role="1B3o_S">
        <uo k="s:originTrace" v="n:4786190798786381671" />
      </node>
    </node>
    <node concept="3clFb_" id="p3" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:4786190798786381671" />
      <node concept="3bZ5Sz" id="q9" role="3clF45">
        <uo k="s:originTrace" v="n:4786190798786381671" />
      </node>
      <node concept="3clFbS" id="qa" role="3clF47">
        <uo k="s:originTrace" v="n:4786190798786381671" />
        <node concept="3cpWs6" id="qc" role="3cqZAp">
          <uo k="s:originTrace" v="n:4786190798786381671" />
          <node concept="35c_gC" id="qd" role="3cqZAk">
            <ref role="35c_gD" to="1oap:ve0pw_$_Kq" resolve="NodeIconResourceExpression" />
            <uo k="s:originTrace" v="n:4786190798786381671" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="qb" role="1B3o_S">
        <uo k="s:originTrace" v="n:4786190798786381671" />
      </node>
    </node>
    <node concept="3clFb_" id="p4" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:4786190798786381671" />
      <node concept="37vLTG" id="qe" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:4786190798786381671" />
        <node concept="3Tqbb2" id="qi" role="1tU5fm">
          <uo k="s:originTrace" v="n:4786190798786381671" />
        </node>
      </node>
      <node concept="3clFbS" id="qf" role="3clF47">
        <uo k="s:originTrace" v="n:4786190798786381671" />
        <node concept="9aQIb" id="qj" role="3cqZAp">
          <uo k="s:originTrace" v="n:4786190798786381671" />
          <node concept="3clFbS" id="qk" role="9aQI4">
            <uo k="s:originTrace" v="n:4786190798786381671" />
            <node concept="3cpWs6" id="ql" role="3cqZAp">
              <uo k="s:originTrace" v="n:4786190798786381671" />
              <node concept="2ShNRf" id="qm" role="3cqZAk">
                <uo k="s:originTrace" v="n:4786190798786381671" />
                <node concept="1pGfFk" id="qn" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:4786190798786381671" />
                  <node concept="2OqwBi" id="qo" role="37wK5m">
                    <uo k="s:originTrace" v="n:4786190798786381671" />
                    <node concept="2OqwBi" id="qq" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:4786190798786381671" />
                      <node concept="liA8E" id="qs" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:4786190798786381671" />
                      </node>
                      <node concept="2JrnkZ" id="qt" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:4786190798786381671" />
                        <node concept="37vLTw" id="qu" role="2JrQYb">
                          <ref role="3cqZAo" node="qe" resolve="argument" />
                          <uo k="s:originTrace" v="n:4786190798786381671" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="qr" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:4786190798786381671" />
                      <node concept="1rXfSq" id="qv" role="37wK5m">
                        <ref role="37wK5l" node="p3" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:4786190798786381671" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="qp" role="37wK5m">
                    <uo k="s:originTrace" v="n:4786190798786381671" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="qg" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:4786190798786381671" />
      </node>
      <node concept="3Tm1VV" id="qh" role="1B3o_S">
        <uo k="s:originTrace" v="n:4786190798786381671" />
      </node>
    </node>
    <node concept="3clFb_" id="p5" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:4786190798786381671" />
      <node concept="3clFbS" id="qw" role="3clF47">
        <uo k="s:originTrace" v="n:4786190798786381671" />
        <node concept="3cpWs6" id="qz" role="3cqZAp">
          <uo k="s:originTrace" v="n:4786190798786381671" />
          <node concept="3clFbT" id="q$" role="3cqZAk">
            <uo k="s:originTrace" v="n:4786190798786381671" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="qx" role="3clF45">
        <uo k="s:originTrace" v="n:4786190798786381671" />
      </node>
      <node concept="3Tm1VV" id="qy" role="1B3o_S">
        <uo k="s:originTrace" v="n:4786190798786381671" />
      </node>
    </node>
    <node concept="3uibUv" id="p6" role="EKbjA">
      <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:4786190798786381671" />
    </node>
    <node concept="3uibUv" id="p7" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractInferenceRule_Runtime" resolve="AbstractInferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:4786190798786381671" />
    </node>
    <node concept="3Tm1VV" id="p8" role="1B3o_S">
      <uo k="s:originTrace" v="n:4786190798786381671" />
    </node>
  </node>
</model>

