<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:f8814f89-9801-40d6-822f-e0e0a3a2c53d(jetbrains.mps.build.mps.tests.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <devkit ref="00000000-0000-4000-0000-1de82b3a4936(jetbrains.mps.devkit.aspect.typesystem)" />
  </languages>
  <imports>
    <import index="o3n2" ref="r:26eadcf0-f275-4e90-be37-e4432772a74d(jetbrains.mps.build.util)" />
    <import index="5tjl" ref="r:5315d75f-2eea-4bf2-899f-f3d94810cea5(jetbrains.mps.build.mps.tests.structure)" />
    <import index="vbkb" ref="r:08f2b659-8469-4592-93bf-a6edb46ec86d(jetbrains.mps.build.behavior)" />
    <import index="3ior" ref="r:e9081cad-d8c3-45f2-b4ad-1dabd5ff82af(jetbrains.mps.build.structure)" />
    <import index="kdzh" ref="r:0353b795-df17-4050-9687-ee47eeb7094f(jetbrains.mps.build.mps.structure)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="7f1d" ref="r:7bb3f1f1-7557-4f02-8802-5f9a48253a88(jetbrains.mps.build.mps.tests.behavior)" />
    <import index="2txq" ref="r:2c8fa2a8-11a0-4729-bd56-47f702d30278(jetbrains.mps.build.mps.behavior)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="3235159848334022093" name="jetbrains.mps.lang.behavior.structure.Node_ConceptMethodCall" flags="nn" index="3zqWPK" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
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
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
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
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
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
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
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
      <concept id="8182547171709752110" name="jetbrains.mps.lang.quotation.structure.NodeBuilderExpression" flags="nn" index="36biLy">
        <child id="8182547171709752112" name="expression" index="36biLW" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1207055528241" name="jetbrains.mps.lang.typesystem.structure.WarningStatement" flags="nn" index="a7r0C">
        <child id="1207055552304" name="warningText" index="a7wSD" />
      </concept>
      <concept id="1175517767210" name="jetbrains.mps.lang.typesystem.structure.ReportErrorStatement" flags="nn" index="2MkqsV">
        <child id="1175517851849" name="errorString" index="2MkJ7o" />
      </concept>
      <concept id="1216383170661" name="jetbrains.mps.lang.typesystem.structure.TypesystemQuickFix" flags="ng" index="Q5z_Y">
        <child id="1216383424566" name="executeBlock" index="Q6x$H" />
        <child id="1216383476350" name="quickFixArgument" index="Q6Id_" />
        <child id="1216391046856" name="descriptionBlock" index="QzAvj" />
      </concept>
      <concept id="1216383287005" name="jetbrains.mps.lang.typesystem.structure.QuickFixExecuteBlock" flags="in" index="Q5ZZ6" />
      <concept id="1216383482742" name="jetbrains.mps.lang.typesystem.structure.QuickFixArgument" flags="ng" index="Q6JDH">
        <child id="1216383511839" name="argumentType" index="Q6QK4" />
      </concept>
      <concept id="1216390348809" name="jetbrains.mps.lang.typesystem.structure.QuickFixArgumentReference" flags="nn" index="QwW4i">
        <reference id="1216390348810" name="quickFixArgument" index="QwW4h" />
      </concept>
      <concept id="1216390987552" name="jetbrains.mps.lang.typesystem.structure.QuickFixDescriptionBlock" flags="in" index="QznSV" />
      <concept id="1195213580585" name="jetbrains.mps.lang.typesystem.structure.AbstractCheckingRule" flags="ig" index="18hYwZ">
        <child id="1195213635060" name="body" index="18ibNy" />
      </concept>
      <concept id="1195214364922" name="jetbrains.mps.lang.typesystem.structure.NonTypesystemRule" flags="ig" index="18kY7G" />
      <concept id="3937244445246642777" name="jetbrains.mps.lang.typesystem.structure.AbstractReportStatement" flags="ng" index="1urrMJ">
        <child id="3937244445246643221" name="helginsIntention" index="1urrFz" />
        <child id="3937244445246642781" name="nodeToReport" index="1urrMF" />
      </concept>
      <concept id="1210784285454" name="jetbrains.mps.lang.typesystem.structure.TypesystemIntention" flags="ng" index="3Cnw8n">
        <reference id="1216388525179" name="quickFix" index="QpYPw" />
        <child id="1210784493590" name="actualArgument" index="3Coj4f" />
      </concept>
      <concept id="1210784384552" name="jetbrains.mps.lang.typesystem.structure.TypesystemIntentionArgument" flags="ng" index="3CnSsL">
        <reference id="1216386999476" name="quickFixArgument" index="QkamJ" />
        <child id="1210784642750" name="value" index="3CoRuB" />
      </concept>
      <concept id="1174642788531" name="jetbrains.mps.lang.typesystem.structure.ConceptReference" flags="ig" index="1YaCAy">
        <reference id="1174642800329" name="concept" index="1YaFvo" />
      </concept>
      <concept id="1174648085619" name="jetbrains.mps.lang.typesystem.structure.AbstractRule" flags="ng" index="1YuPPy">
        <child id="1174648101952" name="applicableNode" index="1YuTPh" />
      </concept>
      <concept id="1174650418652" name="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" flags="nn" index="1YBJjd">
        <reference id="1174650432090" name="applicableNode" index="1YBMHb" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="4693937538533521280" name="jetbrains.mps.lang.smodel.structure.OfConceptOperation" flags="ng" index="v3k3i">
        <child id="4693937538533538124" name="requestedConcept" index="v3oSu" />
      </concept>
      <concept id="1966870290088668512" name="jetbrains.mps.lang.smodel.structure.Enum_MemberLiteral" flags="ng" index="2ViDtV">
        <reference id="1966870290088668516" name="memberDeclaration" index="2ViDtZ" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
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
      <concept id="5779574625830813396" name="jetbrains.mps.lang.smodel.structure.EnumerationIdRefExpression" flags="ng" index="1XH99k">
        <reference id="5779574625830813397" name="enumDeclaration" index="1XH99l" />
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
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
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
      <concept id="1227022179634" name="jetbrains.mps.baseLanguage.collections.structure.AddLastElementOperation" flags="nn" index="2Ke9KJ" />
    </language>
  </registry>
  <node concept="18kY7G" id="5I1s5NvHqoQ">
    <property role="TrG5h" value="check_BuildMpsLayout_TestModules_haltonfailure_option" />
    <property role="3GE5qa" value="Project.Testing" />
    <node concept="3clFbS" id="5I1s5NvHqoR" role="18ibNy">
      <node concept="3clFbJ" id="5I1s5NvHqq5" role="3cqZAp">
        <node concept="3clFbS" id="5I1s5NvHqq6" role="3clFbx">
          <node concept="2MkqsV" id="51DD0tdK_q3" role="3cqZAp">
            <node concept="Xl_RD" id="51DD0tdK_q4" role="2MkJ7o">
              <property role="Xl_RC" value="Inappropriate value for 'haltonfailure' property" />
            </node>
            <node concept="2OqwBi" id="51DD0tdK_q5" role="1urrMF">
              <node concept="1YBJjd" id="51DD0tdK_q6" role="2Oq$k0">
                <ref role="1YBMHb" node="5I1s5NvHqoT" resolve="options" />
              </node>
              <node concept="3TrEf2" id="51DD0tdK_q7" role="2OqNvi">
                <ref role="3Tt5mk" to="5tjl:5I1s5NvGMfd" resolve="haltonfailure" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1Wc70l" id="51DD0tdKRm8" role="3clFbw">
          <node concept="2OqwBi" id="5I1s5NvHqqE" role="3uHU7B">
            <node concept="2OqwBi" id="5I1s5NvHqqF" role="2Oq$k0">
              <node concept="1YBJjd" id="5I1s5NvHq__" role="2Oq$k0">
                <ref role="1YBMHb" node="5I1s5NvHqoT" resolve="options" />
              </node>
              <node concept="3TrEf2" id="5I1s5NvHqM7" role="2OqNvi">
                <ref role="3Tt5mk" to="5tjl:5I1s5NvGMfd" resolve="haltonfailure" />
              </node>
            </node>
            <node concept="3x8VRR" id="5I1s5NvHqqI" role="2OqNvi" />
          </node>
          <node concept="3fqX7Q" id="51DD0tdK_mm" role="3uHU7w">
            <node concept="2OqwBi" id="51DD0tdK_mo" role="3fr31v">
              <node concept="1YBJjd" id="51DD0tdK_mp" role="2Oq$k0">
                <ref role="1YBMHb" node="5I1s5NvHqoT" resolve="options" />
              </node>
              <node concept="3zqWPK" id="70OdufORfve" role="2OqNvi">
                <ref role="37wK5l" to="7f1d:51DD0tdKxuK" resolve="isBooleanOptionValueOk" />
                <node concept="2OqwBi" id="70OdufORfvg" role="37wK5m">
                  <node concept="2OqwBi" id="70OdufORfvh" role="2Oq$k0">
                    <node concept="1YBJjd" id="70OdufORfvi" role="2Oq$k0">
                      <ref role="1YBMHb" node="5I1s5NvHqoT" resolve="options" />
                    </node>
                    <node concept="3TrEf2" id="70OdufORfvj" role="2OqNvi">
                      <ref role="3Tt5mk" to="5tjl:5I1s5NvGMfd" resolve="haltonfailure" />
                    </node>
                  </node>
                  <node concept="3zqWPK" id="47jP3PjRle8" role="2OqNvi">
                    <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                    <node concept="10Nm6u" id="47jP3PjRlea" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="5I1s5NvHqoT" role="1YuTPh">
      <property role="TrG5h" value="options" />
      <ref role="1YaFvo" to="5tjl:5I1s5NvGLjw" resolve="BuildMps_TestModules_Options" />
    </node>
  </node>
  <node concept="18kY7G" id="2tkRx60x3rT">
    <property role="TrG5h" value="check_BuildMpsLayout_TestModuleHasTestSources" />
    <property role="3GE5qa" value="Project.Testing" />
    <node concept="3clFbS" id="2tkRx60x3rU" role="18ibNy">
      <node concept="3cpWs8" id="2tkRx60B6DJ" role="3cqZAp">
        <node concept="3cpWsn" id="2tkRx60B6DK" role="3cpWs9">
          <property role="TrG5h" value="solution" />
          <node concept="3Tqbb2" id="2tkRx60B6DE" role="1tU5fm">
            <ref role="ehGHo" to="kdzh:2L4pT56gD3R" resolve="BuildMps_Solution" />
          </node>
          <node concept="2OqwBi" id="FZyzKijjUA" role="33vP2m">
            <node concept="1YBJjd" id="FZyzKijjFi" role="2Oq$k0">
              <ref role="1YBMHb" node="2tkRx60x3rW" resolve="testmodule" />
            </node>
            <node concept="3TrEf2" id="FZyzKijkhx" role="2OqNvi">
              <ref role="3Tt5mk" to="5tjl:3X9rC2XzJdN" resolve="module" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="2tkRx60AmrD" role="3cqZAp">
        <node concept="3clFbS" id="2tkRx60AmrF" role="3clFbx">
          <node concept="a7r0C" id="5WcxkkLIcrU" role="3cqZAp">
            <node concept="Xl_RD" id="5WcxkkLIcrW" role="a7wSD">
              <property role="Xl_RC" value="The solution sources do not include tests" />
            </node>
            <node concept="1YBJjd" id="5WcxkkLIcrX" role="1urrMF">
              <ref role="1YBMHb" node="2tkRx60x3rW" resolve="testmodule" />
            </node>
            <node concept="3Cnw8n" id="5WcxkkLIcrY" role="1urrFz">
              <ref role="QpYPw" node="2tkRx60B0_r" resolve="addTestSources" />
              <node concept="3CnSsL" id="5WcxkkLIcrZ" role="3Coj4f">
                <ref role="QkamJ" node="2tkRx60B0BP" resolve="solution" />
                <node concept="37vLTw" id="5WcxkkLIcs0" role="3CoRuB">
                  <ref role="3cqZAo" node="2tkRx60B6DK" resolve="solution" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3fqX7Q" id="2tkRx60APT5" role="3clFbw">
          <node concept="2OqwBi" id="2tkRx60APT7" role="3fr31v">
            <node concept="37vLTw" id="2tkRx60B6E6" role="2Oq$k0">
              <ref role="3cqZAo" node="2tkRx60B6DK" resolve="solution" />
            </node>
            <node concept="3zqWPK" id="70OdufORfvp" role="2OqNvi">
              <ref role="37wK5l" to="2txq:6ogfLD6evrW" resolve="hasTestsSources" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="2tkRx60x3rW" role="1YuTPh">
      <property role="TrG5h" value="testmodule" />
      <ref role="1YaFvo" to="5tjl:3X9rC2XzJdM" resolve="BuildMps_TestModule" />
    </node>
  </node>
  <node concept="Q5z_Y" id="2tkRx60B0_r">
    <property role="3GE5qa" value="Project.Testing" />
    <property role="TrG5h" value="addTestSources" />
    <node concept="Q6JDH" id="2tkRx60B0BP" role="Q6Id_">
      <property role="TrG5h" value="solution" />
      <node concept="3Tqbb2" id="2tkRx60B0BV" role="Q6QK4">
        <ref role="ehGHo" to="kdzh:2L4pT56gD3R" resolve="BuildMps_Solution" />
      </node>
    </node>
    <node concept="Q5ZZ6" id="2tkRx60B0_s" role="Q6x$H">
      <node concept="3clFbS" id="2tkRx60B0_t" role="2VODD2">
        <node concept="3clFbF" id="2tkRx60B40Q" role="3cqZAp">
          <node concept="37vLTI" id="2tkRx60B5YS" role="3clFbG">
            <node concept="2OqwBi" id="3Ftr4R8EnRV" role="37vLTx">
              <node concept="1XH99k" id="3Ftr4R8EnRW" role="2Oq$k0">
                <ref role="1XH99l" to="kdzh:3Ftr4R6BFCz" resolve="BuildMps_ModuleSourcesKind" />
              </node>
              <node concept="2ViDtV" id="3Ftr4R8EnRX" role="2OqNvi">
                <ref role="2ViDtZ" to="kdzh:3Ftr4R6BFCA" resolve="sources_and_tests" />
              </node>
            </node>
            <node concept="2OqwBi" id="2tkRx60B4d8" role="37vLTJ">
              <node concept="QwW4i" id="2tkRx60B40P" role="2Oq$k0">
                <ref role="QwW4h" node="2tkRx60B0BP" resolve="solution" />
              </node>
              <node concept="3TrcHB" id="2tkRx60B58u" role="2OqNvi">
                <ref role="3TsBF5" to="kdzh:3Ftr4R6BH9R" resolve="sourcesKind" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="QznSV" id="2tkRx60B0Cm" role="QzAvj">
      <node concept="3clFbS" id="2tkRx60B0Cn" role="2VODD2">
        <node concept="3clFbF" id="2tkRx60B0KY" role="3cqZAp">
          <node concept="3cpWs3" id="2tkRx60B1Zj" role="3clFbG">
            <node concept="2OqwBi" id="2tkRx60B2Uv" role="3uHU7w">
              <node concept="QwW4i" id="2tkRx60B28a" role="2Oq$k0">
                <ref role="QwW4h" node="2tkRx60B0BP" resolve="solution" />
              </node>
              <node concept="3TrcHB" id="2tkRx60B3sq" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="Xl_RD" id="2tkRx60B0KX" role="3uHU7B">
              <property role="Xl_RC" value="Add test sources to " />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="Q5z_Y" id="2tkRx60BdL1">
    <property role="3GE5qa" value="Project.Testing" />
    <property role="TrG5h" value="includeIntoLayout" />
    <node concept="Q6JDH" id="2tkRx60BdLm" role="Q6Id_">
      <property role="TrG5h" value="project" />
      <node concept="3Tqbb2" id="2tkRx60BdLs" role="Q6QK4">
        <ref role="ehGHo" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
      </node>
    </node>
    <node concept="Q6JDH" id="2tkRx60BfMg" role="Q6Id_">
      <property role="TrG5h" value="module" />
      <node concept="3Tqbb2" id="2tkRx60BgaB" role="Q6QK4">
        <ref role="ehGHo" to="kdzh:hS0KzPONfF" resolve="BuildMps_AbstractModule" />
      </node>
    </node>
    <node concept="Q5ZZ6" id="2tkRx60BdL2" role="Q6x$H">
      <node concept="3clFbS" id="2tkRx60BdL3" role="2VODD2">
        <node concept="3clFbF" id="2tkRx60BkSi" role="3cqZAp">
          <node concept="2OqwBi" id="2tkRx60Bqa$" role="3clFbG">
            <node concept="2OqwBi" id="2tkRx60BnjZ" role="2Oq$k0">
              <node concept="2OqwBi" id="2tkRx60Bl0L" role="2Oq$k0">
                <node concept="QwW4i" id="2tkRx60BkSh" role="2Oq$k0">
                  <ref role="QwW4h" node="2tkRx60BdLm" resolve="project" />
                </node>
                <node concept="3TrEf2" id="2tkRx60Blbi" role="2OqNvi">
                  <ref role="3Tt5mk" to="3ior:4RPz6WoY4Cs" resolve="layout" />
                </node>
              </node>
              <node concept="3Tsc0h" id="2tkRx60Bo6Z" role="2OqNvi">
                <ref role="3TtcxE" to="3ior:6qcrfIJF4Me" resolve="children" />
              </node>
            </node>
            <node concept="2Ke9KJ" id="2tkRx60Bxgb" role="2OqNvi">
              <node concept="2pJPEk" id="2tkRx60Bxgd" role="25WWJ7">
                <node concept="2pJPED" id="2tkRx60Bxge" role="2pJPEn">
                  <ref role="2pJxaS" to="kdzh:16hzwWwASfB" resolve="BuildMpsLayout_ModuleJars" />
                  <node concept="2pIpSj" id="2tkRx60Bxgf" role="2pJxcM">
                    <ref role="2pIpSl" to="kdzh:16hzwWwASfD" resolve="module" />
                    <node concept="36biLy" id="2tkRx60Bxgg" role="28nt2d">
                      <node concept="QwW4i" id="2tkRx60Bxgh" role="36biLW">
                        <ref role="QwW4h" node="2tkRx60BfMg" resolve="module" />
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
    <node concept="QznSV" id="2tkRx60BdL_" role="QzAvj">
      <node concept="3clFbS" id="2tkRx60BdLA" role="2VODD2">
        <node concept="3clFbF" id="2tkRx60BdUd" role="3cqZAp">
          <node concept="3cpWs3" id="2tkRx60BiFn" role="3clFbG">
            <node concept="Xl_RD" id="2tkRx60BiVk" role="3uHU7w">
              <property role="Xl_RC" value=" to the layout" />
            </node>
            <node concept="3cpWs3" id="2tkRx60BfCY" role="3uHU7B">
              <node concept="Xl_RD" id="2tkRx60BdUc" role="3uHU7B">
                <property role="Xl_RC" value="Add " />
              </node>
              <node concept="2OqwBi" id="2tkRx60BgyY" role="3uHU7w">
                <node concept="QwW4i" id="2tkRx60BgaR" role="2Oq$k0">
                  <ref role="QwW4h" node="2tkRx60BfMg" resolve="module" />
                </node>
                <node concept="3TrcHB" id="2tkRx60Bh4W" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="18kY7G" id="2R_4228R1AY">
    <property role="TrG5h" value="check_BuildMpsLayout_TestModules" />
    <property role="3GE5qa" value="Project.Testing" />
    <node concept="3clFbS" id="2R_4228R1AZ" role="18ibNy">
      <node concept="3cpWs8" id="2tkRx60x2UC" role="3cqZAp">
        <node concept="3cpWsn" id="2tkRx60x2UD" role="3cpWs9">
          <property role="TrG5h" value="project" />
          <node concept="3Tqbb2" id="2tkRx60x2UB" role="1tU5fm">
            <ref role="ehGHo" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
          </node>
          <node concept="2OqwBi" id="2tkRx60x2UE" role="33vP2m">
            <node concept="1YBJjd" id="2R_4228S6kE" role="2Oq$k0">
              <ref role="1YBMHb" node="2R_4228R1BE" resolve="testModules" />
            </node>
            <node concept="2Xjw5R" id="2tkRx60x2UG" role="2OqNvi">
              <node concept="1xMEDy" id="2tkRx60x2UH" role="1xVPHs">
                <node concept="chp4Y" id="2tkRx60x2UI" role="ri$Ld">
                  <ref role="cht4Q" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2AHcQZ" id="2R_4228S6f_" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
      </node>
      <node concept="3cpWs8" id="2R_4228SccX" role="3cqZAp">
        <node concept="3cpWsn" id="2R_4228SccY" role="3cpWs9">
          <property role="TrG5h" value="artifacts" />
          <node concept="3uibUv" id="2R_4228SccO" role="1tU5fm">
            <ref role="3uigEE" to="o3n2:450ejGzgHe7" resolve="VisibleArtifacts" />
          </node>
          <node concept="2ShNRf" id="2R_4228SccZ" role="33vP2m">
            <node concept="1pGfFk" id="2R_4228Scd0" role="2ShVmc">
              <ref role="37wK5l" to="o3n2:450ejGzgHe9" resolve="VisibleArtifacts" />
              <node concept="37vLTw" id="2R_4228Scd1" role="37wK5m">
                <ref role="3cqZAo" node="2tkRx60x2UD" resolve="project" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbF" id="2R_4228S4NQ" role="3cqZAp">
        <node concept="2OqwBi" id="2R_4228Sct1" role="3clFbG">
          <node concept="37vLTw" id="2R_4228Scd2" role="2Oq$k0">
            <ref role="3cqZAo" node="2R_4228SccY" resolve="artifacts" />
          </node>
          <node concept="liA8E" id="3vNUe1yBnxn" role="2OqNvi">
            <ref role="37wK5l" to="o3n2:2whOjLMobIM" resolve="collectProjectArtifacts" />
          </node>
        </node>
      </node>
      <node concept="2Gpval" id="2R_4228SjUc" role="3cqZAp">
        <node concept="2GrKxI" id="2R_4228SjUe" role="2Gsz3X">
          <property role="TrG5h" value="testModuleContent" />
        </node>
        <node concept="2OqwBi" id="2R_4228Sk90" role="2GsD0m">
          <node concept="1YBJjd" id="2R_4228SjWX" role="2Oq$k0">
            <ref role="1YBMHb" node="2R_4228R1BE" resolve="testModules" />
          </node>
          <node concept="3Tsc0h" id="2R_4228UDcZ" role="2OqNvi">
            <ref role="3TtcxE" to="5tjl:3X9rC2XzJdK" resolve="modules" />
          </node>
        </node>
        <node concept="3clFbS" id="2R_4228SjUi" role="2LFqv$">
          <node concept="2Gpval" id="2R_4228VadJ" role="3cqZAp">
            <node concept="2GrKxI" id="2R_4228VadL" role="2Gsz3X">
              <property role="TrG5h" value="module" />
            </node>
            <node concept="2OqwBi" id="2R_4228WIGs" role="2GsD0m">
              <node concept="2GrUjf" id="2R_4228WIzx" role="2Oq$k0">
                <ref role="2Gs0qQ" node="2R_4228SjUe" resolve="testModuleContent" />
              </node>
              <node concept="3zqWPK" id="70OdufORfvr" role="2OqNvi">
                <ref role="37wK5l" to="7f1d:3X9rC2XzJij" resolve="getModules" />
              </node>
            </node>
            <node concept="3clFbS" id="2R_4228VadP" role="2LFqv$">
              <node concept="3clFbJ" id="2R_4228SkDn" role="3cqZAp">
                <node concept="3clFbS" id="2R_4228SkDp" role="3clFbx">
                  <node concept="a7r0C" id="2tkRx60_4bv" role="3cqZAp">
                    <node concept="3cpWs3" id="2tkRx60_7XS" role="a7wSD">
                      <node concept="Xl_RD" id="2tkRx60_7XV" role="3uHU7w">
                        <property role="Xl_RC" value=" is not contained in the layout of the build script" />
                      </node>
                      <node concept="3cpWs3" id="2tkRx60_4Kx" role="3uHU7B">
                        <node concept="Xl_RD" id="2tkRx60_4bO" role="3uHU7B">
                          <property role="Xl_RC" value="The module " />
                        </node>
                        <node concept="2OqwBi" id="2tkRx60_6hB" role="3uHU7w">
                          <node concept="2GrUjf" id="2R_4228YoxX" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="2R_4228VadL" resolve="module" />
                          </node>
                          <node concept="3TrcHB" id="2tkRx60_6Ez" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2GrUjf" id="2R_4228Tl53" role="1urrMF">
                      <ref role="2Gs0qQ" node="2R_4228SjUe" resolve="testModuleContent" />
                    </node>
                    <node concept="3Cnw8n" id="2tkRx60BUUy" role="1urrFz">
                      <ref role="QpYPw" node="2tkRx60BdL1" resolve="includeIntoLayout" />
                      <node concept="3CnSsL" id="2tkRx60BVbj" role="3Coj4f">
                        <ref role="QkamJ" node="2tkRx60BdLm" resolve="project" />
                        <node concept="37vLTw" id="2tkRx60BVbw" role="3CoRuB">
                          <ref role="3cqZAo" node="2tkRx60x2UD" resolve="project" />
                        </node>
                      </node>
                      <node concept="3CnSsL" id="2tkRx60BVbz" role="3Coj4f">
                        <ref role="QkamJ" node="2tkRx60BfMg" resolve="module" />
                        <node concept="2GrUjf" id="2R_4228Yuo1" role="3CoRuB">
                          <ref role="2Gs0qQ" node="2R_4228VadL" resolve="module" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="2R_4228Slac" role="3clFbw">
                  <node concept="2OqwBi" id="2R_4228Sgel" role="2Oq$k0">
                    <node concept="37vLTw" id="2R_4228Sg7O" role="2Oq$k0">
                      <ref role="3cqZAo" node="2R_4228SccY" resolve="artifacts" />
                    </node>
                    <node concept="liA8E" id="2R_4228SjOG" role="2OqNvi">
                      <ref role="37wK5l" to="o3n2:6PrCok1LkPV" resolve="findArtifact" />
                      <node concept="2GrUjf" id="2R_4228Y5uw" role="37wK5m">
                        <ref role="2Gs0qQ" node="2R_4228VadL" resolve="module" />
                      </node>
                    </node>
                  </node>
                  <node concept="3w_OXm" id="2R_4228SSKI" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="2R_4228R1BE" role="1YuTPh">
      <property role="TrG5h" value="testModules" />
      <ref role="1YaFvo" to="5tjl:3X9rC2XzJdH" resolve="BuildAspect_MpsTestModules" />
    </node>
  </node>
  <node concept="18kY7G" id="7BTZ519LZAC">
    <property role="TrG5h" value="check_BuildMpsLayout_TestModuleGroupHasTestSources" />
    <property role="3GE5qa" value="Project.Testing" />
    <node concept="3clFbS" id="7BTZ519LZAD" role="18ibNy">
      <node concept="3cpWs8" id="7BTZ519M0Um" role="3cqZAp">
        <node concept="3cpWsn" id="7BTZ519M0Un" role="3cpWs9">
          <property role="TrG5h" value="modules" />
          <node concept="A3Dl8" id="7BTZ519M0U0" role="1tU5fm">
            <node concept="3Tqbb2" id="7BTZ519M0U3" role="A3Ik2">
              <ref role="ehGHo" to="kdzh:hS0KzPONfF" resolve="BuildMps_AbstractModule" />
            </node>
          </node>
          <node concept="2OqwBi" id="7BTZ519M0Uo" role="33vP2m">
            <node concept="1YBJjd" id="7BTZ519M0Up" role="2Oq$k0">
              <ref role="1YBMHb" node="7BTZ519LZAF" resolve="testGroup" />
            </node>
            <node concept="3zqWPK" id="70OdufORfvt" role="2OqNvi">
              <ref role="37wK5l" to="7f1d:3X9rC2XzJij" resolve="getModules" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2Gpval" id="7BTZ519M1os" role="3cqZAp">
        <node concept="2GrKxI" id="7BTZ519M1ou" role="2Gsz3X">
          <property role="TrG5h" value="solution" />
        </node>
        <node concept="2OqwBi" id="7BTZ519M21L" role="2GsD0m">
          <node concept="37vLTw" id="7BTZ519M1qb" role="2Oq$k0">
            <ref role="3cqZAo" node="7BTZ519M0Un" resolve="modules" />
          </node>
          <node concept="v3k3i" id="7BTZ519M29W" role="2OqNvi">
            <node concept="chp4Y" id="7BTZ519M2ap" role="v3oSu">
              <ref role="cht4Q" to="kdzh:2L4pT56gD3R" resolve="BuildMps_Solution" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="7BTZ519M1oy" role="2LFqv$">
          <node concept="3clFbJ" id="7BTZ519LZAP" role="3cqZAp">
            <node concept="3clFbS" id="7BTZ519LZAQ" role="3clFbx">
              <node concept="a7r0C" id="7BTZ519M2Bk" role="3cqZAp">
                <node concept="3cpWs3" id="7BTZ519M3v8" role="a7wSD">
                  <node concept="Xl_RD" id="7BTZ519M3y3" role="3uHU7w">
                    <property role="Xl_RC" value="' sources do not include tests" />
                  </node>
                  <node concept="3cpWs3" id="7BTZ519M315" role="3uHU7B">
                    <node concept="Xl_RD" id="7BTZ519M2Bm" role="3uHU7B">
                      <property role="Xl_RC" value="The solution '" />
                    </node>
                    <node concept="2OqwBi" id="7BTZ519M3i_" role="3uHU7w">
                      <node concept="2GrUjf" id="7BTZ519M33_" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="7BTZ519M1ou" resolve="solution" />
                      </node>
                      <node concept="3TrcHB" id="7BTZ519M3n4" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1YBJjd" id="7BTZ519M2Bn" role="1urrMF">
                  <ref role="1YBMHb" node="7BTZ519LZAF" resolve="testGroup" />
                </node>
                <node concept="3Cnw8n" id="7BTZ519M2Bo" role="1urrFz">
                  <ref role="QpYPw" node="2tkRx60B0_r" resolve="addTestSources" />
                  <node concept="3CnSsL" id="7BTZ519M2Bp" role="3Coj4f">
                    <ref role="QkamJ" node="2tkRx60B0BP" resolve="solution" />
                    <node concept="2GrUjf" id="7BTZ519M2H$" role="3CoRuB">
                      <ref role="2Gs0qQ" node="7BTZ519M1ou" resolve="solution" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="7BTZ519LZAX" role="3clFbw">
              <node concept="2OqwBi" id="7BTZ519LZAY" role="3fr31v">
                <node concept="2GrUjf" id="7BTZ519M1xR" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="7BTZ519M1ou" resolve="solution" />
                </node>
                <node concept="3zqWPK" id="70OdufORfvv" role="2OqNvi">
                  <ref role="37wK5l" to="2txq:6ogfLD6evrW" resolve="hasTestsSources" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="7BTZ519LZAF" role="1YuTPh">
      <property role="TrG5h" value="testGroup" />
      <ref role="1YaFvo" to="5tjl:3X9rC2XzJdF" resolve="BuildMps_TestModuleGroup" />
    </node>
  </node>
  <node concept="18kY7G" id="51DD0tdLLzq">
    <property role="TrG5h" value="check_BuildMpsLayout_TestModules_openTestReport_option" />
    <property role="3GE5qa" value="Project.Testing" />
    <node concept="3clFbS" id="51DD0tdLLzr" role="18ibNy">
      <node concept="3clFbJ" id="51DD0tdLLzs" role="3cqZAp">
        <node concept="3clFbS" id="51DD0tdLLzt" role="3clFbx">
          <node concept="2MkqsV" id="51DD0tdLLzu" role="3cqZAp">
            <node concept="Xl_RD" id="51DD0tdLLzv" role="2MkJ7o">
              <property role="Xl_RC" value="Inappropriate value for 'openTestReport' property" />
            </node>
            <node concept="2OqwBi" id="51DD0tdLLzw" role="1urrMF">
              <node concept="1YBJjd" id="51DD0tdLLzx" role="2Oq$k0">
                <ref role="1YBMHb" node="51DD0tdLLzN" resolve="options" />
              </node>
              <node concept="3TrEf2" id="51DD0tdLLzy" role="2OqNvi">
                <ref role="3Tt5mk" to="5tjl:51DD0tdLLzh" resolve="openTestReport" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1Wc70l" id="51DD0tdLLzz" role="3clFbw">
          <node concept="2OqwBi" id="51DD0tdLLz$" role="3uHU7B">
            <node concept="2OqwBi" id="51DD0tdLLz_" role="2Oq$k0">
              <node concept="1YBJjd" id="51DD0tdLLzA" role="2Oq$k0">
                <ref role="1YBMHb" node="51DD0tdLLzN" resolve="options" />
              </node>
              <node concept="3TrEf2" id="51DD0tdLLzB" role="2OqNvi">
                <ref role="3Tt5mk" to="5tjl:51DD0tdLLzh" resolve="openTestReport" />
              </node>
            </node>
            <node concept="3x8VRR" id="51DD0tdLLzC" role="2OqNvi" />
          </node>
          <node concept="3fqX7Q" id="51DD0tdLLzD" role="3uHU7w">
            <node concept="2OqwBi" id="51DD0tdLLzE" role="3fr31v">
              <node concept="1YBJjd" id="51DD0tdLLzF" role="2Oq$k0">
                <ref role="1YBMHb" node="51DD0tdLLzN" resolve="options" />
              </node>
              <node concept="3zqWPK" id="70OdufORfvx" role="2OqNvi">
                <ref role="37wK5l" to="7f1d:51DD0tdKxuK" resolve="isBooleanOptionValueOk" />
                <node concept="2OqwBi" id="70OdufORfvz" role="37wK5m">
                  <node concept="2OqwBi" id="70OdufORfv$" role="2Oq$k0">
                    <node concept="1YBJjd" id="70OdufORfv_" role="2Oq$k0">
                      <ref role="1YBMHb" node="51DD0tdLLzN" resolve="options" />
                    </node>
                    <node concept="3TrEf2" id="70OdufORfvA" role="2OqNvi">
                      <ref role="3Tt5mk" to="5tjl:51DD0tdLLzh" resolve="openTestReport" />
                    </node>
                  </node>
                  <node concept="3zqWPK" id="47jP3PjRleb" role="2OqNvi">
                    <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                    <node concept="10Nm6u" id="47jP3PjRled" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="51DD0tdLLzN" role="1YuTPh">
      <property role="TrG5h" value="options" />
      <ref role="1YaFvo" to="5tjl:5I1s5NvGLjw" resolve="BuildMps_TestModules_Options" />
    </node>
  </node>
</model>

