<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a3396333-01e8-4d8f-ac7d-92203e663cdb(jetbrains.mps.debugger.java.runtime.ui.actions)">
  <persistence version="9" />
  <languages>
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="-1" />
    <use id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers" version="-1" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="-1" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="6" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="-1" />
    <use id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources" version="4" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
  </languages>
  <imports>
    <import index="tbzr" ref="r:b4456070-b665-4c03-b3d3-15a7362ba923(jetbrains.mps.debugger.java.runtime.ui.evaluation)" />
    <import index="qiil" ref="r:16e1d5b7-80ca-4570-9d1a-1cf2ce305e08(jetbrains.mps.debugger.api.ui)" />
    <import index="anh2" ref="r:1f2ecb68-8f37-460f-acb8-866f8f05b15e(jetbrains.mps.debugger.java.runtime.evaluation)" />
    <import index="lt1n" ref="r:4a0301da-c964-420c-8e35-486843de9df5(jetbrains.mps.debug.api.evaluation)" />
    <import index="choc" ref="r:a35795b4-c996-4cf6-bdbd-9ddbda25cde5(jetbrains.mps.debugger.api.ui.tree)" />
    <import index="pry4" ref="r:0a0d7eec-6e5a-412b-8e16-e3ee5ed7fb95(jetbrains.mps.debug.api.programState)" />
    <import index="y3sp" ref="r:ac4cce94-c169-4971-be8f-807482637028(jetbrains.mps.debugger.java.api.state.proxy)" />
    <import index="dp1x" ref="r:84719e1a-99f6-4297-90ba-8ad2a947fa4a(jetbrains.mps.ide.datatransfer)" />
    <import index="1rri" ref="r:01820806-c285-4459-a416-37590f94adc8(jetbrains.mps.debugger.api.ui.actions)" />
    <import index="1l1h" ref="r:c02662c0-67c5-4c3a-8d3a-cd7ffe189340(jetbrains.mps.debug.api)" />
    <import index="qgwr" ref="r:f326a98e-32f7-47a0-ba29-239107a89ca4(jetbrains.mps.debugger.java.api.evaluation)" />
    <import index="a3o9" ref="r:6c15a5c9-1bba-4ade-a066-13f2741b04fc(jetbrains.mps.debugger.java.api.state)" />
    <import index="d822" ref="r:63e7a653-1334-49d4-8e81-fd72b84fb4ff(jetbrains.mps.debugger.java.runtime.state)" />
    <import index="i1lu" ref="r:f5448de3-0d76-42bb-afa7-00b3b32de849(jetbrains.mps.debugger.java.runtime.evaluation.container)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="qkt" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.actionSystem(MPS.IDEA/)" />
    <import index="qq03" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.actions(MPS.Platform/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="frkw" ref="b387285c-3448-452c-b3bb-a3f8de8eaf08/java:com.sun.jdi(JDK-tools/)" />
    <import index="z2i8" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.icons(MPS.IDEA/)" />
    <import index="v9br" ref="r:4388830e-b413-4ab4-a4d2-e76a7bc17a27(jetbrains.mps.debugger.java.runtime.state.customViewers)" />
    <import index="dcbi" ref="r:ea2e6d1f-eab5-4a08-8299-1abe57148f37(jetbrains.mps.debugger.java.api.evaluation.proxies)" implicit="true" />
  </imports>
  <registry>
    <language id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources">
      <concept id="7927811850890310904" name="jetbrains.mps.lang.resources.structure.ConstantFieldIcon" flags="ng" index="1GtWCo">
        <child id="7927811850890311914" name="field" index="1GtWoa" />
      </concept>
    </language>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="5023285075122009364" name="jetbrains.mps.lang.plugin.structure.IdeaInitializerDescriptor" flags="ng" index="9BnSX">
        <property id="5023285075122009369" name="version" index="9BnSK" />
        <property id="5023285075122009368" name="descripttion" index="9BnSL" />
        <property id="5023285075122009371" name="vendor" index="9BnSM" />
        <property id="5023285075122009373" name="ideaVersion" index="9BnSO" />
        <property id="5023285075122009372" name="vendorUrl" index="9BnSP" />
        <property id="5023285075122009366" name="id" index="9BnSZ" />
      </concept>
      <concept id="1207145163717" name="jetbrains.mps.lang.plugin.structure.ElementListContents" flags="ng" index="ftmFs">
        <child id="1207145201301" name="reference" index="ftvYc" />
      </concept>
      <concept id="1203071646776" name="jetbrains.mps.lang.plugin.structure.ActionDeclaration" flags="ng" index="sE7Ow">
        <property id="1211298967294" name="outsideCommandExecution" index="72QZ$" />
        <property id="1207149998849" name="isAlwaysVisible" index="fJN8o" />
        <property id="1205250923097" name="caption" index="2uzpH1" />
        <property id="7458746815261976739" name="requiredAccess" index="2YLI8m" />
        <property id="4692598989365753297" name="updateInBackground" index="1rBW0U" />
        <property id="997079742910640235" name="fillActionContext" index="1teQrl" />
        <property id="1213273179528" name="description" index="1WHSii" />
        <child id="1203083196627" name="updateBlock" index="tmbBb" />
        <child id="1203083461638" name="executeFunction" index="tncku" />
        <child id="1227008813498" name="constructionParameter" index="2JrayB" />
        <child id="1217413222820" name="parameter" index="1NuT2Z" />
        <child id="8976425910813834639" name="icon" index="3Uehp1" />
      </concept>
      <concept id="1203082695294" name="jetbrains.mps.lang.plugin.structure.DoUpdateBlock" flags="in" index="tkhdA" />
      <concept id="1203082903663" name="jetbrains.mps.lang.plugin.structure.ConceptFunctionParameter_AnActionEvent" flags="nn" index="tl45R" />
      <concept id="1203083511112" name="jetbrains.mps.lang.plugin.structure.ExecuteBlock" flags="in" index="tnohg" />
      <concept id="1203087890642" name="jetbrains.mps.lang.plugin.structure.ActionGroupDeclaration" flags="ng" index="tC5Ba">
        <property id="6461604478897396236" name="updateInBackground" index="22ra45" />
        <property id="1204991940915" name="caption" index="2f7twF" />
        <property id="1213283637680" name="isPopup" index="1XlLyE" />
        <child id="1204991552650" name="modifier" index="2f5YQi" />
        <child id="1207145245948" name="contents" index="ftER_" />
      </concept>
      <concept id="1203088046679" name="jetbrains.mps.lang.plugin.structure.ActionInstance" flags="ng" index="tCFHf">
        <reference id="1203088061055" name="action" index="tCJdB" />
        <child id="1227011543811" name="actualParameter" index="2J__8u" />
      </concept>
      <concept id="1203092361741" name="jetbrains.mps.lang.plugin.structure.ModificationStatement" flags="lg" index="tT9cl">
        <reference id="1204992316090" name="point" index="2f8Tey" />
        <reference id="1203092736097" name="modifiedGroup" index="tU$_T" />
      </concept>
      <concept id="1227008846812" name="jetbrains.mps.lang.plugin.structure.ActionConstructionParameterDeclaration" flags="ig" index="2JriF1">
        <child id="1227019158144" name="toStringFunction" index="2K2Cet" />
      </concept>
      <concept id="1227013049127" name="jetbrains.mps.lang.plugin.structure.AddStatement" flags="nn" index="2JFkCU">
        <child id="1227013166210" name="item" index="2JFLmv" />
      </concept>
      <concept id="1227019068586" name="jetbrains.mps.lang.plugin.structure.ToStringConceptFunction" flags="in" index="2K2imR" />
      <concept id="1227019310584" name="jetbrains.mps.lang.plugin.structure.ToStringParameter" flags="nn" index="2K3dj_" />
      <concept id="1239975356883" name="jetbrains.mps.lang.plugin.structure.UpdateGroupBlock" flags="ng" index="2OiAzN">
        <child id="1239975488603" name="updateFunction" index="2Oj6PV" />
      </concept>
      <concept id="1239975436002" name="jetbrains.mps.lang.plugin.structure.UpdateGroupFunction" flags="in" index="2OiTZ2" />
      <concept id="1205681243813" name="jetbrains.mps.lang.plugin.structure.IsApplicableBlock" flags="in" index="2ScWuX" />
      <concept id="5538333046911348654" name="jetbrains.mps.lang.plugin.structure.RequiredCondition" flags="ng" index="1oajcY" />
      <concept id="1217252042208" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterDeclaration" flags="ng" index="1DS2jV">
        <reference id="1217252646389" name="key" index="1DUlNI" />
      </concept>
      <concept id="1217252428768" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterReferenceOperation" flags="nn" index="1DTwFV" />
      <concept id="1217413147516" name="jetbrains.mps.lang.plugin.structure.ActionParameter" flags="ngI" index="1NuADB">
        <child id="5538333046911298738" name="condition" index="1oa70y" />
      </concept>
    </language>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
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
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
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
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6" />
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
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots">
      <concept id="4079382982702596667" name="jetbrains.mps.baseLanguage.checkedDots.structure.CheckedDotExpression" flags="nn" index="2EnYce" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1213999117680" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldAccessOperation" flags="nn" index="2BZ7hE" />
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp" />
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ngI" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
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
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
    </language>
  </registry>
  <node concept="tC5Ba" id="7vO$jtdT50G">
    <property role="TrG5h" value="WatchesTreeActions" />
    <property role="3GE5qa" value="watches" />
    <node concept="ftmFs" id="7vO$jtdT50O" role="ftER_">
      <node concept="tCFHf" id="7vO$jtdT540" role="ftvYc">
        <ref role="tCJdB" node="7vO$jtdT511" resolve="AddWatchAction" />
      </node>
      <node concept="tCFHf" id="7vO$jtdT545" role="ftvYc">
        <ref role="tCJdB" node="7vO$jtdT52X" resolve="EditWatchAction" />
      </node>
      <node concept="tCFHf" id="7vO$jtdT547" role="ftvYc">
        <ref role="tCJdB" node="7vO$jtdT523" resolve="RemoveWatchAction" />
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="7vO$jtdT511">
    <property role="fJN8o" value="true" />
    <property role="1WHSii" value="New Watch..." />
    <property role="TrG5h" value="AddWatchAction" />
    <property role="72QZ$" value="true" />
    <property role="3GE5qa" value="watches" />
    <property role="2uzpH1" value="New Watch..." />
    <property role="1teQrl" value="true" />
    <property role="1rBW0U" value="true" />
    <node concept="1GtWCo" id="6S5fI02CGAp" role="3Uehp1">
      <node concept="10M0yZ" id="6XsdSphGV3i" role="1GtWoa">
        <ref role="1PxDUh" to="z2i8:~AllIcons$General" resolve="AllIcons.General" />
        <ref role="3cqZAo" to="z2i8:~AllIcons$General.Add" resolve="Add" />
      </node>
    </node>
    <node concept="tnohg" id="7vO$jtdT512" role="tncku">
      <node concept="3clFbS" id="7vO$jtdT513" role="2VODD2">
        <node concept="3cpWs8" id="2xODT92Ze2G" role="3cqZAp">
          <node concept="3cpWsn" id="2xODT92Ze2H" role="3cpWs9">
            <property role="TrG5h" value="evaluationProvider" />
            <node concept="3uibUv" id="2g7jLxixGvy" role="1tU5fm">
              <ref role="3uigEE" to="lt1n:3SnNvqCaJu1" resolve="IEvaluationProvider" />
            </node>
            <node concept="2YIFZM" id="2g7jLxixGvw" role="33vP2m">
              <ref role="1Pybhc" to="qiil:24OxoGwU3IV" resolve="DebugActionsUtil" />
              <ref role="37wK5l" to="qiil:24OxoGwU3Jh" resolve="getEvaluationProvider" />
              <node concept="tl45R" id="7vO$jtdT51W" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2xODT92Ze2L" role="3cqZAp">
          <node concept="3y3z36" id="2xODT92Ze2M" role="3clFbw">
            <node concept="37vLTw" id="3GM_nagT_5v" role="3uHU7B">
              <ref role="3cqZAo" node="2xODT92Ze2H" resolve="evaluationProvider" />
            </node>
            <node concept="10Nm6u" id="2xODT92Ze2O" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="2xODT92Ze2P" role="3clFbx">
            <node concept="3clFbF" id="2xODT92Ze2Q" role="3cqZAp">
              <node concept="2OqwBi" id="2xODT92Ze2R" role="3clFbG">
                <node concept="1eOMI4" id="2xODT92Ze2S" role="2Oq$k0">
                  <node concept="10QFUN" id="2xODT92Ze2T" role="1eOMHV">
                    <node concept="37vLTw" id="3GM_nagT_bZ" role="10QFUP">
                      <ref role="3cqZAo" node="2xODT92Ze2H" resolve="evaluationProvider" />
                    </node>
                    <node concept="3uibUv" id="3P335GbHvc7" role="10QFUM">
                      <ref role="3uigEE" to="anh2:_hR$3XCoTY" resolve="EvaluationProvider" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="2xODT92Ze2W" role="2OqNvi">
                  <ref role="37wK5l" to="anh2:_hR$3XCoYK" resolve="createWatch" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="tkhdA" id="7vO$jtdT51F" role="tmbBb">
      <node concept="3clFbS" id="7vO$jtdT51G" role="2VODD2">
        <node concept="3clFbF" id="2xODT92Ze3c" role="3cqZAp">
          <node concept="2OqwBi" id="2xODT92Ze3d" role="3clFbG">
            <node concept="2OqwBi" id="2xODT92Ze3e" role="2Oq$k0">
              <node concept="tl45R" id="7vO$jtdT51M" role="2Oq$k0" />
              <node concept="liA8E" id="2xODT92Ze3g" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="liA8E" id="2xODT92Ze3h" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setEnabled(boolean)" resolve="setEnabled" />
              <node concept="3y3z36" id="2xODT92Ze3i" role="37wK5m">
                <node concept="2YIFZM" id="11vMamAMMZc" role="3uHU7B">
                  <ref role="37wK5l" to="qiil:24OxoGwU3Jh" resolve="getEvaluationProvider" />
                  <ref role="1Pybhc" to="qiil:24OxoGwU3IV" resolve="DebugActionsUtil" />
                  <node concept="tl45R" id="11vMamAMMZd" role="37wK5m" />
                </node>
                <node concept="10Nm6u" id="2xODT92Ze3l" role="3uHU7w" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="7vO$jtdT523">
    <property role="fJN8o" value="true" />
    <property role="TrG5h" value="RemoveWatchAction" />
    <property role="72QZ$" value="true" />
    <property role="3GE5qa" value="watches" />
    <property role="2uzpH1" value="Remove Watch" />
    <property role="1teQrl" value="true" />
    <property role="1rBW0U" value="true" />
    <node concept="1GtWCo" id="6S5fI02CGAq" role="3Uehp1">
      <node concept="10M0yZ" id="6XsdSphGWcb" role="1GtWoa">
        <ref role="1PxDUh" to="z2i8:~AllIcons$General" resolve="AllIcons.General" />
        <ref role="3cqZAo" to="z2i8:~AllIcons$General.Remove" resolve="Remove" />
      </node>
    </node>
    <node concept="tnohg" id="7vO$jtdT524" role="tncku">
      <node concept="3clFbS" id="7vO$jtdT525" role="2VODD2">
        <node concept="3cpWs8" id="2xODT92Ze3n" role="3cqZAp">
          <node concept="3cpWsn" id="2xODT92Ze3o" role="3cpWs9">
            <property role="TrG5h" value="model" />
            <node concept="3uibUv" id="IYmOvnFeOG" role="1tU5fm">
              <ref role="3uigEE" to="i1lu:IYmOvnu1Zm" resolve="IEvaluationContainer" />
            </node>
            <node concept="2OqwBi" id="2xODT92Ze3q" role="33vP2m">
              <node concept="10M0yZ" id="2xODT92Ze4z" role="2Oq$k0">
                <ref role="3cqZAo" to="tbzr:3liY2UJHFk" resolve="EVALUATION_CONTAINER" />
                <ref role="1PxDUh" to="tbzr:6ra8WUbIhqG" resolve="EvaluationUi" />
              </node>
              <node concept="liA8E" id="2xODT92Ze3s" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~DataKey.getData(com.intellij.openapi.actionSystem.DataContext)" resolve="getData" />
                <node concept="2OqwBi" id="2xODT92Ze3t" role="37wK5m">
                  <node concept="tl45R" id="7vO$jtdT52m" role="2Oq$k0" />
                  <node concept="liA8E" id="2xODT92Ze3v" role="2OqNvi">
                    <ref role="37wK5l" to="qkt:~AnActionEvent.getDataContext()" resolve="getDataContext" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2xODT92Ze3w" role="3cqZAp">
          <node concept="3cpWsn" id="2xODT92Ze3x" role="3cpWs9">
            <property role="TrG5h" value="evaluationProvider" />
            <node concept="3uibUv" id="2g7jLxixGvz" role="1tU5fm">
              <ref role="3uigEE" to="lt1n:3SnNvqCaJu1" resolve="IEvaluationProvider" />
            </node>
            <node concept="2YIFZM" id="16Zg0snKUKJ" role="33vP2m">
              <ref role="1Pybhc" to="qiil:24OxoGwU3IV" resolve="DebugActionsUtil" />
              <ref role="37wK5l" to="qiil:24OxoGwU3Jh" resolve="getEvaluationProvider" />
              <node concept="tl45R" id="7vO$jtdT52o" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2xODT92Ze3_" role="3cqZAp">
          <node concept="3y3z36" id="2xODT92Ze3A" role="3clFbw">
            <node concept="37vLTw" id="3GM_nagTvwK" role="3uHU7B">
              <ref role="3cqZAo" node="2xODT92Ze3x" resolve="evaluationProvider" />
            </node>
            <node concept="10Nm6u" id="2xODT92Ze3C" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="2xODT92Ze3D" role="3clFbx">
            <node concept="3clFbF" id="2xODT92Ze3E" role="3cqZAp">
              <node concept="2OqwBi" id="2xODT92Ze3F" role="3clFbG">
                <node concept="1eOMI4" id="2xODT92Ze3G" role="2Oq$k0">
                  <node concept="10QFUN" id="2xODT92Ze3H" role="1eOMHV">
                    <node concept="37vLTw" id="3GM_nagT_Ro" role="10QFUP">
                      <ref role="3cqZAo" node="2xODT92Ze3x" resolve="evaluationProvider" />
                    </node>
                    <node concept="3uibUv" id="_hR$3XD3XU" role="10QFUM">
                      <ref role="3uigEE" to="anh2:_hR$3XCoTY" resolve="EvaluationProvider" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="2xODT92Ze3K" role="2OqNvi">
                  <ref role="37wK5l" to="anh2:_hR$3XCoZF" resolve="removeWatch" />
                  <node concept="37vLTw" id="3GM_nagTsRC" role="37wK5m">
                    <ref role="3cqZAo" node="2xODT92Ze3o" resolve="model" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="tkhdA" id="7vO$jtdT52$" role="tmbBb">
      <node concept="3clFbS" id="7vO$jtdT52_" role="2VODD2">
        <node concept="3clFbF" id="2xODT92Ze2Y" role="3cqZAp">
          <node concept="2OqwBi" id="2xODT92Ze2Z" role="3clFbG">
            <node concept="2OqwBi" id="2xODT92Ze30" role="2Oq$k0">
              <node concept="tl45R" id="7vO$jtdT52B" role="2Oq$k0" />
              <node concept="liA8E" id="2xODT92Ze32" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="liA8E" id="2xODT92Ze33" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setEnabled(boolean)" resolve="setEnabled" />
              <node concept="3y3z36" id="2xODT92Ze34" role="37wK5m">
                <node concept="2OqwBi" id="2xODT92Ze35" role="3uHU7B">
                  <node concept="10M0yZ" id="2xODT92Ze36" role="2Oq$k0">
                    <ref role="1PxDUh" to="tbzr:6ra8WUbIhqG" resolve="EvaluationUi" />
                    <ref role="3cqZAo" to="tbzr:3liY2UJHFk" resolve="EVALUATION_CONTAINER" />
                  </node>
                  <node concept="liA8E" id="2xODT92Ze37" role="2OqNvi">
                    <ref role="37wK5l" to="qkt:~DataKey.getData(com.intellij.openapi.actionSystem.DataContext)" resolve="getData" />
                    <node concept="2OqwBi" id="2xODT92Ze38" role="37wK5m">
                      <node concept="tl45R" id="7vO$jtdT52D" role="2Oq$k0" />
                      <node concept="liA8E" id="2xODT92Ze3a" role="2OqNvi">
                        <ref role="37wK5l" to="qkt:~AnActionEvent.getDataContext()" resolve="getDataContext" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="10Nm6u" id="2xODT92Ze3b" role="3uHU7w" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="7vO$jtdT52X">
    <property role="fJN8o" value="true" />
    <property role="TrG5h" value="EditWatchAction" />
    <property role="72QZ$" value="true" />
    <property role="3GE5qa" value="watches" />
    <property role="2uzpH1" value="Edit Watch" />
    <property role="1teQrl" value="true" />
    <property role="1rBW0U" value="true" />
    <node concept="1DS2jV" id="4pq21WIf4VE" role="1NuT2Z">
      <property role="TrG5h" value="ideaProject" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="4pq21WIf4VF" role="1oa70y" />
    </node>
    <node concept="tnohg" id="7vO$jtdT52Y" role="tncku">
      <node concept="3clFbS" id="7vO$jtdT52Z" role="2VODD2">
        <node concept="3cpWs8" id="2xODT92YH9w" role="3cqZAp">
          <node concept="3cpWsn" id="2xODT92YH9x" role="3cpWs9">
            <property role="TrG5h" value="container" />
            <node concept="3uibUv" id="IYmOvnF91b" role="1tU5fm">
              <ref role="3uigEE" to="i1lu:IYmOvnu1Zm" resolve="IEvaluationContainer" />
            </node>
            <node concept="2OqwBi" id="2xODT92YH9z" role="33vP2m">
              <node concept="10M0yZ" id="2xODT92YH9$" role="2Oq$k0">
                <ref role="1PxDUh" to="tbzr:6ra8WUbIhqG" resolve="EvaluationUi" />
                <ref role="3cqZAo" to="tbzr:3liY2UJHFk" resolve="EVALUATION_CONTAINER" />
              </node>
              <node concept="liA8E" id="2xODT92YH9_" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~DataKey.getData(com.intellij.openapi.actionSystem.DataContext)" resolve="getData" />
                <node concept="2OqwBi" id="2xODT92YH9A" role="37wK5m">
                  <node concept="tl45R" id="7vO$jtdT532" role="2Oq$k0" />
                  <node concept="liA8E" id="2xODT92YH9C" role="2OqNvi">
                    <ref role="37wK5l" to="qkt:~AnActionEvent.getDataContext()" resolve="getDataContext" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="IYmOvnI0Cy" role="3cqZAp">
          <node concept="3cpWsn" id="IYmOvnI0Cz" role="3cpWs9">
            <property role="TrG5h" value="session" />
            <node concept="3uibUv" id="IYmOvnI0Cr" role="1tU5fm">
              <ref role="3uigEE" to="d822:3L_P6qKH88z" resolve="DebugSession" />
            </node>
            <node concept="2OqwBi" id="IYmOvnI0C$" role="33vP2m">
              <node concept="10M0yZ" id="IYmOvnI0C_" role="2Oq$k0">
                <ref role="1PxDUh" to="tbzr:6ra8WUbIhqG" resolve="EvaluationUi" />
                <ref role="3cqZAo" to="tbzr:IYmOvnHhVX" resolve="DEBUG_SESSION" />
              </node>
              <node concept="liA8E" id="IYmOvnI0CA" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~DataKey.getData(com.intellij.openapi.actionSystem.DataContext)" resolve="getData" />
                <node concept="2OqwBi" id="IYmOvnI0CB" role="37wK5m">
                  <node concept="tl45R" id="IYmOvnI0CC" role="2Oq$k0" />
                  <node concept="liA8E" id="IYmOvnI0CD" role="2OqNvi">
                    <ref role="37wK5l" to="qkt:~AnActionEvent.getDataContext()" resolve="getDataContext" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="IYmOvnIc9h" role="3cqZAp">
          <node concept="22lmx$" id="IYmOvnIcoI" role="3clFbw">
            <node concept="3clFbC" id="IYmOvnIcyG" role="3uHU7w">
              <node concept="10Nm6u" id="IYmOvnIczf" role="3uHU7w" />
              <node concept="37vLTw" id="IYmOvnIcpo" role="3uHU7B">
                <ref role="3cqZAo" node="IYmOvnI0Cz" resolve="session" />
              </node>
            </node>
            <node concept="3clFbC" id="IYmOvnIcmI" role="3uHU7B">
              <node concept="37vLTw" id="IYmOvnIcbc" role="3uHU7B">
                <ref role="3cqZAo" node="2xODT92YH9x" resolve="container" />
              </node>
              <node concept="10Nm6u" id="IYmOvnIcna" role="3uHU7w" />
            </node>
          </node>
          <node concept="3clFbS" id="IYmOvnIc9j" role="3clFbx">
            <node concept="3cpWs6" id="IYmOvnIczx" role="3cqZAp" />
          </node>
        </node>
        <node concept="3clFbF" id="2xODT92YH9F" role="3cqZAp">
          <node concept="2OqwBi" id="2xODT92YH9G" role="3clFbG">
            <node concept="2OqwBi" id="2xODT92YH9K" role="2Oq$k0">
              <node concept="liA8E" id="2xODT92YH9O" role="2OqNvi">
                <ref role="37wK5l" to="d822:3L_P6qKH8f1" resolve="getEvaluationProvider" />
              </node>
              <node concept="37vLTw" id="IYmOvnI19Y" role="2Oq$k0">
                <ref role="3cqZAo" node="IYmOvnI0Cz" resolve="session" />
              </node>
            </node>
            <node concept="liA8E" id="2xODT92YH9P" role="2OqNvi">
              <ref role="37wK5l" to="anh2:_hR$3XCoXq" resolve="showEditWatchDialog" />
              <node concept="2OqwBi" id="4pq21WIf9RG" role="37wK5m">
                <node concept="2WthIp" id="4pq21WIf9RJ" role="2Oq$k0" />
                <node concept="1DTwFV" id="4pq21WIf9RL" role="2OqNvi">
                  <ref role="2WH_rO" node="4pq21WIf4VE" resolve="ideaProject" />
                </node>
              </node>
              <node concept="37vLTw" id="3GM_nagTwwV" role="37wK5m">
                <ref role="3cqZAo" node="2xODT92YH9x" resolve="container" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="tkhdA" id="7vO$jtdT53e" role="tmbBb">
      <node concept="3clFbS" id="7vO$jtdT53f" role="2VODD2">
        <node concept="3clFbF" id="2xODT92YHac" role="3cqZAp">
          <node concept="2OqwBi" id="2xODT92YHad" role="3clFbG">
            <node concept="2OqwBi" id="2xODT92YHae" role="2Oq$k0">
              <node concept="tl45R" id="7vO$jtdT53h" role="2Oq$k0" />
              <node concept="liA8E" id="2xODT92YHag" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="liA8E" id="2xODT92YHah" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setVisible(boolean)" resolve="setVisible" />
              <node concept="1Wc70l" id="IYmOvnHXSJ" role="37wK5m">
                <node concept="3y3z36" id="IYmOvnHZG7" role="3uHU7w">
                  <node concept="10Nm6u" id="IYmOvnHZOp" role="3uHU7w" />
                  <node concept="2OqwBi" id="IYmOvnHY3$" role="3uHU7B">
                    <node concept="10M0yZ" id="IYmOvnHY3_" role="2Oq$k0">
                      <ref role="1PxDUh" to="tbzr:6ra8WUbIhqG" resolve="EvaluationUi" />
                      <ref role="3cqZAo" to="tbzr:IYmOvnHhVX" resolve="DEBUG_SESSION" />
                    </node>
                    <node concept="liA8E" id="IYmOvnHY3A" role="2OqNvi">
                      <ref role="37wK5l" to="qkt:~DataKey.getData(com.intellij.openapi.actionSystem.DataContext)" resolve="getData" />
                      <node concept="2OqwBi" id="IYmOvnHY3B" role="37wK5m">
                        <node concept="tl45R" id="IYmOvnHY3C" role="2Oq$k0" />
                        <node concept="liA8E" id="IYmOvnHY3D" role="2OqNvi">
                          <ref role="37wK5l" to="qkt:~AnActionEvent.getDataContext()" resolve="getDataContext" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="2xODT92YHai" role="3uHU7B">
                  <node concept="2OqwBi" id="2xODT92YHak" role="3uHU7B">
                    <node concept="10M0yZ" id="2xODT92YHal" role="2Oq$k0">
                      <ref role="1PxDUh" to="tbzr:6ra8WUbIhqG" resolve="EvaluationUi" />
                      <ref role="3cqZAo" to="tbzr:3liY2UJHFk" resolve="EVALUATION_CONTAINER" />
                    </node>
                    <node concept="liA8E" id="2xODT92YHam" role="2OqNvi">
                      <ref role="37wK5l" to="qkt:~DataKey.getData(com.intellij.openapi.actionSystem.DataContext)" resolve="getData" />
                      <node concept="2OqwBi" id="2xODT92YHan" role="37wK5m">
                        <node concept="tl45R" id="7vO$jtdT53j" role="2Oq$k0" />
                        <node concept="liA8E" id="2xODT92YHap" role="2OqNvi">
                          <ref role="37wK5l" to="qkt:~AnActionEvent.getDataContext()" resolve="getDataContext" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="2xODT92YHaj" role="3uHU7w" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="9BnSX" id="372dQgtzqiQ">
    <property role="9BnSZ" value="just.a.mock.descriptor" />
    <property role="9BnSP" value="url" />
    <property role="9BnSL" value="description" />
    <property role="9BnSM" value="vendor" />
    <property role="TrG5h" value="name" />
    <property role="9BnSO" value="261.1" />
    <property role="9BnSK" value="version" />
  </node>
  <node concept="tC5Ba" id="7V1YZ6sOyPD">
    <property role="TrG5h" value="WatchesToolbarActions" />
    <property role="3GE5qa" value="watches" />
    <node concept="ftmFs" id="7V1YZ6sOyPF" role="ftER_">
      <node concept="tCFHf" id="7V1YZ6sOyPG" role="ftvYc">
        <ref role="tCJdB" node="7vO$jtdT511" resolve="AddWatchAction" />
      </node>
      <node concept="tCFHf" id="7V1YZ6sOyPI" role="ftvYc">
        <ref role="tCJdB" node="7vO$jtdT523" resolve="RemoveWatchAction" />
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="7HIptzC9jpY">
    <property role="TrG5h" value="CopyValueAction" />
    <property role="2uzpH1" value="Copy Value" />
    <property role="1teQrl" value="true" />
    <property role="1rBW0U" value="true" />
    <node concept="tnohg" id="7HIptzC9jpZ" role="tncku">
      <node concept="3clFbS" id="7HIptzC9jq0" role="2VODD2">
        <node concept="3cpWs8" id="7HIptzC9jrr" role="3cqZAp">
          <node concept="3cpWsn" id="7HIptzC9jrs" role="3cpWs9">
            <property role="TrG5h" value="value" />
            <node concept="3uibUv" id="7HIptzC9jrt" role="1tU5fm">
              <ref role="3uigEE" to="pry4:3SnNvqCaJHZ" resolve="IValue" />
            </node>
            <node concept="2OqwBi" id="7HIptzC9jru" role="33vP2m">
              <node concept="10M0yZ" id="7HIptzC9jrv" role="2Oq$k0">
                <ref role="3cqZAo" to="choc:ndZCfAIV0g" resolve="MPS_DEBUGGER_VALUE" />
                <ref role="1PxDUh" to="choc:3SnNvqCbxfw" resolve="VariablesTree" />
              </node>
              <node concept="liA8E" id="7HIptzC9jrw" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~DataKey.getData(com.intellij.openapi.actionSystem.DataContext)" resolve="getData" />
                <node concept="2OqwBi" id="7HIptzC9jrx" role="37wK5m">
                  <node concept="tl45R" id="7HIptzC9jry" role="2Oq$k0" />
                  <node concept="liA8E" id="7HIptzC9jrz" role="2OqNvi">
                    <ref role="37wK5l" to="qkt:~AnActionEvent.getDataContext()" resolve="getDataContext" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7HIptzC9jrN" role="3cqZAp">
          <node concept="3clFbS" id="7HIptzC9jrO" role="3clFbx">
            <node concept="3cpWs6" id="7HIptzC9js7" role="3cqZAp" />
          </node>
          <node concept="22lmx$" id="7HIptzC9jrU" role="3clFbw">
            <node concept="3clFbC" id="7HIptzC9jrV" role="3uHU7B">
              <node concept="37vLTw" id="3GM_nagTtEm" role="3uHU7B">
                <ref role="3cqZAo" node="7HIptzC9jrs" resolve="value" />
              </node>
              <node concept="10Nm6u" id="7HIptzC9jrX" role="3uHU7w" />
            </node>
            <node concept="3fqX7Q" id="7HIptzC9js3" role="3uHU7w">
              <node concept="2ZW3vV" id="7HIptzC9js4" role="3fr31v">
                <node concept="3uibUv" id="7HIptzC9js5" role="2ZW6by">
                  <ref role="3uigEE" to="y3sp:2Y$mRnIClHy" resolve="JavaValue" />
                </node>
                <node concept="37vLTw" id="3GM_nagTzoq" role="2ZW6bz">
                  <ref role="3cqZAo" node="7HIptzC9jrs" resolve="value" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="PEcGPiDcQI" role="3cqZAp" />
        <node concept="3cpWs8" id="5N5J$YBhVKc" role="3cqZAp">
          <node concept="3cpWsn" id="5N5J$YBhVKd" role="3cpWs9">
            <property role="TrG5h" value="uiState" />
            <node concept="3uibUv" id="5N5J$YBhVK7" role="1tU5fm">
              <ref role="3uigEE" to="1l1h:3SnNvqCaJjE" resolve="AbstractUiState" />
            </node>
            <node concept="2EnYce" id="5N5J$YBi2Ac" role="33vP2m">
              <node concept="2YIFZM" id="5N5J$YBi24y" role="2Oq$k0">
                <ref role="1Pybhc" to="qiil:24OxoGwU3IV" resolve="DebugActionsUtil" />
                <ref role="37wK5l" to="qiil:24OxoGwU3J1" resolve="getDebugSession" />
                <node concept="tl45R" id="5N5J$YBi24z" role="37wK5m" />
              </node>
              <node concept="liA8E" id="5N5J$YBhVKf" role="2OqNvi">
                <ref role="37wK5l" to="1l1h:3SnNvqCaKcb" resolve="getUiState" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5N5J$YBi1Aw" role="3cqZAp">
          <node concept="3clFbS" id="5N5J$YBi1Az" role="3clFbx">
            <node concept="3cpWs6" id="5N5J$YBi1Y5" role="3cqZAp" />
          </node>
          <node concept="22lmx$" id="5N5J$YBi1Yr" role="3clFbw">
            <node concept="3clFbC" id="5N5J$YBi24k" role="3uHU7B">
              <node concept="10Nm6u" id="5N5J$YBi24t" role="3uHU7w" />
              <node concept="37vLTw" id="5N5J$YBi1YE" role="3uHU7B">
                <ref role="3cqZAo" node="5N5J$YBhVKd" resolve="uiState" />
              </node>
            </node>
            <node concept="3fqX7Q" id="5N5J$YBi1Uy" role="3uHU7w">
              <node concept="2ZW3vV" id="5N5J$YBi1U$" role="3fr31v">
                <node concept="3uibUv" id="5N5J$YBi1U_" role="2ZW6by">
                  <ref role="3uigEE" to="a3o9:2Y$mRnICm6b" resolve="JavaUiState" />
                </node>
                <node concept="37vLTw" id="5N5J$YBi1UA" role="2ZW6bz">
                  <ref role="3cqZAo" node="5N5J$YBhVKd" resolve="uiState" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5N5J$YBiu9Q" role="3cqZAp">
          <node concept="3cpWsn" id="5N5J$YBiu9R" role="3cpWs9">
            <property role="TrG5h" value="javaUiState" />
            <node concept="3uibUv" id="5N5J$YBiu9L" role="1tU5fm">
              <ref role="3uigEE" to="a3o9:2Y$mRnICm6b" resolve="JavaUiState" />
            </node>
            <node concept="10QFUN" id="5N5J$YBiu9S" role="33vP2m">
              <node concept="3uibUv" id="5N5J$YBiu9T" role="10QFUM">
                <ref role="3uigEE" to="a3o9:2Y$mRnICm6b" resolve="JavaUiState" />
              </node>
              <node concept="37vLTw" id="5N5J$YBiu9U" role="10QFUP">
                <ref role="3cqZAo" node="5N5J$YBhVKd" resolve="uiState" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="PEcGPiDo5j" role="3cqZAp" />
        <node concept="3cpWs8" id="PEcGPiDo1L" role="3cqZAp">
          <node concept="3cpWsn" id="PEcGPiDo1M" role="3cpWs9">
            <property role="TrG5h" value="thread" />
            <node concept="3uibUv" id="PEcGPiDo1N" role="1tU5fm">
              <ref role="3uigEE" to="frkw:~ThreadReference" resolve="ThreadReference" />
            </node>
            <node concept="2EnYce" id="PEcGPiDo5g" role="33vP2m">
              <node concept="2OqwBi" id="5N5J$YBivZ$" role="2Oq$k0">
                <node concept="37vLTw" id="5N5J$YBiujP" role="2Oq$k0">
                  <ref role="3cqZAo" node="5N5J$YBiu9R" resolve="javaUiState" />
                </node>
                <node concept="liA8E" id="5N5J$YBiwTf" role="2OqNvi">
                  <ref role="37wK5l" to="a3o9:2Y$mRnICm6u" resolve="getThread" />
                </node>
              </node>
              <node concept="liA8E" id="PEcGPiDo1V" role="2OqNvi">
                <ref role="37wK5l" to="y3sp:2Y$mRnIClT3" resolve="getThread" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="PEcGPiDo1Y" role="3cqZAp">
          <node concept="3clFbS" id="PEcGPiDo1Z" role="3clFbx">
            <node concept="3cpWs6" id="PEcGPiDo2q" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="PEcGPiDo2n" role="3clFbw">
            <node concept="37vLTw" id="3GM_nagT$y1" role="3uHU7B">
              <ref role="3cqZAo" node="PEcGPiDo1M" resolve="thread" />
            </node>
            <node concept="10Nm6u" id="PEcGPiDo2p" role="3uHU7w" />
          </node>
        </node>
        <node concept="3clFbH" id="PEcGPiDbFq" role="3cqZAp" />
        <node concept="3clFbF" id="3zmidk0pck0" role="3cqZAp">
          <node concept="2OqwBi" id="3zmidk0pck2" role="3clFbG">
            <node concept="liA8E" id="3zmidk0pck3" role="2OqNvi">
              <ref role="37wK5l" to="1l1h:$msJHFHYEn" resolve="invokeEvaluation" />
              <node concept="1bVj0M" id="3zmidk0pck4" role="37wK5m">
                <node concept="3clFbS" id="3zmidk0pck5" role="1bW5cS">
                  <node concept="3cpWs8" id="3zmidk0pdpy" role="3cqZAp">
                    <node concept="3cpWsn" id="3zmidk0pdp_" role="3cpWs9">
                      <property role="TrG5h" value="result" />
                      <node concept="17QB3L" id="3zmidk0pdpw" role="1tU5fm" />
                      <node concept="2OqwBi" id="3zmidk0pdDn" role="33vP2m">
                        <node concept="2YIFZM" id="3zmidk0pdDo" role="2Oq$k0">
                          <ref role="1Pybhc" to="qgwr:46sxDGTfnGj" resolve="EvaluationUtils" />
                          <ref role="37wK5l" to="qgwr:6w0uxLH27wx" resolve="getInstance" />
                        </node>
                        <node concept="liA8E" id="3zmidk0pdDp" role="2OqNvi">
                          <ref role="37wK5l" to="qgwr:PEcGPiCWhP" resolve="getStringPresentation" />
                          <node concept="2OqwBi" id="3zmidk0pdDq" role="37wK5m">
                            <node concept="2OqwBi" id="3zmidk0pdDr" role="2Oq$k0">
                              <node concept="1eOMI4" id="3zmidk0pdDs" role="2Oq$k0">
                                <node concept="10QFUN" id="3zmidk0pdDt" role="1eOMHV">
                                  <node concept="3uibUv" id="3zmidk0pdDu" role="10QFUM">
                                    <ref role="3uigEE" to="y3sp:2Y$mRnIClHy" resolve="JavaValue" />
                                  </node>
                                  <node concept="37vLTw" id="3zmidk0pdDv" role="10QFUP">
                                    <ref role="3cqZAo" node="7HIptzC9jrs" resolve="value" />
                                  </node>
                                </node>
                              </node>
                              <node concept="liA8E" id="3zmidk0pdDw" role="2OqNvi">
                                <ref role="37wK5l" to="y3sp:2Y$mRnICm5S" resolve="getValue" />
                              </node>
                            </node>
                            <node concept="liA8E" id="3zmidk0pdDx" role="2OqNvi">
                              <ref role="37wK5l" to="dcbi:46sxDGTfnwJ" resolve="getJDIValue" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="3zmidk0pdDy" role="37wK5m">
                            <ref role="3cqZAo" node="PEcGPiDo1M" resolve="thread" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="63zEgti0q34" role="3cqZAp">
                    <node concept="3clFbS" id="63zEgti0q37" role="3clFbx">
                      <node concept="3clFbF" id="12t2FqrC67S" role="3cqZAp">
                        <node concept="2YIFZM" id="12t2FqrC6mt" role="3clFbG">
                          <ref role="37wK5l" to="dp1x:5tGs5KqKiI4" resolve="copyTextToClipboard" />
                          <ref role="1Pybhc" to="dp1x:5tGs5KqKfGH" resolve="CopyPasteUtil" />
                          <node concept="37vLTw" id="47Hi8V_1FQB" role="37wK5m">
                            <ref role="3cqZAo" node="3zmidk0pdp_" resolve="result" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="47Hi8V_1FOz" role="3clFbw">
                      <node concept="37vLTw" id="47Hi8V_1FO$" role="2Oq$k0">
                        <ref role="3cqZAo" node="3zmidk0pdp_" resolve="result" />
                      </node>
                      <node concept="17RvpY" id="7_cOjZe5bCV" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="3zmidk0pckj" role="2Oq$k0">
              <ref role="3cqZAo" node="5N5J$YBiu9R" resolve="javaUiState" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="tkhdA" id="7HIptzC9jq1" role="tmbBb">
      <node concept="3clFbS" id="7HIptzC9jq2" role="2VODD2">
        <node concept="3cpWs8" id="7HIptzC9jqS" role="3cqZAp">
          <node concept="3cpWsn" id="7HIptzC9jqT" role="3cpWs9">
            <property role="TrG5h" value="value" />
            <node concept="3uibUv" id="7HIptzC9jqU" role="1tU5fm">
              <ref role="3uigEE" to="pry4:3SnNvqCaJHZ" resolve="IValue" />
            </node>
            <node concept="2OqwBi" id="7HIptzC9jqV" role="33vP2m">
              <node concept="10M0yZ" id="7HIptzC9jqW" role="2Oq$k0">
                <ref role="3cqZAo" to="choc:ndZCfAIV0g" resolve="MPS_DEBUGGER_VALUE" />
                <ref role="1PxDUh" to="choc:3SnNvqCbxfw" resolve="VariablesTree" />
              </node>
              <node concept="liA8E" id="7HIptzC9jqX" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~DataKey.getData(com.intellij.openapi.actionSystem.DataContext)" resolve="getData" />
                <node concept="2OqwBi" id="7HIptzC9jqY" role="37wK5m">
                  <node concept="tl45R" id="7HIptzC9jqZ" role="2Oq$k0" />
                  <node concept="liA8E" id="7HIptzC9jr0" role="2OqNvi">
                    <ref role="37wK5l" to="qkt:~AnActionEvent.getDataContext()" resolve="getDataContext" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7HIptzC9jq3" role="3cqZAp">
          <node concept="2OqwBi" id="7HIptzC9jqG" role="3clFbG">
            <node concept="2OqwBi" id="7HIptzC9jql" role="2Oq$k0">
              <node concept="tl45R" id="7HIptzC9jq4" role="2Oq$k0" />
              <node concept="liA8E" id="7HIptzC9jqr" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="liA8E" id="7HIptzC9jqM" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setVisible(boolean)" resolve="setVisible" />
              <node concept="1Wc70l" id="PEcGPiDr9f" role="37wK5m">
                <node concept="1Wc70l" id="7HIptzC9jrj" role="3uHU7B">
                  <node concept="3y3z36" id="ndZCfAIV4L" role="3uHU7B">
                    <node concept="37vLTw" id="3GM_nagT_cf" role="3uHU7B">
                      <ref role="3cqZAo" node="7HIptzC9jqT" resolve="value" />
                    </node>
                    <node concept="10Nm6u" id="ndZCfAIV4R" role="3uHU7w" />
                  </node>
                  <node concept="2ZW3vV" id="7HIptzC9jrn" role="3uHU7w">
                    <node concept="3uibUv" id="7HIptzC9jrq" role="2ZW6by">
                      <ref role="3uigEE" to="y3sp:2Y$mRnIClHy" resolve="JavaValue" />
                    </node>
                    <node concept="37vLTw" id="3GM_nagT$AC" role="2ZW6bz">
                      <ref role="3cqZAo" node="7HIptzC9jqT" resolve="value" />
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="PEcGPiDr9j" role="3uHU7w">
                  <node concept="2YIFZM" id="PEcGPiDr9k" role="3uHU7B">
                    <ref role="1Pybhc" to="qiil:24OxoGwU3IV" resolve="DebugActionsUtil" />
                    <ref role="37wK5l" to="qiil:24OxoGwU3Jh" resolve="getEvaluationProvider" />
                    <node concept="tl45R" id="PEcGPiDr9l" role="37wK5m" />
                  </node>
                  <node concept="10Nm6u" id="PEcGPiDr9m" role="3uHU7w" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="405bI6fUZ5o">
    <property role="TrG5h" value="JavaWatchableNodeActions" />
    <node concept="ftmFs" id="405bI6fUZ5q" role="ftER_">
      <node concept="tCFHf" id="405bI6fUZ5r" role="ftvYc">
        <ref role="tCJdB" node="7HIptzC9jpY" resolve="CopyValueAction" />
      </node>
      <node concept="tCFHf" id="7m7_Odlfxy1" role="ftvYc">
        <ref role="tCJdB" node="4fC4L_vjdcS" resolve="CopyStackTraceToClipboard" />
      </node>
    </node>
    <node concept="tT9cl" id="405bI6fUZ5s" role="2f5YQi">
      <ref role="tU$_T" to="1rri:7vO$jtdT3xe" resolve="AbstractWatchableNodeActions" />
      <ref role="2f8Tey" to="1rri:7HIptzC9jpX" resolve="extentions" />
    </node>
  </node>
  <node concept="sE7Ow" id="4fC4L_vjdcS">
    <property role="fJN8o" value="true" />
    <property role="TrG5h" value="CopyStackTraceToClipboard" />
    <property role="2uzpH1" value="Copy Stacktrace to Clipboard" />
    <property role="1teQrl" value="true" />
    <property role="1rBW0U" value="true" />
    <node concept="tnohg" id="4fC4L_vjdcT" role="tncku">
      <node concept="3clFbS" id="4fC4L_vjdcU" role="2VODD2">
        <node concept="3cpWs8" id="4fC4L_vjdgZ" role="3cqZAp">
          <node concept="3cpWsn" id="4fC4L_vjdh0" role="3cpWs9">
            <property role="TrG5h" value="trowable" />
            <node concept="3uibUv" id="4fC4L_vjdh1" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
            </node>
            <node concept="2OqwBi" id="4fC4L_vjdh2" role="33vP2m">
              <node concept="10M0yZ" id="4fC4L_vjdh3" role="2Oq$k0">
                <ref role="3cqZAo" to="qq03:~MPSCommonDataKeys.EXCEPTION" resolve="EXCEPTION" />
                <ref role="1PxDUh" to="qq03:~MPSCommonDataKeys" resolve="MPSCommonDataKeys" />
              </node>
              <node concept="liA8E" id="4fC4L_vjdh4" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~DataKey.getData(com.intellij.openapi.actionSystem.DataContext)" resolve="getData" />
                <node concept="2OqwBi" id="4fC4L_vjdh5" role="37wK5m">
                  <node concept="tl45R" id="4fC4L_vjdh6" role="2Oq$k0" />
                  <node concept="liA8E" id="4fC4L_vjdh7" role="2OqNvi">
                    <ref role="37wK5l" to="qkt:~AnActionEvent.getDataContext()" resolve="getDataContext" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4fC4L_vjdhb" role="3cqZAp">
          <node concept="3clFbS" id="4fC4L_vjdhc" role="3clFbx">
            <node concept="3cpWs6" id="4fC4L_vjdh_" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="4fC4L_vjdhx" role="3clFbw">
            <node concept="10Nm6u" id="4fC4L_vjdh$" role="3uHU7w" />
            <node concept="37vLTw" id="3GM_nagTrrU" role="3uHU7B">
              <ref role="3cqZAo" node="4fC4L_vjdh0" resolve="trowable" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4fC4L_vjdhB" role="3cqZAp">
          <node concept="2OqwBi" id="4fC4L_vjdhT" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTBrN" role="2Oq$k0">
              <ref role="3cqZAo" node="4fC4L_vjdh0" resolve="trowable" />
            </node>
            <node concept="liA8E" id="4fC4L_vjdhZ" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Throwable.getStackTrace()" resolve="getStackTrace" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5pc4dNR1KOt" role="3cqZAp" />
        <node concept="3cpWs8" id="2xODT92Zh3G" role="3cqZAp">
          <node concept="3cpWsn" id="2xODT92Zh3H" role="3cpWs9">
            <property role="TrG5h" value="writer" />
            <node concept="3uibUv" id="2xODT92Zh3I" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~StringWriter" resolve="StringWriter" />
            </node>
            <node concept="2ShNRf" id="2xODT92Zh3J" role="33vP2m">
              <node concept="1pGfFk" id="2xODT92Zh3K" role="2ShVmc">
                <ref role="37wK5l" to="guwi:~StringWriter.&lt;init&gt;()" resolve="StringWriter" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2xODT92Zh3L" role="3cqZAp">
          <node concept="2OqwBi" id="2xODT92Zh3M" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTxLu" role="2Oq$k0">
              <ref role="3cqZAo" node="4fC4L_vjdh0" resolve="trowable" />
            </node>
            <node concept="liA8E" id="2xODT92Zh3O" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Throwable.printStackTrace(java.io.PrintWriter)" resolve="printStackTrace" />
              <node concept="2ShNRf" id="2xODT92Zh3P" role="37wK5m">
                <node concept="1pGfFk" id="2xODT92Zh3Q" role="2ShVmc">
                  <ref role="37wK5l" to="guwi:~PrintWriter.&lt;init&gt;(java.io.Writer)" resolve="PrintWriter" />
                  <node concept="37vLTw" id="3GM_nagTB0x" role="37wK5m">
                    <ref role="3cqZAo" node="2xODT92Zh3H" resolve="writer" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4fC4L_vjdkU" role="3cqZAp">
          <node concept="2YIFZM" id="4fC4L_vjdkW" role="3clFbG">
            <ref role="37wK5l" to="dp1x:5tGs5KqKiI4" resolve="copyTextToClipboard" />
            <ref role="1Pybhc" to="dp1x:5tGs5KqKfGH" resolve="CopyPasteUtil" />
            <node concept="2OqwBi" id="4fC4L_vjdle" role="37wK5m">
              <node concept="37vLTw" id="3GM_nagTArB" role="2Oq$k0">
                <ref role="3cqZAo" node="2xODT92Zh3H" resolve="writer" />
              </node>
              <node concept="liA8E" id="4fC4L_vjdlk" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~StringWriter.toString()" resolve="toString" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="tkhdA" id="4fC4L_vjdd3" role="tmbBb">
      <node concept="3clFbS" id="4fC4L_vjdd4" role="2VODD2">
        <node concept="3clFbF" id="4fC4L_vjdg5" role="3cqZAp">
          <node concept="2OqwBi" id="4fC4L_vjdgH" role="3clFbG">
            <node concept="2OqwBi" id="4fC4L_vjdgn" role="2Oq$k0">
              <node concept="tl45R" id="4fC4L_vjdg6" role="2Oq$k0" />
              <node concept="liA8E" id="4fC4L_vjdgs" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="liA8E" id="4fC4L_vjdgN" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setVisible(boolean)" resolve="setVisible" />
              <node concept="3y3z36" id="4fC4L_vjdfX" role="37wK5m">
                <node concept="10Nm6u" id="4fC4L_vjdg3" role="3uHU7w" />
                <node concept="2OqwBi" id="4fC4L_vjdf8" role="3uHU7B">
                  <node concept="10M0yZ" id="4fC4L_vjdeR" role="2Oq$k0">
                    <ref role="3cqZAo" to="qq03:~MPSCommonDataKeys.EXCEPTION" resolve="EXCEPTION" />
                    <ref role="1PxDUh" to="qq03:~MPSCommonDataKeys" resolve="MPSCommonDataKeys" />
                  </node>
                  <node concept="liA8E" id="4fC4L_vjdfe" role="2OqNvi">
                    <ref role="37wK5l" to="qkt:~DataKey.getData(com.intellij.openapi.actionSystem.DataContext)" resolve="getData" />
                    <node concept="2OqwBi" id="4fC4L_vjdfy" role="37wK5m">
                      <node concept="tl45R" id="4fC4L_vjdff" role="2Oq$k0" />
                      <node concept="liA8E" id="4fC4L_vjdfF" role="2OqNvi">
                        <ref role="37wK5l" to="qkt:~AnActionEvent.getDataContext()" resolve="getDataContext" />
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
  <node concept="2DaZZR" id="6dAEaqvbBiG" />
  <node concept="tC5Ba" id="3E$bVnPd5AL">
    <property role="TrG5h" value="ViewAs_Group" />
    <property role="1XlLyE" value="true" />
    <property role="2f7twF" value="View As" />
    <property role="22ra45" value="true" />
    <node concept="2OiAzN" id="3E$bVnPdal$" role="ftER_">
      <node concept="2OiTZ2" id="3E$bVnPdal_" role="2Oj6PV">
        <node concept="3clFbS" id="3E$bVnPdalA" role="2VODD2">
          <node concept="3cpWs8" id="3E$bVnPdc5A" role="3cqZAp">
            <node concept="3cpWsn" id="3E$bVnPdc5B" role="3cpWs9">
              <property role="TrG5h" value="value" />
              <node concept="3uibUv" id="3E$bVnPdc5C" role="1tU5fm">
                <ref role="3uigEE" to="pry4:3SnNvqCaJHZ" resolve="IValue" />
              </node>
              <node concept="2OqwBi" id="3E$bVnPdc5D" role="33vP2m">
                <node concept="10M0yZ" id="3E$bVnPdc5E" role="2Oq$k0">
                  <ref role="1PxDUh" to="choc:3SnNvqCbxfw" resolve="VariablesTree" />
                  <ref role="3cqZAo" to="choc:ndZCfAIV0g" resolve="MPS_DEBUGGER_VALUE" />
                </node>
                <node concept="liA8E" id="3E$bVnPdc5F" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~DataKey.getData(com.intellij.openapi.actionSystem.DataContext)" resolve="getData" />
                  <node concept="2OqwBi" id="3E$bVnPdc5G" role="37wK5m">
                    <node concept="tl45R" id="3E$bVnPdc5H" role="2Oq$k0" />
                    <node concept="liA8E" id="3E$bVnPdc5I" role="2OqNvi">
                      <ref role="37wK5l" to="qkt:~AnActionEvent.getDataContext()" resolve="getDataContext" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="3E$bVnPdiVE" role="3cqZAp">
            <node concept="3clFbS" id="3E$bVnPdiVH" role="3clFbx">
              <node concept="3clFbF" id="3E$bVnPdc5J" role="3cqZAp">
                <node concept="2OqwBi" id="3E$bVnPdc5K" role="3clFbG">
                  <node concept="2OqwBi" id="3E$bVnPdc5L" role="2Oq$k0">
                    <node concept="tl45R" id="3E$bVnPdc5M" role="2Oq$k0" />
                    <node concept="liA8E" id="3E$bVnPdc5N" role="2OqNvi">
                      <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
                    </node>
                  </node>
                  <node concept="liA8E" id="3E$bVnPdc5O" role="2OqNvi">
                    <ref role="37wK5l" to="qkt:~Presentation.setVisible(boolean)" resolve="setVisible" />
                    <node concept="3clFbT" id="3E$bVnPdj8J" role="37wK5m">
                      <property role="3clFbU" value="false" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="3E$bVnPdj7G" role="3cqZAp" />
            </node>
            <node concept="22lmx$" id="3E$bVnPdj3N" role="3clFbw">
              <node concept="3fqX7Q" id="3E$bVnPdj3Z" role="3uHU7w">
                <node concept="2ZW3vV" id="3E$bVnPdc5T" role="3fr31v">
                  <node concept="3uibUv" id="3E$bVnPdc5U" role="2ZW6by">
                    <ref role="3uigEE" to="y3sp:2Y$mRnIClP8" resolve="ValueWrapper" />
                  </node>
                  <node concept="37vLTw" id="3E$bVnPdc5V" role="2ZW6bz">
                    <ref role="3cqZAo" node="3E$bVnPdc5B" resolve="value" />
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="3E$bVnPdj1f" role="3uHU7B">
                <node concept="37vLTw" id="3E$bVnPdiX_" role="3uHU7B">
                  <ref role="3cqZAo" node="3E$bVnPdc5B" resolve="value" />
                </node>
                <node concept="10Nm6u" id="3E$bVnPdj1m" role="3uHU7w" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="63zEgthY5aO" role="3cqZAp">
            <node concept="3cpWsn" id="63zEgthY5aP" role="3cpWs9">
              <property role="TrG5h" value="debugSession" />
              <node concept="3uibUv" id="63zEgthY5aQ" role="1tU5fm">
                <ref role="3uigEE" to="1l1h:3SnNvqCaJaG" resolve="AbstractDebugSession" />
              </node>
              <node concept="2YIFZM" id="63zEgthY5aR" role="33vP2m">
                <ref role="37wK5l" to="qiil:24OxoGwU3J1" resolve="getDebugSession" />
                <ref role="1Pybhc" to="qiil:24OxoGwU3IV" resolve="DebugActionsUtil" />
                <node concept="tl45R" id="5sUuz_fHgca" role="37wK5m" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="63zEgthY5aT" role="3cqZAp">
            <node concept="3clFbS" id="63zEgthY5aU" role="3clFbx">
              <node concept="3clFbF" id="63zEgthY5lg" role="3cqZAp">
                <node concept="2OqwBi" id="63zEgthY5lh" role="3clFbG">
                  <node concept="2OqwBi" id="63zEgthY5li" role="2Oq$k0">
                    <node concept="tl45R" id="63zEgthY5lj" role="2Oq$k0" />
                    <node concept="liA8E" id="63zEgthY5lk" role="2OqNvi">
                      <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
                    </node>
                  </node>
                  <node concept="liA8E" id="63zEgthY5ll" role="2OqNvi">
                    <ref role="37wK5l" to="qkt:~Presentation.setVisible(boolean)" resolve="setVisible" />
                    <node concept="3clFbT" id="63zEgthY5lm" role="37wK5m">
                      <property role="3clFbU" value="false" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="63zEgthY5aV" role="3cqZAp" />
            </node>
            <node concept="3clFbC" id="63zEgthY5aW" role="3clFbw">
              <node concept="10Nm6u" id="63zEgthY5aX" role="3uHU7w" />
              <node concept="37vLTw" id="63zEgthY5aY" role="3uHU7B">
                <ref role="3cqZAo" node="63zEgthY5aP" resolve="debugSession" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="63zEgthY6Mi" role="3cqZAp" />
          <node concept="3cpWs8" id="3E$bVnPdcvR" role="3cqZAp">
            <node concept="3cpWsn" id="3E$bVnPdcvS" role="3cpWs9">
              <property role="TrG5h" value="factories" />
              <node concept="2hMVRd" id="5sUuz_fGvVF" role="1tU5fm">
                <node concept="3uibUv" id="5sUuz_fGvZ9" role="2hN53Y">
                  <ref role="3uigEE" to="y3sp:2Y$mRnICmxQ" resolve="ValueWrapperFactory" />
                </node>
              </node>
              <node concept="2OqwBi" id="3zmidk0d1rq" role="33vP2m">
                <node concept="2YIFZM" id="3zmidk0d1rr" role="2Oq$k0">
                  <ref role="37wK5l" to="v9br:2Y$mRnICmw7" resolve="getInstanceImpl" />
                  <ref role="1Pybhc" to="v9br:2Y$mRnICm2F" resolve="CustomViewersManagerImpl" />
                </node>
                <node concept="liA8E" id="3zmidk0d1rs" role="2OqNvi">
                  <ref role="37wK5l" to="v9br:3zmidk08wpr" resolve="getValueWrapperFactoriesForViewAs" />
                  <node concept="2OqwBi" id="3zmidk0d1rt" role="37wK5m">
                    <node concept="1eOMI4" id="3zmidk0d1ru" role="2Oq$k0">
                      <node concept="10QFUN" id="3zmidk0d1rv" role="1eOMHV">
                        <node concept="3uibUv" id="3zmidk0d1rw" role="10QFUM">
                          <ref role="3uigEE" to="y3sp:2Y$mRnIClP8" resolve="ValueWrapper" />
                        </node>
                        <node concept="37vLTw" id="3zmidk0d1rx" role="10QFUP">
                          <ref role="3cqZAo" node="3E$bVnPdc5B" resolve="value" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="3zmidk0d1ry" role="2OqNvi">
                      <ref role="37wK5l" to="y3sp:2Y$mRnICm5S" resolve="getValue" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="3zmidk0ovoO" role="37wK5m">
                    <ref role="3cqZAo" node="63zEgthY5aP" resolve="debugSession" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1SDT7Vay$lw" role="3cqZAp" />
          <node concept="3clFbJ" id="3zmidk0d2ZO" role="3cqZAp">
            <node concept="3clFbS" id="3zmidk0d2ZQ" role="3clFbx">
              <node concept="2Gpval" id="7Oan$rFuMn" role="3cqZAp">
                <node concept="2GrKxI" id="7Oan$rFuMo" role="2Gsz3X">
                  <property role="TrG5h" value="factory" />
                </node>
                <node concept="3clFbS" id="7Oan$rFuMq" role="2LFqv$">
                  <node concept="2JFkCU" id="7Oan$rFuMr" role="3cqZAp">
                    <node concept="tCFHf" id="7Oan$rFuMs" role="2JFLmv">
                      <ref role="tCJdB" node="3E$bVnPdCoH" resolve="ViewAs" />
                      <node concept="2GrUjf" id="7Oan$rFuMt" role="2J__8u">
                        <ref role="2Gs0qQ" node="7Oan$rFuMo" resolve="factory" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="3zmidk0d5Sy" role="2GsD0m">
                  <ref role="3cqZAo" node="3E$bVnPdcvS" resolve="factories" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="3zmidk0d4EG" role="3clFbw">
              <node concept="37vLTw" id="3zmidk0d3cO" role="3uHU7B">
                <ref role="3cqZAo" node="3E$bVnPdcvS" resolve="factories" />
              </node>
              <node concept="10Nm6u" id="3zmidk0d4xr" role="3uHU7w" />
            </node>
            <node concept="9aQIb" id="3zmidk0d5Ai" role="9aQIa">
              <node concept="3clFbS" id="3zmidk0d5Aj" role="9aQI4">
                <node concept="3SKdUt" id="3zmidk0d68c" role="3cqZAp">
                  <node concept="1PaTwC" id="3zmidk0d68d" role="1aUNEU">
                    <node concept="3oM_SD" id="3zmidk0d68e" role="1PaTwD">
                      <property role="3oM_SC" value="add" />
                    </node>
                    <node concept="3oM_SD" id="3zmidk0d68F" role="1PaTwD">
                      <property role="3oM_SC" value="disabled" />
                    </node>
                    <node concept="3oM_SD" id="3zmidk0d69P" role="1PaTwD">
                      <property role="3oM_SC" value="&quot;calculating...&quot;" />
                    </node>
                    <node concept="3oM_SD" id="3zmidk0d6bn" role="1PaTwD" />
                    <node concept="3oM_SD" id="3zmidk0d6c_" role="1PaTwD">
                      <property role="3oM_SC" value="action" />
                    </node>
                    <node concept="3oM_SD" id="3zmidk0d7uG" role="1PaTwD">
                      <property role="3oM_SC" value="while" />
                    </node>
                    <node concept="3oM_SD" id="3zmidk0d7vt" role="1PaTwD">
                      <property role="3oM_SC" value="the" />
                    </node>
                    <node concept="3oM_SD" id="3zmidk0d7vR" role="1PaTwD">
                      <property role="3oM_SC" value="list" />
                    </node>
                    <node concept="3oM_SD" id="3zmidk0d7vX" role="1PaTwD">
                      <property role="3oM_SC" value="of" />
                    </node>
                    <node concept="3oM_SD" id="3zmidk0d7w1" role="1PaTwD">
                      <property role="3oM_SC" value="suitable" />
                    </node>
                    <node concept="3oM_SD" id="3zmidk0d7yn" role="1PaTwD">
                      <property role="3oM_SC" value="factories" />
                    </node>
                    <node concept="3oM_SD" id="3zmidk0d7yI" role="1PaTwD">
                      <property role="3oM_SC" value="is" />
                    </node>
                    <node concept="3oM_SD" id="3zmidk0d7yM" role="1PaTwD">
                      <property role="3oM_SC" value="calculating" />
                    </node>
                  </node>
                </node>
                <node concept="2JFkCU" id="3zmidk0d7jE" role="3cqZAp">
                  <node concept="tCFHf" id="3zmidk0d7jF" role="2JFLmv">
                    <ref role="tCJdB" node="3zmidk0d6FI" resolve="ViewAsNotReady" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="tT9cl" id="3E$bVnPdVc2" role="2f5YQi">
      <ref role="tU$_T" node="405bI6fUZ5o" resolve="JavaWatchableNodeActions" />
    </node>
  </node>
  <node concept="sE7Ow" id="3E$bVnPdCoH">
    <property role="TrG5h" value="ViewAs" />
    <property role="2uzpH1" value="View With Factory" />
    <property role="1teQrl" value="true" />
    <node concept="tnohg" id="3E$bVnPdCoI" role="tncku">
      <node concept="3clFbS" id="3E$bVnPdCoJ" role="2VODD2">
        <node concept="3cpWs8" id="3x4PZFhpt9c" role="3cqZAp">
          <node concept="3cpWsn" id="3x4PZFhpt9d" role="3cpWs9">
            <property role="TrG5h" value="value" />
            <node concept="3uibUv" id="3x4PZFhpt9e" role="1tU5fm">
              <ref role="3uigEE" to="pry4:3SnNvqCaJHZ" resolve="IValue" />
            </node>
            <node concept="2OqwBi" id="3x4PZFhpt9f" role="33vP2m">
              <node concept="10M0yZ" id="3x4PZFhpt9g" role="2Oq$k0">
                <ref role="3cqZAo" to="choc:ndZCfAIV0g" resolve="MPS_DEBUGGER_VALUE" />
                <ref role="1PxDUh" to="choc:3SnNvqCbxfw" resolve="VariablesTree" />
              </node>
              <node concept="liA8E" id="3x4PZFhpt9h" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~DataKey.getData(com.intellij.openapi.actionSystem.DataContext)" resolve="getData" />
                <node concept="2OqwBi" id="3x4PZFhpt9i" role="37wK5m">
                  <node concept="tl45R" id="3x4PZFhpt9j" role="2Oq$k0" />
                  <node concept="liA8E" id="3x4PZFhpt9k" role="2OqNvi">
                    <ref role="37wK5l" to="qkt:~AnActionEvent.getDataContext()" resolve="getDataContext" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3x4PZFhpt9l" role="3cqZAp">
          <node concept="3clFbS" id="3x4PZFhpt9m" role="3clFbx">
            <node concept="3cpWs6" id="3x4PZFhpt9n" role="3cqZAp" />
          </node>
          <node concept="22lmx$" id="3x4PZFhpt9o" role="3clFbw">
            <node concept="3clFbC" id="3x4PZFhpt9p" role="3uHU7B">
              <node concept="37vLTw" id="3x4PZFhpt9q" role="3uHU7B">
                <ref role="3cqZAo" node="3x4PZFhpt9d" resolve="value" />
              </node>
              <node concept="10Nm6u" id="3x4PZFhpt9r" role="3uHU7w" />
            </node>
            <node concept="3fqX7Q" id="3x4PZFhpt9s" role="3uHU7w">
              <node concept="2ZW3vV" id="3x4PZFhpt9t" role="3fr31v">
                <node concept="3uibUv" id="3x4PZFhpt9u" role="2ZW6by">
                  <ref role="3uigEE" to="y3sp:2Y$mRnIClHy" resolve="JavaValue" />
                </node>
                <node concept="37vLTw" id="3x4PZFhpt9v" role="2ZW6bz">
                  <ref role="3cqZAo" node="3x4PZFhpt9d" resolve="value" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3x4PZFhpqT1" role="3cqZAp">
          <node concept="2OqwBi" id="3x4PZFhpr69" role="3clFbG">
            <node concept="2YIFZM" id="3XAUza4bSUR" role="2Oq$k0">
              <ref role="37wK5l" to="v9br:2Y$mRnICmw7" resolve="getInstanceImpl" />
              <ref role="1Pybhc" to="v9br:2Y$mRnICm2F" resolve="CustomViewersManagerImpl" />
            </node>
            <node concept="liA8E" id="3x4PZFhpsZu" role="2OqNvi">
              <ref role="37wK5l" to="v9br:3x4PZFhpf_5" resolve="setValueWrapper" />
              <node concept="2OqwBi" id="6OGoYT58k79" role="37wK5m">
                <node concept="1eOMI4" id="6OGoYT58jMF" role="2Oq$k0">
                  <node concept="10QFUN" id="3x4PZFhqmhY" role="1eOMHV">
                    <node concept="3uibUv" id="3x4PZFhqmly" role="10QFUM">
                      <ref role="3uigEE" to="y3sp:2Y$mRnIClHy" resolve="JavaValue" />
                    </node>
                    <node concept="37vLTw" id="3x4PZFhptaw" role="10QFUP">
                      <ref role="3cqZAo" node="3x4PZFhpt9d" resolve="value" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="6OGoYT58mcL" role="2OqNvi">
                  <ref role="37wK5l" to="y3sp:2Y$mRnICm5S" resolve="getValue" />
                </node>
              </node>
              <node concept="2OqwBi" id="3x4PZFhptd2" role="37wK5m">
                <node concept="2WthIp" id="3x4PZFhptd5" role="2Oq$k0" />
                <node concept="2BZ7hE" id="3x4PZFhptd7" role="2OqNvi">
                  <ref role="2WH_rO" node="3E$bVnPdCoK" resolve="factory" />
                </node>
              </node>
              <node concept="10QFUN" id="3XAUza4bEcL" role="37wK5m">
                <node concept="3uibUv" id="3XAUza4bEcM" role="10QFUM">
                  <ref role="3uigEE" to="d822:3L_P6qKH88z" resolve="DebugSession" />
                </node>
                <node concept="2YIFZM" id="3XAUza4bEcN" role="10QFUP">
                  <ref role="37wK5l" to="qiil:24OxoGwU3J1" resolve="getDebugSession" />
                  <ref role="1Pybhc" to="qiil:24OxoGwU3IV" resolve="DebugActionsUtil" />
                  <node concept="tl45R" id="3XAUza4bEcO" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2JriF1" id="3E$bVnPdCoK" role="2JrayB">
      <property role="TrG5h" value="factory" />
      <node concept="3Tm6S6" id="3E$bVnPdCoL" role="1B3o_S" />
      <node concept="3uibUv" id="3E$bVnPdCTO" role="1tU5fm">
        <ref role="3uigEE" to="y3sp:2Y$mRnICmxQ" resolve="ValueWrapperFactory" />
      </node>
      <node concept="2K2imR" id="7E$SATCMdz1" role="2K2Cet">
        <node concept="3clFbS" id="7E$SATCMdz2" role="2VODD2">
          <node concept="3clFbF" id="7E$SATCMdIw" role="3cqZAp">
            <node concept="2OqwBi" id="7E$SATCMdRc" role="3clFbG">
              <node concept="2K3dj_" id="7E$SATCMdIv" role="2Oq$k0" />
              <node concept="liA8E" id="7E$SATCMe9E" role="2OqNvi">
                <ref role="37wK5l" to="y3sp:45l905tDWfp" resolve="getName" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="tkhdA" id="3E$bVnPdDcn" role="tmbBb">
      <node concept="3clFbS" id="3E$bVnPdDco" role="2VODD2">
        <node concept="3clFbF" id="3E$bVnPdDfS" role="3cqZAp">
          <node concept="2OqwBi" id="3E$bVnPdEzX" role="3clFbG">
            <node concept="2OqwBi" id="3E$bVnPdDpA" role="2Oq$k0">
              <node concept="tl45R" id="3E$bVnPdDfR" role="2Oq$k0" />
              <node concept="liA8E" id="3E$bVnPdEtD" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="liA8E" id="3E$bVnPdFzE" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setText(java.lang.String)" resolve="setText" />
              <node concept="2OqwBi" id="3E$bVnPdH00" role="37wK5m">
                <node concept="2OqwBi" id="3E$bVnPdFzI" role="2Oq$k0">
                  <node concept="2WthIp" id="3E$bVnPdFzL" role="2Oq$k0" />
                  <node concept="2BZ7hE" id="3E$bVnPdFzN" role="2OqNvi">
                    <ref role="2WH_rO" node="3E$bVnPdCoK" resolve="factory" />
                  </node>
                </node>
                <node concept="liA8E" id="3E$bVnPdIlp" role="2OqNvi">
                  <ref role="37wK5l" to="y3sp:45l905tDWfp" resolve="getName" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3x4PZFhpt1p" role="3cqZAp">
          <node concept="3cpWsn" id="3x4PZFhpt1q" role="3cpWs9">
            <property role="TrG5h" value="value" />
            <node concept="3uibUv" id="3x4PZFhpt1r" role="1tU5fm">
              <ref role="3uigEE" to="pry4:3SnNvqCaJHZ" resolve="IValue" />
            </node>
            <node concept="2OqwBi" id="3x4PZFhpt1s" role="33vP2m">
              <node concept="10M0yZ" id="3x4PZFhpt1t" role="2Oq$k0">
                <ref role="1PxDUh" to="choc:3SnNvqCbxfw" resolve="VariablesTree" />
                <ref role="3cqZAo" to="choc:ndZCfAIV0g" resolve="MPS_DEBUGGER_VALUE" />
              </node>
              <node concept="liA8E" id="3x4PZFhpt1u" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~DataKey.getData(com.intellij.openapi.actionSystem.DataContext)" resolve="getData" />
                <node concept="2OqwBi" id="3x4PZFhpt1v" role="37wK5m">
                  <node concept="tl45R" id="3x4PZFhpt1w" role="2Oq$k0" />
                  <node concept="liA8E" id="3x4PZFhpt1x" role="2OqNvi">
                    <ref role="37wK5l" to="qkt:~AnActionEvent.getDataContext()" resolve="getDataContext" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3x4PZFhpt1y" role="3cqZAp">
          <node concept="2OqwBi" id="3x4PZFhpt1z" role="3clFbG">
            <node concept="2OqwBi" id="3x4PZFhpt1$" role="2Oq$k0">
              <node concept="tl45R" id="3x4PZFhpt1_" role="2Oq$k0" />
              <node concept="liA8E" id="3x4PZFhpt1A" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="liA8E" id="3x4PZFhpt1B" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setVisible(boolean)" resolve="setVisible" />
              <node concept="1Wc70l" id="3x4PZFhpt1C" role="37wK5m">
                <node concept="1Wc70l" id="3x4PZFhpt1D" role="3uHU7B">
                  <node concept="3y3z36" id="3x4PZFhpt1E" role="3uHU7B">
                    <node concept="37vLTw" id="3x4PZFhpt1F" role="3uHU7B">
                      <ref role="3cqZAo" node="3x4PZFhpt1q" resolve="value" />
                    </node>
                    <node concept="10Nm6u" id="3x4PZFhpt1G" role="3uHU7w" />
                  </node>
                  <node concept="2ZW3vV" id="3x4PZFhpt1H" role="3uHU7w">
                    <node concept="3uibUv" id="3x4PZFhpt1I" role="2ZW6by">
                      <ref role="3uigEE" to="y3sp:2Y$mRnIClHy" resolve="JavaValue" />
                    </node>
                    <node concept="37vLTw" id="3x4PZFhpt1J" role="2ZW6bz">
                      <ref role="3cqZAo" node="3x4PZFhpt1q" resolve="value" />
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="3x4PZFhpt1K" role="3uHU7w">
                  <node concept="2YIFZM" id="3x4PZFhpt1L" role="3uHU7B">
                    <ref role="37wK5l" to="qiil:24OxoGwU3Jh" resolve="getEvaluationProvider" />
                    <ref role="1Pybhc" to="qiil:24OxoGwU3IV" resolve="DebugActionsUtil" />
                    <node concept="tl45R" id="3x4PZFhpt1M" role="37wK5m" />
                  </node>
                  <node concept="10Nm6u" id="3x4PZFhpt1N" role="3uHU7w" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="3x4PZFhpFnZ" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.TREE_NODE" resolve="TREE_NODE" />
      <node concept="1oajcY" id="3x4PZFhpFo0" role="1oa70y" />
    </node>
  </node>
  <node concept="sE7Ow" id="3zmidk0d6FI">
    <property role="1rBW0U" value="true" />
    <property role="fJN8o" value="true" />
    <property role="2uzpH1" value="Calculating..." />
    <property role="TrG5h" value="ViewAsNotReady" />
    <property role="2YLI8m" value="6u2MFnph2wS/none" />
    <node concept="tnohg" id="3zmidk0d6FJ" role="tncku">
      <node concept="3clFbS" id="3zmidk0d6FK" role="2VODD2" />
    </node>
    <node concept="2ScWuX" id="3zmidk0d6G9" role="tmbBb">
      <node concept="3clFbS" id="3zmidk0d6Ga" role="2VODD2">
        <node concept="3clFbF" id="3zmidk0d722" role="3cqZAp">
          <node concept="3clFbT" id="3zmidk0d721" role="3clFbG" />
        </node>
      </node>
    </node>
  </node>
</model>

