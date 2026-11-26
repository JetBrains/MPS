<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:00000000-0000-4000-0000-011c89590371(jetbrains.mps.baseLanguage.classifiers.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="5" />
    <devkit ref="00000000-0000-4000-0000-1de82b3a4936(jetbrains.mps.devkit.aspect.typesystem)" />
  </languages>
  <imports>
    <import index="tpek" ref="r:00000000-0000-4000-0000-011c895902c0(jetbrains.mps.baseLanguage.behavior)" />
    <import index="tp4f" ref="r:00000000-0000-4000-0000-011c89590373(jetbrains.mps.baseLanguage.classifiers.structure)" />
    <import index="tp4h" ref="r:00000000-0000-4000-0000-011c8959036d(jetbrains.mps.baseLanguage.classifiers.behavior)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpeh" ref="r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
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
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
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
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1081855346303" name="jetbrains.mps.baseLanguage.structure.BreakStatement" flags="nn" index="3zACq4" />
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
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
      <concept id="2329696648445392942" name="jetbrains.mps.lang.typesystem.structure.CheckingRuleReference" flags="ng" index="dlsrG">
        <reference id="2329696648445392943" name="declaration" index="dlsrH" />
      </concept>
      <concept id="1185788614172" name="jetbrains.mps.lang.typesystem.structure.NormalTypeClause" flags="ng" index="mw_s8">
        <child id="1185788644032" name="normalType" index="mwGJk" />
      </concept>
      <concept id="1175147569072" name="jetbrains.mps.lang.typesystem.structure.AbstractSubtypingRule" flags="ig" index="2sgdUx">
        <property id="1175607673137" name="isWeak" index="2RFo0w" />
        <child id="1175147624276" name="body" index="2sgrp5" />
      </concept>
      <concept id="1175147670730" name="jetbrains.mps.lang.typesystem.structure.SubtypingRule" flags="ig" index="2sgARr" />
      <concept id="1175517767210" name="jetbrains.mps.lang.typesystem.structure.ReportErrorStatement" flags="nn" index="2MkqsV">
        <child id="1175517851849" name="errorString" index="2MkJ7o" />
      </concept>
      <concept id="1216383170661" name="jetbrains.mps.lang.typesystem.structure.TypesystemQuickFix" flags="ng" index="Q5z_Y">
        <child id="1216383424566" name="executeBlock" index="Q6x$H" />
        <child id="1216391046856" name="descriptionBlock" index="QzAvj" />
      </concept>
      <concept id="1216383287005" name="jetbrains.mps.lang.typesystem.structure.QuickFixExecuteBlock" flags="in" index="Q5ZZ6" />
      <concept id="1216383337216" name="jetbrains.mps.lang.typesystem.structure.ConceptFunctionParameter_node" flags="nn" index="Q6c8r" />
      <concept id="1216390987552" name="jetbrains.mps.lang.typesystem.structure.QuickFixDescriptionBlock" flags="in" index="QznSV" />
      <concept id="1195213580585" name="jetbrains.mps.lang.typesystem.structure.AbstractCheckingRule" flags="ig" index="18hYwZ">
        <child id="1195213635060" name="body" index="18ibNy" />
      </concept>
      <concept id="1195214364922" name="jetbrains.mps.lang.typesystem.structure.NonTypesystemRule" flags="ig" index="18kY7G">
        <child id="2329696648448631592" name="overridenRules" index="dp_RE" />
      </concept>
      <concept id="3937244445246642777" name="jetbrains.mps.lang.typesystem.structure.AbstractReportStatement" flags="ng" index="1urrMJ">
        <child id="3937244445246643221" name="helginsIntention" index="1urrFz" />
        <child id="3937244445246642781" name="nodeToReport" index="1urrMF" />
      </concept>
      <concept id="1210784285454" name="jetbrains.mps.lang.typesystem.structure.TypesystemIntention" flags="ng" index="3Cnw8n">
        <reference id="1216388525179" name="quickFix" index="QpYPw" />
      </concept>
      <concept id="1176544042499" name="jetbrains.mps.lang.typesystem.structure.Node_TypeOperation" flags="nn" index="3JvlWi" />
      <concept id="1176558773329" name="jetbrains.mps.lang.typesystem.structure.CoerceStatement" flags="nn" index="3Knyl0">
        <child id="1176558868203" name="body" index="3KnTvU" />
        <child id="1176558876970" name="pattern" index="3KnVwV" />
        <child id="1176558919376" name="nodeToCoerce" index="3Ko5Z1" />
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
        <child id="1174660783413" name="leftExpression" index="1ZfhK$" />
        <child id="1174660783414" name="rightExpression" index="1ZfhKB" />
      </concept>
      <concept id="1174663118805" name="jetbrains.mps.lang.typesystem.structure.CreateLessThanInequationStatement" flags="nn" index="1ZobV4" />
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
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1171323947159" name="jetbrains.mps.lang.smodel.structure.Model_NodesOperation" flags="nn" index="2SmgA7">
        <child id="1758937410080001570" name="conceptArgument" index="1dBWTz" />
      </concept>
      <concept id="1145570846907" name="jetbrains.mps.lang.smodel.structure.Node_GetNextSiblingsOperation" flags="nn" index="2TlYAL" />
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
  <node concept="1YbPZF" id="hyWv3sq">
    <property role="TrG5h" value="typeof_ThisClassifierExpresson" />
    <node concept="3clFbS" id="hyWv3sr" role="18ibNy">
      <node concept="3cpWs8" id="hyWv48T" role="3cqZAp">
        <node concept="3cpWsn" id="hyWv48U" role="3cpWs9">
          <property role="TrG5h" value="classifier" />
          <node concept="3Tqbb2" id="hyWv48V" role="1tU5fm">
            <ref role="ehGHo" to="tp4f:hyWqMFP" resolve="IClassifier" />
          </node>
          <node concept="2OqwBi" id="hyWv5FB" role="33vP2m">
            <node concept="1YBJjd" id="hyWv5BG" role="2Oq$k0">
              <ref role="1YBMHb" node="hyWv3ss" resolve="nodeToCheck" />
            </node>
            <node concept="3zqWPK" id="70OdufORcg4" role="2OqNvi">
              <ref role="37wK5l" to="tp4h:hEwJeDN" resolve="getClassifier" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="hyWvi6M" role="3cqZAp">
        <node concept="3clFbS" id="hyWvi6N" role="3clFbx">
          <node concept="1Z5TYs" id="hyWvqUo" role="3cqZAp">
            <node concept="mw_s8" id="hyWvrfe" role="1ZfhK$">
              <node concept="1Z2H0r" id="hyWvrff" role="mwGJk">
                <node concept="1YBJjd" id="hyWvrAx" role="1Z2MuG">
                  <ref role="1YBMHb" node="hyWv3ss" resolve="nodeToCheck" />
                </node>
              </node>
            </node>
            <node concept="mw_s8" id="hyWvsBT" role="1ZfhKB">
              <node concept="2OqwBi" id="hyWvsHj" role="mwGJk">
                <node concept="37vLTw" id="3GM_nagTral" role="2Oq$k0">
                  <ref role="3cqZAo" node="hyWv48U" resolve="classifier" />
                </node>
                <node concept="3zqWPK" id="70OdufORcg6" role="2OqNvi">
                  <ref role="37wK5l" to="tp4h:hEwJimy" resolve="createType" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3y3z36" id="hyWvisD" role="3clFbw">
          <node concept="10Nm6u" id="hyWviE9" role="3uHU7w" />
          <node concept="37vLTw" id="3GM_nagTrA1" role="3uHU7B">
            <ref role="3cqZAo" node="hyWv48U" resolve="classifier" />
          </node>
        </node>
        <node concept="9aQIb" id="hyWvtNQ" role="9aQIa">
          <node concept="3clFbS" id="hyWvtNR" role="9aQI4">
            <node concept="2MkqsV" id="hyWvuzQ" role="3cqZAp">
              <node concept="Xl_RD" id="hyWvEkA" role="2MkJ7o">
                <property role="Xl_RC" value="this classifier expression isn't applicable in this place" />
              </node>
              <node concept="1YBJjd" id="hyWvH9u" role="1urrMF">
                <ref role="1YBMHb" node="hyWv3ss" resolve="nodeToCheck" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="hyWv3ss" role="1YuTPh">
      <property role="TrG5h" value="nodeToCheck" />
      <ref role="1YaFvo" to="tp4f:hyWthE1" resolve="ThisClassifierExpression" />
    </node>
  </node>
  <node concept="1YbPZF" id="hyXuhyd">
    <property role="TrG5h" value="typeof_DefaultMethodCallOperation" />
    <property role="3GE5qa" value="Methods" />
    <node concept="3clFbS" id="hyXuhye" role="18ibNy">
      <node concept="1Z5TYs" id="hyXujdw" role="3cqZAp">
        <node concept="mw_s8" id="hyXukAU" role="1ZfhK$">
          <node concept="1Z2H0r" id="hyXukAV" role="mwGJk">
            <node concept="1YBJjd" id="hyXukVX" role="1Z2MuG">
              <ref role="1YBMHb" node="hyXuhyf" resolve="nodeToCheck" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="hyXulxl" role="1ZfhKB">
          <node concept="2OqwBi" id="hyXunMu" role="mwGJk">
            <node concept="2OqwBi" id="hyXulBH" role="2Oq$k0">
              <node concept="1YBJjd" id="hyXulxm" role="2Oq$k0">
                <ref role="1YBMHb" node="hyXuhyf" resolve="nodeToCheck" />
              </node>
              <node concept="3TrEf2" id="hyXunG7" role="2OqNvi">
                <ref role="3Tt5mk" to="tp4f:hyXtfQh" resolve="method" />
              </node>
            </node>
            <node concept="3TrEf2" id="hyXuoHA" role="2OqNvi">
              <ref role="3Tt5mk" to="tpee:fzclF7X" resolve="returnType" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="3c0ZDt2pL4R" role="3cqZAp" />
      <node concept="1_o_46" id="Hjn6ojfrqE" role="3cqZAp">
        <node concept="1_o_bx" id="Hjn6ojfrqq" role="1_o_by">
          <node concept="1_o_bG" id="Hjn6ojfrqr" role="1_o_aQ">
            <property role="TrG5h" value="parameter" />
          </node>
          <node concept="2OqwBi" id="Hjn6ojfrql" role="1_o_bz">
            <node concept="2OqwBi" id="Hjn6ojfrqm" role="2Oq$k0">
              <node concept="1YBJjd" id="Hjn6ojfrqn" role="2Oq$k0">
                <ref role="1YBMHb" node="hyXuhyf" resolve="nodeToCheck" />
              </node>
              <node concept="3TrEf2" id="Hjn6ojfrqo" role="2OqNvi">
                <ref role="3Tt5mk" to="tp4f:hyXtfQh" resolve="method" />
              </node>
            </node>
            <node concept="3Tsc0h" id="Hjn6ojfrqp" role="2OqNvi">
              <ref role="3TtcxE" to="tpee:fzclF7Y" resolve="parameter" />
            </node>
          </node>
        </node>
        <node concept="1_o_bx" id="Hjn6ojfrqv" role="1_o_by">
          <node concept="1_o_bG" id="Hjn6ojfrqw" role="1_o_aQ">
            <property role="TrG5h" value="argument" />
          </node>
          <node concept="2OqwBi" id="Hjn6ojfrqs" role="1_o_bz">
            <node concept="1YBJjd" id="Hjn6ojfrqt" role="2Oq$k0">
              <ref role="1YBMHb" node="hyXuhyf" resolve="nodeToCheck" />
            </node>
            <node concept="3Tsc0h" id="Hjn6ojfrqu" role="2OqNvi">
              <ref role="3TtcxE" to="tp4f:hyXxRup" resolve="actualArgument" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="Hjn6ojfrqx" role="2LFqv$">
          <node concept="3clFbJ" id="3c0ZDt2oSQ5" role="3cqZAp">
            <node concept="3clFbS" id="3c0ZDt2oSQ7" role="3clFbx">
              <node concept="3cpWs8" id="3c0ZDt2pX5f" role="3cqZAp">
                <node concept="3cpWsn" id="3c0ZDt2pX5g" role="3cpWs9">
                  <property role="TrG5h" value="varArgs" />
                  <node concept="2I9FWS" id="3c0ZDt2pX5e" role="1tU5fm" />
                  <node concept="2OqwBi" id="3c0ZDt2pX5h" role="33vP2m">
                    <node concept="3M$PaV" id="3c0ZDt2pX5i" role="2Oq$k0">
                      <ref role="3M$S_o" node="Hjn6ojfrqw" resolve="argument" />
                    </node>
                    <node concept="2TlYAL" id="3c0ZDt2pX5j" role="2OqNvi">
                      <node concept="1xIGOp" id="3c0ZDt2pX5k" role="1xVPHs" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3c0ZDt2pXg9" role="3cqZAp">
                <node concept="2OqwBi" id="3c0ZDt2pY9X" role="3clFbG">
                  <node concept="37vLTw" id="3c0ZDt2pXg7" role="2Oq$k0">
                    <ref role="3cqZAo" node="3c0ZDt2pX5g" resolve="varArgs" />
                  </node>
                  <node concept="2es0OD" id="3c0ZDt2q1AP" role="2OqNvi">
                    <node concept="1bVj0M" id="3c0ZDt2q1AR" role="23t8la">
                      <node concept="3clFbS" id="3c0ZDt2q1AS" role="1bW5cS">
                        <node concept="1ZobV4" id="3c0ZDt2pPIa" role="3cqZAp">
                          <node concept="mw_s8" id="3c0ZDt2pPIb" role="1ZfhK$">
                            <node concept="1Z2H0r" id="3c0ZDt2pPIc" role="mwGJk">
                              <node concept="37vLTw" id="3c0ZDt2q26w" role="1Z2MuG">
                                <ref role="3cqZAo" node="5W7E4fV0VSV" resolve="it" />
                              </node>
                            </node>
                          </node>
                          <node concept="mw_s8" id="3c0ZDt2pPIe" role="1ZfhKB">
                            <node concept="2OqwBi" id="3c0ZDt2pSlf" role="mwGJk">
                              <node concept="1PxgMI" id="3c0ZDt2pRPZ" role="2Oq$k0">
                                <node concept="chp4Y" id="3c0ZDt2pS6W" role="3oSUPX">
                                  <ref role="cht4Q" to="tpee:hK8X2TV" resolve="VariableArityType" />
                                </node>
                                <node concept="2OqwBi" id="3c0ZDt2pPIf" role="1m5AlR">
                                  <node concept="3M$PaV" id="3c0ZDt2pPIg" role="2Oq$k0">
                                    <ref role="3M$S_o" node="Hjn6ojfrqr" resolve="parameter" />
                                  </node>
                                  <node concept="3TrEf2" id="3c0ZDt2pPIh" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tpee:4VkOLwjf83e" resolve="type" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3TrEf2" id="3c0ZDt2pSLr" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpee:hK8Xvec" resolve="componentType" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="5W7E4fV0VSV" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="5W7E4fV0VSW" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3zACq4" id="3c0ZDt2qd0$" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="3c0ZDt2pmte" role="3clFbw">
              <node concept="2OqwBi" id="3c0ZDt2pj6m" role="2Oq$k0">
                <node concept="3M$PaV" id="3c0ZDt2piOo" role="2Oq$k0">
                  <ref role="3M$S_o" node="Hjn6ojfrqr" resolve="parameter" />
                </node>
                <node concept="3TrEf2" id="3c0ZDt2pl8r" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:4VkOLwjf83e" resolve="type" />
                </node>
              </node>
              <node concept="1mIQ4w" id="3c0ZDt2pmMW" role="2OqNvi">
                <node concept="chp4Y" id="3c0ZDt2pmPR" role="cj9EA">
                  <ref role="cht4Q" to="tpee:hK8X2TV" resolve="VariableArityType" />
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="3c0ZDt2pmVv" role="9aQIa">
              <node concept="3clFbS" id="3c0ZDt2pmVw" role="9aQI4">
                <node concept="1ZobV4" id="Hjn6ojfrqy" role="3cqZAp">
                  <node concept="mw_s8" id="Hjn6ojfrqz" role="1ZfhK$">
                    <node concept="1Z2H0r" id="Hjn6ojfrq$" role="mwGJk">
                      <node concept="3M$PaV" id="Hjn6ojfrqF" role="1Z2MuG">
                        <ref role="3M$S_o" node="Hjn6ojfrqw" resolve="argument" />
                      </node>
                    </node>
                  </node>
                  <node concept="mw_s8" id="Hjn6ojfrqA" role="1ZfhKB">
                    <node concept="2OqwBi" id="Hjn6ojfrqB" role="mwGJk">
                      <node concept="3M$PaV" id="Hjn6ojfrqG" role="2Oq$k0">
                        <ref role="3M$S_o" node="Hjn6ojfrqr" resolve="parameter" />
                      </node>
                      <node concept="3TrEf2" id="Hjn6ojfrqD" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpee:4VkOLwjf83e" resolve="type" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="3c0ZDt2qkox" role="3cqZAp" />
      <node concept="3cpWs8" id="3c0ZDt2oBbx" role="3cqZAp">
        <node concept="3cpWsn" id="3c0ZDt2oBb$" role="3cpWs9">
          <property role="TrG5h" value="isNumberOfParamsOk" />
          <node concept="10P_77" id="3c0ZDt2oBbv" role="1tU5fm" />
        </node>
      </node>
      <node concept="3clFbJ" id="hKa_5NE" role="3cqZAp">
        <node concept="3clFbS" id="hKa_5NF" role="3clFbx">
          <node concept="3clFbF" id="hKa_N6x" role="3cqZAp">
            <node concept="37vLTI" id="hKa_NlJ" role="3clFbG">
              <node concept="37vLTw" id="3c0ZDt2oFwN" role="37vLTJ">
                <ref role="3cqZAo" node="3c0ZDt2oBb$" resolve="isNumberOfParamsOk" />
              </node>
              <node concept="2dkUwp" id="hKaA4wO" role="37vLTx">
                <node concept="3cpWsd" id="hKaA4wP" role="3uHU7B">
                  <node concept="3cmrfG" id="hKaA4wQ" role="3uHU7w">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="2OqwBi" id="hKaA4wR" role="3uHU7B">
                    <node concept="34oBXx" id="hRzaiUU" role="2OqNvi" />
                    <node concept="2OqwBi" id="3c0ZDt2oBkS" role="2Oq$k0">
                      <node concept="2OqwBi" id="3c0ZDt2oBkT" role="2Oq$k0">
                        <node concept="1YBJjd" id="3c0ZDt2oBkU" role="2Oq$k0">
                          <ref role="1YBMHb" node="hyXuhyf" resolve="nodeToCheck" />
                        </node>
                        <node concept="3TrEf2" id="3c0ZDt2oBkV" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp4f:hyXtfQh" resolve="method" />
                        </node>
                      </node>
                      <node concept="3Tsc0h" id="3c0ZDt2oBkW" role="2OqNvi">
                        <ref role="3TtcxE" to="tpee:fzclF7Y" resolve="parameter" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="hKaA6cI" role="3uHU7w">
                  <node concept="2OqwBi" id="3c0ZDt2oD1Y" role="2Oq$k0">
                    <node concept="1YBJjd" id="3c0ZDt2oCeX" role="2Oq$k0">
                      <ref role="1YBMHb" node="hyXuhyf" resolve="nodeToCheck" />
                    </node>
                    <node concept="3Tsc0h" id="3c0ZDt2oEwr" role="2OqNvi">
                      <ref role="3TtcxE" to="tp4f:hyXxRup" resolve="actualArgument" />
                    </node>
                  </node>
                  <node concept="34oBXx" id="hRzaiXs" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2OqwBi" id="hKa_bq_" role="3clFbw">
          <node concept="2OqwBi" id="hKa_9E$" role="2Oq$k0">
            <node concept="2OqwBi" id="hKa_8Te" role="2Oq$k0">
              <node concept="1yVyf7" id="hKa_97c" role="2OqNvi" />
              <node concept="2OqwBi" id="3c0ZDt2o$S7" role="2Oq$k0">
                <node concept="2OqwBi" id="3c0ZDt2o$2j" role="2Oq$k0">
                  <node concept="1YBJjd" id="3c0ZDt2o$2k" role="2Oq$k0">
                    <ref role="1YBMHb" node="hyXuhyf" resolve="nodeToCheck" />
                  </node>
                  <node concept="3TrEf2" id="3c0ZDt2o$2l" role="2OqNvi">
                    <ref role="3Tt5mk" to="tp4f:hyXtfQh" resolve="method" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="3c0ZDt2oAS1" role="2OqNvi">
                  <ref role="3TtcxE" to="tpee:fzclF7Y" resolve="parameter" />
                </node>
              </node>
            </node>
            <node concept="3TrEf2" id="hKa_b2V" role="2OqNvi">
              <ref role="3Tt5mk" to="tpee:4VkOLwjf83e" resolve="type" />
            </node>
          </node>
          <node concept="1mIQ4w" id="hKa_cnF" role="2OqNvi">
            <node concept="chp4Y" id="hKa_gic" role="cj9EA">
              <ref role="cht4Q" to="tpee:hK8X2TV" resolve="VariableArityType" />
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="hKa_kOq" role="9aQIa">
          <node concept="3clFbS" id="hKa_kOr" role="9aQI4">
            <node concept="3clFbF" id="hKa_pkn" role="3cqZAp">
              <node concept="37vLTI" id="hKa_q9R" role="3clFbG">
                <node concept="37vLTw" id="3c0ZDt2oGtC" role="37vLTJ">
                  <ref role="3cqZAo" node="3c0ZDt2oBb$" resolve="isNumberOfParamsOk" />
                </node>
                <node concept="3clFbC" id="hKa_wZS" role="37vLTx">
                  <node concept="2OqwBi" id="hKa__hO" role="3uHU7w">
                    <node concept="34oBXx" id="hRzaiYk" role="2OqNvi" />
                    <node concept="2OqwBi" id="3c0ZDt2oIuC" role="2Oq$k0">
                      <node concept="1YBJjd" id="3c0ZDt2oIuD" role="2Oq$k0">
                        <ref role="1YBMHb" node="hyXuhyf" resolve="nodeToCheck" />
                      </node>
                      <node concept="3Tsc0h" id="3c0ZDt2oIuE" role="2OqNvi">
                        <ref role="3TtcxE" to="tp4f:hyXxRup" resolve="actualArgument" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="hKa_uKi" role="3uHU7B">
                    <node concept="34oBXx" id="hRzaiWA" role="2OqNvi" />
                    <node concept="2OqwBi" id="3c0ZDt2oHqr" role="2Oq$k0">
                      <node concept="2OqwBi" id="3c0ZDt2oHqs" role="2Oq$k0">
                        <node concept="1YBJjd" id="3c0ZDt2oHqt" role="2Oq$k0">
                          <ref role="1YBMHb" node="hyXuhyf" resolve="nodeToCheck" />
                        </node>
                        <node concept="3TrEf2" id="3c0ZDt2oHqu" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp4f:hyXtfQh" resolve="method" />
                        </node>
                      </node>
                      <node concept="3Tsc0h" id="3c0ZDt2oHqv" role="2OqNvi">
                        <ref role="3TtcxE" to="tpee:fzclF7Y" resolve="parameter" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="3c0ZDt2ozfn" role="3cqZAp" />
      <node concept="3clFbJ" id="hz2yoCE" role="3cqZAp">
        <node concept="3clFbS" id="hz2yoCF" role="3clFbx">
          <node concept="2MkqsV" id="hz2yukf" role="3cqZAp">
            <node concept="Xl_RD" id="hz2yuFI" role="2MkJ7o">
              <property role="Xl_RC" value="Number of parameters doesn't match" />
            </node>
            <node concept="1YBJjd" id="hz2ywFs" role="1urrMF">
              <ref role="1YBMHb" node="hyXuhyf" resolve="nodeToCheck" />
            </node>
          </node>
        </node>
        <node concept="3fqX7Q" id="3c0ZDt2oKqA" role="3clFbw">
          <node concept="37vLTw" id="3c0ZDt2oK_e" role="3fr31v">
            <ref role="3cqZAo" node="3c0ZDt2oBb$" resolve="isNumberOfParamsOk" />
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="3c0ZDt2pPDr" role="3cqZAp" />
      <node concept="3clFbH" id="3c0ZDt2oMra" role="3cqZAp" />
    </node>
    <node concept="1YaCAy" id="hyXuhyf" role="1YuTPh">
      <property role="TrG5h" value="nodeToCheck" />
      <ref role="1YaFvo" to="tp4f:hyXshSD" resolve="DefaultClassifierMethodCallOperation" />
    </node>
  </node>
  <node concept="18kY7G" id="hz2vNtI">
    <property role="TrG5h" value="check_IMemberOperation" />
    <node concept="3clFbS" id="hz2vNtJ" role="18ibNy">
      <node concept="3cpWs8" id="hOYW8aX" role="3cqZAp">
        <node concept="3cpWsn" id="hOYW8aY" role="3cpWs9">
          <property role="TrG5h" value="operandType" />
          <node concept="3Tqbb2" id="hOYW8aZ" role="1tU5fm" />
          <node concept="2OqwBi" id="hOYWcRB" role="33vP2m">
            <node concept="2OqwBi" id="hOYWbXX" role="2Oq$k0">
              <node concept="1YBJjd" id="hOYWbXY" role="2Oq$k0">
                <ref role="1YBMHb" node="hz2vOYd" resolve="nodeToCheck" />
              </node>
              <node concept="3zqWPK" id="70OdufORcg8" role="2OqNvi">
                <ref role="37wK5l" to="tpek:hEwIP$m" resolve="getOperand" />
              </node>
            </node>
            <node concept="3JvlWi" id="hOYWizG" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3Knyl0" id="hz6yUjC" role="3cqZAp">
        <node concept="1YaCAy" id="hz6yUjD" role="3KnVwV">
          <property role="TrG5h" value="baseClassifierType" />
          <ref role="1YaFvo" to="tp4f:hyWtXx5" resolve="BaseClassifierType" />
        </node>
        <node concept="37vLTw" id="3GM_nagTASB" role="3Ko5Z1">
          <ref role="3cqZAo" node="hOYW8aY" resolve="operandType" />
        </node>
        <node concept="3clFbS" id="hz6yUjJ" role="3KnTvU">
          <node concept="3clFbJ" id="hz6yUjK" role="3cqZAp">
            <node concept="3fqX7Q" id="hz6yUjL" role="3clFbw">
              <node concept="2OqwBi" id="hz6yUjM" role="3fr31v">
                <node concept="3JPx81" id="hz6yUjN" role="2OqNvi">
                  <node concept="2OqwBi" id="hz6yUjO" role="25WWJ7">
                    <node concept="1YBJjd" id="hz6yUjP" role="2Oq$k0">
                      <ref role="1YBMHb" node="hz2vOYd" resolve="nodeToCheck" />
                    </node>
                    <node concept="3TrEf2" id="hz6yUjQ" role="2OqNvi">
                      <ref role="3Tt5mk" to="tp4f:hyWH_vG" resolve="member" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="hz6yUjR" role="2Oq$k0">
                  <node concept="3zqWPK" id="70OdufORcga" role="2OqNvi">
                    <ref role="37wK5l" to="tp4h:hEwINC$" resolve="getMembers" />
                    <node concept="1YBJjd" id="70OdufORcgc" role="37wK5m">
                      <ref role="1YBMHb" node="hz2vOYd" resolve="nodeToCheck" />
                    </node>
                  </node>
                  <node concept="1YBJjd" id="hz6yUjU" role="2Oq$k0">
                    <ref role="1YBMHb" node="hz6yUjD" resolve="baseClassifierType" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="hz6yUjV" role="3clFbx">
              <node concept="2MkqsV" id="hz6yUjW" role="3cqZAp">
                <node concept="Xl_RD" id="hz6yUjX" role="2MkJ7o">
                  <property role="Xl_RC" value="Declaration is out of scope" />
                </node>
                <node concept="1YBJjd" id="hz6yUjY" role="1urrMF">
                  <ref role="1YBMHb" node="hz2vOYd" resolve="nodeToCheck" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="hz2vOYd" role="1YuTPh">
      <property role="TrG5h" value="nodeToCheck" />
      <ref role="1YaFvo" to="tp4f:hyWEnem" resolve="IMemberOperation" />
    </node>
  </node>
  <node concept="1YbPZF" id="hEC86Rr">
    <property role="TrG5h" value="typeof_DefaultClassifierFieldAccessOperation" />
    <property role="3GE5qa" value="Fields" />
    <node concept="3clFbS" id="hEC86Rs" role="18ibNy">
      <node concept="1Z5TYs" id="hEC89yJ" role="3cqZAp">
        <node concept="mw_s8" id="hEC8eCO" role="1ZfhKB">
          <node concept="2OqwBi" id="hEC8jPm" role="mwGJk">
            <node concept="2OqwBi" id="hEC8eTe" role="2Oq$k0">
              <node concept="1YBJjd" id="hEC8eCP" role="2Oq$k0">
                <ref role="1YBMHb" node="hEC86Rt" resolve="nodeToCheck" />
              </node>
              <node concept="3TrEf2" id="hEC8jm9" role="2OqNvi">
                <ref role="3Tt5mk" to="tp4f:hEBZ7lN" resolve="field" />
              </node>
            </node>
            <node concept="3TrEf2" id="hEC8kwr" role="2OqNvi">
              <ref role="3Tt5mk" to="tpee:4VkOLwjf83e" resolve="type" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="hEC89yQ" role="1ZfhK$">
          <node concept="1Z2H0r" id="hEC880z" role="mwGJk">
            <node concept="1YBJjd" id="hEC88Hx" role="1Z2MuG">
              <ref role="1YBMHb" node="hEC86Rt" resolve="nodeToCheck" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="hEC86Rt" role="1YuTPh">
      <property role="TrG5h" value="nodeToCheck" />
      <ref role="1YaFvo" to="tp4f:hEBZ7lK" resolve="DefaultClassifierFieldAccessOperation" />
    </node>
  </node>
  <node concept="1YbPZF" id="hHOI6jv">
    <property role="TrG5h" value="typeof_SuperClassifierExpresson" />
    <node concept="3clFbS" id="hHOI6jw" role="18ibNy">
      <node concept="3cpWs8" id="hHOIa0x" role="3cqZAp">
        <node concept="3cpWsn" id="hHOIa0y" role="3cpWs9">
          <property role="TrG5h" value="classifier" />
          <node concept="3Tqbb2" id="hHOIa0z" role="1tU5fm">
            <ref role="ehGHo" to="tp4f:hyWqMFP" resolve="IClassifier" />
          </node>
          <node concept="2OqwBi" id="hHOIa0$" role="33vP2m">
            <node concept="1YBJjd" id="hHOIdbv" role="2Oq$k0">
              <ref role="1YBMHb" node="hHOI6jx" resolve="expresson" />
            </node>
            <node concept="3zqWPK" id="70OdufORcgd" role="2OqNvi">
              <ref role="37wK5l" to="tp4h:hHOIkvz" resolve="getClassifier" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="hHOIa0B" role="3cqZAp">
        <node concept="3clFbS" id="hHOIa0C" role="3clFbx">
          <node concept="1Z5TYs" id="hHOIa0D" role="3cqZAp">
            <node concept="mw_s8" id="hHOIa0E" role="1ZfhK$">
              <node concept="1Z2H0r" id="hHOIa0F" role="mwGJk">
                <node concept="1YBJjd" id="hHOItii" role="1Z2MuG">
                  <ref role="1YBMHb" node="hHOI6jx" resolve="expresson" />
                </node>
              </node>
            </node>
            <node concept="mw_s8" id="hHOIa0H" role="1ZfhKB">
              <node concept="2OqwBi" id="hHOIa0I" role="mwGJk">
                <node concept="37vLTw" id="3GM_nagTwk_" role="2Oq$k0">
                  <ref role="3cqZAo" node="hHOIa0y" resolve="classifier" />
                </node>
                <node concept="3zqWPK" id="70OdufORcgf" role="2OqNvi">
                  <ref role="37wK5l" to="tp4h:hHOGPWW" resolve="createSuperType" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3y3z36" id="hHOIa0L" role="3clFbw">
          <node concept="10Nm6u" id="hHOIa0M" role="3uHU7w" />
          <node concept="37vLTw" id="3GM_nagTrqZ" role="3uHU7B">
            <ref role="3cqZAo" node="hHOIa0y" resolve="classifier" />
          </node>
        </node>
        <node concept="9aQIb" id="hHOIa0O" role="9aQIa">
          <node concept="3clFbS" id="hHOIa0P" role="9aQI4">
            <node concept="2MkqsV" id="hHOIa0Q" role="3cqZAp">
              <node concept="Xl_RD" id="hHOIa0R" role="2MkJ7o">
                <property role="Xl_RC" value="super classifier expression isn't applicable in this place" />
              </node>
              <node concept="1YBJjd" id="hHOIwTd" role="1urrMF">
                <ref role="1YBMHb" node="hHOI6jx" resolve="expresson" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="hHOI6jx" role="1YuTPh">
      <property role="TrG5h" value="expresson" />
      <ref role="1YaFvo" to="tp4f:hHOG3lW" resolve="SuperClassifierExpresson" />
    </node>
  </node>
  <node concept="2sgARr" id="6FkefidRNml">
    <property role="3GE5qa" value="Types" />
    <property role="TrG5h" value="BaseClassifierType_subtypeOf_Object" />
    <property role="2RFo0w" value="true" />
    <node concept="3clFbS" id="6FkefidRNmm" role="2sgrp5">
      <node concept="3clFbF" id="6FkefidRNq6" role="3cqZAp">
        <node concept="2c44tf" id="6FkefidRNq4" role="3clFbG">
          <node concept="3uibUv" id="6FkefidRNr4" role="2c44tc">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="6FkefidRNmo" role="1YuTPh">
      <property role="TrG5h" value="baseClassifierType" />
      <ref role="1YaFvo" to="tp4f:hyWtXx5" resolve="BaseClassifierType" />
    </node>
  </node>
  <node concept="18kY7G" id="441vB8LK0gU">
    <property role="TrG5h" value="check_DefaultClassifierMethodDeclarationVisibility" />
    <node concept="3clFbS" id="441vB8LK0gV" role="18ibNy">
      <node concept="3cpWs8" id="441vB8LK0Nf" role="3cqZAp">
        <node concept="3cpWsn" id="441vB8LK0Ng" role="3cpWs9">
          <property role="TrG5h" value="parent" />
          <node concept="3Tqbb2" id="441vB8LK0MX" role="1tU5fm">
            <ref role="ehGHo" to="tp4f:hyWqMFP" resolve="IClassifier" />
          </node>
          <node concept="1PxgMI" id="441vB8LK199" role="33vP2m">
            <property role="1BlNFB" value="true" />
            <node concept="chp4Y" id="441vB8LK1ab" role="3oSUPX">
              <ref role="cht4Q" to="tp4f:hyWqMFP" resolve="IClassifier" />
            </node>
            <node concept="2OqwBi" id="441vB8LK0Nh" role="1m5AlR">
              <node concept="1YBJjd" id="441vB8LK0Ni" role="2Oq$k0">
                <ref role="1YBMHb" node="441vB8LK0gX" resolve="member" />
              </node>
              <node concept="1mfA1w" id="441vB8LK0Nj" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="441vB8LK0h8" role="3cqZAp">
        <node concept="3clFbS" id="441vB8LK0ha" role="3clFbx">
          <node concept="2MkqsV" id="441vB8LLk$6" role="3cqZAp">
            <node concept="3Cnw8n" id="441vB8LLnbe" role="1urrFz">
              <ref role="QpYPw" node="441vB8LLmEB" resolve="MakeDefaultClassifierMethodDeclarationPrivate" />
            </node>
            <node concept="Xl_RD" id="441vB8LLk$7" role="2MkJ7o">
              <property role="Xl_RC" value="Private visibility required" />
            </node>
            <node concept="1YBJjd" id="441vB8LLk$8" role="1urrMF">
              <ref role="1YBMHb" node="441vB8LK0gX" resolve="member" />
            </node>
          </node>
        </node>
        <node concept="1Wc70l" id="441vB8LK1gB" role="3clFbw">
          <node concept="2OqwBi" id="441vB8LJDgf" role="3uHU7B">
            <node concept="1PxgMI" id="441vB8LJDgg" role="2Oq$k0">
              <property role="1BlNFB" value="true" />
              <node concept="chp4Y" id="441vB8LJDgh" role="3oSUPX">
                <ref role="cht4Q" to="tp4f:hyWqMFP" resolve="IClassifier" />
              </node>
              <node concept="37vLTw" id="441vB8LK1eh" role="1m5AlR">
                <ref role="3cqZAo" node="441vB8LK0Ng" resolve="parent" />
              </node>
            </node>
            <node concept="3zqWPK" id="70OdufORcgh" role="2OqNvi">
              <ref role="37wK5l" to="tp4h:441vB8LJxAr" resolve="requiresAllMethodMembersPrivate" />
            </node>
          </node>
          <node concept="3fqX7Q" id="441vB8LK1mH" role="3uHU7w">
            <node concept="2OqwBi" id="441vB8LK1mJ" role="3fr31v">
              <node concept="2OqwBi" id="441vB8LK1mK" role="2Oq$k0">
                <node concept="1YBJjd" id="441vB8LK1mL" role="2Oq$k0">
                  <ref role="1YBMHb" node="441vB8LK0gX" resolve="member" />
                </node>
                <node concept="3zqWPK" id="70OdufORcgj" role="2OqNvi">
                  <ref role="37wK5l" to="tp4h:hEwIBC5" resolve="getVisiblity" />
                </node>
              </node>
              <node concept="1mIQ4w" id="441vB8LK1mN" role="2OqNvi">
                <node concept="chp4Y" id="441vB8LK1mO" role="cj9EA">
                  <ref role="cht4Q" to="tpee:gFTm6Wc" resolve="PrivateVisibility" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="441vB8LK0gX" role="1YuTPh">
      <property role="TrG5h" value="member" />
      <ref role="1YaFvo" to="tp4f:hyXrIf3" resolve="DefaultClassifierMethodDeclaration" />
    </node>
  </node>
  <node concept="Q5z_Y" id="441vB8LLiRg">
    <property role="TrG5h" value="MakeDefaultClassifierFieldDeclarationPrivate" />
    <node concept="Q5ZZ6" id="441vB8LLiRh" role="Q6x$H">
      <node concept="3clFbS" id="441vB8LLiRi" role="2VODD2">
        <node concept="3clFbF" id="441vB8LLkUh" role="3cqZAp">
          <node concept="37vLTI" id="441vB8LLmra" role="3clFbG">
            <node concept="2ShNRf" id="441vB8LLmte" role="37vLTx">
              <node concept="3zrR0B" id="441vB8LLm_Z" role="2ShVmc">
                <node concept="3Tqbb2" id="441vB8LLmA1" role="3zrR0E">
                  <ref role="ehGHo" to="tpee:gFTm6Wc" resolve="PrivateVisibility" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="441vB8LLlwE" role="37vLTJ">
              <node concept="1PxgMI" id="441vB8LLl35" role="2Oq$k0">
                <property role="1BlNFB" value="true" />
                <node concept="chp4Y" id="441vB8LLl3Q" role="3oSUPX">
                  <ref role="cht4Q" to="tp4f:hEBZ0aj" resolve="DefaultClassifierFieldDeclaration" />
                </node>
                <node concept="Q6c8r" id="441vB8LLkUg" role="1m5AlR" />
              </node>
              <node concept="3TrEf2" id="441vB8LLmch" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:h9B3oxE" resolve="visibility" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="QznSV" id="441vB8LLnA1" role="QzAvj">
      <node concept="3clFbS" id="441vB8LLnA2" role="2VODD2">
        <node concept="3clFbF" id="441vB8LLnAD" role="3cqZAp">
          <node concept="Xl_RD" id="441vB8LLnAC" role="3clFbG">
            <property role="Xl_RC" value="Make Field Private" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="Q5z_Y" id="441vB8LLmEB">
    <property role="TrG5h" value="MakeDefaultClassifierMethodDeclarationPrivate" />
    <node concept="Q5ZZ6" id="441vB8LLmEC" role="Q6x$H">
      <node concept="3clFbS" id="441vB8LLmED" role="2VODD2">
        <node concept="3clFbF" id="441vB8LLmEE" role="3cqZAp">
          <node concept="37vLTI" id="441vB8LLmEF" role="3clFbG">
            <node concept="2ShNRf" id="441vB8LLmEG" role="37vLTx">
              <node concept="3zrR0B" id="441vB8LLmEH" role="2ShVmc">
                <node concept="3Tqbb2" id="441vB8LLmEI" role="3zrR0E">
                  <ref role="ehGHo" to="tpee:gFTm6Wc" resolve="PrivateVisibility" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="441vB8LLmEJ" role="37vLTJ">
              <node concept="1PxgMI" id="441vB8LLmEK" role="2Oq$k0">
                <property role="1BlNFB" value="true" />
                <node concept="chp4Y" id="441vB8LLmEL" role="3oSUPX">
                  <ref role="cht4Q" to="tp4f:hyXrIf3" resolve="DefaultClassifierMethodDeclaration" />
                </node>
                <node concept="Q6c8r" id="441vB8LLmEM" role="1m5AlR" />
              </node>
              <node concept="3TrEf2" id="441vB8LLmEN" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:h9B3oxE" resolve="visibility" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="QznSV" id="441vB8LLnjM" role="QzAvj">
      <node concept="3clFbS" id="441vB8LLnjN" role="2VODD2">
        <node concept="3clFbF" id="441vB8LLnqc" role="3cqZAp">
          <node concept="Xl_RD" id="441vB8LLnqb" role="3clFbG">
            <property role="Xl_RC" value="Make Method Private" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="18kY7G" id="441vB8LNFes">
    <property role="TrG5h" value="check_DefaultClassifierFieldDeclarationVisibility" />
    <node concept="3clFbS" id="441vB8LNFet" role="18ibNy">
      <node concept="3cpWs8" id="441vB8LNFeu" role="3cqZAp">
        <node concept="3cpWsn" id="441vB8LNFev" role="3cpWs9">
          <property role="TrG5h" value="parent" />
          <node concept="3Tqbb2" id="441vB8LNFew" role="1tU5fm">
            <ref role="ehGHo" to="tp4f:hyWqMFP" resolve="IClassifier" />
          </node>
          <node concept="1PxgMI" id="441vB8LNFex" role="33vP2m">
            <property role="1BlNFB" value="true" />
            <node concept="chp4Y" id="441vB8LNFey" role="3oSUPX">
              <ref role="cht4Q" to="tp4f:hyWqMFP" resolve="IClassifier" />
            </node>
            <node concept="2OqwBi" id="441vB8LNFez" role="1m5AlR">
              <node concept="1YBJjd" id="441vB8LNFe$" role="2Oq$k0">
                <ref role="1YBMHb" node="441vB8LNFfe" resolve="member" />
              </node>
              <node concept="1mfA1w" id="441vB8LNFe_" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="441vB8LNFeA" role="3cqZAp">
        <node concept="3clFbS" id="441vB8LNFeB" role="3clFbx">
          <node concept="2MkqsV" id="441vB8LNFeI" role="3cqZAp">
            <node concept="3Cnw8n" id="441vB8LNFeJ" role="1urrFz">
              <ref role="QpYPw" node="441vB8LLiRg" resolve="MakeDefaultClassifierFieldDeclarationPrivate" />
            </node>
            <node concept="Xl_RD" id="441vB8LNFeK" role="2MkJ7o">
              <property role="Xl_RC" value="Private visibility required" />
            </node>
            <node concept="1YBJjd" id="441vB8LNFeL" role="1urrMF">
              <ref role="1YBMHb" node="441vB8LNFfe" resolve="member" />
            </node>
          </node>
        </node>
        <node concept="1Wc70l" id="441vB8LNFf1" role="3clFbw">
          <node concept="2OqwBi" id="441vB8LNFf2" role="3uHU7B">
            <node concept="1PxgMI" id="441vB8LNFf3" role="2Oq$k0">
              <property role="1BlNFB" value="true" />
              <node concept="chp4Y" id="441vB8LNFf4" role="3oSUPX">
                <ref role="cht4Q" to="tp4f:hyWqMFP" resolve="IClassifier" />
              </node>
              <node concept="37vLTw" id="441vB8LNFf5" role="1m5AlR">
                <ref role="3cqZAo" node="441vB8LNFev" resolve="parent" />
              </node>
            </node>
            <node concept="3zqWPK" id="70OdufORcgl" role="2OqNvi">
              <ref role="37wK5l" to="tp4h:441vB8LNFML" resolve="requiresAllFieldMembersPrivate" />
            </node>
          </node>
          <node concept="3fqX7Q" id="441vB8LNFf7" role="3uHU7w">
            <node concept="2OqwBi" id="441vB8LNFf8" role="3fr31v">
              <node concept="2OqwBi" id="441vB8LNFf9" role="2Oq$k0">
                <node concept="1YBJjd" id="441vB8LNFfa" role="2Oq$k0">
                  <ref role="1YBMHb" node="441vB8LNFfe" resolve="member" />
                </node>
                <node concept="3zqWPK" id="70OdufORcgn" role="2OqNvi">
                  <ref role="37wK5l" to="tp4h:hEwIBC5" resolve="getVisiblity" />
                </node>
              </node>
              <node concept="1mIQ4w" id="441vB8LNFfc" role="2OqNvi">
                <node concept="chp4Y" id="441vB8LNFfd" role="cj9EA">
                  <ref role="cht4Q" to="tpee:gFTm6Wc" resolve="PrivateVisibility" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="441vB8LNFfe" role="1YuTPh">
      <property role="TrG5h" value="member" />
      <ref role="1YaFvo" to="tp4f:hEBZ0aj" resolve="DefaultClassifierFieldDeclaration" />
    </node>
  </node>
  <node concept="18kY7G" id="6dW6fBEHyMc">
    <property role="TrG5h" value="check_DefaultClassifierFieldNeverUsed" />
    <property role="3GE5qa" value="Fields" />
    <node concept="3clFbS" id="6dW6fBEHyMd" role="18ibNy">
      <node concept="3clFbJ" id="6dW6fBEHz6q" role="3cqZAp">
        <node concept="3clFbS" id="6dW6fBEHz6s" role="3clFbx">
          <node concept="3cpWs8" id="6UtDUq0tqXo" role="3cqZAp">
            <node concept="3cpWsn" id="6UtDUq0tqXp" role="3cpWs9">
              <property role="TrG5h" value="memberOperations" />
              <node concept="2I9FWS" id="6UtDUq0tqXq" role="1tU5fm">
                <ref role="2I9WkF" to="tp4f:hyWEnem" resolve="IMemberOperation" />
              </node>
              <node concept="3K4zz7" id="6SFvP$mGx1i" role="33vP2m">
                <node concept="2OqwBi" id="6SFvP$mGy_H" role="3K4Cdx">
                  <node concept="2OqwBi" id="6SFvP$mGtxy" role="2Oq$k0">
                    <node concept="1YBJjd" id="6SFvP$mGsgt" role="2Oq$k0">
                      <ref role="1YBMHb" node="6dW6fBEHyMf" resolve="field" />
                    </node>
                    <node concept="3TrEf2" id="6SFvP$mGvt6" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:h9B3oxE" resolve="visibility" />
                    </node>
                  </node>
                  <node concept="3x8VRR" id="6SFvP$mGzOo" role="2OqNvi" />
                </node>
                <node concept="2OqwBi" id="6UtDUq0tqXr" role="3K4E3e">
                  <node concept="2OqwBi" id="6UtDUq0tqXs" role="2Oq$k0">
                    <node concept="1YBJjd" id="6UtDUq0tqXt" role="2Oq$k0">
                      <ref role="1YBMHb" node="6dW6fBEHyMf" resolve="field" />
                    </node>
                    <node concept="1mfA1w" id="6UtDUq0tqXu" role="2OqNvi" />
                  </node>
                  <node concept="2Rf3mk" id="6UtDUq0tqXv" role="2OqNvi">
                    <node concept="1xMEDy" id="6UtDUq0tqXw" role="1xVPHs">
                      <node concept="chp4Y" id="6UtDUq0tqXx" role="ri$Ld">
                        <ref role="cht4Q" to="tp4f:hyWEnem" resolve="IMemberOperation" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="6SFvP$mG$Nv" role="3K4GZi">
                  <node concept="2OqwBi" id="6SFvP$mG$Nw" role="2Oq$k0">
                    <node concept="1YBJjd" id="6SFvP$mG$Nx" role="2Oq$k0">
                      <ref role="1YBMHb" node="6dW6fBEHyMf" resolve="field" />
                    </node>
                    <node concept="I4A8Y" id="6SFvP$mGAgQ" role="2OqNvi" />
                  </node>
                  <node concept="2SmgA7" id="6SFvP$mGBsW" role="2OqNvi">
                    <node concept="chp4Y" id="6SFvP$mGC$f" role="1dBWTz">
                      <ref role="cht4Q" to="tp4f:hyWEnem" resolve="IMemberOperation" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="6dW6fBEHDcP" role="3cqZAp">
            <node concept="1PaTwC" id="6dW6fBEHDcQ" role="1aUNEU">
              <node concept="3oM_SD" id="6dW6fBEHDcR" role="1PaTwD">
                <property role="3oM_SC" value="DefaultClassifierFieldDeclaration" />
              </node>
              <node concept="3oM_SD" id="6dW6fBEHDq3" role="1PaTwD">
                <property role="3oM_SC" value="is" />
              </node>
              <node concept="3oM_SD" id="6dW6fBEHDq5" role="1PaTwD">
                <property role="3oM_SC" value="FieldDeclaration" />
              </node>
              <node concept="3oM_SD" id="6dW6fBEHDu2" role="1PaTwD">
                <property role="3oM_SC" value="+" />
              </node>
              <node concept="3oM_SD" id="6dW6fBEHDu3" role="1PaTwD">
                <property role="3oM_SC" value="IMember" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="6UtDUq0tqZQ" role="3cqZAp">
            <node concept="3cpWsn" id="6UtDUq0tqZR" role="3cpWs9">
              <property role="TrG5h" value="references" />
              <node concept="A3Dl8" id="6UtDUq0tqZS" role="1tU5fm">
                <node concept="3Tqbb2" id="6UtDUq0tqZT" role="A3Ik2">
                  <ref role="ehGHo" to="tp4f:hyWEnem" resolve="IMemberOperation" />
                </node>
              </node>
              <node concept="2OqwBi" id="6UtDUq0tqZU" role="33vP2m">
                <node concept="37vLTw" id="3GM_nagTAcd" role="2Oq$k0">
                  <ref role="3cqZAo" node="6UtDUq0tqXp" resolve="memberOperations" />
                </node>
                <node concept="3zZkjj" id="6UtDUq0tqZW" role="2OqNvi">
                  <node concept="1bVj0M" id="6UtDUq0tqZX" role="23t8la">
                    <node concept="3clFbS" id="6UtDUq0tqZY" role="1bW5cS">
                      <node concept="3clFbF" id="6UtDUq0tqZZ" role="3cqZAp">
                        <node concept="3clFbC" id="6UtDUq0tr00" role="3clFbG">
                          <node concept="1YBJjd" id="6dW6fBEHErA" role="3uHU7w">
                            <ref role="1YBMHb" node="6dW6fBEHyMf" resolve="field" />
                          </node>
                          <node concept="2OqwBi" id="6UtDUq0tr01" role="3uHU7B">
                            <node concept="37vLTw" id="2BHiRxgll9n" role="2Oq$k0">
                              <ref role="3cqZAo" node="5W7E4fV0VNt" resolve="it" />
                            </node>
                            <node concept="3TrEf2" id="6UtDUq0tr03" role="2OqNvi">
                              <ref role="3Tt5mk" to="tp4f:hyWH_vG" resolve="member" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0VNt" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="5W7E4fV0VNu" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6$QDgVJ44zb" role="3cqZAp">
            <node concept="2YIFZM" id="6$QDgVJ44zd" role="3clFbG">
              <ref role="37wK5l" to="tpeh:6$QDgVJ44xu" resolve="checkField" />
              <ref role="1Pybhc" to="tpeh:2FeVmOilmhN" resolve="VariableReferenceUtil" />
              <node concept="1YBJjd" id="6$QDgVJ44ze" role="37wK5m">
                <ref role="1YBMHb" node="6dW6fBEHyMf" resolve="field" />
              </node>
              <node concept="37vLTw" id="3GM_nagTyZA" role="37wK5m">
                <ref role="3cqZAo" node="6UtDUq0tqZR" resolve="references" />
              </node>
            </node>
          </node>
        </node>
        <node concept="22lmx$" id="6SFvP$mGpjf" role="3clFbw">
          <node concept="2OqwBi" id="i2vO026" role="3uHU7w">
            <node concept="2OqwBi" id="i2vNTfA" role="2Oq$k0">
              <node concept="1YBJjd" id="i2vNSZX" role="2Oq$k0">
                <ref role="1YBMHb" node="6dW6fBEHyMf" resolve="field" />
              </node>
              <node concept="3TrEf2" id="i2vNYV8" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:h9B3oxE" resolve="visibility" />
              </node>
            </node>
            <node concept="1mIQ4w" id="i2vO0qz" role="2OqNvi">
              <node concept="chp4Y" id="i2vO1QW" role="cj9EA">
                <ref role="cht4Q" to="tpee:gFTm6Wc" resolve="PrivateVisibility" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6SFvP$mGqfm" role="3uHU7B">
            <node concept="2OqwBi" id="6SFvP$mGqfn" role="2Oq$k0">
              <node concept="1YBJjd" id="6SFvP$mGqfo" role="2Oq$k0">
                <ref role="1YBMHb" node="6dW6fBEHyMf" resolve="field" />
              </node>
              <node concept="3TrEf2" id="6SFvP$mGqfp" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:h9B3oxE" resolve="visibility" />
              </node>
            </node>
            <node concept="3w_OXm" id="6SFvP$mGqfq" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="6dW6fBEHyMf" role="1YuTPh">
      <property role="TrG5h" value="field" />
      <ref role="1YaFvo" to="tp4f:hEBZ0aj" resolve="DefaultClassifierFieldDeclaration" />
    </node>
    <node concept="dlsrG" id="6dW6fBEHBdk" role="dp_RE">
      <ref role="dlsrH" to="tpeh:i2vNA7d" resolve="check_FieldIsNeverUsedOrAssigned" />
    </node>
  </node>
</model>

