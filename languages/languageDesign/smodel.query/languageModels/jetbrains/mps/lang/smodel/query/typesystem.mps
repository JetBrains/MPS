<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:7e8cfa8a-da13-467d-9878-63b90b943128(jetbrains.mps.lang.smodel.query.typesystem)">
  <persistence version="9" />
  <languages>
    <devkit ref="00000000-0000-4000-0000-1de82b3a4936(jetbrains.mps.devkit.aspect.typesystem)" />
  </languages>
  <imports>
    <import index="3xdn" ref="r:935ba0ee-7291-4caa-a807-d76e8fc69391(jetbrains.mps.lang.smodel.query.structure)" />
    <import index="tp25" ref="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
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
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1171903916106" name="jetbrains.mps.baseLanguage.structure.UpperBoundType" flags="in" index="3qUE_q">
        <child id="1171903916107" name="bound" index="3qUE_r" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
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
      <concept id="1185788614172" name="jetbrains.mps.lang.typesystem.structure.NormalTypeClause" flags="ng" index="mw_s8">
        <child id="1185788644032" name="normalType" index="mwGJk" />
      </concept>
      <concept id="1185805035213" name="jetbrains.mps.lang.typesystem.structure.WhenConcreteStatement" flags="nn" index="nvevp">
        <child id="1185805047793" name="body" index="nvhr_" />
        <child id="1185805056450" name="argument" index="nvjzm" />
        <child id="1205761991995" name="argumentRepresentator" index="2X0Ygz" />
      </concept>
      <concept id="1179479408386" name="jetbrains.mps.lang.typesystem.structure.JoinType" flags="ng" index="2usRSg">
        <child id="1179479418730" name="argument" index="2usUpS" />
      </concept>
      <concept id="1175517767210" name="jetbrains.mps.lang.typesystem.structure.ReportErrorStatement" flags="nn" index="2MkqsV">
        <child id="1175517851849" name="errorString" index="2MkJ7o" />
      </concept>
      <concept id="1179832490862" name="jetbrains.mps.lang.typesystem.structure.CreateStrongLessThanInequationStatement" flags="nn" index="2NvLDW" />
      <concept id="1205762105978" name="jetbrains.mps.lang.typesystem.structure.WhenConcreteVariableDeclaration" flags="ng" index="2X1qdy" />
      <concept id="1205762656241" name="jetbrains.mps.lang.typesystem.structure.WhenConcreteVariableReference" flags="nn" index="2X3wrD">
        <reference id="1205762683928" name="whenConcreteVar" index="2X3Bk0" />
      </concept>
      <concept id="1195213580585" name="jetbrains.mps.lang.typesystem.structure.AbstractCheckingRule" flags="ig" index="18hYwZ">
        <child id="1195213635060" name="body" index="18ibNy" />
      </concept>
      <concept id="1195214364922" name="jetbrains.mps.lang.typesystem.structure.NonTypesystemRule" flags="ig" index="18kY7G" />
      <concept id="3937244445246642777" name="jetbrains.mps.lang.typesystem.structure.AbstractReportStatement" flags="ng" index="1urrMJ">
        <child id="3937244445246642781" name="nodeToReport" index="1urrMF" />
      </concept>
      <concept id="1174642788531" name="jetbrains.mps.lang.typesystem.structure.ConceptReference" flags="ig" index="1YaCAy">
        <reference id="1174642800329" name="concept" index="1YaFvo" />
      </concept>
      <concept id="1174643105530" name="jetbrains.mps.lang.typesystem.structure.InferenceRule" flags="ig" index="1YbPZF" />
      <concept id="1174648085619" name="jetbrains.mps.lang.typesystem.structure.AbstractRule" flags="ng" index="1YuPPy">
        <child id="1174648101952" name="applicableNode" index="1YuTPh" />
      </concept>
      <concept id="1174650418652" name="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" flags="nn" index="1YBJjd">
        <reference id="1174650432090" name="applicableNode" index="1YBMHb" />
      </concept>
      <concept id="1174657487114" name="jetbrains.mps.lang.typesystem.structure.TypeOfExpression" flags="nn" index="1Z2H0r">
        <child id="1174657509053" name="term" index="1Z2MuG" />
      </concept>
      <concept id="1174658326157" name="jetbrains.mps.lang.typesystem.structure.CreateEquationStatement" flags="nn" index="1Z5TYs" />
      <concept id="1174660718586" name="jetbrains.mps.lang.typesystem.structure.AbstractEquationStatement" flags="nn" index="1Zf1VF">
        <property id="1206359757216" name="checkOnly" index="3wDh2S" />
        <child id="1174660783413" name="leftExpression" index="1ZfhK$" />
        <child id="1174660783414" name="rightExpression" index="1ZfhKB" />
      </concept>
      <concept id="1174663118805" name="jetbrains.mps.lang.typesystem.structure.CreateLessThanInequationStatement" flags="nn" index="1ZobV4" />
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
  <node concept="1YbPZF" id="6H$fNdLgSy1">
    <property role="TrG5h" value="typeof_UsagesExpression" />
    <property role="3GE5qa" value="query" />
    <node concept="3clFbS" id="6H$fNdLgSA6" role="18ibNy">
      <node concept="1Z5TYs" id="6H$fNdLgSJF" role="3cqZAp">
        <node concept="mw_s8" id="6H$fNdLgSKI" role="1ZfhKB">
          <node concept="2c44tf" id="6H$fNdLgSKE" role="mwGJk">
            <node concept="3vKaQO" id="6H$fNdLgSLh" role="2c44tc">
              <node concept="2z4iKi" id="6H$fNdLyz8P" role="3O5elw" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="6H$fNdLgSJI" role="1ZfhK$">
          <node concept="1Z2H0r" id="6H$fNdLgSCk" role="mwGJk">
            <node concept="1YBJjd" id="6H$fNdLgSD7" role="1Z2MuG">
              <ref role="1YBMHb" node="6H$fNdLgSA8" resolve="expr" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1ZobV4" id="qgIopNTi4s" role="3cqZAp">
        <property role="3wDh2S" value="true" />
        <node concept="mw_s8" id="qgIopNTi4x" role="1ZfhK$">
          <node concept="1Z2H0r" id="qgIopNTi4y" role="mwGJk">
            <node concept="2OqwBi" id="qgIopNTi4z" role="1Z2MuG">
              <node concept="1YBJjd" id="qgIopNTi4$" role="2Oq$k0">
                <ref role="1YBMHb" node="6H$fNdLgSA8" resolve="expr" />
              </node>
              <node concept="3TrEf2" id="qgIopNTi4_" role="2OqNvi">
                <ref role="3Tt5mk" to="3xdn:7mV0m3L$trG" resolve="node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="qgIopNTi4u" role="1ZfhKB">
          <node concept="2c44tf" id="qgIopNTi4v" role="mwGJk">
            <node concept="3Tqbb2" id="qgIopNTi4w" role="2c44tc" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="6H$fNdLgSA8" role="1YuTPh">
      <property role="TrG5h" value="expr" />
      <ref role="1YaFvo" to="3xdn:7mV0m3L$trF" resolve="UsagesExpression" />
    </node>
  </node>
  <node concept="1YbPZF" id="6H$fNdLyEd0">
    <property role="TrG5h" value="typeof_InstancesExpression" />
    <property role="3GE5qa" value="query" />
    <node concept="3clFbS" id="6H$fNdLyEd1" role="18ibNy">
      <node concept="1ZobV4" id="67MRmRzGOFD" role="3cqZAp">
        <property role="3wDh2S" value="false" />
        <node concept="mw_s8" id="67MRmRzGOFF" role="1ZfhK$">
          <node concept="1Z2H0r" id="67MRmRzGOFG" role="mwGJk">
            <node concept="2OqwBi" id="7JSUSXB0cf6" role="1Z2MuG">
              <node concept="1YBJjd" id="7JSUSXB0bQk" role="2Oq$k0">
                <ref role="1YBMHb" node="6H$fNdLyEdj" resolve="instancesExpression" />
              </node>
              <node concept="3TrEf2" id="7JSUSXB0eCj" role="2OqNvi">
                <ref role="3Tt5mk" to="3xdn:6H$fNdLyE4e" resolve="conceptArg" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="67MRmRzGP5o" role="1ZfhKB">
          <node concept="2c44tf" id="67MRmRzGP5k" role="mwGJk">
            <node concept="3bZ5Sz" id="62y0BjE24Sk" role="2c44tc" />
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="7JSUSXBkSz9" role="3cqZAp" />
      <node concept="1ZobV4" id="qgIopNibLT" role="3cqZAp">
        <node concept="mw_s8" id="qgIopNibLV" role="1ZfhK$">
          <node concept="1Z2H0r" id="qgIopNibLW" role="mwGJk">
            <node concept="1YBJjd" id="qgIopNibLX" role="1Z2MuG">
              <ref role="1YBMHb" node="6H$fNdLyEdj" resolve="instancesExpression" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="qgIopNibLY" role="1ZfhKB">
          <node concept="2c44tf" id="qgIopNibLZ" role="mwGJk">
            <node concept="3vKaQO" id="7b2SisHTZcV" role="2c44tc">
              <node concept="3qUE_q" id="6mv8VzUhMsA" role="3O5elw">
                <node concept="3Tqbb2" id="7b2SisHTZcX" role="3qUE_r" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="44$dP9uvIa_" role="3cqZAp">
        <node concept="3clFbS" id="44$dP9uvIaC" role="3clFbx">
          <node concept="nvevp" id="5X1VVpPy2IU" role="3cqZAp">
            <node concept="3clFbS" id="5X1VVpPy2IV" role="nvhr_">
              <node concept="3clFbJ" id="5X1VVpPy2IW" role="3cqZAp">
                <node concept="3clFbS" id="5X1VVpPy2IX" role="3clFbx">
                  <node concept="3cpWs8" id="5X1VVpPy2IY" role="3cqZAp">
                    <node concept="3cpWsn" id="5X1VVpPy2IZ" role="3cpWs9">
                      <property role="TrG5h" value="conceptType" />
                      <node concept="3Tqbb2" id="5X1VVpPy2J0" role="1tU5fm">
                        <ref role="ehGHo" to="tp25:5MFgGQnlLNI" resolve="SConceptType" />
                      </node>
                      <node concept="1PxgMI" id="5X1VVpPy2J1" role="33vP2m">
                        <node concept="2X3wrD" id="5X1VVpPy2J2" role="1m5AlR">
                          <ref role="2X3Bk0" node="5X1VVpPy2Jj" resolve="conceptParameterType" />
                        </node>
                        <node concept="chp4Y" id="714IaVdGZk4" role="3oSUPX">
                          <ref role="cht4Q" to="tp25:5MFgGQnlLNI" resolve="SConceptType" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="5X1VVpPzfTv" role="3cqZAp">
                    <node concept="3clFbS" id="5X1VVpPzfTy" role="3clFbx">
                      <node concept="1Z5TYs" id="5X1VVpPzgj8" role="3cqZAp">
                        <node concept="mw_s8" id="5X1VVpPzgj9" role="1ZfhK$">
                          <node concept="1Z2H0r" id="5X1VVpPzgja" role="mwGJk">
                            <node concept="1YBJjd" id="5X1VVpPzgjb" role="1Z2MuG">
                              <ref role="1YBMHb" node="6H$fNdLyEdj" resolve="instancesExpression" />
                            </node>
                          </node>
                        </node>
                        <node concept="mw_s8" id="5X1VVpPzgjc" role="1ZfhKB">
                          <node concept="2c44tf" id="5X1VVpPzgjd" role="mwGJk">
                            <node concept="3vKaQO" id="7b2SisHTXWT" role="2c44tc">
                              <node concept="3Tqbb2" id="7b2SisHTXWV" role="3O5elw" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbC" id="5X1VVpPzg58" role="3clFbw">
                      <node concept="10Nm6u" id="5X1VVpPzg5z" role="3uHU7w" />
                      <node concept="2OqwBi" id="5X1VVpPzt1t" role="3uHU7B">
                        <node concept="3TrEf2" id="62y0BjE2q97" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp25:5MFgGQnlLNJ" resolve="conceptDeclaration" />
                        </node>
                        <node concept="37vLTw" id="5X1VVpPzfUa" role="2Oq$k0">
                          <ref role="3cqZAo" node="5X1VVpPy2IZ" resolve="conceptType" />
                        </node>
                      </node>
                    </node>
                    <node concept="9aQIb" id="5X1VVpPzg6q" role="9aQIa">
                      <node concept="3clFbS" id="5X1VVpPzg6r" role="9aQI4">
                        <node concept="1Z5TYs" id="5X1VVpPy2J3" role="3cqZAp">
                          <node concept="mw_s8" id="5X1VVpPy2J4" role="1ZfhK$">
                            <node concept="1Z2H0r" id="5X1VVpPy2J5" role="mwGJk">
                              <node concept="1YBJjd" id="5X1VVpPy7PA" role="1Z2MuG">
                                <ref role="1YBMHb" node="6H$fNdLyEdj" resolve="instancesExpression" />
                              </node>
                            </node>
                          </node>
                          <node concept="mw_s8" id="5X1VVpPy8E1" role="1ZfhKB">
                            <node concept="2c44tf" id="5X1VVpPy8DR" role="mwGJk">
                              <node concept="3vKaQO" id="7b2SisHTXVu" role="2c44tc">
                                <node concept="3Tqbb2" id="7b2SisHTXVw" role="3O5elw">
                                  <node concept="2c44tb" id="7b2SisHTXVx" role="lGtFl">
                                    <property role="2qtEX8" value="concept" />
                                    <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138055754698/1138405853777" />
                                    <node concept="2OqwBi" id="7b2SisHTXVy" role="2c44t1">
                                      <node concept="3TrEf2" id="7b2SisHTXVz" role="2OqNvi">
                                        <ref role="3Tt5mk" to="tp25:5MFgGQnlLNJ" resolve="conceptDeclaration" />
                                      </node>
                                      <node concept="37vLTw" id="7b2SisHTXV$" role="2Oq$k0">
                                        <ref role="3cqZAo" node="5X1VVpPy2IZ" resolve="conceptType" />
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
                </node>
                <node concept="2OqwBi" id="5X1VVpPy2Jb" role="3clFbw">
                  <node concept="2X3wrD" id="5X1VVpPy2Jc" role="2Oq$k0">
                    <ref role="2X3Bk0" node="5X1VVpPy2Jj" resolve="conceptParameterType" />
                  </node>
                  <node concept="1mIQ4w" id="5X1VVpPy2Jd" role="2OqNvi">
                    <node concept="chp4Y" id="62y0BjE24Zz" role="cj9EA">
                      <ref role="cht4Q" to="tp25:5MFgGQnlLNI" resolve="SConceptType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Z2H0r" id="5X1VVpPy2Jf" role="nvjzm">
              <node concept="2OqwBi" id="5X1VVpPz1PF" role="1Z2MuG">
                <node concept="1YBJjd" id="5X1VVpPy7lM" role="2Oq$k0">
                  <ref role="1YBMHb" node="6H$fNdLyEdj" resolve="instancesExpression" />
                </node>
                <node concept="3TrEf2" id="5X1VVpPz3x2" role="2OqNvi">
                  <ref role="3Tt5mk" to="3xdn:6H$fNdLyE4e" resolve="conceptArg" />
                </node>
              </node>
            </node>
            <node concept="2X1qdy" id="5X1VVpPy2Jj" role="2X0Ygz">
              <property role="TrG5h" value="conceptParameterType" />
              <node concept="2jxLKc" id="5X1VVpPy2Jk" role="1tU5fm" />
            </node>
          </node>
        </node>
        <node concept="2OqwBi" id="44$dP9uvMfW" role="3clFbw">
          <node concept="2OqwBi" id="44$dP9uvIki" role="2Oq$k0">
            <node concept="1YBJjd" id="44$dP9uvIbO" role="2Oq$k0">
              <ref role="1YBMHb" node="6H$fNdLyEdj" resolve="instancesExpression" />
            </node>
            <node concept="3TrEf2" id="44$dP9uvKvL" role="2OqNvi">
              <ref role="3Tt5mk" to="3xdn:6H$fNdLyE4e" resolve="conceptArg" />
            </node>
          </node>
          <node concept="1mIQ4w" id="44$dP9uvNAM" role="2OqNvi">
            <node concept="chp4Y" id="44$dP9uvNC4" role="cj9EA">
              <ref role="cht4Q" to="tp25:hy5Kd_5" resolve="PoundExpression" />
            </node>
          </node>
        </node>
        <node concept="3eNFk2" id="44$dP9uvOy1" role="3eNLev">
          <node concept="3clFbS" id="44$dP9uvOy2" role="3eOfB_">
            <node concept="1Z5TYs" id="44$dP9uvSeH" role="3cqZAp">
              <node concept="mw_s8" id="44$dP9uvSeI" role="1ZfhK$">
                <node concept="1Z2H0r" id="44$dP9uvSeJ" role="mwGJk">
                  <node concept="1YBJjd" id="44$dP9uvSeK" role="1Z2MuG">
                    <ref role="1YBMHb" node="6H$fNdLyEdj" resolve="instancesExpression" />
                  </node>
                </node>
              </node>
              <node concept="mw_s8" id="44$dP9uvSeL" role="1ZfhKB">
                <node concept="2c44tf" id="44$dP9uvSeM" role="mwGJk">
                  <node concept="3vKaQO" id="7b2SisHTXO0" role="2c44tc">
                    <node concept="3Tqbb2" id="7b2SisHTXO2" role="3O5elw">
                      <node concept="2c44tb" id="7b2SisHTXO3" role="lGtFl">
                        <property role="2qtEX8" value="concept" />
                        <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138055754698/1138405853777" />
                        <node concept="2OqwBi" id="7b2SisHTXO4" role="2c44t1">
                          <node concept="1PxgMI" id="7b2SisHTXO5" role="2Oq$k0">
                            <node concept="2OqwBi" id="7b2SisHTXO6" role="1m5AlR">
                              <node concept="1YBJjd" id="7b2SisHTXO7" role="2Oq$k0">
                                <ref role="1YBMHb" node="6H$fNdLyEdj" resolve="instancesExpression" />
                              </node>
                              <node concept="3TrEf2" id="7b2SisHTXO8" role="2OqNvi">
                                <ref role="3Tt5mk" to="3xdn:6H$fNdLyE4e" resolve="conceptArg" />
                              </node>
                            </node>
                            <node concept="chp4Y" id="714IaVdGZk3" role="3oSUPX">
                              <ref role="cht4Q" to="tp25:h8chp0G" resolve="RefConcept_Reference" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="7b2SisHTXO9" role="2OqNvi">
                            <ref role="3Tt5mk" to="tp25:h8cht0$" resolve="conceptDeclaration" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="44$dP9uvRk8" role="3eO9$A">
            <node concept="2OqwBi" id="44$dP9uvOSD" role="2Oq$k0">
              <node concept="1YBJjd" id="44$dP9uvOK5" role="2Oq$k0">
                <ref role="1YBMHb" node="6H$fNdLyEdj" resolve="instancesExpression" />
              </node>
              <node concept="3TrEf2" id="44$dP9uvQdQ" role="2OqNvi">
                <ref role="3Tt5mk" to="3xdn:6H$fNdLyE4e" resolve="conceptArg" />
              </node>
            </node>
            <node concept="1mIQ4w" id="44$dP9uvSb1" role="2OqNvi">
              <node concept="chp4Y" id="44$dP9uvScj" role="cj9EA">
                <ref role="cht4Q" to="tp25:h8chp0G" resolve="RefConcept_Reference" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="6H$fNdLyEdj" role="1YuTPh">
      <property role="TrG5h" value="instancesExpression" />
      <ref role="1YaFvo" to="3xdn:6H$fNdLyE4d" resolve="InstancesExpression" />
    </node>
  </node>
  <node concept="1YbPZF" id="3Z0MTj6lTFC">
    <property role="TrG5h" value="typeof_NodesExpresiion" />
    <property role="3GE5qa" value="query" />
    <node concept="3clFbS" id="3Z0MTj6lTFD" role="18ibNy">
      <node concept="1Z5TYs" id="5uXC5_7dM2K" role="3cqZAp">
        <node concept="mw_s8" id="5uXC5_7dM2L" role="1ZfhKB">
          <node concept="2c44tf" id="5uXC5_7dM2M" role="mwGJk">
            <node concept="A3Dl8" id="5uXC5_7dM2N" role="2c44tc">
              <node concept="3Tqbb2" id="5uXC5_7dM2O" role="A3Ik2" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="5uXC5_7dM2U" role="1ZfhK$">
          <node concept="1Z2H0r" id="5uXC5_7dM2V" role="mwGJk">
            <node concept="1YBJjd" id="5uXC5_7dM2W" role="1Z2MuG">
              <ref role="1YBMHb" node="3Z0MTj6lTFF" resolve="nodesExpression" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="3Z0MTj6lTFF" role="1YuTPh">
      <property role="TrG5h" value="nodesExpression" />
      <ref role="1YaFvo" to="3xdn:2sF4xi8qX2e" resolve="NodesExpression" />
    </node>
  </node>
  <node concept="1YbPZF" id="5uXC5_7di9F">
    <property role="TrG5h" value="typeof_ReferencesExpression" />
    <property role="3GE5qa" value="query" />
    <node concept="3clFbS" id="5uXC5_7di9G" role="18ibNy">
      <node concept="1Z5TYs" id="5uXC5_7eNAP" role="3cqZAp">
        <node concept="mw_s8" id="5uXC5_7eNAQ" role="1ZfhKB">
          <node concept="2c44tf" id="5uXC5_7eNAR" role="mwGJk">
            <node concept="A3Dl8" id="5uXC5_7eNAS" role="2c44tc">
              <node concept="2z4iKi" id="5uXC5_7eNEF" role="A3Ik2" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="5uXC5_7eNAU" role="1ZfhK$">
          <node concept="1Z2H0r" id="5uXC5_7eNAV" role="mwGJk">
            <node concept="1YBJjd" id="5uXC5_7eNCz" role="1Z2MuG">
              <ref role="1YBMHb" node="5uXC5_7di9I" resolve="referencesExpression" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="5uXC5_7di9I" role="1YuTPh">
      <property role="TrG5h" value="referencesExpression" />
      <ref role="1YaFvo" to="3xdn:5uXC5_72l2X" resolve="ReferencesExpression" />
    </node>
  </node>
  <node concept="1YbPZF" id="5X1VVpPJEZQ">
    <property role="TrG5h" value="typeof_ModelsExpression" />
    <property role="3GE5qa" value="query" />
    <node concept="3clFbS" id="5X1VVpPJEZR" role="18ibNy">
      <node concept="1Z5TYs" id="5X1VVpPJF8L" role="3cqZAp">
        <node concept="mw_s8" id="5X1VVpPJFa0" role="1ZfhKB">
          <node concept="2c44tf" id="5X1VVpPJF9W" role="mwGJk">
            <node concept="A3Dl8" id="5X1VVpPJFaz" role="2c44tc">
              <node concept="H_c77" id="5X1VVpPJFbI" role="A3Ik2" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="5X1VVpPJF8O" role="1ZfhK$">
          <node concept="1Z2H0r" id="5X1VVpPJF1b" role="mwGJk">
            <node concept="1YBJjd" id="5X1VVpPJF29" role="1Z2MuG">
              <ref role="1YBMHb" node="5X1VVpPJEZT" resolve="modelsExpression" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="5X1VVpPJEZT" role="1YuTPh">
      <property role="TrG5h" value="modelsExpression" />
      <ref role="1YaFvo" to="3xdn:5X1VVpPJEGH" resolve="ModelsExpression" />
    </node>
  </node>
  <node concept="1YbPZF" id="5X1VVpPN2al">
    <property role="TrG5h" value="typeof_ModulesExpression" />
    <property role="3GE5qa" value="query" />
    <node concept="3clFbS" id="5X1VVpPN2am" role="18ibNy">
      <node concept="1Z5TYs" id="5X1VVpPN2hw" role="3cqZAp">
        <node concept="mw_s8" id="5X1VVpPNxFt" role="1ZfhKB">
          <node concept="2c44tf" id="5X1VVpPNxFp" role="mwGJk">
            <node concept="A3Dl8" id="5X1VVpPNxGa" role="2c44tc">
              <node concept="3uibUv" id="5X1VVpPNxGV" role="A3Ik2">
                <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="5X1VVpPN2hz" role="1ZfhK$">
          <node concept="1Z2H0r" id="5X1VVpPN2av" role="mwGJk">
            <node concept="1YBJjd" id="5X1VVpPN2aS" role="1Z2MuG">
              <ref role="1YBMHb" node="5X1VVpPN2ao" resolve="modulesExpression" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="5X1VVpPN2ao" role="1YuTPh">
      <property role="TrG5h" value="modulesExpression" />
      <ref role="1YaFvo" to="3xdn:5X1VVpPN29y" resolve="ModulesExpression" />
    </node>
  </node>
  <node concept="18kY7G" id="3J6h25QQOMZ">
    <property role="TrG5h" value="check_QueryDuplicatedParameters" />
    <property role="3GE5qa" value="query.parameter" />
    <node concept="3clFbS" id="3J6h25QQON0" role="18ibNy">
      <node concept="3cpWs8" id="3J6h25QRwwi" role="3cqZAp">
        <node concept="3cpWsn" id="3J6h25QRwwl" role="3cpWs9">
          <property role="TrG5h" value="parameters" />
          <node concept="A3Dl8" id="3J6h25QRwwf" role="1tU5fm">
            <node concept="3Tqbb2" id="3J6h25QRwQ2" role="A3Ik2">
              <ref role="ehGHo" to="3xdn:3J6h25Q2URP" resolve="QueryParameter" />
            </node>
          </node>
          <node concept="2OqwBi" id="3J6h25QR$7l" role="33vP2m">
            <node concept="1YBJjd" id="3J6h25QRwRU" role="2Oq$k0">
              <ref role="1YBMHb" node="3J6h25QQON2" resolve="queryParameterList" />
            </node>
            <node concept="3Tsc0h" id="3J6h25QR_DD" role="2OqNvi">
              <ref role="3TtcxE" to="3xdn:3J6h25QCAaA" resolve="parameter" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cpWs8" id="3J6h25QRmGl" role="3cqZAp">
        <node concept="3cpWsn" id="3J6h25QRmGo" role="3cpWs9">
          <property role="TrG5h" value="parameterConcepts" />
          <node concept="A3Dl8" id="3J6h25QRmGi" role="1tU5fm">
            <node concept="3bZ5Sz" id="72nsGSZeVDC" role="A3Ik2">
              <ref role="3bZ5Sy" to="3xdn:3J6h25Q2URP" resolve="QueryParameter" />
            </node>
          </node>
          <node concept="2OqwBi" id="3J6h25QRoCs" role="33vP2m">
            <node concept="2OqwBi" id="3J6h25QQUng" role="2Oq$k0">
              <node concept="37vLTw" id="3J6h25QRAnH" role="2Oq$k0">
                <ref role="3cqZAo" node="3J6h25QRwwl" resolve="parameters" />
              </node>
              <node concept="3$u5V9" id="3J6h25QRjrF" role="2OqNvi">
                <node concept="1bVj0M" id="3J6h25QRjrG" role="23t8la">
                  <node concept="3clFbS" id="3J6h25QRjrH" role="1bW5cS">
                    <node concept="3clFbF" id="3J6h25QRjAR" role="3cqZAp">
                      <node concept="2OqwBi" id="3J6h25QRk9n" role="3clFbG">
                        <node concept="2yIwOk" id="72nsGSZeWDd" role="2OqNvi" />
                        <node concept="37vLTw" id="3J6h25QRjAQ" role="2Oq$k0">
                          <ref role="3cqZAo" node="5W7E4fV0Wrv" resolve="it" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="5W7E4fV0Wrv" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="5W7E4fV0Wrw" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1VAtEI" id="3J6h25QRs9I" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3cpWs8" id="3J6h25QRsbr" role="3cqZAp">
        <node concept="3cpWsn" id="3J6h25QRsbu" role="3cpWs9">
          <property role="TrG5h" value="groupedByConcepts" />
          <node concept="A3Dl8" id="3J6h25QRsbo" role="1tU5fm">
            <node concept="A3Dl8" id="3J6h25QRsc3" role="A3Ik2">
              <node concept="3Tqbb2" id="3J6h25QRscs" role="A3Ik2">
                <ref role="ehGHo" to="3xdn:3J6h25Q2URP" resolve="QueryParameter" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3J6h25QRsK_" role="33vP2m">
            <node concept="37vLTw" id="3J6h25QRsk4" role="2Oq$k0">
              <ref role="3cqZAo" node="3J6h25QRmGo" resolve="parameterConcepts" />
            </node>
            <node concept="3$u5V9" id="3J6h25QTeke" role="2OqNvi">
              <node concept="1bVj0M" id="3J6h25QTekf" role="23t8la">
                <node concept="3clFbS" id="3J6h25QTekg" role="1bW5cS">
                  <node concept="3clFbF" id="3J6h25QTeK6" role="3cqZAp">
                    <node concept="2OqwBi" id="3J6h25QTeK7" role="3clFbG">
                      <node concept="37vLTw" id="3J6h25QTeK8" role="2Oq$k0">
                        <ref role="3cqZAo" node="3J6h25QRwwl" resolve="parameters" />
                      </node>
                      <node concept="3zZkjj" id="3J6h25QTeK9" role="2OqNvi">
                        <node concept="1bVj0M" id="3J6h25QTeKa" role="23t8la">
                          <node concept="3clFbS" id="3J6h25QTeKb" role="1bW5cS">
                            <node concept="3clFbF" id="3J6h25QTeKc" role="3cqZAp">
                              <node concept="2OqwBi" id="3J6h25QTeKd" role="3clFbG">
                                <node concept="2OqwBi" id="3J6h25QTeKe" role="2Oq$k0">
                                  <node concept="37vLTw" id="3J6h25QTeKf" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5W7E4fV0Wrx" resolve="p" />
                                  </node>
                                  <node concept="2yIwOk" id="5wSyoDt1ViQ" role="2OqNvi" />
                                </node>
                                <node concept="3O6GUB" id="3J6h25QTeKh" role="2OqNvi">
                                  <node concept="25Kdxt" id="3J6h25QTeKi" role="3QVz_e">
                                    <node concept="37vLTw" id="5VdAhx7TAkF" role="25KhWn">
                                      <ref role="3cqZAo" node="5W7E4fV0Wrz" resolve="c" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="gl6BB" id="5W7E4fV0Wrx" role="1bW2Oz">
                            <property role="TrG5h" value="p" />
                            <node concept="2jxLKc" id="5W7E4fV0Wry" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="5W7E4fV0Wrz" role="1bW2Oz">
                  <property role="TrG5h" value="c" />
                  <node concept="2jxLKc" id="5W7E4fV0Wr$" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="3J6h25QTFj8" role="3cqZAp" />
      <node concept="2Gpval" id="3J6h25QTFhw" role="3cqZAp">
        <node concept="2GrKxI" id="3J6h25QTFhy" role="2Gsz3X">
          <property role="TrG5h" value="group" />
        </node>
        <node concept="37vLTw" id="3J6h25QTFmG" role="2GsD0m">
          <ref role="3cqZAo" node="3J6h25QRsbu" resolve="groupedByConcepts" />
        </node>
        <node concept="3clFbS" id="3J6h25QTFhA" role="2LFqv$">
          <node concept="3clFbJ" id="1YN7ozXvYmQ" role="3cqZAp">
            <node concept="3clFbS" id="1YN7ozXvYmT" role="3clFbx">
              <node concept="2Gpval" id="1YN7ozXwdBR" role="3cqZAp">
                <node concept="2GrKxI" id="1YN7ozXwdBT" role="2Gsz3X">
                  <property role="TrG5h" value="other" />
                </node>
                <node concept="2OqwBi" id="1YN7ozXwfJl" role="2GsD0m">
                  <node concept="2GrUjf" id="1YN7ozXweao" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="3J6h25QTFhy" resolve="group" />
                  </node>
                  <node concept="2Wx4Xu" id="1YN7ozXx7Kf" role="2OqNvi">
                    <node concept="3cpWsd" id="1YN7ozXxgZQ" role="2WvESB">
                      <node concept="3cmrfG" id="1YN7ozXxgZT" role="3uHU7w">
                        <property role="3cmrfH" value="1" />
                      </node>
                      <node concept="2OqwBi" id="1YN7ozXx9XD" role="3uHU7B">
                        <node concept="2GrUjf" id="1YN7ozXx7Lv" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="3J6h25QTFhy" resolve="group" />
                        </node>
                        <node concept="34oBXx" id="1YN7ozXxdyZ" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="1YN7ozXwdBX" role="2LFqv$">
                  <node concept="2MkqsV" id="1YN7ozXwanh" role="3cqZAp">
                    <node concept="3cpWs3" id="1YN7ozXwbc9" role="2MkJ7o">
                      <node concept="2OqwBi" id="1YN7ozXwbca" role="3uHU7w">
                        <node concept="2OqwBi" id="1YN7ozXwbcb" role="2Oq$k0">
                          <node concept="2OqwBi" id="1YN7ozXwbcc" role="2Oq$k0">
                            <node concept="2GrUjf" id="1YN7ozXwbcd" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="3J6h25QTFhy" resolve="group" />
                            </node>
                            <node concept="1uHKPH" id="1YN7ozXwbce" role="2OqNvi" />
                          </node>
                          <node concept="2yIwOk" id="72nsGSZeV7o" role="2OqNvi" />
                        </node>
                        <node concept="3n3YKJ" id="72nsGSZeV$g" role="2OqNvi" />
                      </node>
                      <node concept="Xl_RD" id="1YN7ozXwbch" role="3uHU7B">
                        <property role="Xl_RC" value="Duplicated parameter: " />
                      </node>
                    </node>
                    <node concept="2GrUjf" id="1YN7ozXxp4M" role="1urrMF">
                      <ref role="2Gs0qQ" node="1YN7ozXwdBT" resolve="other" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3eOSWO" id="1YN7ozXw9z2" role="3clFbw">
              <node concept="3cmrfG" id="1YN7ozXw9z5" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="2OqwBi" id="1YN7ozXw049" role="3uHU7B">
                <node concept="2GrUjf" id="1YN7ozXvYoQ" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="3J6h25QTFhy" resolve="group" />
                </node>
                <node concept="34oBXx" id="1YN7ozXw25H" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="3J6h25QQON2" role="1YuTPh">
      <property role="TrG5h" value="queryParameterList" />
      <ref role="1YaFvo" to="3xdn:3J6h25Q5HRT" resolve="QueryParameterList" />
    </node>
  </node>
  <node concept="1YbPZF" id="3F2FyKbNNPn">
    <property role="TrG5h" value="typeof_ScopeProvider" />
    <property role="3GE5qa" value="" />
    <node concept="3clFbS" id="3F2FyKbNNPo" role="18ibNy">
      <node concept="2NvLDW" id="3F2FyKbNVdL" role="3cqZAp">
        <property role="3wDh2S" value="true" />
        <node concept="mw_s8" id="3F2FyKbNVdO" role="1ZfhK$">
          <node concept="1Z2H0r" id="3F2FyKbNOjl" role="mwGJk">
            <node concept="2OqwBi" id="3F2FyKbNOmx" role="1Z2MuG">
              <node concept="1YBJjd" id="3F2FyKbNOjL" role="2Oq$k0">
                <ref role="1YBMHb" node="3F2FyKbNNPq" resolve="scopeProvider" />
              </node>
              <node concept="3TrEf2" id="3F2FyKbNVb4" role="2OqNvi">
                <ref role="3Tt5mk" to="3xdn:3F2FyKbNNqR" resolve="scope" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="3F2FyKbNVkL" role="1ZfhKB">
          <node concept="2c44tf" id="3F2FyKbNVkM" role="mwGJk">
            <node concept="2usRSg" id="3F2FyKbNVkN" role="2c44tc">
              <node concept="A3Dl8" id="3F2FyKbNVkO" role="2usUpS">
                <node concept="3Tqbb2" id="3F2FyKbNVkP" role="A3Ik2" />
              </node>
              <node concept="H_c77" id="3F2FyKbNVnk" role="2usUpS" />
              <node concept="A3Dl8" id="3F2FyKbNVkS" role="2usUpS">
                <node concept="H_c77" id="3F2FyKbNVkT" role="A3Ik2" />
              </node>
              <node concept="3uibUv" id="3F2FyKbNXXO" role="2usUpS">
                <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
              </node>
              <node concept="A3Dl8" id="3F2FyKbNVkU" role="2usUpS">
                <node concept="3uibUv" id="3F2FyKbNVkV" role="A3Ik2">
                  <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                </node>
              </node>
              <node concept="3uibUv" id="3F2FyKbNY6e" role="2usUpS">
                <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
              </node>
              <node concept="3uibUv" id="ZwXbs7Vr2D" role="2usUpS">
                <ref role="3uigEE" to="lui2:~SearchScope" resolve="SearchScope" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="3F2FyKbNNPq" role="1YuTPh">
      <property role="TrG5h" value="scopeProvider" />
      <ref role="1YaFvo" to="3xdn:3F2FyKbNNqb" resolve="WithStatement" />
    </node>
  </node>
  <node concept="1YbPZF" id="238_VGTIKxG">
    <property role="TrG5h" value="typeof_ModuleScopeLiteral" />
    <property role="3GE5qa" value="query.parameter.scope" />
    <node concept="3clFbS" id="238_VGTIKxH" role="18ibNy">
      <node concept="1ZobV4" id="238_VGTIKxI" role="3cqZAp">
        <property role="3wDh2S" value="true" />
        <node concept="mw_s8" id="238_VGTIKxJ" role="1ZfhK$">
          <node concept="1Z2H0r" id="238_VGTIKxK" role="mwGJk">
            <node concept="2OqwBi" id="238_VGTIKxL" role="1Z2MuG">
              <node concept="1YBJjd" id="238_VGTIKxM" role="2Oq$k0">
                <ref role="1YBMHb" node="238_VGTIKxU" resolve="moduleScopeLiteral" />
              </node>
              <node concept="3TrEf2" id="238_VGTIKxN" role="2OqNvi">
                <ref role="3Tt5mk" to="3xdn:238_VGTIKuA" resolve="modules" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="238_VGTIKxO" role="1ZfhKB">
          <node concept="2c44tf" id="238_VGTIKxP" role="mwGJk">
            <node concept="2usRSg" id="238_VGTIKxQ" role="2c44tc">
              <node concept="3uibUv" id="238_VGTIKxR" role="2usUpS">
                <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
              </node>
              <node concept="A3Dl8" id="238_VGTIKxS" role="2usUpS">
                <node concept="3uibUv" id="238_VGTIKxT" role="A3Ik2">
                  <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="238_VGTIKxU" role="1YuTPh">
      <property role="TrG5h" value="moduleScopeLiteral" />
      <ref role="1YaFvo" to="3xdn:238_VGTIKu_" resolve="ModulesScope" />
    </node>
  </node>
  <node concept="1YbPZF" id="238_VGTIKyw">
    <property role="TrG5h" value="typeof_ModelScopeLiteral" />
    <property role="3GE5qa" value="query.parameter.scope" />
    <node concept="3clFbS" id="238_VGTIKyx" role="18ibNy">
      <node concept="1ZobV4" id="238_VGTIKyy" role="3cqZAp">
        <property role="3wDh2S" value="true" />
        <node concept="mw_s8" id="238_VGTIKyz" role="1ZfhK$">
          <node concept="1Z2H0r" id="238_VGTIKy$" role="mwGJk">
            <node concept="2OqwBi" id="238_VGTIKy_" role="1Z2MuG">
              <node concept="1YBJjd" id="238_VGTIKyA" role="2Oq$k0">
                <ref role="1YBMHb" node="238_VGTIKyI" resolve="modelScopeLiteral" />
              </node>
              <node concept="3TrEf2" id="238_VGTIKyB" role="2OqNvi">
                <ref role="3Tt5mk" to="3xdn:238_VGTIKuC" resolve="models" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="238_VGTIKyC" role="1ZfhKB">
          <node concept="2c44tf" id="238_VGTIKyD" role="mwGJk">
            <node concept="2usRSg" id="238_VGTIKyE" role="2c44tc">
              <node concept="H_c77" id="238_VGTIKyF" role="2usUpS" />
              <node concept="A3Dl8" id="238_VGTIKyG" role="2usUpS">
                <node concept="H_c77" id="238_VGTIKyH" role="A3Ik2" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="238_VGTIKyI" role="1YuTPh">
      <property role="TrG5h" value="modelScopeLiteral" />
      <ref role="1YaFvo" to="3xdn:238_VGTIKuB" resolve="ModelsScope" />
    </node>
  </node>
  <node concept="1YbPZF" id="238_VGTIKzf">
    <property role="TrG5h" value="typeof_CustomScope" />
    <property role="3GE5qa" value="query.parameter.scope" />
    <node concept="3clFbS" id="238_VGTIKzg" role="18ibNy">
      <node concept="1ZobV4" id="238_VGTIKzh" role="3cqZAp">
        <property role="3wDh2S" value="true" />
        <node concept="mw_s8" id="238_VGTIKzi" role="1ZfhKB">
          <node concept="2c44tf" id="238_VGTIKzj" role="mwGJk">
            <node concept="3uibUv" id="238_VGTIKzk" role="2c44tc">
              <ref role="3uigEE" to="lui2:~SearchScope" resolve="SearchScope" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="238_VGTIKzl" role="1ZfhK$">
          <node concept="1Z2H0r" id="238_VGTIKzm" role="mwGJk">
            <node concept="2OqwBi" id="238_VGTIKzn" role="1Z2MuG">
              <node concept="1YBJjd" id="238_VGTIKzo" role="2Oq$k0">
                <ref role="1YBMHb" node="238_VGTIKzq" resolve="customScope" />
              </node>
              <node concept="3TrEf2" id="238_VGTIKzp" role="2OqNvi">
                <ref role="3Tt5mk" to="3xdn:238_VGTIKuE" resolve="scope" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="238_VGTIKzq" role="1YuTPh">
      <property role="TrG5h" value="customScope" />
      <ref role="1YaFvo" to="3xdn:238_VGTIKuD" resolve="CustomScope" />
    </node>
  </node>
</model>

