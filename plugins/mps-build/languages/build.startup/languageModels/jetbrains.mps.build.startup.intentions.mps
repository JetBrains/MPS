<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:32b77a59-6076-4ea4-979f-a2460bd5c1aa(jetbrains.mps.build.startup.intentions)">
  <persistence version="9" />
  <languages>
    <use id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions" version="1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers" version="0" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="ovkb" ref="r:0557cc4d-c1b6-4dcc-b443-b6bca6a7a6f6(jetbrains.mps.build.startup.util)" />
    <import index="s7om" ref="r:a930f08c-5447-4203-8f2e-507bb76fab12(jetbrains.mps.build.startup.structure)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
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
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
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
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions">
      <concept id="1192794744107" name="jetbrains.mps.lang.intentions.structure.IntentionDeclaration" flags="ig" index="2S6QgY" />
      <concept id="1192794782375" name="jetbrains.mps.lang.intentions.structure.DescriptionBlock" flags="in" index="2S6ZIM" />
      <concept id="1192795771125" name="jetbrains.mps.lang.intentions.structure.IsApplicableBlock" flags="in" index="2SaL7w" />
      <concept id="1192795911897" name="jetbrains.mps.lang.intentions.structure.ExecuteBlock" flags="in" index="2Sbjvc" />
      <concept id="1192796902958" name="jetbrains.mps.lang.intentions.structure.ConceptFunctionParameter_node" flags="nn" index="2Sf5sV" />
      <concept id="2522969319638091381" name="jetbrains.mps.lang.intentions.structure.BaseIntentionDeclaration" flags="ig" index="2ZfUlf">
        <property id="2522969319638091386" name="isAvailableInChildNodes" index="2ZfUl0" />
        <reference id="2522969319638198290" name="forConcept" index="2ZfgGC" />
        <child id="2522969319638198291" name="executeFunction" index="2ZfgGD" />
        <child id="2522969319638093995" name="isApplicableFunction" index="2ZfVeh" />
        <child id="2522969319638093993" name="descriptionFunction" index="2ZfVej" />
        <child id="1205851242421" name="methodDeclaration" index="32lrUH" />
      </concept>
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp" />
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ngI" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
      <concept id="1205769003971" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodDeclaration" flags="ng" index="2XrIbr" />
      <concept id="1205769149993" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodCallOperation" flags="nn" index="2XshWL">
        <child id="1205770614681" name="actualArgument" index="2XxRq1" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="4693937538533521280" name="jetbrains.mps.lang.smodel.structure.OfConceptOperation" flags="ng" index="v3k3i">
        <child id="4693937538533538124" name="requestedConcept" index="v3oSu" />
      </concept>
      <concept id="1144146199828" name="jetbrains.mps.lang.smodel.structure.Node_CopyOperation" flags="nn" index="1$rogu" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1156234966388" name="shortDescription" index="OYnhT" />
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
      <concept id="1176906603202" name="jetbrains.mps.baseLanguage.collections.structure.BinaryOperation" flags="nn" index="56pJg">
        <child id="1176906787974" name="rightExpression" index="576Qk" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
        <child id="1237731803878" name="copyFrom" index="I$8f6" />
      </concept>
      <concept id="1227022210526" name="jetbrains.mps.baseLanguage.collections.structure.ClearAllElementsOperation" flags="nn" index="2Kehj3" />
      <concept id="1205598340672" name="jetbrains.mps.baseLanguage.collections.structure.DisjunctOperation" flags="nn" index="2NgGto" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1240217271293" name="jetbrains.mps.baseLanguage.collections.structure.LinkedHashSetCreator" flags="nn" index="32HrFt" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="2S6QgY" id="3E3V7xV8bzc">
    <property role="TrG5h" value="ResetStartupScript" />
    <property role="2ZfUl0" value="true" />
    <ref role="2ZfgGC" to="s7om:3nFPImNgRk8" resolve="MpsStartupScript" />
    <node concept="2S6ZIM" id="1xE$2SyOlhX" role="2ZfVej">
      <node concept="3clFbS" id="1xE$2SyOlhZ" role="2VODD2">
        <node concept="3clFbF" id="1xE$2SyOli0" role="3cqZAp">
          <node concept="Xl_RD" id="1xE$2SyOli2" role="3clFbG">
            <property role="Xl_RC" value="Reset Classpath and VM Options to match the default settings for the current MPS version" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="1xE$2SyOli3" role="2ZfVeh">
      <node concept="3clFbS" id="1xE$2SyOli5" role="2VODD2">
        <node concept="3cpWs8" id="1xE$2SyOli6" role="3cqZAp">
          <node concept="3cpWsn" id="1xE$2SyOli9" role="3cpWs9">
            <property role="TrG5h" value="currentClassPath" />
            <property role="OYnhT" value="local variable" />
            <property role="2Lvdk3" value="currentClassPath" />
            <node concept="2OqwBi" id="1xE$2SyOlib" role="33vP2m">
              <node concept="2WthIp" id="1xE$2SyOlie" role="2Oq$k0" />
              <node concept="2XshWL" id="1xE$2SyOlif" role="2OqNvi">
                <ref role="2WH_rO" node="1xE$2SyOlo7" resolve="getClassPathSet" />
                <node concept="2Sf5sV" id="1xE$2SyOlig" role="2XxRq1" />
              </node>
            </node>
            <node concept="2hMVRd" id="1xE$2SyOlih" role="1tU5fm">
              <node concept="17QB3L" id="1xE$2SyOlij" role="2hN53Y" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1xE$2SyOlik" role="3cqZAp">
          <node concept="3cpWsn" id="1xE$2SyOlin" role="3cpWs9">
            <property role="TrG5h" value="defaultClassPath" />
            <property role="OYnhT" value="local variable" />
            <property role="2Lvdk3" value="defaultClassPath" />
            <node concept="2OqwBi" id="1xE$2SyOlip" role="33vP2m">
              <node concept="2WthIp" id="1xE$2SyOlis" role="2Oq$k0" />
              <node concept="2XshWL" id="1xE$2SyOlit" role="2OqNvi">
                <ref role="2WH_rO" node="1xE$2SyOlo7" resolve="getClassPathSet" />
                <node concept="2YIFZM" id="1xE$2SyOliu" role="2XxRq1">
                  <ref role="37wK5l" to="ovkb:3E3V7xVhWz5" resolve="getDefaultStartupScript" />
                  <ref role="1Pybhc" to="ovkb:3E3V7xVhWwO" resolve="DefaultStartupScript" />
                </node>
              </node>
            </node>
            <node concept="2hMVRd" id="1xE$2SyOliv" role="1tU5fm">
              <node concept="17QB3L" id="1xE$2SyOlix" role="2hN53Y" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1xE$2SyOliy" role="3cqZAp">
          <node concept="2OqwBi" id="1xE$2SyOli_" role="3clFbw">
            <node concept="2OqwBi" id="1xE$2SyOliC" role="2Oq$k0">
              <node concept="37vLTw" id="1xE$2SyOliF" role="2Oq$k0">
                <ref role="3cqZAo" node="1xE$2SyOli9" resolve="currentClassPath" />
              </node>
              <node concept="2NgGto" id="1xE$2SyOliG" role="2OqNvi">
                <node concept="37vLTw" id="1xE$2SyOliI" role="576Qk">
                  <ref role="3cqZAo" node="1xE$2SyOlin" resolve="defaultClassPath" />
                </node>
              </node>
            </node>
            <node concept="3GX2aA" id="1xE$2SyOliJ" role="2OqNvi" />
          </node>
          <node concept="3clFbS" id="1xE$2SyOliK" role="3clFbx">
            <node concept="3cpWs6" id="1xE$2SyOliL" role="3cqZAp">
              <node concept="3clFbT" id="1xE$2SyOliM" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1xE$2SyOliN" role="3cqZAp" />
        <node concept="3cpWs8" id="1xE$2SyOliO" role="3cqZAp">
          <node concept="3cpWsn" id="1xE$2SyOliR" role="3cpWs9">
            <property role="TrG5h" value="currentExtClassPath" />
            <property role="OYnhT" value="local variable" />
            <property role="2Lvdk3" value="currentExtClassPath" />
            <node concept="2OqwBi" id="1xE$2SyOliT" role="33vP2m">
              <node concept="2WthIp" id="1xE$2SyOliW" role="2Oq$k0" />
              <node concept="2XshWL" id="1xE$2SyOliX" role="2OqNvi">
                <ref role="2WH_rO" node="1xE$2SyOlpW" resolve="getExtClassPathSet" />
                <node concept="2Sf5sV" id="1xE$2SyOliY" role="2XxRq1" />
              </node>
            </node>
            <node concept="2hMVRd" id="1xE$2SyOliZ" role="1tU5fm">
              <node concept="17QB3L" id="1xE$2SyOlj1" role="2hN53Y" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1xE$2SyOlj2" role="3cqZAp">
          <node concept="3cpWsn" id="1xE$2SyOlj5" role="3cpWs9">
            <property role="TrG5h" value="defaultExtClassPath" />
            <property role="OYnhT" value="local variable" />
            <property role="2Lvdk3" value="defaultExtClassPath" />
            <node concept="2OqwBi" id="1xE$2SyOlj7" role="33vP2m">
              <node concept="2WthIp" id="1xE$2SyOlja" role="2Oq$k0" />
              <node concept="2XshWL" id="1xE$2SyOljb" role="2OqNvi">
                <ref role="2WH_rO" node="1xE$2SyOlpW" resolve="getExtClassPathSet" />
                <node concept="2YIFZM" id="1xE$2SyOljc" role="2XxRq1">
                  <ref role="37wK5l" to="ovkb:3E3V7xVhWz5" resolve="getDefaultStartupScript" />
                  <ref role="1Pybhc" to="ovkb:3E3V7xVhWwO" resolve="DefaultStartupScript" />
                </node>
              </node>
            </node>
            <node concept="2hMVRd" id="1xE$2SyOljd" role="1tU5fm">
              <node concept="17QB3L" id="1xE$2SyOljf" role="2hN53Y" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1xE$2SyOljg" role="3cqZAp">
          <node concept="2OqwBi" id="1xE$2SyOljj" role="3clFbw">
            <node concept="2OqwBi" id="1xE$2SyOljm" role="2Oq$k0">
              <node concept="37vLTw" id="1xE$2SyOljp" role="2Oq$k0">
                <ref role="3cqZAo" node="1xE$2SyOliR" resolve="currentExtClassPath" />
              </node>
              <node concept="2NgGto" id="1xE$2SyOljq" role="2OqNvi">
                <node concept="37vLTw" id="1xE$2SyOljs" role="576Qk">
                  <ref role="3cqZAo" node="1xE$2SyOlj5" resolve="defaultExtClassPath" />
                </node>
              </node>
            </node>
            <node concept="3GX2aA" id="1xE$2SyOljt" role="2OqNvi" />
          </node>
          <node concept="3clFbS" id="1xE$2SyOlju" role="3clFbx">
            <node concept="3cpWs6" id="1xE$2SyOljv" role="3cqZAp">
              <node concept="3clFbT" id="1xE$2SyOljw" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1xE$2SyOljx" role="3cqZAp" />
        <node concept="3cpWs8" id="1xE$2SyOljy" role="3cqZAp">
          <node concept="3cpWsn" id="1xE$2SyOlj_" role="3cpWs9">
            <property role="TrG5h" value="currentVMOptions" />
            <property role="OYnhT" value="local variable" />
            <property role="2Lvdk3" value="currentVMOptions" />
            <node concept="2OqwBi" id="1xE$2SyOljB" role="33vP2m">
              <node concept="2WthIp" id="1xE$2SyOljE" role="2Oq$k0" />
              <node concept="2XshWL" id="1xE$2SyOljF" role="2OqNvi">
                <ref role="2WH_rO" node="1xE$2SyOloM" resolve="getVMOptionsSet" />
                <node concept="2Sf5sV" id="1xE$2SyOljG" role="2XxRq1" />
              </node>
            </node>
            <node concept="2hMVRd" id="1xE$2SyOljH" role="1tU5fm">
              <node concept="17QB3L" id="1xE$2SyOljJ" role="2hN53Y" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1xE$2SyOljK" role="3cqZAp">
          <node concept="3cpWsn" id="1xE$2SyOljN" role="3cpWs9">
            <property role="TrG5h" value="defaultVMOptions" />
            <property role="OYnhT" value="local variable" />
            <property role="2Lvdk3" value="defaultVMOptions" />
            <node concept="2OqwBi" id="1xE$2SyOljP" role="33vP2m">
              <node concept="2WthIp" id="1xE$2SyOljS" role="2Oq$k0" />
              <node concept="2XshWL" id="1xE$2SyOljT" role="2OqNvi">
                <ref role="2WH_rO" node="1xE$2SyOloM" resolve="getVMOptionsSet" />
                <node concept="2YIFZM" id="1xE$2SyOljU" role="2XxRq1">
                  <ref role="37wK5l" to="ovkb:3E3V7xVhWz5" resolve="getDefaultStartupScript" />
                  <ref role="1Pybhc" to="ovkb:3E3V7xVhWwO" resolve="DefaultStartupScript" />
                </node>
              </node>
            </node>
            <node concept="2hMVRd" id="1xE$2SyOljV" role="1tU5fm">
              <node concept="17QB3L" id="1xE$2SyOljX" role="2hN53Y" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1xE$2SyOljY" role="3cqZAp">
          <node concept="2OqwBi" id="1xE$2SyOlk1" role="3clFbw">
            <node concept="2OqwBi" id="1xE$2SyOlk4" role="2Oq$k0">
              <node concept="37vLTw" id="1xE$2SyOlk7" role="2Oq$k0">
                <ref role="3cqZAo" node="1xE$2SyOlj_" resolve="currentVMOptions" />
              </node>
              <node concept="2NgGto" id="1xE$2SyOlk8" role="2OqNvi">
                <node concept="37vLTw" id="1xE$2SyOlka" role="576Qk">
                  <ref role="3cqZAo" node="1xE$2SyOljN" resolve="defaultVMOptions" />
                </node>
              </node>
            </node>
            <node concept="3GX2aA" id="1xE$2SyOlkb" role="2OqNvi" />
          </node>
          <node concept="3clFbS" id="1xE$2SyOlkc" role="3clFbx">
            <node concept="3cpWs6" id="1xE$2SyOlkd" role="3cqZAp">
              <node concept="3clFbT" id="1xE$2SyOlke" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1xE$2SyOlkf" role="3cqZAp" />
        <node concept="3cpWs8" id="1xE$2SyOlkg" role="3cqZAp">
          <node concept="3cpWsn" id="1xE$2SyOlkj" role="3cpWs9">
            <property role="TrG5h" value="currentAdditionalVMOptions" />
            <property role="OYnhT" value="local variable" />
            <property role="2Lvdk3" value="currentAdditionalVMOptions" />
            <node concept="2OqwBi" id="1xE$2SyOlkl" role="33vP2m">
              <node concept="2WthIp" id="1xE$2SyOlko" role="2Oq$k0" />
              <node concept="2XshWL" id="1xE$2SyOlkp" role="2OqNvi">
                <ref role="2WH_rO" node="1xE$2SyOlqB" resolve="getAdditionalVMOptionsSet" />
                <node concept="2Sf5sV" id="1xE$2SyOlkq" role="2XxRq1" />
              </node>
            </node>
            <node concept="2hMVRd" id="1xE$2SyOlkr" role="1tU5fm">
              <node concept="17QB3L" id="1xE$2SyOlkt" role="2hN53Y" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1xE$2SyOlku" role="3cqZAp">
          <node concept="3cpWsn" id="1xE$2SyOlkx" role="3cpWs9">
            <property role="TrG5h" value="defaultAdditionalVMOptions" />
            <property role="OYnhT" value="local variable" />
            <property role="2Lvdk3" value="defaultAdditionalVMOptions" />
            <node concept="2OqwBi" id="1xE$2SyOlkz" role="33vP2m">
              <node concept="2WthIp" id="1xE$2SyOlkA" role="2Oq$k0" />
              <node concept="2XshWL" id="1xE$2SyOlkB" role="2OqNvi">
                <ref role="2WH_rO" node="1xE$2SyOlqB" resolve="getAdditionalVMOptionsSet" />
                <node concept="2YIFZM" id="1xE$2SyOlkC" role="2XxRq1">
                  <ref role="37wK5l" to="ovkb:3E3V7xVhWz5" resolve="getDefaultStartupScript" />
                  <ref role="1Pybhc" to="ovkb:3E3V7xVhWwO" resolve="DefaultStartupScript" />
                </node>
              </node>
            </node>
            <node concept="2hMVRd" id="1xE$2SyOlkD" role="1tU5fm">
              <node concept="17QB3L" id="1xE$2SyOlkF" role="2hN53Y" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1xE$2SyOlkG" role="3cqZAp">
          <node concept="2OqwBi" id="1xE$2SyOlkJ" role="3clFbw">
            <node concept="2OqwBi" id="1xE$2SyOlkM" role="2Oq$k0">
              <node concept="37vLTw" id="1xE$2SyOlkP" role="2Oq$k0">
                <ref role="3cqZAo" node="1xE$2SyOlkj" resolve="currentAdditionalVMOptions" />
              </node>
              <node concept="2NgGto" id="1xE$2SyOlkQ" role="2OqNvi">
                <node concept="37vLTw" id="1xE$2SyOlkS" role="576Qk">
                  <ref role="3cqZAo" node="1xE$2SyOlkx" resolve="defaultAdditionalVMOptions" />
                </node>
              </node>
            </node>
            <node concept="3GX2aA" id="1xE$2SyOlkT" role="2OqNvi" />
          </node>
          <node concept="3clFbS" id="1xE$2SyOlkU" role="3clFbx">
            <node concept="3cpWs6" id="1xE$2SyOlkV" role="3cqZAp">
              <node concept="3clFbT" id="1xE$2SyOlkW" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1xE$2SyOlkX" role="3cqZAp" />
        <node concept="3cpWs6" id="1xE$2SyOlkY" role="3cqZAp">
          <node concept="3clFbT" id="1xE$2SyOlkZ" role="3cqZAk" />
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="1xE$2SyOll0" role="2ZfgGD">
      <node concept="3clFbS" id="1xE$2SyOll2" role="2VODD2">
        <node concept="3clFbF" id="1xE$2SyOll3" role="3cqZAp">
          <node concept="2OqwBi" id="1xE$2SyOll5" role="3clFbG">
            <node concept="2OqwBi" id="1xE$2SyOll8" role="2Oq$k0">
              <node concept="2Sf5sV" id="1xE$2SyOllb" role="2Oq$k0" />
              <node concept="3Tsc0h" id="1xE$2SyOllc" role="2OqNvi">
                <ref role="3TtcxE" to="s7om:3nFPImNgRsC" />
              </node>
            </node>
            <node concept="2Kehj3" id="1xE$2SyOlld" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="1xE$2SyOlle" role="3cqZAp">
          <node concept="2OqwBi" id="1xE$2SyOllg" role="3clFbG">
            <node concept="2OqwBi" id="1xE$2SyOllj" role="2Oq$k0">
              <node concept="2Sf5sV" id="1xE$2SyOllm" role="2Oq$k0" />
              <node concept="3Tsc0h" id="1xE$2SyOlln" role="2OqNvi">
                <ref role="3TtcxE" to="s7om:3nFPImNgRsC" />
              </node>
            </node>
            <node concept="X8dFx" id="1xE$2SyOllo" role="2OqNvi">
              <node concept="2OqwBi" id="1xE$2SyOllq" role="25WWJ7">
                <node concept="2OqwBi" id="1xE$2SyOllt" role="2Oq$k0">
                  <node concept="2YIFZM" id="1xE$2SyOllw" role="2Oq$k0">
                    <ref role="37wK5l" to="ovkb:3E3V7xVhWz5" resolve="getDefaultStartupScript" />
                    <ref role="1Pybhc" to="ovkb:3E3V7xVhWwO" resolve="DefaultStartupScript" />
                  </node>
                  <node concept="3Tsc0h" id="1xE$2SyOllx" role="2OqNvi">
                    <ref role="3TtcxE" to="s7om:3nFPImNgRsC" />
                  </node>
                </node>
                <node concept="3$u5V9" id="1xE$2SyOlly" role="2OqNvi">
                  <node concept="1bVj0M" id="1xE$2SyOllB" role="23t8la">
                    <node concept="gl6BB" id="1xE$2SyOllD" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <property role="2Lvdk3" value="it" />
                      <node concept="2jxLKc" id="1xE$2SyOllF" role="1tU5fm" />
                    </node>
                    <node concept="3clFbS" id="1xE$2SyOllG" role="1bW5cS">
                      <node concept="3clFbF" id="1xE$2SyOllH" role="3cqZAp">
                        <node concept="2OqwBi" id="1xE$2SyOllJ" role="3clFbG">
                          <node concept="37vLTw" id="1xE$2SyOllM" role="2Oq$k0">
                            <ref role="3cqZAo" node="1xE$2SyOllD" resolve="it" />
                          </node>
                          <node concept="1$rogu" id="1xE$2SyOllN" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1xE$2SyOllO" role="3cqZAp">
          <node concept="2OqwBi" id="1xE$2SyOllQ" role="3clFbG">
            <node concept="2OqwBi" id="1xE$2SyOllT" role="2Oq$k0">
              <node concept="2Sf5sV" id="1xE$2SyOllW" role="2Oq$k0" />
              <node concept="3Tsc0h" id="1xE$2SyOllX" role="2OqNvi">
                <ref role="3TtcxE" to="s7om:7mPGpETqNW1" />
              </node>
            </node>
            <node concept="2Kehj3" id="1xE$2SyOllY" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="1xE$2SyOllZ" role="3cqZAp">
          <node concept="2OqwBi" id="1xE$2SyOlm1" role="3clFbG">
            <node concept="2OqwBi" id="1xE$2SyOlm4" role="2Oq$k0">
              <node concept="2Sf5sV" id="1xE$2SyOlm7" role="2Oq$k0" />
              <node concept="3Tsc0h" id="1xE$2SyOlm8" role="2OqNvi">
                <ref role="3TtcxE" to="s7om:7mPGpETqNW1" />
              </node>
            </node>
            <node concept="X8dFx" id="1xE$2SyOlm9" role="2OqNvi">
              <node concept="2OqwBi" id="1xE$2SyOlmb" role="25WWJ7">
                <node concept="2OqwBi" id="1xE$2SyOlme" role="2Oq$k0">
                  <node concept="2YIFZM" id="1xE$2SyOlmh" role="2Oq$k0">
                    <ref role="37wK5l" to="ovkb:3E3V7xVhWz5" resolve="getDefaultStartupScript" />
                    <ref role="1Pybhc" to="ovkb:3E3V7xVhWwO" resolve="DefaultStartupScript" />
                  </node>
                  <node concept="3Tsc0h" id="1xE$2SyOlmi" role="2OqNvi">
                    <ref role="3TtcxE" to="s7om:7mPGpETqNW1" />
                  </node>
                </node>
                <node concept="3$u5V9" id="1xE$2SyOlmj" role="2OqNvi">
                  <node concept="1bVj0M" id="1xE$2SyOlmo" role="23t8la">
                    <node concept="gl6BB" id="1xE$2SyOlmq" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <property role="2Lvdk3" value="it" />
                      <node concept="2jxLKc" id="1xE$2SyOlms" role="1tU5fm" />
                    </node>
                    <node concept="3clFbS" id="1xE$2SyOlmt" role="1bW5cS">
                      <node concept="3clFbF" id="1xE$2SyOlmu" role="3cqZAp">
                        <node concept="2OqwBi" id="1xE$2SyOlmw" role="3clFbG">
                          <node concept="37vLTw" id="1xE$2SyOlmz" role="2Oq$k0">
                            <ref role="3cqZAo" node="1xE$2SyOlmq" resolve="it" />
                          </node>
                          <node concept="1$rogu" id="1xE$2SyOlm$" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1xE$2SyOlm_" role="3cqZAp">
          <node concept="2OqwBi" id="1xE$2SyOlmB" role="3clFbG">
            <node concept="2OqwBi" id="1xE$2SyOlmE" role="2Oq$k0">
              <node concept="2Sf5sV" id="1xE$2SyOlmH" role="2Oq$k0" />
              <node concept="3Tsc0h" id="1xE$2SyOlmI" role="2OqNvi">
                <ref role="3TtcxE" to="s7om:2lwFGYOQzXr" />
              </node>
            </node>
            <node concept="2Kehj3" id="1xE$2SyOlmJ" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="1xE$2SyOlmK" role="3cqZAp">
          <node concept="2OqwBi" id="1xE$2SyOlmM" role="3clFbG">
            <node concept="2OqwBi" id="1xE$2SyOlmP" role="2Oq$k0">
              <node concept="2Sf5sV" id="1xE$2SyOlmS" role="2Oq$k0" />
              <node concept="3Tsc0h" id="1xE$2SyOlmT" role="2OqNvi">
                <ref role="3TtcxE" to="s7om:2lwFGYOQzXr" />
              </node>
            </node>
            <node concept="X8dFx" id="1xE$2SyOlmU" role="2OqNvi">
              <node concept="2OqwBi" id="1xE$2SyOlmW" role="25WWJ7">
                <node concept="2OqwBi" id="1xE$2SyOlmZ" role="2Oq$k0">
                  <node concept="2YIFZM" id="1xE$2SyOln2" role="2Oq$k0">
                    <ref role="37wK5l" to="ovkb:3E3V7xVhWz5" resolve="getDefaultStartupScript" />
                    <ref role="1Pybhc" to="ovkb:3E3V7xVhWwO" resolve="DefaultStartupScript" />
                  </node>
                  <node concept="3Tsc0h" id="1xE$2SyOln3" role="2OqNvi">
                    <ref role="3TtcxE" to="s7om:2lwFGYOQzXr" />
                  </node>
                </node>
                <node concept="3$u5V9" id="1xE$2SyOln4" role="2OqNvi">
                  <node concept="1bVj0M" id="1xE$2SyOln9" role="23t8la">
                    <node concept="gl6BB" id="1xE$2SyOlnb" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <property role="2Lvdk3" value="it" />
                      <node concept="2jxLKc" id="1xE$2SyOlnd" role="1tU5fm" />
                    </node>
                    <node concept="3clFbS" id="1xE$2SyOlne" role="1bW5cS">
                      <node concept="3clFbF" id="1xE$2SyOlnf" role="3cqZAp">
                        <node concept="2OqwBi" id="1xE$2SyOlnh" role="3clFbG">
                          <node concept="37vLTw" id="1xE$2SyOlnk" role="2Oq$k0">
                            <ref role="3cqZAo" node="1xE$2SyOlnb" resolve="it" />
                          </node>
                          <node concept="1$rogu" id="1xE$2SyOlnl" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1xE$2SyOlnm" role="3cqZAp">
          <node concept="2OqwBi" id="1xE$2SyOlno" role="3clFbG">
            <node concept="2OqwBi" id="1xE$2SyOlnr" role="2Oq$k0">
              <node concept="2Sf5sV" id="1xE$2SyOlnu" role="2Oq$k0" />
              <node concept="3Tsc0h" id="1xE$2SyOlnv" role="2OqNvi">
                <ref role="3TtcxE" to="s7om:7mPGpETBx32" />
              </node>
            </node>
            <node concept="2Kehj3" id="1xE$2SyOlnw" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="1xE$2SyOlnx" role="3cqZAp">
          <node concept="2OqwBi" id="1xE$2SyOlnz" role="3clFbG">
            <node concept="2OqwBi" id="1xE$2SyOlnA" role="2Oq$k0">
              <node concept="2Sf5sV" id="1xE$2SyOlnD" role="2Oq$k0" />
              <node concept="3Tsc0h" id="1xE$2SyOlnE" role="2OqNvi">
                <ref role="3TtcxE" to="s7om:7mPGpETBx32" />
              </node>
            </node>
            <node concept="X8dFx" id="1xE$2SyOlnF" role="2OqNvi">
              <node concept="2OqwBi" id="1xE$2SyOlnH" role="25WWJ7">
                <node concept="2OqwBi" id="1xE$2SyOlnK" role="2Oq$k0">
                  <node concept="2YIFZM" id="1xE$2SyOlnN" role="2Oq$k0">
                    <ref role="37wK5l" to="ovkb:3E3V7xVhWz5" resolve="getDefaultStartupScript" />
                    <ref role="1Pybhc" to="ovkb:3E3V7xVhWwO" resolve="DefaultStartupScript" />
                  </node>
                  <node concept="3Tsc0h" id="1xE$2SyOlnO" role="2OqNvi">
                    <ref role="3TtcxE" to="s7om:7mPGpETBx32" />
                  </node>
                </node>
                <node concept="3$u5V9" id="1xE$2SyOlnP" role="2OqNvi">
                  <node concept="1bVj0M" id="1xE$2SyOlnU" role="23t8la">
                    <node concept="gl6BB" id="1xE$2SyOlnW" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <property role="2Lvdk3" value="it" />
                      <node concept="2jxLKc" id="1xE$2SyOlnY" role="1tU5fm" />
                    </node>
                    <node concept="3clFbS" id="1xE$2SyOlnZ" role="1bW5cS">
                      <node concept="3clFbF" id="1xE$2SyOlo0" role="3cqZAp">
                        <node concept="2OqwBi" id="1xE$2SyOlo2" role="3clFbG">
                          <node concept="37vLTw" id="1xE$2SyOlo5" role="2Oq$k0">
                            <ref role="3cqZAo" node="1xE$2SyOlnW" resolve="it" />
                          </node>
                          <node concept="1$rogu" id="1xE$2SyOlo6" role="2OqNvi" />
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
    <node concept="2XrIbr" id="1xE$2SyOlo7" role="32lrUH">
      <property role="TrG5h" value="getClassPathSet" />
      <node concept="2hMVRd" id="1xE$2SyOloa" role="3clF45">
        <node concept="17QB3L" id="1xE$2SyOloc" role="2hN53Y" />
      </node>
      <node concept="37vLTG" id="1xE$2SyOlod" role="3clF46">
        <property role="TrG5h" value="script" />
        <property role="2Lvdk3" value="script" />
        <node concept="3Tqbb2" id="1xE$2SyOlof" role="1tU5fm">
          <ref role="ehGHo" to="s7om:3nFPImNgRk8" resolve="MpsStartupScript" />
        </node>
      </node>
      <node concept="3clFbS" id="1xE$2SyOlog" role="3clF47">
        <node concept="3clFbF" id="1xE$2SyOloh" role="3cqZAp">
          <node concept="2ShNRf" id="1xE$2SyOloj" role="3clFbG">
            <node concept="32HrFt" id="1xE$2SyOlol" role="2ShVmc">
              <node concept="17QB3L" id="1xE$2SyOlom" role="HW$YZ" />
              <node concept="2OqwBi" id="1xE$2SyOlon" role="I$8f6">
                <node concept="2OqwBi" id="1xE$2SyOloq" role="2Oq$k0">
                  <node concept="37vLTw" id="1xE$2SyOlot" role="2Oq$k0">
                    <ref role="3cqZAo" node="1xE$2SyOlod" resolve="script" />
                  </node>
                  <node concept="3Tsc0h" id="1xE$2SyOlou" role="2OqNvi">
                    <ref role="3TtcxE" to="s7om:3nFPImNgRsC" />
                  </node>
                </node>
                <node concept="3$u5V9" id="1xE$2SyOlov" role="2OqNvi">
                  <node concept="1bVj0M" id="1xE$2SyOlo$" role="23t8la">
                    <node concept="gl6BB" id="1xE$2SyOloA" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <property role="2Lvdk3" value="it" />
                      <node concept="2jxLKc" id="1xE$2SyOloC" role="1tU5fm" />
                    </node>
                    <node concept="3clFbS" id="1xE$2SyOloD" role="1bW5cS">
                      <node concept="3clFbF" id="1xE$2SyOloE" role="3cqZAp">
                        <node concept="2OqwBi" id="1xE$2SyOloG" role="3clFbG">
                          <node concept="37vLTw" id="1xE$2SyOloJ" role="2Oq$k0">
                            <ref role="3cqZAo" node="1xE$2SyOloA" resolve="it" />
                          </node>
                          <node concept="3TrcHB" id="1xE$2SyOloK" role="2OqNvi">
                            <ref role="3TsBF5" to="s7om:3nFPImNgRka" resolve="path" />
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
      <node concept="3Tm6S6" id="1xE$2SyOloL" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="1xE$2SyOloM" role="32lrUH">
      <property role="TrG5h" value="getVMOptionsSet" />
      <node concept="2hMVRd" id="1xE$2SyOloP" role="3clF45">
        <node concept="17QB3L" id="1xE$2SyOloR" role="2hN53Y" />
      </node>
      <node concept="37vLTG" id="1xE$2SyOloS" role="3clF46">
        <property role="TrG5h" value="script" />
        <property role="2Lvdk3" value="script" />
        <node concept="3Tqbb2" id="1xE$2SyOloU" role="1tU5fm">
          <ref role="ehGHo" to="s7om:3nFPImNgRk8" resolve="MpsStartupScript" />
        </node>
      </node>
      <node concept="3clFbS" id="1xE$2SyOloV" role="3clF47">
        <node concept="3clFbF" id="1xE$2SyOloW" role="3cqZAp">
          <node concept="2ShNRf" id="1xE$2SyOloY" role="3clFbG">
            <node concept="32HrFt" id="1xE$2SyOlp0" role="2ShVmc">
              <node concept="17QB3L" id="1xE$2SyOlp1" role="HW$YZ" />
              <node concept="2OqwBi" id="1xE$2SyOlp2" role="I$8f6">
                <node concept="2OqwBi" id="1xE$2SyOlp5" role="2Oq$k0">
                  <node concept="2OqwBi" id="1xE$2SyOlp8" role="2Oq$k0">
                    <node concept="2OqwBi" id="1xE$2SyOlpb" role="2Oq$k0">
                      <node concept="37vLTw" id="1xE$2SyOlpe" role="2Oq$k0">
                        <ref role="3cqZAo" node="1xE$2SyOloS" resolve="script" />
                      </node>
                      <node concept="3Tsc0h" id="1xE$2SyOlpf" role="2OqNvi">
                        <ref role="3TtcxE" to="s7om:2lwFGYOQzXr" />
                      </node>
                    </node>
                    <node concept="v3k3i" id="1xE$2SyOlpg" role="2OqNvi">
                      <node concept="chp4Y" id="1xE$2SyOlpi" role="v3oSu">
                        <ref role="cht4Q" to="s7om:3nFPImNgRtc" resolve="SimpleVmOptions" />
                      </node>
                    </node>
                  </node>
                  <node concept="3zZkjj" id="1xE$2SyOlpj" role="2OqNvi">
                    <node concept="1bVj0M" id="1xE$2SyOlpo" role="23t8la">
                      <node concept="gl6BB" id="1xE$2SyOlpq" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <property role="2Lvdk3" value="it" />
                        <node concept="2jxLKc" id="1xE$2SyOlps" role="1tU5fm" />
                      </node>
                      <node concept="3clFbS" id="1xE$2SyOlpt" role="1bW5cS">
                        <node concept="3clFbF" id="1xE$2SyOlpu" role="3cqZAp">
                          <node concept="3fqX7Q" id="1xE$2SyOlpw" role="3clFbG">
                            <node concept="1eOMI4" id="1xE$2SyOlpy" role="3fr31v">
                              <node concept="2OqwBi" id="1xE$2SyOlp$" role="1eOMHV">
                                <node concept="37vLTw" id="1xE$2SyOlpB" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1xE$2SyOlpq" resolve="it" />
                                </node>
                                <node concept="3TrcHB" id="1xE$2SyOlpC" role="2OqNvi">
                                  <ref role="3TsBF5" to="s7om:54lRqzvvvMy" resolve="commented" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3$u5V9" id="1xE$2SyOlpD" role="2OqNvi">
                  <node concept="1bVj0M" id="1xE$2SyOlpI" role="23t8la">
                    <node concept="gl6BB" id="1xE$2SyOlpK" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <property role="2Lvdk3" value="it" />
                      <node concept="2jxLKc" id="1xE$2SyOlpM" role="1tU5fm" />
                    </node>
                    <node concept="3clFbS" id="1xE$2SyOlpN" role="1bW5cS">
                      <node concept="3clFbF" id="1xE$2SyOlpO" role="3cqZAp">
                        <node concept="2OqwBi" id="1xE$2SyOlpQ" role="3clFbG">
                          <node concept="37vLTw" id="1xE$2SyOlpT" role="2Oq$k0">
                            <ref role="3cqZAo" node="1xE$2SyOlpK" resolve="it" />
                          </node>
                          <node concept="3TrcHB" id="1xE$2SyOlpU" role="2OqNvi">
                            <ref role="3TsBF5" to="s7om:3nFPImNgRtd" resolve="options" />
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
      <node concept="3Tm6S6" id="1xE$2SyOlpV" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="1xE$2SyOlpW" role="32lrUH">
      <property role="TrG5h" value="getExtClassPathSet" />
      <node concept="2hMVRd" id="1xE$2SyOlpZ" role="3clF45">
        <node concept="17QB3L" id="1xE$2SyOlq1" role="2hN53Y" />
      </node>
      <node concept="37vLTG" id="1xE$2SyOlq2" role="3clF46">
        <property role="TrG5h" value="script" />
        <property role="2Lvdk3" value="script" />
        <node concept="3Tqbb2" id="1xE$2SyOlq4" role="1tU5fm">
          <ref role="ehGHo" to="s7om:3nFPImNgRk8" resolve="MpsStartupScript" />
        </node>
      </node>
      <node concept="3clFbS" id="1xE$2SyOlq5" role="3clF47">
        <node concept="3clFbF" id="1xE$2SyOlq6" role="3cqZAp">
          <node concept="2ShNRf" id="1xE$2SyOlq8" role="3clFbG">
            <node concept="32HrFt" id="1xE$2SyOlqa" role="2ShVmc">
              <node concept="17QB3L" id="1xE$2SyOlqb" role="HW$YZ" />
              <node concept="2OqwBi" id="1xE$2SyOlqc" role="I$8f6">
                <node concept="2OqwBi" id="1xE$2SyOlqf" role="2Oq$k0">
                  <node concept="37vLTw" id="1xE$2SyOlqi" role="2Oq$k0">
                    <ref role="3cqZAo" node="1xE$2SyOlq2" resolve="script" />
                  </node>
                  <node concept="3Tsc0h" id="1xE$2SyOlqj" role="2OqNvi">
                    <ref role="3TtcxE" to="s7om:7mPGpETqNW1" />
                  </node>
                </node>
                <node concept="3$u5V9" id="1xE$2SyOlqk" role="2OqNvi">
                  <node concept="1bVj0M" id="1xE$2SyOlqp" role="23t8la">
                    <node concept="gl6BB" id="1xE$2SyOlqr" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <property role="2Lvdk3" value="it" />
                      <node concept="2jxLKc" id="1xE$2SyOlqt" role="1tU5fm" />
                    </node>
                    <node concept="3clFbS" id="1xE$2SyOlqu" role="1bW5cS">
                      <node concept="3clFbF" id="1xE$2SyOlqv" role="3cqZAp">
                        <node concept="2OqwBi" id="1xE$2SyOlqx" role="3clFbG">
                          <node concept="37vLTw" id="1xE$2SyOlq$" role="2Oq$k0">
                            <ref role="3cqZAo" node="1xE$2SyOlqr" resolve="it" />
                          </node>
                          <node concept="3TrcHB" id="1xE$2SyOlq_" role="2OqNvi">
                            <ref role="3TsBF5" to="s7om:3nFPImNgRka" resolve="path" />
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
      <node concept="3Tm6S6" id="1xE$2SyOlqA" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="1xE$2SyOlqB" role="32lrUH">
      <property role="TrG5h" value="getAdditionalVMOptionsSet" />
      <node concept="2hMVRd" id="1xE$2SyOlqE" role="3clF45">
        <node concept="17QB3L" id="1xE$2SyOlqG" role="2hN53Y" />
      </node>
      <node concept="37vLTG" id="1xE$2SyOlqH" role="3clF46">
        <property role="TrG5h" value="script" />
        <property role="2Lvdk3" value="script" />
        <node concept="3Tqbb2" id="1xE$2SyOlqJ" role="1tU5fm">
          <ref role="ehGHo" to="s7om:3nFPImNgRk8" resolve="MpsStartupScript" />
        </node>
      </node>
      <node concept="3clFbS" id="1xE$2SyOlqK" role="3clF47">
        <node concept="3clFbF" id="1xE$2SyOlqL" role="3cqZAp">
          <node concept="2ShNRf" id="1xE$2SyOlqN" role="3clFbG">
            <node concept="32HrFt" id="1xE$2SyOlqP" role="2ShVmc">
              <node concept="17QB3L" id="1xE$2SyOlqQ" role="HW$YZ" />
              <node concept="2OqwBi" id="1xE$2SyOlqR" role="I$8f6">
                <node concept="2OqwBi" id="1xE$2SyOlqU" role="2Oq$k0">
                  <node concept="2OqwBi" id="1xE$2SyOlqX" role="2Oq$k0">
                    <node concept="2OqwBi" id="1xE$2SyOlr0" role="2Oq$k0">
                      <node concept="37vLTw" id="1xE$2SyOlr3" role="2Oq$k0">
                        <ref role="3cqZAo" node="1xE$2SyOlqH" resolve="script" />
                      </node>
                      <node concept="3Tsc0h" id="1xE$2SyOlr4" role="2OqNvi">
                        <ref role="3TtcxE" to="s7om:7mPGpETBx32" />
                      </node>
                    </node>
                    <node concept="v3k3i" id="1xE$2SyOlr5" role="2OqNvi">
                      <node concept="chp4Y" id="1xE$2SyOlr7" role="v3oSu">
                        <ref role="cht4Q" to="s7om:3nFPImNgRtc" resolve="SimpleVmOptions" />
                      </node>
                    </node>
                  </node>
                  <node concept="3zZkjj" id="1xE$2SyOlr8" role="2OqNvi">
                    <node concept="1bVj0M" id="1xE$2SyOlrd" role="23t8la">
                      <node concept="gl6BB" id="1xE$2SyOlrf" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <property role="2Lvdk3" value="it" />
                        <node concept="2jxLKc" id="1xE$2SyOlrh" role="1tU5fm" />
                      </node>
                      <node concept="3clFbS" id="1xE$2SyOlri" role="1bW5cS">
                        <node concept="3clFbF" id="1xE$2SyOlrj" role="3cqZAp">
                          <node concept="3fqX7Q" id="1xE$2SyOlrl" role="3clFbG">
                            <node concept="1eOMI4" id="1xE$2SyOlrn" role="3fr31v">
                              <node concept="2OqwBi" id="1xE$2SyOlrp" role="1eOMHV">
                                <node concept="37vLTw" id="1xE$2SyOlrs" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1xE$2SyOlrf" resolve="it" />
                                </node>
                                <node concept="3TrcHB" id="1xE$2SyOlrt" role="2OqNvi">
                                  <ref role="3TsBF5" to="s7om:54lRqzvvvMy" resolve="commented" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3$u5V9" id="1xE$2SyOlru" role="2OqNvi">
                  <node concept="1bVj0M" id="1xE$2SyOlrz" role="23t8la">
                    <node concept="gl6BB" id="1xE$2SyOlr_" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <property role="2Lvdk3" value="it" />
                      <node concept="2jxLKc" id="1xE$2SyOlrB" role="1tU5fm" />
                    </node>
                    <node concept="3clFbS" id="1xE$2SyOlrC" role="1bW5cS">
                      <node concept="3clFbF" id="1xE$2SyOlrD" role="3cqZAp">
                        <node concept="2OqwBi" id="1xE$2SyOlrF" role="3clFbG">
                          <node concept="37vLTw" id="1xE$2SyOlrI" role="2Oq$k0">
                            <ref role="3cqZAo" node="1xE$2SyOlr_" resolve="it" />
                          </node>
                          <node concept="3TrcHB" id="1xE$2SyOlrJ" role="2OqNvi">
                            <ref role="3TsBF5" to="s7om:3nFPImNgRtd" resolve="options" />
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
      <node concept="3Tm6S6" id="1xE$2SyOlrK" role="1B3o_S" />
    </node>
  </node>
</model>

