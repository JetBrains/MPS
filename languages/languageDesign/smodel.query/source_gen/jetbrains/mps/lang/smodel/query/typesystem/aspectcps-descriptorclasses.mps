<?xml version="1.0" encoding="UTF-8"?>
<model ref="00000000-0000-4000-5f02-5beb5f025beb/i:febbff1(checkpoints/jetbrains.mps.lang.smodel.query.typesystem@descriptorclasses)">
  <persistence version="9" />
  <attribute name="checkpoint" value="DescriptorClasses" />
  <attribute name="generation-plan" value="AspectCPS" />
  <attribute name="user-objects" value="true" />
  <languages />
  <imports>
    <import index="wig6" ref="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
    <import index="3xdn" ref="r:935ba0ee-7291-4caa-a807-d76e8fc69391(jetbrains.mps.lang.smodel.query.structure)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="tp25" ref="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" />
    <import index="2gg1" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.errors(MPS.Core/)" />
    <import index="qurh" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.lang.typesystem.runtime(MPS.Core/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="u78q" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.typesystem.inference(MPS.Core/)" />
    <import index="zavc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.errors.messageTargets(MPS.Core/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
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
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
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
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
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
      <concept id="1171903916106" name="jetbrains.mps.baseLanguage.structure.UpperBoundType" flags="in" index="3qUE_q">
        <child id="1171903916107" name="bound" index="3qUE_r" />
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
      <concept id="1204834851141" name="jetbrains.mps.lang.smodel.structure.PoundExpression" flags="ng" index="25Kdxt">
        <child id="1204834868751" name="expression" index="25KhWn" />
      </concept>
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="8758390115029295477" name="jetbrains.mps.lang.smodel.structure.SReferenceType" flags="in" index="2z4iKi" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz">
        <reference id="6677504323281689839" name="conceptDeclaraton" index="3bZ5Sy" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="6870613620390542976" name="jetbrains.mps.lang.smodel.structure.ConceptAliasOperation" flags="ng" index="3n3YKJ" />
      <concept id="1172326502327" name="jetbrains.mps.lang.smodel.structure.Concept_IsExactlyOperation" flags="nn" index="3O6GUB">
        <child id="1206733650006" name="conceptArgument" index="3QVz_e" />
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
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
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
      <concept id="1205753243362" name="jetbrains.mps.baseLanguage.collections.structure.ChunkOperation" flags="nn" index="2WvAvU">
        <child id="1205753261887" name="length" index="2WvESB" />
      </concept>
      <concept id="1205753630278" name="jetbrains.mps.baseLanguage.collections.structure.TailOperation" flags="nn" index="2Wx4Xu" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="7125221305512719026" name="jetbrains.mps.baseLanguage.collections.structure.CollectionType" flags="in" index="3vKaQO" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="5686963296372573083" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerType" flags="in" index="3O5elB">
        <child id="5686963296372573084" name="elementType" index="3O5elw" />
      </concept>
      <concept id="1178894719932" name="jetbrains.mps.baseLanguage.collections.structure.DistinctOperation" flags="nn" index="1VAtEI" />
    </language>
  </registry>
  <node concept="39dXUE" id="0">
    <node concept="39e2AJ" id="1" role="39e2AI">
      <property role="39e3Y2" value="classForRule" />
      <node concept="39e2AG" id="5" role="39e3Y0">
        <ref role="39e2AK" to="wig6:3J6h25QQOMZ" resolve="check_QueryDuplicatedParameters" />
        <node concept="385nmt" id="g" role="385vvn">
          <property role="385vuF" value="check_QueryDuplicatedParameters" />
          <node concept="3u3nmq" id="i" role="385v07">
            <property role="3u3nmv" value="4307205004145151167" />
          </node>
        </node>
        <node concept="39e2AT" id="h" role="39e2AY">
          <ref role="39e2AS" node="4G" resolve="check_QueryDuplicatedParameters_NonTypesystemRule" />
        </node>
      </node>
      <node concept="39e2AG" id="6" role="39e3Y0">
        <ref role="39e2AK" to="wig6:238_VGTIKzf" resolve="typeof_CustomScope" />
        <node concept="385nmt" id="j" role="385vvn">
          <property role="385vuF" value="typeof_CustomScope" />
          <node concept="3u3nmq" id="l" role="385v07">
            <property role="3u3nmv" value="2362304834939062479" />
          </node>
        </node>
        <node concept="39e2AT" id="k" role="39e2AY">
          <ref role="39e2AS" node="75" resolve="typeof_CustomScope_InferenceRule" />
        </node>
      </node>
      <node concept="39e2AG" id="7" role="39e3Y0">
        <ref role="39e2AK" to="wig6:6H$fNdLyEd0" resolve="typeof_InstancesExpression" />
        <node concept="385nmt" id="m" role="385vvn">
          <property role="385vuF" value="typeof_InstancesExpression" />
          <node concept="3u3nmq" id="o" role="385v07">
            <property role="3u3nmv" value="7738379549910147904" />
          </node>
        </node>
        <node concept="39e2AT" id="n" role="39e2AY">
          <ref role="39e2AS" node="8E" resolve="typeof_InstancesExpression_InferenceRule" />
        </node>
      </node>
      <node concept="39e2AG" id="8" role="39e3Y0">
        <ref role="39e2AK" to="wig6:238_VGTIKyw" resolve="typeof_ModelScopeLiteral" />
        <node concept="385nmt" id="p" role="385vvn">
          <property role="385vuF" value="typeof_ModelScopeLiteral" />
          <node concept="3u3nmq" id="r" role="385v07">
            <property role="3u3nmv" value="2362304834939062432" />
          </node>
        </node>
        <node concept="39e2AT" id="q" role="39e2AY">
          <ref role="39e2AS" node="ec" resolve="typeof_ModelScopeLiteral_InferenceRule" />
        </node>
      </node>
      <node concept="39e2AG" id="9" role="39e3Y0">
        <ref role="39e2AK" to="wig6:5X1VVpPJEZQ" resolve="typeof_ModelsExpression" />
        <node concept="385nmt" id="s" role="385vvn">
          <property role="385vuF" value="typeof_ModelsExpression" />
          <node concept="3u3nmq" id="u" role="385v07">
            <property role="3u3nmv" value="6864030874027864054" />
          </node>
        </node>
        <node concept="39e2AT" id="t" role="39e2AY">
          <ref role="39e2AS" node="fO" resolve="typeof_ModelsExpression_InferenceRule" />
        </node>
      </node>
      <node concept="39e2AG" id="a" role="39e3Y0">
        <ref role="39e2AK" to="wig6:238_VGTIKxG" resolve="typeof_ModuleScopeLiteral" />
        <node concept="385nmt" id="v" role="385vvn">
          <property role="385vuF" value="typeof_ModuleScopeLiteral" />
          <node concept="3u3nmq" id="x" role="385v07">
            <property role="3u3nmv" value="2362304834939062380" />
          </node>
        </node>
        <node concept="39e2AT" id="w" role="39e2AY">
          <ref role="39e2AS" node="hf" resolve="typeof_ModuleScopeLiteral_InferenceRule" />
        </node>
      </node>
      <node concept="39e2AG" id="b" role="39e3Y0">
        <ref role="39e2AK" to="wig6:5X1VVpPN2al" resolve="typeof_ModulesExpression" />
        <node concept="385nmt" id="y" role="385vvn">
          <property role="385vuF" value="typeof_ModulesExpression" />
          <node concept="3u3nmq" id="$" role="385v07">
            <property role="3u3nmv" value="6864030874028745365" />
          </node>
        </node>
        <node concept="39e2AT" id="z" role="39e2AY">
          <ref role="39e2AS" node="iR" resolve="typeof_ModulesExpression_InferenceRule" />
        </node>
      </node>
      <node concept="39e2AG" id="c" role="39e3Y0">
        <ref role="39e2AK" to="wig6:3Z0MTj6lTFC" resolve="typeof_NodesExpresiion" />
        <node concept="385nmt" id="_" role="385vvn">
          <property role="385vuF" value="typeof_NodesExpresiion" />
          <node concept="3u3nmq" id="B" role="385v07">
            <property role="3u3nmv" value="4593895459761134312" />
          </node>
        </node>
        <node concept="39e2AT" id="A" role="39e2AY">
          <ref role="39e2AS" node="ki" resolve="typeof_NodesExpresiion_InferenceRule" />
        </node>
      </node>
      <node concept="39e2AG" id="d" role="39e3Y0">
        <ref role="39e2AK" to="wig6:5uXC5_7di9F" resolve="typeof_ReferencesExpression" />
        <node concept="385nmt" id="C" role="385vvn">
          <property role="385vuF" value="typeof_ReferencesExpression" />
          <node concept="3u3nmq" id="E" role="385v07">
            <property role="3u3nmv" value="6322385757205242475" />
          </node>
        </node>
        <node concept="39e2AT" id="D" role="39e2AY">
          <ref role="39e2AS" node="lH" resolve="typeof_ReferencesExpression_InferenceRule" />
        </node>
      </node>
      <node concept="39e2AG" id="e" role="39e3Y0">
        <ref role="39e2AK" to="wig6:3F2FyKbNNPn" resolve="typeof_ScopeProvider" />
        <node concept="385nmt" id="F" role="385vvn">
          <property role="385vuF" value="typeof_ScopeProvider" />
          <node concept="3u3nmq" id="H" role="385v07">
            <property role="3u3nmv" value="4234138103881612631" />
          </node>
        </node>
        <node concept="39e2AT" id="G" role="39e2AY">
          <ref role="39e2AS" node="n8" resolve="typeof_ScopeProvider_InferenceRule" />
        </node>
      </node>
      <node concept="39e2AG" id="f" role="39e3Y0">
        <ref role="39e2AK" to="wig6:6H$fNdLgSy1" resolve="typeof_UsagesExpression" />
        <node concept="385nmt" id="I" role="385vvn">
          <property role="385vuF" value="typeof_UsagesExpression" />
          <node concept="3u3nmq" id="K" role="385v07">
            <property role="3u3nmv" value="7738379549905488001" />
          </node>
        </node>
        <node concept="39e2AT" id="J" role="39e2AY">
          <ref role="39e2AS" node="oR" resolve="typeof_UsagesExpression_InferenceRule" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="2" role="39e2AI">
      <property role="39e3Y2" value="isApplicableMethod" />
      <node concept="39e2AG" id="L" role="39e3Y0">
        <ref role="39e2AK" to="wig6:3J6h25QQOMZ" resolve="check_QueryDuplicatedParameters" />
        <node concept="385nmt" id="W" role="385vvn">
          <property role="385vuF" value="check_QueryDuplicatedParameters" />
          <node concept="3u3nmq" id="Y" role="385v07">
            <property role="3u3nmv" value="4307205004145151167" />
          </node>
        </node>
        <node concept="39e2AT" id="X" role="39e2AY">
          <ref role="39e2AS" node="4K" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="M" role="39e3Y0">
        <ref role="39e2AK" to="wig6:238_VGTIKzf" resolve="typeof_CustomScope" />
        <node concept="385nmt" id="Z" role="385vvn">
          <property role="385vuF" value="typeof_CustomScope" />
          <node concept="3u3nmq" id="11" role="385v07">
            <property role="3u3nmv" value="2362304834939062479" />
          </node>
        </node>
        <node concept="39e2AT" id="10" role="39e2AY">
          <ref role="39e2AS" node="79" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="N" role="39e3Y0">
        <ref role="39e2AK" to="wig6:6H$fNdLyEd0" resolve="typeof_InstancesExpression" />
        <node concept="385nmt" id="12" role="385vvn">
          <property role="385vuF" value="typeof_InstancesExpression" />
          <node concept="3u3nmq" id="14" role="385v07">
            <property role="3u3nmv" value="7738379549910147904" />
          </node>
        </node>
        <node concept="39e2AT" id="13" role="39e2AY">
          <ref role="39e2AS" node="8I" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="O" role="39e3Y0">
        <ref role="39e2AK" to="wig6:238_VGTIKyw" resolve="typeof_ModelScopeLiteral" />
        <node concept="385nmt" id="15" role="385vvn">
          <property role="385vuF" value="typeof_ModelScopeLiteral" />
          <node concept="3u3nmq" id="17" role="385v07">
            <property role="3u3nmv" value="2362304834939062432" />
          </node>
        </node>
        <node concept="39e2AT" id="16" role="39e2AY">
          <ref role="39e2AS" node="eg" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="P" role="39e3Y0">
        <ref role="39e2AK" to="wig6:5X1VVpPJEZQ" resolve="typeof_ModelsExpression" />
        <node concept="385nmt" id="18" role="385vvn">
          <property role="385vuF" value="typeof_ModelsExpression" />
          <node concept="3u3nmq" id="1a" role="385v07">
            <property role="3u3nmv" value="6864030874027864054" />
          </node>
        </node>
        <node concept="39e2AT" id="19" role="39e2AY">
          <ref role="39e2AS" node="fS" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="Q" role="39e3Y0">
        <ref role="39e2AK" to="wig6:238_VGTIKxG" resolve="typeof_ModuleScopeLiteral" />
        <node concept="385nmt" id="1b" role="385vvn">
          <property role="385vuF" value="typeof_ModuleScopeLiteral" />
          <node concept="3u3nmq" id="1d" role="385v07">
            <property role="3u3nmv" value="2362304834939062380" />
          </node>
        </node>
        <node concept="39e2AT" id="1c" role="39e2AY">
          <ref role="39e2AS" node="hj" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="R" role="39e3Y0">
        <ref role="39e2AK" to="wig6:5X1VVpPN2al" resolve="typeof_ModulesExpression" />
        <node concept="385nmt" id="1e" role="385vvn">
          <property role="385vuF" value="typeof_ModulesExpression" />
          <node concept="3u3nmq" id="1g" role="385v07">
            <property role="3u3nmv" value="6864030874028745365" />
          </node>
        </node>
        <node concept="39e2AT" id="1f" role="39e2AY">
          <ref role="39e2AS" node="iV" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="S" role="39e3Y0">
        <ref role="39e2AK" to="wig6:3Z0MTj6lTFC" resolve="typeof_NodesExpresiion" />
        <node concept="385nmt" id="1h" role="385vvn">
          <property role="385vuF" value="typeof_NodesExpresiion" />
          <node concept="3u3nmq" id="1j" role="385v07">
            <property role="3u3nmv" value="4593895459761134312" />
          </node>
        </node>
        <node concept="39e2AT" id="1i" role="39e2AY">
          <ref role="39e2AS" node="km" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="T" role="39e3Y0">
        <ref role="39e2AK" to="wig6:5uXC5_7di9F" resolve="typeof_ReferencesExpression" />
        <node concept="385nmt" id="1k" role="385vvn">
          <property role="385vuF" value="typeof_ReferencesExpression" />
          <node concept="3u3nmq" id="1m" role="385v07">
            <property role="3u3nmv" value="6322385757205242475" />
          </node>
        </node>
        <node concept="39e2AT" id="1l" role="39e2AY">
          <ref role="39e2AS" node="lL" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="U" role="39e3Y0">
        <ref role="39e2AK" to="wig6:3F2FyKbNNPn" resolve="typeof_ScopeProvider" />
        <node concept="385nmt" id="1n" role="385vvn">
          <property role="385vuF" value="typeof_ScopeProvider" />
          <node concept="3u3nmq" id="1p" role="385v07">
            <property role="3u3nmv" value="4234138103881612631" />
          </node>
        </node>
        <node concept="39e2AT" id="1o" role="39e2AY">
          <ref role="39e2AS" node="nc" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="V" role="39e3Y0">
        <ref role="39e2AK" to="wig6:6H$fNdLgSy1" resolve="typeof_UsagesExpression" />
        <node concept="385nmt" id="1q" role="385vvn">
          <property role="385vuF" value="typeof_UsagesExpression" />
          <node concept="3u3nmq" id="1s" role="385v07">
            <property role="3u3nmv" value="7738379549905488001" />
          </node>
        </node>
        <node concept="39e2AT" id="1r" role="39e2AY">
          <ref role="39e2AS" node="oV" resolve="isApplicableAndPattern" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="3" role="39e2AI">
      <property role="39e3Y2" value="mainMethodForRule" />
      <node concept="39e2AG" id="1t" role="39e3Y0">
        <ref role="39e2AK" to="wig6:3J6h25QQOMZ" resolve="check_QueryDuplicatedParameters" />
        <node concept="385nmt" id="1C" role="385vvn">
          <property role="385vuF" value="check_QueryDuplicatedParameters" />
          <node concept="3u3nmq" id="1E" role="385v07">
            <property role="3u3nmv" value="4307205004145151167" />
          </node>
        </node>
        <node concept="39e2AT" id="1D" role="39e2AY">
          <ref role="39e2AS" node="4I" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="1u" role="39e3Y0">
        <ref role="39e2AK" to="wig6:238_VGTIKzf" resolve="typeof_CustomScope" />
        <node concept="385nmt" id="1F" role="385vvn">
          <property role="385vuF" value="typeof_CustomScope" />
          <node concept="3u3nmq" id="1H" role="385v07">
            <property role="3u3nmv" value="2362304834939062479" />
          </node>
        </node>
        <node concept="39e2AT" id="1G" role="39e2AY">
          <ref role="39e2AS" node="77" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="1v" role="39e3Y0">
        <ref role="39e2AK" to="wig6:6H$fNdLyEd0" resolve="typeof_InstancesExpression" />
        <node concept="385nmt" id="1I" role="385vvn">
          <property role="385vuF" value="typeof_InstancesExpression" />
          <node concept="3u3nmq" id="1K" role="385v07">
            <property role="3u3nmv" value="7738379549910147904" />
          </node>
        </node>
        <node concept="39e2AT" id="1J" role="39e2AY">
          <ref role="39e2AS" node="8G" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="1w" role="39e3Y0">
        <ref role="39e2AK" to="wig6:238_VGTIKyw" resolve="typeof_ModelScopeLiteral" />
        <node concept="385nmt" id="1L" role="385vvn">
          <property role="385vuF" value="typeof_ModelScopeLiteral" />
          <node concept="3u3nmq" id="1N" role="385v07">
            <property role="3u3nmv" value="2362304834939062432" />
          </node>
        </node>
        <node concept="39e2AT" id="1M" role="39e2AY">
          <ref role="39e2AS" node="ee" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="1x" role="39e3Y0">
        <ref role="39e2AK" to="wig6:5X1VVpPJEZQ" resolve="typeof_ModelsExpression" />
        <node concept="385nmt" id="1O" role="385vvn">
          <property role="385vuF" value="typeof_ModelsExpression" />
          <node concept="3u3nmq" id="1Q" role="385v07">
            <property role="3u3nmv" value="6864030874027864054" />
          </node>
        </node>
        <node concept="39e2AT" id="1P" role="39e2AY">
          <ref role="39e2AS" node="fQ" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="1y" role="39e3Y0">
        <ref role="39e2AK" to="wig6:238_VGTIKxG" resolve="typeof_ModuleScopeLiteral" />
        <node concept="385nmt" id="1R" role="385vvn">
          <property role="385vuF" value="typeof_ModuleScopeLiteral" />
          <node concept="3u3nmq" id="1T" role="385v07">
            <property role="3u3nmv" value="2362304834939062380" />
          </node>
        </node>
        <node concept="39e2AT" id="1S" role="39e2AY">
          <ref role="39e2AS" node="hh" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="1z" role="39e3Y0">
        <ref role="39e2AK" to="wig6:5X1VVpPN2al" resolve="typeof_ModulesExpression" />
        <node concept="385nmt" id="1U" role="385vvn">
          <property role="385vuF" value="typeof_ModulesExpression" />
          <node concept="3u3nmq" id="1W" role="385v07">
            <property role="3u3nmv" value="6864030874028745365" />
          </node>
        </node>
        <node concept="39e2AT" id="1V" role="39e2AY">
          <ref role="39e2AS" node="iT" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="1$" role="39e3Y0">
        <ref role="39e2AK" to="wig6:3Z0MTj6lTFC" resolve="typeof_NodesExpresiion" />
        <node concept="385nmt" id="1X" role="385vvn">
          <property role="385vuF" value="typeof_NodesExpresiion" />
          <node concept="3u3nmq" id="1Z" role="385v07">
            <property role="3u3nmv" value="4593895459761134312" />
          </node>
        </node>
        <node concept="39e2AT" id="1Y" role="39e2AY">
          <ref role="39e2AS" node="kk" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="1_" role="39e3Y0">
        <ref role="39e2AK" to="wig6:5uXC5_7di9F" resolve="typeof_ReferencesExpression" />
        <node concept="385nmt" id="20" role="385vvn">
          <property role="385vuF" value="typeof_ReferencesExpression" />
          <node concept="3u3nmq" id="22" role="385v07">
            <property role="3u3nmv" value="6322385757205242475" />
          </node>
        </node>
        <node concept="39e2AT" id="21" role="39e2AY">
          <ref role="39e2AS" node="lJ" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="1A" role="39e3Y0">
        <ref role="39e2AK" to="wig6:3F2FyKbNNPn" resolve="typeof_ScopeProvider" />
        <node concept="385nmt" id="23" role="385vvn">
          <property role="385vuF" value="typeof_ScopeProvider" />
          <node concept="3u3nmq" id="25" role="385v07">
            <property role="3u3nmv" value="4234138103881612631" />
          </node>
        </node>
        <node concept="39e2AT" id="24" role="39e2AY">
          <ref role="39e2AS" node="na" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="1B" role="39e3Y0">
        <ref role="39e2AK" to="wig6:6H$fNdLgSy1" resolve="typeof_UsagesExpression" />
        <node concept="385nmt" id="26" role="385vvn">
          <property role="385vuF" value="typeof_UsagesExpression" />
          <node concept="3u3nmq" id="28" role="385v07">
            <property role="3u3nmv" value="7738379549905488001" />
          </node>
        </node>
        <node concept="39e2AT" id="27" role="39e2AY">
          <ref role="39e2AS" node="oT" resolve="applyRule" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="4" role="39e2AI">
      <property role="39e3Y2" value="descriptorClass" />
      <node concept="39e2AG" id="29" role="39e3Y0">
        <property role="2mV_xN" value="true" />
        <node concept="39e2AT" id="2a" role="39e2AY">
          <ref role="39e2AS" node="2b" resolve="TypesystemDescriptor" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2b">
    <property role="TrG5h" value="TypesystemDescriptor" />
    <node concept="3clFbW" id="2c" role="jymVt">
      <node concept="3clFbS" id="2f" role="3clF47">
        <node concept="9aQIb" id="2i" role="3cqZAp">
          <node concept="3clFbS" id="2t" role="9aQI4">
            <node concept="3cpWs8" id="2u" role="3cqZAp">
              <node concept="3cpWsn" id="2w" role="3cpWs9">
                <property role="TrG5h" value="inferenceRule" />
                <node concept="2ShNRf" id="2x" role="33vP2m">
                  <node concept="1pGfFk" id="2z" role="2ShVmc">
                    <ref role="37wK5l" node="76" resolve="typeof_CustomScope_InferenceRule" />
                  </node>
                </node>
                <node concept="3uibUv" id="2y" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2v" role="3cqZAp">
              <node concept="2OqwBi" id="2$" role="3clFbG">
                <node concept="liA8E" id="2_" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="2B" role="37wK5m">
                    <ref role="3cqZAo" node="2w" resolve="inferenceRule" />
                  </node>
                </node>
                <node concept="2OqwBi" id="2A" role="2Oq$k0">
                  <node concept="Xjq3P" id="2C" role="2Oq$k0" />
                  <node concept="2OwXpG" id="2D" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myInferenceRules" resolve="myInferenceRules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="2j" role="3cqZAp">
          <node concept="3clFbS" id="2E" role="9aQI4">
            <node concept="3cpWs8" id="2F" role="3cqZAp">
              <node concept="3cpWsn" id="2H" role="3cpWs9">
                <property role="TrG5h" value="inferenceRule" />
                <node concept="2ShNRf" id="2I" role="33vP2m">
                  <node concept="1pGfFk" id="2K" role="2ShVmc">
                    <ref role="37wK5l" node="8F" resolve="typeof_InstancesExpression_InferenceRule" />
                  </node>
                </node>
                <node concept="3uibUv" id="2J" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2G" role="3cqZAp">
              <node concept="2OqwBi" id="2L" role="3clFbG">
                <node concept="liA8E" id="2M" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="2O" role="37wK5m">
                    <ref role="3cqZAo" node="2H" resolve="inferenceRule" />
                  </node>
                </node>
                <node concept="2OqwBi" id="2N" role="2Oq$k0">
                  <node concept="Xjq3P" id="2P" role="2Oq$k0" />
                  <node concept="2OwXpG" id="2Q" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myInferenceRules" resolve="myInferenceRules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="2k" role="3cqZAp">
          <node concept="3clFbS" id="2R" role="9aQI4">
            <node concept="3cpWs8" id="2S" role="3cqZAp">
              <node concept="3cpWsn" id="2U" role="3cpWs9">
                <property role="TrG5h" value="inferenceRule" />
                <node concept="2ShNRf" id="2V" role="33vP2m">
                  <node concept="1pGfFk" id="2X" role="2ShVmc">
                    <ref role="37wK5l" node="ed" resolve="typeof_ModelScopeLiteral_InferenceRule" />
                  </node>
                </node>
                <node concept="3uibUv" id="2W" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2T" role="3cqZAp">
              <node concept="2OqwBi" id="2Y" role="3clFbG">
                <node concept="liA8E" id="2Z" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="31" role="37wK5m">
                    <ref role="3cqZAo" node="2U" resolve="inferenceRule" />
                  </node>
                </node>
                <node concept="2OqwBi" id="30" role="2Oq$k0">
                  <node concept="Xjq3P" id="32" role="2Oq$k0" />
                  <node concept="2OwXpG" id="33" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myInferenceRules" resolve="myInferenceRules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="2l" role="3cqZAp">
          <node concept="3clFbS" id="34" role="9aQI4">
            <node concept="3cpWs8" id="35" role="3cqZAp">
              <node concept="3cpWsn" id="37" role="3cpWs9">
                <property role="TrG5h" value="inferenceRule" />
                <node concept="2ShNRf" id="38" role="33vP2m">
                  <node concept="1pGfFk" id="3a" role="2ShVmc">
                    <ref role="37wK5l" node="fP" resolve="typeof_ModelsExpression_InferenceRule" />
                  </node>
                </node>
                <node concept="3uibUv" id="39" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="36" role="3cqZAp">
              <node concept="2OqwBi" id="3b" role="3clFbG">
                <node concept="liA8E" id="3c" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="3e" role="37wK5m">
                    <ref role="3cqZAo" node="37" resolve="inferenceRule" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3d" role="2Oq$k0">
                  <node concept="Xjq3P" id="3f" role="2Oq$k0" />
                  <node concept="2OwXpG" id="3g" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myInferenceRules" resolve="myInferenceRules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="2m" role="3cqZAp">
          <node concept="3clFbS" id="3h" role="9aQI4">
            <node concept="3cpWs8" id="3i" role="3cqZAp">
              <node concept="3cpWsn" id="3k" role="3cpWs9">
                <property role="TrG5h" value="inferenceRule" />
                <node concept="2ShNRf" id="3l" role="33vP2m">
                  <node concept="1pGfFk" id="3n" role="2ShVmc">
                    <ref role="37wK5l" node="hg" resolve="typeof_ModuleScopeLiteral_InferenceRule" />
                  </node>
                </node>
                <node concept="3uibUv" id="3m" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3j" role="3cqZAp">
              <node concept="2OqwBi" id="3o" role="3clFbG">
                <node concept="liA8E" id="3p" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="3r" role="37wK5m">
                    <ref role="3cqZAo" node="3k" resolve="inferenceRule" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3q" role="2Oq$k0">
                  <node concept="Xjq3P" id="3s" role="2Oq$k0" />
                  <node concept="2OwXpG" id="3t" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myInferenceRules" resolve="myInferenceRules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="2n" role="3cqZAp">
          <node concept="3clFbS" id="3u" role="9aQI4">
            <node concept="3cpWs8" id="3v" role="3cqZAp">
              <node concept="3cpWsn" id="3x" role="3cpWs9">
                <property role="TrG5h" value="inferenceRule" />
                <node concept="2ShNRf" id="3y" role="33vP2m">
                  <node concept="1pGfFk" id="3$" role="2ShVmc">
                    <ref role="37wK5l" node="iS" resolve="typeof_ModulesExpression_InferenceRule" />
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
        <node concept="9aQIb" id="2o" role="3cqZAp">
          <node concept="3clFbS" id="3F" role="9aQI4">
            <node concept="3cpWs8" id="3G" role="3cqZAp">
              <node concept="3cpWsn" id="3I" role="3cpWs9">
                <property role="TrG5h" value="inferenceRule" />
                <node concept="2ShNRf" id="3J" role="33vP2m">
                  <node concept="1pGfFk" id="3L" role="2ShVmc">
                    <ref role="37wK5l" node="kj" resolve="typeof_NodesExpresiion_InferenceRule" />
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
        <node concept="9aQIb" id="2p" role="3cqZAp">
          <node concept="3clFbS" id="3S" role="9aQI4">
            <node concept="3cpWs8" id="3T" role="3cqZAp">
              <node concept="3cpWsn" id="3V" role="3cpWs9">
                <property role="TrG5h" value="inferenceRule" />
                <node concept="2ShNRf" id="3W" role="33vP2m">
                  <node concept="1pGfFk" id="3Y" role="2ShVmc">
                    <ref role="37wK5l" node="lI" resolve="typeof_ReferencesExpression_InferenceRule" />
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
        <node concept="9aQIb" id="2q" role="3cqZAp">
          <node concept="3clFbS" id="45" role="9aQI4">
            <node concept="3cpWs8" id="46" role="3cqZAp">
              <node concept="3cpWsn" id="48" role="3cpWs9">
                <property role="TrG5h" value="inferenceRule" />
                <node concept="2ShNRf" id="49" role="33vP2m">
                  <node concept="1pGfFk" id="4b" role="2ShVmc">
                    <ref role="37wK5l" node="n9" resolve="typeof_ScopeProvider_InferenceRule" />
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
        <node concept="9aQIb" id="2r" role="3cqZAp">
          <node concept="3clFbS" id="4i" role="9aQI4">
            <node concept="3cpWs8" id="4j" role="3cqZAp">
              <node concept="3cpWsn" id="4l" role="3cpWs9">
                <property role="TrG5h" value="inferenceRule" />
                <node concept="2ShNRf" id="4m" role="33vP2m">
                  <node concept="1pGfFk" id="4o" role="2ShVmc">
                    <ref role="37wK5l" node="oS" resolve="typeof_UsagesExpression_InferenceRule" />
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
        <node concept="9aQIb" id="2s" role="3cqZAp">
          <node concept="3clFbS" id="4v" role="9aQI4">
            <node concept="3cpWs8" id="4w" role="3cqZAp">
              <node concept="3cpWsn" id="4y" role="3cpWs9">
                <property role="TrG5h" value="nonTypesystemRule" />
                <node concept="3uibUv" id="4z" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="4$" role="33vP2m">
                  <node concept="1pGfFk" id="4_" role="2ShVmc">
                    <ref role="37wK5l" node="4H" resolve="check_QueryDuplicatedParameters_NonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4x" role="3cqZAp">
              <node concept="2OqwBi" id="4A" role="3clFbG">
                <node concept="2OqwBi" id="4B" role="2Oq$k0">
                  <node concept="Xjq3P" id="4D" role="2Oq$k0" />
                  <node concept="2OwXpG" id="4E" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myNonTypesystemRules" resolve="myNonTypesystemRules" />
                  </node>
                </node>
                <node concept="liA8E" id="4C" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="4F" role="37wK5m">
                    <ref role="3cqZAo" node="4y" resolve="nonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2g" role="1B3o_S" />
      <node concept="3cqZAl" id="2h" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="2d" role="1B3o_S" />
    <node concept="3uibUv" id="2e" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~BaseHelginsDescriptor" resolve="BaseHelginsDescriptor" />
    </node>
  </node>
  <node concept="312cEu" id="4G">
    <property role="3GE5qa" value="query.parameter" />
    <property role="TrG5h" value="check_QueryDuplicatedParameters_NonTypesystemRule" />
    <uo k="s:originTrace" v="n:4307205004145151167" />
    <node concept="3clFbW" id="4H" role="jymVt">
      <uo k="s:originTrace" v="n:4307205004145151167" />
      <node concept="3clFbS" id="4P" role="3clF47">
        <uo k="s:originTrace" v="n:4307205004145151167" />
      </node>
      <node concept="3Tm1VV" id="4Q" role="1B3o_S">
        <uo k="s:originTrace" v="n:4307205004145151167" />
      </node>
      <node concept="3cqZAl" id="4R" role="3clF45">
        <uo k="s:originTrace" v="n:4307205004145151167" />
      </node>
    </node>
    <node concept="3clFb_" id="4I" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:4307205004145151167" />
      <node concept="3cqZAl" id="4S" role="3clF45">
        <uo k="s:originTrace" v="n:4307205004145151167" />
      </node>
      <node concept="37vLTG" id="4T" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="queryParameterList" />
        <uo k="s:originTrace" v="n:4307205004145151167" />
        <node concept="3Tqbb2" id="4Y" role="1tU5fm">
          <uo k="s:originTrace" v="n:4307205004145151167" />
        </node>
      </node>
      <node concept="37vLTG" id="4U" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:4307205004145151167" />
        <node concept="3uibUv" id="4Z" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:4307205004145151167" />
        </node>
      </node>
      <node concept="37vLTG" id="4V" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:4307205004145151167" />
        <node concept="3uibUv" id="50" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:4307205004145151167" />
        </node>
      </node>
      <node concept="3clFbS" id="4W" role="3clF47">
        <uo k="s:originTrace" v="n:4307205004145151168" />
        <node concept="3cpWs8" id="51" role="3cqZAp">
          <uo k="s:originTrace" v="n:4307205004145330194" />
          <node concept="3cpWsn" id="56" role="3cpWs9">
            <property role="TrG5h" value="parameters" />
            <uo k="s:originTrace" v="n:4307205004145330197" />
            <node concept="A3Dl8" id="57" role="1tU5fm">
              <uo k="s:originTrace" v="n:4307205004145330191" />
              <node concept="3Tqbb2" id="59" role="A3Ik2">
                <ref role="ehGHo" to="3xdn:3J6h25Q2URP" resolve="QueryParameter" />
                <uo k="s:originTrace" v="n:4307205004145331586" />
              </node>
            </node>
            <node concept="2OqwBi" id="58" role="33vP2m">
              <uo k="s:originTrace" v="n:4307205004145344981" />
              <node concept="37vLTw" id="5a" role="2Oq$k0">
                <ref role="3cqZAo" node="4T" resolve="queryParameterList" />
                <uo k="s:originTrace" v="n:4307205004145331706" />
              </node>
              <node concept="3Tsc0h" id="5b" role="2OqNvi">
                <ref role="3TtcxE" to="3xdn:3J6h25QCAaA" resolve="parameter" />
                <uo k="s:originTrace" v="n:4307205004145351273" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="52" role="3cqZAp">
          <uo k="s:originTrace" v="n:4307205004145290005" />
          <node concept="3cpWsn" id="5c" role="3cpWs9">
            <property role="TrG5h" value="parameterConcepts" />
            <uo k="s:originTrace" v="n:4307205004145290008" />
            <node concept="A3Dl8" id="5d" role="1tU5fm">
              <uo k="s:originTrace" v="n:4307205004145290002" />
              <node concept="3bZ5Sz" id="5f" role="A3Ik2">
                <ref role="3bZ5Sy" to="3xdn:3J6h25Q2URP" resolve="QueryParameter" />
                <uo k="s:originTrace" v="n:8113079483880946280" />
              </node>
            </node>
            <node concept="2OqwBi" id="5e" role="33vP2m">
              <uo k="s:originTrace" v="n:4307205004145297948" />
              <node concept="2OqwBi" id="5g" role="2Oq$k0">
                <uo k="s:originTrace" v="n:4307205004145173968" />
                <node concept="37vLTw" id="5i" role="2Oq$k0">
                  <ref role="3cqZAo" node="56" resolve="parameters" />
                  <uo k="s:originTrace" v="n:4307205004145354221" />
                </node>
                <node concept="3$u5V9" id="5j" role="2OqNvi">
                  <uo k="s:originTrace" v="n:4307205004145276651" />
                  <node concept="1bVj0M" id="5k" role="23t8la">
                    <uo k="s:originTrace" v="n:4307205004145276652" />
                    <node concept="3clFbS" id="5l" role="1bW5cS">
                      <uo k="s:originTrace" v="n:4307205004145276653" />
                      <node concept="3clFbF" id="5n" role="3cqZAp">
                        <uo k="s:originTrace" v="n:4307205004145277367" />
                        <node concept="2OqwBi" id="5o" role="3clFbG">
                          <uo k="s:originTrace" v="n:4307205004145279575" />
                          <node concept="2yIwOk" id="5p" role="2OqNvi">
                            <uo k="s:originTrace" v="n:8113079483880950349" />
                          </node>
                          <node concept="37vLTw" id="5q" role="2Oq$k0">
                            <ref role="3cqZAo" node="5m" resolve="it" />
                            <uo k="s:originTrace" v="n:4307205004145277366" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5m" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <uo k="s:originTrace" v="n:6847626768367732447" />
                      <node concept="2jxLKc" id="5r" role="1tU5fm">
                        <uo k="s:originTrace" v="n:6847626768367732448" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1VAtEI" id="5h" role="2OqNvi">
                <uo k="s:originTrace" v="n:4307205004145312366" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="53" role="3cqZAp">
          <uo k="s:originTrace" v="n:4307205004145312475" />
          <node concept="3cpWsn" id="5s" role="3cpWs9">
            <property role="TrG5h" value="groupedByConcepts" />
            <uo k="s:originTrace" v="n:4307205004145312478" />
            <node concept="A3Dl8" id="5t" role="1tU5fm">
              <uo k="s:originTrace" v="n:4307205004145312472" />
              <node concept="A3Dl8" id="5v" role="A3Ik2">
                <uo k="s:originTrace" v="n:4307205004145312515" />
                <node concept="3Tqbb2" id="5w" role="A3Ik2">
                  <ref role="ehGHo" to="3xdn:3J6h25Q2URP" resolve="QueryParameter" />
                  <uo k="s:originTrace" v="n:4307205004145312540" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="5u" role="33vP2m">
              <uo k="s:originTrace" v="n:4307205004145314853" />
              <node concept="37vLTw" id="5x" role="2Oq$k0">
                <ref role="3cqZAo" node="5c" resolve="parameterConcepts" />
                <uo k="s:originTrace" v="n:4307205004145313028" />
              </node>
              <node concept="3$u5V9" id="5y" role="2OqNvi">
                <uo k="s:originTrace" v="n:4307205004145779982" />
                <node concept="1bVj0M" id="5z" role="23t8la">
                  <uo k="s:originTrace" v="n:4307205004145779983" />
                  <node concept="3clFbS" id="5$" role="1bW5cS">
                    <uo k="s:originTrace" v="n:4307205004145779984" />
                    <node concept="3clFbF" id="5A" role="3cqZAp">
                      <uo k="s:originTrace" v="n:4307205004145781766" />
                      <node concept="2OqwBi" id="5B" role="3clFbG">
                        <uo k="s:originTrace" v="n:4307205004145781767" />
                        <node concept="37vLTw" id="5C" role="2Oq$k0">
                          <ref role="3cqZAo" node="56" resolve="parameters" />
                          <uo k="s:originTrace" v="n:4307205004145781768" />
                        </node>
                        <node concept="3zZkjj" id="5D" role="2OqNvi">
                          <uo k="s:originTrace" v="n:4307205004145781769" />
                          <node concept="1bVj0M" id="5E" role="23t8la">
                            <uo k="s:originTrace" v="n:4307205004145781770" />
                            <node concept="3clFbS" id="5F" role="1bW5cS">
                              <uo k="s:originTrace" v="n:4307205004145781771" />
                              <node concept="3clFbF" id="5H" role="3cqZAp">
                                <uo k="s:originTrace" v="n:4307205004145781772" />
                                <node concept="2OqwBi" id="5I" role="3clFbG">
                                  <uo k="s:originTrace" v="n:4307205004145781773" />
                                  <node concept="2OqwBi" id="5J" role="2Oq$k0">
                                    <uo k="s:originTrace" v="n:4307205004145781774" />
                                    <node concept="37vLTw" id="5L" role="2Oq$k0">
                                      <ref role="3cqZAo" node="5G" resolve="p" />
                                      <uo k="s:originTrace" v="n:4307205004145781775" />
                                    </node>
                                    <node concept="2yIwOk" id="5M" role="2OqNvi">
                                      <uo k="s:originTrace" v="n:6356982101392733366" />
                                    </node>
                                  </node>
                                  <node concept="3O6GUB" id="5K" role="2OqNvi">
                                    <uo k="s:originTrace" v="n:4307205004145781777" />
                                    <node concept="25Kdxt" id="5N" role="3QVz_e">
                                      <uo k="s:originTrace" v="n:4307205004145781778" />
                                      <node concept="37vLTw" id="5O" role="25KhWn">
                                        <ref role="3cqZAo" node="5_" resolve="c" />
                                        <uo k="s:originTrace" v="n:6831284539355456811" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="gl6BB" id="5G" role="1bW2Oz">
                              <property role="TrG5h" value="p" />
                              <uo k="s:originTrace" v="n:6847626768367732449" />
                              <node concept="2jxLKc" id="5P" role="1tU5fm">
                                <uo k="s:originTrace" v="n:6847626768367732450" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="5_" role="1bW2Oz">
                    <property role="TrG5h" value="c" />
                    <uo k="s:originTrace" v="n:6847626768367732451" />
                    <node concept="2jxLKc" id="5Q" role="1tU5fm">
                      <uo k="s:originTrace" v="n:6847626768367732452" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="54" role="3cqZAp">
          <uo k="s:originTrace" v="n:4307205004145898696" />
        </node>
        <node concept="2Gpval" id="55" role="3cqZAp">
          <uo k="s:originTrace" v="n:4307205004145898592" />
          <node concept="2GrKxI" id="5R" role="2Gsz3X">
            <property role="TrG5h" value="group" />
            <uo k="s:originTrace" v="n:4307205004145898594" />
          </node>
          <node concept="37vLTw" id="5S" role="2GsD0m">
            <ref role="3cqZAo" node="5s" resolve="groupedByConcepts" />
            <uo k="s:originTrace" v="n:4307205004145898924" />
          </node>
          <node concept="3clFbS" id="5T" role="2LFqv$">
            <uo k="s:originTrace" v="n:4307205004145898598" />
            <node concept="3clFbJ" id="5U" role="3cqZAp">
              <uo k="s:originTrace" v="n:2284201910212748726" />
              <node concept="3clFbS" id="5V" role="3clFbx">
                <uo k="s:originTrace" v="n:2284201910212748729" />
                <node concept="2Gpval" id="5X" role="3cqZAp">
                  <uo k="s:originTrace" v="n:2284201910212811255" />
                  <node concept="2GrKxI" id="5Y" role="2Gsz3X">
                    <property role="TrG5h" value="other" />
                    <uo k="s:originTrace" v="n:2284201910212811257" />
                  </node>
                  <node concept="2OqwBi" id="5Z" role="2GsD0m">
                    <uo k="s:originTrace" v="n:2284201910212819925" />
                    <node concept="2GrUjf" id="61" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="5R" resolve="group" />
                      <uo k="s:originTrace" v="n:2284201910212813464" />
                    </node>
                    <node concept="2Wx4Xu" id="62" role="2OqNvi">
                      <uo k="s:originTrace" v="n:2284201910213049359" />
                      <node concept="3cpWsd" id="63" role="2WvESB">
                        <uo k="s:originTrace" v="n:2284201910213087222" />
                        <node concept="3cmrfG" id="64" role="3uHU7w">
                          <property role="3cmrfH" value="1" />
                          <uo k="s:originTrace" v="n:2284201910213087225" />
                        </node>
                        <node concept="2OqwBi" id="65" role="3uHU7B">
                          <uo k="s:originTrace" v="n:2284201910213058409" />
                          <node concept="2GrUjf" id="66" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="5R" resolve="group" />
                            <uo k="s:originTrace" v="n:2284201910213049439" />
                          </node>
                          <node concept="34oBXx" id="67" role="2OqNvi">
                            <uo k="s:originTrace" v="n:2284201910213073087" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="60" role="2LFqv$">
                    <uo k="s:originTrace" v="n:2284201910212811261" />
                    <node concept="9aQIb" id="68" role="3cqZAp">
                      <uo k="s:originTrace" v="n:2284201910212797905" />
                      <node concept="3clFbS" id="69" role="9aQI4">
                        <node concept="3cpWs8" id="6b" role="3cqZAp">
                          <node concept="3cpWsn" id="6d" role="3cpWs9">
                            <property role="TrG5h" value="errorTarget" />
                            <property role="3TUv4t" value="true" />
                            <node concept="3uibUv" id="6e" role="1tU5fm">
                              <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                            </node>
                            <node concept="2ShNRf" id="6f" role="33vP2m">
                              <node concept="1pGfFk" id="6g" role="2ShVmc">
                                <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="6c" role="3cqZAp">
                          <node concept="3cpWsn" id="6h" role="3cpWs9">
                            <property role="TrG5h" value="_reporter_2309309498" />
                            <node concept="3uibUv" id="6i" role="1tU5fm">
                              <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                            </node>
                            <node concept="2OqwBi" id="6j" role="33vP2m">
                              <node concept="3VmV3z" id="6k" role="2Oq$k0">
                                <property role="3VnrPo" value="typeCheckingContext" />
                                <node concept="3uibUv" id="6m" role="3Vn4Tt">
                                  <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                                </node>
                              </node>
                              <node concept="liA8E" id="6l" role="2OqNvi">
                                <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                                <node concept="2GrUjf" id="6n" role="37wK5m">
                                  <ref role="2Gs0qQ" node="5Y" resolve="other" />
                                  <uo k="s:originTrace" v="n:2284201910213120306" />
                                </node>
                                <node concept="3cpWs3" id="6o" role="37wK5m">
                                  <uo k="s:originTrace" v="n:2284201910212801289" />
                                  <node concept="2OqwBi" id="6t" role="3uHU7w">
                                    <uo k="s:originTrace" v="n:2284201910212801290" />
                                    <node concept="2OqwBi" id="6v" role="2Oq$k0">
                                      <uo k="s:originTrace" v="n:2284201910212801291" />
                                      <node concept="2OqwBi" id="6x" role="2Oq$k0">
                                        <uo k="s:originTrace" v="n:2284201910212801292" />
                                        <node concept="2GrUjf" id="6z" role="2Oq$k0">
                                          <ref role="2Gs0qQ" node="5R" resolve="group" />
                                          <uo k="s:originTrace" v="n:2284201910212801293" />
                                        </node>
                                        <node concept="1uHKPH" id="6$" role="2OqNvi">
                                          <uo k="s:originTrace" v="n:2284201910212801294" />
                                        </node>
                                      </node>
                                      <node concept="2yIwOk" id="6y" role="2OqNvi">
                                        <uo k="s:originTrace" v="n:8113079483880944088" />
                                      </node>
                                    </node>
                                    <node concept="3n3YKJ" id="6w" role="2OqNvi">
                                      <uo k="s:originTrace" v="n:8113079483880945936" />
                                    </node>
                                  </node>
                                  <node concept="Xl_RD" id="6u" role="3uHU7B">
                                    <property role="Xl_RC" value="Duplicated parameter: " />
                                    <uo k="s:originTrace" v="n:2284201910212801297" />
                                  </node>
                                </node>
                                <node concept="Xl_RD" id="6p" role="37wK5m">
                                  <property role="Xl_RC" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                                </node>
                                <node concept="Xl_RD" id="6q" role="37wK5m">
                                  <property role="Xl_RC" value="2284201910212797905" />
                                </node>
                                <node concept="10Nm6u" id="6r" role="37wK5m" />
                                <node concept="37vLTw" id="6s" role="37wK5m">
                                  <ref role="3cqZAo" node="6d" resolve="errorTarget" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="6wLe0" id="6a" role="lGtFl">
                        <property role="6wLej" value="2284201910212797905" />
                        <property role="6wLeW" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eOSWO" id="5W" role="3clFbw">
                <uo k="s:originTrace" v="n:2284201910212794562" />
                <node concept="3cmrfG" id="6_" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                  <uo k="s:originTrace" v="n:2284201910212794565" />
                </node>
                <node concept="2OqwBi" id="6A" role="3uHU7B">
                  <uo k="s:originTrace" v="n:2284201910212755721" />
                  <node concept="2GrUjf" id="6B" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="5R" resolve="group" />
                    <uo k="s:originTrace" v="n:2284201910212748854" />
                  </node>
                  <node concept="34oBXx" id="6C" role="2OqNvi">
                    <uo k="s:originTrace" v="n:2284201910212764013" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4X" role="1B3o_S">
        <uo k="s:originTrace" v="n:4307205004145151167" />
      </node>
    </node>
    <node concept="3clFb_" id="4J" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:4307205004145151167" />
      <node concept="3bZ5Sz" id="6D" role="3clF45">
        <uo k="s:originTrace" v="n:4307205004145151167" />
      </node>
      <node concept="3clFbS" id="6E" role="3clF47">
        <uo k="s:originTrace" v="n:4307205004145151167" />
        <node concept="3cpWs6" id="6G" role="3cqZAp">
          <uo k="s:originTrace" v="n:4307205004145151167" />
          <node concept="35c_gC" id="6H" role="3cqZAk">
            <ref role="35c_gD" to="3xdn:3J6h25Q5HRT" resolve="QueryParameterList" />
            <uo k="s:originTrace" v="n:4307205004145151167" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6F" role="1B3o_S">
        <uo k="s:originTrace" v="n:4307205004145151167" />
      </node>
    </node>
    <node concept="3clFb_" id="4K" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:4307205004145151167" />
      <node concept="37vLTG" id="6I" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:4307205004145151167" />
        <node concept="3Tqbb2" id="6M" role="1tU5fm">
          <uo k="s:originTrace" v="n:4307205004145151167" />
        </node>
      </node>
      <node concept="3clFbS" id="6J" role="3clF47">
        <uo k="s:originTrace" v="n:4307205004145151167" />
        <node concept="9aQIb" id="6N" role="3cqZAp">
          <uo k="s:originTrace" v="n:4307205004145151167" />
          <node concept="3clFbS" id="6O" role="9aQI4">
            <uo k="s:originTrace" v="n:4307205004145151167" />
            <node concept="3cpWs6" id="6P" role="3cqZAp">
              <uo k="s:originTrace" v="n:4307205004145151167" />
              <node concept="2ShNRf" id="6Q" role="3cqZAk">
                <uo k="s:originTrace" v="n:4307205004145151167" />
                <node concept="1pGfFk" id="6R" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:4307205004145151167" />
                  <node concept="2OqwBi" id="6S" role="37wK5m">
                    <uo k="s:originTrace" v="n:4307205004145151167" />
                    <node concept="2OqwBi" id="6U" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:4307205004145151167" />
                      <node concept="liA8E" id="6W" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:4307205004145151167" />
                      </node>
                      <node concept="2JrnkZ" id="6X" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:4307205004145151167" />
                        <node concept="37vLTw" id="6Y" role="2JrQYb">
                          <ref role="3cqZAo" node="6I" resolve="argument" />
                          <uo k="s:originTrace" v="n:4307205004145151167" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="6V" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:4307205004145151167" />
                      <node concept="1rXfSq" id="6Z" role="37wK5m">
                        <ref role="37wK5l" node="4J" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:4307205004145151167" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="6T" role="37wK5m">
                    <uo k="s:originTrace" v="n:4307205004145151167" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="6K" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:4307205004145151167" />
      </node>
      <node concept="3Tm1VV" id="6L" role="1B3o_S">
        <uo k="s:originTrace" v="n:4307205004145151167" />
      </node>
    </node>
    <node concept="3clFb_" id="4L" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:4307205004145151167" />
      <node concept="3clFbS" id="70" role="3clF47">
        <uo k="s:originTrace" v="n:4307205004145151167" />
        <node concept="3cpWs6" id="73" role="3cqZAp">
          <uo k="s:originTrace" v="n:4307205004145151167" />
          <node concept="3clFbT" id="74" role="3cqZAk">
            <uo k="s:originTrace" v="n:4307205004145151167" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="71" role="3clF45">
        <uo k="s:originTrace" v="n:4307205004145151167" />
      </node>
      <node concept="3Tm1VV" id="72" role="1B3o_S">
        <uo k="s:originTrace" v="n:4307205004145151167" />
      </node>
    </node>
    <node concept="3uibUv" id="4M" role="EKbjA">
      <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:4307205004145151167" />
    </node>
    <node concept="3uibUv" id="4N" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractNonTypesystemRule_Runtime" resolve="AbstractNonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:4307205004145151167" />
    </node>
    <node concept="3Tm1VV" id="4O" role="1B3o_S">
      <uo k="s:originTrace" v="n:4307205004145151167" />
    </node>
  </node>
  <node concept="312cEu" id="75">
    <property role="3GE5qa" value="query.parameter.scope" />
    <property role="TrG5h" value="typeof_CustomScope_InferenceRule" />
    <uo k="s:originTrace" v="n:2362304834939062479" />
    <node concept="3clFbW" id="76" role="jymVt">
      <uo k="s:originTrace" v="n:2362304834939062479" />
      <node concept="3clFbS" id="7e" role="3clF47">
        <uo k="s:originTrace" v="n:2362304834939062479" />
      </node>
      <node concept="3Tm1VV" id="7f" role="1B3o_S">
        <uo k="s:originTrace" v="n:2362304834939062479" />
      </node>
      <node concept="3cqZAl" id="7g" role="3clF45">
        <uo k="s:originTrace" v="n:2362304834939062479" />
      </node>
    </node>
    <node concept="3clFb_" id="77" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:2362304834939062479" />
      <node concept="3cqZAl" id="7h" role="3clF45">
        <uo k="s:originTrace" v="n:2362304834939062479" />
      </node>
      <node concept="37vLTG" id="7i" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="customScope" />
        <uo k="s:originTrace" v="n:2362304834939062479" />
        <node concept="3Tqbb2" id="7n" role="1tU5fm">
          <uo k="s:originTrace" v="n:2362304834939062479" />
        </node>
      </node>
      <node concept="37vLTG" id="7j" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:2362304834939062479" />
        <node concept="3uibUv" id="7o" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:2362304834939062479" />
        </node>
      </node>
      <node concept="37vLTG" id="7k" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:2362304834939062479" />
        <node concept="3uibUv" id="7p" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:2362304834939062479" />
        </node>
      </node>
      <node concept="3clFbS" id="7l" role="3clF47">
        <uo k="s:originTrace" v="n:2362304834939062480" />
        <node concept="3clFbJ" id="7q" role="3cqZAp">
          <uo k="s:originTrace" v="n:2362304834939062481" />
          <node concept="3fqX7Q" id="7r" role="3clFbw">
            <node concept="2OqwBi" id="7u" role="3fr31v">
              <node concept="3VmV3z" id="7v" role="2Oq$k0">
                <property role="3VnrPo" value="typeCheckingContext" />
                <node concept="3uibUv" id="7x" role="3Vn4Tt">
                  <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                </node>
              </node>
              <node concept="liA8E" id="7w" role="2OqNvi">
                <ref role="37wK5l" to="u78q:~TypeCheckingContext.isSingleTypeComputation()" resolve="isSingleTypeComputation" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7s" role="3clFbx">
            <node concept="9aQIb" id="7y" role="3cqZAp">
              <node concept="3clFbS" id="7z" role="9aQI4">
                <node concept="3cpWs8" id="7$" role="3cqZAp">
                  <node concept="3cpWsn" id="7B" role="3cpWs9">
                    <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                    <node concept="2OqwBi" id="7C" role="33vP2m">
                      <uo k="s:originTrace" v="n:2362304834939062487" />
                      <node concept="37vLTw" id="7E" role="2Oq$k0">
                        <ref role="3cqZAo" node="7i" resolve="customScope" />
                        <uo k="s:originTrace" v="n:2362304834939062488" />
                      </node>
                      <node concept="3TrEf2" id="7F" role="2OqNvi">
                        <ref role="3Tt5mk" to="3xdn:238_VGTIKuE" resolve="scope" />
                        <uo k="s:originTrace" v="n:2362304834939062489" />
                      </node>
                      <node concept="6wLe0" id="7G" role="lGtFl">
                        <property role="6wLej" value="2362304834939062481" />
                        <property role="6wLeW" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="7D" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="7_" role="3cqZAp">
                  <node concept="3cpWsn" id="7H" role="3cpWs9">
                    <property role="TrG5h" value="_info_12389875345" />
                    <node concept="3uibUv" id="7I" role="1tU5fm">
                      <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                    </node>
                    <node concept="2ShNRf" id="7J" role="33vP2m">
                      <node concept="1pGfFk" id="7K" role="2ShVmc">
                        <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                        <node concept="37vLTw" id="7L" role="37wK5m">
                          <ref role="3cqZAo" node="7B" resolve="_nodeToCheck_1029348928467" />
                        </node>
                        <node concept="10Nm6u" id="7M" role="37wK5m" />
                        <node concept="Xl_RD" id="7N" role="37wK5m">
                          <property role="Xl_RC" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="7O" role="37wK5m">
                          <property role="Xl_RC" value="2362304834939062481" />
                        </node>
                        <node concept="3cmrfG" id="7P" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="10Nm6u" id="7Q" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7A" role="3cqZAp">
                  <node concept="2OqwBi" id="7R" role="3clFbG">
                    <node concept="3VmV3z" id="7S" role="2Oq$k0">
                      <property role="3VnrPo" value="typeCheckingContext" />
                      <node concept="3uibUv" id="7U" role="3Vn4Tt">
                        <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                      </node>
                    </node>
                    <node concept="liA8E" id="7T" role="2OqNvi">
                      <ref role="37wK5l" to="u78q:~TypeCheckingContext.createLessThanInequality(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,boolean,boolean,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createLessThanInequality" />
                      <node concept="10QFUN" id="7V" role="37wK5m">
                        <uo k="s:originTrace" v="n:2362304834939062485" />
                        <node concept="3uibUv" id="80" role="10QFUM">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                        <node concept="2OqwBi" id="81" role="10QFUP">
                          <uo k="s:originTrace" v="n:2362304834939062486" />
                          <node concept="3VmV3z" id="82" role="2Oq$k0">
                            <property role="3VnrPo" value="typeCheckingContext" />
                            <node concept="3uibUv" id="85" role="3Vn4Tt">
                              <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                            </node>
                          </node>
                          <node concept="liA8E" id="83" role="2OqNvi">
                            <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                            <node concept="3VmV3z" id="86" role="37wK5m">
                              <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                              <node concept="3uibUv" id="8a" role="3Vn4Tt">
                                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="87" role="37wK5m">
                              <property role="Xl_RC" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                            </node>
                            <node concept="Xl_RD" id="88" role="37wK5m">
                              <property role="Xl_RC" value="2362304834939062486" />
                            </node>
                            <node concept="3clFbT" id="89" role="37wK5m">
                              <property role="3clFbU" value="true" />
                            </node>
                          </node>
                          <node concept="6wLe0" id="84" role="lGtFl">
                            <property role="6wLej" value="2362304834939062486" />
                            <property role="6wLeW" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                          </node>
                        </node>
                      </node>
                      <node concept="10QFUN" id="7W" role="37wK5m">
                        <uo k="s:originTrace" v="n:2362304834939062482" />
                        <node concept="3uibUv" id="8b" role="10QFUM">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                        <node concept="2c44tf" id="8c" role="10QFUP">
                          <uo k="s:originTrace" v="n:2362304834939062483" />
                          <node concept="3uibUv" id="8d" role="2c44tc">
                            <ref role="3uigEE" to="lui2:~SearchScope" resolve="SearchScope" />
                            <uo k="s:originTrace" v="n:2362304834939062484" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbT" id="7X" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                      <node concept="3clFbT" id="7Y" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                      <node concept="37vLTw" id="7Z" role="37wK5m">
                        <ref role="3cqZAo" node="7H" resolve="_info_12389875345" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="6wLe0" id="7t" role="lGtFl">
            <property role="6wLej" value="2362304834939062481" />
            <property role="6wLeW" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7m" role="1B3o_S">
        <uo k="s:originTrace" v="n:2362304834939062479" />
      </node>
    </node>
    <node concept="3clFb_" id="78" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:2362304834939062479" />
      <node concept="3bZ5Sz" id="8e" role="3clF45">
        <uo k="s:originTrace" v="n:2362304834939062479" />
      </node>
      <node concept="3clFbS" id="8f" role="3clF47">
        <uo k="s:originTrace" v="n:2362304834939062479" />
        <node concept="3cpWs6" id="8h" role="3cqZAp">
          <uo k="s:originTrace" v="n:2362304834939062479" />
          <node concept="35c_gC" id="8i" role="3cqZAk">
            <ref role="35c_gD" to="3xdn:238_VGTIKuD" resolve="CustomScope" />
            <uo k="s:originTrace" v="n:2362304834939062479" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="8g" role="1B3o_S">
        <uo k="s:originTrace" v="n:2362304834939062479" />
      </node>
    </node>
    <node concept="3clFb_" id="79" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:2362304834939062479" />
      <node concept="37vLTG" id="8j" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:2362304834939062479" />
        <node concept="3Tqbb2" id="8n" role="1tU5fm">
          <uo k="s:originTrace" v="n:2362304834939062479" />
        </node>
      </node>
      <node concept="3clFbS" id="8k" role="3clF47">
        <uo k="s:originTrace" v="n:2362304834939062479" />
        <node concept="9aQIb" id="8o" role="3cqZAp">
          <uo k="s:originTrace" v="n:2362304834939062479" />
          <node concept="3clFbS" id="8p" role="9aQI4">
            <uo k="s:originTrace" v="n:2362304834939062479" />
            <node concept="3cpWs6" id="8q" role="3cqZAp">
              <uo k="s:originTrace" v="n:2362304834939062479" />
              <node concept="2ShNRf" id="8r" role="3cqZAk">
                <uo k="s:originTrace" v="n:2362304834939062479" />
                <node concept="1pGfFk" id="8s" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:2362304834939062479" />
                  <node concept="2OqwBi" id="8t" role="37wK5m">
                    <uo k="s:originTrace" v="n:2362304834939062479" />
                    <node concept="2OqwBi" id="8v" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:2362304834939062479" />
                      <node concept="liA8E" id="8x" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:2362304834939062479" />
                      </node>
                      <node concept="2JrnkZ" id="8y" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:2362304834939062479" />
                        <node concept="37vLTw" id="8z" role="2JrQYb">
                          <ref role="3cqZAo" node="8j" resolve="argument" />
                          <uo k="s:originTrace" v="n:2362304834939062479" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="8w" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:2362304834939062479" />
                      <node concept="1rXfSq" id="8$" role="37wK5m">
                        <ref role="37wK5l" node="78" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:2362304834939062479" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="8u" role="37wK5m">
                    <uo k="s:originTrace" v="n:2362304834939062479" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="8l" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:2362304834939062479" />
      </node>
      <node concept="3Tm1VV" id="8m" role="1B3o_S">
        <uo k="s:originTrace" v="n:2362304834939062479" />
      </node>
    </node>
    <node concept="3clFb_" id="7a" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:2362304834939062479" />
      <node concept="3clFbS" id="8_" role="3clF47">
        <uo k="s:originTrace" v="n:2362304834939062479" />
        <node concept="3cpWs6" id="8C" role="3cqZAp">
          <uo k="s:originTrace" v="n:2362304834939062479" />
          <node concept="3clFbT" id="8D" role="3cqZAk">
            <uo k="s:originTrace" v="n:2362304834939062479" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="8A" role="3clF45">
        <uo k="s:originTrace" v="n:2362304834939062479" />
      </node>
      <node concept="3Tm1VV" id="8B" role="1B3o_S">
        <uo k="s:originTrace" v="n:2362304834939062479" />
      </node>
    </node>
    <node concept="3uibUv" id="7b" role="EKbjA">
      <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:2362304834939062479" />
    </node>
    <node concept="3uibUv" id="7c" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractInferenceRule_Runtime" resolve="AbstractInferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:2362304834939062479" />
    </node>
    <node concept="3Tm1VV" id="7d" role="1B3o_S">
      <uo k="s:originTrace" v="n:2362304834939062479" />
    </node>
  </node>
  <node concept="312cEu" id="8E">
    <property role="3GE5qa" value="query" />
    <property role="TrG5h" value="typeof_InstancesExpression_InferenceRule" />
    <uo k="s:originTrace" v="n:7738379549910147904" />
    <node concept="3clFbW" id="8F" role="jymVt">
      <uo k="s:originTrace" v="n:7738379549910147904" />
      <node concept="3clFbS" id="8N" role="3clF47">
        <uo k="s:originTrace" v="n:7738379549910147904" />
      </node>
      <node concept="3Tm1VV" id="8O" role="1B3o_S">
        <uo k="s:originTrace" v="n:7738379549910147904" />
      </node>
      <node concept="3cqZAl" id="8P" role="3clF45">
        <uo k="s:originTrace" v="n:7738379549910147904" />
      </node>
    </node>
    <node concept="3clFb_" id="8G" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:7738379549910147904" />
      <node concept="3cqZAl" id="8Q" role="3clF45">
        <uo k="s:originTrace" v="n:7738379549910147904" />
      </node>
      <node concept="37vLTG" id="8R" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="instancesExpression" />
        <uo k="s:originTrace" v="n:7738379549910147904" />
        <node concept="3Tqbb2" id="8W" role="1tU5fm">
          <uo k="s:originTrace" v="n:7738379549910147904" />
        </node>
      </node>
      <node concept="37vLTG" id="8S" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:7738379549910147904" />
        <node concept="3uibUv" id="8X" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:7738379549910147904" />
        </node>
      </node>
      <node concept="37vLTG" id="8T" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:7738379549910147904" />
        <node concept="3uibUv" id="8Y" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:7738379549910147904" />
        </node>
      </node>
      <node concept="3clFbS" id="8U" role="3clF47">
        <uo k="s:originTrace" v="n:7738379549910147905" />
        <node concept="9aQIb" id="8Z" role="3cqZAp">
          <uo k="s:originTrace" v="n:7057947030084340457" />
          <node concept="3clFbS" id="93" role="9aQI4">
            <node concept="3cpWs8" id="95" role="3cqZAp">
              <node concept="3cpWsn" id="98" role="3cpWs9">
                <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                <node concept="2OqwBi" id="99" role="33vP2m">
                  <uo k="s:originTrace" v="n:8933148862030332870" />
                  <node concept="37vLTw" id="9b" role="2Oq$k0">
                    <ref role="3cqZAo" node="8R" resolve="instancesExpression" />
                    <uo k="s:originTrace" v="n:8933148862030331284" />
                  </node>
                  <node concept="3TrEf2" id="9c" role="2OqNvi">
                    <ref role="3Tt5mk" to="3xdn:6H$fNdLyE4e" resolve="conceptArg" />
                    <uo k="s:originTrace" v="n:8933148862030342675" />
                  </node>
                  <node concept="6wLe0" id="9d" role="lGtFl">
                    <property role="6wLej" value="7057947030084340457" />
                    <property role="6wLeW" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                  </node>
                </node>
                <node concept="3uibUv" id="9a" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="96" role="3cqZAp">
              <node concept="3cpWsn" id="9e" role="3cpWs9">
                <property role="TrG5h" value="_info_12389875345" />
                <node concept="3uibUv" id="9f" role="1tU5fm">
                  <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                </node>
                <node concept="2ShNRf" id="9g" role="33vP2m">
                  <node concept="1pGfFk" id="9h" role="2ShVmc">
                    <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                    <node concept="37vLTw" id="9i" role="37wK5m">
                      <ref role="3cqZAo" node="98" resolve="_nodeToCheck_1029348928467" />
                    </node>
                    <node concept="10Nm6u" id="9j" role="37wK5m" />
                    <node concept="Xl_RD" id="9k" role="37wK5m">
                      <property role="Xl_RC" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                    </node>
                    <node concept="Xl_RD" id="9l" role="37wK5m">
                      <property role="Xl_RC" value="7057947030084340457" />
                    </node>
                    <node concept="3cmrfG" id="9m" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="10Nm6u" id="9n" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="97" role="3cqZAp">
              <node concept="2OqwBi" id="9o" role="3clFbG">
                <node concept="3VmV3z" id="9p" role="2Oq$k0">
                  <property role="3VnrPo" value="typeCheckingContext" />
                  <node concept="3uibUv" id="9r" role="3Vn4Tt">
                    <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                  </node>
                </node>
                <node concept="liA8E" id="9q" role="2OqNvi">
                  <ref role="37wK5l" to="u78q:~TypeCheckingContext.createLessThanInequality(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,boolean,boolean,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createLessThanInequality" />
                  <node concept="10QFUN" id="9s" role="37wK5m">
                    <uo k="s:originTrace" v="n:7057947030084340459" />
                    <node concept="3uibUv" id="9x" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="9y" role="10QFUP">
                      <uo k="s:originTrace" v="n:7057947030084340460" />
                      <node concept="3VmV3z" id="9z" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="9A" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="9$" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                        <node concept="3VmV3z" id="9B" role="37wK5m">
                          <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                          <node concept="3uibUv" id="9F" role="3Vn4Tt">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="9C" role="37wK5m">
                          <property role="Xl_RC" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="9D" role="37wK5m">
                          <property role="Xl_RC" value="7057947030084340460" />
                        </node>
                        <node concept="3clFbT" id="9E" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                      <node concept="6wLe0" id="9_" role="lGtFl">
                        <property role="6wLej" value="7057947030084340460" />
                        <property role="6wLeW" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                      </node>
                    </node>
                  </node>
                  <node concept="10QFUN" id="9t" role="37wK5m">
                    <uo k="s:originTrace" v="n:7057947030084342104" />
                    <node concept="3uibUv" id="9G" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2c44tf" id="9H" role="10QFUP">
                      <uo k="s:originTrace" v="n:7057947030084342100" />
                      <node concept="3bZ5Sz" id="9I" role="2c44tc">
                        <uo k="s:originTrace" v="n:6963130675034082836" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbT" id="9u" role="37wK5m" />
                  <node concept="3clFbT" id="9v" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                  <node concept="37vLTw" id="9w" role="37wK5m">
                    <ref role="3cqZAo" node="9e" resolve="_info_12389875345" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="6wLe0" id="94" role="lGtFl">
            <property role="6wLej" value="7057947030084340457" />
            <property role="6wLeW" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
          </node>
        </node>
        <node concept="3clFbH" id="90" role="3cqZAp">
          <uo k="s:originTrace" v="n:8933148862035757257" />
        </node>
        <node concept="9aQIb" id="91" role="3cqZAp">
          <uo k="s:originTrace" v="n:473081947984804985" />
          <node concept="3clFbS" id="9J" role="9aQI4">
            <node concept="3cpWs8" id="9L" role="3cqZAp">
              <node concept="3cpWsn" id="9O" role="3cpWs9">
                <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                <node concept="37vLTw" id="9P" role="33vP2m">
                  <ref role="3cqZAo" node="8R" resolve="instancesExpression" />
                  <uo k="s:originTrace" v="n:473081947984804989" />
                  <node concept="6wLe0" id="9R" role="lGtFl">
                    <property role="6wLej" value="473081947984804985" />
                    <property role="6wLeW" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                  </node>
                </node>
                <node concept="3uibUv" id="9Q" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="9M" role="3cqZAp">
              <node concept="3cpWsn" id="9S" role="3cpWs9">
                <property role="TrG5h" value="_info_12389875345" />
                <node concept="3uibUv" id="9T" role="1tU5fm">
                  <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                </node>
                <node concept="2ShNRf" id="9U" role="33vP2m">
                  <node concept="1pGfFk" id="9V" role="2ShVmc">
                    <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                    <node concept="37vLTw" id="9W" role="37wK5m">
                      <ref role="3cqZAo" node="9O" resolve="_nodeToCheck_1029348928467" />
                    </node>
                    <node concept="10Nm6u" id="9X" role="37wK5m" />
                    <node concept="Xl_RD" id="9Y" role="37wK5m">
                      <property role="Xl_RC" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                    </node>
                    <node concept="Xl_RD" id="9Z" role="37wK5m">
                      <property role="Xl_RC" value="473081947984804985" />
                    </node>
                    <node concept="3cmrfG" id="a0" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="10Nm6u" id="a1" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="9N" role="3cqZAp">
              <node concept="2OqwBi" id="a2" role="3clFbG">
                <node concept="3VmV3z" id="a3" role="2Oq$k0">
                  <property role="3VnrPo" value="typeCheckingContext" />
                  <node concept="3uibUv" id="a5" role="3Vn4Tt">
                    <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                  </node>
                </node>
                <node concept="liA8E" id="a4" role="2OqNvi">
                  <ref role="37wK5l" to="u78q:~TypeCheckingContext.createLessThanInequality(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,boolean,boolean,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createLessThanInequality" />
                  <node concept="10QFUN" id="a6" role="37wK5m">
                    <uo k="s:originTrace" v="n:473081947984804987" />
                    <node concept="3uibUv" id="ab" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="ac" role="10QFUP">
                      <uo k="s:originTrace" v="n:473081947984804988" />
                      <node concept="3VmV3z" id="ad" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="ag" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="ae" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                        <node concept="3VmV3z" id="ah" role="37wK5m">
                          <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                          <node concept="3uibUv" id="al" role="3Vn4Tt">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="ai" role="37wK5m">
                          <property role="Xl_RC" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="aj" role="37wK5m">
                          <property role="Xl_RC" value="473081947984804988" />
                        </node>
                        <node concept="3clFbT" id="ak" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                      <node concept="6wLe0" id="af" role="lGtFl">
                        <property role="6wLej" value="473081947984804988" />
                        <property role="6wLeW" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                      </node>
                    </node>
                  </node>
                  <node concept="10QFUN" id="a7" role="37wK5m">
                    <uo k="s:originTrace" v="n:473081947984804990" />
                    <node concept="3uibUv" id="am" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2c44tf" id="an" role="10QFUP">
                      <uo k="s:originTrace" v="n:473081947984804991" />
                      <node concept="3vKaQO" id="ao" role="2c44tc">
                        <uo k="s:originTrace" v="n:8269419424195801915" />
                        <node concept="3qUE_q" id="ap" role="3O5elw">
                          <uo k="s:originTrace" v="n:7322610796507637542" />
                          <node concept="3Tqbb2" id="aq" role="3qUE_r">
                            <uo k="s:originTrace" v="n:8269419424195801917" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbT" id="a8" role="37wK5m" />
                  <node concept="3clFbT" id="a9" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                  <node concept="37vLTw" id="aa" role="37wK5m">
                    <ref role="3cqZAo" node="9S" resolve="_info_12389875345" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="6wLe0" id="9K" role="lGtFl">
            <property role="6wLej" value="473081947984804985" />
            <property role="6wLeW" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
          </node>
        </node>
        <node concept="3clFbJ" id="92" role="3cqZAp">
          <uo k="s:originTrace" v="n:4693937538539119269" />
          <node concept="3clFbS" id="ar" role="3clFbx">
            <uo k="s:originTrace" v="n:4693937538539119272" />
            <node concept="9aQIb" id="au" role="3cqZAp">
              <uo k="s:originTrace" v="n:6864030874024291258" />
              <node concept="3clFbS" id="av" role="9aQI4">
                <node concept="3cpWs8" id="ax" role="3cqZAp">
                  <node concept="3cpWsn" id="az" role="3cpWs9">
                    <property role="3TUv4t" value="true" />
                    <property role="TrG5h" value="conceptParameterType" />
                    <node concept="3uibUv" id="a$" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="a_" role="33vP2m">
                      <uo k="s:originTrace" v="n:6864030874024291279" />
                      <node concept="3VmV3z" id="aA" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="aD" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="aB" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                        <node concept="2OqwBi" id="aE" role="37wK5m">
                          <uo k="s:originTrace" v="n:6864030874024549739" />
                          <node concept="37vLTw" id="aI" role="2Oq$k0">
                            <ref role="3cqZAo" node="8R" resolve="instancesExpression" />
                            <uo k="s:originTrace" v="n:6864030874024310130" />
                          </node>
                          <node concept="3TrEf2" id="aJ" role="2OqNvi">
                            <ref role="3Tt5mk" to="3xdn:6H$fNdLyE4e" resolve="conceptArg" />
                            <uo k="s:originTrace" v="n:6864030874024556610" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="aF" role="37wK5m">
                          <property role="Xl_RC" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="aG" role="37wK5m">
                          <property role="Xl_RC" value="6864030874024291279" />
                        </node>
                        <node concept="3clFbT" id="aH" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                      <node concept="6wLe0" id="aC" role="lGtFl">
                        <property role="6wLej" value="6864030874024291279" />
                        <property role="6wLeW" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="ay" role="3cqZAp">
                  <node concept="2OqwBi" id="aK" role="3clFbG">
                    <node concept="3VmV3z" id="aL" role="2Oq$k0">
                      <property role="3VnrPo" value="typeCheckingContext" />
                      <node concept="3uibUv" id="aN" role="3Vn4Tt">
                        <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                      </node>
                    </node>
                    <node concept="liA8E" id="aM" role="2OqNvi">
                      <ref role="37wK5l" to="u78q:~TypeCheckingContext.whenConcrete(org.jetbrains.mps.openapi.model.SNode,java.lang.Runnable,java.lang.String,java.lang.String,boolean,boolean,java.lang.String)" resolve="whenConcrete" />
                      <node concept="37vLTw" id="aO" role="37wK5m">
                        <ref role="3cqZAo" node="az" resolve="conceptParameterType" />
                      </node>
                      <node concept="1bVj0M" id="aP" role="37wK5m">
                        <node concept="3clFbS" id="aU" role="1bW5cS">
                          <uo k="s:originTrace" v="n:6864030874024291259" />
                          <node concept="3clFbJ" id="aV" role="3cqZAp">
                            <uo k="s:originTrace" v="n:6864030874024291260" />
                            <node concept="3clFbS" id="aW" role="3clFbx">
                              <uo k="s:originTrace" v="n:6864030874024291261" />
                              <node concept="3cpWs8" id="aY" role="3cqZAp">
                                <uo k="s:originTrace" v="n:6864030874024291262" />
                                <node concept="3cpWsn" id="b0" role="3cpWs9">
                                  <property role="TrG5h" value="conceptType" />
                                  <uo k="s:originTrace" v="n:6864030874024291263" />
                                  <node concept="3Tqbb2" id="b1" role="1tU5fm">
                                    <ref role="ehGHo" to="tp25:5MFgGQnlLNI" resolve="SConceptType" />
                                    <uo k="s:originTrace" v="n:6864030874024291264" />
                                  </node>
                                  <node concept="1PxgMI" id="b2" role="33vP2m">
                                    <uo k="s:originTrace" v="n:6864030874024291265" />
                                    <node concept="2OqwBi" id="b3" role="1m5AlR">
                                      <uo k="s:originTrace" v="n:6864030874024291266" />
                                      <node concept="3VmV3z" id="b5" role="2Oq$k0">
                                        <property role="3VnrPo" value="typeCheckingContext" />
                                        <node concept="3uibUv" id="b7" role="3Vn4Tt">
                                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="b6" role="2OqNvi">
                                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.getExpandedNode(org.jetbrains.mps.openapi.model.SNode)" resolve="getExpandedNode" />
                                        <node concept="3VmV3z" id="b8" role="37wK5m">
                                          <property role="3VnrPo" value="conceptParameterType" />
                                          <node concept="3uibUv" id="b9" role="3Vn4Tt">
                                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="chp4Y" id="b4" role="3oSUPX">
                                      <ref role="cht4Q" to="tp25:5MFgGQnlLNI" resolve="SConceptType" />
                                      <uo k="s:originTrace" v="n:8089793891579196676" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbJ" id="aZ" role="3cqZAp">
                                <uo k="s:originTrace" v="n:6864030874024607327" />
                                <node concept="3clFbS" id="ba" role="3clFbx">
                                  <uo k="s:originTrace" v="n:6864030874024607330" />
                                  <node concept="9aQIb" id="bd" role="3cqZAp">
                                    <uo k="s:originTrace" v="n:6864030874024608968" />
                                    <node concept="3clFbS" id="be" role="9aQI4">
                                      <node concept="3cpWs8" id="bg" role="3cqZAp">
                                        <node concept="3cpWsn" id="bj" role="3cpWs9">
                                          <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                                          <node concept="37vLTw" id="bk" role="33vP2m">
                                            <ref role="3cqZAo" node="8R" resolve="instancesExpression" />
                                            <uo k="s:originTrace" v="n:6864030874024608971" />
                                            <node concept="6wLe0" id="bm" role="lGtFl">
                                              <property role="6wLej" value="6864030874024608968" />
                                              <property role="6wLeW" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                                            </node>
                                          </node>
                                          <node concept="3uibUv" id="bl" role="1tU5fm">
                                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3cpWs8" id="bh" role="3cqZAp">
                                        <node concept="3cpWsn" id="bn" role="3cpWs9">
                                          <property role="TrG5h" value="_info_12389875345" />
                                          <node concept="3uibUv" id="bo" role="1tU5fm">
                                            <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                                          </node>
                                          <node concept="2ShNRf" id="bp" role="33vP2m">
                                            <node concept="1pGfFk" id="bq" role="2ShVmc">
                                              <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                                              <node concept="37vLTw" id="br" role="37wK5m">
                                                <ref role="3cqZAo" node="bj" resolve="_nodeToCheck_1029348928467" />
                                              </node>
                                              <node concept="10Nm6u" id="bs" role="37wK5m" />
                                              <node concept="Xl_RD" id="bt" role="37wK5m">
                                                <property role="Xl_RC" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                                              </node>
                                              <node concept="Xl_RD" id="bu" role="37wK5m">
                                                <property role="Xl_RC" value="6864030874024608968" />
                                              </node>
                                              <node concept="3cmrfG" id="bv" role="37wK5m">
                                                <property role="3cmrfH" value="0" />
                                              </node>
                                              <node concept="10Nm6u" id="bw" role="37wK5m" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3clFbF" id="bi" role="3cqZAp">
                                        <node concept="2OqwBi" id="bx" role="3clFbG">
                                          <node concept="3VmV3z" id="by" role="2Oq$k0">
                                            <property role="3VnrPo" value="typeCheckingContext" />
                                            <node concept="3uibUv" id="b$" role="3Vn4Tt">
                                              <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                                            </node>
                                          </node>
                                          <node concept="liA8E" id="bz" role="2OqNvi">
                                            <ref role="37wK5l" to="u78q:~TypeCheckingContext.createEquation(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createEquation" />
                                            <node concept="10QFUN" id="b_" role="37wK5m">
                                              <uo k="s:originTrace" v="n:6864030874024608969" />
                                              <node concept="3uibUv" id="bC" role="10QFUM">
                                                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                              </node>
                                              <node concept="2OqwBi" id="bD" role="10QFUP">
                                                <uo k="s:originTrace" v="n:6864030874024608970" />
                                                <node concept="3VmV3z" id="bE" role="2Oq$k0">
                                                  <property role="3VnrPo" value="typeCheckingContext" />
                                                  <node concept="3uibUv" id="bH" role="3Vn4Tt">
                                                    <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                                                  </node>
                                                </node>
                                                <node concept="liA8E" id="bF" role="2OqNvi">
                                                  <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                                                  <node concept="3VmV3z" id="bI" role="37wK5m">
                                                    <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                                                    <node concept="3uibUv" id="bM" role="3Vn4Tt">
                                                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                                    </node>
                                                  </node>
                                                  <node concept="Xl_RD" id="bJ" role="37wK5m">
                                                    <property role="Xl_RC" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                                                  </node>
                                                  <node concept="Xl_RD" id="bK" role="37wK5m">
                                                    <property role="Xl_RC" value="6864030874024608970" />
                                                  </node>
                                                  <node concept="3clFbT" id="bL" role="37wK5m">
                                                    <property role="3clFbU" value="true" />
                                                  </node>
                                                </node>
                                                <node concept="6wLe0" id="bG" role="lGtFl">
                                                  <property role="6wLej" value="6864030874024608970" />
                                                  <property role="6wLeW" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="10QFUN" id="bA" role="37wK5m">
                                              <uo k="s:originTrace" v="n:6864030874024608972" />
                                              <node concept="3uibUv" id="bN" role="10QFUM">
                                                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                              </node>
                                              <node concept="2c44tf" id="bO" role="10QFUP">
                                                <uo k="s:originTrace" v="n:6864030874024608973" />
                                                <node concept="3vKaQO" id="bP" role="2c44tc">
                                                  <uo k="s:originTrace" v="n:8269419424195796793" />
                                                  <node concept="3Tqbb2" id="bQ" role="3O5elw">
                                                    <uo k="s:originTrace" v="n:8269419424195796795" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="37vLTw" id="bB" role="37wK5m">
                                              <ref role="3cqZAo" node="bn" resolve="_info_12389875345" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="6wLe0" id="bf" role="lGtFl">
                                      <property role="6wLej" value="6864030874024608968" />
                                      <property role="6wLeW" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbC" id="bb" role="3clFbw">
                                  <uo k="s:originTrace" v="n:6864030874024608072" />
                                  <node concept="10Nm6u" id="bR" role="3uHU7w">
                                    <uo k="s:originTrace" v="n:6864030874024608099" />
                                  </node>
                                  <node concept="2OqwBi" id="bS" role="3uHU7B">
                                    <uo k="s:originTrace" v="n:6864030874024661085" />
                                    <node concept="3TrEf2" id="bT" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tp25:5MFgGQnlLNJ" resolve="conceptDeclaration" />
                                      <uo k="s:originTrace" v="n:6963130675034169927" />
                                    </node>
                                    <node concept="37vLTw" id="bU" role="2Oq$k0">
                                      <ref role="3cqZAo" node="b0" resolve="conceptType" />
                                      <uo k="s:originTrace" v="n:6864030874024607370" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="9aQIb" id="bc" role="9aQIa">
                                  <uo k="s:originTrace" v="n:6864030874024608154" />
                                  <node concept="3clFbS" id="bV" role="9aQI4">
                                    <uo k="s:originTrace" v="n:6864030874024608155" />
                                    <node concept="9aQIb" id="bW" role="3cqZAp">
                                      <uo k="s:originTrace" v="n:6864030874024291267" />
                                      <node concept="3clFbS" id="bX" role="9aQI4">
                                        <node concept="3cpWs8" id="bZ" role="3cqZAp">
                                          <node concept="3cpWsn" id="c2" role="3cpWs9">
                                            <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                                            <node concept="37vLTw" id="c3" role="33vP2m">
                                              <ref role="3cqZAo" node="8R" resolve="instancesExpression" />
                                              <uo k="s:originTrace" v="n:6864030874024312166" />
                                              <node concept="6wLe0" id="c5" role="lGtFl">
                                                <property role="6wLej" value="6864030874024291267" />
                                                <property role="6wLeW" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                                              </node>
                                            </node>
                                            <node concept="3uibUv" id="c4" role="1tU5fm">
                                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3cpWs8" id="c0" role="3cqZAp">
                                          <node concept="3cpWsn" id="c6" role="3cpWs9">
                                            <property role="TrG5h" value="_info_12389875345" />
                                            <node concept="3uibUv" id="c7" role="1tU5fm">
                                              <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                                            </node>
                                            <node concept="2ShNRf" id="c8" role="33vP2m">
                                              <node concept="1pGfFk" id="c9" role="2ShVmc">
                                                <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                                                <node concept="37vLTw" id="ca" role="37wK5m">
                                                  <ref role="3cqZAo" node="c2" resolve="_nodeToCheck_1029348928467" />
                                                </node>
                                                <node concept="10Nm6u" id="cb" role="37wK5m" />
                                                <node concept="Xl_RD" id="cc" role="37wK5m">
                                                  <property role="Xl_RC" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                                                </node>
                                                <node concept="Xl_RD" id="cd" role="37wK5m">
                                                  <property role="Xl_RC" value="6864030874024291267" />
                                                </node>
                                                <node concept="3cmrfG" id="ce" role="37wK5m">
                                                  <property role="3cmrfH" value="0" />
                                                </node>
                                                <node concept="10Nm6u" id="cf" role="37wK5m" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3clFbF" id="c1" role="3cqZAp">
                                          <node concept="2OqwBi" id="cg" role="3clFbG">
                                            <node concept="3VmV3z" id="ch" role="2Oq$k0">
                                              <property role="3VnrPo" value="typeCheckingContext" />
                                              <node concept="3uibUv" id="cj" role="3Vn4Tt">
                                                <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                                              </node>
                                            </node>
                                            <node concept="liA8E" id="ci" role="2OqNvi">
                                              <ref role="37wK5l" to="u78q:~TypeCheckingContext.createEquation(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createEquation" />
                                              <node concept="10QFUN" id="ck" role="37wK5m">
                                                <uo k="s:originTrace" v="n:6864030874024291268" />
                                                <node concept="3uibUv" id="cn" role="10QFUM">
                                                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                                </node>
                                                <node concept="2OqwBi" id="co" role="10QFUP">
                                                  <uo k="s:originTrace" v="n:6864030874024291269" />
                                                  <node concept="3VmV3z" id="cp" role="2Oq$k0">
                                                    <property role="3VnrPo" value="typeCheckingContext" />
                                                    <node concept="3uibUv" id="cs" role="3Vn4Tt">
                                                      <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                                                    </node>
                                                  </node>
                                                  <node concept="liA8E" id="cq" role="2OqNvi">
                                                    <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                                                    <node concept="3VmV3z" id="ct" role="37wK5m">
                                                      <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                                                      <node concept="3uibUv" id="cx" role="3Vn4Tt">
                                                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                                      </node>
                                                    </node>
                                                    <node concept="Xl_RD" id="cu" role="37wK5m">
                                                      <property role="Xl_RC" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                                                    </node>
                                                    <node concept="Xl_RD" id="cv" role="37wK5m">
                                                      <property role="Xl_RC" value="6864030874024291269" />
                                                    </node>
                                                    <node concept="3clFbT" id="cw" role="37wK5m">
                                                      <property role="3clFbU" value="true" />
                                                    </node>
                                                  </node>
                                                  <node concept="6wLe0" id="cr" role="lGtFl">
                                                    <property role="6wLej" value="6864030874024291269" />
                                                    <property role="6wLeW" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="10QFUN" id="cl" role="37wK5m">
                                                <uo k="s:originTrace" v="n:6864030874024315521" />
                                                <node concept="3uibUv" id="cy" role="10QFUM">
                                                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                                </node>
                                                <node concept="2c44tf" id="cz" role="10QFUP">
                                                  <uo k="s:originTrace" v="n:6864030874024315511" />
                                                  <node concept="3vKaQO" id="c$" role="2c44tc">
                                                    <uo k="s:originTrace" v="n:8269419424195796702" />
                                                    <node concept="3Tqbb2" id="c_" role="3O5elw">
                                                      <uo k="s:originTrace" v="n:8269419424195796704" />
                                                      <node concept="2c44tb" id="cA" role="lGtFl">
                                                        <property role="2qtEX8" value="concept" />
                                                        <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138055754698/1138405853777" />
                                                        <uo k="s:originTrace" v="n:8269419424195796705" />
                                                        <node concept="2OqwBi" id="cB" role="2c44t1">
                                                          <uo k="s:originTrace" v="n:8269419424195796706" />
                                                          <node concept="3TrEf2" id="cC" role="2OqNvi">
                                                            <ref role="3Tt5mk" to="tp25:5MFgGQnlLNJ" resolve="conceptDeclaration" />
                                                            <uo k="s:originTrace" v="n:8269419424195796707" />
                                                          </node>
                                                          <node concept="37vLTw" id="cD" role="2Oq$k0">
                                                            <ref role="3cqZAo" node="b0" resolve="conceptType" />
                                                            <uo k="s:originTrace" v="n:8269419424195796708" />
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="37vLTw" id="cm" role="37wK5m">
                                                <ref role="3cqZAo" node="c6" resolve="_info_12389875345" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="6wLe0" id="bY" role="lGtFl">
                                        <property role="6wLej" value="6864030874024291267" />
                                        <property role="6wLeW" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="2OqwBi" id="aX" role="3clFbw">
                              <uo k="s:originTrace" v="n:6864030874024291275" />
                              <node concept="2OqwBi" id="cE" role="2Oq$k0">
                                <uo k="s:originTrace" v="n:6864030874024291276" />
                                <node concept="3VmV3z" id="cG" role="2Oq$k0">
                                  <property role="3VnrPo" value="typeCheckingContext" />
                                  <node concept="3uibUv" id="cI" role="3Vn4Tt">
                                    <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="cH" role="2OqNvi">
                                  <ref role="37wK5l" to="u78q:~TypeCheckingContext.getExpandedNode(org.jetbrains.mps.openapi.model.SNode)" resolve="getExpandedNode" />
                                  <node concept="3VmV3z" id="cJ" role="37wK5m">
                                    <property role="3VnrPo" value="conceptParameterType" />
                                    <node concept="3uibUv" id="cK" role="3Vn4Tt">
                                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="1mIQ4w" id="cF" role="2OqNvi">
                                <uo k="s:originTrace" v="n:6864030874024291277" />
                                <node concept="chp4Y" id="cL" role="cj9EA">
                                  <ref role="cht4Q" to="tp25:5MFgGQnlLNI" resolve="SConceptType" />
                                  <uo k="s:originTrace" v="n:6963130675034083299" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Xl_RD" id="aQ" role="37wK5m">
                        <property role="Xl_RC" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                      </node>
                      <node concept="Xl_RD" id="aR" role="37wK5m">
                        <property role="Xl_RC" value="6864030874024291258" />
                      </node>
                      <node concept="3clFbT" id="aS" role="37wK5m" />
                      <node concept="3clFbT" id="aT" role="37wK5m" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="6wLe0" id="aw" role="lGtFl">
                <property role="6wLej" value="6864030874024291258" />
                <property role="6wLeW" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="as" role="3clFbw">
            <uo k="s:originTrace" v="n:4693937538539135996" />
            <node concept="2OqwBi" id="cM" role="2Oq$k0">
              <uo k="s:originTrace" v="n:4693937538539119890" />
              <node concept="37vLTw" id="cO" role="2Oq$k0">
                <ref role="3cqZAo" node="8R" resolve="instancesExpression" />
                <uo k="s:originTrace" v="n:4693937538539119348" />
              </node>
              <node concept="3TrEf2" id="cP" role="2OqNvi">
                <ref role="3Tt5mk" to="3xdn:6H$fNdLyE4e" resolve="conceptArg" />
                <uo k="s:originTrace" v="n:4693937538539128817" />
              </node>
            </node>
            <node concept="1mIQ4w" id="cN" role="2OqNvi">
              <uo k="s:originTrace" v="n:4693937538539141554" />
              <node concept="chp4Y" id="cQ" role="cj9EA">
                <ref role="cht4Q" to="tp25:hy5Kd_5" resolve="PoundExpression" />
                <uo k="s:originTrace" v="n:4693937538539141636" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="at" role="3eNLev">
            <uo k="s:originTrace" v="n:4693937538539145345" />
            <node concept="3clFbS" id="cR" role="3eOfB_">
              <uo k="s:originTrace" v="n:4693937538539145346" />
              <node concept="9aQIb" id="cT" role="3cqZAp">
                <uo k="s:originTrace" v="n:4693937538539160493" />
                <node concept="3clFbS" id="cU" role="9aQI4">
                  <node concept="3cpWs8" id="cW" role="3cqZAp">
                    <node concept="3cpWsn" id="cZ" role="3cpWs9">
                      <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                      <node concept="37vLTw" id="d0" role="33vP2m">
                        <ref role="3cqZAo" node="8R" resolve="instancesExpression" />
                        <uo k="s:originTrace" v="n:4693937538539160496" />
                        <node concept="6wLe0" id="d2" role="lGtFl">
                          <property role="6wLej" value="4693937538539160493" />
                          <property role="6wLeW" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                        </node>
                      </node>
                      <node concept="3uibUv" id="d1" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="cX" role="3cqZAp">
                    <node concept="3cpWsn" id="d3" role="3cpWs9">
                      <property role="TrG5h" value="_info_12389875345" />
                      <node concept="3uibUv" id="d4" role="1tU5fm">
                        <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                      </node>
                      <node concept="2ShNRf" id="d5" role="33vP2m">
                        <node concept="1pGfFk" id="d6" role="2ShVmc">
                          <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                          <node concept="37vLTw" id="d7" role="37wK5m">
                            <ref role="3cqZAo" node="cZ" resolve="_nodeToCheck_1029348928467" />
                          </node>
                          <node concept="10Nm6u" id="d8" role="37wK5m" />
                          <node concept="Xl_RD" id="d9" role="37wK5m">
                            <property role="Xl_RC" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                          </node>
                          <node concept="Xl_RD" id="da" role="37wK5m">
                            <property role="Xl_RC" value="4693937538539160493" />
                          </node>
                          <node concept="3cmrfG" id="db" role="37wK5m">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="10Nm6u" id="dc" role="37wK5m" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="cY" role="3cqZAp">
                    <node concept="2OqwBi" id="dd" role="3clFbG">
                      <node concept="3VmV3z" id="de" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="dg" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="df" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.createEquation(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createEquation" />
                        <node concept="10QFUN" id="dh" role="37wK5m">
                          <uo k="s:originTrace" v="n:4693937538539160494" />
                          <node concept="3uibUv" id="dk" role="10QFUM">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                          <node concept="2OqwBi" id="dl" role="10QFUP">
                            <uo k="s:originTrace" v="n:4693937538539160495" />
                            <node concept="3VmV3z" id="dm" role="2Oq$k0">
                              <property role="3VnrPo" value="typeCheckingContext" />
                              <node concept="3uibUv" id="dp" role="3Vn4Tt">
                                <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                              </node>
                            </node>
                            <node concept="liA8E" id="dn" role="2OqNvi">
                              <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                              <node concept="3VmV3z" id="dq" role="37wK5m">
                                <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                                <node concept="3uibUv" id="du" role="3Vn4Tt">
                                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                </node>
                              </node>
                              <node concept="Xl_RD" id="dr" role="37wK5m">
                                <property role="Xl_RC" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                              </node>
                              <node concept="Xl_RD" id="ds" role="37wK5m">
                                <property role="Xl_RC" value="4693937538539160495" />
                              </node>
                              <node concept="3clFbT" id="dt" role="37wK5m">
                                <property role="3clFbU" value="true" />
                              </node>
                            </node>
                            <node concept="6wLe0" id="do" role="lGtFl">
                              <property role="6wLej" value="4693937538539160495" />
                              <property role="6wLeW" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                            </node>
                          </node>
                        </node>
                        <node concept="10QFUN" id="di" role="37wK5m">
                          <uo k="s:originTrace" v="n:4693937538539160497" />
                          <node concept="3uibUv" id="dv" role="10QFUM">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                          <node concept="2c44tf" id="dw" role="10QFUP">
                            <uo k="s:originTrace" v="n:4693937538539160498" />
                            <node concept="3vKaQO" id="dx" role="2c44tc">
                              <uo k="s:originTrace" v="n:8269419424195796224" />
                              <node concept="3Tqbb2" id="dy" role="3O5elw">
                                <uo k="s:originTrace" v="n:8269419424195796226" />
                                <node concept="2c44tb" id="dz" role="lGtFl">
                                  <property role="2qtEX8" value="concept" />
                                  <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138055754698/1138405853777" />
                                  <uo k="s:originTrace" v="n:8269419424195796227" />
                                  <node concept="2OqwBi" id="d$" role="2c44t1">
                                    <uo k="s:originTrace" v="n:8269419424195796228" />
                                    <node concept="1PxgMI" id="d_" role="2Oq$k0">
                                      <uo k="s:originTrace" v="n:8269419424195796229" />
                                      <node concept="2OqwBi" id="dB" role="1m5AlR">
                                        <uo k="s:originTrace" v="n:8269419424195796230" />
                                        <node concept="37vLTw" id="dD" role="2Oq$k0">
                                          <ref role="3cqZAo" node="8R" resolve="instancesExpression" />
                                          <uo k="s:originTrace" v="n:8269419424195796231" />
                                        </node>
                                        <node concept="3TrEf2" id="dE" role="2OqNvi">
                                          <ref role="3Tt5mk" to="3xdn:6H$fNdLyE4e" resolve="conceptArg" />
                                          <uo k="s:originTrace" v="n:8269419424195796232" />
                                        </node>
                                      </node>
                                      <node concept="chp4Y" id="dC" role="3oSUPX">
                                        <ref role="cht4Q" to="tp25:h8chp0G" resolve="RefConcept_Reference" />
                                        <uo k="s:originTrace" v="n:8089793891579196675" />
                                      </node>
                                    </node>
                                    <node concept="3TrEf2" id="dA" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tp25:h8cht0$" resolve="conceptDeclaration" />
                                      <uo k="s:originTrace" v="n:8269419424195796233" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="dj" role="37wK5m">
                          <ref role="3cqZAo" node="d3" resolve="_info_12389875345" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="6wLe0" id="cV" role="lGtFl">
                  <property role="6wLej" value="4693937538539160493" />
                  <property role="6wLeW" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="cS" role="3eO9$A">
              <uo k="s:originTrace" v="n:4693937538539156744" />
              <node concept="2OqwBi" id="dF" role="2Oq$k0">
                <uo k="s:originTrace" v="n:4693937538539146793" />
                <node concept="37vLTw" id="dH" role="2Oq$k0">
                  <ref role="3cqZAo" node="8R" resolve="instancesExpression" />
                  <uo k="s:originTrace" v="n:4693937538539146245" />
                </node>
                <node concept="3TrEf2" id="dI" role="2OqNvi">
                  <ref role="3Tt5mk" to="3xdn:6H$fNdLyE4e" resolve="conceptArg" />
                  <uo k="s:originTrace" v="n:4693937538539152246" />
                </node>
              </node>
              <node concept="1mIQ4w" id="dG" role="2OqNvi">
                <uo k="s:originTrace" v="n:4693937538539160257" />
                <node concept="chp4Y" id="dJ" role="cj9EA">
                  <ref role="cht4Q" to="tp25:h8chp0G" resolve="RefConcept_Reference" />
                  <uo k="s:originTrace" v="n:4693937538539160339" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="8V" role="1B3o_S">
        <uo k="s:originTrace" v="n:7738379549910147904" />
      </node>
    </node>
    <node concept="3clFb_" id="8H" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:7738379549910147904" />
      <node concept="3bZ5Sz" id="dK" role="3clF45">
        <uo k="s:originTrace" v="n:7738379549910147904" />
      </node>
      <node concept="3clFbS" id="dL" role="3clF47">
        <uo k="s:originTrace" v="n:7738379549910147904" />
        <node concept="3cpWs6" id="dN" role="3cqZAp">
          <uo k="s:originTrace" v="n:7738379549910147904" />
          <node concept="35c_gC" id="dO" role="3cqZAk">
            <ref role="35c_gD" to="3xdn:6H$fNdLyE4d" resolve="InstancesExpression" />
            <uo k="s:originTrace" v="n:7738379549910147904" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="dM" role="1B3o_S">
        <uo k="s:originTrace" v="n:7738379549910147904" />
      </node>
    </node>
    <node concept="3clFb_" id="8I" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:7738379549910147904" />
      <node concept="37vLTG" id="dP" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:7738379549910147904" />
        <node concept="3Tqbb2" id="dT" role="1tU5fm">
          <uo k="s:originTrace" v="n:7738379549910147904" />
        </node>
      </node>
      <node concept="3clFbS" id="dQ" role="3clF47">
        <uo k="s:originTrace" v="n:7738379549910147904" />
        <node concept="9aQIb" id="dU" role="3cqZAp">
          <uo k="s:originTrace" v="n:7738379549910147904" />
          <node concept="3clFbS" id="dV" role="9aQI4">
            <uo k="s:originTrace" v="n:7738379549910147904" />
            <node concept="3cpWs6" id="dW" role="3cqZAp">
              <uo k="s:originTrace" v="n:7738379549910147904" />
              <node concept="2ShNRf" id="dX" role="3cqZAk">
                <uo k="s:originTrace" v="n:7738379549910147904" />
                <node concept="1pGfFk" id="dY" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:7738379549910147904" />
                  <node concept="2OqwBi" id="dZ" role="37wK5m">
                    <uo k="s:originTrace" v="n:7738379549910147904" />
                    <node concept="2OqwBi" id="e1" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:7738379549910147904" />
                      <node concept="liA8E" id="e3" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:7738379549910147904" />
                      </node>
                      <node concept="2JrnkZ" id="e4" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:7738379549910147904" />
                        <node concept="37vLTw" id="e5" role="2JrQYb">
                          <ref role="3cqZAo" node="dP" resolve="argument" />
                          <uo k="s:originTrace" v="n:7738379549910147904" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="e2" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:7738379549910147904" />
                      <node concept="1rXfSq" id="e6" role="37wK5m">
                        <ref role="37wK5l" node="8H" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:7738379549910147904" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="e0" role="37wK5m">
                    <uo k="s:originTrace" v="n:7738379549910147904" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="dR" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:7738379549910147904" />
      </node>
      <node concept="3Tm1VV" id="dS" role="1B3o_S">
        <uo k="s:originTrace" v="n:7738379549910147904" />
      </node>
    </node>
    <node concept="3clFb_" id="8J" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:7738379549910147904" />
      <node concept="3clFbS" id="e7" role="3clF47">
        <uo k="s:originTrace" v="n:7738379549910147904" />
        <node concept="3cpWs6" id="ea" role="3cqZAp">
          <uo k="s:originTrace" v="n:7738379549910147904" />
          <node concept="3clFbT" id="eb" role="3cqZAk">
            <uo k="s:originTrace" v="n:7738379549910147904" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="e8" role="3clF45">
        <uo k="s:originTrace" v="n:7738379549910147904" />
      </node>
      <node concept="3Tm1VV" id="e9" role="1B3o_S">
        <uo k="s:originTrace" v="n:7738379549910147904" />
      </node>
    </node>
    <node concept="3uibUv" id="8K" role="EKbjA">
      <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:7738379549910147904" />
    </node>
    <node concept="3uibUv" id="8L" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractInferenceRule_Runtime" resolve="AbstractInferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:7738379549910147904" />
    </node>
    <node concept="3Tm1VV" id="8M" role="1B3o_S">
      <uo k="s:originTrace" v="n:7738379549910147904" />
    </node>
  </node>
  <node concept="312cEu" id="ec">
    <property role="3GE5qa" value="query.parameter.scope" />
    <property role="TrG5h" value="typeof_ModelScopeLiteral_InferenceRule" />
    <uo k="s:originTrace" v="n:2362304834939062432" />
    <node concept="3clFbW" id="ed" role="jymVt">
      <uo k="s:originTrace" v="n:2362304834939062432" />
      <node concept="3clFbS" id="el" role="3clF47">
        <uo k="s:originTrace" v="n:2362304834939062432" />
      </node>
      <node concept="3Tm1VV" id="em" role="1B3o_S">
        <uo k="s:originTrace" v="n:2362304834939062432" />
      </node>
      <node concept="3cqZAl" id="en" role="3clF45">
        <uo k="s:originTrace" v="n:2362304834939062432" />
      </node>
    </node>
    <node concept="3clFb_" id="ee" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:2362304834939062432" />
      <node concept="3cqZAl" id="eo" role="3clF45">
        <uo k="s:originTrace" v="n:2362304834939062432" />
      </node>
      <node concept="37vLTG" id="ep" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="modelScopeLiteral" />
        <uo k="s:originTrace" v="n:2362304834939062432" />
        <node concept="3Tqbb2" id="eu" role="1tU5fm">
          <uo k="s:originTrace" v="n:2362304834939062432" />
        </node>
      </node>
      <node concept="37vLTG" id="eq" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:2362304834939062432" />
        <node concept="3uibUv" id="ev" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:2362304834939062432" />
        </node>
      </node>
      <node concept="37vLTG" id="er" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:2362304834939062432" />
        <node concept="3uibUv" id="ew" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:2362304834939062432" />
        </node>
      </node>
      <node concept="3clFbS" id="es" role="3clF47">
        <uo k="s:originTrace" v="n:2362304834939062433" />
        <node concept="3clFbJ" id="ex" role="3cqZAp">
          <uo k="s:originTrace" v="n:2362304834939062434" />
          <node concept="3fqX7Q" id="ey" role="3clFbw">
            <node concept="2OqwBi" id="e_" role="3fr31v">
              <node concept="3VmV3z" id="eA" role="2Oq$k0">
                <property role="3VnrPo" value="typeCheckingContext" />
                <node concept="3uibUv" id="eC" role="3Vn4Tt">
                  <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                </node>
              </node>
              <node concept="liA8E" id="eB" role="2OqNvi">
                <ref role="37wK5l" to="u78q:~TypeCheckingContext.isSingleTypeComputation()" resolve="isSingleTypeComputation" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="ez" role="3clFbx">
            <node concept="9aQIb" id="eD" role="3cqZAp">
              <node concept="3clFbS" id="eE" role="9aQI4">
                <node concept="3cpWs8" id="eF" role="3cqZAp">
                  <node concept="3cpWsn" id="eI" role="3cpWs9">
                    <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                    <node concept="2OqwBi" id="eJ" role="33vP2m">
                      <uo k="s:originTrace" v="n:2362304834939062437" />
                      <node concept="37vLTw" id="eL" role="2Oq$k0">
                        <ref role="3cqZAo" node="ep" resolve="modelScopeLiteral" />
                        <uo k="s:originTrace" v="n:2362304834939062438" />
                      </node>
                      <node concept="3TrEf2" id="eM" role="2OqNvi">
                        <ref role="3Tt5mk" to="3xdn:238_VGTIKuC" resolve="models" />
                        <uo k="s:originTrace" v="n:2362304834939062439" />
                      </node>
                      <node concept="6wLe0" id="eN" role="lGtFl">
                        <property role="6wLej" value="2362304834939062434" />
                        <property role="6wLeW" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="eK" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="eG" role="3cqZAp">
                  <node concept="3cpWsn" id="eO" role="3cpWs9">
                    <property role="TrG5h" value="_info_12389875345" />
                    <node concept="3uibUv" id="eP" role="1tU5fm">
                      <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                    </node>
                    <node concept="2ShNRf" id="eQ" role="33vP2m">
                      <node concept="1pGfFk" id="eR" role="2ShVmc">
                        <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                        <node concept="37vLTw" id="eS" role="37wK5m">
                          <ref role="3cqZAo" node="eI" resolve="_nodeToCheck_1029348928467" />
                        </node>
                        <node concept="10Nm6u" id="eT" role="37wK5m" />
                        <node concept="Xl_RD" id="eU" role="37wK5m">
                          <property role="Xl_RC" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="eV" role="37wK5m">
                          <property role="Xl_RC" value="2362304834939062434" />
                        </node>
                        <node concept="3cmrfG" id="eW" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="10Nm6u" id="eX" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="eH" role="3cqZAp">
                  <node concept="2OqwBi" id="eY" role="3clFbG">
                    <node concept="3VmV3z" id="eZ" role="2Oq$k0">
                      <property role="3VnrPo" value="typeCheckingContext" />
                      <node concept="3uibUv" id="f1" role="3Vn4Tt">
                        <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                      </node>
                    </node>
                    <node concept="liA8E" id="f0" role="2OqNvi">
                      <ref role="37wK5l" to="u78q:~TypeCheckingContext.createLessThanInequality(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,boolean,boolean,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createLessThanInequality" />
                      <node concept="10QFUN" id="f2" role="37wK5m">
                        <uo k="s:originTrace" v="n:2362304834939062435" />
                        <node concept="3uibUv" id="f7" role="10QFUM">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                        <node concept="2OqwBi" id="f8" role="10QFUP">
                          <uo k="s:originTrace" v="n:2362304834939062436" />
                          <node concept="3VmV3z" id="f9" role="2Oq$k0">
                            <property role="3VnrPo" value="typeCheckingContext" />
                            <node concept="3uibUv" id="fc" role="3Vn4Tt">
                              <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                            </node>
                          </node>
                          <node concept="liA8E" id="fa" role="2OqNvi">
                            <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                            <node concept="3VmV3z" id="fd" role="37wK5m">
                              <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                              <node concept="3uibUv" id="fh" role="3Vn4Tt">
                                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="fe" role="37wK5m">
                              <property role="Xl_RC" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                            </node>
                            <node concept="Xl_RD" id="ff" role="37wK5m">
                              <property role="Xl_RC" value="2362304834939062436" />
                            </node>
                            <node concept="3clFbT" id="fg" role="37wK5m">
                              <property role="3clFbU" value="true" />
                            </node>
                          </node>
                          <node concept="6wLe0" id="fb" role="lGtFl">
                            <property role="6wLej" value="2362304834939062436" />
                            <property role="6wLeW" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                          </node>
                        </node>
                      </node>
                      <node concept="10QFUN" id="f3" role="37wK5m">
                        <uo k="s:originTrace" v="n:2362304834939062440" />
                        <node concept="3uibUv" id="fi" role="10QFUM">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                        <node concept="2c44tf" id="fj" role="10QFUP">
                          <uo k="s:originTrace" v="n:2362304834939062441" />
                          <node concept="2usRSg" id="fk" role="2c44tc">
                            <uo k="s:originTrace" v="n:2362304834939062442" />
                            <node concept="H_c77" id="fl" role="2usUpS">
                              <uo k="s:originTrace" v="n:2362304834939062443" />
                            </node>
                            <node concept="A3Dl8" id="fm" role="2usUpS">
                              <uo k="s:originTrace" v="n:2362304834939062444" />
                              <node concept="H_c77" id="fn" role="A3Ik2">
                                <uo k="s:originTrace" v="n:2362304834939062445" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbT" id="f4" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                      <node concept="3clFbT" id="f5" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                      <node concept="37vLTw" id="f6" role="37wK5m">
                        <ref role="3cqZAo" node="eO" resolve="_info_12389875345" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="6wLe0" id="e$" role="lGtFl">
            <property role="6wLej" value="2362304834939062434" />
            <property role="6wLeW" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="et" role="1B3o_S">
        <uo k="s:originTrace" v="n:2362304834939062432" />
      </node>
    </node>
    <node concept="3clFb_" id="ef" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:2362304834939062432" />
      <node concept="3bZ5Sz" id="fo" role="3clF45">
        <uo k="s:originTrace" v="n:2362304834939062432" />
      </node>
      <node concept="3clFbS" id="fp" role="3clF47">
        <uo k="s:originTrace" v="n:2362304834939062432" />
        <node concept="3cpWs6" id="fr" role="3cqZAp">
          <uo k="s:originTrace" v="n:2362304834939062432" />
          <node concept="35c_gC" id="fs" role="3cqZAk">
            <ref role="35c_gD" to="3xdn:238_VGTIKuB" resolve="ModelsScope" />
            <uo k="s:originTrace" v="n:2362304834939062432" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="fq" role="1B3o_S">
        <uo k="s:originTrace" v="n:2362304834939062432" />
      </node>
    </node>
    <node concept="3clFb_" id="eg" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:2362304834939062432" />
      <node concept="37vLTG" id="ft" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:2362304834939062432" />
        <node concept="3Tqbb2" id="fx" role="1tU5fm">
          <uo k="s:originTrace" v="n:2362304834939062432" />
        </node>
      </node>
      <node concept="3clFbS" id="fu" role="3clF47">
        <uo k="s:originTrace" v="n:2362304834939062432" />
        <node concept="9aQIb" id="fy" role="3cqZAp">
          <uo k="s:originTrace" v="n:2362304834939062432" />
          <node concept="3clFbS" id="fz" role="9aQI4">
            <uo k="s:originTrace" v="n:2362304834939062432" />
            <node concept="3cpWs6" id="f$" role="3cqZAp">
              <uo k="s:originTrace" v="n:2362304834939062432" />
              <node concept="2ShNRf" id="f_" role="3cqZAk">
                <uo k="s:originTrace" v="n:2362304834939062432" />
                <node concept="1pGfFk" id="fA" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:2362304834939062432" />
                  <node concept="2OqwBi" id="fB" role="37wK5m">
                    <uo k="s:originTrace" v="n:2362304834939062432" />
                    <node concept="2OqwBi" id="fD" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:2362304834939062432" />
                      <node concept="liA8E" id="fF" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:2362304834939062432" />
                      </node>
                      <node concept="2JrnkZ" id="fG" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:2362304834939062432" />
                        <node concept="37vLTw" id="fH" role="2JrQYb">
                          <ref role="3cqZAo" node="ft" resolve="argument" />
                          <uo k="s:originTrace" v="n:2362304834939062432" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="fE" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:2362304834939062432" />
                      <node concept="1rXfSq" id="fI" role="37wK5m">
                        <ref role="37wK5l" node="ef" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:2362304834939062432" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="fC" role="37wK5m">
                    <uo k="s:originTrace" v="n:2362304834939062432" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="fv" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:2362304834939062432" />
      </node>
      <node concept="3Tm1VV" id="fw" role="1B3o_S">
        <uo k="s:originTrace" v="n:2362304834939062432" />
      </node>
    </node>
    <node concept="3clFb_" id="eh" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:2362304834939062432" />
      <node concept="3clFbS" id="fJ" role="3clF47">
        <uo k="s:originTrace" v="n:2362304834939062432" />
        <node concept="3cpWs6" id="fM" role="3cqZAp">
          <uo k="s:originTrace" v="n:2362304834939062432" />
          <node concept="3clFbT" id="fN" role="3cqZAk">
            <uo k="s:originTrace" v="n:2362304834939062432" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="fK" role="3clF45">
        <uo k="s:originTrace" v="n:2362304834939062432" />
      </node>
      <node concept="3Tm1VV" id="fL" role="1B3o_S">
        <uo k="s:originTrace" v="n:2362304834939062432" />
      </node>
    </node>
    <node concept="3uibUv" id="ei" role="EKbjA">
      <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:2362304834939062432" />
    </node>
    <node concept="3uibUv" id="ej" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractInferenceRule_Runtime" resolve="AbstractInferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:2362304834939062432" />
    </node>
    <node concept="3Tm1VV" id="ek" role="1B3o_S">
      <uo k="s:originTrace" v="n:2362304834939062432" />
    </node>
  </node>
  <node concept="312cEu" id="fO">
    <property role="3GE5qa" value="query" />
    <property role="TrG5h" value="typeof_ModelsExpression_InferenceRule" />
    <uo k="s:originTrace" v="n:6864030874027864054" />
    <node concept="3clFbW" id="fP" role="jymVt">
      <uo k="s:originTrace" v="n:6864030874027864054" />
      <node concept="3clFbS" id="fX" role="3clF47">
        <uo k="s:originTrace" v="n:6864030874027864054" />
      </node>
      <node concept="3Tm1VV" id="fY" role="1B3o_S">
        <uo k="s:originTrace" v="n:6864030874027864054" />
      </node>
      <node concept="3cqZAl" id="fZ" role="3clF45">
        <uo k="s:originTrace" v="n:6864030874027864054" />
      </node>
    </node>
    <node concept="3clFb_" id="fQ" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:6864030874027864054" />
      <node concept="3cqZAl" id="g0" role="3clF45">
        <uo k="s:originTrace" v="n:6864030874027864054" />
      </node>
      <node concept="37vLTG" id="g1" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="modelsExpression" />
        <uo k="s:originTrace" v="n:6864030874027864054" />
        <node concept="3Tqbb2" id="g6" role="1tU5fm">
          <uo k="s:originTrace" v="n:6864030874027864054" />
        </node>
      </node>
      <node concept="37vLTG" id="g2" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:6864030874027864054" />
        <node concept="3uibUv" id="g7" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:6864030874027864054" />
        </node>
      </node>
      <node concept="37vLTG" id="g3" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:6864030874027864054" />
        <node concept="3uibUv" id="g8" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:6864030874027864054" />
        </node>
      </node>
      <node concept="3clFbS" id="g4" role="3clF47">
        <uo k="s:originTrace" v="n:6864030874027864055" />
        <node concept="9aQIb" id="g9" role="3cqZAp">
          <uo k="s:originTrace" v="n:6864030874027864625" />
          <node concept="3clFbS" id="ga" role="9aQI4">
            <node concept="3cpWs8" id="gc" role="3cqZAp">
              <node concept="3cpWsn" id="gf" role="3cpWs9">
                <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                <node concept="37vLTw" id="gg" role="33vP2m">
                  <ref role="3cqZAo" node="g1" resolve="modelsExpression" />
                  <uo k="s:originTrace" v="n:6864030874027864201" />
                  <node concept="6wLe0" id="gi" role="lGtFl">
                    <property role="6wLej" value="6864030874027864625" />
                    <property role="6wLeW" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                  </node>
                </node>
                <node concept="3uibUv" id="gh" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="gd" role="3cqZAp">
              <node concept="3cpWsn" id="gj" role="3cpWs9">
                <property role="TrG5h" value="_info_12389875345" />
                <node concept="3uibUv" id="gk" role="1tU5fm">
                  <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                </node>
                <node concept="2ShNRf" id="gl" role="33vP2m">
                  <node concept="1pGfFk" id="gm" role="2ShVmc">
                    <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                    <node concept="37vLTw" id="gn" role="37wK5m">
                      <ref role="3cqZAo" node="gf" resolve="_nodeToCheck_1029348928467" />
                    </node>
                    <node concept="10Nm6u" id="go" role="37wK5m" />
                    <node concept="Xl_RD" id="gp" role="37wK5m">
                      <property role="Xl_RC" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                    </node>
                    <node concept="Xl_RD" id="gq" role="37wK5m">
                      <property role="Xl_RC" value="6864030874027864625" />
                    </node>
                    <node concept="3cmrfG" id="gr" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="10Nm6u" id="gs" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="ge" role="3cqZAp">
              <node concept="2OqwBi" id="gt" role="3clFbG">
                <node concept="3VmV3z" id="gu" role="2Oq$k0">
                  <property role="3VnrPo" value="typeCheckingContext" />
                  <node concept="3uibUv" id="gw" role="3Vn4Tt">
                    <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                  </node>
                </node>
                <node concept="liA8E" id="gv" role="2OqNvi">
                  <ref role="37wK5l" to="u78q:~TypeCheckingContext.createEquation(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createEquation" />
                  <node concept="10QFUN" id="gx" role="37wK5m">
                    <uo k="s:originTrace" v="n:6864030874027864628" />
                    <node concept="3uibUv" id="g$" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="g_" role="10QFUP">
                      <uo k="s:originTrace" v="n:6864030874027864139" />
                      <node concept="3VmV3z" id="gA" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="gD" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="gB" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                        <node concept="3VmV3z" id="gE" role="37wK5m">
                          <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                          <node concept="3uibUv" id="gI" role="3Vn4Tt">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="gF" role="37wK5m">
                          <property role="Xl_RC" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="gG" role="37wK5m">
                          <property role="Xl_RC" value="6864030874027864139" />
                        </node>
                        <node concept="3clFbT" id="gH" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                      <node concept="6wLe0" id="gC" role="lGtFl">
                        <property role="6wLej" value="6864030874027864139" />
                        <property role="6wLeW" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                      </node>
                    </node>
                  </node>
                  <node concept="10QFUN" id="gy" role="37wK5m">
                    <uo k="s:originTrace" v="n:6864030874027864704" />
                    <node concept="3uibUv" id="gJ" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2c44tf" id="gK" role="10QFUP">
                      <uo k="s:originTrace" v="n:6864030874027864700" />
                      <node concept="A3Dl8" id="gL" role="2c44tc">
                        <uo k="s:originTrace" v="n:6864030874027864739" />
                        <node concept="H_c77" id="gM" role="A3Ik2">
                          <uo k="s:originTrace" v="n:6864030874027864814" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="gz" role="37wK5m">
                    <ref role="3cqZAo" node="gj" resolve="_info_12389875345" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="6wLe0" id="gb" role="lGtFl">
            <property role="6wLej" value="6864030874027864625" />
            <property role="6wLeW" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="g5" role="1B3o_S">
        <uo k="s:originTrace" v="n:6864030874027864054" />
      </node>
    </node>
    <node concept="3clFb_" id="fR" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:6864030874027864054" />
      <node concept="3bZ5Sz" id="gN" role="3clF45">
        <uo k="s:originTrace" v="n:6864030874027864054" />
      </node>
      <node concept="3clFbS" id="gO" role="3clF47">
        <uo k="s:originTrace" v="n:6864030874027864054" />
        <node concept="3cpWs6" id="gQ" role="3cqZAp">
          <uo k="s:originTrace" v="n:6864030874027864054" />
          <node concept="35c_gC" id="gR" role="3cqZAk">
            <ref role="35c_gD" to="3xdn:5X1VVpPJEGH" resolve="ModelsExpression" />
            <uo k="s:originTrace" v="n:6864030874027864054" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="gP" role="1B3o_S">
        <uo k="s:originTrace" v="n:6864030874027864054" />
      </node>
    </node>
    <node concept="3clFb_" id="fS" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:6864030874027864054" />
      <node concept="37vLTG" id="gS" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:6864030874027864054" />
        <node concept="3Tqbb2" id="gW" role="1tU5fm">
          <uo k="s:originTrace" v="n:6864030874027864054" />
        </node>
      </node>
      <node concept="3clFbS" id="gT" role="3clF47">
        <uo k="s:originTrace" v="n:6864030874027864054" />
        <node concept="9aQIb" id="gX" role="3cqZAp">
          <uo k="s:originTrace" v="n:6864030874027864054" />
          <node concept="3clFbS" id="gY" role="9aQI4">
            <uo k="s:originTrace" v="n:6864030874027864054" />
            <node concept="3cpWs6" id="gZ" role="3cqZAp">
              <uo k="s:originTrace" v="n:6864030874027864054" />
              <node concept="2ShNRf" id="h0" role="3cqZAk">
                <uo k="s:originTrace" v="n:6864030874027864054" />
                <node concept="1pGfFk" id="h1" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:6864030874027864054" />
                  <node concept="2OqwBi" id="h2" role="37wK5m">
                    <uo k="s:originTrace" v="n:6864030874027864054" />
                    <node concept="2OqwBi" id="h4" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:6864030874027864054" />
                      <node concept="liA8E" id="h6" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:6864030874027864054" />
                      </node>
                      <node concept="2JrnkZ" id="h7" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:6864030874027864054" />
                        <node concept="37vLTw" id="h8" role="2JrQYb">
                          <ref role="3cqZAo" node="gS" resolve="argument" />
                          <uo k="s:originTrace" v="n:6864030874027864054" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="h5" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:6864030874027864054" />
                      <node concept="1rXfSq" id="h9" role="37wK5m">
                        <ref role="37wK5l" node="fR" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:6864030874027864054" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="h3" role="37wK5m">
                    <uo k="s:originTrace" v="n:6864030874027864054" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="gU" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:6864030874027864054" />
      </node>
      <node concept="3Tm1VV" id="gV" role="1B3o_S">
        <uo k="s:originTrace" v="n:6864030874027864054" />
      </node>
    </node>
    <node concept="3clFb_" id="fT" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:6864030874027864054" />
      <node concept="3clFbS" id="ha" role="3clF47">
        <uo k="s:originTrace" v="n:6864030874027864054" />
        <node concept="3cpWs6" id="hd" role="3cqZAp">
          <uo k="s:originTrace" v="n:6864030874027864054" />
          <node concept="3clFbT" id="he" role="3cqZAk">
            <uo k="s:originTrace" v="n:6864030874027864054" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="hb" role="3clF45">
        <uo k="s:originTrace" v="n:6864030874027864054" />
      </node>
      <node concept="3Tm1VV" id="hc" role="1B3o_S">
        <uo k="s:originTrace" v="n:6864030874027864054" />
      </node>
    </node>
    <node concept="3uibUv" id="fU" role="EKbjA">
      <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:6864030874027864054" />
    </node>
    <node concept="3uibUv" id="fV" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractInferenceRule_Runtime" resolve="AbstractInferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:6864030874027864054" />
    </node>
    <node concept="3Tm1VV" id="fW" role="1B3o_S">
      <uo k="s:originTrace" v="n:6864030874027864054" />
    </node>
  </node>
  <node concept="312cEu" id="hf">
    <property role="3GE5qa" value="query.parameter.scope" />
    <property role="TrG5h" value="typeof_ModuleScopeLiteral_InferenceRule" />
    <uo k="s:originTrace" v="n:2362304834939062380" />
    <node concept="3clFbW" id="hg" role="jymVt">
      <uo k="s:originTrace" v="n:2362304834939062380" />
      <node concept="3clFbS" id="ho" role="3clF47">
        <uo k="s:originTrace" v="n:2362304834939062380" />
      </node>
      <node concept="3Tm1VV" id="hp" role="1B3o_S">
        <uo k="s:originTrace" v="n:2362304834939062380" />
      </node>
      <node concept="3cqZAl" id="hq" role="3clF45">
        <uo k="s:originTrace" v="n:2362304834939062380" />
      </node>
    </node>
    <node concept="3clFb_" id="hh" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:2362304834939062380" />
      <node concept="3cqZAl" id="hr" role="3clF45">
        <uo k="s:originTrace" v="n:2362304834939062380" />
      </node>
      <node concept="37vLTG" id="hs" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="moduleScopeLiteral" />
        <uo k="s:originTrace" v="n:2362304834939062380" />
        <node concept="3Tqbb2" id="hx" role="1tU5fm">
          <uo k="s:originTrace" v="n:2362304834939062380" />
        </node>
      </node>
      <node concept="37vLTG" id="ht" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:2362304834939062380" />
        <node concept="3uibUv" id="hy" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:2362304834939062380" />
        </node>
      </node>
      <node concept="37vLTG" id="hu" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:2362304834939062380" />
        <node concept="3uibUv" id="hz" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:2362304834939062380" />
        </node>
      </node>
      <node concept="3clFbS" id="hv" role="3clF47">
        <uo k="s:originTrace" v="n:2362304834939062381" />
        <node concept="3clFbJ" id="h$" role="3cqZAp">
          <uo k="s:originTrace" v="n:2362304834939062382" />
          <node concept="3fqX7Q" id="h_" role="3clFbw">
            <node concept="2OqwBi" id="hC" role="3fr31v">
              <node concept="3VmV3z" id="hD" role="2Oq$k0">
                <property role="3VnrPo" value="typeCheckingContext" />
                <node concept="3uibUv" id="hF" role="3Vn4Tt">
                  <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                </node>
              </node>
              <node concept="liA8E" id="hE" role="2OqNvi">
                <ref role="37wK5l" to="u78q:~TypeCheckingContext.isSingleTypeComputation()" resolve="isSingleTypeComputation" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="hA" role="3clFbx">
            <node concept="9aQIb" id="hG" role="3cqZAp">
              <node concept="3clFbS" id="hH" role="9aQI4">
                <node concept="3cpWs8" id="hI" role="3cqZAp">
                  <node concept="3cpWsn" id="hL" role="3cpWs9">
                    <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                    <node concept="2OqwBi" id="hM" role="33vP2m">
                      <uo k="s:originTrace" v="n:2362304834939062385" />
                      <node concept="37vLTw" id="hO" role="2Oq$k0">
                        <ref role="3cqZAo" node="hs" resolve="moduleScopeLiteral" />
                        <uo k="s:originTrace" v="n:2362304834939062386" />
                      </node>
                      <node concept="3TrEf2" id="hP" role="2OqNvi">
                        <ref role="3Tt5mk" to="3xdn:238_VGTIKuA" resolve="modules" />
                        <uo k="s:originTrace" v="n:2362304834939062387" />
                      </node>
                      <node concept="6wLe0" id="hQ" role="lGtFl">
                        <property role="6wLej" value="2362304834939062382" />
                        <property role="6wLeW" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="hN" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="hJ" role="3cqZAp">
                  <node concept="3cpWsn" id="hR" role="3cpWs9">
                    <property role="TrG5h" value="_info_12389875345" />
                    <node concept="3uibUv" id="hS" role="1tU5fm">
                      <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                    </node>
                    <node concept="2ShNRf" id="hT" role="33vP2m">
                      <node concept="1pGfFk" id="hU" role="2ShVmc">
                        <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                        <node concept="37vLTw" id="hV" role="37wK5m">
                          <ref role="3cqZAo" node="hL" resolve="_nodeToCheck_1029348928467" />
                        </node>
                        <node concept="10Nm6u" id="hW" role="37wK5m" />
                        <node concept="Xl_RD" id="hX" role="37wK5m">
                          <property role="Xl_RC" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="hY" role="37wK5m">
                          <property role="Xl_RC" value="2362304834939062382" />
                        </node>
                        <node concept="3cmrfG" id="hZ" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="10Nm6u" id="i0" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="hK" role="3cqZAp">
                  <node concept="2OqwBi" id="i1" role="3clFbG">
                    <node concept="3VmV3z" id="i2" role="2Oq$k0">
                      <property role="3VnrPo" value="typeCheckingContext" />
                      <node concept="3uibUv" id="i4" role="3Vn4Tt">
                        <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                      </node>
                    </node>
                    <node concept="liA8E" id="i3" role="2OqNvi">
                      <ref role="37wK5l" to="u78q:~TypeCheckingContext.createLessThanInequality(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,boolean,boolean,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createLessThanInequality" />
                      <node concept="10QFUN" id="i5" role="37wK5m">
                        <uo k="s:originTrace" v="n:2362304834939062383" />
                        <node concept="3uibUv" id="ia" role="10QFUM">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                        <node concept="2OqwBi" id="ib" role="10QFUP">
                          <uo k="s:originTrace" v="n:2362304834939062384" />
                          <node concept="3VmV3z" id="ic" role="2Oq$k0">
                            <property role="3VnrPo" value="typeCheckingContext" />
                            <node concept="3uibUv" id="if" role="3Vn4Tt">
                              <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                            </node>
                          </node>
                          <node concept="liA8E" id="id" role="2OqNvi">
                            <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                            <node concept="3VmV3z" id="ig" role="37wK5m">
                              <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                              <node concept="3uibUv" id="ik" role="3Vn4Tt">
                                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="ih" role="37wK5m">
                              <property role="Xl_RC" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                            </node>
                            <node concept="Xl_RD" id="ii" role="37wK5m">
                              <property role="Xl_RC" value="2362304834939062384" />
                            </node>
                            <node concept="3clFbT" id="ij" role="37wK5m">
                              <property role="3clFbU" value="true" />
                            </node>
                          </node>
                          <node concept="6wLe0" id="ie" role="lGtFl">
                            <property role="6wLej" value="2362304834939062384" />
                            <property role="6wLeW" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                          </node>
                        </node>
                      </node>
                      <node concept="10QFUN" id="i6" role="37wK5m">
                        <uo k="s:originTrace" v="n:2362304834939062388" />
                        <node concept="3uibUv" id="il" role="10QFUM">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                        <node concept="2c44tf" id="im" role="10QFUP">
                          <uo k="s:originTrace" v="n:2362304834939062389" />
                          <node concept="2usRSg" id="in" role="2c44tc">
                            <uo k="s:originTrace" v="n:2362304834939062390" />
                            <node concept="3uibUv" id="io" role="2usUpS">
                              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                              <uo k="s:originTrace" v="n:2362304834939062391" />
                            </node>
                            <node concept="A3Dl8" id="ip" role="2usUpS">
                              <uo k="s:originTrace" v="n:2362304834939062392" />
                              <node concept="3uibUv" id="iq" role="A3Ik2">
                                <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                                <uo k="s:originTrace" v="n:2362304834939062393" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbT" id="i7" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                      <node concept="3clFbT" id="i8" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                      <node concept="37vLTw" id="i9" role="37wK5m">
                        <ref role="3cqZAo" node="hR" resolve="_info_12389875345" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="6wLe0" id="hB" role="lGtFl">
            <property role="6wLej" value="2362304834939062382" />
            <property role="6wLeW" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="hw" role="1B3o_S">
        <uo k="s:originTrace" v="n:2362304834939062380" />
      </node>
    </node>
    <node concept="3clFb_" id="hi" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:2362304834939062380" />
      <node concept="3bZ5Sz" id="ir" role="3clF45">
        <uo k="s:originTrace" v="n:2362304834939062380" />
      </node>
      <node concept="3clFbS" id="is" role="3clF47">
        <uo k="s:originTrace" v="n:2362304834939062380" />
        <node concept="3cpWs6" id="iu" role="3cqZAp">
          <uo k="s:originTrace" v="n:2362304834939062380" />
          <node concept="35c_gC" id="iv" role="3cqZAk">
            <ref role="35c_gD" to="3xdn:238_VGTIKu_" resolve="ModulesScope" />
            <uo k="s:originTrace" v="n:2362304834939062380" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="it" role="1B3o_S">
        <uo k="s:originTrace" v="n:2362304834939062380" />
      </node>
    </node>
    <node concept="3clFb_" id="hj" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:2362304834939062380" />
      <node concept="37vLTG" id="iw" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:2362304834939062380" />
        <node concept="3Tqbb2" id="i$" role="1tU5fm">
          <uo k="s:originTrace" v="n:2362304834939062380" />
        </node>
      </node>
      <node concept="3clFbS" id="ix" role="3clF47">
        <uo k="s:originTrace" v="n:2362304834939062380" />
        <node concept="9aQIb" id="i_" role="3cqZAp">
          <uo k="s:originTrace" v="n:2362304834939062380" />
          <node concept="3clFbS" id="iA" role="9aQI4">
            <uo k="s:originTrace" v="n:2362304834939062380" />
            <node concept="3cpWs6" id="iB" role="3cqZAp">
              <uo k="s:originTrace" v="n:2362304834939062380" />
              <node concept="2ShNRf" id="iC" role="3cqZAk">
                <uo k="s:originTrace" v="n:2362304834939062380" />
                <node concept="1pGfFk" id="iD" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:2362304834939062380" />
                  <node concept="2OqwBi" id="iE" role="37wK5m">
                    <uo k="s:originTrace" v="n:2362304834939062380" />
                    <node concept="2OqwBi" id="iG" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:2362304834939062380" />
                      <node concept="liA8E" id="iI" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:2362304834939062380" />
                      </node>
                      <node concept="2JrnkZ" id="iJ" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:2362304834939062380" />
                        <node concept="37vLTw" id="iK" role="2JrQYb">
                          <ref role="3cqZAo" node="iw" resolve="argument" />
                          <uo k="s:originTrace" v="n:2362304834939062380" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="iH" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:2362304834939062380" />
                      <node concept="1rXfSq" id="iL" role="37wK5m">
                        <ref role="37wK5l" node="hi" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:2362304834939062380" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="iF" role="37wK5m">
                    <uo k="s:originTrace" v="n:2362304834939062380" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="iy" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:2362304834939062380" />
      </node>
      <node concept="3Tm1VV" id="iz" role="1B3o_S">
        <uo k="s:originTrace" v="n:2362304834939062380" />
      </node>
    </node>
    <node concept="3clFb_" id="hk" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:2362304834939062380" />
      <node concept="3clFbS" id="iM" role="3clF47">
        <uo k="s:originTrace" v="n:2362304834939062380" />
        <node concept="3cpWs6" id="iP" role="3cqZAp">
          <uo k="s:originTrace" v="n:2362304834939062380" />
          <node concept="3clFbT" id="iQ" role="3cqZAk">
            <uo k="s:originTrace" v="n:2362304834939062380" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="iN" role="3clF45">
        <uo k="s:originTrace" v="n:2362304834939062380" />
      </node>
      <node concept="3Tm1VV" id="iO" role="1B3o_S">
        <uo k="s:originTrace" v="n:2362304834939062380" />
      </node>
    </node>
    <node concept="3uibUv" id="hl" role="EKbjA">
      <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:2362304834939062380" />
    </node>
    <node concept="3uibUv" id="hm" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractInferenceRule_Runtime" resolve="AbstractInferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:2362304834939062380" />
    </node>
    <node concept="3Tm1VV" id="hn" role="1B3o_S">
      <uo k="s:originTrace" v="n:2362304834939062380" />
    </node>
  </node>
  <node concept="312cEu" id="iR">
    <property role="3GE5qa" value="query" />
    <property role="TrG5h" value="typeof_ModulesExpression_InferenceRule" />
    <uo k="s:originTrace" v="n:6864030874028745365" />
    <node concept="3clFbW" id="iS" role="jymVt">
      <uo k="s:originTrace" v="n:6864030874028745365" />
      <node concept="3clFbS" id="j0" role="3clF47">
        <uo k="s:originTrace" v="n:6864030874028745365" />
      </node>
      <node concept="3Tm1VV" id="j1" role="1B3o_S">
        <uo k="s:originTrace" v="n:6864030874028745365" />
      </node>
      <node concept="3cqZAl" id="j2" role="3clF45">
        <uo k="s:originTrace" v="n:6864030874028745365" />
      </node>
    </node>
    <node concept="3clFb_" id="iT" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:6864030874028745365" />
      <node concept="3cqZAl" id="j3" role="3clF45">
        <uo k="s:originTrace" v="n:6864030874028745365" />
      </node>
      <node concept="37vLTG" id="j4" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="modulesExpression" />
        <uo k="s:originTrace" v="n:6864030874028745365" />
        <node concept="3Tqbb2" id="j9" role="1tU5fm">
          <uo k="s:originTrace" v="n:6864030874028745365" />
        </node>
      </node>
      <node concept="37vLTG" id="j5" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:6864030874028745365" />
        <node concept="3uibUv" id="ja" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:6864030874028745365" />
        </node>
      </node>
      <node concept="37vLTG" id="j6" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:6864030874028745365" />
        <node concept="3uibUv" id="jb" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:6864030874028745365" />
        </node>
      </node>
      <node concept="3clFbS" id="j7" role="3clF47">
        <uo k="s:originTrace" v="n:6864030874028745366" />
        <node concept="9aQIb" id="jc" role="3cqZAp">
          <uo k="s:originTrace" v="n:6864030874028745824" />
          <node concept="3clFbS" id="jd" role="9aQI4">
            <node concept="3cpWs8" id="jf" role="3cqZAp">
              <node concept="3cpWsn" id="ji" role="3cpWs9">
                <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                <node concept="37vLTw" id="jj" role="33vP2m">
                  <ref role="3cqZAo" node="j4" resolve="modulesExpression" />
                  <uo k="s:originTrace" v="n:6864030874028745400" />
                  <node concept="6wLe0" id="jl" role="lGtFl">
                    <property role="6wLej" value="6864030874028745824" />
                    <property role="6wLeW" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                  </node>
                </node>
                <node concept="3uibUv" id="jk" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="jg" role="3cqZAp">
              <node concept="3cpWsn" id="jm" role="3cpWs9">
                <property role="TrG5h" value="_info_12389875345" />
                <node concept="3uibUv" id="jn" role="1tU5fm">
                  <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                </node>
                <node concept="2ShNRf" id="jo" role="33vP2m">
                  <node concept="1pGfFk" id="jp" role="2ShVmc">
                    <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                    <node concept="37vLTw" id="jq" role="37wK5m">
                      <ref role="3cqZAo" node="ji" resolve="_nodeToCheck_1029348928467" />
                    </node>
                    <node concept="10Nm6u" id="jr" role="37wK5m" />
                    <node concept="Xl_RD" id="js" role="37wK5m">
                      <property role="Xl_RC" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                    </node>
                    <node concept="Xl_RD" id="jt" role="37wK5m">
                      <property role="Xl_RC" value="6864030874028745824" />
                    </node>
                    <node concept="3cmrfG" id="ju" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="10Nm6u" id="jv" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="jh" role="3cqZAp">
              <node concept="2OqwBi" id="jw" role="3clFbG">
                <node concept="3VmV3z" id="jx" role="2Oq$k0">
                  <property role="3VnrPo" value="typeCheckingContext" />
                  <node concept="3uibUv" id="jz" role="3Vn4Tt">
                    <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                  </node>
                </node>
                <node concept="liA8E" id="jy" role="2OqNvi">
                  <ref role="37wK5l" to="u78q:~TypeCheckingContext.createEquation(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createEquation" />
                  <node concept="10QFUN" id="j$" role="37wK5m">
                    <uo k="s:originTrace" v="n:6864030874028745827" />
                    <node concept="3uibUv" id="jB" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="jC" role="10QFUP">
                      <uo k="s:originTrace" v="n:6864030874028745375" />
                      <node concept="3VmV3z" id="jD" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="jG" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="jE" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                        <node concept="3VmV3z" id="jH" role="37wK5m">
                          <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                          <node concept="3uibUv" id="jL" role="3Vn4Tt">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="jI" role="37wK5m">
                          <property role="Xl_RC" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="jJ" role="37wK5m">
                          <property role="Xl_RC" value="6864030874028745375" />
                        </node>
                        <node concept="3clFbT" id="jK" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                      <node concept="6wLe0" id="jF" role="lGtFl">
                        <property role="6wLej" value="6864030874028745375" />
                        <property role="6wLeW" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                      </node>
                    </node>
                  </node>
                  <node concept="10QFUN" id="j_" role="37wK5m">
                    <uo k="s:originTrace" v="n:6864030874028874461" />
                    <node concept="3uibUv" id="jM" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2c44tf" id="jN" role="10QFUP">
                      <uo k="s:originTrace" v="n:6864030874028874457" />
                      <node concept="A3Dl8" id="jO" role="2c44tc">
                        <uo k="s:originTrace" v="n:6864030874028874506" />
                        <node concept="3uibUv" id="jP" role="A3Ik2">
                          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                          <uo k="s:originTrace" v="n:6864030874028874555" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="jA" role="37wK5m">
                    <ref role="3cqZAo" node="jm" resolve="_info_12389875345" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="6wLe0" id="je" role="lGtFl">
            <property role="6wLej" value="6864030874028745824" />
            <property role="6wLeW" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="j8" role="1B3o_S">
        <uo k="s:originTrace" v="n:6864030874028745365" />
      </node>
    </node>
    <node concept="3clFb_" id="iU" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:6864030874028745365" />
      <node concept="3bZ5Sz" id="jQ" role="3clF45">
        <uo k="s:originTrace" v="n:6864030874028745365" />
      </node>
      <node concept="3clFbS" id="jR" role="3clF47">
        <uo k="s:originTrace" v="n:6864030874028745365" />
        <node concept="3cpWs6" id="jT" role="3cqZAp">
          <uo k="s:originTrace" v="n:6864030874028745365" />
          <node concept="35c_gC" id="jU" role="3cqZAk">
            <ref role="35c_gD" to="3xdn:5X1VVpPN29y" resolve="ModulesExpression" />
            <uo k="s:originTrace" v="n:6864030874028745365" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="jS" role="1B3o_S">
        <uo k="s:originTrace" v="n:6864030874028745365" />
      </node>
    </node>
    <node concept="3clFb_" id="iV" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:6864030874028745365" />
      <node concept="37vLTG" id="jV" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:6864030874028745365" />
        <node concept="3Tqbb2" id="jZ" role="1tU5fm">
          <uo k="s:originTrace" v="n:6864030874028745365" />
        </node>
      </node>
      <node concept="3clFbS" id="jW" role="3clF47">
        <uo k="s:originTrace" v="n:6864030874028745365" />
        <node concept="9aQIb" id="k0" role="3cqZAp">
          <uo k="s:originTrace" v="n:6864030874028745365" />
          <node concept="3clFbS" id="k1" role="9aQI4">
            <uo k="s:originTrace" v="n:6864030874028745365" />
            <node concept="3cpWs6" id="k2" role="3cqZAp">
              <uo k="s:originTrace" v="n:6864030874028745365" />
              <node concept="2ShNRf" id="k3" role="3cqZAk">
                <uo k="s:originTrace" v="n:6864030874028745365" />
                <node concept="1pGfFk" id="k4" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:6864030874028745365" />
                  <node concept="2OqwBi" id="k5" role="37wK5m">
                    <uo k="s:originTrace" v="n:6864030874028745365" />
                    <node concept="2OqwBi" id="k7" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:6864030874028745365" />
                      <node concept="liA8E" id="k9" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:6864030874028745365" />
                      </node>
                      <node concept="2JrnkZ" id="ka" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:6864030874028745365" />
                        <node concept="37vLTw" id="kb" role="2JrQYb">
                          <ref role="3cqZAo" node="jV" resolve="argument" />
                          <uo k="s:originTrace" v="n:6864030874028745365" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="k8" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:6864030874028745365" />
                      <node concept="1rXfSq" id="kc" role="37wK5m">
                        <ref role="37wK5l" node="iU" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:6864030874028745365" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="k6" role="37wK5m">
                    <uo k="s:originTrace" v="n:6864030874028745365" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="jX" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:6864030874028745365" />
      </node>
      <node concept="3Tm1VV" id="jY" role="1B3o_S">
        <uo k="s:originTrace" v="n:6864030874028745365" />
      </node>
    </node>
    <node concept="3clFb_" id="iW" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:6864030874028745365" />
      <node concept="3clFbS" id="kd" role="3clF47">
        <uo k="s:originTrace" v="n:6864030874028745365" />
        <node concept="3cpWs6" id="kg" role="3cqZAp">
          <uo k="s:originTrace" v="n:6864030874028745365" />
          <node concept="3clFbT" id="kh" role="3cqZAk">
            <uo k="s:originTrace" v="n:6864030874028745365" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="ke" role="3clF45">
        <uo k="s:originTrace" v="n:6864030874028745365" />
      </node>
      <node concept="3Tm1VV" id="kf" role="1B3o_S">
        <uo k="s:originTrace" v="n:6864030874028745365" />
      </node>
    </node>
    <node concept="3uibUv" id="iX" role="EKbjA">
      <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:6864030874028745365" />
    </node>
    <node concept="3uibUv" id="iY" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractInferenceRule_Runtime" resolve="AbstractInferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:6864030874028745365" />
    </node>
    <node concept="3Tm1VV" id="iZ" role="1B3o_S">
      <uo k="s:originTrace" v="n:6864030874028745365" />
    </node>
  </node>
  <node concept="312cEu" id="ki">
    <property role="3GE5qa" value="query" />
    <property role="TrG5h" value="typeof_NodesExpresiion_InferenceRule" />
    <uo k="s:originTrace" v="n:4593895459761134312" />
    <node concept="3clFbW" id="kj" role="jymVt">
      <uo k="s:originTrace" v="n:4593895459761134312" />
      <node concept="3clFbS" id="kr" role="3clF47">
        <uo k="s:originTrace" v="n:4593895459761134312" />
      </node>
      <node concept="3Tm1VV" id="ks" role="1B3o_S">
        <uo k="s:originTrace" v="n:4593895459761134312" />
      </node>
      <node concept="3cqZAl" id="kt" role="3clF45">
        <uo k="s:originTrace" v="n:4593895459761134312" />
      </node>
    </node>
    <node concept="3clFb_" id="kk" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:4593895459761134312" />
      <node concept="3cqZAl" id="ku" role="3clF45">
        <uo k="s:originTrace" v="n:4593895459761134312" />
      </node>
      <node concept="37vLTG" id="kv" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="nodesExpression" />
        <uo k="s:originTrace" v="n:4593895459761134312" />
        <node concept="3Tqbb2" id="k$" role="1tU5fm">
          <uo k="s:originTrace" v="n:4593895459761134312" />
        </node>
      </node>
      <node concept="37vLTG" id="kw" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:4593895459761134312" />
        <node concept="3uibUv" id="k_" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:4593895459761134312" />
        </node>
      </node>
      <node concept="37vLTG" id="kx" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:4593895459761134312" />
        <node concept="3uibUv" id="kA" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:4593895459761134312" />
        </node>
      </node>
      <node concept="3clFbS" id="ky" role="3clF47">
        <uo k="s:originTrace" v="n:4593895459761134313" />
        <node concept="9aQIb" id="kB" role="3cqZAp">
          <uo k="s:originTrace" v="n:6322385757205373104" />
          <node concept="3clFbS" id="kC" role="9aQI4">
            <node concept="3cpWs8" id="kE" role="3cqZAp">
              <node concept="3cpWsn" id="kH" role="3cpWs9">
                <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                <node concept="37vLTw" id="kI" role="33vP2m">
                  <ref role="3cqZAo" node="kv" resolve="nodesExpression" />
                  <uo k="s:originTrace" v="n:6322385757205373116" />
                  <node concept="6wLe0" id="kK" role="lGtFl">
                    <property role="6wLej" value="6322385757205373104" />
                    <property role="6wLeW" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                  </node>
                </node>
                <node concept="3uibUv" id="kJ" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="kF" role="3cqZAp">
              <node concept="3cpWsn" id="kL" role="3cpWs9">
                <property role="TrG5h" value="_info_12389875345" />
                <node concept="3uibUv" id="kM" role="1tU5fm">
                  <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                </node>
                <node concept="2ShNRf" id="kN" role="33vP2m">
                  <node concept="1pGfFk" id="kO" role="2ShVmc">
                    <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                    <node concept="37vLTw" id="kP" role="37wK5m">
                      <ref role="3cqZAo" node="kH" resolve="_nodeToCheck_1029348928467" />
                    </node>
                    <node concept="10Nm6u" id="kQ" role="37wK5m" />
                    <node concept="Xl_RD" id="kR" role="37wK5m">
                      <property role="Xl_RC" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                    </node>
                    <node concept="Xl_RD" id="kS" role="37wK5m">
                      <property role="Xl_RC" value="6322385757205373104" />
                    </node>
                    <node concept="3cmrfG" id="kT" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="10Nm6u" id="kU" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="kG" role="3cqZAp">
              <node concept="2OqwBi" id="kV" role="3clFbG">
                <node concept="3VmV3z" id="kW" role="2Oq$k0">
                  <property role="3VnrPo" value="typeCheckingContext" />
                  <node concept="3uibUv" id="kY" role="3Vn4Tt">
                    <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                  </node>
                </node>
                <node concept="liA8E" id="kX" role="2OqNvi">
                  <ref role="37wK5l" to="u78q:~TypeCheckingContext.createEquation(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createEquation" />
                  <node concept="10QFUN" id="kZ" role="37wK5m">
                    <uo k="s:originTrace" v="n:6322385757205373114" />
                    <node concept="3uibUv" id="l2" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="l3" role="10QFUP">
                      <uo k="s:originTrace" v="n:6322385757205373115" />
                      <node concept="3VmV3z" id="l4" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="l7" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="l5" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                        <node concept="3VmV3z" id="l8" role="37wK5m">
                          <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                          <node concept="3uibUv" id="lc" role="3Vn4Tt">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="l9" role="37wK5m">
                          <property role="Xl_RC" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="la" role="37wK5m">
                          <property role="Xl_RC" value="6322385757205373115" />
                        </node>
                        <node concept="3clFbT" id="lb" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                      <node concept="6wLe0" id="l6" role="lGtFl">
                        <property role="6wLej" value="6322385757205373115" />
                        <property role="6wLeW" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                      </node>
                    </node>
                  </node>
                  <node concept="10QFUN" id="l0" role="37wK5m">
                    <uo k="s:originTrace" v="n:6322385757205373105" />
                    <node concept="3uibUv" id="ld" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2c44tf" id="le" role="10QFUP">
                      <uo k="s:originTrace" v="n:6322385757205373106" />
                      <node concept="A3Dl8" id="lf" role="2c44tc">
                        <uo k="s:originTrace" v="n:6322385757205373107" />
                        <node concept="3Tqbb2" id="lg" role="A3Ik2">
                          <uo k="s:originTrace" v="n:6322385757205373108" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="l1" role="37wK5m">
                    <ref role="3cqZAo" node="kL" resolve="_info_12389875345" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="6wLe0" id="kD" role="lGtFl">
            <property role="6wLej" value="6322385757205373104" />
            <property role="6wLeW" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="kz" role="1B3o_S">
        <uo k="s:originTrace" v="n:4593895459761134312" />
      </node>
    </node>
    <node concept="3clFb_" id="kl" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:4593895459761134312" />
      <node concept="3bZ5Sz" id="lh" role="3clF45">
        <uo k="s:originTrace" v="n:4593895459761134312" />
      </node>
      <node concept="3clFbS" id="li" role="3clF47">
        <uo k="s:originTrace" v="n:4593895459761134312" />
        <node concept="3cpWs6" id="lk" role="3cqZAp">
          <uo k="s:originTrace" v="n:4593895459761134312" />
          <node concept="35c_gC" id="ll" role="3cqZAk">
            <ref role="35c_gD" to="3xdn:2sF4xi8qX2e" resolve="NodesExpression" />
            <uo k="s:originTrace" v="n:4593895459761134312" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="lj" role="1B3o_S">
        <uo k="s:originTrace" v="n:4593895459761134312" />
      </node>
    </node>
    <node concept="3clFb_" id="km" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:4593895459761134312" />
      <node concept="37vLTG" id="lm" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:4593895459761134312" />
        <node concept="3Tqbb2" id="lq" role="1tU5fm">
          <uo k="s:originTrace" v="n:4593895459761134312" />
        </node>
      </node>
      <node concept="3clFbS" id="ln" role="3clF47">
        <uo k="s:originTrace" v="n:4593895459761134312" />
        <node concept="9aQIb" id="lr" role="3cqZAp">
          <uo k="s:originTrace" v="n:4593895459761134312" />
          <node concept="3clFbS" id="ls" role="9aQI4">
            <uo k="s:originTrace" v="n:4593895459761134312" />
            <node concept="3cpWs6" id="lt" role="3cqZAp">
              <uo k="s:originTrace" v="n:4593895459761134312" />
              <node concept="2ShNRf" id="lu" role="3cqZAk">
                <uo k="s:originTrace" v="n:4593895459761134312" />
                <node concept="1pGfFk" id="lv" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:4593895459761134312" />
                  <node concept="2OqwBi" id="lw" role="37wK5m">
                    <uo k="s:originTrace" v="n:4593895459761134312" />
                    <node concept="2OqwBi" id="ly" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:4593895459761134312" />
                      <node concept="liA8E" id="l$" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:4593895459761134312" />
                      </node>
                      <node concept="2JrnkZ" id="l_" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:4593895459761134312" />
                        <node concept="37vLTw" id="lA" role="2JrQYb">
                          <ref role="3cqZAo" node="lm" resolve="argument" />
                          <uo k="s:originTrace" v="n:4593895459761134312" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="lz" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:4593895459761134312" />
                      <node concept="1rXfSq" id="lB" role="37wK5m">
                        <ref role="37wK5l" node="kl" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:4593895459761134312" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="lx" role="37wK5m">
                    <uo k="s:originTrace" v="n:4593895459761134312" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="lo" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:4593895459761134312" />
      </node>
      <node concept="3Tm1VV" id="lp" role="1B3o_S">
        <uo k="s:originTrace" v="n:4593895459761134312" />
      </node>
    </node>
    <node concept="3clFb_" id="kn" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:4593895459761134312" />
      <node concept="3clFbS" id="lC" role="3clF47">
        <uo k="s:originTrace" v="n:4593895459761134312" />
        <node concept="3cpWs6" id="lF" role="3cqZAp">
          <uo k="s:originTrace" v="n:4593895459761134312" />
          <node concept="3clFbT" id="lG" role="3cqZAk">
            <uo k="s:originTrace" v="n:4593895459761134312" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="lD" role="3clF45">
        <uo k="s:originTrace" v="n:4593895459761134312" />
      </node>
      <node concept="3Tm1VV" id="lE" role="1B3o_S">
        <uo k="s:originTrace" v="n:4593895459761134312" />
      </node>
    </node>
    <node concept="3uibUv" id="ko" role="EKbjA">
      <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:4593895459761134312" />
    </node>
    <node concept="3uibUv" id="kp" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractInferenceRule_Runtime" resolve="AbstractInferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:4593895459761134312" />
    </node>
    <node concept="3Tm1VV" id="kq" role="1B3o_S">
      <uo k="s:originTrace" v="n:4593895459761134312" />
    </node>
  </node>
  <node concept="312cEu" id="lH">
    <property role="3GE5qa" value="query" />
    <property role="TrG5h" value="typeof_ReferencesExpression_InferenceRule" />
    <uo k="s:originTrace" v="n:6322385757205242475" />
    <node concept="3clFbW" id="lI" role="jymVt">
      <uo k="s:originTrace" v="n:6322385757205242475" />
      <node concept="3clFbS" id="lQ" role="3clF47">
        <uo k="s:originTrace" v="n:6322385757205242475" />
      </node>
      <node concept="3Tm1VV" id="lR" role="1B3o_S">
        <uo k="s:originTrace" v="n:6322385757205242475" />
      </node>
      <node concept="3cqZAl" id="lS" role="3clF45">
        <uo k="s:originTrace" v="n:6322385757205242475" />
      </node>
    </node>
    <node concept="3clFb_" id="lJ" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:6322385757205242475" />
      <node concept="3cqZAl" id="lT" role="3clF45">
        <uo k="s:originTrace" v="n:6322385757205242475" />
      </node>
      <node concept="37vLTG" id="lU" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="referencesExpression" />
        <uo k="s:originTrace" v="n:6322385757205242475" />
        <node concept="3Tqbb2" id="lZ" role="1tU5fm">
          <uo k="s:originTrace" v="n:6322385757205242475" />
        </node>
      </node>
      <node concept="37vLTG" id="lV" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:6322385757205242475" />
        <node concept="3uibUv" id="m0" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:6322385757205242475" />
        </node>
      </node>
      <node concept="37vLTG" id="lW" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:6322385757205242475" />
        <node concept="3uibUv" id="m1" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:6322385757205242475" />
        </node>
      </node>
      <node concept="3clFbS" id="lX" role="3clF47">
        <uo k="s:originTrace" v="n:6322385757205242476" />
        <node concept="9aQIb" id="m2" role="3cqZAp">
          <uo k="s:originTrace" v="n:6322385757205641653" />
          <node concept="3clFbS" id="m3" role="9aQI4">
            <node concept="3cpWs8" id="m5" role="3cqZAp">
              <node concept="3cpWsn" id="m8" role="3cpWs9">
                <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                <node concept="37vLTw" id="m9" role="33vP2m">
                  <ref role="3cqZAo" node="lU" resolve="referencesExpression" />
                  <uo k="s:originTrace" v="n:6322385757205641763" />
                  <node concept="6wLe0" id="mb" role="lGtFl">
                    <property role="6wLej" value="6322385757205641653" />
                    <property role="6wLeW" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                  </node>
                </node>
                <node concept="3uibUv" id="ma" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="m6" role="3cqZAp">
              <node concept="3cpWsn" id="mc" role="3cpWs9">
                <property role="TrG5h" value="_info_12389875345" />
                <node concept="3uibUv" id="md" role="1tU5fm">
                  <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                </node>
                <node concept="2ShNRf" id="me" role="33vP2m">
                  <node concept="1pGfFk" id="mf" role="2ShVmc">
                    <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                    <node concept="37vLTw" id="mg" role="37wK5m">
                      <ref role="3cqZAo" node="m8" resolve="_nodeToCheck_1029348928467" />
                    </node>
                    <node concept="10Nm6u" id="mh" role="37wK5m" />
                    <node concept="Xl_RD" id="mi" role="37wK5m">
                      <property role="Xl_RC" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                    </node>
                    <node concept="Xl_RD" id="mj" role="37wK5m">
                      <property role="Xl_RC" value="6322385757205641653" />
                    </node>
                    <node concept="3cmrfG" id="mk" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="10Nm6u" id="ml" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="m7" role="3cqZAp">
              <node concept="2OqwBi" id="mm" role="3clFbG">
                <node concept="3VmV3z" id="mn" role="2Oq$k0">
                  <property role="3VnrPo" value="typeCheckingContext" />
                  <node concept="3uibUv" id="mp" role="3Vn4Tt">
                    <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                  </node>
                </node>
                <node concept="liA8E" id="mo" role="2OqNvi">
                  <ref role="37wK5l" to="u78q:~TypeCheckingContext.createEquation(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createEquation" />
                  <node concept="10QFUN" id="mq" role="37wK5m">
                    <uo k="s:originTrace" v="n:6322385757205641658" />
                    <node concept="3uibUv" id="mt" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="mu" role="10QFUP">
                      <uo k="s:originTrace" v="n:6322385757205641659" />
                      <node concept="3VmV3z" id="mv" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="my" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="mw" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                        <node concept="3VmV3z" id="mz" role="37wK5m">
                          <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                          <node concept="3uibUv" id="mB" role="3Vn4Tt">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="m$" role="37wK5m">
                          <property role="Xl_RC" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="m_" role="37wK5m">
                          <property role="Xl_RC" value="6322385757205641659" />
                        </node>
                        <node concept="3clFbT" id="mA" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                      <node concept="6wLe0" id="mx" role="lGtFl">
                        <property role="6wLej" value="6322385757205641659" />
                        <property role="6wLeW" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                      </node>
                    </node>
                  </node>
                  <node concept="10QFUN" id="mr" role="37wK5m">
                    <uo k="s:originTrace" v="n:6322385757205641654" />
                    <node concept="3uibUv" id="mC" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2c44tf" id="mD" role="10QFUP">
                      <uo k="s:originTrace" v="n:6322385757205641655" />
                      <node concept="A3Dl8" id="mE" role="2c44tc">
                        <uo k="s:originTrace" v="n:6322385757205641656" />
                        <node concept="2z4iKi" id="mF" role="A3Ik2">
                          <uo k="s:originTrace" v="n:6322385757205641899" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="ms" role="37wK5m">
                    <ref role="3cqZAo" node="mc" resolve="_info_12389875345" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="6wLe0" id="m4" role="lGtFl">
            <property role="6wLej" value="6322385757205641653" />
            <property role="6wLeW" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="lY" role="1B3o_S">
        <uo k="s:originTrace" v="n:6322385757205242475" />
      </node>
    </node>
    <node concept="3clFb_" id="lK" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:6322385757205242475" />
      <node concept="3bZ5Sz" id="mG" role="3clF45">
        <uo k="s:originTrace" v="n:6322385757205242475" />
      </node>
      <node concept="3clFbS" id="mH" role="3clF47">
        <uo k="s:originTrace" v="n:6322385757205242475" />
        <node concept="3cpWs6" id="mJ" role="3cqZAp">
          <uo k="s:originTrace" v="n:6322385757205242475" />
          <node concept="35c_gC" id="mK" role="3cqZAk">
            <ref role="35c_gD" to="3xdn:5uXC5_72l2X" resolve="ReferencesExpression" />
            <uo k="s:originTrace" v="n:6322385757205242475" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="mI" role="1B3o_S">
        <uo k="s:originTrace" v="n:6322385757205242475" />
      </node>
    </node>
    <node concept="3clFb_" id="lL" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:6322385757205242475" />
      <node concept="37vLTG" id="mL" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:6322385757205242475" />
        <node concept="3Tqbb2" id="mP" role="1tU5fm">
          <uo k="s:originTrace" v="n:6322385757205242475" />
        </node>
      </node>
      <node concept="3clFbS" id="mM" role="3clF47">
        <uo k="s:originTrace" v="n:6322385757205242475" />
        <node concept="9aQIb" id="mQ" role="3cqZAp">
          <uo k="s:originTrace" v="n:6322385757205242475" />
          <node concept="3clFbS" id="mR" role="9aQI4">
            <uo k="s:originTrace" v="n:6322385757205242475" />
            <node concept="3cpWs6" id="mS" role="3cqZAp">
              <uo k="s:originTrace" v="n:6322385757205242475" />
              <node concept="2ShNRf" id="mT" role="3cqZAk">
                <uo k="s:originTrace" v="n:6322385757205242475" />
                <node concept="1pGfFk" id="mU" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:6322385757205242475" />
                  <node concept="2OqwBi" id="mV" role="37wK5m">
                    <uo k="s:originTrace" v="n:6322385757205242475" />
                    <node concept="2OqwBi" id="mX" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:6322385757205242475" />
                      <node concept="liA8E" id="mZ" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:6322385757205242475" />
                      </node>
                      <node concept="2JrnkZ" id="n0" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:6322385757205242475" />
                        <node concept="37vLTw" id="n1" role="2JrQYb">
                          <ref role="3cqZAo" node="mL" resolve="argument" />
                          <uo k="s:originTrace" v="n:6322385757205242475" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="mY" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:6322385757205242475" />
                      <node concept="1rXfSq" id="n2" role="37wK5m">
                        <ref role="37wK5l" node="lK" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:6322385757205242475" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="mW" role="37wK5m">
                    <uo k="s:originTrace" v="n:6322385757205242475" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="mN" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:6322385757205242475" />
      </node>
      <node concept="3Tm1VV" id="mO" role="1B3o_S">
        <uo k="s:originTrace" v="n:6322385757205242475" />
      </node>
    </node>
    <node concept="3clFb_" id="lM" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:6322385757205242475" />
      <node concept="3clFbS" id="n3" role="3clF47">
        <uo k="s:originTrace" v="n:6322385757205242475" />
        <node concept="3cpWs6" id="n6" role="3cqZAp">
          <uo k="s:originTrace" v="n:6322385757205242475" />
          <node concept="3clFbT" id="n7" role="3cqZAk">
            <uo k="s:originTrace" v="n:6322385757205242475" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="n4" role="3clF45">
        <uo k="s:originTrace" v="n:6322385757205242475" />
      </node>
      <node concept="3Tm1VV" id="n5" role="1B3o_S">
        <uo k="s:originTrace" v="n:6322385757205242475" />
      </node>
    </node>
    <node concept="3uibUv" id="lN" role="EKbjA">
      <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:6322385757205242475" />
    </node>
    <node concept="3uibUv" id="lO" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractInferenceRule_Runtime" resolve="AbstractInferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:6322385757205242475" />
    </node>
    <node concept="3Tm1VV" id="lP" role="1B3o_S">
      <uo k="s:originTrace" v="n:6322385757205242475" />
    </node>
  </node>
  <node concept="312cEu" id="n8">
    <property role="3GE5qa" value="" />
    <property role="TrG5h" value="typeof_ScopeProvider_InferenceRule" />
    <uo k="s:originTrace" v="n:4234138103881612631" />
    <node concept="3clFbW" id="n9" role="jymVt">
      <uo k="s:originTrace" v="n:4234138103881612631" />
      <node concept="3clFbS" id="nh" role="3clF47">
        <uo k="s:originTrace" v="n:4234138103881612631" />
      </node>
      <node concept="3Tm1VV" id="ni" role="1B3o_S">
        <uo k="s:originTrace" v="n:4234138103881612631" />
      </node>
      <node concept="3cqZAl" id="nj" role="3clF45">
        <uo k="s:originTrace" v="n:4234138103881612631" />
      </node>
    </node>
    <node concept="3clFb_" id="na" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:4234138103881612631" />
      <node concept="3cqZAl" id="nk" role="3clF45">
        <uo k="s:originTrace" v="n:4234138103881612631" />
      </node>
      <node concept="37vLTG" id="nl" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="scopeProvider" />
        <uo k="s:originTrace" v="n:4234138103881612631" />
        <node concept="3Tqbb2" id="nq" role="1tU5fm">
          <uo k="s:originTrace" v="n:4234138103881612631" />
        </node>
      </node>
      <node concept="37vLTG" id="nm" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:4234138103881612631" />
        <node concept="3uibUv" id="nr" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:4234138103881612631" />
        </node>
      </node>
      <node concept="37vLTG" id="nn" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:4234138103881612631" />
        <node concept="3uibUv" id="ns" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:4234138103881612631" />
        </node>
      </node>
      <node concept="3clFbS" id="no" role="3clF47">
        <uo k="s:originTrace" v="n:4234138103881612632" />
        <node concept="3clFbJ" id="nt" role="3cqZAp">
          <uo k="s:originTrace" v="n:4234138103881642865" />
          <node concept="3fqX7Q" id="nu" role="3clFbw">
            <node concept="2OqwBi" id="nx" role="3fr31v">
              <node concept="3VmV3z" id="ny" role="2Oq$k0">
                <property role="3VnrPo" value="typeCheckingContext" />
                <node concept="3uibUv" id="n$" role="3Vn4Tt">
                  <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                </node>
              </node>
              <node concept="liA8E" id="nz" role="2OqNvi">
                <ref role="37wK5l" to="u78q:~TypeCheckingContext.isSingleTypeComputation()" resolve="isSingleTypeComputation" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="nv" role="3clFbx">
            <node concept="9aQIb" id="n_" role="3cqZAp">
              <node concept="3clFbS" id="nA" role="9aQI4">
                <node concept="3cpWs8" id="nB" role="3cqZAp">
                  <node concept="3cpWsn" id="nE" role="3cpWs9">
                    <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                    <node concept="2OqwBi" id="nF" role="33vP2m">
                      <uo k="s:originTrace" v="n:4234138103881614753" />
                      <node concept="37vLTw" id="nH" role="2Oq$k0">
                        <ref role="3cqZAo" node="nl" resolve="scopeProvider" />
                        <uo k="s:originTrace" v="n:4234138103881614577" />
                      </node>
                      <node concept="3TrEf2" id="nI" role="2OqNvi">
                        <ref role="3Tt5mk" to="3xdn:3F2FyKbNNqR" resolve="scope" />
                        <uo k="s:originTrace" v="n:4234138103881642692" />
                      </node>
                      <node concept="6wLe0" id="nJ" role="lGtFl">
                        <property role="6wLej" value="4234138103881642865" />
                        <property role="6wLeW" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="nG" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="nC" role="3cqZAp">
                  <node concept="3cpWsn" id="nK" role="3cpWs9">
                    <property role="TrG5h" value="_info_12389875345" />
                    <node concept="3uibUv" id="nL" role="1tU5fm">
                      <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                    </node>
                    <node concept="2ShNRf" id="nM" role="33vP2m">
                      <node concept="1pGfFk" id="nN" role="2ShVmc">
                        <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                        <node concept="37vLTw" id="nO" role="37wK5m">
                          <ref role="3cqZAo" node="nE" resolve="_nodeToCheck_1029348928467" />
                        </node>
                        <node concept="10Nm6u" id="nP" role="37wK5m" />
                        <node concept="Xl_RD" id="nQ" role="37wK5m">
                          <property role="Xl_RC" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="nR" role="37wK5m">
                          <property role="Xl_RC" value="4234138103881642865" />
                        </node>
                        <node concept="3cmrfG" id="nS" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="10Nm6u" id="nT" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="nD" role="3cqZAp">
                  <node concept="2OqwBi" id="nU" role="3clFbG">
                    <node concept="3VmV3z" id="nV" role="2Oq$k0">
                      <property role="3VnrPo" value="typeCheckingContext" />
                      <node concept="3uibUv" id="nX" role="3Vn4Tt">
                        <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                      </node>
                    </node>
                    <node concept="liA8E" id="nW" role="2OqNvi">
                      <ref role="37wK5l" to="u78q:~TypeCheckingContext.createLessThanInequality(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,boolean,boolean,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createLessThanInequality" />
                      <node concept="10QFUN" id="nY" role="37wK5m">
                        <uo k="s:originTrace" v="n:4234138103881642868" />
                        <node concept="3uibUv" id="o3" role="10QFUM">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                        <node concept="2OqwBi" id="o4" role="10QFUP">
                          <uo k="s:originTrace" v="n:4234138103881614549" />
                          <node concept="3VmV3z" id="o5" role="2Oq$k0">
                            <property role="3VnrPo" value="typeCheckingContext" />
                            <node concept="3uibUv" id="o8" role="3Vn4Tt">
                              <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                            </node>
                          </node>
                          <node concept="liA8E" id="o6" role="2OqNvi">
                            <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                            <node concept="3VmV3z" id="o9" role="37wK5m">
                              <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                              <node concept="3uibUv" id="od" role="3Vn4Tt">
                                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="oa" role="37wK5m">
                              <property role="Xl_RC" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                            </node>
                            <node concept="Xl_RD" id="ob" role="37wK5m">
                              <property role="Xl_RC" value="4234138103881614549" />
                            </node>
                            <node concept="3clFbT" id="oc" role="37wK5m">
                              <property role="3clFbU" value="true" />
                            </node>
                          </node>
                          <node concept="6wLe0" id="o7" role="lGtFl">
                            <property role="6wLej" value="4234138103881614549" />
                            <property role="6wLeW" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                          </node>
                        </node>
                      </node>
                      <node concept="10QFUN" id="nZ" role="37wK5m">
                        <uo k="s:originTrace" v="n:4234138103881643313" />
                        <node concept="3uibUv" id="oe" role="10QFUM">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                        <node concept="2c44tf" id="of" role="10QFUP">
                          <uo k="s:originTrace" v="n:4234138103881643314" />
                          <node concept="2usRSg" id="og" role="2c44tc">
                            <uo k="s:originTrace" v="n:4234138103881643315" />
                            <node concept="A3Dl8" id="oh" role="2usUpS">
                              <uo k="s:originTrace" v="n:4234138103881643316" />
                              <node concept="3Tqbb2" id="oo" role="A3Ik2">
                                <uo k="s:originTrace" v="n:4234138103881643317" />
                              </node>
                            </node>
                            <node concept="H_c77" id="oi" role="2usUpS">
                              <uo k="s:originTrace" v="n:4234138103881643476" />
                            </node>
                            <node concept="A3Dl8" id="oj" role="2usUpS">
                              <uo k="s:originTrace" v="n:4234138103881643320" />
                              <node concept="H_c77" id="op" role="A3Ik2">
                                <uo k="s:originTrace" v="n:4234138103881643321" />
                              </node>
                            </node>
                            <node concept="3uibUv" id="ok" role="2usUpS">
                              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                              <uo k="s:originTrace" v="n:4234138103881654132" />
                            </node>
                            <node concept="A3Dl8" id="ol" role="2usUpS">
                              <uo k="s:originTrace" v="n:4234138103881643322" />
                              <node concept="3uibUv" id="oq" role="A3Ik2">
                                <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                                <uo k="s:originTrace" v="n:4234138103881643323" />
                              </node>
                            </node>
                            <node concept="3uibUv" id="om" role="2usUpS">
                              <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
                              <uo k="s:originTrace" v="n:4234138103881654670" />
                            </node>
                            <node concept="3uibUv" id="on" role="2usUpS">
                              <ref role="3uigEE" to="lui2:~SearchScope" resolve="SearchScope" />
                              <uo k="s:originTrace" v="n:1144183372301316265" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbT" id="o0" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                      <node concept="3clFbT" id="o1" role="37wK5m" />
                      <node concept="37vLTw" id="o2" role="37wK5m">
                        <ref role="3cqZAo" node="nK" resolve="_info_12389875345" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="6wLe0" id="nw" role="lGtFl">
            <property role="6wLej" value="4234138103881642865" />
            <property role="6wLeW" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="np" role="1B3o_S">
        <uo k="s:originTrace" v="n:4234138103881612631" />
      </node>
    </node>
    <node concept="3clFb_" id="nb" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:4234138103881612631" />
      <node concept="3bZ5Sz" id="or" role="3clF45">
        <uo k="s:originTrace" v="n:4234138103881612631" />
      </node>
      <node concept="3clFbS" id="os" role="3clF47">
        <uo k="s:originTrace" v="n:4234138103881612631" />
        <node concept="3cpWs6" id="ou" role="3cqZAp">
          <uo k="s:originTrace" v="n:4234138103881612631" />
          <node concept="35c_gC" id="ov" role="3cqZAk">
            <ref role="35c_gD" to="3xdn:3F2FyKbNNqb" resolve="WithStatement" />
            <uo k="s:originTrace" v="n:4234138103881612631" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="ot" role="1B3o_S">
        <uo k="s:originTrace" v="n:4234138103881612631" />
      </node>
    </node>
    <node concept="3clFb_" id="nc" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:4234138103881612631" />
      <node concept="37vLTG" id="ow" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:4234138103881612631" />
        <node concept="3Tqbb2" id="o$" role="1tU5fm">
          <uo k="s:originTrace" v="n:4234138103881612631" />
        </node>
      </node>
      <node concept="3clFbS" id="ox" role="3clF47">
        <uo k="s:originTrace" v="n:4234138103881612631" />
        <node concept="9aQIb" id="o_" role="3cqZAp">
          <uo k="s:originTrace" v="n:4234138103881612631" />
          <node concept="3clFbS" id="oA" role="9aQI4">
            <uo k="s:originTrace" v="n:4234138103881612631" />
            <node concept="3cpWs6" id="oB" role="3cqZAp">
              <uo k="s:originTrace" v="n:4234138103881612631" />
              <node concept="2ShNRf" id="oC" role="3cqZAk">
                <uo k="s:originTrace" v="n:4234138103881612631" />
                <node concept="1pGfFk" id="oD" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:4234138103881612631" />
                  <node concept="2OqwBi" id="oE" role="37wK5m">
                    <uo k="s:originTrace" v="n:4234138103881612631" />
                    <node concept="2OqwBi" id="oG" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:4234138103881612631" />
                      <node concept="liA8E" id="oI" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:4234138103881612631" />
                      </node>
                      <node concept="2JrnkZ" id="oJ" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:4234138103881612631" />
                        <node concept="37vLTw" id="oK" role="2JrQYb">
                          <ref role="3cqZAo" node="ow" resolve="argument" />
                          <uo k="s:originTrace" v="n:4234138103881612631" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="oH" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:4234138103881612631" />
                      <node concept="1rXfSq" id="oL" role="37wK5m">
                        <ref role="37wK5l" node="nb" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:4234138103881612631" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="oF" role="37wK5m">
                    <uo k="s:originTrace" v="n:4234138103881612631" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="oy" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:4234138103881612631" />
      </node>
      <node concept="3Tm1VV" id="oz" role="1B3o_S">
        <uo k="s:originTrace" v="n:4234138103881612631" />
      </node>
    </node>
    <node concept="3clFb_" id="nd" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:4234138103881612631" />
      <node concept="3clFbS" id="oM" role="3clF47">
        <uo k="s:originTrace" v="n:4234138103881612631" />
        <node concept="3cpWs6" id="oP" role="3cqZAp">
          <uo k="s:originTrace" v="n:4234138103881612631" />
          <node concept="3clFbT" id="oQ" role="3cqZAk">
            <uo k="s:originTrace" v="n:4234138103881612631" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="oN" role="3clF45">
        <uo k="s:originTrace" v="n:4234138103881612631" />
      </node>
      <node concept="3Tm1VV" id="oO" role="1B3o_S">
        <uo k="s:originTrace" v="n:4234138103881612631" />
      </node>
    </node>
    <node concept="3uibUv" id="ne" role="EKbjA">
      <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:4234138103881612631" />
    </node>
    <node concept="3uibUv" id="nf" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractInferenceRule_Runtime" resolve="AbstractInferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:4234138103881612631" />
    </node>
    <node concept="3Tm1VV" id="ng" role="1B3o_S">
      <uo k="s:originTrace" v="n:4234138103881612631" />
    </node>
  </node>
  <node concept="312cEu" id="oR">
    <property role="3GE5qa" value="query" />
    <property role="TrG5h" value="typeof_UsagesExpression_InferenceRule" />
    <uo k="s:originTrace" v="n:7738379549905488001" />
    <node concept="3clFbW" id="oS" role="jymVt">
      <uo k="s:originTrace" v="n:7738379549905488001" />
      <node concept="3clFbS" id="p0" role="3clF47">
        <uo k="s:originTrace" v="n:7738379549905488001" />
      </node>
      <node concept="3Tm1VV" id="p1" role="1B3o_S">
        <uo k="s:originTrace" v="n:7738379549905488001" />
      </node>
      <node concept="3cqZAl" id="p2" role="3clF45">
        <uo k="s:originTrace" v="n:7738379549905488001" />
      </node>
    </node>
    <node concept="3clFb_" id="oT" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:7738379549905488001" />
      <node concept="3cqZAl" id="p3" role="3clF45">
        <uo k="s:originTrace" v="n:7738379549905488001" />
      </node>
      <node concept="37vLTG" id="p4" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="expr" />
        <uo k="s:originTrace" v="n:7738379549905488001" />
        <node concept="3Tqbb2" id="p9" role="1tU5fm">
          <uo k="s:originTrace" v="n:7738379549905488001" />
        </node>
      </node>
      <node concept="37vLTG" id="p5" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:7738379549905488001" />
        <node concept="3uibUv" id="pa" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:7738379549905488001" />
        </node>
      </node>
      <node concept="37vLTG" id="p6" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:7738379549905488001" />
        <node concept="3uibUv" id="pb" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:7738379549905488001" />
        </node>
      </node>
      <node concept="3clFbS" id="p7" role="3clF47">
        <uo k="s:originTrace" v="n:7738379549905488262" />
        <node concept="9aQIb" id="pc" role="3cqZAp">
          <uo k="s:originTrace" v="n:7738379549905488875" />
          <node concept="3clFbS" id="pe" role="9aQI4">
            <node concept="3cpWs8" id="pg" role="3cqZAp">
              <node concept="3cpWsn" id="pj" role="3cpWs9">
                <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                <node concept="37vLTw" id="pk" role="33vP2m">
                  <ref role="3cqZAo" node="p4" resolve="expr" />
                  <uo k="s:originTrace" v="n:7738379549905488455" />
                  <node concept="6wLe0" id="pm" role="lGtFl">
                    <property role="6wLej" value="7738379549905488875" />
                    <property role="6wLeW" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                  </node>
                </node>
                <node concept="3uibUv" id="pl" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="ph" role="3cqZAp">
              <node concept="3cpWsn" id="pn" role="3cpWs9">
                <property role="TrG5h" value="_info_12389875345" />
                <node concept="3uibUv" id="po" role="1tU5fm">
                  <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                </node>
                <node concept="2ShNRf" id="pp" role="33vP2m">
                  <node concept="1pGfFk" id="pq" role="2ShVmc">
                    <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                    <node concept="37vLTw" id="pr" role="37wK5m">
                      <ref role="3cqZAo" node="pj" resolve="_nodeToCheck_1029348928467" />
                    </node>
                    <node concept="10Nm6u" id="ps" role="37wK5m" />
                    <node concept="Xl_RD" id="pt" role="37wK5m">
                      <property role="Xl_RC" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                    </node>
                    <node concept="Xl_RD" id="pu" role="37wK5m">
                      <property role="Xl_RC" value="7738379549905488875" />
                    </node>
                    <node concept="3cmrfG" id="pv" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="10Nm6u" id="pw" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="pi" role="3cqZAp">
              <node concept="2OqwBi" id="px" role="3clFbG">
                <node concept="3VmV3z" id="py" role="2Oq$k0">
                  <property role="3VnrPo" value="typeCheckingContext" />
                  <node concept="3uibUv" id="p$" role="3Vn4Tt">
                    <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                  </node>
                </node>
                <node concept="liA8E" id="pz" role="2OqNvi">
                  <ref role="37wK5l" to="u78q:~TypeCheckingContext.createEquation(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createEquation" />
                  <node concept="10QFUN" id="p_" role="37wK5m">
                    <uo k="s:originTrace" v="n:7738379549905488878" />
                    <node concept="3uibUv" id="pC" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="pD" role="10QFUP">
                      <uo k="s:originTrace" v="n:7738379549905488404" />
                      <node concept="3VmV3z" id="pE" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="pH" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="pF" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                        <node concept="3VmV3z" id="pI" role="37wK5m">
                          <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                          <node concept="3uibUv" id="pM" role="3Vn4Tt">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="pJ" role="37wK5m">
                          <property role="Xl_RC" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="pK" role="37wK5m">
                          <property role="Xl_RC" value="7738379549905488404" />
                        </node>
                        <node concept="3clFbT" id="pL" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                      <node concept="6wLe0" id="pG" role="lGtFl">
                        <property role="6wLej" value="7738379549905488404" />
                        <property role="6wLeW" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                      </node>
                    </node>
                  </node>
                  <node concept="10QFUN" id="pA" role="37wK5m">
                    <uo k="s:originTrace" v="n:7738379549905488942" />
                    <node concept="3uibUv" id="pN" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2c44tf" id="pO" role="10QFUP">
                      <uo k="s:originTrace" v="n:7738379549905488938" />
                      <node concept="3vKaQO" id="pP" role="2c44tc">
                        <uo k="s:originTrace" v="n:7738379549905488977" />
                        <node concept="2z4iKi" id="pQ" role="3O5elw">
                          <uo k="s:originTrace" v="n:7738379549910118965" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="pB" role="37wK5m">
                    <ref role="3cqZAo" node="pn" resolve="_info_12389875345" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="6wLe0" id="pf" role="lGtFl">
            <property role="6wLej" value="7738379549905488875" />
            <property role="6wLeW" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
          </node>
        </node>
        <node concept="3clFbJ" id="pd" role="3cqZAp">
          <uo k="s:originTrace" v="n:473081947995054364" />
          <node concept="3fqX7Q" id="pR" role="3clFbw">
            <node concept="2OqwBi" id="pU" role="3fr31v">
              <node concept="3VmV3z" id="pV" role="2Oq$k0">
                <property role="3VnrPo" value="typeCheckingContext" />
                <node concept="3uibUv" id="pX" role="3Vn4Tt">
                  <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                </node>
              </node>
              <node concept="liA8E" id="pW" role="2OqNvi">
                <ref role="37wK5l" to="u78q:~TypeCheckingContext.isSingleTypeComputation()" resolve="isSingleTypeComputation" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="pS" role="3clFbx">
            <node concept="9aQIb" id="pY" role="3cqZAp">
              <node concept="3clFbS" id="pZ" role="9aQI4">
                <node concept="3cpWs8" id="q0" role="3cqZAp">
                  <node concept="3cpWsn" id="q3" role="3cpWs9">
                    <property role="TrG5h" value="_nodeToCheck_1029348928467" />
                    <node concept="2OqwBi" id="q4" role="33vP2m">
                      <uo k="s:originTrace" v="n:473081947995054371" />
                      <node concept="37vLTw" id="q6" role="2Oq$k0">
                        <ref role="3cqZAo" node="p4" resolve="expr" />
                        <uo k="s:originTrace" v="n:473081947995054372" />
                      </node>
                      <node concept="3TrEf2" id="q7" role="2OqNvi">
                        <ref role="3Tt5mk" to="3xdn:7mV0m3L$trG" resolve="node" />
                        <uo k="s:originTrace" v="n:473081947995054373" />
                      </node>
                      <node concept="6wLe0" id="q8" role="lGtFl">
                        <property role="6wLej" value="473081947995054364" />
                        <property role="6wLeW" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="q5" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="q1" role="3cqZAp">
                  <node concept="3cpWsn" id="q9" role="3cpWs9">
                    <property role="TrG5h" value="_info_12389875345" />
                    <node concept="3uibUv" id="qa" role="1tU5fm">
                      <ref role="3uigEE" to="u78q:~EquationInfo" resolve="EquationInfo" />
                    </node>
                    <node concept="2ShNRf" id="qb" role="33vP2m">
                      <node concept="1pGfFk" id="qc" role="2ShVmc">
                        <ref role="37wK5l" to="u78q:~EquationInfo.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,int,jetbrains.mps.errors.QuickFixProvider)" resolve="EquationInfo" />
                        <node concept="37vLTw" id="qd" role="37wK5m">
                          <ref role="3cqZAo" node="q3" resolve="_nodeToCheck_1029348928467" />
                        </node>
                        <node concept="10Nm6u" id="qe" role="37wK5m" />
                        <node concept="Xl_RD" id="qf" role="37wK5m">
                          <property role="Xl_RC" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="qg" role="37wK5m">
                          <property role="Xl_RC" value="473081947995054364" />
                        </node>
                        <node concept="3cmrfG" id="qh" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="10Nm6u" id="qi" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="q2" role="3cqZAp">
                  <node concept="2OqwBi" id="qj" role="3clFbG">
                    <node concept="3VmV3z" id="qk" role="2Oq$k0">
                      <property role="3VnrPo" value="typeCheckingContext" />
                      <node concept="3uibUv" id="qm" role="3Vn4Tt">
                        <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                      </node>
                    </node>
                    <node concept="liA8E" id="ql" role="2OqNvi">
                      <ref role="37wK5l" to="u78q:~TypeCheckingContext.createLessThanInequality(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,boolean,boolean,jetbrains.mps.typesystem.inference.EquationInfo)" resolve="createLessThanInequality" />
                      <node concept="10QFUN" id="qn" role="37wK5m">
                        <uo k="s:originTrace" v="n:473081947995054369" />
                        <node concept="3uibUv" id="qs" role="10QFUM">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                        <node concept="2OqwBi" id="qt" role="10QFUP">
                          <uo k="s:originTrace" v="n:473081947995054370" />
                          <node concept="3VmV3z" id="qu" role="2Oq$k0">
                            <property role="3VnrPo" value="typeCheckingContext" />
                            <node concept="3uibUv" id="qx" role="3Vn4Tt">
                              <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                            </node>
                          </node>
                          <node concept="liA8E" id="qv" role="2OqNvi">
                            <ref role="37wK5l" to="u78q:~TypeCheckingContext.typeOf(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,boolean)" resolve="typeOf" />
                            <node concept="3VmV3z" id="qy" role="37wK5m">
                              <property role="3VnrPo" value="_nodeToCheck_1029348928467" />
                              <node concept="3uibUv" id="qA" role="3Vn4Tt">
                                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="qz" role="37wK5m">
                              <property role="Xl_RC" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                            </node>
                            <node concept="Xl_RD" id="q$" role="37wK5m">
                              <property role="Xl_RC" value="473081947995054370" />
                            </node>
                            <node concept="3clFbT" id="q_" role="37wK5m">
                              <property role="3clFbU" value="true" />
                            </node>
                          </node>
                          <node concept="6wLe0" id="qw" role="lGtFl">
                            <property role="6wLej" value="473081947995054370" />
                            <property role="6wLeW" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
                          </node>
                        </node>
                      </node>
                      <node concept="10QFUN" id="qo" role="37wK5m">
                        <uo k="s:originTrace" v="n:473081947995054366" />
                        <node concept="3uibUv" id="qB" role="10QFUM">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                        <node concept="2c44tf" id="qC" role="10QFUP">
                          <uo k="s:originTrace" v="n:473081947995054367" />
                          <node concept="3Tqbb2" id="qD" role="2c44tc">
                            <uo k="s:originTrace" v="n:473081947995054368" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbT" id="qp" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                      <node concept="3clFbT" id="qq" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                      <node concept="37vLTw" id="qr" role="37wK5m">
                        <ref role="3cqZAo" node="q9" resolve="_info_12389875345" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="6wLe0" id="pT" role="lGtFl">
            <property role="6wLej" value="473081947995054364" />
            <property role="6wLeW" value="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="p8" role="1B3o_S">
        <uo k="s:originTrace" v="n:7738379549905488001" />
      </node>
    </node>
    <node concept="3clFb_" id="oU" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:7738379549905488001" />
      <node concept="3bZ5Sz" id="qE" role="3clF45">
        <uo k="s:originTrace" v="n:7738379549905488001" />
      </node>
      <node concept="3clFbS" id="qF" role="3clF47">
        <uo k="s:originTrace" v="n:7738379549905488001" />
        <node concept="3cpWs6" id="qH" role="3cqZAp">
          <uo k="s:originTrace" v="n:7738379549905488001" />
          <node concept="35c_gC" id="qI" role="3cqZAk">
            <ref role="35c_gD" to="3xdn:7mV0m3L$trF" resolve="UsagesExpression" />
            <uo k="s:originTrace" v="n:7738379549905488001" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="qG" role="1B3o_S">
        <uo k="s:originTrace" v="n:7738379549905488001" />
      </node>
    </node>
    <node concept="3clFb_" id="oV" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:7738379549905488001" />
      <node concept="37vLTG" id="qJ" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:7738379549905488001" />
        <node concept="3Tqbb2" id="qN" role="1tU5fm">
          <uo k="s:originTrace" v="n:7738379549905488001" />
        </node>
      </node>
      <node concept="3clFbS" id="qK" role="3clF47">
        <uo k="s:originTrace" v="n:7738379549905488001" />
        <node concept="9aQIb" id="qO" role="3cqZAp">
          <uo k="s:originTrace" v="n:7738379549905488001" />
          <node concept="3clFbS" id="qP" role="9aQI4">
            <uo k="s:originTrace" v="n:7738379549905488001" />
            <node concept="3cpWs6" id="qQ" role="3cqZAp">
              <uo k="s:originTrace" v="n:7738379549905488001" />
              <node concept="2ShNRf" id="qR" role="3cqZAk">
                <uo k="s:originTrace" v="n:7738379549905488001" />
                <node concept="1pGfFk" id="qS" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:7738379549905488001" />
                  <node concept="2OqwBi" id="qT" role="37wK5m">
                    <uo k="s:originTrace" v="n:7738379549905488001" />
                    <node concept="2OqwBi" id="qV" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:7738379549905488001" />
                      <node concept="liA8E" id="qX" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:7738379549905488001" />
                      </node>
                      <node concept="2JrnkZ" id="qY" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:7738379549905488001" />
                        <node concept="37vLTw" id="qZ" role="2JrQYb">
                          <ref role="3cqZAo" node="qJ" resolve="argument" />
                          <uo k="s:originTrace" v="n:7738379549905488001" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="qW" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:7738379549905488001" />
                      <node concept="1rXfSq" id="r0" role="37wK5m">
                        <ref role="37wK5l" node="oU" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:7738379549905488001" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="qU" role="37wK5m">
                    <uo k="s:originTrace" v="n:7738379549905488001" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="qL" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:7738379549905488001" />
      </node>
      <node concept="3Tm1VV" id="qM" role="1B3o_S">
        <uo k="s:originTrace" v="n:7738379549905488001" />
      </node>
    </node>
    <node concept="3clFb_" id="oW" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:7738379549905488001" />
      <node concept="3clFbS" id="r1" role="3clF47">
        <uo k="s:originTrace" v="n:7738379549905488001" />
        <node concept="3cpWs6" id="r4" role="3cqZAp">
          <uo k="s:originTrace" v="n:7738379549905488001" />
          <node concept="3clFbT" id="r5" role="3cqZAk">
            <uo k="s:originTrace" v="n:7738379549905488001" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="r2" role="3clF45">
        <uo k="s:originTrace" v="n:7738379549905488001" />
      </node>
      <node concept="3Tm1VV" id="r3" role="1B3o_S">
        <uo k="s:originTrace" v="n:7738379549905488001" />
      </node>
    </node>
    <node concept="3uibUv" id="oX" role="EKbjA">
      <ref role="3uigEE" to="qurh:~InferenceRule_Runtime" resolve="InferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:7738379549905488001" />
    </node>
    <node concept="3uibUv" id="oY" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractInferenceRule_Runtime" resolve="AbstractInferenceRule_Runtime" />
      <uo k="s:originTrace" v="n:7738379549905488001" />
    </node>
    <node concept="3Tm1VV" id="oZ" role="1B3o_S">
      <uo k="s:originTrace" v="n:7738379549905488001" />
    </node>
  </node>
</model>

