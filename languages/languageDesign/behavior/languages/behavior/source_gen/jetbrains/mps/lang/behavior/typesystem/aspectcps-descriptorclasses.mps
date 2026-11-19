<?xml version="1.0" encoding="UTF-8"?>
<model ref="00000000-0000-4000-5f02-5beb5f025beb/i:f02624f(checkpoints/jetbrains.mps.lang.behavior.typesystem@descriptorclasses)">
  <persistence version="9" />
  <attribute name="checkpoint" value="DescriptorClasses" />
  <attribute name="generation-plan" value="AspectCPS" />
  <attribute name="user-objects" value="true" />
  <languages />
  <imports>
    <import index="xmfs" ref="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
    <import index="tp25" ref="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" />
    <import index="2gg1" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.errors(MPS.Core/)" />
    <import index="tpek" ref="r:00000000-0000-4000-0000-011c895902c0(jetbrains.mps.baseLanguage.behavior)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="zavc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.errors.messageTargets(MPS.Core/)" />
    <import index="tpcn" ref="r:00000000-0000-4000-0000-011c8959028b(jetbrains.mps.lang.structure.behavior)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="qurh" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.lang.typesystem.runtime(MPS.Core/)" />
    <import index="csvn" ref="r:a91e42c5-728b-4866-86c4-d97454f4aee4(jetbrains.mps.lang.behavior.behavior)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="u78q" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.typesystem.inference(MPS.Core/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="1i04" ref="r:3270011d-8b2d-4938-8dff-d256a759e017(jetbrains.mps.lang.behavior.structure)" />
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
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1153417849900" name="jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression" flags="nn" index="2d3UOw" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1173175405605" name="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression" flags="nn" index="AH0OO">
        <child id="1173175577737" name="index" index="AHEQo" />
        <child id="1173175590490" name="array" index="AHHXb" />
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
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P">
        <reference id="1182955020723" name="classConcept" index="1HBi2w" />
      </concept>
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
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
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1160998861373" name="jetbrains.mps.baseLanguage.structure.AssertStatement" flags="nn" index="1gVbGN">
        <child id="1160998896846" name="condition" index="1gVkn0" />
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
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1081855346303" name="jetbrains.mps.baseLanguage.structure.BreakStatement" flags="nn" index="3zACq4" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
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
      <concept id="1216383337216" name="jetbrains.mps.lang.typesystem.structure.ConceptFunctionParameter_node" flags="nn" index="Q6c8r" />
    </language>
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="767145758118872828" name="jetbrains.mps.lang.actions.structure.NF_Node_ReplaceWithNewOperation" flags="nn" index="2DeJnW" />
    </language>
    <language id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal">
      <concept id="1174294166120" name="jetbrains.mps.baseLanguageInternal.structure.InternalPartialInstanceMethodCall" flags="nn" index="1DoJHT">
        <property id="1174294288199" name="methodName" index="1Dpdpm" />
        <child id="1174313653259" name="returnType" index="1Ez5kq" />
        <child id="1174317636233" name="instance" index="1EMhIo" />
        <child id="1174318197094" name="actualArgument" index="1EOqxR" />
      </concept>
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
      <concept id="1140725362528" name="jetbrains.mps.lang.smodel.structure.Link_SetTargetOperation" flags="nn" index="2oxUTD">
        <child id="1140725362529" name="linkTarget" index="2oxUTC" />
      </concept>
      <concept id="1138661924179" name="jetbrains.mps.lang.smodel.structure.Property_SetOperation" flags="nn" index="tyxLq">
        <child id="1138662048170" name="value" index="tz02z" />
      </concept>
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="2644386474302386080" name="jetbrains.mps.lang.smodel.structure.PropertyIdRefExpression" flags="nn" index="355D3s">
        <reference id="2644386474302386081" name="conceptDeclaration" index="355D3t" />
        <reference id="2644386474302386082" name="propertyDeclaration" index="355D3u" />
      </concept>
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz">
        <reference id="6677504323281689839" name="conceptDeclaration" index="3bZ5Sy" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1144146199828" name="jetbrains.mps.lang.smodel.structure.Node_CopyOperation" flags="nn" index="1$rogu" />
      <concept id="1139867745658" name="jetbrains.mps.lang.smodel.structure.Node_ReplaceWithNewOperation" flags="nn" index="1_qnLN">
        <reference id="1139867957129" name="concept" index="1_rbq0" />
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
      <concept id="1172420572800" name="jetbrains.mps.lang.smodel.structure.ConceptNodeType" flags="in" index="3THzug" />
      <concept id="1228341669568" name="jetbrains.mps.lang.smodel.structure.Node_DetachOperation" flags="nn" index="3YRAZt" />
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
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1162934736510" name="jetbrains.mps.baseLanguage.collections.structure.GetElementOperation" flags="nn" index="34jXtK" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
    </language>
  </registry>
  <node concept="312cEu" id="0">
    <property role="3GE5qa" value="quickfixes" />
    <property role="TrG5h" value="FixMethodSignature_QuickFix" />
    <uo k="s:originTrace" v="n:3834658221333152923" />
    <node concept="3clFbW" id="1" role="jymVt">
      <uo k="s:originTrace" v="n:3834658221333152923" />
      <node concept="3clFbS" id="7" role="3clF47">
        <uo k="s:originTrace" v="n:3834658221333152923" />
        <node concept="XkiVB" id="a" role="3cqZAp">
          <ref role="37wK5l" to="2gg1:~QuickFix_Runtime.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="QuickFix_Runtime" />
          <uo k="s:originTrace" v="n:3834658221333152923" />
          <node concept="2ShNRf" id="b" role="37wK5m">
            <uo k="s:originTrace" v="n:3834658221333152923" />
            <node concept="1pGfFk" id="c" role="2ShVmc">
              <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
              <uo k="s:originTrace" v="n:3834658221333152923" />
              <node concept="Xl_RD" id="d" role="37wK5m">
                <property role="Xl_RC" value="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
                <uo k="s:originTrace" v="n:3834658221333152923" />
              </node>
              <node concept="Xl_RD" id="e" role="37wK5m">
                <property role="Xl_RC" value="3834658221333152923" />
                <uo k="s:originTrace" v="n:3834658221333152923" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="8" role="3clF45">
        <uo k="s:originTrace" v="n:3834658221333152923" />
      </node>
      <node concept="3Tm1VV" id="9" role="1B3o_S">
        <uo k="s:originTrace" v="n:3834658221333152923" />
      </node>
    </node>
    <node concept="3clFb_" id="2" role="jymVt">
      <property role="TrG5h" value="getDescription" />
      <uo k="s:originTrace" v="n:3834658221333152923" />
      <node concept="3Tm1VV" id="f" role="1B3o_S">
        <uo k="s:originTrace" v="n:3834658221333152923" />
      </node>
      <node concept="3clFbS" id="g" role="3clF47">
        <uo k="s:originTrace" v="n:3834658221333152930" />
        <node concept="3clFbF" id="j" role="3cqZAp">
          <uo k="s:originTrace" v="n:3834658221333152931" />
          <node concept="Xl_RD" id="k" role="3clFbG">
            <property role="Xl_RC" value="Fix Method Signature" />
            <uo k="s:originTrace" v="n:3834658221333152932" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="h" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:3834658221333152923" />
        <node concept="3uibUv" id="l" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:3834658221333152923" />
        </node>
      </node>
      <node concept="17QB3L" id="i" role="3clF45">
        <uo k="s:originTrace" v="n:3834658221333152923" />
      </node>
    </node>
    <node concept="3clFb_" id="3" role="jymVt">
      <property role="TrG5h" value="execute" />
      <uo k="s:originTrace" v="n:3834658221333152923" />
      <node concept="3clFbS" id="m" role="3clF47">
        <uo k="s:originTrace" v="n:3834658221333152925" />
        <node concept="3clFbF" id="q" role="3cqZAp">
          <uo k="s:originTrace" v="n:3834658221333152937" />
          <node concept="2OqwBi" id="u" role="3clFbG">
            <uo k="s:originTrace" v="n:3834658221333152938" />
            <node concept="2OqwBi" id="v" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3834658221333152939" />
              <node concept="1eOMI4" id="x" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3834658221333161509" />
                <node concept="10QFUN" id="z" role="1eOMHV">
                  <node concept="3Tqbb2" id="$" role="10QFUM">
                    <ref role="ehGHo" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
                    <uo k="s:originTrace" v="n:3834658221333152928" />
                  </node>
                  <node concept="AH0OO" id="_" role="10QFUP">
                    <node concept="3cmrfG" id="A" role="AHEQo">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="1DoJHT" id="B" role="AHHXb">
                      <property role="1Dpdpm" value="getField" />
                      <node concept="Xl_RD" id="C" role="1EOqxR">
                        <property role="Xl_RC" value="conceptMethod" />
                      </node>
                      <node concept="10Q1$e" id="D" role="1Ez5kq">
                        <node concept="3uibUv" id="F" role="10Q1$1">
                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                        </node>
                      </node>
                      <node concept="Xjq3P" id="E" role="1EMhIo">
                        <ref role="1HBi2w" node="0" resolve="FixMethodSignature_QuickFix" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3TrEf2" id="y" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fzclF7X" resolve="returnType" />
                <uo k="s:originTrace" v="n:3834658221333152941" />
              </node>
            </node>
            <node concept="2oxUTD" id="w" role="2OqNvi">
              <uo k="s:originTrace" v="n:3834658221333152942" />
              <node concept="2OqwBi" id="G" role="2oxUTC">
                <uo k="s:originTrace" v="n:3834658221333152943" />
                <node concept="2OqwBi" id="H" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:3834658221333152944" />
                  <node concept="2OqwBi" id="J" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:3834658221333152945" />
                    <node concept="1eOMI4" id="L" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:3834658221333161512" />
                      <node concept="10QFUN" id="N" role="1eOMHV">
                        <node concept="3Tqbb2" id="O" role="10QFUM">
                          <ref role="ehGHo" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
                          <uo k="s:originTrace" v="n:3834658221333152928" />
                        </node>
                        <node concept="AH0OO" id="P" role="10QFUP">
                          <node concept="3cmrfG" id="Q" role="AHEQo">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="1DoJHT" id="R" role="AHHXb">
                            <property role="1Dpdpm" value="getField" />
                            <node concept="Xl_RD" id="S" role="1EOqxR">
                              <property role="Xl_RC" value="conceptMethod" />
                            </node>
                            <node concept="10Q1$e" id="T" role="1Ez5kq">
                              <node concept="3uibUv" id="V" role="10Q1$1">
                                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                              </node>
                            </node>
                            <node concept="Xjq3P" id="U" role="1EMhIo">
                              <ref role="1HBi2w" node="0" resolve="FixMethodSignature_QuickFix" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3TrEf2" id="M" role="2OqNvi">
                      <ref role="3Tt5mk" to="1i04:hP3i0lZ" resolve="overriddenMethod" />
                      <uo k="s:originTrace" v="n:3834658221333152947" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="K" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:fzclF7X" resolve="returnType" />
                    <uo k="s:originTrace" v="n:3834658221333152948" />
                  </node>
                </node>
                <node concept="1$rogu" id="I" role="2OqNvi">
                  <uo k="s:originTrace" v="n:3834658221333152949" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="r" role="3cqZAp">
          <uo k="s:originTrace" v="n:3834658221333152950" />
          <node concept="3cpWsn" id="W" role="3cpWs9">
            <property role="TrG5h" value="paramCount" />
            <uo k="s:originTrace" v="n:3834658221333152951" />
            <node concept="10Oyi0" id="X" role="1tU5fm">
              <uo k="s:originTrace" v="n:3834658221333152952" />
            </node>
            <node concept="2OqwBi" id="Y" role="33vP2m">
              <uo k="s:originTrace" v="n:3834658221333152953" />
              <node concept="2OqwBi" id="Z" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3834658221333152954" />
                <node concept="2OqwBi" id="11" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:3834658221333152955" />
                  <node concept="1eOMI4" id="13" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:3834658221333161513" />
                    <node concept="10QFUN" id="15" role="1eOMHV">
                      <node concept="3Tqbb2" id="16" role="10QFUM">
                        <ref role="ehGHo" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
                        <uo k="s:originTrace" v="n:3834658221333152928" />
                      </node>
                      <node concept="AH0OO" id="17" role="10QFUP">
                        <node concept="3cmrfG" id="18" role="AHEQo">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="1DoJHT" id="19" role="AHHXb">
                          <property role="1Dpdpm" value="getField" />
                          <node concept="Xl_RD" id="1a" role="1EOqxR">
                            <property role="Xl_RC" value="conceptMethod" />
                          </node>
                          <node concept="10Q1$e" id="1b" role="1Ez5kq">
                            <node concept="3uibUv" id="1d" role="10Q1$1">
                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                            </node>
                          </node>
                          <node concept="Xjq3P" id="1c" role="1EMhIo">
                            <ref role="1HBi2w" node="0" resolve="FixMethodSignature_QuickFix" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3TrEf2" id="14" role="2OqNvi">
                    <ref role="3Tt5mk" to="1i04:hP3i0lZ" resolve="overriddenMethod" />
                    <uo k="s:originTrace" v="n:3834658221333152957" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="12" role="2OqNvi">
                  <ref role="3TtcxE" to="tpee:fzclF7Y" resolve="parameter" />
                  <uo k="s:originTrace" v="n:3834658221333152958" />
                </node>
              </node>
              <node concept="34oBXx" id="10" role="2OqNvi">
                <uo k="s:originTrace" v="n:1810715974610193515" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="s" role="3cqZAp">
          <uo k="s:originTrace" v="n:3834658221333152960" />
          <node concept="3cpWsn" id="1e" role="3cpWs9">
            <property role="TrG5h" value="currentParamCount" />
            <uo k="s:originTrace" v="n:3834658221333152961" />
            <node concept="10Oyi0" id="1f" role="1tU5fm">
              <uo k="s:originTrace" v="n:3834658221333152962" />
            </node>
            <node concept="2OqwBi" id="1g" role="33vP2m">
              <uo k="s:originTrace" v="n:3834658221333152963" />
              <node concept="2OqwBi" id="1h" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3834658221333152964" />
                <node concept="1eOMI4" id="1j" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:3834658221333161514" />
                  <node concept="10QFUN" id="1l" role="1eOMHV">
                    <node concept="3Tqbb2" id="1m" role="10QFUM">
                      <ref role="ehGHo" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
                      <uo k="s:originTrace" v="n:3834658221333152928" />
                    </node>
                    <node concept="AH0OO" id="1n" role="10QFUP">
                      <node concept="3cmrfG" id="1o" role="AHEQo">
                        <property role="3cmrfH" value="0" />
                      </node>
                      <node concept="1DoJHT" id="1p" role="AHHXb">
                        <property role="1Dpdpm" value="getField" />
                        <node concept="Xl_RD" id="1q" role="1EOqxR">
                          <property role="Xl_RC" value="conceptMethod" />
                        </node>
                        <node concept="10Q1$e" id="1r" role="1Ez5kq">
                          <node concept="3uibUv" id="1t" role="10Q1$1">
                            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                          </node>
                        </node>
                        <node concept="Xjq3P" id="1s" role="1EMhIo">
                          <ref role="1HBi2w" node="0" resolve="FixMethodSignature_QuickFix" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3Tsc0h" id="1k" role="2OqNvi">
                  <ref role="3TtcxE" to="tpee:fzclF7Y" resolve="parameter" />
                  <uo k="s:originTrace" v="n:3834658221333152966" />
                </node>
              </node>
              <node concept="34oBXx" id="1i" role="2OqNvi">
                <uo k="s:originTrace" v="n:1810715974610193541" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="t" role="3cqZAp">
          <uo k="s:originTrace" v="n:3834658221333152968" />
          <node concept="3clFbS" id="1u" role="2LFqv$">
            <uo k="s:originTrace" v="n:3834658221333152969" />
            <node concept="3clFbJ" id="1y" role="3cqZAp">
              <uo k="s:originTrace" v="n:3834658221333152970" />
              <node concept="1Wc70l" id="1_" role="3clFbw">
                <uo k="s:originTrace" v="n:3834658221333152971" />
                <node concept="3eOVzh" id="1B" role="3uHU7w">
                  <uo k="s:originTrace" v="n:3834658221333152972" />
                  <node concept="37vLTw" id="1D" role="3uHU7w">
                    <ref role="3cqZAo" node="1e" resolve="currentParamCount" />
                    <uo k="s:originTrace" v="n:4265636116363067841" />
                  </node>
                  <node concept="37vLTw" id="1E" role="3uHU7B">
                    <ref role="3cqZAo" node="1v" resolve="i" />
                    <uo k="s:originTrace" v="n:4265636116363086888" />
                  </node>
                </node>
                <node concept="3eOVzh" id="1C" role="3uHU7B">
                  <uo k="s:originTrace" v="n:3834658221333152975" />
                  <node concept="37vLTw" id="1F" role="3uHU7B">
                    <ref role="3cqZAo" node="1v" resolve="i" />
                    <uo k="s:originTrace" v="n:4265636116363068257" />
                  </node>
                  <node concept="37vLTw" id="1G" role="3uHU7w">
                    <ref role="3cqZAo" node="W" resolve="paramCount" />
                    <uo k="s:originTrace" v="n:4265636116363104562" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="1A" role="3clFbx">
                <uo k="s:originTrace" v="n:3834658221333152978" />
                <node concept="3clFbF" id="1H" role="3cqZAp">
                  <uo k="s:originTrace" v="n:3834658221333152979" />
                  <node concept="2OqwBi" id="1I" role="3clFbG">
                    <uo k="s:originTrace" v="n:3834658221333152980" />
                    <node concept="2OqwBi" id="1J" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:3834658221333152981" />
                      <node concept="2OqwBi" id="1L" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:3834658221333152982" />
                        <node concept="2OqwBi" id="1N" role="2Oq$k0">
                          <uo k="s:originTrace" v="n:3834658221333152983" />
                          <node concept="1eOMI4" id="1P" role="2Oq$k0">
                            <uo k="s:originTrace" v="n:3834658221333161516" />
                            <node concept="10QFUN" id="1R" role="1eOMHV">
                              <node concept="3Tqbb2" id="1S" role="10QFUM">
                                <ref role="ehGHo" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
                                <uo k="s:originTrace" v="n:3834658221333152928" />
                              </node>
                              <node concept="AH0OO" id="1T" role="10QFUP">
                                <node concept="3cmrfG" id="1U" role="AHEQo">
                                  <property role="3cmrfH" value="0" />
                                </node>
                                <node concept="1DoJHT" id="1V" role="AHHXb">
                                  <property role="1Dpdpm" value="getField" />
                                  <node concept="Xl_RD" id="1W" role="1EOqxR">
                                    <property role="Xl_RC" value="conceptMethod" />
                                  </node>
                                  <node concept="10Q1$e" id="1X" role="1Ez5kq">
                                    <node concept="3uibUv" id="1Z" role="10Q1$1">
                                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                    </node>
                                  </node>
                                  <node concept="Xjq3P" id="1Y" role="1EMhIo">
                                    <ref role="1HBi2w" node="0" resolve="FixMethodSignature_QuickFix" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3Tsc0h" id="1Q" role="2OqNvi">
                            <ref role="3TtcxE" to="tpee:fzclF7Y" resolve="parameter" />
                            <uo k="s:originTrace" v="n:3834658221333152985" />
                          </node>
                        </node>
                        <node concept="34jXtK" id="1O" role="2OqNvi">
                          <uo k="s:originTrace" v="n:3834658221333152986" />
                          <node concept="37vLTw" id="20" role="25WWJ7">
                            <ref role="3cqZAo" node="1v" resolve="i" />
                            <uo k="s:originTrace" v="n:4265636116363088118" />
                          </node>
                        </node>
                      </node>
                      <node concept="3TrEf2" id="1M" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpee:4VkOLwjf83e" resolve="type" />
                        <uo k="s:originTrace" v="n:3834658221333152988" />
                      </node>
                    </node>
                    <node concept="2oxUTD" id="1K" role="2OqNvi">
                      <uo k="s:originTrace" v="n:3834658221333152989" />
                      <node concept="2OqwBi" id="21" role="2oxUTC">
                        <uo k="s:originTrace" v="n:3834658221333152990" />
                        <node concept="2OqwBi" id="22" role="2Oq$k0">
                          <uo k="s:originTrace" v="n:3834658221333152991" />
                          <node concept="2OqwBi" id="24" role="2Oq$k0">
                            <uo k="s:originTrace" v="n:3834658221333152992" />
                            <node concept="2OqwBi" id="26" role="2Oq$k0">
                              <uo k="s:originTrace" v="n:3834658221333152993" />
                              <node concept="2OqwBi" id="28" role="2Oq$k0">
                                <uo k="s:originTrace" v="n:3834658221333152994" />
                                <node concept="1eOMI4" id="2a" role="2Oq$k0">
                                  <uo k="s:originTrace" v="n:3834658221333161515" />
                                  <node concept="10QFUN" id="2c" role="1eOMHV">
                                    <node concept="3Tqbb2" id="2d" role="10QFUM">
                                      <ref role="ehGHo" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
                                      <uo k="s:originTrace" v="n:3834658221333152928" />
                                    </node>
                                    <node concept="AH0OO" id="2e" role="10QFUP">
                                      <node concept="3cmrfG" id="2f" role="AHEQo">
                                        <property role="3cmrfH" value="0" />
                                      </node>
                                      <node concept="1DoJHT" id="2g" role="AHHXb">
                                        <property role="1Dpdpm" value="getField" />
                                        <node concept="Xl_RD" id="2h" role="1EOqxR">
                                          <property role="Xl_RC" value="conceptMethod" />
                                        </node>
                                        <node concept="10Q1$e" id="2i" role="1Ez5kq">
                                          <node concept="3uibUv" id="2k" role="10Q1$1">
                                            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                          </node>
                                        </node>
                                        <node concept="Xjq3P" id="2j" role="1EMhIo">
                                          <ref role="1HBi2w" node="0" resolve="FixMethodSignature_QuickFix" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3TrEf2" id="2b" role="2OqNvi">
                                  <ref role="3Tt5mk" to="1i04:hP3i0lZ" resolve="overriddenMethod" />
                                  <uo k="s:originTrace" v="n:3834658221333152996" />
                                </node>
                              </node>
                              <node concept="3Tsc0h" id="29" role="2OqNvi">
                                <ref role="3TtcxE" to="tpee:fzclF7Y" resolve="parameter" />
                                <uo k="s:originTrace" v="n:3834658221333152997" />
                              </node>
                            </node>
                            <node concept="34jXtK" id="27" role="2OqNvi">
                              <uo k="s:originTrace" v="n:3834658221333152998" />
                              <node concept="37vLTw" id="2l" role="25WWJ7">
                                <ref role="3cqZAo" node="1v" resolve="i" />
                                <uo k="s:originTrace" v="n:4265636116363091416" />
                              </node>
                            </node>
                          </node>
                          <node concept="3TrEf2" id="25" role="2OqNvi">
                            <ref role="3Tt5mk" to="tpee:4VkOLwjf83e" resolve="type" />
                            <uo k="s:originTrace" v="n:3834658221333153000" />
                          </node>
                        </node>
                        <node concept="1$rogu" id="23" role="2OqNvi">
                          <uo k="s:originTrace" v="n:3834658221333153001" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1z" role="3cqZAp">
              <uo k="s:originTrace" v="n:3834658221333153002" />
              <node concept="3clFbS" id="2m" role="3clFbx">
                <uo k="s:originTrace" v="n:3834658221333153003" />
                <node concept="3clFbF" id="2o" role="3cqZAp">
                  <uo k="s:originTrace" v="n:3834658221333153004" />
                  <node concept="2OqwBi" id="2p" role="3clFbG">
                    <uo k="s:originTrace" v="n:3834658221333153005" />
                    <node concept="2OqwBi" id="2q" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:3834658221333153006" />
                      <node concept="1eOMI4" id="2s" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:3834658221333161519" />
                        <node concept="10QFUN" id="2u" role="1eOMHV">
                          <node concept="3Tqbb2" id="2v" role="10QFUM">
                            <ref role="ehGHo" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
                            <uo k="s:originTrace" v="n:3834658221333152928" />
                          </node>
                          <node concept="AH0OO" id="2w" role="10QFUP">
                            <node concept="3cmrfG" id="2x" role="AHEQo">
                              <property role="3cmrfH" value="0" />
                            </node>
                            <node concept="1DoJHT" id="2y" role="AHHXb">
                              <property role="1Dpdpm" value="getField" />
                              <node concept="Xl_RD" id="2z" role="1EOqxR">
                                <property role="Xl_RC" value="conceptMethod" />
                              </node>
                              <node concept="10Q1$e" id="2$" role="1Ez5kq">
                                <node concept="3uibUv" id="2A" role="10Q1$1">
                                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                </node>
                              </node>
                              <node concept="Xjq3P" id="2_" role="1EMhIo">
                                <ref role="1HBi2w" node="0" resolve="FixMethodSignature_QuickFix" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3Tsc0h" id="2t" role="2OqNvi">
                        <ref role="3TtcxE" to="tpee:fzclF7Y" resolve="parameter" />
                        <uo k="s:originTrace" v="n:3834658221333153008" />
                      </node>
                    </node>
                    <node concept="TSZUe" id="2r" role="2OqNvi">
                      <uo k="s:originTrace" v="n:1810715974610193479" />
                      <node concept="2OqwBi" id="2B" role="25WWJ7">
                        <uo k="s:originTrace" v="n:3834658221333153010" />
                        <node concept="2OqwBi" id="2C" role="2Oq$k0">
                          <uo k="s:originTrace" v="n:3834658221333153011" />
                          <node concept="2OqwBi" id="2E" role="2Oq$k0">
                            <uo k="s:originTrace" v="n:3834658221333153012" />
                            <node concept="2OqwBi" id="2G" role="2Oq$k0">
                              <uo k="s:originTrace" v="n:3834658221333153013" />
                              <node concept="1eOMI4" id="2I" role="2Oq$k0">
                                <uo k="s:originTrace" v="n:3834658221333161522" />
                                <node concept="10QFUN" id="2K" role="1eOMHV">
                                  <node concept="3Tqbb2" id="2L" role="10QFUM">
                                    <ref role="ehGHo" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
                                    <uo k="s:originTrace" v="n:3834658221333152928" />
                                  </node>
                                  <node concept="AH0OO" id="2M" role="10QFUP">
                                    <node concept="3cmrfG" id="2N" role="AHEQo">
                                      <property role="3cmrfH" value="0" />
                                    </node>
                                    <node concept="1DoJHT" id="2O" role="AHHXb">
                                      <property role="1Dpdpm" value="getField" />
                                      <node concept="Xl_RD" id="2P" role="1EOqxR">
                                        <property role="Xl_RC" value="conceptMethod" />
                                      </node>
                                      <node concept="10Q1$e" id="2Q" role="1Ez5kq">
                                        <node concept="3uibUv" id="2S" role="10Q1$1">
                                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                        </node>
                                      </node>
                                      <node concept="Xjq3P" id="2R" role="1EMhIo">
                                        <ref role="1HBi2w" node="0" resolve="FixMethodSignature_QuickFix" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3TrEf2" id="2J" role="2OqNvi">
                                <ref role="3Tt5mk" to="1i04:hP3i0lZ" resolve="overriddenMethod" />
                                <uo k="s:originTrace" v="n:3834658221333153015" />
                              </node>
                            </node>
                            <node concept="3Tsc0h" id="2H" role="2OqNvi">
                              <ref role="3TtcxE" to="tpee:fzclF7Y" resolve="parameter" />
                              <uo k="s:originTrace" v="n:3834658221333153016" />
                            </node>
                          </node>
                          <node concept="34jXtK" id="2F" role="2OqNvi">
                            <uo k="s:originTrace" v="n:3834658221333153017" />
                            <node concept="37vLTw" id="2T" role="25WWJ7">
                              <ref role="3cqZAo" node="1v" resolve="i" />
                              <uo k="s:originTrace" v="n:4265636116363097406" />
                            </node>
                          </node>
                        </node>
                        <node concept="1$rogu" id="2D" role="2OqNvi">
                          <uo k="s:originTrace" v="n:3834658221333153019" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2d3UOw" id="2n" role="3clFbw">
                <uo k="s:originTrace" v="n:3834658221333153020" />
                <node concept="37vLTw" id="2U" role="3uHU7B">
                  <ref role="3cqZAo" node="1v" resolve="i" />
                  <uo k="s:originTrace" v="n:4265636116363104621" />
                </node>
                <node concept="37vLTw" id="2V" role="3uHU7w">
                  <ref role="3cqZAo" node="1e" resolve="currentParamCount" />
                  <uo k="s:originTrace" v="n:4265636116363074889" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1$" role="3cqZAp">
              <uo k="s:originTrace" v="n:3834658221333153023" />
              <node concept="3clFbS" id="2W" role="3clFbx">
                <uo k="s:originTrace" v="n:3834658221333153024" />
                <node concept="1Dw8fO" id="2Y" role="3cqZAp">
                  <uo k="s:originTrace" v="n:3834658221333153025" />
                  <node concept="3cpWsn" id="30" role="1Duv9x">
                    <property role="TrG5h" value="j" />
                    <uo k="s:originTrace" v="n:3834658221333153026" />
                    <node concept="10Oyi0" id="34" role="1tU5fm">
                      <uo k="s:originTrace" v="n:3834658221333153027" />
                    </node>
                    <node concept="3cmrfG" id="35" role="33vP2m">
                      <property role="3cmrfH" value="0" />
                      <uo k="s:originTrace" v="n:3834658221333153028" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="31" role="2LFqv$">
                    <uo k="s:originTrace" v="n:3834658221333153029" />
                    <node concept="3clFbF" id="36" role="3cqZAp">
                      <uo k="s:originTrace" v="n:3834658221333153030" />
                      <node concept="2OqwBi" id="37" role="3clFbG">
                        <uo k="s:originTrace" v="n:3834658221333153031" />
                        <node concept="2OqwBi" id="38" role="2Oq$k0">
                          <uo k="s:originTrace" v="n:3834658221333153032" />
                          <node concept="2OqwBi" id="3a" role="2Oq$k0">
                            <uo k="s:originTrace" v="n:3834658221333153033" />
                            <node concept="1eOMI4" id="3c" role="2Oq$k0">
                              <uo k="s:originTrace" v="n:3834658221333161523" />
                              <node concept="10QFUN" id="3e" role="1eOMHV">
                                <node concept="3Tqbb2" id="3f" role="10QFUM">
                                  <ref role="ehGHo" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
                                  <uo k="s:originTrace" v="n:3834658221333152928" />
                                </node>
                                <node concept="AH0OO" id="3g" role="10QFUP">
                                  <node concept="3cmrfG" id="3h" role="AHEQo">
                                    <property role="3cmrfH" value="0" />
                                  </node>
                                  <node concept="1DoJHT" id="3i" role="AHHXb">
                                    <property role="1Dpdpm" value="getField" />
                                    <node concept="Xl_RD" id="3j" role="1EOqxR">
                                      <property role="Xl_RC" value="conceptMethod" />
                                    </node>
                                    <node concept="10Q1$e" id="3k" role="1Ez5kq">
                                      <node concept="3uibUv" id="3m" role="10Q1$1">
                                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                      </node>
                                    </node>
                                    <node concept="Xjq3P" id="3l" role="1EMhIo">
                                      <ref role="1HBi2w" node="0" resolve="FixMethodSignature_QuickFix" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3Tsc0h" id="3d" role="2OqNvi">
                              <ref role="3TtcxE" to="tpee:fzclF7Y" resolve="parameter" />
                              <uo k="s:originTrace" v="n:3834658221333153035" />
                            </node>
                          </node>
                          <node concept="34jXtK" id="3b" role="2OqNvi">
                            <uo k="s:originTrace" v="n:3834658221333153036" />
                            <node concept="37vLTw" id="3n" role="25WWJ7">
                              <ref role="3cqZAo" node="1v" resolve="i" />
                              <uo k="s:originTrace" v="n:4265636116363105293" />
                            </node>
                          </node>
                        </node>
                        <node concept="3YRAZt" id="39" role="2OqNvi">
                          <uo k="s:originTrace" v="n:3834658221333153038" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3eOVzh" id="32" role="1Dwp0S">
                    <uo k="s:originTrace" v="n:3834658221333153039" />
                    <node concept="37vLTw" id="3o" role="3uHU7B">
                      <ref role="3cqZAo" node="30" resolve="j" />
                      <uo k="s:originTrace" v="n:4265636116363078392" />
                    </node>
                    <node concept="3cpWsd" id="3p" role="3uHU7w">
                      <uo k="s:originTrace" v="n:3834658221333153041" />
                      <node concept="37vLTw" id="3q" role="3uHU7w">
                        <ref role="3cqZAo" node="W" resolve="paramCount" />
                        <uo k="s:originTrace" v="n:4265636116363065123" />
                      </node>
                      <node concept="37vLTw" id="3r" role="3uHU7B">
                        <ref role="3cqZAo" node="1e" resolve="currentParamCount" />
                        <uo k="s:originTrace" v="n:4265636116363099644" />
                      </node>
                    </node>
                  </node>
                  <node concept="3uNrnE" id="33" role="1Dwrff">
                    <uo k="s:originTrace" v="n:3834658221333153044" />
                    <node concept="37vLTw" id="3s" role="2$L3a6">
                      <ref role="3cqZAo" node="30" resolve="j" />
                      <uo k="s:originTrace" v="n:4265636116363096076" />
                    </node>
                  </node>
                </node>
                <node concept="3zACq4" id="2Z" role="3cqZAp">
                  <uo k="s:originTrace" v="n:3834658221333153046" />
                </node>
              </node>
              <node concept="2d3UOw" id="2X" role="3clFbw">
                <uo k="s:originTrace" v="n:3834658221333153047" />
                <node concept="37vLTw" id="3t" role="3uHU7w">
                  <ref role="3cqZAo" node="W" resolve="paramCount" />
                  <uo k="s:originTrace" v="n:4265636116363095218" />
                </node>
                <node concept="37vLTw" id="3u" role="3uHU7B">
                  <ref role="3cqZAo" node="1v" resolve="i" />
                  <uo k="s:originTrace" v="n:4265636116363102895" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="1v" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <uo k="s:originTrace" v="n:3834658221333153050" />
            <node concept="10Oyi0" id="3v" role="1tU5fm">
              <uo k="s:originTrace" v="n:3834658221333153051" />
            </node>
            <node concept="3cmrfG" id="3w" role="33vP2m">
              <property role="3cmrfH" value="0" />
              <uo k="s:originTrace" v="n:3834658221333153052" />
            </node>
          </node>
          <node concept="3eOVzh" id="1w" role="1Dwp0S">
            <uo k="s:originTrace" v="n:3834658221333153053" />
            <node concept="2YIFZM" id="3x" role="3uHU7w">
              <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
              <ref role="37wK5l" to="wyt6:~Math.max(int,int)" resolve="max" />
              <uo k="s:originTrace" v="n:3834658221333153054" />
              <node concept="37vLTw" id="3z" role="37wK5m">
                <ref role="3cqZAo" node="W" resolve="paramCount" />
                <uo k="s:originTrace" v="n:4265636116363085436" />
              </node>
              <node concept="37vLTw" id="3$" role="37wK5m">
                <ref role="3cqZAo" node="1e" resolve="currentParamCount" />
                <uo k="s:originTrace" v="n:4265636116363092318" />
              </node>
            </node>
            <node concept="37vLTw" id="3y" role="3uHU7B">
              <ref role="3cqZAo" node="1v" resolve="i" />
              <uo k="s:originTrace" v="n:4265636116363076558" />
            </node>
          </node>
          <node concept="3uNrnE" id="1x" role="1Dwrff">
            <uo k="s:originTrace" v="n:3834658221333153058" />
            <node concept="37vLTw" id="3_" role="2$L3a6">
              <ref role="3cqZAo" node="1v" resolve="i" />
              <uo k="s:originTrace" v="n:4265636116363090947" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="n" role="3clF45">
        <uo k="s:originTrace" v="n:3834658221333152923" />
      </node>
      <node concept="3Tm1VV" id="o" role="1B3o_S">
        <uo k="s:originTrace" v="n:3834658221333152923" />
      </node>
      <node concept="37vLTG" id="p" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:3834658221333152923" />
        <node concept="3uibUv" id="3A" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:3834658221333152923" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="4" role="1B3o_S">
      <uo k="s:originTrace" v="n:3834658221333152923" />
    </node>
    <node concept="3uibUv" id="5" role="1zkMxy">
      <ref role="3uigEE" to="2gg1:~QuickFix_Runtime" resolve="QuickFix_Runtime" />
      <uo k="s:originTrace" v="n:3834658221333152923" />
    </node>
    <node concept="6wLe0" id="6" role="lGtFl">
      <property role="6wLej" value="3834658221333152923" />
      <property role="6wLeW" value="jetbrains.mps.lang.behavior.typesystem" />
      <uo k="s:originTrace" v="n:3834658221333152923" />
    </node>
  </node>
  <node concept="39dXUE" id="3B">
    <node concept="39e2AJ" id="3C" role="39e2AI">
      <property role="39e3Y2" value="classForRule" />
      <node concept="39e2AG" id="3H" role="39e3Y0">
        <ref role="39e2AK" to="xmfs:5sqSqyx2NtQ" resolve="ObsoleteConceptMethodCallCheck" />
        <node concept="385nmt" id="3U" role="385vvn">
          <property role="385vuF" value="ObsoleteConceptMethodCallCheck" />
          <node concept="3u3nmq" id="3W" role="385v07">
            <property role="3u3nmv" value="6276577145066829686" />
          </node>
        </node>
        <node concept="39e2AT" id="3V" role="39e2AY">
          <ref role="39e2AS" node="9x" resolve="ObsoleteConceptMethodCallCheck_NonTypesystemRule" />
        </node>
      </node>
      <node concept="39e2AG" id="3I" role="39e3Y0">
        <ref role="39e2AK" to="xmfs:6WSEafdwp3b" resolve="check_AbstractMethodIsVirtual" />
        <node concept="385nmt" id="3X" role="385vvn">
          <property role="385vuF" value="check_AbstractMethodIsVirtual" />
          <node concept="3u3nmq" id="3Z" role="385v07">
            <property role="3u3nmv" value="8014340958386753739" />
          </node>
        </node>
        <node concept="39e2AT" id="3Y" role="39e2AY">
          <ref role="39e2AS" node="ho" resolve="check_AbstractMethodIsVirtual_NonTypesystemRule" />
        </node>
      </node>
      <node concept="39e2AG" id="3J" role="39e3Y0">
        <ref role="39e2AK" to="xmfs:hrWhlMD" resolve="check_ConceptBehaviorForNotImplementedMethods" />
        <node concept="385nmt" id="40" role="385vvn">
          <property role="385vuF" value="check_ConceptBehaviorForNotImplementedMethods" />
          <node concept="3u3nmq" id="42" role="385v07">
            <property role="3u3nmv" value="1198233312425" />
          </node>
        </node>
        <node concept="39e2AT" id="41" role="39e2AY">
          <ref role="39e2AS" node="iX" resolve="check_ConceptBehaviorForNotImplementedMethods_NonTypesystemRule" />
        </node>
      </node>
      <node concept="39e2AG" id="3K" role="39e3Y0">
        <ref role="39e2AK" to="xmfs:6ONtaJUkKzl" resolve="check_FinalAndAbstractMethod" />
        <node concept="385nmt" id="43" role="385vvn">
          <property role="385vuF" value="check_FinalAndAbstractMethod" />
          <node concept="3u3nmq" id="45" role="385v07">
            <property role="3u3nmv" value="7868761255934363861" />
          </node>
        </node>
        <node concept="39e2AT" id="44" role="39e2AY">
          <ref role="39e2AS" node="mj" resolve="check_FinalAndAbstractMethod_NonTypesystemRule" />
        </node>
      </node>
      <node concept="39e2AG" id="3L" role="39e3Y0">
        <ref role="39e2AK" to="xmfs:6WSEafdwUJG" resolve="check_FinalMethodIsVirtual" />
        <node concept="385nmt" id="46" role="385vvn">
          <property role="385vuF" value="check_FinalMethodIsVirtual" />
          <node concept="3u3nmq" id="48" role="385v07">
            <property role="3u3nmv" value="8014340958386891756" />
          </node>
        </node>
        <node concept="39e2AT" id="47" role="39e2AY">
          <ref role="39e2AS" node="od" resolve="check_FinalMethodIsVirtual_NonTypesystemRule" />
        </node>
      </node>
      <node concept="39e2AG" id="3M" role="39e3Y0">
        <ref role="39e2AK" to="xmfs:hQYzN6T" resolve="check_MethodIsCorrectlyOverriden" />
        <node concept="385nmt" id="49" role="385vvn">
          <property role="385vuF" value="check_MethodIsCorrectlyOverriden" />
          <node concept="3u3nmq" id="4b" role="385v07">
            <property role="3u3nmv" value="1227262734777" />
          </node>
        </node>
        <node concept="39e2AT" id="4a" role="39e2AY">
          <ref role="39e2AS" node="pM" resolve="check_MethodIsCorrectlyOverriden_NonTypesystemRule" />
        </node>
      </node>
      <node concept="39e2AG" id="3N" role="39e3Y0">
        <ref role="39e2AK" to="xmfs:172ROKPERhF" resolve="check_MethodIsNotOverriddenTwice" />
        <node concept="385nmt" id="4c" role="385vvn">
          <property role="385vuF" value="check_MethodIsNotOverriddenTwice" />
          <node concept="3u3nmq" id="4e" role="385v07">
            <property role="3u3nmv" value="1279830762537579627" />
          </node>
        </node>
        <node concept="39e2AT" id="4d" role="39e2AY">
          <ref role="39e2AS" node="rj" resolve="check_MethodIsNotOverriddenTwice_NonTypesystemRule" />
        </node>
      </node>
      <node concept="39e2AG" id="3O" role="39e3Y0">
        <ref role="39e2AK" to="xmfs:6WSEafdvLBo" resolve="check_NoFinalOverrides" />
        <node concept="385nmt" id="4f" role="385vvn">
          <property role="385vuF" value="check_NoFinalOverrides" />
          <node concept="3u3nmq" id="4h" role="385v07">
            <property role="3u3nmv" value="8014340958386592216" />
          </node>
        </node>
        <node concept="39e2AT" id="4g" role="39e2AY">
          <ref role="39e2AS" node="t7" resolve="check_NoFinalOverrides_NonTypesystemRule" />
        </node>
      </node>
      <node concept="39e2AG" id="3P" role="39e3Y0">
        <ref role="39e2AK" to="xmfs:1fLDBPFb_om" resolve="check_PrivateMethodIsNotVirtual" />
        <node concept="385nmt" id="4i" role="385vvn">
          <property role="385vuF" value="check_PrivateMethodIsNotVirtual" />
          <node concept="3u3nmq" id="4k" role="385v07">
            <property role="3u3nmv" value="1437112813707220502" />
          </node>
        </node>
        <node concept="39e2AT" id="4j" role="39e2AY">
          <ref role="39e2AS" node="u6" resolve="check_PrivateMethodIsNotVirtual_NonTypesystemRule" />
        </node>
      </node>
      <node concept="39e2AG" id="3Q" role="39e3Y0">
        <ref role="39e2AK" to="xmfs:6ADPXMKma5r" resolve="typeof_SuperConceptExpression" />
        <node concept="385nmt" id="4l" role="385vvn">
          <property role="385vuF" value="typeof_SuperConceptExpression" />
          <node concept="3u3nmq" id="4n" role="385v07">
            <property role="3u3nmv" value="7613853987897909595" />
          </node>
        </node>
        <node concept="39e2AT" id="4m" role="39e2AY">
          <ref role="39e2AS" node="vB" resolve="typeof_SuperConceptExpression_InferenceRule" />
        </node>
      </node>
      <node concept="39e2AG" id="3R" role="39e3Y0">
        <ref role="39e2AK" to="xmfs:hP3kV_f" resolve="typeof_SuperNodeExpression" />
        <node concept="385nmt" id="4o" role="385vvn">
          <property role="385vuF" value="typeof_SuperNodeExpression" />
          <node concept="3u3nmq" id="4q" role="385v07">
            <property role="3u3nmv" value="1225195239759" />
          </node>
        </node>
        <node concept="39e2AT" id="4p" role="39e2AY">
          <ref role="39e2AS" node="x9" resolve="typeof_SuperNodeExpression_InferenceRule" />
        </node>
      </node>
      <node concept="39e2AG" id="3S" role="39e3Y0">
        <ref role="39e2AK" to="xmfs:1u_ffTorZ7_" resolve="typeof_ThisConceptExpression" />
        <node concept="385nmt" id="4r" role="385vvn">
          <property role="385vuF" value="typeof_ThisConceptExpression" />
          <node concept="3u3nmq" id="4t" role="385v07">
            <property role="3u3nmv" value="1703835097132691941" />
          </node>
        </node>
        <node concept="39e2AT" id="4s" role="39e2AY">
          <ref role="39e2AS" node="zt" resolve="typeof_ThisConceptExpression_InferenceRule" />
        </node>
      </node>
      <node concept="39e2AG" id="3T" role="39e3Y0">
        <ref role="39e2AK" to="xmfs:hP3pWXY" resolve="typeof_ThisNodeExpression" />
        <node concept="385nmt" id="4u" role="385vvn">
          <property role="385vuF" value="typeof_ThisNodeExpression" />
          <node concept="3u3nmq" id="4w" role="385v07">
            <property role="3u3nmv" value="1225196556158" />
          </node>
        </node>
        <node concept="39e2AT" id="4v" role="39e2AY">
          <ref role="39e2AS" node="_4" resolve="typeof_ThisNodeExpression_InferenceRule" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="3D" role="39e2AI">
      <property role="39e3Y2" value="isApplicableMethod" />
      <node concept="39e2AG" id="4x" role="39e3Y0">
        <ref role="39e2AK" to="xmfs:5sqSqyx2NtQ" resolve="ObsoleteConceptMethodCallCheck" />
        <node concept="385nmt" id="4I" role="385vvn">
          <property role="385vuF" value="ObsoleteConceptMethodCallCheck" />
          <node concept="3u3nmq" id="4K" role="385v07">
            <property role="3u3nmv" value="6276577145066829686" />
          </node>
        </node>
        <node concept="39e2AT" id="4J" role="39e2AY">
          <ref role="39e2AS" node="9_" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="4y" role="39e3Y0">
        <ref role="39e2AK" to="xmfs:6WSEafdwp3b" resolve="check_AbstractMethodIsVirtual" />
        <node concept="385nmt" id="4L" role="385vvn">
          <property role="385vuF" value="check_AbstractMethodIsVirtual" />
          <node concept="3u3nmq" id="4N" role="385v07">
            <property role="3u3nmv" value="8014340958386753739" />
          </node>
        </node>
        <node concept="39e2AT" id="4M" role="39e2AY">
          <ref role="39e2AS" node="hs" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="4z" role="39e3Y0">
        <ref role="39e2AK" to="xmfs:hrWhlMD" resolve="check_ConceptBehaviorForNotImplementedMethods" />
        <node concept="385nmt" id="4O" role="385vvn">
          <property role="385vuF" value="check_ConceptBehaviorForNotImplementedMethods" />
          <node concept="3u3nmq" id="4Q" role="385v07">
            <property role="3u3nmv" value="1198233312425" />
          </node>
        </node>
        <node concept="39e2AT" id="4P" role="39e2AY">
          <ref role="39e2AS" node="j1" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="4$" role="39e3Y0">
        <ref role="39e2AK" to="xmfs:6ONtaJUkKzl" resolve="check_FinalAndAbstractMethod" />
        <node concept="385nmt" id="4R" role="385vvn">
          <property role="385vuF" value="check_FinalAndAbstractMethod" />
          <node concept="3u3nmq" id="4T" role="385v07">
            <property role="3u3nmv" value="7868761255934363861" />
          </node>
        </node>
        <node concept="39e2AT" id="4S" role="39e2AY">
          <ref role="39e2AS" node="mn" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="4_" role="39e3Y0">
        <ref role="39e2AK" to="xmfs:6WSEafdwUJG" resolve="check_FinalMethodIsVirtual" />
        <node concept="385nmt" id="4U" role="385vvn">
          <property role="385vuF" value="check_FinalMethodIsVirtual" />
          <node concept="3u3nmq" id="4W" role="385v07">
            <property role="3u3nmv" value="8014340958386891756" />
          </node>
        </node>
        <node concept="39e2AT" id="4V" role="39e2AY">
          <ref role="39e2AS" node="oh" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="4A" role="39e3Y0">
        <ref role="39e2AK" to="xmfs:hQYzN6T" resolve="check_MethodIsCorrectlyOverriden" />
        <node concept="385nmt" id="4X" role="385vvn">
          <property role="385vuF" value="check_MethodIsCorrectlyOverriden" />
          <node concept="3u3nmq" id="4Z" role="385v07">
            <property role="3u3nmv" value="1227262734777" />
          </node>
        </node>
        <node concept="39e2AT" id="4Y" role="39e2AY">
          <ref role="39e2AS" node="pQ" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="4B" role="39e3Y0">
        <ref role="39e2AK" to="xmfs:172ROKPERhF" resolve="check_MethodIsNotOverriddenTwice" />
        <node concept="385nmt" id="50" role="385vvn">
          <property role="385vuF" value="check_MethodIsNotOverriddenTwice" />
          <node concept="3u3nmq" id="52" role="385v07">
            <property role="3u3nmv" value="1279830762537579627" />
          </node>
        </node>
        <node concept="39e2AT" id="51" role="39e2AY">
          <ref role="39e2AS" node="rn" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="4C" role="39e3Y0">
        <ref role="39e2AK" to="xmfs:6WSEafdvLBo" resolve="check_NoFinalOverrides" />
        <node concept="385nmt" id="53" role="385vvn">
          <property role="385vuF" value="check_NoFinalOverrides" />
          <node concept="3u3nmq" id="55" role="385v07">
            <property role="3u3nmv" value="8014340958386592216" />
          </node>
        </node>
        <node concept="39e2AT" id="54" role="39e2AY">
          <ref role="39e2AS" node="tb" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="4D" role="39e3Y0">
        <ref role="39e2AK" to="xmfs:1fLDBPFb_om" resolve="check_PrivateMethodIsNotVirtual" />
        <node concept="385nmt" id="56" role="385vvn">
          <property role="385vuF" value="check_PrivateMethodIsNotVirtual" />
          <node concept="3u3nmq" id="58" role="385v07">
            <property role="3u3nmv" value="1437112813707220502" />
          </node>
        </node>
        <node concept="39e2AT" id="57" role="39e2AY">
          <ref role="39e2AS" node="ua" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="4E" role="39e3Y0">
        <ref role="39e2AK" to="xmfs:6ADPXMKma5r" resolve="typeof_SuperConceptExpression" />
        <node concept="385nmt" id="59" role="385vvn">
          <property role="385vuF" value="typeof_SuperConceptExpression" />
          <node concept="3u3nmq" id="5b" role="385v07">
            <property role="3u3nmv" value="7613853987897909595" />
          </node>
        </node>
        <node concept="39e2AT" id="5a" role="39e2AY">
          <ref role="39e2AS" node="vF" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="4F" role="39e3Y0">
        <ref role="39e2AK" to="xmfs:hP3kV_f" resolve="typeof_SuperNodeExpression" />
        <node concept="385nmt" id="5c" role="385vvn">
          <property role="385vuF" value="typeof_SuperNodeExpression" />
          <node concept="3u3nmq" id="5e" role="385v07">
            <property role="3u3nmv" value="1225195239759" />
          </node>
        </node>
        <node concept="39e2AT" id="5d" role="39e2AY">
          <ref role="39e2AS" node="xd" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="4G" role="39e3Y0">
        <ref role="39e2AK" to="xmfs:1u_ffTorZ7_" resolve="typeof_ThisConceptExpression" />
        <node concept="385nmt" id="5f" role="385vvn">
          <property role="385vuF" value="typeof_ThisConceptExpression" />
          <node concept="3u3nmq" id="5h" role="385v07">
            <property role="3u3nmv" value="1703835097132691941" />
          </node>
        </node>
        <node concept="39e2AT" id="5g" role="39e2AY">
          <ref role="39e2AS" node="zx" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="4H" role="39e3Y0">
        <ref role="39e2AK" to="xmfs:hP3pWXY" resolve="typeof_ThisNodeExpression" />
        <node concept="385nmt" id="5i" role="385vvn">
          <property role="385vuF" value="typeof_ThisNodeExpression" />
          <node concept="3u3nmq" id="5k" role="385v07">
            <property role="3u3nmv" value="1225196556158" />
          </node>
        </node>
        <node concept="39e2AT" id="5j" role="39e2AY">
          <ref role="39e2AS" node="_8" resolve="isApplicableAndPattern" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="3E" role="39e2AI">
      <property role="39e3Y2" value="mainMethodForRule" />
      <node concept="39e2AG" id="5l" role="39e3Y0">
        <ref role="39e2AK" to="xmfs:5sqSqyx2NtQ" resolve="ObsoleteConceptMethodCallCheck" />
        <node concept="385nmt" id="5y" role="385vvn">
          <property role="385vuF" value="ObsoleteConceptMethodCallCheck" />
          <node concept="3u3nmq" id="5$" role="385v07">
            <property role="3u3nmv" value="6276577145066829686" />
          </node>
        </node>
        <node concept="39e2AT" id="5z" role="39e2AY">
          <ref role="39e2AS" node="9z" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="5m" role="39e3Y0">
        <ref role="39e2AK" to="xmfs:6WSEafdwp3b" resolve="check_AbstractMethodIsVirtual" />
        <node concept="385nmt" id="5_" role="385vvn">
          <property role="385vuF" value="check_AbstractMethodIsVirtual" />
          <node concept="3u3nmq" id="5B" role="385v07">
            <property role="3u3nmv" value="8014340958386753739" />
          </node>
        </node>
        <node concept="39e2AT" id="5A" role="39e2AY">
          <ref role="39e2AS" node="hq" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="5n" role="39e3Y0">
        <ref role="39e2AK" to="xmfs:hrWhlMD" resolve="check_ConceptBehaviorForNotImplementedMethods" />
        <node concept="385nmt" id="5C" role="385vvn">
          <property role="385vuF" value="check_ConceptBehaviorForNotImplementedMethods" />
          <node concept="3u3nmq" id="5E" role="385v07">
            <property role="3u3nmv" value="1198233312425" />
          </node>
        </node>
        <node concept="39e2AT" id="5D" role="39e2AY">
          <ref role="39e2AS" node="iZ" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="5o" role="39e3Y0">
        <ref role="39e2AK" to="xmfs:6ONtaJUkKzl" resolve="check_FinalAndAbstractMethod" />
        <node concept="385nmt" id="5F" role="385vvn">
          <property role="385vuF" value="check_FinalAndAbstractMethod" />
          <node concept="3u3nmq" id="5H" role="385v07">
            <property role="3u3nmv" value="7868761255934363861" />
          </node>
        </node>
        <node concept="39e2AT" id="5G" role="39e2AY">
          <ref role="39e2AS" node="ml" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="5p" role="39e3Y0">
        <ref role="39e2AK" to="xmfs:6WSEafdwUJG" resolve="check_FinalMethodIsVirtual" />
        <node concept="385nmt" id="5I" role="385vvn">
          <property role="385vuF" value="check_FinalMethodIsVirtual" />
          <node concept="3u3nmq" id="5K" role="385v07">
            <property role="3u3nmv" value="8014340958386891756" />
          </node>
        </node>
        <node concept="39e2AT" id="5J" role="39e2AY">
          <ref role="39e2AS" node="of" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="5q" role="39e3Y0">
        <ref role="39e2AK" to="xmfs:hQYzN6T" resolve="check_MethodIsCorrectlyOverriden" />
        <node concept="385nmt" id="5L" role="385vvn">
          <property role="385vuF" value="check_MethodIsCorrectlyOverriden" />
          <node concept="3u3nmq" id="5N" role="385v07">
            <property role="3u3nmv" value="1227262734777" />
          </node>
        </node>
        <node concept="39e2AT" id="5M" role="39e2AY">
          <ref role="39e2AS" node="pO" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="5r" role="39e3Y0">
        <ref role="39e2AK" to="xmfs:172ROKPERhF" resolve="check_MethodIsNotOverriddenTwice" />
        <node concept="385nmt" id="5O" role="385vvn">
          <property role="385vuF" value="check_MethodIsNotOverriddenTwice" />
          <node concept="3u3nmq" id="5Q" role="385v07">
            <property role="3u3nmv" value="1279830762537579627" />
          </node>
        </node>
        <node concept="39e2AT" id="5P" role="39e2AY">
          <ref role="39e2AS" node="rl" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="5s" role="39e3Y0">
        <ref role="39e2AK" to="xmfs:6WSEafdvLBo" resolve="check_NoFinalOverrides" />
        <node concept="385nmt" id="5R" role="385vvn">
          <property role="385vuF" value="check_NoFinalOverrides" />
          <node concept="3u3nmq" id="5T" role="385v07">
            <property role="3u3nmv" value="8014340958386592216" />
          </node>
        </node>
        <node concept="39e2AT" id="5S" role="39e2AY">
          <ref role="39e2AS" node="t9" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="5t" role="39e3Y0">
        <ref role="39e2AK" to="xmfs:1fLDBPFb_om" resolve="check_PrivateMethodIsNotVirtual" />
        <node concept="385nmt" id="5U" role="385vvn">
          <property role="385vuF" value="check_PrivateMethodIsNotVirtual" />
          <node concept="3u3nmq" id="5W" role="385v07">
            <property role="3u3nmv" value="1437112813707220502" />
          </node>
        </node>
        <node concept="39e2AT" id="5V" role="39e2AY">
          <ref role="39e2AS" node="u8" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="5u" role="39e3Y0">
        <ref role="39e2AK" to="xmfs:6ADPXMKma5r" resolve="typeof_SuperConceptExpression" />
        <node concept="385nmt" id="5X" role="385vvn">
          <property role="385vuF" value="typeof_SuperConceptExpression" />
          <node concept="3u3nmq" id="5Z" role="385v07">
            <property role="3u3nmv" value="7613853987897909595" />
          </node>
        </node>
        <node concept="39e2AT" id="5Y" role="39e2AY">
          <ref role="39e2AS" node="vD" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="5v" role="39e3Y0">
        <ref role="39e2AK" to="xmfs:hP3kV_f" resolve="typeof_SuperNodeExpression" />
        <node concept="385nmt" id="60" role="385vvn">
          <property role="385vuF" value="typeof_SuperNodeExpression" />
          <node concept="3u3nmq" id="62" role="385v07">
            <property role="3u3nmv" value="1225195239759" />
          </node>
        </node>
        <node concept="39e2AT" id="61" role="39e2AY">
          <ref role="39e2AS" node="xb" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="5w" role="39e3Y0">
        <ref role="39e2AK" to="xmfs:1u_ffTorZ7_" resolve="typeof_ThisConceptExpression" />
        <node concept="385nmt" id="63" role="385vvn">
          <property role="385vuF" value="typeof_ThisConceptExpression" />
          <node concept="3u3nmq" id="65" role="385v07">
            <property role="3u3nmv" value="1703835097132691941" />
          </node>
        </node>
        <node concept="39e2AT" id="64" role="39e2AY">
          <ref role="39e2AS" node="zv" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="5x" role="39e3Y0">
        <ref role="39e2AK" to="xmfs:hP3pWXY" resolve="typeof_ThisNodeExpression" />
        <node concept="385nmt" id="66" role="385vvn">
          <property role="385vuF" value="typeof_ThisNodeExpression" />
          <node concept="3u3nmq" id="68" role="385v07">
            <property role="3u3nmv" value="1225196556158" />
          </node>
        </node>
        <node concept="39e2AT" id="67" role="39e2AY">
          <ref role="39e2AS" node="_6" resolve="applyRule" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="3F" role="39e2AI">
      <property role="39e3Y2" value="quickFix" />
      <node concept="39e2AG" id="69" role="39e3Y0">
        <ref role="39e2AK" to="xmfs:3kRslntA0ir" resolve="FixMethodSignature" />
        <node concept="385nmt" id="6h" role="385vvn">
          <property role="385vuF" value="FixMethodSignature" />
          <node concept="3u3nmq" id="6j" role="385v07">
            <property role="3u3nmv" value="3834658221333152923" />
          </node>
        </node>
        <node concept="39e2AT" id="6i" role="39e2AY">
          <ref role="39e2AS" node="0" resolve="FixMethodSignature_QuickFix" />
        </node>
      </node>
      <node concept="39e2AG" id="6a" role="39e3Y0">
        <ref role="39e2AK" to="xmfs:6WSEafdwrEA" resolve="MakeAbstractMethodVirtual" />
        <node concept="385nmt" id="6k" role="385vvn">
          <property role="385vuF" value="MakeAbstractMethodVirtual" />
          <node concept="3u3nmq" id="6m" role="385v07">
            <property role="3u3nmv" value="8014340958386764454" />
          </node>
        </node>
        <node concept="39e2AT" id="6l" role="39e2AY">
          <ref role="39e2AS" node="6F" resolve="MakeAbstractMethodVirtual_QuickFix" />
        </node>
      </node>
      <node concept="39e2AG" id="6b" role="39e3Y0">
        <ref role="39e2AK" to="xmfs:6WSEafdxV8X" resolve="MakeConceptAbstract" />
        <node concept="385nmt" id="6n" role="385vvn">
          <property role="385vuF" value="MakeConceptAbstract" />
          <node concept="3u3nmq" id="6p" role="385v07">
            <property role="3u3nmv" value="8014340958387155517" />
          </node>
        </node>
        <node concept="39e2AT" id="6o" role="39e2AY">
          <ref role="39e2AS" node="7L" resolve="MakeConceptAbstract_QuickFix" />
        </node>
      </node>
      <node concept="39e2AG" id="6c" role="39e3Y0">
        <ref role="39e2AK" to="xmfs:1fLDBPFbK02" resolve="MakePrivateMethodNonVirtual" />
        <node concept="385nmt" id="6q" role="385vvn">
          <property role="385vuF" value="MakePrivateMethodNonVirtual" />
          <node concept="3u3nmq" id="6s" role="385v07">
            <property role="3u3nmv" value="1437112813707264002" />
          </node>
        </node>
        <node concept="39e2AT" id="6r" role="39e2AY">
          <ref role="39e2AS" node="8Q" resolve="MakePrivateMethodNonVirtual_QuickFix" />
        </node>
      </node>
      <node concept="39e2AG" id="6d" role="39e3Y0">
        <ref role="39e2AK" to="xmfs:6WSEafdwzGN" resolve="RemoveAbstractFromTheMethod" />
        <node concept="385nmt" id="6t" role="385vvn">
          <property role="385vuF" value="RemoveAbstractFromTheMethod" />
          <node concept="3u3nmq" id="6v" role="385v07">
            <property role="3u3nmv" value="8014340958386797363" />
          </node>
        </node>
        <node concept="39e2AT" id="6u" role="39e2AY">
          <ref role="39e2AS" node="aQ" resolve="RemoveAbstractFromTheMethod_QuickFix" />
        </node>
      </node>
      <node concept="39e2AG" id="6e" role="39e3Y0">
        <ref role="39e2AK" to="xmfs:6WSEafdy3KZ" resolve="RemoveAbstractFromTheMethod_add_method_body_description" />
        <node concept="385nmt" id="6w" role="385vvn">
          <property role="385vuF" value="RemoveAbstractFromTheMethod_add_method_body_description" />
          <node concept="3u3nmq" id="6y" role="385v07">
            <property role="3u3nmv" value="8014340958387190847" />
          </node>
        </node>
        <node concept="39e2AT" id="6x" role="39e2AY">
          <ref role="39e2AS" node="bH" resolve="RemoveAbstractFromTheMethod_add_method_body_description_QuickFix" />
        </node>
      </node>
      <node concept="39e2AG" id="6f" role="39e3Y0">
        <ref role="39e2AK" to="xmfs:6WSEafdvwOC" resolve="RemoveFinalFromTheMethod" />
        <node concept="385nmt" id="6z" role="385vvn">
          <property role="385vuF" value="RemoveFinalFromTheMethod" />
          <node concept="3u3nmq" id="6_" role="385v07">
            <property role="3u3nmv" value="8014340958386523432" />
          </node>
        </node>
        <node concept="39e2AT" id="6$" role="39e2AY">
          <ref role="39e2AS" node="cN" resolve="RemoveFinalFromTheMethod_QuickFix" />
        </node>
      </node>
      <node concept="39e2AG" id="6g" role="39e3Y0">
        <ref role="39e2AK" to="xmfs:5sqSqyx3b0N" resolve="UpdateConceptMethodCall" />
        <node concept="385nmt" id="6A" role="385vvn">
          <property role="385vuF" value="UpdateConceptMethodCall" />
          <node concept="3u3nmq" id="6C" role="385v07">
            <property role="3u3nmv" value="6276577145066926131" />
          </node>
        </node>
        <node concept="39e2AT" id="6B" role="39e2AY">
          <ref role="39e2AS" node="gB" resolve="UpdateConceptMethodCall_QuickFix" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="3G" role="39e2AI">
      <property role="39e3Y2" value="descriptorClass" />
      <node concept="39e2AG" id="6D" role="39e3Y0">
        <property role="2mV_xN" value="true" />
        <node concept="39e2AT" id="6E" role="39e2AY">
          <ref role="39e2AS" node="dE" resolve="TypesystemDescriptor" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6F">
    <property role="3GE5qa" value="quickfixes" />
    <property role="TrG5h" value="MakeAbstractMethodVirtual_QuickFix" />
    <uo k="s:originTrace" v="n:8014340958386764454" />
    <node concept="3clFbW" id="6G" role="jymVt">
      <uo k="s:originTrace" v="n:8014340958386764454" />
      <node concept="3clFbS" id="6M" role="3clF47">
        <uo k="s:originTrace" v="n:8014340958386764454" />
        <node concept="XkiVB" id="6P" role="3cqZAp">
          <ref role="37wK5l" to="2gg1:~QuickFix_Runtime.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="QuickFix_Runtime" />
          <uo k="s:originTrace" v="n:8014340958386764454" />
          <node concept="2ShNRf" id="6Q" role="37wK5m">
            <uo k="s:originTrace" v="n:8014340958386764454" />
            <node concept="1pGfFk" id="6R" role="2ShVmc">
              <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
              <uo k="s:originTrace" v="n:8014340958386764454" />
              <node concept="Xl_RD" id="6S" role="37wK5m">
                <property role="Xl_RC" value="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
                <uo k="s:originTrace" v="n:8014340958386764454" />
              </node>
              <node concept="Xl_RD" id="6T" role="37wK5m">
                <property role="Xl_RC" value="8014340958386764454" />
                <uo k="s:originTrace" v="n:8014340958386764454" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="6N" role="3clF45">
        <uo k="s:originTrace" v="n:8014340958386764454" />
      </node>
      <node concept="3Tm1VV" id="6O" role="1B3o_S">
        <uo k="s:originTrace" v="n:8014340958386764454" />
      </node>
    </node>
    <node concept="3clFb_" id="6H" role="jymVt">
      <property role="TrG5h" value="getDescription" />
      <uo k="s:originTrace" v="n:8014340958386764454" />
      <node concept="3Tm1VV" id="6U" role="1B3o_S">
        <uo k="s:originTrace" v="n:8014340958386764454" />
      </node>
      <node concept="3clFbS" id="6V" role="3clF47">
        <uo k="s:originTrace" v="n:8014340958386785352" />
        <node concept="3clFbF" id="6Y" role="3cqZAp">
          <uo k="s:originTrace" v="n:8014340958386785903" />
          <node concept="3cpWs3" id="6Z" role="3clFbG">
            <uo k="s:originTrace" v="n:8014340958387820139" />
            <node concept="Xl_RD" id="70" role="3uHU7w">
              <property role="Xl_RC" value="' virtual as well" />
              <uo k="s:originTrace" v="n:8014340958387820140" />
            </node>
            <node concept="3cpWs3" id="71" role="3uHU7B">
              <uo k="s:originTrace" v="n:8014340958387820141" />
              <node concept="Xl_RD" id="72" role="3uHU7B">
                <property role="Xl_RC" value="Mark an abstract method '" />
                <uo k="s:originTrace" v="n:8014340958387820142" />
              </node>
              <node concept="2OqwBi" id="73" role="3uHU7w">
                <uo k="s:originTrace" v="n:8014340958387820143" />
                <node concept="1eOMI4" id="74" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:8014340958387820144" />
                  <node concept="10QFUN" id="76" role="1eOMHV">
                    <node concept="3Tqbb2" id="77" role="10QFUM">
                      <ref role="ehGHo" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
                      <uo k="s:originTrace" v="n:8014340958386772900" />
                    </node>
                    <node concept="AH0OO" id="78" role="10QFUP">
                      <node concept="3cmrfG" id="79" role="AHEQo">
                        <property role="3cmrfH" value="0" />
                      </node>
                      <node concept="1DoJHT" id="7a" role="AHHXb">
                        <property role="1Dpdpm" value="getField" />
                        <node concept="Xl_RD" id="7b" role="1EOqxR">
                          <property role="Xl_RC" value="conceptMethod" />
                        </node>
                        <node concept="10Q1$e" id="7c" role="1Ez5kq">
                          <node concept="3uibUv" id="7e" role="10Q1$1">
                            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                          </node>
                        </node>
                        <node concept="Xjq3P" id="7d" role="1EMhIo">
                          <ref role="1HBi2w" node="6F" resolve="MakeAbstractMethodVirtual_QuickFix" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3TrcHB" id="75" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  <uo k="s:originTrace" v="n:8014340958387820145" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6W" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:8014340958386764454" />
        <node concept="3uibUv" id="7f" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:8014340958386764454" />
        </node>
      </node>
      <node concept="17QB3L" id="6X" role="3clF45">
        <uo k="s:originTrace" v="n:8014340958386764454" />
      </node>
    </node>
    <node concept="3clFb_" id="6I" role="jymVt">
      <property role="TrG5h" value="execute" />
      <uo k="s:originTrace" v="n:8014340958386764454" />
      <node concept="3clFbS" id="7g" role="3clF47">
        <uo k="s:originTrace" v="n:8014340958386764456" />
        <node concept="1gVbGN" id="7k" role="3cqZAp">
          <uo k="s:originTrace" v="n:8014340958386772907" />
          <node concept="2OqwBi" id="7m" role="1gVkn0">
            <uo k="s:originTrace" v="n:8014340958386774464" />
            <node concept="1eOMI4" id="7n" role="2Oq$k0">
              <uo k="s:originTrace" v="n:8014340958386772934" />
              <node concept="10QFUN" id="7p" role="1eOMHV">
                <node concept="3Tqbb2" id="7q" role="10QFUM">
                  <ref role="ehGHo" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
                  <uo k="s:originTrace" v="n:8014340958386772900" />
                </node>
                <node concept="AH0OO" id="7r" role="10QFUP">
                  <node concept="3cmrfG" id="7s" role="AHEQo">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="1DoJHT" id="7t" role="AHHXb">
                    <property role="1Dpdpm" value="getField" />
                    <node concept="Xl_RD" id="7u" role="1EOqxR">
                      <property role="Xl_RC" value="conceptMethod" />
                    </node>
                    <node concept="10Q1$e" id="7v" role="1Ez5kq">
                      <node concept="3uibUv" id="7x" role="10Q1$1">
                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                      </node>
                    </node>
                    <node concept="Xjq3P" id="7w" role="1EMhIo">
                      <ref role="1HBi2w" node="6F" resolve="MakeAbstractMethodVirtual_QuickFix" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3TrcHB" id="7o" role="2OqNvi">
              <ref role="3TsBF5" to="1i04:hP3i0m2" resolve="isAbstract" />
              <uo k="s:originTrace" v="n:8014340958386779066" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7l" role="3cqZAp">
          <uo k="s:originTrace" v="n:8014340958386779413" />
          <node concept="37vLTI" id="7y" role="3clFbG">
            <uo k="s:originTrace" v="n:8014340958386784754" />
            <node concept="3clFbT" id="7z" role="37vLTx">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:8014340958386784799" />
            </node>
            <node concept="2OqwBi" id="7$" role="37vLTJ">
              <uo k="s:originTrace" v="n:8014340958386780692" />
              <node concept="1eOMI4" id="7_" role="2Oq$k0">
                <uo k="s:originTrace" v="n:8014340958386779411" />
                <node concept="10QFUN" id="7B" role="1eOMHV">
                  <node concept="3Tqbb2" id="7C" role="10QFUM">
                    <ref role="ehGHo" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
                    <uo k="s:originTrace" v="n:8014340958386772900" />
                  </node>
                  <node concept="AH0OO" id="7D" role="10QFUP">
                    <node concept="3cmrfG" id="7E" role="AHEQo">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="1DoJHT" id="7F" role="AHHXb">
                      <property role="1Dpdpm" value="getField" />
                      <node concept="Xl_RD" id="7G" role="1EOqxR">
                        <property role="Xl_RC" value="conceptMethod" />
                      </node>
                      <node concept="10Q1$e" id="7H" role="1Ez5kq">
                        <node concept="3uibUv" id="7J" role="10Q1$1">
                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                        </node>
                      </node>
                      <node concept="Xjq3P" id="7I" role="1EMhIo">
                        <ref role="1HBi2w" node="6F" resolve="MakeAbstractMethodVirtual_QuickFix" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3TrcHB" id="7A" role="2OqNvi">
                <ref role="3TsBF5" to="1i04:hP3i0m0" resolve="isVirtual" />
                <uo k="s:originTrace" v="n:8014340958386783315" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="7h" role="3clF45">
        <uo k="s:originTrace" v="n:8014340958386764454" />
      </node>
      <node concept="3Tm1VV" id="7i" role="1B3o_S">
        <uo k="s:originTrace" v="n:8014340958386764454" />
      </node>
      <node concept="37vLTG" id="7j" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:8014340958386764454" />
        <node concept="3uibUv" id="7K" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:8014340958386764454" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="6J" role="1B3o_S">
      <uo k="s:originTrace" v="n:8014340958386764454" />
    </node>
    <node concept="3uibUv" id="6K" role="1zkMxy">
      <ref role="3uigEE" to="2gg1:~QuickFix_Runtime" resolve="QuickFix_Runtime" />
      <uo k="s:originTrace" v="n:8014340958386764454" />
    </node>
    <node concept="6wLe0" id="6L" role="lGtFl">
      <property role="6wLej" value="8014340958386764454" />
      <property role="6wLeW" value="jetbrains.mps.lang.behavior.typesystem" />
      <uo k="s:originTrace" v="n:8014340958386764454" />
    </node>
  </node>
  <node concept="312cEu" id="7L">
    <property role="3GE5qa" value="quickfixes" />
    <property role="TrG5h" value="MakeConceptAbstract_QuickFix" />
    <uo k="s:originTrace" v="n:8014340958387155517" />
    <node concept="3clFbW" id="7M" role="jymVt">
      <uo k="s:originTrace" v="n:8014340958387155517" />
      <node concept="3clFbS" id="7S" role="3clF47">
        <uo k="s:originTrace" v="n:8014340958387155517" />
        <node concept="XkiVB" id="7V" role="3cqZAp">
          <ref role="37wK5l" to="2gg1:~QuickFix_Runtime.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="QuickFix_Runtime" />
          <uo k="s:originTrace" v="n:8014340958387155517" />
          <node concept="2ShNRf" id="7W" role="37wK5m">
            <uo k="s:originTrace" v="n:8014340958387155517" />
            <node concept="1pGfFk" id="7X" role="2ShVmc">
              <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
              <uo k="s:originTrace" v="n:8014340958387155517" />
              <node concept="Xl_RD" id="7Y" role="37wK5m">
                <property role="Xl_RC" value="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
                <uo k="s:originTrace" v="n:8014340958387155517" />
              </node>
              <node concept="Xl_RD" id="7Z" role="37wK5m">
                <property role="Xl_RC" value="8014340958387155517" />
                <uo k="s:originTrace" v="n:8014340958387155517" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="7T" role="3clF45">
        <uo k="s:originTrace" v="n:8014340958387155517" />
      </node>
      <node concept="3Tm1VV" id="7U" role="1B3o_S">
        <uo k="s:originTrace" v="n:8014340958387155517" />
      </node>
    </node>
    <node concept="3clFb_" id="7N" role="jymVt">
      <property role="TrG5h" value="getDescription" />
      <uo k="s:originTrace" v="n:8014340958387155517" />
      <node concept="3Tm1VV" id="80" role="1B3o_S">
        <uo k="s:originTrace" v="n:8014340958387155517" />
      </node>
      <node concept="3clFbS" id="81" role="3clF47">
        <uo k="s:originTrace" v="n:8014340958387155533" />
        <node concept="3clFbF" id="84" role="3cqZAp">
          <uo k="s:originTrace" v="n:8014340958387155534" />
          <node concept="3cpWs3" id="85" role="3clFbG">
            <uo k="s:originTrace" v="n:8014340958387170947" />
            <node concept="Xl_RD" id="86" role="3uHU7w">
              <property role="Xl_RC" value="' abstract" />
              <uo k="s:originTrace" v="n:8014340958387170953" />
            </node>
            <node concept="3cpWs3" id="87" role="3uHU7B">
              <uo k="s:originTrace" v="n:8014340958387164187" />
              <node concept="Xl_RD" id="88" role="3uHU7B">
                <property role="Xl_RC" value="Make concept '" />
                <uo k="s:originTrace" v="n:8014340958387155535" />
              </node>
              <node concept="2OqwBi" id="89" role="3uHU7w">
                <uo k="s:originTrace" v="n:8014340958387167163" />
                <node concept="2OqwBi" id="8a" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:8014340958387165164" />
                  <node concept="Q6c8r" id="8c" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:8014340958387164201" />
                  </node>
                  <node concept="2yIwOk" id="8d" role="2OqNvi">
                    <uo k="s:originTrace" v="n:8014340958387166067" />
                  </node>
                </node>
                <node concept="liA8E" id="8b" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                  <uo k="s:originTrace" v="n:8014340958387168829" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="82" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:8014340958387155517" />
        <node concept="3uibUv" id="8e" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:8014340958387155517" />
        </node>
      </node>
      <node concept="17QB3L" id="83" role="3clF45">
        <uo k="s:originTrace" v="n:8014340958387155517" />
      </node>
    </node>
    <node concept="3clFb_" id="7O" role="jymVt">
      <property role="TrG5h" value="execute" />
      <uo k="s:originTrace" v="n:8014340958387155517" />
      <node concept="3clFbS" id="8f" role="3clF47">
        <uo k="s:originTrace" v="n:8014340958387155521" />
        <node concept="1gVbGN" id="8j" role="3cqZAp">
          <uo k="s:originTrace" v="n:8014340958387155522" />
          <node concept="3fqX7Q" id="8l" role="1gVkn0">
            <uo k="s:originTrace" v="n:8014340958387179641" />
            <node concept="2OqwBi" id="8m" role="3fr31v">
              <uo k="s:originTrace" v="n:8014340958387179643" />
              <node concept="2OqwBi" id="8n" role="2Oq$k0">
                <uo k="s:originTrace" v="n:8014340958387179644" />
                <node concept="1eOMI4" id="8p" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:8014340958387179645" />
                  <node concept="10QFUN" id="8r" role="1eOMHV">
                    <node concept="3Tqbb2" id="8s" role="10QFUM">
                      <ref role="ehGHo" to="1i04:hP3h7Gq" resolve="ConceptBehavior" />
                      <uo k="s:originTrace" v="n:8014340958387155519" />
                    </node>
                    <node concept="AH0OO" id="8t" role="10QFUP">
                      <node concept="3cmrfG" id="8u" role="AHEQo">
                        <property role="3cmrfH" value="0" />
                      </node>
                      <node concept="1DoJHT" id="8v" role="AHHXb">
                        <property role="1Dpdpm" value="getField" />
                        <node concept="Xl_RD" id="8w" role="1EOqxR">
                          <property role="Xl_RC" value="conceptBehavior" />
                        </node>
                        <node concept="10Q1$e" id="8x" role="1Ez5kq">
                          <node concept="3uibUv" id="8z" role="10Q1$1">
                            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                          </node>
                        </node>
                        <node concept="Xjq3P" id="8y" role="1EMhIo">
                          <ref role="1HBi2w" node="7L" resolve="MakeConceptAbstract_QuickFix" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3TrEf2" id="8q" role="2OqNvi">
                  <ref role="3Tt5mk" to="1i04:hP3h7Gv" resolve="concept" />
                  <uo k="s:originTrace" v="n:8014340958387179646" />
                </node>
              </node>
              <node concept="3TrcHB" id="8o" role="2OqNvi">
                <ref role="3TsBF5" to="tpce:40UcGlRb7V2" resolve="abstract" />
                <uo k="s:originTrace" v="n:8014340958387179647" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="8k" role="3cqZAp">
          <uo k="s:originTrace" v="n:8014340958387155526" />
          <node concept="2OqwBi" id="8$" role="3clFbG">
            <uo k="s:originTrace" v="n:8014340958387187265" />
            <node concept="2OqwBi" id="8_" role="2Oq$k0">
              <uo k="s:originTrace" v="n:8014340958387183572" />
              <node concept="2OqwBi" id="8B" role="2Oq$k0">
                <uo k="s:originTrace" v="n:8014340958387155529" />
                <node concept="1eOMI4" id="8D" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:8014340958387155530" />
                  <node concept="10QFUN" id="8F" role="1eOMHV">
                    <node concept="3Tqbb2" id="8G" role="10QFUM">
                      <ref role="ehGHo" to="1i04:hP3h7Gq" resolve="ConceptBehavior" />
                      <uo k="s:originTrace" v="n:8014340958387155519" />
                    </node>
                    <node concept="AH0OO" id="8H" role="10QFUP">
                      <node concept="3cmrfG" id="8I" role="AHEQo">
                        <property role="3cmrfH" value="0" />
                      </node>
                      <node concept="1DoJHT" id="8J" role="AHHXb">
                        <property role="1Dpdpm" value="getField" />
                        <node concept="Xl_RD" id="8K" role="1EOqxR">
                          <property role="Xl_RC" value="conceptBehavior" />
                        </node>
                        <node concept="10Q1$e" id="8L" role="1Ez5kq">
                          <node concept="3uibUv" id="8N" role="10Q1$1">
                            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                          </node>
                        </node>
                        <node concept="Xjq3P" id="8M" role="1EMhIo">
                          <ref role="1HBi2w" node="7L" resolve="MakeConceptAbstract_QuickFix" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3TrEf2" id="8E" role="2OqNvi">
                  <ref role="3Tt5mk" to="1i04:hP3h7Gv" resolve="concept" />
                  <uo k="s:originTrace" v="n:8014340958387181847" />
                </node>
              </node>
              <node concept="3TrcHB" id="8C" role="2OqNvi">
                <ref role="3TsBF5" to="tpce:40UcGlRb7V2" resolve="abstract" />
                <uo k="s:originTrace" v="n:8014340958387184882" />
              </node>
            </node>
            <node concept="tyxLq" id="8A" role="2OqNvi">
              <uo k="s:originTrace" v="n:8014340958387188048" />
              <node concept="3clFbT" id="8O" role="tz02z">
                <property role="3clFbU" value="true" />
                <uo k="s:originTrace" v="n:8014340958387188713" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="8g" role="3clF45">
        <uo k="s:originTrace" v="n:8014340958387155517" />
      </node>
      <node concept="3Tm1VV" id="8h" role="1B3o_S">
        <uo k="s:originTrace" v="n:8014340958387155517" />
      </node>
      <node concept="37vLTG" id="8i" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:8014340958387155517" />
        <node concept="3uibUv" id="8P" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:8014340958387155517" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="7P" role="1B3o_S">
      <uo k="s:originTrace" v="n:8014340958387155517" />
    </node>
    <node concept="3uibUv" id="7Q" role="1zkMxy">
      <ref role="3uigEE" to="2gg1:~QuickFix_Runtime" resolve="QuickFix_Runtime" />
      <uo k="s:originTrace" v="n:8014340958387155517" />
    </node>
    <node concept="6wLe0" id="7R" role="lGtFl">
      <property role="6wLej" value="8014340958387155517" />
      <property role="6wLeW" value="jetbrains.mps.lang.behavior.typesystem" />
      <uo k="s:originTrace" v="n:8014340958387155517" />
    </node>
  </node>
  <node concept="312cEu" id="8Q">
    <property role="3GE5qa" value="quickfixes" />
    <property role="TrG5h" value="MakePrivateMethodNonVirtual_QuickFix" />
    <uo k="s:originTrace" v="n:1437112813707264002" />
    <node concept="3clFbW" id="8R" role="jymVt">
      <uo k="s:originTrace" v="n:1437112813707264002" />
      <node concept="3clFbS" id="8X" role="3clF47">
        <uo k="s:originTrace" v="n:1437112813707264002" />
        <node concept="XkiVB" id="90" role="3cqZAp">
          <ref role="37wK5l" to="2gg1:~QuickFix_Runtime.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="QuickFix_Runtime" />
          <uo k="s:originTrace" v="n:1437112813707264002" />
          <node concept="2ShNRf" id="91" role="37wK5m">
            <uo k="s:originTrace" v="n:1437112813707264002" />
            <node concept="1pGfFk" id="92" role="2ShVmc">
              <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
              <uo k="s:originTrace" v="n:1437112813707264002" />
              <node concept="Xl_RD" id="93" role="37wK5m">
                <property role="Xl_RC" value="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
                <uo k="s:originTrace" v="n:1437112813707264002" />
              </node>
              <node concept="Xl_RD" id="94" role="37wK5m">
                <property role="Xl_RC" value="1437112813707264002" />
                <uo k="s:originTrace" v="n:1437112813707264002" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="8Y" role="3clF45">
        <uo k="s:originTrace" v="n:1437112813707264002" />
      </node>
      <node concept="3Tm1VV" id="8Z" role="1B3o_S">
        <uo k="s:originTrace" v="n:1437112813707264002" />
      </node>
    </node>
    <node concept="3clFb_" id="8S" role="jymVt">
      <property role="TrG5h" value="getDescription" />
      <uo k="s:originTrace" v="n:1437112813707264002" />
      <node concept="3Tm1VV" id="95" role="1B3o_S">
        <uo k="s:originTrace" v="n:1437112813707264002" />
      </node>
      <node concept="3clFbS" id="96" role="3clF47">
        <uo k="s:originTrace" v="n:1437112813707264400" />
        <node concept="3clFbF" id="99" role="3cqZAp">
          <uo k="s:originTrace" v="n:1437112813707264719" />
          <node concept="Xl_RD" id="9a" role="3clFbG">
            <property role="Xl_RC" value="Make private method non virtual" />
            <uo k="s:originTrace" v="n:1437112813707264718" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="97" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:1437112813707264002" />
        <node concept="3uibUv" id="9b" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:1437112813707264002" />
        </node>
      </node>
      <node concept="17QB3L" id="98" role="3clF45">
        <uo k="s:originTrace" v="n:1437112813707264002" />
      </node>
    </node>
    <node concept="3clFb_" id="8T" role="jymVt">
      <property role="TrG5h" value="execute" />
      <uo k="s:originTrace" v="n:1437112813707264002" />
      <node concept="3clFbS" id="9c" role="3clF47">
        <uo k="s:originTrace" v="n:1437112813707264004" />
        <node concept="3clFbF" id="9g" role="3cqZAp">
          <uo k="s:originTrace" v="n:1437112813707266576" />
          <node concept="37vLTI" id="9i" role="3clFbG">
            <uo k="s:originTrace" v="n:1437112813707274073" />
            <node concept="3clFbT" id="9j" role="37vLTx">
              <uo k="s:originTrace" v="n:1437112813707274389" />
            </node>
            <node concept="2OqwBi" id="9k" role="37vLTJ">
              <uo k="s:originTrace" v="n:1437112813707269744" />
              <node concept="1PxgMI" id="9l" role="2Oq$k0">
                <uo k="s:originTrace" v="n:1437112813707268335" />
                <node concept="chp4Y" id="9n" role="3oSUPX">
                  <ref role="cht4Q" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
                  <uo k="s:originTrace" v="n:1437112813707268403" />
                </node>
                <node concept="Q6c8r" id="9o" role="1m5AlR">
                  <uo k="s:originTrace" v="n:1437112813707266575" />
                </node>
              </node>
              <node concept="3TrcHB" id="9m" role="2OqNvi">
                <ref role="3TsBF5" to="1i04:hP3i0m0" resolve="isVirtual" />
                <uo k="s:originTrace" v="n:1437112813707272060" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="9h" role="3cqZAp">
          <uo k="s:originTrace" v="n:4270017289023354506" />
          <node concept="37vLTI" id="9p" role="3clFbG">
            <uo k="s:originTrace" v="n:4270017289023354507" />
            <node concept="2OqwBi" id="9q" role="37vLTJ">
              <uo k="s:originTrace" v="n:4270017289023354509" />
              <node concept="1PxgMI" id="9s" role="2Oq$k0">
                <uo k="s:originTrace" v="n:4270017289023354510" />
                <node concept="chp4Y" id="9u" role="3oSUPX">
                  <ref role="cht4Q" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
                  <uo k="s:originTrace" v="n:4270017289023354511" />
                </node>
                <node concept="Q6c8r" id="9v" role="1m5AlR">
                  <uo k="s:originTrace" v="n:4270017289023354512" />
                </node>
              </node>
              <node concept="3TrEf2" id="9t" role="2OqNvi">
                <ref role="3Tt5mk" to="1i04:hP3i0lZ" resolve="overriddenMethod" />
                <uo k="s:originTrace" v="n:4270017289023357877" />
              </node>
            </node>
            <node concept="10Nm6u" id="9r" role="37vLTx">
              <uo k="s:originTrace" v="n:4270017289023358616" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="9d" role="3clF45">
        <uo k="s:originTrace" v="n:1437112813707264002" />
      </node>
      <node concept="3Tm1VV" id="9e" role="1B3o_S">
        <uo k="s:originTrace" v="n:1437112813707264002" />
      </node>
      <node concept="37vLTG" id="9f" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:1437112813707264002" />
        <node concept="3uibUv" id="9w" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:1437112813707264002" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="8U" role="1B3o_S">
      <uo k="s:originTrace" v="n:1437112813707264002" />
    </node>
    <node concept="3uibUv" id="8V" role="1zkMxy">
      <ref role="3uigEE" to="2gg1:~QuickFix_Runtime" resolve="QuickFix_Runtime" />
      <uo k="s:originTrace" v="n:1437112813707264002" />
    </node>
    <node concept="6wLe0" id="8W" role="lGtFl">
      <property role="6wLej" value="1437112813707264002" />
      <property role="6wLeW" value="jetbrains.mps.lang.behavior.typesystem" />
      <uo k="s:originTrace" v="n:1437112813707264002" />
    </node>
  </node>
  <node concept="312cEu" id="9x">
    <property role="TrG5h" value="ObsoleteConceptMethodCallCheck_NonTypesystemRule" />
    <uo k="s:originTrace" v="n:6276577145066829686" />
    <node concept="3clFbW" id="9y" role="jymVt">
      <uo k="s:originTrace" v="n:6276577145066829686" />
      <node concept="3clFbS" id="9E" role="3clF47">
        <uo k="s:originTrace" v="n:6276577145066829686" />
      </node>
      <node concept="3Tm1VV" id="9F" role="1B3o_S">
        <uo k="s:originTrace" v="n:6276577145066829686" />
      </node>
      <node concept="3cqZAl" id="9G" role="3clF45">
        <uo k="s:originTrace" v="n:6276577145066829686" />
      </node>
    </node>
    <node concept="3clFb_" id="9z" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:6276577145066829686" />
      <node concept="3cqZAl" id="9H" role="3clF45">
        <uo k="s:originTrace" v="n:6276577145066829686" />
      </node>
      <node concept="37vLTG" id="9I" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="cmc" />
        <uo k="s:originTrace" v="n:6276577145066829686" />
        <node concept="3Tqbb2" id="9N" role="1tU5fm">
          <uo k="s:originTrace" v="n:6276577145066829686" />
        </node>
      </node>
      <node concept="37vLTG" id="9J" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:6276577145066829686" />
        <node concept="3uibUv" id="9O" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:6276577145066829686" />
        </node>
      </node>
      <node concept="37vLTG" id="9K" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:6276577145066829686" />
        <node concept="3uibUv" id="9P" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:6276577145066829686" />
        </node>
      </node>
      <node concept="3clFbS" id="9L" role="3clF47">
        <uo k="s:originTrace" v="n:6276577145066829687" />
        <node concept="9aQIb" id="9Q" role="3cqZAp">
          <uo k="s:originTrace" v="n:6276577145066846019" />
          <node concept="3clFbS" id="9R" role="9aQI4">
            <node concept="3cpWs8" id="9T" role="3cqZAp">
              <node concept="3cpWsn" id="9W" role="3cpWs9">
                <property role="TrG5h" value="errorTarget" />
                <property role="3TUv4t" value="true" />
                <node concept="3uibUv" id="9X" role="1tU5fm">
                  <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                </node>
                <node concept="2ShNRf" id="9Y" role="33vP2m">
                  <node concept="1pGfFk" id="9Z" role="2ShVmc">
                    <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="9U" role="3cqZAp">
              <node concept="3cpWsn" id="a0" role="3cpWs9">
                <property role="TrG5h" value="_reporter_2309309498" />
                <node concept="3uibUv" id="a1" role="1tU5fm">
                  <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                </node>
                <node concept="2OqwBi" id="a2" role="33vP2m">
                  <node concept="3VmV3z" id="a3" role="2Oq$k0">
                    <property role="3VnrPo" value="typeCheckingContext" />
                    <node concept="3uibUv" id="a5" role="3Vn4Tt">
                      <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                    </node>
                  </node>
                  <node concept="liA8E" id="a4" role="2OqNvi">
                    <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportInfo(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportInfo" />
                    <node concept="37vLTw" id="a6" role="37wK5m">
                      <ref role="3cqZAo" node="9I" resolve="cmc" />
                      <uo k="s:originTrace" v="n:6276577145066846160" />
                    </node>
                    <node concept="Xl_RD" id="a7" role="37wK5m">
                      <property role="Xl_RC" value="ConceptMethodCall moved from lang.smodel to lang.behavior" />
                      <uo k="s:originTrace" v="n:6276577145066848400" />
                    </node>
                    <node concept="Xl_RD" id="a8" role="37wK5m">
                      <property role="Xl_RC" value="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
                    </node>
                    <node concept="Xl_RD" id="a9" role="37wK5m">
                      <property role="Xl_RC" value="6276577145066846019" />
                    </node>
                    <node concept="10Nm6u" id="aa" role="37wK5m" />
                    <node concept="37vLTw" id="ab" role="37wK5m">
                      <ref role="3cqZAo" node="9W" resolve="errorTarget" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="9V" role="3cqZAp">
              <node concept="3clFbS" id="ac" role="9aQI4">
                <node concept="3cpWs8" id="ad" role="3cqZAp">
                  <node concept="3cpWsn" id="af" role="3cpWs9">
                    <property role="TrG5h" value="intentionProvider" />
                    <node concept="3uibUv" id="ag" role="1tU5fm">
                      <ref role="3uigEE" to="2gg1:~BaseQuickFixProvider" resolve="BaseQuickFixProvider" />
                    </node>
                    <node concept="2ShNRf" id="ah" role="33vP2m">
                      <node concept="1pGfFk" id="ai" role="2ShVmc">
                        <ref role="37wK5l" to="2gg1:~BaseQuickFixProvider.&lt;init&gt;(java.lang.String,java.lang.String,boolean)" resolve="BaseQuickFixProvider" />
                        <node concept="Xl_RD" id="aj" role="37wK5m">
                          <property role="Xl_RC" value="jetbrains.mps.lang.behavior.typesystem.UpdateConceptMethodCall_QuickFix" />
                        </node>
                        <node concept="Xl_RD" id="ak" role="37wK5m">
                          <property role="Xl_RC" value="6276577145066925461" />
                        </node>
                        <node concept="3clFbT" id="al" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="ae" role="3cqZAp">
                  <node concept="2OqwBi" id="am" role="3clFbG">
                    <node concept="37vLTw" id="an" role="2Oq$k0">
                      <ref role="3cqZAo" node="a0" resolve="_reporter_2309309498" />
                    </node>
                    <node concept="liA8E" id="ao" role="2OqNvi">
                      <ref role="37wK5l" to="2gg1:~IErrorReporter.addIntentionProvider(jetbrains.mps.errors.QuickFixProvider)" resolve="addIntentionProvider" />
                      <node concept="37vLTw" id="ap" role="37wK5m">
                        <ref role="3cqZAo" node="af" resolve="intentionProvider" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="6wLe0" id="9S" role="lGtFl">
            <property role="6wLej" value="6276577145066846019" />
            <property role="6wLeW" value="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="9M" role="1B3o_S">
        <uo k="s:originTrace" v="n:6276577145066829686" />
      </node>
    </node>
    <node concept="3clFb_" id="9$" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:6276577145066829686" />
      <node concept="3bZ5Sz" id="aq" role="3clF45">
        <uo k="s:originTrace" v="n:6276577145066829686" />
      </node>
      <node concept="3clFbS" id="ar" role="3clF47">
        <uo k="s:originTrace" v="n:6276577145066829686" />
        <node concept="3cpWs6" id="at" role="3cqZAp">
          <uo k="s:originTrace" v="n:6276577145066829686" />
          <node concept="35c_gC" id="au" role="3cqZAk">
            <ref role="35c_gD" to="tp25:haqgKhF" resolve="Node_ConceptMethodCall" />
            <uo k="s:originTrace" v="n:6276577145066829686" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="as" role="1B3o_S">
        <uo k="s:originTrace" v="n:6276577145066829686" />
      </node>
    </node>
    <node concept="3clFb_" id="9_" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:6276577145066829686" />
      <node concept="37vLTG" id="av" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:6276577145066829686" />
        <node concept="3Tqbb2" id="az" role="1tU5fm">
          <uo k="s:originTrace" v="n:6276577145066829686" />
        </node>
      </node>
      <node concept="3clFbS" id="aw" role="3clF47">
        <uo k="s:originTrace" v="n:6276577145066829686" />
        <node concept="9aQIb" id="a$" role="3cqZAp">
          <uo k="s:originTrace" v="n:6276577145066829686" />
          <node concept="3clFbS" id="a_" role="9aQI4">
            <uo k="s:originTrace" v="n:6276577145066829686" />
            <node concept="3cpWs6" id="aA" role="3cqZAp">
              <uo k="s:originTrace" v="n:6276577145066829686" />
              <node concept="2ShNRf" id="aB" role="3cqZAk">
                <uo k="s:originTrace" v="n:6276577145066829686" />
                <node concept="1pGfFk" id="aC" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:6276577145066829686" />
                  <node concept="2OqwBi" id="aD" role="37wK5m">
                    <uo k="s:originTrace" v="n:6276577145066829686" />
                    <node concept="2OqwBi" id="aF" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:6276577145066829686" />
                      <node concept="liA8E" id="aH" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:6276577145066829686" />
                      </node>
                      <node concept="2JrnkZ" id="aI" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:6276577145066829686" />
                        <node concept="37vLTw" id="aJ" role="2JrQYb">
                          <ref role="3cqZAo" node="av" resolve="argument" />
                          <uo k="s:originTrace" v="n:6276577145066829686" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="aG" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:6276577145066829686" />
                      <node concept="1rXfSq" id="aK" role="37wK5m">
                        <ref role="37wK5l" node="9$" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:6276577145066829686" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="aE" role="37wK5m">
                    <uo k="s:originTrace" v="n:6276577145066829686" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="ax" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:6276577145066829686" />
      </node>
      <node concept="3Tm1VV" id="ay" role="1B3o_S">
        <uo k="s:originTrace" v="n:6276577145066829686" />
      </node>
    </node>
    <node concept="3clFb_" id="9A" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:6276577145066829686" />
      <node concept="3clFbS" id="aL" role="3clF47">
        <uo k="s:originTrace" v="n:6276577145066829686" />
        <node concept="3cpWs6" id="aO" role="3cqZAp">
          <uo k="s:originTrace" v="n:6276577145066829686" />
          <node concept="3clFbT" id="aP" role="3cqZAk">
            <uo k="s:originTrace" v="n:6276577145066829686" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="aM" role="3clF45">
        <uo k="s:originTrace" v="n:6276577145066829686" />
      </node>
      <node concept="3Tm1VV" id="aN" role="1B3o_S">
        <uo k="s:originTrace" v="n:6276577145066829686" />
      </node>
    </node>
    <node concept="3uibUv" id="9B" role="EKbjA">
      <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:6276577145066829686" />
    </node>
    <node concept="3uibUv" id="9C" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractNonTypesystemRule_Runtime" resolve="AbstractNonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:6276577145066829686" />
    </node>
    <node concept="3Tm1VV" id="9D" role="1B3o_S">
      <uo k="s:originTrace" v="n:6276577145066829686" />
    </node>
  </node>
  <node concept="312cEu" id="aQ">
    <property role="3GE5qa" value="quickfixes" />
    <property role="TrG5h" value="RemoveAbstractFromTheMethod_QuickFix" />
    <uo k="s:originTrace" v="n:8014340958386797363" />
    <node concept="3clFbW" id="aR" role="jymVt">
      <uo k="s:originTrace" v="n:8014340958386797363" />
      <node concept="3clFbS" id="aX" role="3clF47">
        <uo k="s:originTrace" v="n:8014340958386797363" />
        <node concept="XkiVB" id="b0" role="3cqZAp">
          <ref role="37wK5l" to="2gg1:~QuickFix_Runtime.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="QuickFix_Runtime" />
          <uo k="s:originTrace" v="n:8014340958386797363" />
          <node concept="2ShNRf" id="b1" role="37wK5m">
            <uo k="s:originTrace" v="n:8014340958386797363" />
            <node concept="1pGfFk" id="b2" role="2ShVmc">
              <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
              <uo k="s:originTrace" v="n:8014340958386797363" />
              <node concept="Xl_RD" id="b3" role="37wK5m">
                <property role="Xl_RC" value="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
                <uo k="s:originTrace" v="n:8014340958386797363" />
              </node>
              <node concept="Xl_RD" id="b4" role="37wK5m">
                <property role="Xl_RC" value="8014340958386797363" />
                <uo k="s:originTrace" v="n:8014340958386797363" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="aY" role="3clF45">
        <uo k="s:originTrace" v="n:8014340958386797363" />
      </node>
      <node concept="3Tm1VV" id="aZ" role="1B3o_S">
        <uo k="s:originTrace" v="n:8014340958386797363" />
      </node>
    </node>
    <node concept="3clFb_" id="aS" role="jymVt">
      <property role="TrG5h" value="getDescription" />
      <uo k="s:originTrace" v="n:8014340958386797363" />
      <node concept="3Tm1VV" id="b5" role="1B3o_S">
        <uo k="s:originTrace" v="n:8014340958386797363" />
      </node>
      <node concept="3clFbS" id="b6" role="3clF47">
        <uo k="s:originTrace" v="n:8014340958386797379" />
        <node concept="3clFbF" id="b9" role="3cqZAp">
          <uo k="s:originTrace" v="n:8014340958386797380" />
          <node concept="Xl_RD" id="ba" role="3clFbG">
            <property role="Xl_RC" value="Remove the 'abstract' modifier" />
            <uo k="s:originTrace" v="n:8014340958386797381" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="b7" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:8014340958386797363" />
        <node concept="3uibUv" id="bb" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:8014340958386797363" />
        </node>
      </node>
      <node concept="17QB3L" id="b8" role="3clF45">
        <uo k="s:originTrace" v="n:8014340958386797363" />
      </node>
    </node>
    <node concept="3clFb_" id="aT" role="jymVt">
      <property role="TrG5h" value="execute" />
      <uo k="s:originTrace" v="n:8014340958386797363" />
      <node concept="3clFbS" id="bc" role="3clF47">
        <uo k="s:originTrace" v="n:8014340958386797367" />
        <node concept="1gVbGN" id="bg" role="3cqZAp">
          <uo k="s:originTrace" v="n:8014340958386797368" />
          <node concept="2OqwBi" id="bi" role="1gVkn0">
            <uo k="s:originTrace" v="n:8014340958386797369" />
            <node concept="1eOMI4" id="bj" role="2Oq$k0">
              <uo k="s:originTrace" v="n:8014340958386797370" />
              <node concept="10QFUN" id="bl" role="1eOMHV">
                <node concept="3Tqbb2" id="bm" role="10QFUM">
                  <ref role="ehGHo" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
                  <uo k="s:originTrace" v="n:8014340958386797365" />
                </node>
                <node concept="AH0OO" id="bn" role="10QFUP">
                  <node concept="3cmrfG" id="bo" role="AHEQo">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="1DoJHT" id="bp" role="AHHXb">
                    <property role="1Dpdpm" value="getField" />
                    <node concept="Xl_RD" id="bq" role="1EOqxR">
                      <property role="Xl_RC" value="conceptMethod" />
                    </node>
                    <node concept="10Q1$e" id="br" role="1Ez5kq">
                      <node concept="3uibUv" id="bt" role="10Q1$1">
                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                      </node>
                    </node>
                    <node concept="Xjq3P" id="bs" role="1EMhIo">
                      <ref role="1HBi2w" node="aQ" resolve="RemoveAbstractFromTheMethod_QuickFix" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3TrcHB" id="bk" role="2OqNvi">
              <ref role="3TsBF5" to="1i04:hP3i0m2" resolve="isAbstract" />
              <uo k="s:originTrace" v="n:8014340958386802503" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bh" role="3cqZAp">
          <uo k="s:originTrace" v="n:8014340958386797372" />
          <node concept="37vLTI" id="bu" role="3clFbG">
            <uo k="s:originTrace" v="n:8014340958386797373" />
            <node concept="3clFbT" id="bv" role="37vLTx">
              <property role="3clFbU" value="false" />
              <uo k="s:originTrace" v="n:8014340958386797374" />
            </node>
            <node concept="2OqwBi" id="bw" role="37vLTJ">
              <uo k="s:originTrace" v="n:8014340958386797375" />
              <node concept="1eOMI4" id="bx" role="2Oq$k0">
                <uo k="s:originTrace" v="n:8014340958386797376" />
                <node concept="10QFUN" id="bz" role="1eOMHV">
                  <node concept="3Tqbb2" id="b$" role="10QFUM">
                    <ref role="ehGHo" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
                    <uo k="s:originTrace" v="n:8014340958386797365" />
                  </node>
                  <node concept="AH0OO" id="b_" role="10QFUP">
                    <node concept="3cmrfG" id="bA" role="AHEQo">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="1DoJHT" id="bB" role="AHHXb">
                      <property role="1Dpdpm" value="getField" />
                      <node concept="Xl_RD" id="bC" role="1EOqxR">
                        <property role="Xl_RC" value="conceptMethod" />
                      </node>
                      <node concept="10Q1$e" id="bD" role="1Ez5kq">
                        <node concept="3uibUv" id="bF" role="10Q1$1">
                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                        </node>
                      </node>
                      <node concept="Xjq3P" id="bE" role="1EMhIo">
                        <ref role="1HBi2w" node="aQ" resolve="RemoveAbstractFromTheMethod_QuickFix" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3TrcHB" id="by" role="2OqNvi">
                <ref role="3TsBF5" to="1i04:hP3i0m2" resolve="isAbstract" />
                <uo k="s:originTrace" v="n:8014340958386805327" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="bd" role="3clF45">
        <uo k="s:originTrace" v="n:8014340958386797363" />
      </node>
      <node concept="3Tm1VV" id="be" role="1B3o_S">
        <uo k="s:originTrace" v="n:8014340958386797363" />
      </node>
      <node concept="37vLTG" id="bf" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:8014340958386797363" />
        <node concept="3uibUv" id="bG" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:8014340958386797363" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="aU" role="1B3o_S">
      <uo k="s:originTrace" v="n:8014340958386797363" />
    </node>
    <node concept="3uibUv" id="aV" role="1zkMxy">
      <ref role="3uigEE" to="2gg1:~QuickFix_Runtime" resolve="QuickFix_Runtime" />
      <uo k="s:originTrace" v="n:8014340958386797363" />
    </node>
    <node concept="6wLe0" id="aW" role="lGtFl">
      <property role="6wLej" value="8014340958386797363" />
      <property role="6wLeW" value="jetbrains.mps.lang.behavior.typesystem" />
      <uo k="s:originTrace" v="n:8014340958386797363" />
    </node>
  </node>
  <node concept="312cEu" id="bH">
    <property role="3GE5qa" value="quickfixes" />
    <property role="TrG5h" value="RemoveAbstractFromTheMethod_add_method_body_description_QuickFix" />
    <uo k="s:originTrace" v="n:8014340958387190847" />
    <node concept="3clFbW" id="bI" role="jymVt">
      <uo k="s:originTrace" v="n:8014340958387190847" />
      <node concept="3clFbS" id="bO" role="3clF47">
        <uo k="s:originTrace" v="n:8014340958387190847" />
        <node concept="XkiVB" id="bR" role="3cqZAp">
          <ref role="37wK5l" to="2gg1:~QuickFix_Runtime.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="QuickFix_Runtime" />
          <uo k="s:originTrace" v="n:8014340958387190847" />
          <node concept="2ShNRf" id="bS" role="37wK5m">
            <uo k="s:originTrace" v="n:8014340958387190847" />
            <node concept="1pGfFk" id="bT" role="2ShVmc">
              <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
              <uo k="s:originTrace" v="n:8014340958387190847" />
              <node concept="Xl_RD" id="bU" role="37wK5m">
                <property role="Xl_RC" value="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
                <uo k="s:originTrace" v="n:8014340958387190847" />
              </node>
              <node concept="Xl_RD" id="bV" role="37wK5m">
                <property role="Xl_RC" value="8014340958387190847" />
                <uo k="s:originTrace" v="n:8014340958387190847" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="bP" role="3clF45">
        <uo k="s:originTrace" v="n:8014340958387190847" />
      </node>
      <node concept="3Tm1VV" id="bQ" role="1B3o_S">
        <uo k="s:originTrace" v="n:8014340958387190847" />
      </node>
    </node>
    <node concept="3clFb_" id="bJ" role="jymVt">
      <property role="TrG5h" value="getDescription" />
      <uo k="s:originTrace" v="n:8014340958387190847" />
      <node concept="3Tm1VV" id="bW" role="1B3o_S">
        <uo k="s:originTrace" v="n:8014340958387190847" />
      </node>
      <node concept="3clFbS" id="bX" role="3clF47">
        <uo k="s:originTrace" v="n:8014340958387190863" />
        <node concept="3clFbF" id="c0" role="3cqZAp">
          <uo k="s:originTrace" v="n:8014340958387190864" />
          <node concept="3cpWs3" id="c1" role="3clFbG">
            <uo k="s:originTrace" v="n:8014340958387198465" />
            <node concept="Xl_RD" id="c2" role="3uHU7w">
              <property role="Xl_RC" value="'" />
              <uo k="s:originTrace" v="n:8014340958387192039" />
            </node>
            <node concept="3cpWs3" id="c3" role="3uHU7B">
              <uo k="s:originTrace" v="n:8014340958387192031" />
              <node concept="Xl_RD" id="c4" role="3uHU7B">
                <property role="Xl_RC" value="Add method body to '" />
                <uo k="s:originTrace" v="n:8014340958387192037" />
              </node>
              <node concept="2OqwBi" id="c5" role="3uHU7w">
                <uo k="s:originTrace" v="n:8014340958387201142" />
                <node concept="1eOMI4" id="c6" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:8014340958387199317" />
                  <node concept="10QFUN" id="c8" role="1eOMHV">
                    <node concept="3Tqbb2" id="c9" role="10QFUM">
                      <ref role="ehGHo" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
                      <uo k="s:originTrace" v="n:8014340958387190849" />
                    </node>
                    <node concept="AH0OO" id="ca" role="10QFUP">
                      <node concept="3cmrfG" id="cb" role="AHEQo">
                        <property role="3cmrfH" value="0" />
                      </node>
                      <node concept="1DoJHT" id="cc" role="AHHXb">
                        <property role="1Dpdpm" value="getField" />
                        <node concept="Xl_RD" id="cd" role="1EOqxR">
                          <property role="Xl_RC" value="conceptMethod" />
                        </node>
                        <node concept="10Q1$e" id="ce" role="1Ez5kq">
                          <node concept="3uibUv" id="cg" role="10Q1$1">
                            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                          </node>
                        </node>
                        <node concept="Xjq3P" id="cf" role="1EMhIo">
                          <ref role="1HBi2w" node="bH" resolve="RemoveAbstractFromTheMethod_add_method_body_description_QuickFix" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3TrcHB" id="c7" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  <uo k="s:originTrace" v="n:8014340958387818430" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="bY" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:8014340958387190847" />
        <node concept="3uibUv" id="ch" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:8014340958387190847" />
        </node>
      </node>
      <node concept="17QB3L" id="bZ" role="3clF45">
        <uo k="s:originTrace" v="n:8014340958387190847" />
      </node>
    </node>
    <node concept="3clFb_" id="bK" role="jymVt">
      <property role="TrG5h" value="execute" />
      <uo k="s:originTrace" v="n:8014340958387190847" />
      <node concept="3clFbS" id="ci" role="3clF47">
        <uo k="s:originTrace" v="n:8014340958387190851" />
        <node concept="1gVbGN" id="cm" role="3cqZAp">
          <uo k="s:originTrace" v="n:8014340958387190852" />
          <node concept="2OqwBi" id="co" role="1gVkn0">
            <uo k="s:originTrace" v="n:8014340958387190853" />
            <node concept="1eOMI4" id="cp" role="2Oq$k0">
              <uo k="s:originTrace" v="n:8014340958387190854" />
              <node concept="10QFUN" id="cr" role="1eOMHV">
                <node concept="3Tqbb2" id="cs" role="10QFUM">
                  <ref role="ehGHo" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
                  <uo k="s:originTrace" v="n:8014340958387190849" />
                </node>
                <node concept="AH0OO" id="ct" role="10QFUP">
                  <node concept="3cmrfG" id="cu" role="AHEQo">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="1DoJHT" id="cv" role="AHHXb">
                    <property role="1Dpdpm" value="getField" />
                    <node concept="Xl_RD" id="cw" role="1EOqxR">
                      <property role="Xl_RC" value="conceptMethod" />
                    </node>
                    <node concept="10Q1$e" id="cx" role="1Ez5kq">
                      <node concept="3uibUv" id="cz" role="10Q1$1">
                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                      </node>
                    </node>
                    <node concept="Xjq3P" id="cy" role="1EMhIo">
                      <ref role="1HBi2w" node="bH" resolve="RemoveAbstractFromTheMethod_add_method_body_description_QuickFix" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3TrcHB" id="cq" role="2OqNvi">
              <ref role="3TsBF5" to="1i04:hP3i0m2" resolve="isAbstract" />
              <uo k="s:originTrace" v="n:8014340958387190855" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="cn" role="3cqZAp">
          <uo k="s:originTrace" v="n:8014340958387190856" />
          <node concept="37vLTI" id="c$" role="3clFbG">
            <uo k="s:originTrace" v="n:8014340958387190857" />
            <node concept="3clFbT" id="c_" role="37vLTx">
              <uo k="s:originTrace" v="n:8014340958387190858" />
            </node>
            <node concept="2OqwBi" id="cA" role="37vLTJ">
              <uo k="s:originTrace" v="n:8014340958387190859" />
              <node concept="1eOMI4" id="cB" role="2Oq$k0">
                <uo k="s:originTrace" v="n:8014340958387190860" />
                <node concept="10QFUN" id="cD" role="1eOMHV">
                  <node concept="3Tqbb2" id="cE" role="10QFUM">
                    <ref role="ehGHo" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
                    <uo k="s:originTrace" v="n:8014340958387190849" />
                  </node>
                  <node concept="AH0OO" id="cF" role="10QFUP">
                    <node concept="3cmrfG" id="cG" role="AHEQo">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="1DoJHT" id="cH" role="AHHXb">
                      <property role="1Dpdpm" value="getField" />
                      <node concept="Xl_RD" id="cI" role="1EOqxR">
                        <property role="Xl_RC" value="conceptMethod" />
                      </node>
                      <node concept="10Q1$e" id="cJ" role="1Ez5kq">
                        <node concept="3uibUv" id="cL" role="10Q1$1">
                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                        </node>
                      </node>
                      <node concept="Xjq3P" id="cK" role="1EMhIo">
                        <ref role="1HBi2w" node="bH" resolve="RemoveAbstractFromTheMethod_add_method_body_description_QuickFix" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3TrcHB" id="cC" role="2OqNvi">
                <ref role="3TsBF5" to="1i04:hP3i0m2" resolve="isAbstract" />
                <uo k="s:originTrace" v="n:8014340958387849748" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="cj" role="3clF45">
        <uo k="s:originTrace" v="n:8014340958387190847" />
      </node>
      <node concept="3Tm1VV" id="ck" role="1B3o_S">
        <uo k="s:originTrace" v="n:8014340958387190847" />
      </node>
      <node concept="37vLTG" id="cl" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:8014340958387190847" />
        <node concept="3uibUv" id="cM" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:8014340958387190847" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="bL" role="1B3o_S">
      <uo k="s:originTrace" v="n:8014340958387190847" />
    </node>
    <node concept="3uibUv" id="bM" role="1zkMxy">
      <ref role="3uigEE" to="2gg1:~QuickFix_Runtime" resolve="QuickFix_Runtime" />
      <uo k="s:originTrace" v="n:8014340958387190847" />
    </node>
    <node concept="6wLe0" id="bN" role="lGtFl">
      <property role="6wLej" value="8014340958387190847" />
      <property role="6wLeW" value="jetbrains.mps.lang.behavior.typesystem" />
      <uo k="s:originTrace" v="n:8014340958387190847" />
    </node>
  </node>
  <node concept="312cEu" id="cN">
    <property role="3GE5qa" value="quickfixes" />
    <property role="TrG5h" value="RemoveFinalFromTheMethod_QuickFix" />
    <uo k="s:originTrace" v="n:8014340958386523432" />
    <node concept="3clFbW" id="cO" role="jymVt">
      <uo k="s:originTrace" v="n:8014340958386523432" />
      <node concept="3clFbS" id="cU" role="3clF47">
        <uo k="s:originTrace" v="n:8014340958386523432" />
        <node concept="XkiVB" id="cX" role="3cqZAp">
          <ref role="37wK5l" to="2gg1:~QuickFix_Runtime.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="QuickFix_Runtime" />
          <uo k="s:originTrace" v="n:8014340958386523432" />
          <node concept="2ShNRf" id="cY" role="37wK5m">
            <uo k="s:originTrace" v="n:8014340958386523432" />
            <node concept="1pGfFk" id="cZ" role="2ShVmc">
              <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
              <uo k="s:originTrace" v="n:8014340958386523432" />
              <node concept="Xl_RD" id="d0" role="37wK5m">
                <property role="Xl_RC" value="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
                <uo k="s:originTrace" v="n:8014340958386523432" />
              </node>
              <node concept="Xl_RD" id="d1" role="37wK5m">
                <property role="Xl_RC" value="8014340958386523432" />
                <uo k="s:originTrace" v="n:8014340958386523432" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="cV" role="3clF45">
        <uo k="s:originTrace" v="n:8014340958386523432" />
      </node>
      <node concept="3Tm1VV" id="cW" role="1B3o_S">
        <uo k="s:originTrace" v="n:8014340958386523432" />
      </node>
    </node>
    <node concept="3clFb_" id="cP" role="jymVt">
      <property role="TrG5h" value="getDescription" />
      <uo k="s:originTrace" v="n:8014340958386523432" />
      <node concept="3Tm1VV" id="d2" role="1B3o_S">
        <uo k="s:originTrace" v="n:8014340958386523432" />
      </node>
      <node concept="3clFbS" id="d3" role="3clF47">
        <uo k="s:originTrace" v="n:8014340958386528474" />
        <node concept="3clFbF" id="d6" role="3cqZAp">
          <uo k="s:originTrace" v="n:8014340958386529025" />
          <node concept="Xl_RD" id="d7" role="3clFbG">
            <property role="Xl_RC" value="Remove the 'final' modifier" />
            <uo k="s:originTrace" v="n:8014340958386529024" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="d4" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:8014340958386523432" />
        <node concept="3uibUv" id="d8" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:8014340958386523432" />
        </node>
      </node>
      <node concept="17QB3L" id="d5" role="3clF45">
        <uo k="s:originTrace" v="n:8014340958386523432" />
      </node>
    </node>
    <node concept="3clFb_" id="cQ" role="jymVt">
      <property role="TrG5h" value="execute" />
      <uo k="s:originTrace" v="n:8014340958386523432" />
      <node concept="3clFbS" id="d9" role="3clF47">
        <uo k="s:originTrace" v="n:8014340958386523434" />
        <node concept="1gVbGN" id="dd" role="3cqZAp">
          <uo k="s:originTrace" v="n:8014340958386541145" />
          <node concept="2OqwBi" id="df" role="1gVkn0">
            <uo k="s:originTrace" v="n:8014340958386542718" />
            <node concept="1eOMI4" id="dg" role="2Oq$k0">
              <uo k="s:originTrace" v="n:8014340958386541188" />
              <node concept="10QFUN" id="di" role="1eOMHV">
                <node concept="3Tqbb2" id="dj" role="10QFUM">
                  <ref role="ehGHo" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
                  <uo k="s:originTrace" v="n:8014340958386528466" />
                </node>
                <node concept="AH0OO" id="dk" role="10QFUP">
                  <node concept="3cmrfG" id="dl" role="AHEQo">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="1DoJHT" id="dm" role="AHHXb">
                    <property role="1Dpdpm" value="getField" />
                    <node concept="Xl_RD" id="dn" role="1EOqxR">
                      <property role="Xl_RC" value="conceptMethod" />
                    </node>
                    <node concept="10Q1$e" id="do" role="1Ez5kq">
                      <node concept="3uibUv" id="dq" role="10Q1$1">
                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                      </node>
                    </node>
                    <node concept="Xjq3P" id="dp" role="1EMhIo">
                      <ref role="1HBi2w" node="cN" resolve="RemoveFinalFromTheMethod_QuickFix" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3TrcHB" id="dh" role="2OqNvi">
              <ref role="3TsBF5" to="tpee:hcDiZZi" resolve="isFinal" />
              <uo k="s:originTrace" v="n:8014340958386545325" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="de" role="3cqZAp">
          <uo k="s:originTrace" v="n:8014340958386533475" />
          <node concept="37vLTI" id="dr" role="3clFbG">
            <uo k="s:originTrace" v="n:8014340958386540775" />
            <node concept="3clFbT" id="ds" role="37vLTx">
              <property role="3clFbU" value="false" />
              <uo k="s:originTrace" v="n:8014340958386540813" />
            </node>
            <node concept="2OqwBi" id="dt" role="37vLTJ">
              <uo k="s:originTrace" v="n:8014340958386534761" />
              <node concept="1eOMI4" id="du" role="2Oq$k0">
                <uo k="s:originTrace" v="n:8014340958386533474" />
                <node concept="10QFUN" id="dw" role="1eOMHV">
                  <node concept="3Tqbb2" id="dx" role="10QFUM">
                    <ref role="ehGHo" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
                    <uo k="s:originTrace" v="n:8014340958386528466" />
                  </node>
                  <node concept="AH0OO" id="dy" role="10QFUP">
                    <node concept="3cmrfG" id="dz" role="AHEQo">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="1DoJHT" id="d$" role="AHHXb">
                      <property role="1Dpdpm" value="getField" />
                      <node concept="Xl_RD" id="d_" role="1EOqxR">
                        <property role="Xl_RC" value="conceptMethod" />
                      </node>
                      <node concept="10Q1$e" id="dA" role="1Ez5kq">
                        <node concept="3uibUv" id="dC" role="10Q1$1">
                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                        </node>
                      </node>
                      <node concept="Xjq3P" id="dB" role="1EMhIo">
                        <ref role="1HBi2w" node="cN" resolve="RemoveFinalFromTheMethod_QuickFix" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3TrcHB" id="dv" role="2OqNvi">
                <ref role="3TsBF5" to="tpee:hcDiZZi" resolve="isFinal" />
                <uo k="s:originTrace" v="n:8014340958386537085" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="da" role="3clF45">
        <uo k="s:originTrace" v="n:8014340958386523432" />
      </node>
      <node concept="3Tm1VV" id="db" role="1B3o_S">
        <uo k="s:originTrace" v="n:8014340958386523432" />
      </node>
      <node concept="37vLTG" id="dc" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:8014340958386523432" />
        <node concept="3uibUv" id="dD" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:8014340958386523432" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="cR" role="1B3o_S">
      <uo k="s:originTrace" v="n:8014340958386523432" />
    </node>
    <node concept="3uibUv" id="cS" role="1zkMxy">
      <ref role="3uigEE" to="2gg1:~QuickFix_Runtime" resolve="QuickFix_Runtime" />
      <uo k="s:originTrace" v="n:8014340958386523432" />
    </node>
    <node concept="6wLe0" id="cT" role="lGtFl">
      <property role="6wLej" value="8014340958386523432" />
      <property role="6wLeW" value="jetbrains.mps.lang.behavior.typesystem" />
      <uo k="s:originTrace" v="n:8014340958386523432" />
    </node>
  </node>
  <node concept="312cEu" id="dE">
    <property role="TrG5h" value="TypesystemDescriptor" />
    <node concept="3clFbW" id="dF" role="jymVt">
      <node concept="3clFbS" id="dI" role="3clF47">
        <node concept="9aQIb" id="dL" role="3cqZAp">
          <node concept="3clFbS" id="dY" role="9aQI4">
            <node concept="3cpWs8" id="dZ" role="3cqZAp">
              <node concept="3cpWsn" id="e1" role="3cpWs9">
                <property role="TrG5h" value="inferenceRule" />
                <node concept="2ShNRf" id="e2" role="33vP2m">
                  <node concept="1pGfFk" id="e4" role="2ShVmc">
                    <ref role="37wK5l" node="vC" resolve="typeof_SuperConceptExpression_InferenceRule" />
                  </node>
                </node>
                <node concept="3uibUv" id="e3" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="e0" role="3cqZAp">
              <node concept="2OqwBi" id="e5" role="3clFbG">
                <node concept="liA8E" id="e6" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="e8" role="37wK5m">
                    <ref role="3cqZAo" node="e1" resolve="inferenceRule" />
                  </node>
                </node>
                <node concept="2OqwBi" id="e7" role="2Oq$k0">
                  <node concept="Xjq3P" id="e9" role="2Oq$k0" />
                  <node concept="2OwXpG" id="ea" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myInferenceRules" resolve="myInferenceRules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="dM" role="3cqZAp">
          <node concept="3clFbS" id="eb" role="9aQI4">
            <node concept="3cpWs8" id="ec" role="3cqZAp">
              <node concept="3cpWsn" id="ee" role="3cpWs9">
                <property role="TrG5h" value="inferenceRule" />
                <node concept="2ShNRf" id="ef" role="33vP2m">
                  <node concept="1pGfFk" id="eh" role="2ShVmc">
                    <ref role="37wK5l" node="xa" resolve="typeof_SuperNodeExpression_InferenceRule" />
                  </node>
                </node>
                <node concept="3uibUv" id="eg" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="ed" role="3cqZAp">
              <node concept="2OqwBi" id="ei" role="3clFbG">
                <node concept="liA8E" id="ej" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="el" role="37wK5m">
                    <ref role="3cqZAo" node="ee" resolve="inferenceRule" />
                  </node>
                </node>
                <node concept="2OqwBi" id="ek" role="2Oq$k0">
                  <node concept="Xjq3P" id="em" role="2Oq$k0" />
                  <node concept="2OwXpG" id="en" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myInferenceRules" resolve="myInferenceRules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="dN" role="3cqZAp">
          <node concept="3clFbS" id="eo" role="9aQI4">
            <node concept="3cpWs8" id="ep" role="3cqZAp">
              <node concept="3cpWsn" id="er" role="3cpWs9">
                <property role="TrG5h" value="inferenceRule" />
                <node concept="2ShNRf" id="es" role="33vP2m">
                  <node concept="1pGfFk" id="eu" role="2ShVmc">
                    <ref role="37wK5l" node="zu" resolve="typeof_ThisConceptExpression_InferenceRule" />
                  </node>
                </node>
                <node concept="3uibUv" id="et" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="eq" role="3cqZAp">
              <node concept="2OqwBi" id="ev" role="3clFbG">
                <node concept="liA8E" id="ew" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="ey" role="37wK5m">
                    <ref role="3cqZAo" node="er" resolve="inferenceRule" />
                  </node>
                </node>
                <node concept="2OqwBi" id="ex" role="2Oq$k0">
                  <node concept="Xjq3P" id="ez" role="2Oq$k0" />
                  <node concept="2OwXpG" id="e$" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myInferenceRules" resolve="myInferenceRules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="dO" role="3cqZAp">
          <node concept="3clFbS" id="e_" role="9aQI4">
            <node concept="3cpWs8" id="eA" role="3cqZAp">
              <node concept="3cpWsn" id="eC" role="3cpWs9">
                <property role="TrG5h" value="inferenceRule" />
                <node concept="2ShNRf" id="eD" role="33vP2m">
                  <node concept="1pGfFk" id="eF" role="2ShVmc">
                    <ref role="37wK5l" node="_5" resolve="typeof_ThisNodeExpression_InferenceRule" />
                  </node>
                </node>
                <node concept="3uibUv" id="eE" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="eB" role="3cqZAp">
              <node concept="2OqwBi" id="eG" role="3clFbG">
                <node concept="liA8E" id="eH" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="eJ" role="37wK5m">
                    <ref role="3cqZAo" node="eC" resolve="inferenceRule" />
                  </node>
                </node>
                <node concept="2OqwBi" id="eI" role="2Oq$k0">
                  <node concept="Xjq3P" id="eK" role="2Oq$k0" />
                  <node concept="2OwXpG" id="eL" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myInferenceRules" resolve="myInferenceRules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="dP" role="3cqZAp">
          <node concept="3clFbS" id="eM" role="9aQI4">
            <node concept="3cpWs8" id="eN" role="3cqZAp">
              <node concept="3cpWsn" id="eP" role="3cpWs9">
                <property role="TrG5h" value="nonTypesystemRule" />
                <node concept="3uibUv" id="eQ" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="eR" role="33vP2m">
                  <node concept="1pGfFk" id="eS" role="2ShVmc">
                    <ref role="37wK5l" node="9y" resolve="ObsoleteConceptMethodCallCheck_NonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="eO" role="3cqZAp">
              <node concept="2OqwBi" id="eT" role="3clFbG">
                <node concept="2OqwBi" id="eU" role="2Oq$k0">
                  <node concept="Xjq3P" id="eW" role="2Oq$k0" />
                  <node concept="2OwXpG" id="eX" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myNonTypesystemRules" resolve="myNonTypesystemRules" />
                  </node>
                </node>
                <node concept="liA8E" id="eV" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="eY" role="37wK5m">
                    <ref role="3cqZAo" node="eP" resolve="nonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="dQ" role="3cqZAp">
          <node concept="3clFbS" id="eZ" role="9aQI4">
            <node concept="3cpWs8" id="f0" role="3cqZAp">
              <node concept="3cpWsn" id="f2" role="3cpWs9">
                <property role="TrG5h" value="nonTypesystemRule" />
                <node concept="3uibUv" id="f3" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="f4" role="33vP2m">
                  <node concept="1pGfFk" id="f5" role="2ShVmc">
                    <ref role="37wK5l" node="hp" resolve="check_AbstractMethodIsVirtual_NonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="f1" role="3cqZAp">
              <node concept="2OqwBi" id="f6" role="3clFbG">
                <node concept="2OqwBi" id="f7" role="2Oq$k0">
                  <node concept="Xjq3P" id="f9" role="2Oq$k0" />
                  <node concept="2OwXpG" id="fa" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myNonTypesystemRules" resolve="myNonTypesystemRules" />
                  </node>
                </node>
                <node concept="liA8E" id="f8" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="fb" role="37wK5m">
                    <ref role="3cqZAo" node="f2" resolve="nonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="dR" role="3cqZAp">
          <node concept="3clFbS" id="fc" role="9aQI4">
            <node concept="3cpWs8" id="fd" role="3cqZAp">
              <node concept="3cpWsn" id="ff" role="3cpWs9">
                <property role="TrG5h" value="nonTypesystemRule" />
                <node concept="3uibUv" id="fg" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="fh" role="33vP2m">
                  <node concept="1pGfFk" id="fi" role="2ShVmc">
                    <ref role="37wK5l" node="iY" resolve="check_ConceptBehaviorForNotImplementedMethods_NonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="fe" role="3cqZAp">
              <node concept="2OqwBi" id="fj" role="3clFbG">
                <node concept="2OqwBi" id="fk" role="2Oq$k0">
                  <node concept="Xjq3P" id="fm" role="2Oq$k0" />
                  <node concept="2OwXpG" id="fn" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myNonTypesystemRules" resolve="myNonTypesystemRules" />
                  </node>
                </node>
                <node concept="liA8E" id="fl" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="fo" role="37wK5m">
                    <ref role="3cqZAo" node="ff" resolve="nonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="dS" role="3cqZAp">
          <node concept="3clFbS" id="fp" role="9aQI4">
            <node concept="3cpWs8" id="fq" role="3cqZAp">
              <node concept="3cpWsn" id="fs" role="3cpWs9">
                <property role="TrG5h" value="nonTypesystemRule" />
                <node concept="3uibUv" id="ft" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="fu" role="33vP2m">
                  <node concept="1pGfFk" id="fv" role="2ShVmc">
                    <ref role="37wK5l" node="mk" resolve="check_FinalAndAbstractMethod_NonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="fr" role="3cqZAp">
              <node concept="2OqwBi" id="fw" role="3clFbG">
                <node concept="2OqwBi" id="fx" role="2Oq$k0">
                  <node concept="Xjq3P" id="fz" role="2Oq$k0" />
                  <node concept="2OwXpG" id="f$" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myNonTypesystemRules" resolve="myNonTypesystemRules" />
                  </node>
                </node>
                <node concept="liA8E" id="fy" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="f_" role="37wK5m">
                    <ref role="3cqZAo" node="fs" resolve="nonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="dT" role="3cqZAp">
          <node concept="3clFbS" id="fA" role="9aQI4">
            <node concept="3cpWs8" id="fB" role="3cqZAp">
              <node concept="3cpWsn" id="fD" role="3cpWs9">
                <property role="TrG5h" value="nonTypesystemRule" />
                <node concept="3uibUv" id="fE" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="fF" role="33vP2m">
                  <node concept="1pGfFk" id="fG" role="2ShVmc">
                    <ref role="37wK5l" node="oe" resolve="check_FinalMethodIsVirtual_NonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="fC" role="3cqZAp">
              <node concept="2OqwBi" id="fH" role="3clFbG">
                <node concept="2OqwBi" id="fI" role="2Oq$k0">
                  <node concept="Xjq3P" id="fK" role="2Oq$k0" />
                  <node concept="2OwXpG" id="fL" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myNonTypesystemRules" resolve="myNonTypesystemRules" />
                  </node>
                </node>
                <node concept="liA8E" id="fJ" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="fM" role="37wK5m">
                    <ref role="3cqZAo" node="fD" resolve="nonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="dU" role="3cqZAp">
          <node concept="3clFbS" id="fN" role="9aQI4">
            <node concept="3cpWs8" id="fO" role="3cqZAp">
              <node concept="3cpWsn" id="fQ" role="3cpWs9">
                <property role="TrG5h" value="nonTypesystemRule" />
                <node concept="3uibUv" id="fR" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="fS" role="33vP2m">
                  <node concept="1pGfFk" id="fT" role="2ShVmc">
                    <ref role="37wK5l" node="pN" resolve="check_MethodIsCorrectlyOverriden_NonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="fP" role="3cqZAp">
              <node concept="2OqwBi" id="fU" role="3clFbG">
                <node concept="2OqwBi" id="fV" role="2Oq$k0">
                  <node concept="Xjq3P" id="fX" role="2Oq$k0" />
                  <node concept="2OwXpG" id="fY" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myNonTypesystemRules" resolve="myNonTypesystemRules" />
                  </node>
                </node>
                <node concept="liA8E" id="fW" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="fZ" role="37wK5m">
                    <ref role="3cqZAo" node="fQ" resolve="nonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="dV" role="3cqZAp">
          <node concept="3clFbS" id="g0" role="9aQI4">
            <node concept="3cpWs8" id="g1" role="3cqZAp">
              <node concept="3cpWsn" id="g3" role="3cpWs9">
                <property role="TrG5h" value="nonTypesystemRule" />
                <node concept="3uibUv" id="g4" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="g5" role="33vP2m">
                  <node concept="1pGfFk" id="g6" role="2ShVmc">
                    <ref role="37wK5l" node="rk" resolve="check_MethodIsNotOverriddenTwice_NonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="g2" role="3cqZAp">
              <node concept="2OqwBi" id="g7" role="3clFbG">
                <node concept="2OqwBi" id="g8" role="2Oq$k0">
                  <node concept="Xjq3P" id="ga" role="2Oq$k0" />
                  <node concept="2OwXpG" id="gb" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myNonTypesystemRules" resolve="myNonTypesystemRules" />
                  </node>
                </node>
                <node concept="liA8E" id="g9" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="gc" role="37wK5m">
                    <ref role="3cqZAo" node="g3" resolve="nonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="dW" role="3cqZAp">
          <node concept="3clFbS" id="gd" role="9aQI4">
            <node concept="3cpWs8" id="ge" role="3cqZAp">
              <node concept="3cpWsn" id="gg" role="3cpWs9">
                <property role="TrG5h" value="nonTypesystemRule" />
                <node concept="3uibUv" id="gh" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="gi" role="33vP2m">
                  <node concept="1pGfFk" id="gj" role="2ShVmc">
                    <ref role="37wK5l" node="t8" resolve="check_NoFinalOverrides_NonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="gf" role="3cqZAp">
              <node concept="2OqwBi" id="gk" role="3clFbG">
                <node concept="2OqwBi" id="gl" role="2Oq$k0">
                  <node concept="Xjq3P" id="gn" role="2Oq$k0" />
                  <node concept="2OwXpG" id="go" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myNonTypesystemRules" resolve="myNonTypesystemRules" />
                  </node>
                </node>
                <node concept="liA8E" id="gm" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="gp" role="37wK5m">
                    <ref role="3cqZAo" node="gg" resolve="nonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="dX" role="3cqZAp">
          <node concept="3clFbS" id="gq" role="9aQI4">
            <node concept="3cpWs8" id="gr" role="3cqZAp">
              <node concept="3cpWsn" id="gt" role="3cpWs9">
                <property role="TrG5h" value="nonTypesystemRule" />
                <node concept="3uibUv" id="gu" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="gv" role="33vP2m">
                  <node concept="1pGfFk" id="gw" role="2ShVmc">
                    <ref role="37wK5l" node="u7" resolve="check_PrivateMethodIsNotVirtual_NonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="gs" role="3cqZAp">
              <node concept="2OqwBi" id="gx" role="3clFbG">
                <node concept="2OqwBi" id="gy" role="2Oq$k0">
                  <node concept="Xjq3P" id="g$" role="2Oq$k0" />
                  <node concept="2OwXpG" id="g_" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myNonTypesystemRules" resolve="myNonTypesystemRules" />
                  </node>
                </node>
                <node concept="liA8E" id="gz" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="gA" role="37wK5m">
                    <ref role="3cqZAo" node="gt" resolve="nonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="dJ" role="1B3o_S" />
      <node concept="3cqZAl" id="dK" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="dG" role="1B3o_S" />
    <node concept="3uibUv" id="dH" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~BaseHelginsDescriptor" resolve="BaseHelginsDescriptor" />
    </node>
  </node>
  <node concept="312cEu" id="gB">
    <property role="3GE5qa" value="quickfixes" />
    <property role="TrG5h" value="UpdateConceptMethodCall_QuickFix" />
    <uo k="s:originTrace" v="n:6276577145066926131" />
    <node concept="3clFbW" id="gC" role="jymVt">
      <uo k="s:originTrace" v="n:6276577145066926131" />
      <node concept="3clFbS" id="gI" role="3clF47">
        <uo k="s:originTrace" v="n:6276577145066926131" />
        <node concept="XkiVB" id="gL" role="3cqZAp">
          <ref role="37wK5l" to="2gg1:~QuickFix_Runtime.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="QuickFix_Runtime" />
          <uo k="s:originTrace" v="n:6276577145066926131" />
          <node concept="2ShNRf" id="gM" role="37wK5m">
            <uo k="s:originTrace" v="n:6276577145066926131" />
            <node concept="1pGfFk" id="gN" role="2ShVmc">
              <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
              <uo k="s:originTrace" v="n:6276577145066926131" />
              <node concept="Xl_RD" id="gO" role="37wK5m">
                <property role="Xl_RC" value="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
                <uo k="s:originTrace" v="n:6276577145066926131" />
              </node>
              <node concept="Xl_RD" id="gP" role="37wK5m">
                <property role="Xl_RC" value="6276577145066926131" />
                <uo k="s:originTrace" v="n:6276577145066926131" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="gJ" role="3clF45">
        <uo k="s:originTrace" v="n:6276577145066926131" />
      </node>
      <node concept="3Tm1VV" id="gK" role="1B3o_S">
        <uo k="s:originTrace" v="n:6276577145066926131" />
      </node>
    </node>
    <node concept="3clFb_" id="gD" role="jymVt">
      <property role="TrG5h" value="getDescription" />
      <uo k="s:originTrace" v="n:6276577145066926131" />
      <node concept="3Tm1VV" id="gQ" role="1B3o_S">
        <uo k="s:originTrace" v="n:6276577145066926131" />
      </node>
      <node concept="3clFbS" id="gR" role="3clF47">
        <uo k="s:originTrace" v="n:3178336236425559447" />
        <node concept="3clFbF" id="gU" role="3cqZAp">
          <uo k="s:originTrace" v="n:3178336236425560800" />
          <node concept="Xl_RD" id="gV" role="3clFbG">
            <property role="Xl_RC" value="Update obsolete concept method call" />
            <uo k="s:originTrace" v="n:3178336236425560799" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="gS" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:6276577145066926131" />
        <node concept="3uibUv" id="gW" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:6276577145066926131" />
        </node>
      </node>
      <node concept="17QB3L" id="gT" role="3clF45">
        <uo k="s:originTrace" v="n:6276577145066926131" />
      </node>
    </node>
    <node concept="3clFb_" id="gE" role="jymVt">
      <property role="TrG5h" value="execute" />
      <uo k="s:originTrace" v="n:6276577145066926131" />
      <node concept="3clFbS" id="gX" role="3clF47">
        <uo k="s:originTrace" v="n:6276577145066926133" />
        <node concept="3SKdUt" id="h1" role="3cqZAp">
          <uo k="s:originTrace" v="n:3178336236425724838" />
          <node concept="1PaTwC" id="h3" role="1aUNEU">
            <uo k="s:originTrace" v="n:3178336236425724839" />
            <node concept="3oM_SD" id="h4" role="1PaTwD">
              <property role="3oM_SC" value="we" />
              <uo k="s:originTrace" v="n:3178336236425724840" />
            </node>
            <node concept="3oM_SD" id="h5" role="1PaTwD">
              <property role="3oM_SC" value="expect" />
              <uo k="s:originTrace" v="n:3178336236425725208" />
            </node>
            <node concept="3oM_SD" id="h6" role="1PaTwD">
              <property role="3oM_SC" value="node" />
              <uo k="s:originTrace" v="n:3178336236425725297" />
            </node>
            <node concept="3oM_SD" id="h7" role="1PaTwD">
              <property role="3oM_SC" value="factory" />
              <uo k="s:originTrace" v="n:3178336236425725416" />
            </node>
            <node concept="3oM_SD" id="h8" role="1PaTwD">
              <property role="3oM_SC" value="(see" />
              <uo k="s:originTrace" v="n:3178336236425725419" />
            </node>
            <node concept="3oM_SD" id="h9" role="1PaTwD">
              <property role="3oM_SC" value="actions" />
              <uo k="s:originTrace" v="n:3178336236425725725" />
            </node>
            <node concept="3oM_SD" id="ha" role="1PaTwD">
              <property role="3oM_SC" value="aspect)" />
              <uo k="s:originTrace" v="n:3178336236425725810" />
            </node>
            <node concept="3oM_SD" id="hb" role="1PaTwD">
              <property role="3oM_SC" value="to" />
              <uo k="s:originTrace" v="n:920903972409118484" />
            </node>
            <node concept="3oM_SD" id="hc" role="1PaTwD">
              <property role="3oM_SC" value="initialize" />
              <uo k="s:originTrace" v="n:920903972409118685" />
            </node>
            <node concept="3oM_SD" id="hd" role="1PaTwD">
              <property role="3oM_SC" value="new" />
              <uo k="s:originTrace" v="n:920903972409118870" />
            </node>
            <node concept="3oM_SD" id="he" role="1PaTwD">
              <property role="3oM_SC" value="node" />
              <uo k="s:originTrace" v="n:920903972409118958" />
            </node>
            <node concept="3oM_SD" id="hf" role="1PaTwD">
              <property role="3oM_SC" value="with" />
              <uo k="s:originTrace" v="n:920903972409118984" />
            </node>
            <node concept="3oM_SD" id="hg" role="1PaTwD">
              <property role="3oM_SC" value="values" />
              <uo k="s:originTrace" v="n:920903972409119073" />
            </node>
            <node concept="3oM_SD" id="hh" role="1PaTwD">
              <property role="3oM_SC" value="of" />
              <uo k="s:originTrace" v="n:920903972409119144" />
            </node>
            <node concept="3oM_SD" id="hi" role="1PaTwD">
              <property role="3oM_SC" value="the" />
              <uo k="s:originTrace" v="n:920903972409119148" />
            </node>
            <node concept="3oM_SD" id="hj" role="1PaTwD">
              <property role="3oM_SC" value="original" />
              <uo k="s:originTrace" v="n:920903972409119153" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="h2" role="3cqZAp">
          <uo k="s:originTrace" v="n:3178336236425565037" />
          <node concept="2OqwBi" id="hk" role="3clFbG">
            <uo k="s:originTrace" v="n:3178336236425566007" />
            <node concept="Q6c8r" id="hl" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3178336236425565036" />
            </node>
            <node concept="2DeJnW" id="hm" role="2OqNvi">
              <ref role="1_rbq0" to="1i04:2N_AbRfz_nd" resolve="Node_ConceptMethodCall" />
              <uo k="s:originTrace" v="n:3178336236425724294" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="gY" role="3clF45">
        <uo k="s:originTrace" v="n:6276577145066926131" />
      </node>
      <node concept="3Tm1VV" id="gZ" role="1B3o_S">
        <uo k="s:originTrace" v="n:6276577145066926131" />
      </node>
      <node concept="37vLTG" id="h0" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:6276577145066926131" />
        <node concept="3uibUv" id="hn" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:6276577145066926131" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="gF" role="1B3o_S">
      <uo k="s:originTrace" v="n:6276577145066926131" />
    </node>
    <node concept="3uibUv" id="gG" role="1zkMxy">
      <ref role="3uigEE" to="2gg1:~QuickFix_Runtime" resolve="QuickFix_Runtime" />
      <uo k="s:originTrace" v="n:6276577145066926131" />
    </node>
    <node concept="6wLe0" id="gH" role="lGtFl">
      <property role="6wLej" value="6276577145066926131" />
      <property role="6wLeW" value="jetbrains.mps.lang.behavior.typesystem" />
      <uo k="s:originTrace" v="n:6276577145066926131" />
    </node>
  </node>
  <node concept="312cEu" id="ho">
    <property role="3GE5qa" value="" />
    <property role="TrG5h" value="check_AbstractMethodIsVirtual_NonTypesystemRule" />
    <uo k="s:originTrace" v="n:8014340958386753739" />
    <node concept="3clFbW" id="hp" role="jymVt">
      <uo k="s:originTrace" v="n:8014340958386753739" />
      <node concept="3clFbS" id="hx" role="3clF47">
        <uo k="s:originTrace" v="n:8014340958386753739" />
      </node>
      <node concept="3Tm1VV" id="hy" role="1B3o_S">
        <uo k="s:originTrace" v="n:8014340958386753739" />
      </node>
      <node concept="3cqZAl" id="hz" role="3clF45">
        <uo k="s:originTrace" v="n:8014340958386753739" />
      </node>
    </node>
    <node concept="3clFb_" id="hq" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:8014340958386753739" />
      <node concept="3cqZAl" id="h$" role="3clF45">
        <uo k="s:originTrace" v="n:8014340958386753739" />
      </node>
      <node concept="37vLTG" id="h_" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="conceptMethodDeclaration" />
        <uo k="s:originTrace" v="n:8014340958386753739" />
        <node concept="3Tqbb2" id="hE" role="1tU5fm">
          <uo k="s:originTrace" v="n:8014340958386753739" />
        </node>
      </node>
      <node concept="37vLTG" id="hA" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:8014340958386753739" />
        <node concept="3uibUv" id="hF" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:8014340958386753739" />
        </node>
      </node>
      <node concept="37vLTG" id="hB" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:8014340958386753739" />
        <node concept="3uibUv" id="hG" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:8014340958386753739" />
        </node>
      </node>
      <node concept="3clFbS" id="hC" role="3clF47">
        <uo k="s:originTrace" v="n:8014340958386753740" />
        <node concept="3clFbJ" id="hH" role="3cqZAp">
          <uo k="s:originTrace" v="n:8014340958386753741" />
          <node concept="1Wc70l" id="hI" role="3clFbw">
            <uo k="s:originTrace" v="n:8014340958386753742" />
            <node concept="3fqX7Q" id="hK" role="3uHU7w">
              <uo k="s:originTrace" v="n:7197776995430432193" />
              <node concept="2OqwBi" id="hM" role="3fr31v">
                <uo k="s:originTrace" v="n:7197776995430432195" />
                <node concept="37vLTw" id="hN" role="2Oq$k0">
                  <ref role="3cqZAo" node="h_" resolve="conceptMethodDeclaration" />
                  <uo k="s:originTrace" v="n:7197776995430432196" />
                </node>
                <node concept="3zqWPK" id="hO" role="2OqNvi">
                  <ref role="37wK5l" to="csvn:6WSEafdhbZX" resolve="isVirtual" />
                  <uo k="s:originTrace" v="n:8085146484218860186" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="hL" role="3uHU7B">
              <uo k="s:originTrace" v="n:8014340958386753743" />
              <node concept="3zqWPK" id="hP" role="2OqNvi">
                <ref role="37wK5l" to="tpek:hWjv7RO" resolve="isAbstract" />
                <uo k="s:originTrace" v="n:8085146484218860188" />
              </node>
              <node concept="37vLTw" id="hQ" role="2Oq$k0">
                <ref role="3cqZAo" node="h_" resolve="conceptMethodDeclaration" />
                <uo k="s:originTrace" v="n:8014340958386753744" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="hJ" role="3clFbx">
            <uo k="s:originTrace" v="n:8014340958386753749" />
            <node concept="9aQIb" id="hR" role="3cqZAp">
              <uo k="s:originTrace" v="n:8014340958386763037" />
              <node concept="3clFbS" id="hS" role="9aQI4">
                <node concept="3cpWs8" id="hU" role="3cqZAp">
                  <node concept="3cpWsn" id="hX" role="3cpWs9">
                    <property role="TrG5h" value="errorTarget" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3uibUv" id="hY" role="1tU5fm">
                      <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                    </node>
                    <node concept="2ShNRf" id="hZ" role="33vP2m">
                      <node concept="1pGfFk" id="i0" role="2ShVmc">
                        <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="hV" role="3cqZAp">
                  <node concept="3cpWsn" id="i1" role="3cpWs9">
                    <property role="TrG5h" value="_reporter_2309309498" />
                    <node concept="3uibUv" id="i2" role="1tU5fm">
                      <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                    </node>
                    <node concept="2OqwBi" id="i3" role="33vP2m">
                      <node concept="3VmV3z" id="i4" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="i6" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="i5" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportWarning(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportWarning" />
                        <node concept="37vLTw" id="i7" role="37wK5m">
                          <ref role="3cqZAo" node="h_" resolve="conceptMethodDeclaration" />
                          <uo k="s:originTrace" v="n:8014340958386763078" />
                        </node>
                        <node concept="Xl_RD" id="i8" role="37wK5m">
                          <property role="Xl_RC" value="An abstract method ought to be virtual" />
                          <uo k="s:originTrace" v="n:8014340958386753752" />
                        </node>
                        <node concept="Xl_RD" id="i9" role="37wK5m">
                          <property role="Xl_RC" value="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="ia" role="37wK5m">
                          <property role="Xl_RC" value="8014340958386763037" />
                        </node>
                        <node concept="10Nm6u" id="ib" role="37wK5m" />
                        <node concept="37vLTw" id="ic" role="37wK5m">
                          <ref role="3cqZAo" node="hX" resolve="errorTarget" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="hW" role="3cqZAp">
                  <node concept="3clFbS" id="id" role="9aQI4">
                    <node concept="3cpWs8" id="ie" role="3cqZAp">
                      <node concept="3cpWsn" id="ih" role="3cpWs9">
                        <property role="TrG5h" value="intentionProvider" />
                        <node concept="3uibUv" id="ii" role="1tU5fm">
                          <ref role="3uigEE" to="2gg1:~BaseQuickFixProvider" resolve="BaseQuickFixProvider" />
                        </node>
                        <node concept="2ShNRf" id="ij" role="33vP2m">
                          <node concept="1pGfFk" id="ik" role="2ShVmc">
                            <ref role="37wK5l" to="2gg1:~BaseQuickFixProvider.&lt;init&gt;(java.lang.String,java.lang.String,boolean)" resolve="BaseQuickFixProvider" />
                            <node concept="Xl_RD" id="il" role="37wK5m">
                              <property role="Xl_RC" value="jetbrains.mps.lang.behavior.typesystem.MakeAbstractMethodVirtual_QuickFix" />
                            </node>
                            <node concept="Xl_RD" id="im" role="37wK5m">
                              <property role="Xl_RC" value="8014340958386796056" />
                            </node>
                            <node concept="3clFbT" id="in" role="37wK5m">
                              <property role="3clFbU" value="true" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="if" role="3cqZAp">
                      <node concept="2OqwBi" id="io" role="3clFbG">
                        <node concept="37vLTw" id="ip" role="2Oq$k0">
                          <ref role="3cqZAo" node="ih" resolve="intentionProvider" />
                        </node>
                        <node concept="liA8E" id="iq" role="2OqNvi">
                          <ref role="37wK5l" to="2gg1:~BaseQuickFixProvider.putArgument(java.lang.String,java.lang.Object)" resolve="putArgument" />
                          <node concept="Xl_RD" id="ir" role="37wK5m">
                            <property role="Xl_RC" value="conceptMethod" />
                          </node>
                          <node concept="37vLTw" id="is" role="37wK5m">
                            <ref role="3cqZAo" node="h_" resolve="conceptMethodDeclaration" />
                            <uo k="s:originTrace" v="n:8014340958386796492" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="ig" role="3cqZAp">
                      <node concept="2OqwBi" id="it" role="3clFbG">
                        <node concept="37vLTw" id="iu" role="2Oq$k0">
                          <ref role="3cqZAo" node="i1" resolve="_reporter_2309309498" />
                        </node>
                        <node concept="liA8E" id="iv" role="2OqNvi">
                          <ref role="37wK5l" to="2gg1:~IErrorReporter.addIntentionProvider(jetbrains.mps.errors.QuickFixProvider)" resolve="addIntentionProvider" />
                          <node concept="37vLTw" id="iw" role="37wK5m">
                            <ref role="3cqZAo" node="ih" resolve="intentionProvider" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="6wLe0" id="hT" role="lGtFl">
                <property role="6wLej" value="8014340958386763037" />
                <property role="6wLeW" value="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="hD" role="1B3o_S">
        <uo k="s:originTrace" v="n:8014340958386753739" />
      </node>
    </node>
    <node concept="3clFb_" id="hr" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:8014340958386753739" />
      <node concept="3bZ5Sz" id="ix" role="3clF45">
        <uo k="s:originTrace" v="n:8014340958386753739" />
      </node>
      <node concept="3clFbS" id="iy" role="3clF47">
        <uo k="s:originTrace" v="n:8014340958386753739" />
        <node concept="3cpWs6" id="i$" role="3cqZAp">
          <uo k="s:originTrace" v="n:8014340958386753739" />
          <node concept="35c_gC" id="i_" role="3cqZAk">
            <ref role="35c_gD" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
            <uo k="s:originTrace" v="n:8014340958386753739" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="iz" role="1B3o_S">
        <uo k="s:originTrace" v="n:8014340958386753739" />
      </node>
    </node>
    <node concept="3clFb_" id="hs" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:8014340958386753739" />
      <node concept="37vLTG" id="iA" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:8014340958386753739" />
        <node concept="3Tqbb2" id="iE" role="1tU5fm">
          <uo k="s:originTrace" v="n:8014340958386753739" />
        </node>
      </node>
      <node concept="3clFbS" id="iB" role="3clF47">
        <uo k="s:originTrace" v="n:8014340958386753739" />
        <node concept="9aQIb" id="iF" role="3cqZAp">
          <uo k="s:originTrace" v="n:8014340958386753739" />
          <node concept="3clFbS" id="iG" role="9aQI4">
            <uo k="s:originTrace" v="n:8014340958386753739" />
            <node concept="3cpWs6" id="iH" role="3cqZAp">
              <uo k="s:originTrace" v="n:8014340958386753739" />
              <node concept="2ShNRf" id="iI" role="3cqZAk">
                <uo k="s:originTrace" v="n:8014340958386753739" />
                <node concept="1pGfFk" id="iJ" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:8014340958386753739" />
                  <node concept="2OqwBi" id="iK" role="37wK5m">
                    <uo k="s:originTrace" v="n:8014340958386753739" />
                    <node concept="2OqwBi" id="iM" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:8014340958386753739" />
                      <node concept="liA8E" id="iO" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:8014340958386753739" />
                      </node>
                      <node concept="2JrnkZ" id="iP" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:8014340958386753739" />
                        <node concept="37vLTw" id="iQ" role="2JrQYb">
                          <ref role="3cqZAo" node="iA" resolve="argument" />
                          <uo k="s:originTrace" v="n:8014340958386753739" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="iN" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:8014340958386753739" />
                      <node concept="1rXfSq" id="iR" role="37wK5m">
                        <ref role="37wK5l" node="hr" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:8014340958386753739" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="iL" role="37wK5m">
                    <uo k="s:originTrace" v="n:8014340958386753739" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="iC" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:8014340958386753739" />
      </node>
      <node concept="3Tm1VV" id="iD" role="1B3o_S">
        <uo k="s:originTrace" v="n:8014340958386753739" />
      </node>
    </node>
    <node concept="3clFb_" id="ht" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:8014340958386753739" />
      <node concept="3clFbS" id="iS" role="3clF47">
        <uo k="s:originTrace" v="n:8014340958386753739" />
        <node concept="3cpWs6" id="iV" role="3cqZAp">
          <uo k="s:originTrace" v="n:8014340958386753739" />
          <node concept="3clFbT" id="iW" role="3cqZAk">
            <uo k="s:originTrace" v="n:8014340958386753739" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="iT" role="3clF45">
        <uo k="s:originTrace" v="n:8014340958386753739" />
      </node>
      <node concept="3Tm1VV" id="iU" role="1B3o_S">
        <uo k="s:originTrace" v="n:8014340958386753739" />
      </node>
    </node>
    <node concept="3uibUv" id="hu" role="EKbjA">
      <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:8014340958386753739" />
    </node>
    <node concept="3uibUv" id="hv" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractNonTypesystemRule_Runtime" resolve="AbstractNonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:8014340958386753739" />
    </node>
    <node concept="3Tm1VV" id="hw" role="1B3o_S">
      <uo k="s:originTrace" v="n:8014340958386753739" />
    </node>
  </node>
  <node concept="312cEu" id="iX">
    <property role="TrG5h" value="check_ConceptBehaviorForNotImplementedMethods_NonTypesystemRule" />
    <uo k="s:originTrace" v="n:1198233312425" />
    <node concept="3clFbW" id="iY" role="jymVt">
      <uo k="s:originTrace" v="n:1198233312425" />
      <node concept="3clFbS" id="j6" role="3clF47">
        <uo k="s:originTrace" v="n:1198233312425" />
      </node>
      <node concept="3Tm1VV" id="j7" role="1B3o_S">
        <uo k="s:originTrace" v="n:1198233312425" />
      </node>
      <node concept="3cqZAl" id="j8" role="3clF45">
        <uo k="s:originTrace" v="n:1198233312425" />
      </node>
    </node>
    <node concept="3clFb_" id="iZ" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:1198233312425" />
      <node concept="3cqZAl" id="j9" role="3clF45">
        <uo k="s:originTrace" v="n:1198233312425" />
      </node>
      <node concept="37vLTG" id="ja" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="nodeToCheck" />
        <uo k="s:originTrace" v="n:1198233312425" />
        <node concept="3Tqbb2" id="jf" role="1tU5fm">
          <uo k="s:originTrace" v="n:1198233312425" />
        </node>
      </node>
      <node concept="37vLTG" id="jb" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:1198233312425" />
        <node concept="3uibUv" id="jg" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:1198233312425" />
        </node>
      </node>
      <node concept="37vLTG" id="jc" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:1198233312425" />
        <node concept="3uibUv" id="jh" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:1198233312425" />
        </node>
      </node>
      <node concept="3clFbS" id="jd" role="3clF47">
        <uo k="s:originTrace" v="n:1198233312426" />
        <node concept="3clFbJ" id="ji" role="3cqZAp">
          <uo k="s:originTrace" v="n:1198949711266" />
          <node concept="2OqwBi" id="jo" role="3clFbw">
            <uo k="s:originTrace" v="n:2886182022232070199" />
            <node concept="3TrcHB" id="jq" role="2OqNvi">
              <ref role="3TsBF5" to="tpce:40UcGlRb7V2" resolve="abstract" />
              <uo k="s:originTrace" v="n:2886182022232070200" />
            </node>
            <node concept="2OqwBi" id="jr" role="2Oq$k0">
              <uo k="s:originTrace" v="n:2886182022232070201" />
              <node concept="37vLTw" id="js" role="2Oq$k0">
                <ref role="3cqZAo" node="ja" resolve="nodeToCheck" />
                <uo k="s:originTrace" v="n:2886182022232070202" />
              </node>
              <node concept="3TrEf2" id="jt" role="2OqNvi">
                <ref role="3Tt5mk" to="1i04:hP3h7Gv" resolve="concept" />
                <uo k="s:originTrace" v="n:2886182022232070203" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="jp" role="3clFbx">
            <uo k="s:originTrace" v="n:1198949711267" />
            <node concept="3cpWs6" id="ju" role="3cqZAp">
              <uo k="s:originTrace" v="n:1198949721467" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="jj" role="3cqZAp">
          <uo k="s:originTrace" v="n:1198949731391" />
          <node concept="3clFbS" id="jv" role="3clFbx">
            <uo k="s:originTrace" v="n:1198949731392" />
            <node concept="3cpWs6" id="jx" role="3cqZAp">
              <uo k="s:originTrace" v="n:1198949742156" />
            </node>
          </node>
          <node concept="2OqwBi" id="jw" role="3clFbw">
            <uo k="s:originTrace" v="n:1204227922023" />
            <node concept="2OqwBi" id="jy" role="2Oq$k0">
              <uo k="s:originTrace" v="n:1204227934322" />
              <node concept="37vLTw" id="j$" role="2Oq$k0">
                <ref role="3cqZAo" node="ja" resolve="nodeToCheck" />
                <uo k="s:originTrace" v="n:1198949732395" />
              </node>
              <node concept="3TrEf2" id="j_" role="2OqNvi">
                <ref role="3Tt5mk" to="1i04:hP3h7Gv" resolve="concept" />
                <uo k="s:originTrace" v="n:1198949734711" />
              </node>
            </node>
            <node concept="1mIQ4w" id="jz" role="2OqNvi">
              <uo k="s:originTrace" v="n:1198949737387" />
              <node concept="chp4Y" id="jA" role="cj9EA">
                <ref role="cht4Q" to="tpce:h0PlHMJ" resolve="InterfaceConceptDeclaration" />
                <uo k="s:originTrace" v="n:1198949740827" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="jk" role="3cqZAp">
          <uo k="s:originTrace" v="n:1198233400249" />
          <node concept="3cpWsn" id="jB" role="3cpWs9">
            <property role="TrG5h" value="methodDeclarations" />
            <uo k="s:originTrace" v="n:1198233400250" />
            <node concept="2I9FWS" id="jC" role="1tU5fm">
              <ref role="2I9WkF" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
              <uo k="s:originTrace" v="n:1198233400251" />
            </node>
            <node concept="2OqwBi" id="jD" role="33vP2m">
              <uo k="s:originTrace" v="n:1204227930404" />
              <node concept="2OqwBi" id="jE" role="2Oq$k0">
                <uo k="s:originTrace" v="n:1204227878812" />
                <node concept="37vLTw" id="jG" role="2Oq$k0">
                  <ref role="3cqZAo" node="ja" resolve="nodeToCheck" />
                  <uo k="s:originTrace" v="n:1198233337915" />
                </node>
                <node concept="3TrEf2" id="jH" role="2OqNvi">
                  <ref role="3Tt5mk" to="1i04:hP3h7Gv" resolve="concept" />
                  <uo k="s:originTrace" v="n:1198233339529" />
                </node>
              </node>
              <node concept="3zqWPK" id="jF" role="2OqNvi">
                <ref role="37wK5l" to="tpcn:hEwILIz" resolve="getNotImplementedConceptMethods" />
                <uo k="s:originTrace" v="n:8085146484218860182" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="jl" role="3cqZAp">
          <uo k="s:originTrace" v="n:1198233420097" />
          <node concept="3clFbS" id="jI" role="3clFbx">
            <uo k="s:originTrace" v="n:1198233420098" />
            <node concept="3cpWs8" id="jK" role="3cqZAp">
              <uo k="s:originTrace" v="n:1198950333581" />
              <node concept="3cpWsn" id="jN" role="3cpWs9">
                <property role="TrG5h" value="notImplementedMethods" />
                <uo k="s:originTrace" v="n:1198950333582" />
                <node concept="10P_77" id="jO" role="1tU5fm">
                  <uo k="s:originTrace" v="n:1198950333583" />
                </node>
                <node concept="3clFbT" id="jP" role="33vP2m">
                  <property role="3clFbU" value="false" />
                  <uo k="s:originTrace" v="n:1198950342226" />
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="jL" role="3cqZAp">
              <uo k="s:originTrace" v="n:1198950315626" />
              <node concept="37vLTw" id="jQ" role="1DdaDG">
                <ref role="3cqZAo" node="jB" resolve="methodDeclarations" />
                <uo k="s:originTrace" v="n:4265636116363091512" />
              </node>
              <node concept="3cpWsn" id="jR" role="1Duv9x">
                <property role="TrG5h" value="cm" />
                <uo k="s:originTrace" v="n:1198950315628" />
                <node concept="3Tqbb2" id="jT" role="1tU5fm">
                  <ref role="ehGHo" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
                  <uo k="s:originTrace" v="n:1198950317615" />
                </node>
              </node>
              <node concept="3clFbS" id="jS" role="2LFqv$">
                <uo k="s:originTrace" v="n:1198950315630" />
                <node concept="3clFbJ" id="jU" role="3cqZAp">
                  <uo k="s:originTrace" v="n:1198950344399" />
                  <node concept="3clFbS" id="jV" role="3clFbx">
                    <uo k="s:originTrace" v="n:1198950344401" />
                    <node concept="3clFbF" id="jX" role="3cqZAp">
                      <uo k="s:originTrace" v="n:1198950372215" />
                      <node concept="37vLTI" id="jY" role="3clFbG">
                        <uo k="s:originTrace" v="n:1198950372998" />
                        <node concept="3clFbT" id="jZ" role="37vLTx">
                          <property role="3clFbU" value="true" />
                          <uo k="s:originTrace" v="n:1198950373939" />
                        </node>
                        <node concept="37vLTw" id="k0" role="37vLTJ">
                          <ref role="3cqZAo" node="jN" resolve="notImplementedMethods" />
                          <uo k="s:originTrace" v="n:4265636116363094370" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3fqX7Q" id="jW" role="3clFbw">
                    <uo k="s:originTrace" v="n:1198950353251" />
                    <node concept="2OqwBi" id="k1" role="3fr31v">
                      <uo k="s:originTrace" v="n:1208198529461" />
                      <node concept="2OqwBi" id="k2" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:1204227941547" />
                        <node concept="37vLTw" id="k4" role="2Oq$k0">
                          <ref role="3cqZAo" node="ja" resolve="nodeToCheck" />
                          <uo k="s:originTrace" v="n:1198950359815" />
                        </node>
                        <node concept="3Tsc0h" id="k5" role="2OqNvi">
                          <ref role="3TtcxE" to="1i04:hP3h7G_" resolve="method" />
                          <uo k="s:originTrace" v="n:1198950363007" />
                        </node>
                      </node>
                      <node concept="3JPx81" id="k3" role="2OqNvi">
                        <uo k="s:originTrace" v="n:1198950367931" />
                        <node concept="37vLTw" id="k6" role="25WWJ7">
                          <ref role="3cqZAo" node="jR" resolve="cm" />
                          <uo k="s:originTrace" v="n:4265636116363093058" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="jM" role="3cqZAp">
              <uo k="s:originTrace" v="n:1198950376425" />
              <node concept="3clFbS" id="k7" role="3clFbx">
                <uo k="s:originTrace" v="n:1198950376426" />
                <node concept="3cpWs8" id="k9" role="3cqZAp">
                  <uo k="s:originTrace" v="n:66987406575605189" />
                  <node concept="3cpWsn" id="kb" role="3cpWs9">
                    <property role="TrG5h" value="msg" />
                    <uo k="s:originTrace" v="n:66987406575605190" />
                    <node concept="17QB3L" id="kc" role="1tU5fm">
                      <uo k="s:originTrace" v="n:66987406575605177" />
                    </node>
                    <node concept="3cpWs3" id="kd" role="33vP2m">
                      <uo k="s:originTrace" v="n:66987406575605193" />
                      <node concept="3cpWs3" id="ke" role="3uHU7B">
                        <uo k="s:originTrace" v="n:66987406575605194" />
                        <node concept="Xl_RD" id="kg" role="3uHU7B">
                          <property role="Xl_RC" value="Concept " />
                          <uo k="s:originTrace" v="n:66987406575605195" />
                        </node>
                        <node concept="2OqwBi" id="kh" role="3uHU7w">
                          <uo k="s:originTrace" v="n:66987406575605196" />
                          <node concept="2OqwBi" id="ki" role="2Oq$k0">
                            <uo k="s:originTrace" v="n:66987406575605197" />
                            <node concept="37vLTw" id="kk" role="2Oq$k0">
                              <ref role="3cqZAo" node="ja" resolve="nodeToCheck" />
                              <uo k="s:originTrace" v="n:66987406575605198" />
                            </node>
                            <node concept="3TrEf2" id="kl" role="2OqNvi">
                              <ref role="3Tt5mk" to="1i04:hP3h7Gv" resolve="concept" />
                              <uo k="s:originTrace" v="n:66987406575605199" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="kj" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            <uo k="s:originTrace" v="n:66987406575605200" />
                          </node>
                        </node>
                      </node>
                      <node concept="Xl_RD" id="kf" role="3uHU7w">
                        <property role="Xl_RC" value=" does not implement some abstract methods" />
                        <uo k="s:originTrace" v="n:66987406575605201" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="ka" role="3cqZAp">
                  <uo k="s:originTrace" v="n:1198950378289" />
                  <node concept="3clFbS" id="km" role="9aQI4">
                    <node concept="3cpWs8" id="ko" role="3cqZAp">
                      <node concept="3cpWsn" id="kq" role="3cpWs9">
                        <property role="TrG5h" value="errorTarget" />
                        <property role="3TUv4t" value="true" />
                        <node concept="3uibUv" id="kr" role="1tU5fm">
                          <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                        </node>
                        <node concept="2ShNRf" id="ks" role="33vP2m">
                          <node concept="1pGfFk" id="kt" role="2ShVmc">
                            <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="kp" role="3cqZAp">
                      <node concept="3cpWsn" id="ku" role="3cpWs9">
                        <property role="TrG5h" value="_reporter_2309309498" />
                        <node concept="3uibUv" id="kv" role="1tU5fm">
                          <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                        </node>
                        <node concept="2OqwBi" id="kw" role="33vP2m">
                          <node concept="3VmV3z" id="kx" role="2Oq$k0">
                            <property role="3VnrPo" value="typeCheckingContext" />
                            <node concept="3uibUv" id="kz" role="3Vn4Tt">
                              <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                            </node>
                          </node>
                          <node concept="liA8E" id="ky" role="2OqNvi">
                            <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                            <node concept="37vLTw" id="k$" role="37wK5m">
                              <ref role="3cqZAo" node="ja" resolve="nodeToCheck" />
                              <uo k="s:originTrace" v="n:1198950378301" />
                            </node>
                            <node concept="37vLTw" id="k_" role="37wK5m">
                              <ref role="3cqZAo" node="kb" resolve="msg" />
                              <uo k="s:originTrace" v="n:66987406575605202" />
                            </node>
                            <node concept="Xl_RD" id="kA" role="37wK5m">
                              <property role="Xl_RC" value="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
                            </node>
                            <node concept="Xl_RD" id="kB" role="37wK5m">
                              <property role="Xl_RC" value="1198950378289" />
                            </node>
                            <node concept="10Nm6u" id="kC" role="37wK5m" />
                            <node concept="37vLTw" id="kD" role="37wK5m">
                              <ref role="3cqZAo" node="kq" resolve="errorTarget" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="6wLe0" id="kn" role="lGtFl">
                    <property role="6wLej" value="1198950378289" />
                    <property role="6wLeW" value="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="k8" role="3clFbw">
                <ref role="3cqZAo" node="jN" resolve="notImplementedMethods" />
                <uo k="s:originTrace" v="n:4265636116363074893" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="jJ" role="3clFbw">
            <uo k="s:originTrace" v="n:1198233427480" />
            <node concept="2OqwBi" id="kE" role="3fr31v">
              <uo k="s:originTrace" v="n:1208198529250" />
              <node concept="37vLTw" id="kF" role="2Oq$k0">
                <ref role="3cqZAo" node="jB" resolve="methodDeclarations" />
                <uo k="s:originTrace" v="n:4265636116363112137" />
              </node>
              <node concept="1v1jN8" id="kG" role="2OqNvi">
                <uo k="s:originTrace" v="n:1198233427483" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="jm" role="3cqZAp">
          <uo k="s:originTrace" v="n:1101389554475427674" />
        </node>
        <node concept="1DcWWT" id="jn" role="3cqZAp">
          <uo k="s:originTrace" v="n:1198949961408" />
          <node concept="3clFbS" id="kH" role="2LFqv$">
            <uo k="s:originTrace" v="n:1198949961409" />
            <node concept="3clFbJ" id="kK" role="3cqZAp">
              <uo k="s:originTrace" v="n:1198949978063" />
              <node concept="2OqwBi" id="kL" role="3clFbw">
                <uo k="s:originTrace" v="n:7408744475227572725" />
                <node concept="3zqWPK" id="kN" role="2OqNvi">
                  <ref role="37wK5l" to="tpek:28P2dHxCoRl" resolve="isAnAbstractMethod" />
                  <uo k="s:originTrace" v="n:8085146484218860184" />
                </node>
                <node concept="37vLTw" id="kO" role="2Oq$k0">
                  <ref role="3cqZAo" node="kJ" resolve="cmd" />
                  <uo k="s:originTrace" v="n:4265636116363085826" />
                </node>
              </node>
              <node concept="3clFbS" id="kM" role="3clFbx">
                <uo k="s:originTrace" v="n:1198949978064" />
                <node concept="9aQIb" id="kP" role="3cqZAp">
                  <uo k="s:originTrace" v="n:1198949983025" />
                  <node concept="3clFbS" id="kQ" role="9aQI4">
                    <node concept="3cpWs8" id="kS" role="3cqZAp">
                      <node concept="3cpWsn" id="kW" role="3cpWs9">
                        <property role="TrG5h" value="errorTarget" />
                        <property role="3TUv4t" value="true" />
                        <node concept="3uibUv" id="kX" role="1tU5fm">
                          <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                        </node>
                        <node concept="2ShNRf" id="kY" role="33vP2m">
                          <node concept="1pGfFk" id="kZ" role="2ShVmc">
                            <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="kT" role="3cqZAp">
                      <node concept="3cpWsn" id="l0" role="3cpWs9">
                        <property role="TrG5h" value="_reporter_2309309498" />
                        <node concept="3uibUv" id="l1" role="1tU5fm">
                          <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                        </node>
                        <node concept="2OqwBi" id="l2" role="33vP2m">
                          <node concept="3VmV3z" id="l3" role="2Oq$k0">
                            <property role="3VnrPo" value="typeCheckingContext" />
                            <node concept="3uibUv" id="l5" role="3Vn4Tt">
                              <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                            </node>
                          </node>
                          <node concept="liA8E" id="l4" role="2OqNvi">
                            <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                            <node concept="37vLTw" id="l6" role="37wK5m">
                              <ref role="3cqZAo" node="kJ" resolve="cmd" />
                              <uo k="s:originTrace" v="n:4265636116363115489" />
                            </node>
                            <node concept="Xl_RD" id="l7" role="37wK5m">
                              <property role="Xl_RC" value="Abstract method in non-abstract concept" />
                              <uo k="s:originTrace" v="n:8014340958386922933" />
                            </node>
                            <node concept="Xl_RD" id="l8" role="37wK5m">
                              <property role="Xl_RC" value="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
                            </node>
                            <node concept="Xl_RD" id="l9" role="37wK5m">
                              <property role="Xl_RC" value="1198949983025" />
                            </node>
                            <node concept="10Nm6u" id="la" role="37wK5m" />
                            <node concept="37vLTw" id="lb" role="37wK5m">
                              <ref role="3cqZAo" node="kW" resolve="errorTarget" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="9aQIb" id="kU" role="3cqZAp">
                      <node concept="3clFbS" id="lc" role="9aQI4">
                        <node concept="3cpWs8" id="ld" role="3cqZAp">
                          <node concept="3cpWsn" id="lg" role="3cpWs9">
                            <property role="TrG5h" value="intentionProvider" />
                            <node concept="3uibUv" id="lh" role="1tU5fm">
                              <ref role="3uigEE" to="2gg1:~BaseQuickFixProvider" resolve="BaseQuickFixProvider" />
                            </node>
                            <node concept="2ShNRf" id="li" role="33vP2m">
                              <node concept="1pGfFk" id="lj" role="2ShVmc">
                                <ref role="37wK5l" to="2gg1:~BaseQuickFixProvider.&lt;init&gt;(java.lang.String,java.lang.String,boolean)" resolve="BaseQuickFixProvider" />
                                <node concept="Xl_RD" id="lk" role="37wK5m">
                                  <property role="Xl_RC" value="jetbrains.mps.lang.behavior.typesystem.MakeConceptAbstract_QuickFix" />
                                </node>
                                <node concept="Xl_RD" id="ll" role="37wK5m">
                                  <property role="Xl_RC" value="8014340958387190506" />
                                </node>
                                <node concept="3clFbT" id="lm" role="37wK5m" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="le" role="3cqZAp">
                          <node concept="2OqwBi" id="ln" role="3clFbG">
                            <node concept="37vLTw" id="lo" role="2Oq$k0">
                              <ref role="3cqZAo" node="lg" resolve="intentionProvider" />
                            </node>
                            <node concept="liA8E" id="lp" role="2OqNvi">
                              <ref role="37wK5l" to="2gg1:~BaseQuickFixProvider.putArgument(java.lang.String,java.lang.Object)" resolve="putArgument" />
                              <node concept="Xl_RD" id="lq" role="37wK5m">
                                <property role="Xl_RC" value="conceptBehavior" />
                              </node>
                              <node concept="37vLTw" id="lr" role="37wK5m">
                                <ref role="3cqZAo" node="ja" resolve="nodeToCheck" />
                                <uo k="s:originTrace" v="n:8014340958387190622" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="lf" role="3cqZAp">
                          <node concept="2OqwBi" id="ls" role="3clFbG">
                            <node concept="37vLTw" id="lt" role="2Oq$k0">
                              <ref role="3cqZAo" node="l0" resolve="_reporter_2309309498" />
                            </node>
                            <node concept="liA8E" id="lu" role="2OqNvi">
                              <ref role="37wK5l" to="2gg1:~IErrorReporter.addIntentionProvider(jetbrains.mps.errors.QuickFixProvider)" resolve="addIntentionProvider" />
                              <node concept="37vLTw" id="lv" role="37wK5m">
                                <ref role="3cqZAo" node="lg" resolve="intentionProvider" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="9aQIb" id="kV" role="3cqZAp">
                      <node concept="3clFbS" id="lw" role="9aQI4">
                        <node concept="3cpWs8" id="lx" role="3cqZAp">
                          <node concept="3cpWsn" id="l$" role="3cpWs9">
                            <property role="TrG5h" value="intentionProvider" />
                            <node concept="3uibUv" id="l_" role="1tU5fm">
                              <ref role="3uigEE" to="2gg1:~BaseQuickFixProvider" resolve="BaseQuickFixProvider" />
                            </node>
                            <node concept="2ShNRf" id="lA" role="33vP2m">
                              <node concept="1pGfFk" id="lB" role="2ShVmc">
                                <ref role="37wK5l" to="2gg1:~BaseQuickFixProvider.&lt;init&gt;(java.lang.String,java.lang.String,boolean)" resolve="BaseQuickFixProvider" />
                                <node concept="Xl_RD" id="lC" role="37wK5m">
                                  <property role="Xl_RC" value="jetbrains.mps.lang.behavior.typesystem.RemoveAbstractFromTheMethod_add_method_body_description_QuickFix" />
                                </node>
                                <node concept="Xl_RD" id="lD" role="37wK5m">
                                  <property role="Xl_RC" value="8014340958387190740" />
                                </node>
                                <node concept="3clFbT" id="lE" role="37wK5m" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="ly" role="3cqZAp">
                          <node concept="2OqwBi" id="lF" role="3clFbG">
                            <node concept="37vLTw" id="lG" role="2Oq$k0">
                              <ref role="3cqZAo" node="l$" resolve="intentionProvider" />
                            </node>
                            <node concept="liA8E" id="lH" role="2OqNvi">
                              <ref role="37wK5l" to="2gg1:~BaseQuickFixProvider.putArgument(java.lang.String,java.lang.Object)" resolve="putArgument" />
                              <node concept="Xl_RD" id="lI" role="37wK5m">
                                <property role="Xl_RC" value="conceptMethod" />
                              </node>
                              <node concept="37vLTw" id="lJ" role="37wK5m">
                                <ref role="3cqZAo" node="kJ" resolve="cmd" />
                                <uo k="s:originTrace" v="n:8014340958387965261" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="lz" role="3cqZAp">
                          <node concept="2OqwBi" id="lK" role="3clFbG">
                            <node concept="37vLTw" id="lL" role="2Oq$k0">
                              <ref role="3cqZAo" node="l0" resolve="_reporter_2309309498" />
                            </node>
                            <node concept="liA8E" id="lM" role="2OqNvi">
                              <ref role="37wK5l" to="2gg1:~IErrorReporter.addIntentionProvider(jetbrains.mps.errors.QuickFixProvider)" resolve="addIntentionProvider" />
                              <node concept="37vLTw" id="lN" role="37wK5m">
                                <ref role="3cqZAo" node="l$" resolve="intentionProvider" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="6wLe0" id="kR" role="lGtFl">
                    <property role="6wLej" value="1198949983025" />
                    <property role="6wLeW" value="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="kI" role="1DdaDG">
            <uo k="s:originTrace" v="n:1204227880797" />
            <node concept="37vLTw" id="lO" role="2Oq$k0">
              <ref role="3cqZAo" node="ja" resolve="nodeToCheck" />
              <uo k="s:originTrace" v="n:1198949971837" />
            </node>
            <node concept="3Tsc0h" id="lP" role="2OqNvi">
              <ref role="3TtcxE" to="1i04:hP3h7G_" resolve="method" />
              <uo k="s:originTrace" v="n:1198949976609" />
            </node>
          </node>
          <node concept="3cpWsn" id="kJ" role="1Duv9x">
            <property role="TrG5h" value="cmd" />
            <uo k="s:originTrace" v="n:1198949961412" />
            <node concept="3Tqbb2" id="lQ" role="1tU5fm">
              <ref role="ehGHo" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
              <uo k="s:originTrace" v="n:1198949965430" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="je" role="1B3o_S">
        <uo k="s:originTrace" v="n:1198233312425" />
      </node>
    </node>
    <node concept="3clFb_" id="j0" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:1198233312425" />
      <node concept="3bZ5Sz" id="lR" role="3clF45">
        <uo k="s:originTrace" v="n:1198233312425" />
      </node>
      <node concept="3clFbS" id="lS" role="3clF47">
        <uo k="s:originTrace" v="n:1198233312425" />
        <node concept="3cpWs6" id="lU" role="3cqZAp">
          <uo k="s:originTrace" v="n:1198233312425" />
          <node concept="35c_gC" id="lV" role="3cqZAk">
            <ref role="35c_gD" to="1i04:hP3h7Gq" resolve="ConceptBehavior" />
            <uo k="s:originTrace" v="n:1198233312425" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="lT" role="1B3o_S">
        <uo k="s:originTrace" v="n:1198233312425" />
      </node>
    </node>
    <node concept="3clFb_" id="j1" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:1198233312425" />
      <node concept="37vLTG" id="lW" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:1198233312425" />
        <node concept="3Tqbb2" id="m0" role="1tU5fm">
          <uo k="s:originTrace" v="n:1198233312425" />
        </node>
      </node>
      <node concept="3clFbS" id="lX" role="3clF47">
        <uo k="s:originTrace" v="n:1198233312425" />
        <node concept="9aQIb" id="m1" role="3cqZAp">
          <uo k="s:originTrace" v="n:1198233312425" />
          <node concept="3clFbS" id="m2" role="9aQI4">
            <uo k="s:originTrace" v="n:1198233312425" />
            <node concept="3cpWs6" id="m3" role="3cqZAp">
              <uo k="s:originTrace" v="n:1198233312425" />
              <node concept="2ShNRf" id="m4" role="3cqZAk">
                <uo k="s:originTrace" v="n:1198233312425" />
                <node concept="1pGfFk" id="m5" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:1198233312425" />
                  <node concept="2OqwBi" id="m6" role="37wK5m">
                    <uo k="s:originTrace" v="n:1198233312425" />
                    <node concept="2OqwBi" id="m8" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:1198233312425" />
                      <node concept="liA8E" id="ma" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:1198233312425" />
                      </node>
                      <node concept="2JrnkZ" id="mb" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:1198233312425" />
                        <node concept="37vLTw" id="mc" role="2JrQYb">
                          <ref role="3cqZAo" node="lW" resolve="argument" />
                          <uo k="s:originTrace" v="n:1198233312425" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="m9" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:1198233312425" />
                      <node concept="1rXfSq" id="md" role="37wK5m">
                        <ref role="37wK5l" node="j0" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:1198233312425" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="m7" role="37wK5m">
                    <uo k="s:originTrace" v="n:1198233312425" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="lY" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:1198233312425" />
      </node>
      <node concept="3Tm1VV" id="lZ" role="1B3o_S">
        <uo k="s:originTrace" v="n:1198233312425" />
      </node>
    </node>
    <node concept="3clFb_" id="j2" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:1198233312425" />
      <node concept="3clFbS" id="me" role="3clF47">
        <uo k="s:originTrace" v="n:1198233312425" />
        <node concept="3cpWs6" id="mh" role="3cqZAp">
          <uo k="s:originTrace" v="n:1198233312425" />
          <node concept="3clFbT" id="mi" role="3cqZAk">
            <uo k="s:originTrace" v="n:1198233312425" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="mf" role="3clF45">
        <uo k="s:originTrace" v="n:1198233312425" />
      </node>
      <node concept="3Tm1VV" id="mg" role="1B3o_S">
        <uo k="s:originTrace" v="n:1198233312425" />
      </node>
    </node>
    <node concept="3uibUv" id="j3" role="EKbjA">
      <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:1198233312425" />
    </node>
    <node concept="3uibUv" id="j4" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractNonTypesystemRule_Runtime" resolve="AbstractNonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:1198233312425" />
    </node>
    <node concept="3Tm1VV" id="j5" role="1B3o_S">
      <uo k="s:originTrace" v="n:1198233312425" />
    </node>
  </node>
  <node concept="312cEu" id="mj">
    <property role="3GE5qa" value="" />
    <property role="TrG5h" value="check_FinalAndAbstractMethod_NonTypesystemRule" />
    <uo k="s:originTrace" v="n:7868761255934363861" />
    <node concept="3clFbW" id="mk" role="jymVt">
      <uo k="s:originTrace" v="n:7868761255934363861" />
      <node concept="3clFbS" id="ms" role="3clF47">
        <uo k="s:originTrace" v="n:7868761255934363861" />
      </node>
      <node concept="3Tm1VV" id="mt" role="1B3o_S">
        <uo k="s:originTrace" v="n:7868761255934363861" />
      </node>
      <node concept="3cqZAl" id="mu" role="3clF45">
        <uo k="s:originTrace" v="n:7868761255934363861" />
      </node>
    </node>
    <node concept="3clFb_" id="ml" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:7868761255934363861" />
      <node concept="3cqZAl" id="mv" role="3clF45">
        <uo k="s:originTrace" v="n:7868761255934363861" />
      </node>
      <node concept="37vLTG" id="mw" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="conceptMethodDeclaration" />
        <uo k="s:originTrace" v="n:7868761255934363861" />
        <node concept="3Tqbb2" id="m_" role="1tU5fm">
          <uo k="s:originTrace" v="n:7868761255934363861" />
        </node>
      </node>
      <node concept="37vLTG" id="mx" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:7868761255934363861" />
        <node concept="3uibUv" id="mA" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:7868761255934363861" />
        </node>
      </node>
      <node concept="37vLTG" id="my" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:7868761255934363861" />
        <node concept="3uibUv" id="mB" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:7868761255934363861" />
        </node>
      </node>
      <node concept="3clFbS" id="mz" role="3clF47">
        <uo k="s:originTrace" v="n:7868761255934363862" />
        <node concept="3clFbJ" id="mC" role="3cqZAp">
          <uo k="s:originTrace" v="n:7868761255934383373" />
          <node concept="1Wc70l" id="mD" role="3clFbw">
            <uo k="s:originTrace" v="n:7868761255934417549" />
            <node concept="2OqwBi" id="mF" role="3uHU7B">
              <uo k="s:originTrace" v="n:7868761255934384493" />
              <node concept="37vLTw" id="mH" role="2Oq$k0">
                <ref role="3cqZAo" node="mw" resolve="conceptMethodDeclaration" />
                <uo k="s:originTrace" v="n:7868761255934384492" />
              </node>
              <node concept="3TrcHB" id="mI" role="2OqNvi">
                <ref role="3TsBF5" to="1i04:hP3i0m2" resolve="isAbstract" />
                <uo k="s:originTrace" v="n:7868761255934570940" />
              </node>
            </node>
            <node concept="2OqwBi" id="mG" role="3uHU7w">
              <uo k="s:originTrace" v="n:7868761255934417553" />
              <node concept="37vLTw" id="mJ" role="2Oq$k0">
                <ref role="3cqZAo" node="mw" resolve="conceptMethodDeclaration" />
                <uo k="s:originTrace" v="n:7868761255934417552" />
              </node>
              <node concept="3TrcHB" id="mK" role="2OqNvi">
                <ref role="3TsBF5" to="tpee:hcDiZZi" resolve="isFinal" />
                <uo k="s:originTrace" v="n:7868761255934490431" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="mE" role="3clFbx">
            <uo k="s:originTrace" v="n:7868761255934383375" />
            <node concept="9aQIb" id="mL" role="3cqZAp">
              <uo k="s:originTrace" v="n:7868761255934417558" />
              <node concept="3clFbS" id="mM" role="9aQI4">
                <node concept="3cpWs8" id="mO" role="3cqZAp">
                  <node concept="3cpWsn" id="mS" role="3cpWs9">
                    <property role="TrG5h" value="errorTarget" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3uibUv" id="mT" role="1tU5fm">
                      <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                    </node>
                    <node concept="2ShNRf" id="mU" role="33vP2m">
                      <uo k="s:originTrace" v="n:963887337804142641" />
                      <node concept="1pGfFk" id="mV" role="2ShVmc">
                        <ref role="37wK5l" to="zavc:~PropertyMessageTarget.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty)" resolve="PropertyMessageTarget" />
                        <uo k="s:originTrace" v="n:963887337804142641" />
                        <node concept="355D3s" id="mW" role="37wK5m">
                          <ref role="355D3t" to="tpck:h0TrEE$" resolve="INamedConcept" />
                          <ref role="355D3u" to="tpck:h0TrG11" resolve="name" />
                          <uo k="s:originTrace" v="n:963887337804142641" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="mP" role="3cqZAp">
                  <node concept="3cpWsn" id="mX" role="3cpWs9">
                    <property role="TrG5h" value="_reporter_2309309498" />
                    <node concept="3uibUv" id="mY" role="1tU5fm">
                      <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                    </node>
                    <node concept="2OqwBi" id="mZ" role="33vP2m">
                      <node concept="3VmV3z" id="n0" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="n2" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="n1" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                        <node concept="37vLTw" id="n3" role="37wK5m">
                          <ref role="3cqZAo" node="mw" resolve="conceptMethodDeclaration" />
                          <uo k="s:originTrace" v="n:7868761255934417562" />
                        </node>
                        <node concept="Xl_RD" id="n4" role="37wK5m">
                          <property role="Xl_RC" value="Illegal combination of modifiers 'abstract' and 'final'" />
                          <uo k="s:originTrace" v="n:7868761255934417561" />
                        </node>
                        <node concept="Xl_RD" id="n5" role="37wK5m">
                          <property role="Xl_RC" value="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="n6" role="37wK5m">
                          <property role="Xl_RC" value="7868761255934417558" />
                        </node>
                        <node concept="10Nm6u" id="n7" role="37wK5m" />
                        <node concept="37vLTw" id="n8" role="37wK5m">
                          <ref role="3cqZAo" node="mS" resolve="errorTarget" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="mQ" role="3cqZAp">
                  <node concept="3clFbS" id="n9" role="9aQI4">
                    <node concept="3cpWs8" id="na" role="3cqZAp">
                      <node concept="3cpWsn" id="nd" role="3cpWs9">
                        <property role="TrG5h" value="intentionProvider" />
                        <node concept="3uibUv" id="ne" role="1tU5fm">
                          <ref role="3uigEE" to="2gg1:~BaseQuickFixProvider" resolve="BaseQuickFixProvider" />
                        </node>
                        <node concept="2ShNRf" id="nf" role="33vP2m">
                          <node concept="1pGfFk" id="ng" role="2ShVmc">
                            <ref role="37wK5l" to="2gg1:~BaseQuickFixProvider.&lt;init&gt;(java.lang.String,java.lang.String,boolean)" resolve="BaseQuickFixProvider" />
                            <node concept="Xl_RD" id="nh" role="37wK5m">
                              <property role="Xl_RC" value="jetbrains.mps.lang.behavior.typesystem.RemoveFinalFromTheMethod_QuickFix" />
                            </node>
                            <node concept="Xl_RD" id="ni" role="37wK5m">
                              <property role="Xl_RC" value="8014340958386555618" />
                            </node>
                            <node concept="3clFbT" id="nj" role="37wK5m" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="nb" role="3cqZAp">
                      <node concept="2OqwBi" id="nk" role="3clFbG">
                        <node concept="37vLTw" id="nl" role="2Oq$k0">
                          <ref role="3cqZAo" node="nd" resolve="intentionProvider" />
                        </node>
                        <node concept="liA8E" id="nm" role="2OqNvi">
                          <ref role="37wK5l" to="2gg1:~BaseQuickFixProvider.putArgument(java.lang.String,java.lang.Object)" resolve="putArgument" />
                          <node concept="Xl_RD" id="nn" role="37wK5m">
                            <property role="Xl_RC" value="conceptMethod" />
                          </node>
                          <node concept="37vLTw" id="no" role="37wK5m">
                            <ref role="3cqZAo" node="mw" resolve="conceptMethodDeclaration" />
                            <uo k="s:originTrace" v="n:8014340958386555989" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="nc" role="3cqZAp">
                      <node concept="2OqwBi" id="np" role="3clFbG">
                        <node concept="37vLTw" id="nq" role="2Oq$k0">
                          <ref role="3cqZAo" node="mX" resolve="_reporter_2309309498" />
                        </node>
                        <node concept="liA8E" id="nr" role="2OqNvi">
                          <ref role="37wK5l" to="2gg1:~IErrorReporter.addIntentionProvider(jetbrains.mps.errors.QuickFixProvider)" resolve="addIntentionProvider" />
                          <node concept="37vLTw" id="ns" role="37wK5m">
                            <ref role="3cqZAo" node="nd" resolve="intentionProvider" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="mR" role="3cqZAp">
                  <node concept="3clFbS" id="nt" role="9aQI4">
                    <node concept="3cpWs8" id="nu" role="3cqZAp">
                      <node concept="3cpWsn" id="nx" role="3cpWs9">
                        <property role="TrG5h" value="intentionProvider" />
                        <node concept="3uibUv" id="ny" role="1tU5fm">
                          <ref role="3uigEE" to="2gg1:~BaseQuickFixProvider" resolve="BaseQuickFixProvider" />
                        </node>
                        <node concept="2ShNRf" id="nz" role="33vP2m">
                          <node concept="1pGfFk" id="n$" role="2ShVmc">
                            <ref role="37wK5l" to="2gg1:~BaseQuickFixProvider.&lt;init&gt;(java.lang.String,java.lang.String,boolean)" resolve="BaseQuickFixProvider" />
                            <node concept="Xl_RD" id="n_" role="37wK5m">
                              <property role="Xl_RC" value="jetbrains.mps.lang.behavior.typesystem.RemoveAbstractFromTheMethod_QuickFix" />
                            </node>
                            <node concept="Xl_RD" id="nA" role="37wK5m">
                              <property role="Xl_RC" value="8014340958386893351" />
                            </node>
                            <node concept="3clFbT" id="nB" role="37wK5m" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="nv" role="3cqZAp">
                      <node concept="2OqwBi" id="nC" role="3clFbG">
                        <node concept="37vLTw" id="nD" role="2Oq$k0">
                          <ref role="3cqZAo" node="nx" resolve="intentionProvider" />
                        </node>
                        <node concept="liA8E" id="nE" role="2OqNvi">
                          <ref role="37wK5l" to="2gg1:~BaseQuickFixProvider.putArgument(java.lang.String,java.lang.Object)" resolve="putArgument" />
                          <node concept="Xl_RD" id="nF" role="37wK5m">
                            <property role="Xl_RC" value="conceptMethod" />
                          </node>
                          <node concept="37vLTw" id="nG" role="37wK5m">
                            <ref role="3cqZAo" node="mw" resolve="conceptMethodDeclaration" />
                            <uo k="s:originTrace" v="n:8014340958386893353" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="nw" role="3cqZAp">
                      <node concept="2OqwBi" id="nH" role="3clFbG">
                        <node concept="37vLTw" id="nI" role="2Oq$k0">
                          <ref role="3cqZAo" node="mX" resolve="_reporter_2309309498" />
                        </node>
                        <node concept="liA8E" id="nJ" role="2OqNvi">
                          <ref role="37wK5l" to="2gg1:~IErrorReporter.addIntentionProvider(jetbrains.mps.errors.QuickFixProvider)" resolve="addIntentionProvider" />
                          <node concept="37vLTw" id="nK" role="37wK5m">
                            <ref role="3cqZAo" node="nx" resolve="intentionProvider" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="6wLe0" id="mN" role="lGtFl">
                <property role="6wLej" value="7868761255934417558" />
                <property role="6wLeW" value="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="m$" role="1B3o_S">
        <uo k="s:originTrace" v="n:7868761255934363861" />
      </node>
    </node>
    <node concept="3clFb_" id="mm" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:7868761255934363861" />
      <node concept="3bZ5Sz" id="nL" role="3clF45">
        <uo k="s:originTrace" v="n:7868761255934363861" />
      </node>
      <node concept="3clFbS" id="nM" role="3clF47">
        <uo k="s:originTrace" v="n:7868761255934363861" />
        <node concept="3cpWs6" id="nO" role="3cqZAp">
          <uo k="s:originTrace" v="n:7868761255934363861" />
          <node concept="35c_gC" id="nP" role="3cqZAk">
            <ref role="35c_gD" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
            <uo k="s:originTrace" v="n:7868761255934363861" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="nN" role="1B3o_S">
        <uo k="s:originTrace" v="n:7868761255934363861" />
      </node>
    </node>
    <node concept="3clFb_" id="mn" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:7868761255934363861" />
      <node concept="37vLTG" id="nQ" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:7868761255934363861" />
        <node concept="3Tqbb2" id="nU" role="1tU5fm">
          <uo k="s:originTrace" v="n:7868761255934363861" />
        </node>
      </node>
      <node concept="3clFbS" id="nR" role="3clF47">
        <uo k="s:originTrace" v="n:7868761255934363861" />
        <node concept="9aQIb" id="nV" role="3cqZAp">
          <uo k="s:originTrace" v="n:7868761255934363861" />
          <node concept="3clFbS" id="nW" role="9aQI4">
            <uo k="s:originTrace" v="n:7868761255934363861" />
            <node concept="3cpWs6" id="nX" role="3cqZAp">
              <uo k="s:originTrace" v="n:7868761255934363861" />
              <node concept="2ShNRf" id="nY" role="3cqZAk">
                <uo k="s:originTrace" v="n:7868761255934363861" />
                <node concept="1pGfFk" id="nZ" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:7868761255934363861" />
                  <node concept="2OqwBi" id="o0" role="37wK5m">
                    <uo k="s:originTrace" v="n:7868761255934363861" />
                    <node concept="2OqwBi" id="o2" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:7868761255934363861" />
                      <node concept="liA8E" id="o4" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:7868761255934363861" />
                      </node>
                      <node concept="2JrnkZ" id="o5" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:7868761255934363861" />
                        <node concept="37vLTw" id="o6" role="2JrQYb">
                          <ref role="3cqZAo" node="nQ" resolve="argument" />
                          <uo k="s:originTrace" v="n:7868761255934363861" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="o3" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:7868761255934363861" />
                      <node concept="1rXfSq" id="o7" role="37wK5m">
                        <ref role="37wK5l" node="mm" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:7868761255934363861" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="o1" role="37wK5m">
                    <uo k="s:originTrace" v="n:7868761255934363861" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="nS" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:7868761255934363861" />
      </node>
      <node concept="3Tm1VV" id="nT" role="1B3o_S">
        <uo k="s:originTrace" v="n:7868761255934363861" />
      </node>
    </node>
    <node concept="3clFb_" id="mo" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:7868761255934363861" />
      <node concept="3clFbS" id="o8" role="3clF47">
        <uo k="s:originTrace" v="n:7868761255934363861" />
        <node concept="3cpWs6" id="ob" role="3cqZAp">
          <uo k="s:originTrace" v="n:7868761255934363861" />
          <node concept="3clFbT" id="oc" role="3cqZAk">
            <uo k="s:originTrace" v="n:7868761255934363861" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="o9" role="3clF45">
        <uo k="s:originTrace" v="n:7868761255934363861" />
      </node>
      <node concept="3Tm1VV" id="oa" role="1B3o_S">
        <uo k="s:originTrace" v="n:7868761255934363861" />
      </node>
    </node>
    <node concept="3uibUv" id="mp" role="EKbjA">
      <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:7868761255934363861" />
    </node>
    <node concept="3uibUv" id="mq" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractNonTypesystemRule_Runtime" resolve="AbstractNonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:7868761255934363861" />
    </node>
    <node concept="3Tm1VV" id="mr" role="1B3o_S">
      <uo k="s:originTrace" v="n:7868761255934363861" />
    </node>
  </node>
  <node concept="312cEu" id="od">
    <property role="3GE5qa" value="" />
    <property role="TrG5h" value="check_FinalMethodIsVirtual_NonTypesystemRule" />
    <uo k="s:originTrace" v="n:8014340958386891756" />
    <node concept="3clFbW" id="oe" role="jymVt">
      <uo k="s:originTrace" v="n:8014340958386891756" />
      <node concept="3clFbS" id="om" role="3clF47">
        <uo k="s:originTrace" v="n:8014340958386891756" />
      </node>
      <node concept="3Tm1VV" id="on" role="1B3o_S">
        <uo k="s:originTrace" v="n:8014340958386891756" />
      </node>
      <node concept="3cqZAl" id="oo" role="3clF45">
        <uo k="s:originTrace" v="n:8014340958386891756" />
      </node>
    </node>
    <node concept="3clFb_" id="of" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:8014340958386891756" />
      <node concept="3cqZAl" id="op" role="3clF45">
        <uo k="s:originTrace" v="n:8014340958386891756" />
      </node>
      <node concept="37vLTG" id="oq" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="conceptMethodDeclaration" />
        <uo k="s:originTrace" v="n:8014340958386891756" />
        <node concept="3Tqbb2" id="ov" role="1tU5fm">
          <uo k="s:originTrace" v="n:8014340958386891756" />
        </node>
      </node>
      <node concept="37vLTG" id="or" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:8014340958386891756" />
        <node concept="3uibUv" id="ow" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:8014340958386891756" />
        </node>
      </node>
      <node concept="37vLTG" id="os" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:8014340958386891756" />
        <node concept="3uibUv" id="ox" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:8014340958386891756" />
        </node>
      </node>
      <node concept="3clFbS" id="ot" role="3clF47">
        <uo k="s:originTrace" v="n:8014340958386891757" />
        <node concept="3clFbJ" id="oy" role="3cqZAp">
          <uo k="s:originTrace" v="n:8014340958386891758" />
          <node concept="1Wc70l" id="oz" role="3clFbw">
            <uo k="s:originTrace" v="n:8014340958386891759" />
            <node concept="2OqwBi" id="o_" role="3uHU7B">
              <uo k="s:originTrace" v="n:8014340958386891760" />
              <node concept="37vLTw" id="oB" role="2Oq$k0">
                <ref role="3cqZAo" node="oq" resolve="conceptMethodDeclaration" />
                <uo k="s:originTrace" v="n:8014340958386891761" />
              </node>
              <node concept="3TrcHB" id="oC" role="2OqNvi">
                <ref role="3TsBF5" to="tpee:hcDiZZi" resolve="isFinal" />
                <uo k="s:originTrace" v="n:8014340958387984568" />
              </node>
            </node>
            <node concept="3fqX7Q" id="oA" role="3uHU7w">
              <uo k="s:originTrace" v="n:8014340958387984877" />
              <node concept="2OqwBi" id="oD" role="3fr31v">
                <uo k="s:originTrace" v="n:8014340958387984879" />
                <node concept="37vLTw" id="oE" role="2Oq$k0">
                  <ref role="3cqZAo" node="oq" resolve="conceptMethodDeclaration" />
                  <uo k="s:originTrace" v="n:8014340958387984880" />
                </node>
                <node concept="3TrcHB" id="oF" role="2OqNvi">
                  <ref role="3TsBF5" to="1i04:hP3i0m0" resolve="isVirtual" />
                  <uo k="s:originTrace" v="n:8014340958387984881" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="o$" role="3clFbx">
            <uo k="s:originTrace" v="n:8014340958386891766" />
            <node concept="9aQIb" id="oG" role="3cqZAp">
              <uo k="s:originTrace" v="n:8014340958386891767" />
              <node concept="3clFbS" id="oH" role="9aQI4">
                <node concept="3cpWs8" id="oJ" role="3cqZAp">
                  <node concept="3cpWsn" id="oM" role="3cpWs9">
                    <property role="TrG5h" value="errorTarget" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3uibUv" id="oN" role="1tU5fm">
                      <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                    </node>
                    <node concept="2ShNRf" id="oO" role="33vP2m">
                      <node concept="1pGfFk" id="oP" role="2ShVmc">
                        <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="oK" role="3cqZAp">
                  <node concept="3cpWsn" id="oQ" role="3cpWs9">
                    <property role="TrG5h" value="_reporter_2309309498" />
                    <node concept="3uibUv" id="oR" role="1tU5fm">
                      <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                    </node>
                    <node concept="2OqwBi" id="oS" role="33vP2m">
                      <node concept="3VmV3z" id="oT" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="oV" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="oU" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportWarning(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportWarning" />
                        <node concept="37vLTw" id="oW" role="37wK5m">
                          <ref role="3cqZAo" node="oq" resolve="conceptMethodDeclaration" />
                          <uo k="s:originTrace" v="n:8014340958386891771" />
                        </node>
                        <node concept="Xl_RD" id="oX" role="37wK5m">
                          <property role="Xl_RC" value="The 'final' modifier does not make sense on the non-virtual method" />
                          <uo k="s:originTrace" v="n:8014340958386891772" />
                        </node>
                        <node concept="Xl_RD" id="oY" role="37wK5m">
                          <property role="Xl_RC" value="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="oZ" role="37wK5m">
                          <property role="Xl_RC" value="8014340958386891767" />
                        </node>
                        <node concept="10Nm6u" id="p0" role="37wK5m" />
                        <node concept="37vLTw" id="p1" role="37wK5m">
                          <ref role="3cqZAo" node="oM" resolve="errorTarget" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="oL" role="3cqZAp">
                  <node concept="3clFbS" id="p2" role="9aQI4">
                    <node concept="3cpWs8" id="p3" role="3cqZAp">
                      <node concept="3cpWsn" id="p6" role="3cpWs9">
                        <property role="TrG5h" value="intentionProvider" />
                        <node concept="3uibUv" id="p7" role="1tU5fm">
                          <ref role="3uigEE" to="2gg1:~BaseQuickFixProvider" resolve="BaseQuickFixProvider" />
                        </node>
                        <node concept="2ShNRf" id="p8" role="33vP2m">
                          <node concept="1pGfFk" id="p9" role="2ShVmc">
                            <ref role="37wK5l" to="2gg1:~BaseQuickFixProvider.&lt;init&gt;(java.lang.String,java.lang.String,boolean)" resolve="BaseQuickFixProvider" />
                            <node concept="Xl_RD" id="pa" role="37wK5m">
                              <property role="Xl_RC" value="jetbrains.mps.lang.behavior.typesystem.RemoveFinalFromTheMethod_QuickFix" />
                            </node>
                            <node concept="Xl_RD" id="pb" role="37wK5m">
                              <property role="Xl_RC" value="8014340958386891768" />
                            </node>
                            <node concept="3clFbT" id="pc" role="37wK5m">
                              <property role="3clFbU" value="true" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="p4" role="3cqZAp">
                      <node concept="2OqwBi" id="pd" role="3clFbG">
                        <node concept="37vLTw" id="pe" role="2Oq$k0">
                          <ref role="3cqZAo" node="p6" resolve="intentionProvider" />
                        </node>
                        <node concept="liA8E" id="pf" role="2OqNvi">
                          <ref role="37wK5l" to="2gg1:~BaseQuickFixProvider.putArgument(java.lang.String,java.lang.Object)" resolve="putArgument" />
                          <node concept="Xl_RD" id="pg" role="37wK5m">
                            <property role="Xl_RC" value="conceptMethod" />
                          </node>
                          <node concept="37vLTw" id="ph" role="37wK5m">
                            <ref role="3cqZAo" node="oq" resolve="conceptMethodDeclaration" />
                            <uo k="s:originTrace" v="n:8014340958386891770" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="p5" role="3cqZAp">
                      <node concept="2OqwBi" id="pi" role="3clFbG">
                        <node concept="37vLTw" id="pj" role="2Oq$k0">
                          <ref role="3cqZAo" node="oQ" resolve="_reporter_2309309498" />
                        </node>
                        <node concept="liA8E" id="pk" role="2OqNvi">
                          <ref role="37wK5l" to="2gg1:~IErrorReporter.addIntentionProvider(jetbrains.mps.errors.QuickFixProvider)" resolve="addIntentionProvider" />
                          <node concept="37vLTw" id="pl" role="37wK5m">
                            <ref role="3cqZAo" node="p6" resolve="intentionProvider" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="6wLe0" id="oI" role="lGtFl">
                <property role="6wLej" value="8014340958386891767" />
                <property role="6wLeW" value="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="ou" role="1B3o_S">
        <uo k="s:originTrace" v="n:8014340958386891756" />
      </node>
    </node>
    <node concept="3clFb_" id="og" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:8014340958386891756" />
      <node concept="3bZ5Sz" id="pm" role="3clF45">
        <uo k="s:originTrace" v="n:8014340958386891756" />
      </node>
      <node concept="3clFbS" id="pn" role="3clF47">
        <uo k="s:originTrace" v="n:8014340958386891756" />
        <node concept="3cpWs6" id="pp" role="3cqZAp">
          <uo k="s:originTrace" v="n:8014340958386891756" />
          <node concept="35c_gC" id="pq" role="3cqZAk">
            <ref role="35c_gD" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
            <uo k="s:originTrace" v="n:8014340958386891756" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="po" role="1B3o_S">
        <uo k="s:originTrace" v="n:8014340958386891756" />
      </node>
    </node>
    <node concept="3clFb_" id="oh" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:8014340958386891756" />
      <node concept="37vLTG" id="pr" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:8014340958386891756" />
        <node concept="3Tqbb2" id="pv" role="1tU5fm">
          <uo k="s:originTrace" v="n:8014340958386891756" />
        </node>
      </node>
      <node concept="3clFbS" id="ps" role="3clF47">
        <uo k="s:originTrace" v="n:8014340958386891756" />
        <node concept="9aQIb" id="pw" role="3cqZAp">
          <uo k="s:originTrace" v="n:8014340958386891756" />
          <node concept="3clFbS" id="px" role="9aQI4">
            <uo k="s:originTrace" v="n:8014340958386891756" />
            <node concept="3cpWs6" id="py" role="3cqZAp">
              <uo k="s:originTrace" v="n:8014340958386891756" />
              <node concept="2ShNRf" id="pz" role="3cqZAk">
                <uo k="s:originTrace" v="n:8014340958386891756" />
                <node concept="1pGfFk" id="p$" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:8014340958386891756" />
                  <node concept="2OqwBi" id="p_" role="37wK5m">
                    <uo k="s:originTrace" v="n:8014340958386891756" />
                    <node concept="2OqwBi" id="pB" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:8014340958386891756" />
                      <node concept="liA8E" id="pD" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:8014340958386891756" />
                      </node>
                      <node concept="2JrnkZ" id="pE" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:8014340958386891756" />
                        <node concept="37vLTw" id="pF" role="2JrQYb">
                          <ref role="3cqZAo" node="pr" resolve="argument" />
                          <uo k="s:originTrace" v="n:8014340958386891756" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="pC" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:8014340958386891756" />
                      <node concept="1rXfSq" id="pG" role="37wK5m">
                        <ref role="37wK5l" node="og" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:8014340958386891756" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="pA" role="37wK5m">
                    <uo k="s:originTrace" v="n:8014340958386891756" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="pt" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:8014340958386891756" />
      </node>
      <node concept="3Tm1VV" id="pu" role="1B3o_S">
        <uo k="s:originTrace" v="n:8014340958386891756" />
      </node>
    </node>
    <node concept="3clFb_" id="oi" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:8014340958386891756" />
      <node concept="3clFbS" id="pH" role="3clF47">
        <uo k="s:originTrace" v="n:8014340958386891756" />
        <node concept="3cpWs6" id="pK" role="3cqZAp">
          <uo k="s:originTrace" v="n:8014340958386891756" />
          <node concept="3clFbT" id="pL" role="3cqZAk">
            <uo k="s:originTrace" v="n:8014340958386891756" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="pI" role="3clF45">
        <uo k="s:originTrace" v="n:8014340958386891756" />
      </node>
      <node concept="3Tm1VV" id="pJ" role="1B3o_S">
        <uo k="s:originTrace" v="n:8014340958386891756" />
      </node>
    </node>
    <node concept="3uibUv" id="oj" role="EKbjA">
      <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:8014340958386891756" />
    </node>
    <node concept="3uibUv" id="ok" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractNonTypesystemRule_Runtime" resolve="AbstractNonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:8014340958386891756" />
    </node>
    <node concept="3Tm1VV" id="ol" role="1B3o_S">
      <uo k="s:originTrace" v="n:8014340958386891756" />
    </node>
  </node>
  <node concept="312cEu" id="pM">
    <property role="3GE5qa" value="" />
    <property role="TrG5h" value="check_MethodIsCorrectlyOverriden_NonTypesystemRule" />
    <uo k="s:originTrace" v="n:1227262734777" />
    <node concept="3clFbW" id="pN" role="jymVt">
      <uo k="s:originTrace" v="n:1227262734777" />
      <node concept="3clFbS" id="pV" role="3clF47">
        <uo k="s:originTrace" v="n:1227262734777" />
      </node>
      <node concept="3Tm1VV" id="pW" role="1B3o_S">
        <uo k="s:originTrace" v="n:1227262734777" />
      </node>
      <node concept="3cqZAl" id="pX" role="3clF45">
        <uo k="s:originTrace" v="n:1227262734777" />
      </node>
    </node>
    <node concept="3clFb_" id="pO" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:1227262734777" />
      <node concept="3cqZAl" id="pY" role="3clF45">
        <uo k="s:originTrace" v="n:1227262734777" />
      </node>
      <node concept="37vLTG" id="pZ" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="method" />
        <uo k="s:originTrace" v="n:1227262734777" />
        <node concept="3Tqbb2" id="q4" role="1tU5fm">
          <uo k="s:originTrace" v="n:1227262734777" />
        </node>
      </node>
      <node concept="37vLTG" id="q0" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:1227262734777" />
        <node concept="3uibUv" id="q5" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:1227262734777" />
        </node>
      </node>
      <node concept="37vLTG" id="q1" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:1227262734777" />
        <node concept="3uibUv" id="q6" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:1227262734777" />
        </node>
      </node>
      <node concept="3clFbS" id="q2" role="3clF47">
        <uo k="s:originTrace" v="n:1227262734778" />
        <node concept="3clFbJ" id="q7" role="3cqZAp">
          <uo k="s:originTrace" v="n:1227262761173" />
          <node concept="3fqX7Q" id="q8" role="3clFbw">
            <uo k="s:originTrace" v="n:1227262762879" />
            <node concept="2OqwBi" id="qa" role="3fr31v">
              <uo k="s:originTrace" v="n:1227262764976" />
              <node concept="37vLTw" id="qb" role="2Oq$k0">
                <ref role="3cqZAo" node="pZ" resolve="method" />
                <uo k="s:originTrace" v="n:1227262764193" />
              </node>
              <node concept="3zqWPK" id="qc" role="2OqNvi">
                <ref role="37wK5l" to="csvn:hQYykEj" resolve="isCorrectlyOverriden" />
                <uo k="s:originTrace" v="n:8085146484218860178" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="q9" role="3clFbx">
            <uo k="s:originTrace" v="n:1227262761175" />
            <node concept="9aQIb" id="qd" role="3cqZAp">
              <uo k="s:originTrace" v="n:1227262769261" />
              <node concept="3clFbS" id="qe" role="9aQI4">
                <node concept="3cpWs8" id="qg" role="3cqZAp">
                  <node concept="3cpWsn" id="qj" role="3cpWs9">
                    <property role="TrG5h" value="errorTarget" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3uibUv" id="qk" role="1tU5fm">
                      <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                    </node>
                    <node concept="2ShNRf" id="ql" role="33vP2m">
                      <node concept="1pGfFk" id="qm" role="2ShVmc">
                        <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="qh" role="3cqZAp">
                  <node concept="3cpWsn" id="qn" role="3cpWs9">
                    <property role="TrG5h" value="_reporter_2309309498" />
                    <node concept="3uibUv" id="qo" role="1tU5fm">
                      <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                    </node>
                    <node concept="2OqwBi" id="qp" role="33vP2m">
                      <node concept="3VmV3z" id="qq" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="qs" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="qr" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                        <node concept="37vLTw" id="qt" role="37wK5m">
                          <ref role="3cqZAo" node="pZ" resolve="method" />
                          <uo k="s:originTrace" v="n:1227262803938" />
                        </node>
                        <node concept="Xl_RD" id="qu" role="37wK5m">
                          <property role="Xl_RC" value="Method signature doesn't match signature in the base concept" />
                          <uo k="s:originTrace" v="n:1227262770436" />
                        </node>
                        <node concept="Xl_RD" id="qv" role="37wK5m">
                          <property role="Xl_RC" value="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="qw" role="37wK5m">
                          <property role="Xl_RC" value="1227262769261" />
                        </node>
                        <node concept="10Nm6u" id="qx" role="37wK5m" />
                        <node concept="37vLTw" id="qy" role="37wK5m">
                          <ref role="3cqZAo" node="qj" resolve="errorTarget" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="qi" role="3cqZAp">
                  <node concept="3clFbS" id="qz" role="9aQI4">
                    <node concept="3cpWs8" id="q$" role="3cqZAp">
                      <node concept="3cpWsn" id="qB" role="3cpWs9">
                        <property role="TrG5h" value="intentionProvider" />
                        <node concept="3uibUv" id="qC" role="1tU5fm">
                          <ref role="3uigEE" to="2gg1:~BaseQuickFixProvider" resolve="BaseQuickFixProvider" />
                        </node>
                        <node concept="2ShNRf" id="qD" role="33vP2m">
                          <node concept="1pGfFk" id="qE" role="2ShVmc">
                            <ref role="37wK5l" to="2gg1:~BaseQuickFixProvider.&lt;init&gt;(java.lang.String,java.lang.String,boolean)" resolve="BaseQuickFixProvider" />
                            <node concept="Xl_RD" id="qF" role="37wK5m">
                              <property role="Xl_RC" value="jetbrains.mps.lang.behavior.typesystem.FixMethodSignature_QuickFix" />
                            </node>
                            <node concept="Xl_RD" id="qG" role="37wK5m">
                              <property role="Xl_RC" value="3834658221333161527" />
                            </node>
                            <node concept="3clFbT" id="qH" role="37wK5m" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="q_" role="3cqZAp">
                      <node concept="2OqwBi" id="qI" role="3clFbG">
                        <node concept="37vLTw" id="qJ" role="2Oq$k0">
                          <ref role="3cqZAo" node="qB" resolve="intentionProvider" />
                        </node>
                        <node concept="liA8E" id="qK" role="2OqNvi">
                          <ref role="37wK5l" to="2gg1:~BaseQuickFixProvider.putArgument(java.lang.String,java.lang.Object)" resolve="putArgument" />
                          <node concept="Xl_RD" id="qL" role="37wK5m">
                            <property role="Xl_RC" value="conceptMethod" />
                          </node>
                          <node concept="37vLTw" id="qM" role="37wK5m">
                            <ref role="3cqZAo" node="pZ" resolve="method" />
                            <uo k="s:originTrace" v="n:3834658221333161530" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="qA" role="3cqZAp">
                      <node concept="2OqwBi" id="qN" role="3clFbG">
                        <node concept="37vLTw" id="qO" role="2Oq$k0">
                          <ref role="3cqZAo" node="qn" resolve="_reporter_2309309498" />
                        </node>
                        <node concept="liA8E" id="qP" role="2OqNvi">
                          <ref role="37wK5l" to="2gg1:~IErrorReporter.addIntentionProvider(jetbrains.mps.errors.QuickFixProvider)" resolve="addIntentionProvider" />
                          <node concept="37vLTw" id="qQ" role="37wK5m">
                            <ref role="3cqZAo" node="qB" resolve="intentionProvider" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="6wLe0" id="qf" role="lGtFl">
                <property role="6wLej" value="1227262769261" />
                <property role="6wLeW" value="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="q3" role="1B3o_S">
        <uo k="s:originTrace" v="n:1227262734777" />
      </node>
    </node>
    <node concept="3clFb_" id="pP" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:1227262734777" />
      <node concept="3bZ5Sz" id="qR" role="3clF45">
        <uo k="s:originTrace" v="n:1227262734777" />
      </node>
      <node concept="3clFbS" id="qS" role="3clF47">
        <uo k="s:originTrace" v="n:1227262734777" />
        <node concept="3cpWs6" id="qU" role="3cqZAp">
          <uo k="s:originTrace" v="n:1227262734777" />
          <node concept="35c_gC" id="qV" role="3cqZAk">
            <ref role="35c_gD" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
            <uo k="s:originTrace" v="n:1227262734777" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="qT" role="1B3o_S">
        <uo k="s:originTrace" v="n:1227262734777" />
      </node>
    </node>
    <node concept="3clFb_" id="pQ" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:1227262734777" />
      <node concept="37vLTG" id="qW" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:1227262734777" />
        <node concept="3Tqbb2" id="r0" role="1tU5fm">
          <uo k="s:originTrace" v="n:1227262734777" />
        </node>
      </node>
      <node concept="3clFbS" id="qX" role="3clF47">
        <uo k="s:originTrace" v="n:1227262734777" />
        <node concept="9aQIb" id="r1" role="3cqZAp">
          <uo k="s:originTrace" v="n:1227262734777" />
          <node concept="3clFbS" id="r2" role="9aQI4">
            <uo k="s:originTrace" v="n:1227262734777" />
            <node concept="3cpWs6" id="r3" role="3cqZAp">
              <uo k="s:originTrace" v="n:1227262734777" />
              <node concept="2ShNRf" id="r4" role="3cqZAk">
                <uo k="s:originTrace" v="n:1227262734777" />
                <node concept="1pGfFk" id="r5" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:1227262734777" />
                  <node concept="2OqwBi" id="r6" role="37wK5m">
                    <uo k="s:originTrace" v="n:1227262734777" />
                    <node concept="2OqwBi" id="r8" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:1227262734777" />
                      <node concept="liA8E" id="ra" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:1227262734777" />
                      </node>
                      <node concept="2JrnkZ" id="rb" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:1227262734777" />
                        <node concept="37vLTw" id="rc" role="2JrQYb">
                          <ref role="3cqZAo" node="qW" resolve="argument" />
                          <uo k="s:originTrace" v="n:1227262734777" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="r9" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:1227262734777" />
                      <node concept="1rXfSq" id="rd" role="37wK5m">
                        <ref role="37wK5l" node="pP" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:1227262734777" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="r7" role="37wK5m">
                    <uo k="s:originTrace" v="n:1227262734777" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="qY" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:1227262734777" />
      </node>
      <node concept="3Tm1VV" id="qZ" role="1B3o_S">
        <uo k="s:originTrace" v="n:1227262734777" />
      </node>
    </node>
    <node concept="3clFb_" id="pR" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:1227262734777" />
      <node concept="3clFbS" id="re" role="3clF47">
        <uo k="s:originTrace" v="n:1227262734777" />
        <node concept="3cpWs6" id="rh" role="3cqZAp">
          <uo k="s:originTrace" v="n:1227262734777" />
          <node concept="3clFbT" id="ri" role="3cqZAk">
            <uo k="s:originTrace" v="n:1227262734777" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="rf" role="3clF45">
        <uo k="s:originTrace" v="n:1227262734777" />
      </node>
      <node concept="3Tm1VV" id="rg" role="1B3o_S">
        <uo k="s:originTrace" v="n:1227262734777" />
      </node>
    </node>
    <node concept="3uibUv" id="pS" role="EKbjA">
      <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:1227262734777" />
    </node>
    <node concept="3uibUv" id="pT" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractNonTypesystemRule_Runtime" resolve="AbstractNonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:1227262734777" />
    </node>
    <node concept="3Tm1VV" id="pU" role="1B3o_S">
      <uo k="s:originTrace" v="n:1227262734777" />
    </node>
  </node>
  <node concept="312cEu" id="rj">
    <property role="3GE5qa" value="" />
    <property role="TrG5h" value="check_MethodIsNotOverriddenTwice_NonTypesystemRule" />
    <uo k="s:originTrace" v="n:1279830762537579627" />
    <node concept="3clFbW" id="rk" role="jymVt">
      <uo k="s:originTrace" v="n:1279830762537579627" />
      <node concept="3clFbS" id="rs" role="3clF47">
        <uo k="s:originTrace" v="n:1279830762537579627" />
      </node>
      <node concept="3Tm1VV" id="rt" role="1B3o_S">
        <uo k="s:originTrace" v="n:1279830762537579627" />
      </node>
      <node concept="3cqZAl" id="ru" role="3clF45">
        <uo k="s:originTrace" v="n:1279830762537579627" />
      </node>
    </node>
    <node concept="3clFb_" id="rl" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:1279830762537579627" />
      <node concept="3cqZAl" id="rv" role="3clF45">
        <uo k="s:originTrace" v="n:1279830762537579627" />
      </node>
      <node concept="37vLTG" id="rw" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="conceptBehavior" />
        <uo k="s:originTrace" v="n:1279830762537579627" />
        <node concept="3Tqbb2" id="r_" role="1tU5fm">
          <uo k="s:originTrace" v="n:1279830762537579627" />
        </node>
      </node>
      <node concept="37vLTG" id="rx" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:1279830762537579627" />
        <node concept="3uibUv" id="rA" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:1279830762537579627" />
        </node>
      </node>
      <node concept="37vLTG" id="ry" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:1279830762537579627" />
        <node concept="3uibUv" id="rB" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:1279830762537579627" />
        </node>
      </node>
      <node concept="3clFbS" id="rz" role="3clF47">
        <uo k="s:originTrace" v="n:1279830762537579628" />
        <node concept="3cpWs8" id="rC" role="3cqZAp">
          <uo k="s:originTrace" v="n:1279830762537759526" />
          <node concept="3cpWsn" id="rE" role="3cpWs9">
            <property role="TrG5h" value="overridingMethods" />
            <uo k="s:originTrace" v="n:1279830762537759527" />
            <node concept="A3Dl8" id="rF" role="1tU5fm">
              <uo k="s:originTrace" v="n:1279830762537759512" />
              <node concept="3Tqbb2" id="rH" role="A3Ik2">
                <ref role="ehGHo" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
                <uo k="s:originTrace" v="n:1279830762537759515" />
              </node>
            </node>
            <node concept="2OqwBi" id="rG" role="33vP2m">
              <uo k="s:originTrace" v="n:1279830762537759528" />
              <node concept="2OqwBi" id="rI" role="2Oq$k0">
                <uo k="s:originTrace" v="n:1279830762537759529" />
                <node concept="37vLTw" id="rK" role="2Oq$k0">
                  <ref role="3cqZAo" node="rw" resolve="conceptBehavior" />
                  <uo k="s:originTrace" v="n:1279830762537759530" />
                </node>
                <node concept="3Tsc0h" id="rL" role="2OqNvi">
                  <ref role="3TtcxE" to="1i04:hP3h7G_" resolve="method" />
                  <uo k="s:originTrace" v="n:1279830762537759531" />
                </node>
              </node>
              <node concept="3zZkjj" id="rJ" role="2OqNvi">
                <uo k="s:originTrace" v="n:1279830762537759532" />
                <node concept="1bVj0M" id="rM" role="23t8la">
                  <uo k="s:originTrace" v="n:1279830762537759533" />
                  <node concept="3clFbS" id="rN" role="1bW5cS">
                    <uo k="s:originTrace" v="n:1279830762537759534" />
                    <node concept="3clFbF" id="rP" role="3cqZAp">
                      <uo k="s:originTrace" v="n:1279830762537759535" />
                      <node concept="3y3z36" id="rQ" role="3clFbG">
                        <uo k="s:originTrace" v="n:1279830762537759536" />
                        <node concept="10Nm6u" id="rR" role="3uHU7w">
                          <uo k="s:originTrace" v="n:1279830762537759537" />
                        </node>
                        <node concept="2OqwBi" id="rS" role="3uHU7B">
                          <uo k="s:originTrace" v="n:1279830762537759538" />
                          <node concept="37vLTw" id="rT" role="2Oq$k0">
                            <ref role="3cqZAo" node="rO" resolve="it" />
                            <uo k="s:originTrace" v="n:1279830762537759539" />
                          </node>
                          <node concept="3TrEf2" id="rU" role="2OqNvi">
                            <ref role="3Tt5mk" to="1i04:hP3i0lZ" resolve="overriddenMethod" />
                            <uo k="s:originTrace" v="n:1279830762537759540" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="rO" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <uo k="s:originTrace" v="n:6847626768367730911" />
                    <node concept="2jxLKc" id="rV" role="1tU5fm">
                      <uo k="s:originTrace" v="n:6847626768367730912" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="rD" role="3cqZAp">
          <uo k="s:originTrace" v="n:1279830762537688166" />
          <node concept="2GrKxI" id="rW" role="2Gsz3X">
            <property role="TrG5h" value="method" />
            <uo k="s:originTrace" v="n:1279830762537688168" />
          </node>
          <node concept="37vLTw" id="rX" role="2GsD0m">
            <ref role="3cqZAo" node="rE" resolve="overridingMethods" />
            <uo k="s:originTrace" v="n:1279830762537759543" />
          </node>
          <node concept="3clFbS" id="rY" role="2LFqv$">
            <uo k="s:originTrace" v="n:1279830762537688172" />
            <node concept="2Gpval" id="rZ" role="3cqZAp">
              <uo k="s:originTrace" v="n:1279830762537616690" />
              <node concept="2GrKxI" id="s0" role="2Gsz3X">
                <property role="TrG5h" value="anotherMethod" />
                <uo k="s:originTrace" v="n:1279830762537616692" />
              </node>
              <node concept="37vLTw" id="s1" role="2GsD0m">
                <ref role="3cqZAo" node="rE" resolve="overridingMethods" />
                <uo k="s:originTrace" v="n:1279830762537780854" />
              </node>
              <node concept="3clFbS" id="s2" role="2LFqv$">
                <uo k="s:originTrace" v="n:1279830762537616696" />
                <node concept="3clFbJ" id="s3" role="3cqZAp">
                  <uo k="s:originTrace" v="n:1279830762537631183" />
                  <node concept="1Wc70l" id="s4" role="3clFbw">
                    <uo k="s:originTrace" v="n:1279830762537636645" />
                    <node concept="3clFbC" id="s6" role="3uHU7w">
                      <uo k="s:originTrace" v="n:1279830762537653073" />
                      <node concept="2OqwBi" id="s8" role="3uHU7w">
                        <uo k="s:originTrace" v="n:1279830762537655687" />
                        <node concept="2GrUjf" id="sa" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="rW" resolve="method" />
                          <uo k="s:originTrace" v="n:1279830762537793528" />
                        </node>
                        <node concept="3TrEf2" id="sb" role="2OqNvi">
                          <ref role="3Tt5mk" to="1i04:hP3i0lZ" resolve="overriddenMethod" />
                          <uo k="s:originTrace" v="n:1279830762537659462" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="s9" role="3uHU7B">
                        <uo k="s:originTrace" v="n:1279830762537639238" />
                        <node concept="2GrUjf" id="sc" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="s0" resolve="anotherMethod" />
                          <uo k="s:originTrace" v="n:1279830762537637581" />
                        </node>
                        <node concept="3TrEf2" id="sd" role="2OqNvi">
                          <ref role="3Tt5mk" to="1i04:hP3i0lZ" resolve="overriddenMethod" />
                          <uo k="s:originTrace" v="n:1279830762537644095" />
                        </node>
                      </node>
                    </node>
                    <node concept="3y3z36" id="s7" role="3uHU7B">
                      <uo k="s:originTrace" v="n:1279830762537633555" />
                      <node concept="2GrUjf" id="se" role="3uHU7B">
                        <ref role="2Gs0qQ" node="s0" resolve="anotherMethod" />
                        <uo k="s:originTrace" v="n:1279830762537631258" />
                      </node>
                      <node concept="2GrUjf" id="sf" role="3uHU7w">
                        <ref role="2Gs0qQ" node="rW" resolve="method" />
                        <uo k="s:originTrace" v="n:1279830762537782897" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="s5" role="3clFbx">
                    <uo k="s:originTrace" v="n:1279830762537631185" />
                    <node concept="9aQIb" id="sg" role="3cqZAp">
                      <uo k="s:originTrace" v="n:1279830762537579635" />
                      <node concept="3clFbS" id="sh" role="9aQI4">
                        <node concept="3cpWs8" id="sj" role="3cqZAp">
                          <node concept="3cpWsn" id="sl" role="3cpWs9">
                            <property role="TrG5h" value="errorTarget" />
                            <property role="3TUv4t" value="true" />
                            <node concept="3uibUv" id="sm" role="1tU5fm">
                              <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                            </node>
                            <node concept="2ShNRf" id="sn" role="33vP2m">
                              <node concept="1pGfFk" id="so" role="2ShVmc">
                                <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="sk" role="3cqZAp">
                          <node concept="3cpWsn" id="sp" role="3cpWs9">
                            <property role="TrG5h" value="_reporter_2309309498" />
                            <node concept="3uibUv" id="sq" role="1tU5fm">
                              <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                            </node>
                            <node concept="2OqwBi" id="sr" role="33vP2m">
                              <node concept="3VmV3z" id="ss" role="2Oq$k0">
                                <property role="3VnrPo" value="typeCheckingContext" />
                                <node concept="3uibUv" id="su" role="3Vn4Tt">
                                  <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                                </node>
                              </node>
                              <node concept="liA8E" id="st" role="2OqNvi">
                                <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                                <node concept="2GrUjf" id="sv" role="37wK5m">
                                  <ref role="2Gs0qQ" node="rW" resolve="method" />
                                  <uo k="s:originTrace" v="n:1279830762537803501" />
                                </node>
                                <node concept="3cpWs3" id="sw" role="37wK5m">
                                  <uo k="s:originTrace" v="n:1279830762537669248" />
                                  <node concept="Xl_RD" id="s_" role="3uHU7w">
                                    <property role="Xl_RC" value="'" />
                                    <uo k="s:originTrace" v="n:1279830762537669251" />
                                  </node>
                                  <node concept="3cpWs3" id="sA" role="3uHU7B">
                                    <uo k="s:originTrace" v="n:1279830762537666001" />
                                    <node concept="Xl_RD" id="sB" role="3uHU7B">
                                      <property role="Xl_RC" value="The ancestor method is already overridden by the '" />
                                      <uo k="s:originTrace" v="n:1279830762537579636" />
                                    </node>
                                    <node concept="2OqwBi" id="sC" role="3uHU7w">
                                      <uo k="s:originTrace" v="n:1279830762537672498" />
                                      <node concept="2GrUjf" id="sD" role="2Oq$k0">
                                        <ref role="2Gs0qQ" node="s0" resolve="anotherMethod" />
                                        <uo k="s:originTrace" v="n:1279830762537667544" />
                                      </node>
                                      <node concept="3TrcHB" id="sE" role="2OqNvi">
                                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                        <uo k="s:originTrace" v="n:1279830762537678357" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="Xl_RD" id="sx" role="37wK5m">
                                  <property role="Xl_RC" value="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
                                </node>
                                <node concept="Xl_RD" id="sy" role="37wK5m">
                                  <property role="Xl_RC" value="1279830762537579635" />
                                </node>
                                <node concept="10Nm6u" id="sz" role="37wK5m" />
                                <node concept="37vLTw" id="s$" role="37wK5m">
                                  <ref role="3cqZAo" node="sl" resolve="errorTarget" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="6wLe0" id="si" role="lGtFl">
                        <property role="6wLej" value="1279830762537579635" />
                        <property role="6wLeW" value="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="r$" role="1B3o_S">
        <uo k="s:originTrace" v="n:1279830762537579627" />
      </node>
    </node>
    <node concept="3clFb_" id="rm" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:1279830762537579627" />
      <node concept="3bZ5Sz" id="sF" role="3clF45">
        <uo k="s:originTrace" v="n:1279830762537579627" />
      </node>
      <node concept="3clFbS" id="sG" role="3clF47">
        <uo k="s:originTrace" v="n:1279830762537579627" />
        <node concept="3cpWs6" id="sI" role="3cqZAp">
          <uo k="s:originTrace" v="n:1279830762537579627" />
          <node concept="35c_gC" id="sJ" role="3cqZAk">
            <ref role="35c_gD" to="1i04:hP3h7Gq" resolve="ConceptBehavior" />
            <uo k="s:originTrace" v="n:1279830762537579627" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="sH" role="1B3o_S">
        <uo k="s:originTrace" v="n:1279830762537579627" />
      </node>
    </node>
    <node concept="3clFb_" id="rn" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:1279830762537579627" />
      <node concept="37vLTG" id="sK" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:1279830762537579627" />
        <node concept="3Tqbb2" id="sO" role="1tU5fm">
          <uo k="s:originTrace" v="n:1279830762537579627" />
        </node>
      </node>
      <node concept="3clFbS" id="sL" role="3clF47">
        <uo k="s:originTrace" v="n:1279830762537579627" />
        <node concept="9aQIb" id="sP" role="3cqZAp">
          <uo k="s:originTrace" v="n:1279830762537579627" />
          <node concept="3clFbS" id="sQ" role="9aQI4">
            <uo k="s:originTrace" v="n:1279830762537579627" />
            <node concept="3cpWs6" id="sR" role="3cqZAp">
              <uo k="s:originTrace" v="n:1279830762537579627" />
              <node concept="2ShNRf" id="sS" role="3cqZAk">
                <uo k="s:originTrace" v="n:1279830762537579627" />
                <node concept="1pGfFk" id="sT" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:1279830762537579627" />
                  <node concept="2OqwBi" id="sU" role="37wK5m">
                    <uo k="s:originTrace" v="n:1279830762537579627" />
                    <node concept="2OqwBi" id="sW" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:1279830762537579627" />
                      <node concept="liA8E" id="sY" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:1279830762537579627" />
                      </node>
                      <node concept="2JrnkZ" id="sZ" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:1279830762537579627" />
                        <node concept="37vLTw" id="t0" role="2JrQYb">
                          <ref role="3cqZAo" node="sK" resolve="argument" />
                          <uo k="s:originTrace" v="n:1279830762537579627" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="sX" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:1279830762537579627" />
                      <node concept="1rXfSq" id="t1" role="37wK5m">
                        <ref role="37wK5l" node="rm" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:1279830762537579627" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="sV" role="37wK5m">
                    <uo k="s:originTrace" v="n:1279830762537579627" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="sM" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:1279830762537579627" />
      </node>
      <node concept="3Tm1VV" id="sN" role="1B3o_S">
        <uo k="s:originTrace" v="n:1279830762537579627" />
      </node>
    </node>
    <node concept="3clFb_" id="ro" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:1279830762537579627" />
      <node concept="3clFbS" id="t2" role="3clF47">
        <uo k="s:originTrace" v="n:1279830762537579627" />
        <node concept="3cpWs6" id="t5" role="3cqZAp">
          <uo k="s:originTrace" v="n:1279830762537579627" />
          <node concept="3clFbT" id="t6" role="3cqZAk">
            <uo k="s:originTrace" v="n:1279830762537579627" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="t3" role="3clF45">
        <uo k="s:originTrace" v="n:1279830762537579627" />
      </node>
      <node concept="3Tm1VV" id="t4" role="1B3o_S">
        <uo k="s:originTrace" v="n:1279830762537579627" />
      </node>
    </node>
    <node concept="3uibUv" id="rp" role="EKbjA">
      <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:1279830762537579627" />
    </node>
    <node concept="3uibUv" id="rq" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractNonTypesystemRule_Runtime" resolve="AbstractNonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:1279830762537579627" />
    </node>
    <node concept="3Tm1VV" id="rr" role="1B3o_S">
      <uo k="s:originTrace" v="n:1279830762537579627" />
    </node>
  </node>
  <node concept="312cEu" id="t7">
    <property role="3GE5qa" value="" />
    <property role="TrG5h" value="check_NoFinalOverrides_NonTypesystemRule" />
    <uo k="s:originTrace" v="n:8014340958386592216" />
    <node concept="3clFbW" id="t8" role="jymVt">
      <uo k="s:originTrace" v="n:8014340958386592216" />
      <node concept="3clFbS" id="tg" role="3clF47">
        <uo k="s:originTrace" v="n:8014340958386592216" />
      </node>
      <node concept="3Tm1VV" id="th" role="1B3o_S">
        <uo k="s:originTrace" v="n:8014340958386592216" />
      </node>
      <node concept="3cqZAl" id="ti" role="3clF45">
        <uo k="s:originTrace" v="n:8014340958386592216" />
      </node>
    </node>
    <node concept="3clFb_" id="t9" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:8014340958386592216" />
      <node concept="3cqZAl" id="tj" role="3clF45">
        <uo k="s:originTrace" v="n:8014340958386592216" />
      </node>
      <node concept="37vLTG" id="tk" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="method" />
        <uo k="s:originTrace" v="n:8014340958386592216" />
        <node concept="3Tqbb2" id="tp" role="1tU5fm">
          <uo k="s:originTrace" v="n:8014340958386592216" />
        </node>
      </node>
      <node concept="37vLTG" id="tl" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:8014340958386592216" />
        <node concept="3uibUv" id="tq" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:8014340958386592216" />
        </node>
      </node>
      <node concept="37vLTG" id="tm" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:8014340958386592216" />
        <node concept="3uibUv" id="tr" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:8014340958386592216" />
        </node>
      </node>
      <node concept="3clFbS" id="tn" role="3clF47">
        <uo k="s:originTrace" v="n:8014340958386592217" />
        <node concept="3cpWs8" id="ts" role="3cqZAp">
          <uo k="s:originTrace" v="n:8014340958388001196" />
          <node concept="3cpWsn" id="tu" role="3cpWs9">
            <property role="TrG5h" value="overriddenMethod" />
            <uo k="s:originTrace" v="n:8014340958388001197" />
            <node concept="3Tqbb2" id="tv" role="1tU5fm">
              <ref role="ehGHo" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
              <uo k="s:originTrace" v="n:8014340958388001192" />
            </node>
            <node concept="2OqwBi" id="tw" role="33vP2m">
              <uo k="s:originTrace" v="n:8014340958388001198" />
              <node concept="37vLTw" id="tx" role="2Oq$k0">
                <ref role="3cqZAo" node="tk" resolve="method" />
                <uo k="s:originTrace" v="n:8014340958388001199" />
              </node>
              <node concept="3TrEf2" id="ty" role="2OqNvi">
                <ref role="3Tt5mk" to="1i04:hP3i0lZ" resolve="overriddenMethod" />
                <uo k="s:originTrace" v="n:8014340958388001200" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="tt" role="3cqZAp">
          <uo k="s:originTrace" v="n:8014340958386592218" />
          <node concept="3y3z36" id="tz" role="3clFbw">
            <uo k="s:originTrace" v="n:8014340958387999504" />
            <node concept="37vLTw" id="t_" role="3uHU7B">
              <ref role="3cqZAo" node="tu" resolve="overriddenMethod" />
              <uo k="s:originTrace" v="n:8014340958388001201" />
            </node>
            <node concept="10Nm6u" id="tA" role="3uHU7w">
              <uo k="s:originTrace" v="n:8014340958388000106" />
            </node>
          </node>
          <node concept="3clFbS" id="t$" role="3clFbx">
            <uo k="s:originTrace" v="n:8014340958386592223" />
            <node concept="3SKdUt" id="tB" role="3cqZAp">
              <uo k="s:originTrace" v="n:8014340958388087926" />
              <node concept="1PaTwC" id="tC" role="1aUNEU">
                <uo k="s:originTrace" v="n:700871696606798205" />
                <node concept="3oM_SD" id="tD" role="1PaTwD">
                  <property role="3oM_SC" value="todo" />
                  <uo k="s:originTrace" v="n:700871696606798206" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="to" role="1B3o_S">
        <uo k="s:originTrace" v="n:8014340958386592216" />
      </node>
    </node>
    <node concept="3clFb_" id="ta" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:8014340958386592216" />
      <node concept="3bZ5Sz" id="tE" role="3clF45">
        <uo k="s:originTrace" v="n:8014340958386592216" />
      </node>
      <node concept="3clFbS" id="tF" role="3clF47">
        <uo k="s:originTrace" v="n:8014340958386592216" />
        <node concept="3cpWs6" id="tH" role="3cqZAp">
          <uo k="s:originTrace" v="n:8014340958386592216" />
          <node concept="35c_gC" id="tI" role="3cqZAk">
            <ref role="35c_gD" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
            <uo k="s:originTrace" v="n:8014340958386592216" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="tG" role="1B3o_S">
        <uo k="s:originTrace" v="n:8014340958386592216" />
      </node>
    </node>
    <node concept="3clFb_" id="tb" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:8014340958386592216" />
      <node concept="37vLTG" id="tJ" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:8014340958386592216" />
        <node concept="3Tqbb2" id="tN" role="1tU5fm">
          <uo k="s:originTrace" v="n:8014340958386592216" />
        </node>
      </node>
      <node concept="3clFbS" id="tK" role="3clF47">
        <uo k="s:originTrace" v="n:8014340958386592216" />
        <node concept="9aQIb" id="tO" role="3cqZAp">
          <uo k="s:originTrace" v="n:8014340958386592216" />
          <node concept="3clFbS" id="tP" role="9aQI4">
            <uo k="s:originTrace" v="n:8014340958386592216" />
            <node concept="3cpWs6" id="tQ" role="3cqZAp">
              <uo k="s:originTrace" v="n:8014340958386592216" />
              <node concept="2ShNRf" id="tR" role="3cqZAk">
                <uo k="s:originTrace" v="n:8014340958386592216" />
                <node concept="1pGfFk" id="tS" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:8014340958386592216" />
                  <node concept="2OqwBi" id="tT" role="37wK5m">
                    <uo k="s:originTrace" v="n:8014340958386592216" />
                    <node concept="2OqwBi" id="tV" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:8014340958386592216" />
                      <node concept="liA8E" id="tX" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:8014340958386592216" />
                      </node>
                      <node concept="2JrnkZ" id="tY" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:8014340958386592216" />
                        <node concept="37vLTw" id="tZ" role="2JrQYb">
                          <ref role="3cqZAo" node="tJ" resolve="argument" />
                          <uo k="s:originTrace" v="n:8014340958386592216" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="tW" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:8014340958386592216" />
                      <node concept="1rXfSq" id="u0" role="37wK5m">
                        <ref role="37wK5l" node="ta" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:8014340958386592216" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="tU" role="37wK5m">
                    <uo k="s:originTrace" v="n:8014340958386592216" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="tL" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:8014340958386592216" />
      </node>
      <node concept="3Tm1VV" id="tM" role="1B3o_S">
        <uo k="s:originTrace" v="n:8014340958386592216" />
      </node>
    </node>
    <node concept="3clFb_" id="tc" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:8014340958386592216" />
      <node concept="3clFbS" id="u1" role="3clF47">
        <uo k="s:originTrace" v="n:8014340958386592216" />
        <node concept="3cpWs6" id="u4" role="3cqZAp">
          <uo k="s:originTrace" v="n:8014340958386592216" />
          <node concept="3clFbT" id="u5" role="3cqZAk">
            <uo k="s:originTrace" v="n:8014340958386592216" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="u2" role="3clF45">
        <uo k="s:originTrace" v="n:8014340958386592216" />
      </node>
      <node concept="3Tm1VV" id="u3" role="1B3o_S">
        <uo k="s:originTrace" v="n:8014340958386592216" />
      </node>
    </node>
    <node concept="3uibUv" id="td" role="EKbjA">
      <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:8014340958386592216" />
    </node>
    <node concept="3uibUv" id="te" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractNonTypesystemRule_Runtime" resolve="AbstractNonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:8014340958386592216" />
    </node>
    <node concept="3Tm1VV" id="tf" role="1B3o_S">
      <uo k="s:originTrace" v="n:8014340958386592216" />
    </node>
  </node>
  <node concept="312cEu" id="u6">
    <property role="3GE5qa" value="" />
    <property role="TrG5h" value="check_PrivateMethodIsNotVirtual_NonTypesystemRule" />
    <uo k="s:originTrace" v="n:1437112813707220502" />
    <node concept="3clFbW" id="u7" role="jymVt">
      <uo k="s:originTrace" v="n:1437112813707220502" />
      <node concept="3clFbS" id="uf" role="3clF47">
        <uo k="s:originTrace" v="n:1437112813707220502" />
      </node>
      <node concept="3Tm1VV" id="ug" role="1B3o_S">
        <uo k="s:originTrace" v="n:1437112813707220502" />
      </node>
      <node concept="3cqZAl" id="uh" role="3clF45">
        <uo k="s:originTrace" v="n:1437112813707220502" />
      </node>
    </node>
    <node concept="3clFb_" id="u8" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:1437112813707220502" />
      <node concept="3cqZAl" id="ui" role="3clF45">
        <uo k="s:originTrace" v="n:1437112813707220502" />
      </node>
      <node concept="37vLTG" id="uj" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="conceptMethodDeclaration" />
        <uo k="s:originTrace" v="n:1437112813707220502" />
        <node concept="3Tqbb2" id="uo" role="1tU5fm">
          <uo k="s:originTrace" v="n:1437112813707220502" />
        </node>
      </node>
      <node concept="37vLTG" id="uk" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:1437112813707220502" />
        <node concept="3uibUv" id="up" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:1437112813707220502" />
        </node>
      </node>
      <node concept="37vLTG" id="ul" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:1437112813707220502" />
        <node concept="3uibUv" id="uq" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:1437112813707220502" />
        </node>
      </node>
      <node concept="3clFbS" id="um" role="3clF47">
        <uo k="s:originTrace" v="n:1437112813707220503" />
        <node concept="3clFbJ" id="ur" role="3cqZAp">
          <uo k="s:originTrace" v="n:1437112813707220504" />
          <node concept="1Wc70l" id="us" role="3clFbw">
            <uo k="s:originTrace" v="n:1437112813707220505" />
            <node concept="2OqwBi" id="uu" role="3uHU7w">
              <uo k="s:originTrace" v="n:1437112813707220507" />
              <node concept="37vLTw" id="uw" role="2Oq$k0">
                <ref role="3cqZAo" node="uj" resolve="conceptMethodDeclaration" />
                <uo k="s:originTrace" v="n:1437112813707220508" />
              </node>
              <node concept="3zqWPK" id="ux" role="2OqNvi">
                <ref role="37wK5l" to="csvn:6WSEafdhbZX" resolve="isVirtual" />
                <uo k="s:originTrace" v="n:8085146484218860190" />
              </node>
            </node>
            <node concept="2OqwBi" id="uv" role="3uHU7B">
              <uo k="s:originTrace" v="n:1437112813707223916" />
              <node concept="2OqwBi" id="uy" role="2Oq$k0">
                <uo k="s:originTrace" v="n:1437112813707220510" />
                <node concept="3TrEf2" id="u$" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:h9B3oxE" resolve="visibility" />
                  <uo k="s:originTrace" v="n:1437112813707223296" />
                </node>
                <node concept="37vLTw" id="u_" role="2Oq$k0">
                  <ref role="3cqZAo" node="uj" resolve="conceptMethodDeclaration" />
                  <uo k="s:originTrace" v="n:1437112813707220512" />
                </node>
              </node>
              <node concept="1mIQ4w" id="uz" role="2OqNvi">
                <uo k="s:originTrace" v="n:1437112813707224527" />
                <node concept="chp4Y" id="uA" role="cj9EA">
                  <ref role="cht4Q" to="tpee:gFTm6Wc" resolve="PrivateVisibility" />
                  <uo k="s:originTrace" v="n:1437112813707224688" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="ut" role="3clFbx">
            <uo k="s:originTrace" v="n:1437112813707220513" />
            <node concept="9aQIb" id="uB" role="3cqZAp">
              <uo k="s:originTrace" v="n:1437112813707274679" />
              <node concept="3clFbS" id="uC" role="9aQI4">
                <node concept="3cpWs8" id="uE" role="3cqZAp">
                  <node concept="3cpWsn" id="uH" role="3cpWs9">
                    <property role="TrG5h" value="errorTarget" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3uibUv" id="uI" role="1tU5fm">
                      <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                    </node>
                    <node concept="2ShNRf" id="uJ" role="33vP2m">
                      <node concept="1pGfFk" id="uK" role="2ShVmc">
                        <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="uF" role="3cqZAp">
                  <node concept="3cpWsn" id="uL" role="3cpWs9">
                    <property role="TrG5h" value="_reporter_2309309498" />
                    <node concept="3uibUv" id="uM" role="1tU5fm">
                      <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                    </node>
                    <node concept="2OqwBi" id="uN" role="33vP2m">
                      <node concept="3VmV3z" id="uO" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="uQ" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="uP" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                        <node concept="37vLTw" id="uR" role="37wK5m">
                          <ref role="3cqZAo" node="uj" resolve="conceptMethodDeclaration" />
                          <uo k="s:originTrace" v="n:1437112813707274682" />
                        </node>
                        <node concept="Xl_RD" id="uS" role="37wK5m">
                          <property role="Xl_RC" value="A private method must not be virtual" />
                          <uo k="s:originTrace" v="n:1437112813707274681" />
                        </node>
                        <node concept="Xl_RD" id="uT" role="37wK5m">
                          <property role="Xl_RC" value="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="uU" role="37wK5m">
                          <property role="Xl_RC" value="1437112813707274679" />
                        </node>
                        <node concept="10Nm6u" id="uV" role="37wK5m" />
                        <node concept="37vLTw" id="uW" role="37wK5m">
                          <ref role="3cqZAo" node="uH" resolve="errorTarget" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="uG" role="3cqZAp">
                  <node concept="3clFbS" id="uX" role="9aQI4">
                    <node concept="3cpWs8" id="uY" role="3cqZAp">
                      <node concept="3cpWsn" id="v0" role="3cpWs9">
                        <property role="TrG5h" value="intentionProvider" />
                        <node concept="3uibUv" id="v1" role="1tU5fm">
                          <ref role="3uigEE" to="2gg1:~BaseQuickFixProvider" resolve="BaseQuickFixProvider" />
                        </node>
                        <node concept="2ShNRf" id="v2" role="33vP2m">
                          <node concept="1pGfFk" id="v3" role="2ShVmc">
                            <ref role="37wK5l" to="2gg1:~BaseQuickFixProvider.&lt;init&gt;(java.lang.String,java.lang.String,boolean)" resolve="BaseQuickFixProvider" />
                            <node concept="Xl_RD" id="v4" role="37wK5m">
                              <property role="Xl_RC" value="jetbrains.mps.lang.behavior.typesystem.MakePrivateMethodNonVirtual_QuickFix" />
                            </node>
                            <node concept="Xl_RD" id="v5" role="37wK5m">
                              <property role="Xl_RC" value="1437112813707274683" />
                            </node>
                            <node concept="3clFbT" id="v6" role="37wK5m" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="uZ" role="3cqZAp">
                      <node concept="2OqwBi" id="v7" role="3clFbG">
                        <node concept="37vLTw" id="v8" role="2Oq$k0">
                          <ref role="3cqZAo" node="uL" resolve="_reporter_2309309498" />
                        </node>
                        <node concept="liA8E" id="v9" role="2OqNvi">
                          <ref role="37wK5l" to="2gg1:~IErrorReporter.addIntentionProvider(jetbrains.mps.errors.QuickFixProvider)" resolve="addIntentionProvider" />
                          <node concept="37vLTw" id="va" role="37wK5m">
                            <ref role="3cqZAo" node="v0" resolve="intentionProvider" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="6wLe0" id="uD" role="lGtFl">
                <property role="6wLej" value="1437112813707274679" />
                <property role="6wLeW" value="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="un" role="1B3o_S">
        <uo k="s:originTrace" v="n:1437112813707220502" />
      </node>
    </node>
    <node concept="3clFb_" id="u9" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:1437112813707220502" />
      <node concept="3bZ5Sz" id="vb" role="3clF45">
        <uo k="s:originTrace" v="n:1437112813707220502" />
      </node>
      <node concept="3clFbS" id="vc" role="3clF47">
        <uo k="s:originTrace" v="n:1437112813707220502" />
        <node concept="3cpWs6" id="ve" role="3cqZAp">
          <uo k="s:originTrace" v="n:1437112813707220502" />
          <node concept="35c_gC" id="vf" role="3cqZAk">
            <ref role="35c_gD" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
            <uo k="s:originTrace" v="n:1437112813707220502" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="vd" role="1B3o_S">
        <uo k="s:originTrace" v="n:1437112813707220502" />
      </node>
    </node>
    <node concept="3clFb_" id="ua" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:1437112813707220502" />
      <node concept="37vLTG" id="vg" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:1437112813707220502" />
        <node concept="3Tqbb2" id="vk" role="1tU5fm">
          <uo k="s:originTrace" v="n:1437112813707220502" />
        </node>
      </node>
      <node concept="3clFbS" id="vh" role="3clF47">
        <uo k="s:originTrace" v="n:1437112813707220502" />
        <node concept="9aQIb" id="vl" role="3cqZAp">
          <uo k="s:originTrace" v="n:1437112813707220502" />
          <node concept="3clFbS" id="vm" role="9aQI4">
            <uo k="s:originTrace" v="n:1437112813707220502" />
            <node concept="3cpWs6" id="vn" role="3cqZAp">
              <uo k="s:originTrace" v="n:1437112813707220502" />
              <node concept="2ShNRf" id="vo" role="3cqZAk">
                <uo k="s:originTrace" v="n:1437112813707220502" />
                <node concept="1pGfFk" id="vp" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:1437112813707220502" />
                  <node concept="2OqwBi" id="vq" role="37wK5m">
                    <uo k="s:originTrace" v="n:1437112813707220502" />
                    <node concept="2OqwBi" id="vs" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:1437112813707220502" />
                      <node concept="liA8E" id="vu" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:1437112813707220502" />
                      </node>
                      <node concept="2JrnkZ" id="vv" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:1437112813707220502" />
                        <node concept="37vLTw" id="vw" role="2JrQYb">
                          <ref role="3cqZAo" node="vg" resolve="argument" />
                          <uo k="s:originTrace" v="n:1437112813707220502" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="vt" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:1437112813707220502" />
                      <node concept="1rXfSq" id="vx" role="37wK5m">
                        <ref role="37wK5l" node="u9" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:1437112813707220502" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="vr" role="37wK5m">
                    <uo k="s:originTrace" v="n:1437112813707220502" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="vi" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:1437112813707220502" />
      </node>
      <node concept="3Tm1VV" id="vj" role="1B3o_S">
        <uo k="s:originTrace" v="n:1437112813707220502" />
      </node>
    </node>
    <node concept="3clFb_" id="ub" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:1437112813707220502" />
      <node concept="3clFbS" id="vy" role="3clF47">
        <uo k="s:originTrace" v="n:1437112813707220502" />
        <node concept="3cpWs6" id="v_" role="3cqZAp">
          <uo k="s:originTrace" v="n:1437112813707220502" />
          <node concept="3clFbT" id="vA" role="3cqZAk">
            <uo k="s:originTrace" v="n:1437112813707220502" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="vz" role="3clF45">
        <uo k="s:originTrace" v="n:1437112813707220502" />
      </node>
      <node concept="3Tm1VV" id="v$" role="1B3o_S">
        <uo k="s:originTrace" v="n:1437112813707220502" />
      </node>
    </node>
    <node concept="3uibUv" id="uc" role="EKbjA">
      <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:1437112813707220502" />
    </node>
    <node concept="3uibUv" id="ud" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractNonTypesystemRule_Runtime" resolve="AbstractNonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:1437112813707220502" />
    </node>
    <node concept="3Tm1VV" id="ue" role="1B3o_S">
      <uo k="s:originTrace" v="n:1437112813707220502" />
    </node>
  </node>
  <node concept="312cEu" id="vB">
    <property role="3GE5qa" value="" />
    <property role="TrG5h" value="typeof_SuperConceptExpression_InferenceRule" />
    <uo k="s:originTrace" v="n:7613853987897909595" />
    <node concept="3clFbW" id="vC" role="jymVt">
      <uo k="s:originTrace" v="n:7613853987897909595" />
      <node concept="3clFbS" id="vK" role="3clF47">
        <uo k="s:originTrace" v="n:7613853987897909595" />
      </node>
      <node concept="3Tm1VV" id="vL" role="1B3o_S">
        <uo k="s:originTrace" v="n:7613853987897909595" />
      </node>
      <node concept="3cqZAl" id="vM" role="3clF45">
        <uo k="s:originTrace" v="n:7613853987897909595" />
      </node>
    </node>
    <node concept="3clFb_" id="vD" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:7613853987897909595" />
      <node concept="3cqZAl" id="vN" role="3clF45">
        <uo k="s:originTrace" v="n:7613853987897909595" />
      </node>
      <node concept="37vLTG" id="vO" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="sc" />
        <uo k="s:originTrace" v="n:7613853987897909595" />
        <node concept="3Tqbb2" id="vT" role="1tU5fm">
          <uo k="s:originTrace" v="n:7613853987897909595" />
        </node>
      </node>
      <node concept="37vLTG" id="vP" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:7613853987897909595" />
        <node concept="3uibUv" id="vU" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:7613853987897909595" />
        </node>
      </node>
      <node concept="37vLTG" id="vQ" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:7613853987897909595" />
        <node concept="3uibUv" id="vV" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:7613853987897909595" />
        </node>
      </node>
      <node concept="3clFbS" id="vR" role="3clF47">
        <uo k="s:originTrace" v="n:7613853987897909596" />
        <node concept="3cpWs8" id="vW" role="3cqZAp">
          <uo k="s:originTrace" v="n:7613853987897909597" />
          <node concept="3cpWsn" id="vY" role="3cpWs9">
            <property role="TrG5h" value="superConcept" />
            <uo k="s:originTrace" v="n:7613853987897909598" />
            <node concept="3Tqbb2" id="vZ" role="1tU5fm">
              <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
              <uo k="s:originTrace" v="n:7613853987897909599" />
            </node>
            <node concept="2OqwBi" id="w0" role="33vP2m">
              <uo k="s:originTrace" v="n:7613853987897909600" />
              <node concept="37vLTw" id="w1" role="2Oq$k0">
                <ref role="3cqZAo" node="vO" resolve="sc" />
                <uo k="s:originTrace" v="n:7613853987897909601" />
              </node>
              <node concept="3zqWPK" id="w2" role="2OqNvi">
                <ref role="37wK5l" to="csvn:2k7p7sTvKkn" resolve="getSuperConcept" />
                <uo k="s:originTrace" v="n:8085146484218860180" />
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="vX" role="3cqZAp">
          <uo k="s:originTrace" v="n:7613853987897909608" />
          <node concept="3clFbS" id="w3" role="9aQI4">
            <node concept="3cpWs8" id="w5" role="3cqZAp">
              <node concept="3cpWsn" id="w8" role="3cpWs9">
                <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                <node concept="37vLTw" id="w9" role="33vP2m">
                  <ref role="3cqZAo" node="vO" resolve="sc" />
                  <uo k="s:originTrace" v="n:7613853987897909616" />
                  <node concept="6wLe0" id="wb" role="lGtFl">
                    <property role="6wLej" value="7613853987897909608" />
                    <property role="6wLeW" value="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
                  </node>
                </node>
                <node concept="3uibUv" id="wa" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="w6" role="3cqZAp">
              <node concept="3cpWsn" id="wc" role="3cpWs9">
                <property role="TrG5h" value="_info_12389875345" />
                <node concept="3uibUv" id="wd" role="1tU5fm">
                  <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                </node>
                <node concept="2ShNRf" id="we" role="33vP2m">
                  <node concept="1pGfFk" id="wf" role="2ShVmc">
                    <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                    <node concept="37vLTw" id="wg" role="37wK5m">
                      <ref role="3cqZAo" node="w8" resolve="_nodeToCheck_1029348928467" />
                    </node>
                    <node concept="10Nm6u" id="wh" role="37wK5m" />
                    <node concept="Xl_RD" id="wi" role="37wK5m">
                      <property role="Xl_RC" value="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
                    </node>
                    <node concept="Xl_RD" id="wj" role="37wK5m">
                      <property role="Xl_RC" value="7613853987897909608" />
                    </node>
                    <node concept="3cmrfG" id="wk" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="10Nm6u" id="wl" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="w7" role="3cqZAp">
              <node concept="2OqwBi" id="wm" role="3clFbG">
                <node concept="3VmV3z" id="wn" role="2Oq$k0">
                  <property role="3VnrPo" value="typeCheckingContext" />
                  <node concept="3uibUv" id="wp" role="3Vn4Tt">
                    <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                  </node>
                </node>
                <node concept="liA8E" id="wo" role="2OqNvi">
                  <ref role="37wK5l" to="u78q:~TypeCheckingContext.createEquation(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createEquation" />
                  <node concept="10QFUN" id="wq" role="37wK5m">
                    <uo k="s:originTrace" v="n:7613853987897909614" />
                    <node concept="3uibUv" id="wt" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="wu" role="10QFUP">
                      <uo k="s:originTrace" v="n:7613853987897909615" />
                      <node concept="3VmV3z" id="wv" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="wy" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="ww" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                        <node concept="3VmV3z" id="wz" role="37wK5m">
                          <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                          <node concept="3uibUv" id="wB" role="3Vn4Tt">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="w$" role="37wK5m">
                          <property role="Xl_RC" value="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="w_" role="37wK5m">
                          <property role="Xl_RC" value="7613853987897909615" />
                        </node>
                        <node concept="3clFbT" id="wA" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                      <node concept="6wLe0" id="wx" role="lGtFl">
                        <property role="6wLej" value="7613853987897909615" />
                        <property role="6wLeW" value="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
                      </node>
                    </node>
                  </node>
                  <node concept="10QFUN" id="wr" role="37wK5m">
                    <uo k="s:originTrace" v="n:7613853987897909609" />
                    <node concept="3uibUv" id="wC" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2c44tf" id="wD" role="10QFUP">
                      <uo k="s:originTrace" v="n:7613853987897909610" />
                      <node concept="3bZ5Sz" id="wE" role="2c44tc">
                        <ref role="3bZ5Sy" to="tpck:gw2VY9q" resolve="BaseConcept" />
                        <uo k="s:originTrace" v="n:7613853987897912435" />
                        <node concept="2c44tb" id="wF" role="lGtFl">
                          <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/6677504323281689838/6677504323281689839" />
                          <property role="2qtEX8" value="conceptDeclaraton" />
                          <uo k="s:originTrace" v="n:7613853987897912518" />
                          <node concept="37vLTw" id="wG" role="2c44t1">
                            <ref role="3cqZAo" node="vY" resolve="superConcept" />
                            <uo k="s:originTrace" v="n:7613853987897912567" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="ws" role="37wK5m">
                    <ref role="3cqZAo" node="wc" resolve="_info_12389875345" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="6wLe0" id="w4" role="lGtFl">
            <property role="6wLej" value="7613853987897909608" />
            <property role="6wLeW" value="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="vS" role="1B3o_S">
        <uo k="s:originTrace" v="n:7613853987897909595" />
      </node>
    </node>
    <node concept="3clFb_" id="vE" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:7613853987897909595" />
      <node concept="3bZ5Sz" id="wH" role="3clF45">
        <uo k="s:originTrace" v="n:7613853987897909595" />
      </node>
      <node concept="3clFbS" id="wI" role="3clF47">
        <uo k="s:originTrace" v="n:7613853987897909595" />
        <node concept="3cpWs6" id="wK" role="3cqZAp">
          <uo k="s:originTrace" v="n:7613853987897909595" />
          <node concept="35c_gC" id="wL" role="3cqZAk">
            <ref role="35c_gD" to="1i04:6ADPXMKlUuB" resolve="SuperConceptExpression" />
            <uo k="s:originTrace" v="n:7613853987897909595" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="wJ" role="1B3o_S">
        <uo k="s:originTrace" v="n:7613853987897909595" />
      </node>
    </node>
    <node concept="3clFb_" id="vF" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:7613853987897909595" />
      <node concept="37vLTG" id="wM" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:7613853987897909595" />
        <node concept="3Tqbb2" id="wQ" role="1tU5fm">
          <uo k="s:originTrace" v="n:7613853987897909595" />
        </node>
      </node>
      <node concept="3clFbS" id="wN" role="3clF47">
        <uo k="s:originTrace" v="n:7613853987897909595" />
        <node concept="9aQIb" id="wR" role="3cqZAp">
          <uo k="s:originTrace" v="n:7613853987897909595" />
          <node concept="3clFbS" id="wS" role="9aQI4">
            <uo k="s:originTrace" v="n:7613853987897909595" />
            <node concept="3cpWs6" id="wT" role="3cqZAp">
              <uo k="s:originTrace" v="n:7613853987897909595" />
              <node concept="2ShNRf" id="wU" role="3cqZAk">
                <uo k="s:originTrace" v="n:7613853987897909595" />
                <node concept="1pGfFk" id="wV" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:7613853987897909595" />
                  <node concept="2OqwBi" id="wW" role="37wK5m">
                    <uo k="s:originTrace" v="n:7613853987897909595" />
                    <node concept="2OqwBi" id="wY" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:7613853987897909595" />
                      <node concept="liA8E" id="x0" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:7613853987897909595" />
                      </node>
                      <node concept="2JrnkZ" id="x1" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:7613853987897909595" />
                        <node concept="37vLTw" id="x2" role="2JrQYb">
                          <ref role="3cqZAo" node="wM" resolve="argument" />
                          <uo k="s:originTrace" v="n:7613853987897909595" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="wZ" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:7613853987897909595" />
                      <node concept="1rXfSq" id="x3" role="37wK5m">
                        <ref role="37wK5l" node="vE" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:7613853987897909595" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="wX" role="37wK5m">
                    <uo k="s:originTrace" v="n:7613853987897909595" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="wO" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:7613853987897909595" />
      </node>
      <node concept="3Tm1VV" id="wP" role="1B3o_S">
        <uo k="s:originTrace" v="n:7613853987897909595" />
      </node>
    </node>
    <node concept="3clFb_" id="vG" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:7613853987897909595" />
      <node concept="3clFbS" id="x4" role="3clF47">
        <uo k="s:originTrace" v="n:7613853987897909595" />
        <node concept="3cpWs6" id="x7" role="3cqZAp">
          <uo k="s:originTrace" v="n:7613853987897909595" />
          <node concept="3clFbT" id="x8" role="3cqZAk">
            <uo k="s:originTrace" v="n:7613853987897909595" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="x5" role="3clF45">
        <uo k="s:originTrace" v="n:7613853987897909595" />
      </node>
      <node concept="3Tm1VV" id="x6" role="1B3o_S">
        <uo k="s:originTrace" v="n:7613853987897909595" />
      </node>
    </node>
    <node concept="3uibUv" id="vH" role="EKbjA">
      <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:7613853987897909595" />
    </node>
    <node concept="3uibUv" id="vI" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractInferenceRule_Runtime" resolve="AbstractInferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:7613853987897909595" />
    </node>
    <node concept="3Tm1VV" id="vJ" role="1B3o_S">
      <uo k="s:originTrace" v="n:7613853987897909595" />
    </node>
  </node>
  <node concept="312cEu" id="x9">
    <property role="3GE5qa" value="" />
    <property role="TrG5h" value="typeof_SuperNodeExpression_InferenceRule" />
    <uo k="s:originTrace" v="n:1225195239759" />
    <node concept="3clFbW" id="xa" role="jymVt">
      <uo k="s:originTrace" v="n:1225195239759" />
      <node concept="3clFbS" id="xi" role="3clF47">
        <uo k="s:originTrace" v="n:1225195239759" />
      </node>
      <node concept="3Tm1VV" id="xj" role="1B3o_S">
        <uo k="s:originTrace" v="n:1225195239759" />
      </node>
      <node concept="3cqZAl" id="xk" role="3clF45">
        <uo k="s:originTrace" v="n:1225195239759" />
      </node>
    </node>
    <node concept="3clFb_" id="xb" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:1225195239759" />
      <node concept="3cqZAl" id="xl" role="3clF45">
        <uo k="s:originTrace" v="n:1225195239759" />
      </node>
      <node concept="37vLTG" id="xm" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="nodeToCheck" />
        <uo k="s:originTrace" v="n:1225195239759" />
        <node concept="3Tqbb2" id="xr" role="1tU5fm">
          <uo k="s:originTrace" v="n:1225195239759" />
        </node>
      </node>
      <node concept="37vLTG" id="xn" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:1225195239759" />
        <node concept="3uibUv" id="xs" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:1225195239759" />
        </node>
      </node>
      <node concept="37vLTG" id="xo" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:1225195239759" />
        <node concept="3uibUv" id="xt" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:1225195239759" />
        </node>
      </node>
      <node concept="3clFbS" id="xp" role="3clF47">
        <uo k="s:originTrace" v="n:1225195239760" />
        <node concept="3cpWs8" id="xu" role="3cqZAp">
          <uo k="s:originTrace" v="n:1225195239776" />
          <node concept="3cpWsn" id="xw" role="3cpWs9">
            <property role="TrG5h" value="superConcept" />
            <uo k="s:originTrace" v="n:1225195239777" />
            <node concept="3Tqbb2" id="xx" role="1tU5fm">
              <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
              <uo k="s:originTrace" v="n:1225195239778" />
            </node>
            <node concept="2OqwBi" id="xy" role="33vP2m">
              <uo k="s:originTrace" v="n:7448026190102457477" />
              <node concept="37vLTw" id="xz" role="2Oq$k0">
                <ref role="3cqZAo" node="xm" resolve="nodeToCheck" />
                <uo k="s:originTrace" v="n:7448026190102457476" />
              </node>
              <node concept="3zqWPK" id="x$" role="2OqNvi">
                <ref role="37wK5l" to="csvn:2k7p7sTvKkn" resolve="getSuperConcept" />
                <uo k="s:originTrace" v="n:8085146484218860174" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="xv" role="3cqZAp">
          <uo k="s:originTrace" v="n:5527038142168946470" />
          <node concept="2OqwBi" id="x_" role="3clFbw">
            <uo k="s:originTrace" v="n:5212852298298956938" />
            <node concept="3zqWPK" id="xC" role="2OqNvi">
              <ref role="37wK5l" to="csvn:4xnLoJyFYX5" resolve="isEnclosingMethodStatic" />
              <uo k="s:originTrace" v="n:8085146484218860176" />
            </node>
            <node concept="37vLTw" id="xD" role="2Oq$k0">
              <ref role="3cqZAo" node="xm" resolve="nodeToCheck" />
              <uo k="s:originTrace" v="n:5212852298298956504" />
            </node>
          </node>
          <node concept="3clFbS" id="xA" role="3clFbx">
            <uo k="s:originTrace" v="n:5527038142168946472" />
            <node concept="9aQIb" id="xE" role="3cqZAp">
              <uo k="s:originTrace" v="n:5527038142169120625" />
              <node concept="3clFbS" id="xF" role="9aQI4">
                <node concept="3cpWs8" id="xH" role="3cqZAp">
                  <node concept="3cpWsn" id="xK" role="3cpWs9">
                    <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                    <node concept="37vLTw" id="xL" role="33vP2m">
                      <ref role="3cqZAo" node="xm" resolve="nodeToCheck" />
                      <uo k="s:originTrace" v="n:5527038142169115450" />
                      <node concept="6wLe0" id="xN" role="lGtFl">
                        <property role="6wLej" value="5527038142169120625" />
                        <property role="6wLeW" value="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="xM" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="xI" role="3cqZAp">
                  <node concept="3cpWsn" id="xO" role="3cpWs9">
                    <property role="TrG5h" value="_info_12389875345" />
                    <node concept="3uibUv" id="xP" role="1tU5fm">
                      <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                    </node>
                    <node concept="2ShNRf" id="xQ" role="33vP2m">
                      <node concept="1pGfFk" id="xR" role="2ShVmc">
                        <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                        <node concept="37vLTw" id="xS" role="37wK5m">
                          <ref role="3cqZAo" node="xK" resolve="_nodeToCheck_1029348928467" />
                        </node>
                        <node concept="10Nm6u" id="xT" role="37wK5m" />
                        <node concept="Xl_RD" id="xU" role="37wK5m">
                          <property role="Xl_RC" value="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="xV" role="37wK5m">
                          <property role="Xl_RC" value="5527038142169120625" />
                        </node>
                        <node concept="3cmrfG" id="xW" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="10Nm6u" id="xX" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="xJ" role="3cqZAp">
                  <node concept="2OqwBi" id="xY" role="3clFbG">
                    <node concept="3VmV3z" id="xZ" role="2Oq$k0">
                      <property role="3VnrPo" value="typeCheckingContext" />
                      <node concept="3uibUv" id="y1" role="3Vn4Tt">
                        <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                      </node>
                    </node>
                    <node concept="liA8E" id="y0" role="2OqNvi">
                      <ref role="37wK5l" to="u78q:~TypeCheckingContext.createEquation(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createEquation" />
                      <node concept="10QFUN" id="y2" role="37wK5m">
                        <uo k="s:originTrace" v="n:5527038142169120628" />
                        <node concept="3uibUv" id="y5" role="10QFUM">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                        <node concept="2OqwBi" id="y6" role="10QFUP">
                          <uo k="s:originTrace" v="n:5527038142169115307" />
                          <node concept="3VmV3z" id="y7" role="2Oq$k0">
                            <property role="3VnrPo" value="typeCheckingContext" />
                            <node concept="3uibUv" id="ya" role="3Vn4Tt">
                              <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                            </node>
                          </node>
                          <node concept="liA8E" id="y8" role="2OqNvi">
                            <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                            <node concept="3VmV3z" id="yb" role="37wK5m">
                              <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                              <node concept="3uibUv" id="yf" role="3Vn4Tt">
                                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="yc" role="37wK5m">
                              <property role="Xl_RC" value="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
                            </node>
                            <node concept="Xl_RD" id="yd" role="37wK5m">
                              <property role="Xl_RC" value="5527038142169115307" />
                            </node>
                            <node concept="3clFbT" id="ye" role="37wK5m">
                              <property role="3clFbU" value="true" />
                            </node>
                          </node>
                          <node concept="6wLe0" id="y9" role="lGtFl">
                            <property role="6wLej" value="5527038142169115307" />
                            <property role="6wLeW" value="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
                          </node>
                        </node>
                      </node>
                      <node concept="10QFUN" id="y3" role="37wK5m">
                        <uo k="s:originTrace" v="n:5527038142169120919" />
                        <node concept="3uibUv" id="yg" role="10QFUM">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                        <node concept="2c44tf" id="yh" role="10QFUP">
                          <uo k="s:originTrace" v="n:5527038142169120915" />
                          <node concept="3THzug" id="yi" role="2c44tc">
                            <uo k="s:originTrace" v="n:5527038142169120944" />
                            <node concept="2c44tb" id="yj" role="lGtFl">
                              <property role="2qtEX8" value="conceptDeclaraton" />
                              <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1172420572800/1180481110358" />
                              <uo k="s:originTrace" v="n:5527038142169120975" />
                              <node concept="37vLTw" id="yk" role="2c44t1">
                                <ref role="3cqZAo" node="xw" resolve="superConcept" />
                                <uo k="s:originTrace" v="n:5527038142169121044" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="y4" role="37wK5m">
                        <ref role="3cqZAo" node="xO" resolve="_info_12389875345" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="6wLe0" id="xG" role="lGtFl">
                <property role="6wLej" value="5527038142169120625" />
                <property role="6wLeW" value="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="xB" role="9aQIa">
            <uo k="s:originTrace" v="n:5527038142169225923" />
            <node concept="3clFbS" id="yl" role="9aQI4">
              <uo k="s:originTrace" v="n:5527038142169225924" />
              <node concept="9aQIb" id="ym" role="3cqZAp">
                <uo k="s:originTrace" v="n:1225195239813" />
                <node concept="3clFbS" id="yn" role="9aQI4">
                  <node concept="3cpWs8" id="yp" role="3cqZAp">
                    <node concept="3cpWsn" id="ys" role="3cpWs9">
                      <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                      <node concept="37vLTw" id="yt" role="33vP2m">
                        <ref role="3cqZAo" node="xm" resolve="nodeToCheck" />
                        <uo k="s:originTrace" v="n:1225195239816" />
                        <node concept="6wLe0" id="yv" role="lGtFl">
                          <property role="6wLej" value="1225195239813" />
                          <property role="6wLeW" value="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
                        </node>
                      </node>
                      <node concept="3uibUv" id="yu" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="yq" role="3cqZAp">
                    <node concept="3cpWsn" id="yw" role="3cpWs9">
                      <property role="TrG5h" value="_info_12389875345" />
                      <node concept="3uibUv" id="yx" role="1tU5fm">
                        <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                      </node>
                      <node concept="2ShNRf" id="yy" role="33vP2m">
                        <node concept="1pGfFk" id="yz" role="2ShVmc">
                          <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                          <node concept="37vLTw" id="y$" role="37wK5m">
                            <ref role="3cqZAo" node="ys" resolve="_nodeToCheck_1029348928467" />
                          </node>
                          <node concept="10Nm6u" id="y_" role="37wK5m" />
                          <node concept="Xl_RD" id="yA" role="37wK5m">
                            <property role="Xl_RC" value="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
                          </node>
                          <node concept="Xl_RD" id="yB" role="37wK5m">
                            <property role="Xl_RC" value="1225195239813" />
                          </node>
                          <node concept="3cmrfG" id="yC" role="37wK5m">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="10Nm6u" id="yD" role="37wK5m" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="yr" role="3cqZAp">
                    <node concept="2OqwBi" id="yE" role="3clFbG">
                      <node concept="3VmV3z" id="yF" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="yH" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="yG" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.createEquation(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createEquation" />
                        <node concept="10QFUN" id="yI" role="37wK5m">
                          <uo k="s:originTrace" v="n:1225195239814" />
                          <node concept="3uibUv" id="yL" role="10QFUM">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                          <node concept="2OqwBi" id="yM" role="10QFUP">
                            <uo k="s:originTrace" v="n:1225195239815" />
                            <node concept="3VmV3z" id="yN" role="2Oq$k0">
                              <property role="3VnrPo" value="typeCheckingContext" />
                              <node concept="3uibUv" id="yQ" role="3Vn4Tt">
                                <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                              </node>
                            </node>
                            <node concept="liA8E" id="yO" role="2OqNvi">
                              <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                              <node concept="3VmV3z" id="yR" role="37wK5m">
                                <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                                <node concept="3uibUv" id="yV" role="3Vn4Tt">
                                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                </node>
                              </node>
                              <node concept="Xl_RD" id="yS" role="37wK5m">
                                <property role="Xl_RC" value="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
                              </node>
                              <node concept="Xl_RD" id="yT" role="37wK5m">
                                <property role="Xl_RC" value="1225195239815" />
                              </node>
                              <node concept="3clFbT" id="yU" role="37wK5m">
                                <property role="3clFbU" value="true" />
                              </node>
                            </node>
                            <node concept="6wLe0" id="yP" role="lGtFl">
                              <property role="6wLej" value="1225195239815" />
                              <property role="6wLeW" value="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
                            </node>
                          </node>
                        </node>
                        <node concept="10QFUN" id="yJ" role="37wK5m">
                          <uo k="s:originTrace" v="n:1225195239817" />
                          <node concept="3uibUv" id="yW" role="10QFUM">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                          <node concept="2c44tf" id="yX" role="10QFUP">
                            <uo k="s:originTrace" v="n:1225195239818" />
                            <node concept="3Tqbb2" id="yY" role="2c44tc">
                              <ref role="ehGHo" to="1i04:hP3h7Gq" resolve="ConceptBehavior" />
                              <uo k="s:originTrace" v="n:1225195239819" />
                              <node concept="2c44tb" id="yZ" role="lGtFl">
                                <property role="2qtEX8" value="concept" />
                                <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138055754698/1138405853777" />
                                <uo k="s:originTrace" v="n:1225195239820" />
                                <node concept="37vLTw" id="z0" role="2c44t1">
                                  <ref role="3cqZAo" node="xw" resolve="superConcept" />
                                  <uo k="s:originTrace" v="n:4265636116363083641" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="yK" role="37wK5m">
                          <ref role="3cqZAo" node="yw" resolve="_info_12389875345" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="6wLe0" id="yo" role="lGtFl">
                  <property role="6wLej" value="1225195239813" />
                  <property role="6wLeW" value="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="xq" role="1B3o_S">
        <uo k="s:originTrace" v="n:1225195239759" />
      </node>
    </node>
    <node concept="3clFb_" id="xc" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:1225195239759" />
      <node concept="3bZ5Sz" id="z1" role="3clF45">
        <uo k="s:originTrace" v="n:1225195239759" />
      </node>
      <node concept="3clFbS" id="z2" role="3clF47">
        <uo k="s:originTrace" v="n:1225195239759" />
        <node concept="3cpWs6" id="z4" role="3cqZAp">
          <uo k="s:originTrace" v="n:1225195239759" />
          <node concept="35c_gC" id="z5" role="3cqZAk">
            <ref role="35c_gD" to="1i04:hP3iAlo" resolve="SuperNodeExpression" />
            <uo k="s:originTrace" v="n:1225195239759" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="z3" role="1B3o_S">
        <uo k="s:originTrace" v="n:1225195239759" />
      </node>
    </node>
    <node concept="3clFb_" id="xd" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:1225195239759" />
      <node concept="37vLTG" id="z6" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:1225195239759" />
        <node concept="3Tqbb2" id="za" role="1tU5fm">
          <uo k="s:originTrace" v="n:1225195239759" />
        </node>
      </node>
      <node concept="3clFbS" id="z7" role="3clF47">
        <uo k="s:originTrace" v="n:1225195239759" />
        <node concept="9aQIb" id="zb" role="3cqZAp">
          <uo k="s:originTrace" v="n:1225195239759" />
          <node concept="3clFbS" id="zc" role="9aQI4">
            <uo k="s:originTrace" v="n:1225195239759" />
            <node concept="3cpWs6" id="zd" role="3cqZAp">
              <uo k="s:originTrace" v="n:1225195239759" />
              <node concept="2ShNRf" id="ze" role="3cqZAk">
                <uo k="s:originTrace" v="n:1225195239759" />
                <node concept="1pGfFk" id="zf" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:1225195239759" />
                  <node concept="2OqwBi" id="zg" role="37wK5m">
                    <uo k="s:originTrace" v="n:1225195239759" />
                    <node concept="2OqwBi" id="zi" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:1225195239759" />
                      <node concept="liA8E" id="zk" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:1225195239759" />
                      </node>
                      <node concept="2JrnkZ" id="zl" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:1225195239759" />
                        <node concept="37vLTw" id="zm" role="2JrQYb">
                          <ref role="3cqZAo" node="z6" resolve="argument" />
                          <uo k="s:originTrace" v="n:1225195239759" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="zj" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:1225195239759" />
                      <node concept="1rXfSq" id="zn" role="37wK5m">
                        <ref role="37wK5l" node="xc" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:1225195239759" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="zh" role="37wK5m">
                    <uo k="s:originTrace" v="n:1225195239759" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="z8" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:1225195239759" />
      </node>
      <node concept="3Tm1VV" id="z9" role="1B3o_S">
        <uo k="s:originTrace" v="n:1225195239759" />
      </node>
    </node>
    <node concept="3clFb_" id="xe" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:1225195239759" />
      <node concept="3clFbS" id="zo" role="3clF47">
        <uo k="s:originTrace" v="n:1225195239759" />
        <node concept="3cpWs6" id="zr" role="3cqZAp">
          <uo k="s:originTrace" v="n:1225195239759" />
          <node concept="3clFbT" id="zs" role="3cqZAk">
            <uo k="s:originTrace" v="n:1225195239759" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="zp" role="3clF45">
        <uo k="s:originTrace" v="n:1225195239759" />
      </node>
      <node concept="3Tm1VV" id="zq" role="1B3o_S">
        <uo k="s:originTrace" v="n:1225195239759" />
      </node>
    </node>
    <node concept="3uibUv" id="xf" role="EKbjA">
      <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:1225195239759" />
    </node>
    <node concept="3uibUv" id="xg" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractInferenceRule_Runtime" resolve="AbstractInferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:1225195239759" />
    </node>
    <node concept="3Tm1VV" id="xh" role="1B3o_S">
      <uo k="s:originTrace" v="n:1225195239759" />
    </node>
  </node>
  <node concept="312cEu" id="zt">
    <property role="TrG5h" value="typeof_ThisConceptExpression_InferenceRule" />
    <uo k="s:originTrace" v="n:1703835097132691941" />
    <node concept="3clFbW" id="zu" role="jymVt">
      <uo k="s:originTrace" v="n:1703835097132691941" />
      <node concept="3clFbS" id="zA" role="3clF47">
        <uo k="s:originTrace" v="n:1703835097132691941" />
      </node>
      <node concept="3Tm1VV" id="zB" role="1B3o_S">
        <uo k="s:originTrace" v="n:1703835097132691941" />
      </node>
      <node concept="3cqZAl" id="zC" role="3clF45">
        <uo k="s:originTrace" v="n:1703835097132691941" />
      </node>
    </node>
    <node concept="3clFb_" id="zv" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:1703835097132691941" />
      <node concept="3cqZAl" id="zD" role="3clF45">
        <uo k="s:originTrace" v="n:1703835097132691941" />
      </node>
      <node concept="37vLTG" id="zE" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="thisConceptExpression" />
        <uo k="s:originTrace" v="n:1703835097132691941" />
        <node concept="3Tqbb2" id="zJ" role="1tU5fm">
          <uo k="s:originTrace" v="n:1703835097132691941" />
        </node>
      </node>
      <node concept="37vLTG" id="zF" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:1703835097132691941" />
        <node concept="3uibUv" id="zK" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:1703835097132691941" />
        </node>
      </node>
      <node concept="37vLTG" id="zG" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:1703835097132691941" />
        <node concept="3uibUv" id="zL" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:1703835097132691941" />
        </node>
      </node>
      <node concept="3clFbS" id="zH" role="3clF47">
        <uo k="s:originTrace" v="n:1703835097132691942" />
        <node concept="3cpWs8" id="zM" role="3cqZAp">
          <uo k="s:originTrace" v="n:1703835097132693643" />
          <node concept="3cpWsn" id="zO" role="3cpWs9">
            <property role="TrG5h" value="behaviour" />
            <uo k="s:originTrace" v="n:1703835097132693644" />
            <node concept="3Tqbb2" id="zP" role="1tU5fm">
              <ref role="ehGHo" to="1i04:hP3h7Gq" resolve="ConceptBehavior" />
              <uo k="s:originTrace" v="n:1703835097132693645" />
            </node>
            <node concept="2OqwBi" id="zQ" role="33vP2m">
              <uo k="s:originTrace" v="n:1703835097132693646" />
              <node concept="37vLTw" id="zR" role="2Oq$k0">
                <ref role="3cqZAo" node="zE" resolve="thisConceptExpression" />
                <uo k="s:originTrace" v="n:3315822782146987112" />
              </node>
              <node concept="2Xjw5R" id="zS" role="2OqNvi">
                <uo k="s:originTrace" v="n:1703835097132693648" />
                <node concept="1xMEDy" id="zT" role="1xVPHs">
                  <uo k="s:originTrace" v="n:1703835097132693649" />
                  <node concept="chp4Y" id="zV" role="ri$Ld">
                    <ref role="cht4Q" to="1i04:hP3h7Gq" resolve="ConceptBehavior" />
                    <uo k="s:originTrace" v="n:1703835097132693650" />
                  </node>
                </node>
                <node concept="1xIGOp" id="zU" role="1xVPHs">
                  <uo k="s:originTrace" v="n:1703835097132693651" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="zN" role="3cqZAp">
          <uo k="s:originTrace" v="n:1703835097132692854" />
          <node concept="3clFbS" id="zW" role="9aQI4">
            <node concept="3cpWs8" id="zY" role="3cqZAp">
              <node concept="3cpWsn" id="$1" role="3cpWs9">
                <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                <node concept="37vLTw" id="$2" role="33vP2m">
                  <ref role="3cqZAo" node="zE" resolve="thisConceptExpression" />
                  <uo k="s:originTrace" v="n:1703835097132693314" />
                  <node concept="6wLe0" id="$4" role="lGtFl">
                    <property role="6wLej" value="1703835097132692854" />
                    <property role="6wLeW" value="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
                  </node>
                </node>
                <node concept="3uibUv" id="$3" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="zZ" role="3cqZAp">
              <node concept="3cpWsn" id="$5" role="3cpWs9">
                <property role="TrG5h" value="_info_12389875345" />
                <node concept="3uibUv" id="$6" role="1tU5fm">
                  <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                </node>
                <node concept="2ShNRf" id="$7" role="33vP2m">
                  <node concept="1pGfFk" id="$8" role="2ShVmc">
                    <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                    <node concept="37vLTw" id="$9" role="37wK5m">
                      <ref role="3cqZAo" node="$1" resolve="_nodeToCheck_1029348928467" />
                    </node>
                    <node concept="10Nm6u" id="$a" role="37wK5m" />
                    <node concept="Xl_RD" id="$b" role="37wK5m">
                      <property role="Xl_RC" value="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
                    </node>
                    <node concept="Xl_RD" id="$c" role="37wK5m">
                      <property role="Xl_RC" value="1703835097132692854" />
                    </node>
                    <node concept="3cmrfG" id="$d" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="10Nm6u" id="$e" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="$0" role="3cqZAp">
              <node concept="2OqwBi" id="$f" role="3clFbG">
                <node concept="3VmV3z" id="$g" role="2Oq$k0">
                  <property role="3VnrPo" value="typeCheckingContext" />
                  <node concept="3uibUv" id="$i" role="3Vn4Tt">
                    <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                  </node>
                </node>
                <node concept="liA8E" id="$h" role="2OqNvi">
                  <ref role="37wK5l" to="u78q:~TypeCheckingContext.createEquation(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createEquation" />
                  <node concept="10QFUN" id="$j" role="37wK5m">
                    <uo k="s:originTrace" v="n:1703835097132692855" />
                    <node concept="3uibUv" id="$m" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="$n" role="10QFUP">
                      <uo k="s:originTrace" v="n:1703835097132692856" />
                      <node concept="3VmV3z" id="$o" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="$r" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="$p" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                        <node concept="3VmV3z" id="$s" role="37wK5m">
                          <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                          <node concept="3uibUv" id="$w" role="3Vn4Tt">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="$t" role="37wK5m">
                          <property role="Xl_RC" value="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="$u" role="37wK5m">
                          <property role="Xl_RC" value="1703835097132692856" />
                        </node>
                        <node concept="3clFbT" id="$v" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                      <node concept="6wLe0" id="$q" role="lGtFl">
                        <property role="6wLej" value="1703835097132692856" />
                        <property role="6wLeW" value="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
                      </node>
                    </node>
                  </node>
                  <node concept="10QFUN" id="$k" role="37wK5m">
                    <uo k="s:originTrace" v="n:1703835097132692858" />
                    <node concept="3uibUv" id="$x" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2c44tf" id="$y" role="10QFUP">
                      <uo k="s:originTrace" v="n:1703835097132692859" />
                      <node concept="3bZ5Sz" id="$z" role="2c44tc">
                        <ref role="3bZ5Sy" to="tpck:gw2VY9q" resolve="BaseConcept" />
                        <uo k="s:originTrace" v="n:1703835097132694374" />
                        <node concept="2c44tb" id="$$" role="lGtFl">
                          <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/6677504323281689838/6677504323281689839" />
                          <property role="2qtEX8" value="conceptDeclaraton" />
                          <uo k="s:originTrace" v="n:1703835097132694508" />
                          <node concept="2OqwBi" id="$_" role="2c44t1">
                            <uo k="s:originTrace" v="n:1703835097132692862" />
                            <node concept="3TrEf2" id="$A" role="2OqNvi">
                              <ref role="3Tt5mk" to="1i04:hP3h7Gv" resolve="concept" />
                              <uo k="s:originTrace" v="n:1703835097132692863" />
                            </node>
                            <node concept="37vLTw" id="$B" role="2Oq$k0">
                              <ref role="3cqZAo" node="zO" resolve="behaviour" />
                              <uo k="s:originTrace" v="n:1703835097132693779" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="$l" role="37wK5m">
                    <ref role="3cqZAo" node="$5" resolve="_info_12389875345" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="6wLe0" id="zX" role="lGtFl">
            <property role="6wLej" value="1703835097132692854" />
            <property role="6wLeW" value="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="zI" role="1B3o_S">
        <uo k="s:originTrace" v="n:1703835097132691941" />
      </node>
    </node>
    <node concept="3clFb_" id="zw" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:1703835097132691941" />
      <node concept="3bZ5Sz" id="$C" role="3clF45">
        <uo k="s:originTrace" v="n:1703835097132691941" />
      </node>
      <node concept="3clFbS" id="$D" role="3clF47">
        <uo k="s:originTrace" v="n:1703835097132691941" />
        <node concept="3cpWs6" id="$F" role="3cqZAp">
          <uo k="s:originTrace" v="n:1703835097132691941" />
          <node concept="35c_gC" id="$G" role="3cqZAk">
            <ref role="35c_gD" to="1i04:1u_ffTorqp2" resolve="ThisConceptExpression" />
            <uo k="s:originTrace" v="n:1703835097132691941" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="$E" role="1B3o_S">
        <uo k="s:originTrace" v="n:1703835097132691941" />
      </node>
    </node>
    <node concept="3clFb_" id="zx" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:1703835097132691941" />
      <node concept="37vLTG" id="$H" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:1703835097132691941" />
        <node concept="3Tqbb2" id="$L" role="1tU5fm">
          <uo k="s:originTrace" v="n:1703835097132691941" />
        </node>
      </node>
      <node concept="3clFbS" id="$I" role="3clF47">
        <uo k="s:originTrace" v="n:1703835097132691941" />
        <node concept="9aQIb" id="$M" role="3cqZAp">
          <uo k="s:originTrace" v="n:1703835097132691941" />
          <node concept="3clFbS" id="$N" role="9aQI4">
            <uo k="s:originTrace" v="n:1703835097132691941" />
            <node concept="3cpWs6" id="$O" role="3cqZAp">
              <uo k="s:originTrace" v="n:1703835097132691941" />
              <node concept="2ShNRf" id="$P" role="3cqZAk">
                <uo k="s:originTrace" v="n:1703835097132691941" />
                <node concept="1pGfFk" id="$Q" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:1703835097132691941" />
                  <node concept="2OqwBi" id="$R" role="37wK5m">
                    <uo k="s:originTrace" v="n:1703835097132691941" />
                    <node concept="2OqwBi" id="$T" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:1703835097132691941" />
                      <node concept="liA8E" id="$V" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:1703835097132691941" />
                      </node>
                      <node concept="2JrnkZ" id="$W" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:1703835097132691941" />
                        <node concept="37vLTw" id="$X" role="2JrQYb">
                          <ref role="3cqZAo" node="$H" resolve="argument" />
                          <uo k="s:originTrace" v="n:1703835097132691941" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="$U" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:1703835097132691941" />
                      <node concept="1rXfSq" id="$Y" role="37wK5m">
                        <ref role="37wK5l" node="zw" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:1703835097132691941" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="$S" role="37wK5m">
                    <uo k="s:originTrace" v="n:1703835097132691941" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="$J" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:1703835097132691941" />
      </node>
      <node concept="3Tm1VV" id="$K" role="1B3o_S">
        <uo k="s:originTrace" v="n:1703835097132691941" />
      </node>
    </node>
    <node concept="3clFb_" id="zy" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:1703835097132691941" />
      <node concept="3clFbS" id="$Z" role="3clF47">
        <uo k="s:originTrace" v="n:1703835097132691941" />
        <node concept="3cpWs6" id="_2" role="3cqZAp">
          <uo k="s:originTrace" v="n:1703835097132691941" />
          <node concept="3clFbT" id="_3" role="3cqZAk">
            <uo k="s:originTrace" v="n:1703835097132691941" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="_0" role="3clF45">
        <uo k="s:originTrace" v="n:1703835097132691941" />
      </node>
      <node concept="3Tm1VV" id="_1" role="1B3o_S">
        <uo k="s:originTrace" v="n:1703835097132691941" />
      </node>
    </node>
    <node concept="3uibUv" id="zz" role="EKbjA">
      <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:1703835097132691941" />
    </node>
    <node concept="3uibUv" id="z$" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractInferenceRule_Runtime" resolve="AbstractInferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:1703835097132691941" />
    </node>
    <node concept="3Tm1VV" id="z_" role="1B3o_S">
      <uo k="s:originTrace" v="n:1703835097132691941" />
    </node>
  </node>
  <node concept="312cEu" id="_4">
    <property role="3GE5qa" value="" />
    <property role="TrG5h" value="typeof_ThisNodeExpression_InferenceRule" />
    <uo k="s:originTrace" v="n:1225196556158" />
    <node concept="3clFbW" id="_5" role="jymVt">
      <uo k="s:originTrace" v="n:1225196556158" />
      <node concept="3clFbS" id="_d" role="3clF47">
        <uo k="s:originTrace" v="n:1225196556158" />
      </node>
      <node concept="3Tm1VV" id="_e" role="1B3o_S">
        <uo k="s:originTrace" v="n:1225196556158" />
      </node>
      <node concept="3cqZAl" id="_f" role="3clF45">
        <uo k="s:originTrace" v="n:1225196556158" />
      </node>
    </node>
    <node concept="3clFb_" id="_6" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:1225196556158" />
      <node concept="3cqZAl" id="_g" role="3clF45">
        <uo k="s:originTrace" v="n:1225196556158" />
      </node>
      <node concept="37vLTG" id="_h" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="thisNode" />
        <uo k="s:originTrace" v="n:1225196556158" />
        <node concept="3Tqbb2" id="_m" role="1tU5fm">
          <uo k="s:originTrace" v="n:1225196556158" />
        </node>
      </node>
      <node concept="37vLTG" id="_i" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:1225196556158" />
        <node concept="3uibUv" id="_n" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:1225196556158" />
        </node>
      </node>
      <node concept="37vLTG" id="_j" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:1225196556158" />
        <node concept="3uibUv" id="_o" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:1225196556158" />
        </node>
      </node>
      <node concept="3clFbS" id="_k" role="3clF47">
        <uo k="s:originTrace" v="n:1225196556159" />
        <node concept="3cpWs8" id="_p" role="3cqZAp">
          <uo k="s:originTrace" v="n:1225196556160" />
          <node concept="3cpWsn" id="_s" role="3cpWs9">
            <property role="TrG5h" value="behaviour" />
            <uo k="s:originTrace" v="n:1225196556161" />
            <node concept="3Tqbb2" id="_t" role="1tU5fm">
              <ref role="ehGHo" to="1i04:hP3h7Gq" resolve="ConceptBehavior" />
              <uo k="s:originTrace" v="n:1225196556162" />
            </node>
            <node concept="2OqwBi" id="_u" role="33vP2m">
              <uo k="s:originTrace" v="n:1225196556163" />
              <node concept="37vLTw" id="_v" role="2Oq$k0">
                <ref role="3cqZAo" node="_h" resolve="thisNode" />
                <uo k="s:originTrace" v="n:1225196556164" />
              </node>
              <node concept="2Xjw5R" id="_w" role="2OqNvi">
                <uo k="s:originTrace" v="n:1225196556165" />
                <node concept="1xMEDy" id="_x" role="1xVPHs">
                  <uo k="s:originTrace" v="n:1225196556166" />
                  <node concept="chp4Y" id="_z" role="ri$Ld">
                    <ref role="cht4Q" to="1i04:hP3h7Gq" resolve="ConceptBehavior" />
                    <uo k="s:originTrace" v="n:1225196556167" />
                  </node>
                </node>
                <node concept="1xIGOp" id="_y" role="1xVPHs">
                  <uo k="s:originTrace" v="n:1225196556168" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="_q" role="3cqZAp">
          <uo k="s:originTrace" v="n:113798979053126540" />
          <node concept="3cpWsn" id="_$" role="3cpWs9">
            <property role="TrG5h" value="method" />
            <uo k="s:originTrace" v="n:113798979053126543" />
            <node concept="2OqwBi" id="__" role="33vP2m">
              <uo k="s:originTrace" v="n:113798979053127228" />
              <node concept="2Xjw5R" id="_B" role="2OqNvi">
                <uo k="s:originTrace" v="n:113798979053134021" />
                <node concept="1xMEDy" id="_D" role="1xVPHs">
                  <uo k="s:originTrace" v="n:113798979053134023" />
                  <node concept="chp4Y" id="_E" role="ri$Ld">
                    <ref role="cht4Q" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
                    <uo k="s:originTrace" v="n:113798979053134034" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="_C" role="2Oq$k0">
                <ref role="3cqZAo" node="_h" resolve="thisNode" />
                <uo k="s:originTrace" v="n:113798979053126698" />
              </node>
            </node>
            <node concept="3Tqbb2" id="_A" role="1tU5fm">
              <ref role="ehGHo" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
              <uo k="s:originTrace" v="n:113798979053126538" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="_r" role="3cqZAp">
          <uo k="s:originTrace" v="n:113798979053134322" />
          <node concept="2OqwBi" id="_F" role="3clFbw">
            <uo k="s:originTrace" v="n:113798979053135862" />
            <node concept="3TrcHB" id="_I" role="2OqNvi">
              <ref role="3TsBF5" to="1i04:55xfRZxar9d" resolve="isStatic" />
              <uo k="s:originTrace" v="n:113798979053163879" />
            </node>
            <node concept="37vLTw" id="_J" role="2Oq$k0">
              <ref role="3cqZAo" node="_$" resolve="method" />
              <uo k="s:originTrace" v="n:113798979053134368" />
            </node>
          </node>
          <node concept="3clFbS" id="_G" role="3clFbx">
            <uo k="s:originTrace" v="n:113798979053134324" />
            <node concept="9aQIb" id="_K" role="3cqZAp">
              <uo k="s:originTrace" v="n:113798979053291868" />
              <node concept="3clFbS" id="_L" role="9aQI4">
                <node concept="3cpWs8" id="_N" role="3cqZAp">
                  <node concept="3cpWsn" id="_Q" role="3cpWs9">
                    <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                    <node concept="37vLTw" id="_R" role="33vP2m">
                      <ref role="3cqZAo" node="_h" resolve="thisNode" />
                      <uo k="s:originTrace" v="n:113798979053291871" />
                      <node concept="6wLe0" id="_T" role="lGtFl">
                        <property role="6wLej" value="113798979053291868" />
                        <property role="6wLeW" value="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="_S" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="_O" role="3cqZAp">
                  <node concept="3cpWsn" id="_U" role="3cpWs9">
                    <property role="TrG5h" value="_info_12389875345" />
                    <node concept="3uibUv" id="_V" role="1tU5fm">
                      <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                    </node>
                    <node concept="2ShNRf" id="_W" role="33vP2m">
                      <node concept="1pGfFk" id="_X" role="2ShVmc">
                        <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                        <node concept="37vLTw" id="_Y" role="37wK5m">
                          <ref role="3cqZAo" node="_Q" resolve="_nodeToCheck_1029348928467" />
                        </node>
                        <node concept="10Nm6u" id="_Z" role="37wK5m" />
                        <node concept="Xl_RD" id="A0" role="37wK5m">
                          <property role="Xl_RC" value="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="A1" role="37wK5m">
                          <property role="Xl_RC" value="113798979053291868" />
                        </node>
                        <node concept="3cmrfG" id="A2" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="10Nm6u" id="A3" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="_P" role="3cqZAp">
                  <node concept="2OqwBi" id="A4" role="3clFbG">
                    <node concept="3VmV3z" id="A5" role="2Oq$k0">
                      <property role="3VnrPo" value="typeCheckingContext" />
                      <node concept="3uibUv" id="A7" role="3Vn4Tt">
                        <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                      </node>
                    </node>
                    <node concept="liA8E" id="A6" role="2OqNvi">
                      <ref role="37wK5l" to="u78q:~TypeCheckingContext.createEquation(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createEquation" />
                      <node concept="10QFUN" id="A8" role="37wK5m">
                        <uo k="s:originTrace" v="n:113798979053291869" />
                        <node concept="3uibUv" id="Ab" role="10QFUM">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                        <node concept="2OqwBi" id="Ac" role="10QFUP">
                          <uo k="s:originTrace" v="n:113798979053291870" />
                          <node concept="3VmV3z" id="Ad" role="2Oq$k0">
                            <property role="3VnrPo" value="typeCheckingContext" />
                            <node concept="3uibUv" id="Ag" role="3Vn4Tt">
                              <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                            </node>
                          </node>
                          <node concept="liA8E" id="Ae" role="2OqNvi">
                            <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                            <node concept="3VmV3z" id="Ah" role="37wK5m">
                              <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                              <node concept="3uibUv" id="Al" role="3Vn4Tt">
                                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="Ai" role="37wK5m">
                              <property role="Xl_RC" value="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
                            </node>
                            <node concept="Xl_RD" id="Aj" role="37wK5m">
                              <property role="Xl_RC" value="113798979053291870" />
                            </node>
                            <node concept="3clFbT" id="Ak" role="37wK5m">
                              <property role="3clFbU" value="true" />
                            </node>
                          </node>
                          <node concept="6wLe0" id="Af" role="lGtFl">
                            <property role="6wLej" value="113798979053291870" />
                            <property role="6wLeW" value="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
                          </node>
                        </node>
                      </node>
                      <node concept="10QFUN" id="A9" role="37wK5m">
                        <uo k="s:originTrace" v="n:113798979053291872" />
                        <node concept="3uibUv" id="Am" role="10QFUM">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                        <node concept="2c44tf" id="An" role="10QFUP">
                          <uo k="s:originTrace" v="n:113798979053291873" />
                          <node concept="3THzug" id="Ao" role="2c44tc">
                            <uo k="s:originTrace" v="n:113798979053355190" />
                            <node concept="2c44tb" id="Ap" role="lGtFl">
                              <property role="2qtEX8" value="conceptDeclaraton" />
                              <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1172420572800/1180481110358" />
                              <uo k="s:originTrace" v="n:113798979053355199" />
                              <node concept="2OqwBi" id="Aq" role="2c44t1">
                                <uo k="s:originTrace" v="n:113798979053355897" />
                                <node concept="3TrEf2" id="Ar" role="2OqNvi">
                                  <ref role="3Tt5mk" to="1i04:hP3h7Gv" resolve="concept" />
                                  <uo k="s:originTrace" v="n:113798979053366710" />
                                </node>
                                <node concept="37vLTw" id="As" role="2Oq$k0">
                                  <ref role="3cqZAo" node="_s" resolve="behaviour" />
                                  <uo k="s:originTrace" v="n:113798979053355217" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="Aa" role="37wK5m">
                        <ref role="3cqZAo" node="_U" resolve="_info_12389875345" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="6wLe0" id="_M" role="lGtFl">
                <property role="6wLej" value="113798979053291868" />
                <property role="6wLeW" value="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="_H" role="9aQIa">
            <uo k="s:originTrace" v="n:113798979053290431" />
            <node concept="3clFbS" id="At" role="9aQI4">
              <uo k="s:originTrace" v="n:113798979053290432" />
              <node concept="9aQIb" id="Au" role="3cqZAp">
                <uo k="s:originTrace" v="n:1225196556169" />
                <node concept="3clFbS" id="Av" role="9aQI4">
                  <node concept="3cpWs8" id="Ax" role="3cqZAp">
                    <node concept="3cpWsn" id="A$" role="3cpWs9">
                      <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                      <node concept="37vLTw" id="A_" role="33vP2m">
                        <ref role="3cqZAo" node="_h" resolve="thisNode" />
                        <uo k="s:originTrace" v="n:1225196556172" />
                        <node concept="6wLe0" id="AB" role="lGtFl">
                          <property role="6wLej" value="1225196556169" />
                          <property role="6wLeW" value="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
                        </node>
                      </node>
                      <node concept="3uibUv" id="AA" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="Ay" role="3cqZAp">
                    <node concept="3cpWsn" id="AC" role="3cpWs9">
                      <property role="TrG5h" value="_info_12389875345" />
                      <node concept="3uibUv" id="AD" role="1tU5fm">
                        <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                      </node>
                      <node concept="2ShNRf" id="AE" role="33vP2m">
                        <node concept="1pGfFk" id="AF" role="2ShVmc">
                          <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                          <node concept="37vLTw" id="AG" role="37wK5m">
                            <ref role="3cqZAo" node="A$" resolve="_nodeToCheck_1029348928467" />
                          </node>
                          <node concept="10Nm6u" id="AH" role="37wK5m" />
                          <node concept="Xl_RD" id="AI" role="37wK5m">
                            <property role="Xl_RC" value="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
                          </node>
                          <node concept="Xl_RD" id="AJ" role="37wK5m">
                            <property role="Xl_RC" value="1225196556169" />
                          </node>
                          <node concept="3cmrfG" id="AK" role="37wK5m">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="10Nm6u" id="AL" role="37wK5m" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="Az" role="3cqZAp">
                    <node concept="2OqwBi" id="AM" role="3clFbG">
                      <node concept="3VmV3z" id="AN" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="AP" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="AO" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.createEquation(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createEquation" />
                        <node concept="10QFUN" id="AQ" role="37wK5m">
                          <uo k="s:originTrace" v="n:1225196556170" />
                          <node concept="3uibUv" id="AT" role="10QFUM">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                          <node concept="2OqwBi" id="AU" role="10QFUP">
                            <uo k="s:originTrace" v="n:1225196556171" />
                            <node concept="3VmV3z" id="AV" role="2Oq$k0">
                              <property role="3VnrPo" value="typeCheckingContext" />
                              <node concept="3uibUv" id="AY" role="3Vn4Tt">
                                <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                              </node>
                            </node>
                            <node concept="liA8E" id="AW" role="2OqNvi">
                              <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                              <node concept="3VmV3z" id="AZ" role="37wK5m">
                                <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                                <node concept="3uibUv" id="B3" role="3Vn4Tt">
                                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                </node>
                              </node>
                              <node concept="Xl_RD" id="B0" role="37wK5m">
                                <property role="Xl_RC" value="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
                              </node>
                              <node concept="Xl_RD" id="B1" role="37wK5m">
                                <property role="Xl_RC" value="1225196556171" />
                              </node>
                              <node concept="3clFbT" id="B2" role="37wK5m">
                                <property role="3clFbU" value="true" />
                              </node>
                            </node>
                            <node concept="6wLe0" id="AX" role="lGtFl">
                              <property role="6wLej" value="1225196556171" />
                              <property role="6wLeW" value="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
                            </node>
                          </node>
                        </node>
                        <node concept="10QFUN" id="AR" role="37wK5m">
                          <uo k="s:originTrace" v="n:1225196556173" />
                          <node concept="3uibUv" id="B4" role="10QFUM">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                          <node concept="2c44tf" id="B5" role="10QFUP">
                            <uo k="s:originTrace" v="n:1225196556174" />
                            <node concept="3Tqbb2" id="B6" role="2c44tc">
                              <ref role="ehGHo" to="1i04:hP3h7Gq" resolve="ConceptBehavior" />
                              <uo k="s:originTrace" v="n:1225196556175" />
                              <node concept="2c44tb" id="B7" role="lGtFl">
                                <property role="2qtEX8" value="concept" />
                                <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138055754698/1138405853777" />
                                <uo k="s:originTrace" v="n:1225196556176" />
                                <node concept="2OqwBi" id="B8" role="2c44t1">
                                  <uo k="s:originTrace" v="n:1225196556177" />
                                  <node concept="37vLTw" id="B9" role="2Oq$k0">
                                    <ref role="3cqZAo" node="_s" resolve="behaviour" />
                                    <uo k="s:originTrace" v="n:4265636116363092842" />
                                  </node>
                                  <node concept="3TrEf2" id="Ba" role="2OqNvi">
                                    <ref role="3Tt5mk" to="1i04:hP3h7Gv" resolve="concept" />
                                    <uo k="s:originTrace" v="n:1225196556179" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="AS" role="37wK5m">
                          <ref role="3cqZAo" node="AC" resolve="_info_12389875345" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="6wLe0" id="Aw" role="lGtFl">
                  <property role="6wLej" value="1225196556169" />
                  <property role="6wLeW" value="r:f7f8a091-d98d-402d-85c4-5f05cb2b8c61(jetbrains.mps.lang.behavior.typesystem)" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="_l" role="1B3o_S">
        <uo k="s:originTrace" v="n:1225196556158" />
      </node>
    </node>
    <node concept="3clFb_" id="_7" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:1225196556158" />
      <node concept="3bZ5Sz" id="Bb" role="3clF45">
        <uo k="s:originTrace" v="n:1225196556158" />
      </node>
      <node concept="3clFbS" id="Bc" role="3clF47">
        <uo k="s:originTrace" v="n:1225196556158" />
        <node concept="3cpWs6" id="Be" role="3cqZAp">
          <uo k="s:originTrace" v="n:1225196556158" />
          <node concept="35c_gC" id="Bf" role="3cqZAk">
            <ref role="35c_gD" to="1i04:hP3iPJx" resolve="ThisNodeExpression" />
            <uo k="s:originTrace" v="n:1225196556158" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="Bd" role="1B3o_S">
        <uo k="s:originTrace" v="n:1225196556158" />
      </node>
    </node>
    <node concept="3clFb_" id="_8" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:1225196556158" />
      <node concept="37vLTG" id="Bg" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:1225196556158" />
        <node concept="3Tqbb2" id="Bk" role="1tU5fm">
          <uo k="s:originTrace" v="n:1225196556158" />
        </node>
      </node>
      <node concept="3clFbS" id="Bh" role="3clF47">
        <uo k="s:originTrace" v="n:1225196556158" />
        <node concept="9aQIb" id="Bl" role="3cqZAp">
          <uo k="s:originTrace" v="n:1225196556158" />
          <node concept="3clFbS" id="Bm" role="9aQI4">
            <uo k="s:originTrace" v="n:1225196556158" />
            <node concept="3cpWs6" id="Bn" role="3cqZAp">
              <uo k="s:originTrace" v="n:1225196556158" />
              <node concept="2ShNRf" id="Bo" role="3cqZAk">
                <uo k="s:originTrace" v="n:1225196556158" />
                <node concept="1pGfFk" id="Bp" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:1225196556158" />
                  <node concept="2OqwBi" id="Bq" role="37wK5m">
                    <uo k="s:originTrace" v="n:1225196556158" />
                    <node concept="2OqwBi" id="Bs" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:1225196556158" />
                      <node concept="liA8E" id="Bu" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:1225196556158" />
                      </node>
                      <node concept="2JrnkZ" id="Bv" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:1225196556158" />
                        <node concept="37vLTw" id="Bw" role="2JrQYb">
                          <ref role="3cqZAo" node="Bg" resolve="argument" />
                          <uo k="s:originTrace" v="n:1225196556158" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="Bt" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:1225196556158" />
                      <node concept="1rXfSq" id="Bx" role="37wK5m">
                        <ref role="37wK5l" node="_7" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:1225196556158" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="Br" role="37wK5m">
                    <uo k="s:originTrace" v="n:1225196556158" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="Bi" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:1225196556158" />
      </node>
      <node concept="3Tm1VV" id="Bj" role="1B3o_S">
        <uo k="s:originTrace" v="n:1225196556158" />
      </node>
    </node>
    <node concept="3clFb_" id="_9" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:1225196556158" />
      <node concept="3clFbS" id="By" role="3clF47">
        <uo k="s:originTrace" v="n:1225196556158" />
        <node concept="3cpWs6" id="B_" role="3cqZAp">
          <uo k="s:originTrace" v="n:1225196556158" />
          <node concept="3clFbT" id="BA" role="3cqZAk">
            <uo k="s:originTrace" v="n:1225196556158" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="Bz" role="3clF45">
        <uo k="s:originTrace" v="n:1225196556158" />
      </node>
      <node concept="3Tm1VV" id="B$" role="1B3o_S">
        <uo k="s:originTrace" v="n:1225196556158" />
      </node>
    </node>
    <node concept="3uibUv" id="_a" role="EKbjA">
      <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:1225196556158" />
    </node>
    <node concept="3uibUv" id="_b" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractInferenceRule_Runtime" resolve="AbstractInferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:1225196556158" />
    </node>
    <node concept="3Tm1VV" id="_c" role="1B3o_S">
      <uo k="s:originTrace" v="n:1225196556158" />
    </node>
  </node>
</model>

