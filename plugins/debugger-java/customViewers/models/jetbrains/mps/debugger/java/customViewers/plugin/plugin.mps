<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:9d33947d-45a8-4aa4-b61a-9c874e4614d7(jetbrains.mps.debugger.java.customViewers.plugin.plugin)">
  <persistence version="9" />
  <languages>
    <use id="fbc14279-5e2a-4c87-a5d1-5f7061e6c456" name="jetbrains.mps.debugger.api.lang" version="1" />
    <use id="fa8aeae9-4df9-4e13-bfb1-9b04c67ddb77" name="jetbrains.mps.debugger.java.customViewers" version="1" />
    <use id="80208897-4572-437d-b50e-8f050cba9566" name="jetbrains.mps.debugger.java.privateMembers" version="0" />
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="6" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
  </languages>
  <imports>
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="upz5" ref="r:33366a6f-09e8-45e7-ae7f-cb8cf0c7ed05(jetbrains.mps.baseLanguage.tuples.runtime)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
  </imports>
  <registry>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="5023285075122009364" name="jetbrains.mps.lang.plugin.structure.IdeaInitializerDescriptor" flags="ng" index="9BnSX">
        <property id="5023285075122009369" name="version" index="9BnSK" />
        <property id="5023285075122009368" name="descripttion" index="9BnSL" />
        <property id="5023285075122009371" name="vendor" index="9BnSM" />
        <property id="5023285075122009373" name="ideaVersion" index="9BnSO" />
        <property id="5023285075122009372" name="vendorUrl" index="9BnSP" />
        <property id="5023285075122009366" name="id" index="9BnSZ" />
        <property id="1573568368168371217" name="handleErrors" index="3FCvg6" />
        <child id="5864553086652219115" name="dependency" index="2Tc6Ou" />
      </concept>
      <concept id="5864553086652219116" name="jetbrains.mps.lang.plugin.structure.IdeaPluginDependency" flags="lg" index="2Tc6Op">
        <property id="5864553086652219119" name="pluginId" index="2Tc6Oq" />
      </concept>
    </language>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1215695189714" name="jetbrains.mps.baseLanguage.structure.PlusAssignmentExpression" flags="nn" index="d57v9" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
      </concept>
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
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1513279640923991009" name="jetbrains.mps.baseLanguage.structure.IGenericClassCreator" flags="ngI" index="366HgL">
        <property id="1513279640906337053" name="inferTypeParams" index="373rjd" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
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
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
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
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1171903607971" name="jetbrains.mps.baseLanguage.structure.WildCardType" flags="in" index="3qTvmN" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
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
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1208890769693" name="jetbrains.mps.baseLanguage.structure.ArrayLengthOperation" flags="nn" index="1Rwk04" />
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
    </language>
    <language id="fa8aeae9-4df9-4e13-bfb1-9b04c67ddb77" name="jetbrains.mps.debugger.java.customViewers">
      <concept id="43370322128194518" name="jetbrains.mps.debugger.java.customViewers.structure.GetHighLevelWatchablesBlock_ConceptFunction" flags="in" index="4DdV2" />
      <concept id="43370322128194514" name="jetbrains.mps.debugger.java.customViewers.structure.GetHighLevelValuePresentation_ConceptFunction" flags="in" index="4DdV6" />
      <concept id="43370322128272301" name="jetbrains.mps.debugger.java.customViewers.structure.HighLevelValue_ConceptFunctionParameter" flags="nn" index="4DuUT" />
      <concept id="43370322128285902" name="jetbrains.mps.debugger.java.customViewers.structure.HighLevelWatchableCreator" flags="nn" index="4Qynq">
        <reference id="43370322128310821" name="watchable" index="4QCsL" />
        <child id="43370322128311163" name="value" index="4QCpJ" />
      </concept>
      <concept id="1842653058274900915" name="jetbrains.mps.debugger.java.customViewers.structure.WatchableListType" flags="in" index="2fkl22" />
      <concept id="1842653058274900914" name="jetbrains.mps.debugger.java.customViewers.structure.WatchablesListCreator" flags="nn" index="2fkl23" />
      <concept id="680105146889009728" name="jetbrains.mps.debugger.java.customViewers.structure.HighLevelCustomViewer" flags="ng" index="jiW97">
        <property id="8903462855138553895" name="caption" index="OT4hG" />
        <child id="43370322128194610" name="getPresentation" index="4Dd$A" />
        <child id="43370322128194611" name="getWatchables" index="4Dd$B" />
        <child id="43370322128256026" name="valueType" index="4Dq$e" />
      </concept>
      <concept id="5117350825036234483" name="jetbrains.mps.debugger.java.customViewers.structure.CustomWatchable" flags="ng" index="yk$m5" />
      <concept id="5117350825036256317" name="jetbrains.mps.debugger.java.customViewers.structure.CustomWatchablesContainer" flags="ng" index="ykIXb">
        <child id="5117350825036256318" name="watchable" index="ykIX8" />
      </concept>
    </language>
    <language id="fbc14279-5e2a-4c87-a5d1-5f7061e6c456" name="jetbrains.mps.debugger.api.lang">
      <concept id="1270798772176052876" name="jetbrains.mps.debugger.api.lang.structure.ConceptFunctionParameter_Debug_Project" flags="nn" index="5baDc" />
      <concept id="1270798772176052880" name="jetbrains.mps.debugger.api.lang.structure.ConceptFunctionParameter_DebuggableNode" flags="nn" index="5baDg" />
      <concept id="3157158168562219319" name="jetbrains.mps.debugger.api.lang.structure.BreakpointableNodeItem" flags="ng" index="2F3Wen">
        <child id="3157158168562219320" name="createBreakpoint" index="2F3Weo" />
        <child id="5789575999242884576" name="conceptsToCreateBreakpoint" index="MDQ5i" />
      </concept>
      <concept id="3157158168562219322" name="jetbrains.mps.debugger.api.lang.structure.ConceptFunction_CreateBreakpoint" flags="in" index="2F3Weq" />
      <concept id="3157158168562217892" name="jetbrains.mps.debugger.api.lang.structure.BreakpointCreator" flags="ng" index="2F3W$4">
        <child id="1270798772176052787" name="breakpointableConcepts" index="5baFN" />
      </concept>
      <concept id="5789575999242884574" name="jetbrains.mps.debugger.api.lang.structure.ConceptDeclarationReference" flags="ng" index="MDQ5G">
        <reference id="5789575999242884575" name="conceptDeclaration" index="MDQ5H" />
      </concept>
      <concept id="2569394751387978473" name="jetbrains.mps.debugger.api.lang.structure.CreateBreakpointOperation" flags="nn" index="3B$Tw0">
        <property id="2569394751387978475" name="kindName" index="3B$Tw2" />
        <property id="2569394751387978476" name="kindPresentation" index="3B$Tw5" />
        <child id="2569394751387978493" name="projectExpression" index="3B$Twk" />
        <child id="2569394751387978492" name="nodeExpression" index="3B$Twl" />
      </concept>
      <concept id="1104094430779068753" name="jetbrains.mps.debugger.api.lang.structure.DebuggerReference" flags="nn" index="3Qg5_p">
        <property id="1104094430779068757" name="debuggerName" index="3Qg5_t" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
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
    <language id="80208897-4572-437d-b50e-8f050cba9566" name="jetbrains.mps.debugger.java.privateMembers">
      <concept id="6825241477451043705" name="jetbrains.mps.debugger.java.privateMembers.structure.PrivateFieldReferenceOperation" flags="nn" index="n0Ref" />
    </language>
  </registry>
  <node concept="9BnSX" id="4L1wqcfe$On">
    <property role="9BnSZ" value="jetbrains.mps.debugger.java.customViewers" />
    <property role="3FCvg6" value="true" />
    <property role="9BnSP" value="http://www.jetbrains.com/mps/" />
    <property role="9BnSL" value="Debugger support for baseLanguage extensions" />
    <property role="9BnSM" value="JetBrains" />
    <property role="TrG5h" value="BaseLanguage Debugger Support" />
    <property role="9BnSO" value="261.1" />
    <property role="9BnSK" value="2026.1.1" />
    <node concept="2Tc6Op" id="5ODR6dNebC9" role="2Tc6Ou">
      <property role="2Tc6Oq" value="jetbrains.mps.debugger.java" />
    </node>
  </node>
  <node concept="ykIXb" id="2yCvSeNKOaM">
    <property role="TrG5h" value="Collections" />
    <property role="3GE5qa" value="collections" />
    <node concept="yk$m5" id="2yCvSeNKOaN" role="ykIX8">
      <property role="TrG5h" value="element" />
    </node>
    <node concept="yk$m5" id="2yCvSeNKOaO" role="ykIX8">
      <property role="TrG5h" value="entry" />
    </node>
    <node concept="yk$m5" id="2yCvSeNKOaP" role="ykIX8">
      <property role="TrG5h" value="key" />
    </node>
    <node concept="yk$m5" id="2yCvSeNKOaQ" role="ykIX8">
      <property role="TrG5h" value="value" />
    </node>
    <node concept="yk$m5" id="2yCvSeNKOaR" role="ykIX8">
      <property role="TrG5h" value="size" />
    </node>
  </node>
  <node concept="jiW97" id="2yCvSeNKOaS">
    <property role="TrG5h" value="List" />
    <property role="3GE5qa" value="collections" />
    <node concept="3uibUv" id="2yCvSeNKOaT" role="4Dq$e">
      <ref role="3uigEE" to="33ny:~List" resolve="List" />
    </node>
    <node concept="4DdV2" id="2yCvSeNKOaU" role="4Dd$B">
      <node concept="3clFbS" id="2yCvSeNKOaV" role="2VODD2">
        <node concept="3cpWs8" id="2yCvSeNKOaW" role="3cqZAp">
          <node concept="3cpWsn" id="2yCvSeNKOaX" role="3cpWs9">
            <property role="TrG5h" value="watchables" />
            <node concept="2ShNRf" id="2yCvSeNKOaY" role="33vP2m">
              <node concept="2fkl23" id="2yCvSeNKOaZ" role="2ShVmc" />
            </node>
            <node concept="2fkl22" id="2yCvSeNKOb0" role="1tU5fm" />
          </node>
        </node>
        <node concept="3clFbH" id="2yCvSeNKOb1" role="3cqZAp" />
        <node concept="3cpWs8" id="2yCvSeNKOb2" role="3cqZAp">
          <node concept="3cpWsn" id="2yCvSeNKOb3" role="3cpWs9">
            <property role="TrG5h" value="size" />
            <node concept="10Oyi0" id="2yCvSeNKOb4" role="1tU5fm" />
            <node concept="2OqwBi" id="2yCvSeNKOb5" role="33vP2m">
              <node concept="4DuUT" id="2yCvSeNKOb6" role="2Oq$k0" />
              <node concept="liA8E" id="2yCvSeNKOb7" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2yCvSeNKOb8" role="3cqZAp">
          <node concept="2OqwBi" id="2yCvSeNKOb9" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTs$y" role="2Oq$k0">
              <ref role="3cqZAo" node="2yCvSeNKOaX" resolve="watchables" />
            </node>
            <node concept="liA8E" id="2yCvSeNKObb" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
              <node concept="2ShNRf" id="2yCvSeNKObc" role="37wK5m">
                <node concept="4Qynq" id="2yCvSeNKObd" role="2ShVmc">
                  <ref role="4QCsL" node="2yCvSeNKOaR" resolve="size" />
                  <node concept="37vLTw" id="3GM_nagT_8z" role="4QCpJ">
                    <ref role="3cqZAo" node="2yCvSeNKOb3" resolve="size" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2yCvSeNKObf" role="3cqZAp" />
        <node concept="1DcWWT" id="2yCvSeNKObg" role="3cqZAp">
          <node concept="3cpWsn" id="2yCvSeNKObh" role="1Duv9x">
            <property role="TrG5h" value="element" />
            <node concept="3uibUv" id="2yCvSeNKObi" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
          </node>
          <node concept="3clFbS" id="2yCvSeNKObj" role="2LFqv$">
            <node concept="3clFbF" id="2yCvSeNKObk" role="3cqZAp">
              <node concept="2OqwBi" id="2yCvSeNKObl" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagTu6P" role="2Oq$k0">
                  <ref role="3cqZAo" node="2yCvSeNKOaX" resolve="watchables" />
                </node>
                <node concept="liA8E" id="2yCvSeNKObn" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                  <node concept="2ShNRf" id="2yCvSeNKObo" role="37wK5m">
                    <node concept="4Qynq" id="2yCvSeNKObp" role="2ShVmc">
                      <ref role="4QCsL" node="2yCvSeNKOaN" resolve="element" />
                      <node concept="37vLTw" id="3GM_nagTBkW" role="4QCpJ">
                        <ref role="3cqZAo" node="2yCvSeNKObh" resolve="element" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="4DuUT" id="2yCvSeNKObr" role="1DdaDG" />
        </node>
        <node concept="3clFbH" id="2yCvSeNKObs" role="3cqZAp" />
        <node concept="3cpWs6" id="2yCvSeNKObt" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTwmI" role="3cqZAk">
            <ref role="3cqZAo" node="2yCvSeNKOaX" resolve="watchables" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="jiW97" id="2yCvSeNKObv">
    <property role="TrG5h" value="MapEntry" />
    <property role="3GE5qa" value="collections" />
    <node concept="3uibUv" id="2yCvSeNKObw" role="4Dq$e">
      <ref role="3uigEE" to="33ny:~Map$Entry" resolve="Map.Entry" />
    </node>
    <node concept="4DdV2" id="2yCvSeNKObx" role="4Dd$B">
      <node concept="3clFbS" id="2yCvSeNKOby" role="2VODD2">
        <node concept="3cpWs8" id="2yCvSeNKObz" role="3cqZAp">
          <node concept="3cpWsn" id="2yCvSeNKOb$" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="2fkl22" id="2yCvSeNKOb_" role="1tU5fm" />
            <node concept="2ShNRf" id="2yCvSeNKObA" role="33vP2m">
              <node concept="2fkl23" id="2yCvSeNKObB" role="2ShVmc" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2yCvSeNKObC" role="3cqZAp">
          <node concept="3cpWsn" id="2yCvSeNKObD" role="3cpWs9">
            <property role="TrG5h" value="key" />
            <node concept="3uibUv" id="2yCvSeNKObE" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
            <node concept="2OqwBi" id="2yCvSeNKObF" role="33vP2m">
              <node concept="4DuUT" id="2yCvSeNKObG" role="2Oq$k0" />
              <node concept="liA8E" id="2yCvSeNKObH" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map$Entry.getKey()" resolve="getKey" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2yCvSeNKObI" role="3cqZAp">
          <node concept="3cpWsn" id="2yCvSeNKObJ" role="3cpWs9">
            <property role="TrG5h" value="entryValue" />
            <node concept="3uibUv" id="2yCvSeNKObK" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
            <node concept="2OqwBi" id="2yCvSeNKObL" role="33vP2m">
              <node concept="4DuUT" id="2yCvSeNKObM" role="2Oq$k0" />
              <node concept="liA8E" id="2yCvSeNKObN" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map$Entry.getValue()" resolve="getValue" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2yCvSeNKObO" role="3cqZAp">
          <node concept="2OqwBi" id="2yCvSeNKObP" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTtKu" role="2Oq$k0">
              <ref role="3cqZAo" node="2yCvSeNKOb$" resolve="result" />
            </node>
            <node concept="liA8E" id="2yCvSeNKObR" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
              <node concept="2ShNRf" id="2yCvSeNKObS" role="37wK5m">
                <node concept="4Qynq" id="2yCvSeNKObT" role="2ShVmc">
                  <ref role="4QCsL" node="2yCvSeNKOaP" resolve="key" />
                  <node concept="37vLTw" id="3GM_nagTrKl" role="4QCpJ">
                    <ref role="3cqZAo" node="2yCvSeNKObD" resolve="key" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2yCvSeNKObV" role="3cqZAp">
          <node concept="2OqwBi" id="2yCvSeNKObW" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTA8c" role="2Oq$k0">
              <ref role="3cqZAo" node="2yCvSeNKOb$" resolve="result" />
            </node>
            <node concept="liA8E" id="2yCvSeNKObY" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
              <node concept="2ShNRf" id="2yCvSeNKObZ" role="37wK5m">
                <node concept="4Qynq" id="2yCvSeNKOc0" role="2ShVmc">
                  <ref role="4QCsL" node="2yCvSeNKOaQ" resolve="value" />
                  <node concept="37vLTw" id="3GM_nagTAa3" role="4QCpJ">
                    <ref role="3cqZAo" node="2yCvSeNKObJ" resolve="entryValue" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2yCvSeNKOc2" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTALT" role="3cqZAk">
            <ref role="3cqZAo" node="2yCvSeNKOb$" resolve="result" />
          </node>
        </node>
      </node>
    </node>
    <node concept="4DdV6" id="2yCvSeNKOc4" role="4Dd$A">
      <node concept="3clFbS" id="2yCvSeNKOc5" role="2VODD2">
        <node concept="3cpWs8" id="2yCvSeNKOc6" role="3cqZAp">
          <node concept="3cpWsn" id="2yCvSeNKOc7" role="3cpWs9">
            <property role="TrG5h" value="key" />
            <node concept="3uibUv" id="2yCvSeNKOc8" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
            <node concept="2OqwBi" id="2yCvSeNKOc9" role="33vP2m">
              <node concept="4DuUT" id="2yCvSeNKOca" role="2Oq$k0" />
              <node concept="liA8E" id="2yCvSeNKOcb" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map$Entry.getKey()" resolve="getKey" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2yCvSeNKOcc" role="3cqZAp">
          <node concept="3cpWsn" id="2yCvSeNKOcd" role="3cpWs9">
            <property role="TrG5h" value="entryValue" />
            <node concept="3uibUv" id="2yCvSeNKOce" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
            <node concept="2OqwBi" id="2yCvSeNKOcf" role="33vP2m">
              <node concept="4DuUT" id="2yCvSeNKOcg" role="2Oq$k0" />
              <node concept="liA8E" id="2yCvSeNKOch" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map$Entry.getValue()" resolve="getValue" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2yCvSeNKOci" role="3cqZAp">
          <node concept="3cpWs3" id="2yCvSeNKOcj" role="3cqZAk">
            <node concept="1eOMI4" id="2yCvSeNKOck" role="3uHU7w">
              <node concept="3K4zz7" id="2yCvSeNKOcl" role="1eOMHV">
                <node concept="Xl_RD" id="2yCvSeNKOcm" role="3K4E3e">
                  <property role="Xl_RC" value="null" />
                </node>
                <node concept="2OqwBi" id="2yCvSeNKOcn" role="3K4GZi">
                  <node concept="37vLTw" id="3GM_nagTvOw" role="2Oq$k0">
                    <ref role="3cqZAo" node="2yCvSeNKOcd" resolve="entryValue" />
                  </node>
                  <node concept="liA8E" id="2yCvSeNKOcp" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                  </node>
                </node>
                <node concept="3clFbC" id="2yCvSeNKOcq" role="3K4Cdx">
                  <node concept="10Nm6u" id="2yCvSeNKOcr" role="3uHU7w" />
                  <node concept="37vLTw" id="3GM_nagTA0r" role="3uHU7B">
                    <ref role="3cqZAo" node="2yCvSeNKOcd" resolve="entryValue" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs3" id="2yCvSeNKOct" role="3uHU7B">
              <node concept="3cpWs3" id="2yCvSeNKOcu" role="3uHU7B">
                <node concept="Xl_RD" id="2yCvSeNKOcv" role="3uHU7B">
                  <property role="Xl_RC" value="[" />
                </node>
                <node concept="1eOMI4" id="2yCvSeNKOcw" role="3uHU7w">
                  <node concept="3K4zz7" id="2yCvSeNKOcx" role="1eOMHV">
                    <node concept="Xl_RD" id="2yCvSeNKOcy" role="3K4E3e">
                      <property role="Xl_RC" value="null" />
                    </node>
                    <node concept="2OqwBi" id="2yCvSeNKOcz" role="3K4GZi">
                      <node concept="37vLTw" id="3GM_nagTuiA" role="2Oq$k0">
                        <ref role="3cqZAo" node="2yCvSeNKOc7" resolve="key" />
                      </node>
                      <node concept="liA8E" id="2yCvSeNKOc_" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                      </node>
                    </node>
                    <node concept="3clFbC" id="2yCvSeNKOcA" role="3K4Cdx">
                      <node concept="10Nm6u" id="2yCvSeNKOcB" role="3uHU7w" />
                      <node concept="37vLTw" id="3GM_nagT$Wc" role="3uHU7B">
                        <ref role="3cqZAo" node="2yCvSeNKOc7" resolve="key" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="2yCvSeNKOcD" role="3uHU7w">
                <property role="Xl_RC" value="] = " />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="jiW97" id="2yCvSeNKOcE">
    <property role="TrG5h" value="Map" />
    <property role="3GE5qa" value="collections" />
    <node concept="3uibUv" id="2yCvSeNKOcF" role="4Dq$e">
      <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
    </node>
    <node concept="4DdV2" id="2yCvSeNKOcG" role="4Dd$B">
      <node concept="3clFbS" id="2yCvSeNKOcH" role="2VODD2">
        <node concept="3cpWs8" id="2yCvSeNKOcI" role="3cqZAp">
          <node concept="3cpWsn" id="2yCvSeNKOcJ" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="2fkl22" id="2yCvSeNKOcK" role="1tU5fm" />
            <node concept="2ShNRf" id="2yCvSeNKOcL" role="33vP2m">
              <node concept="2fkl23" id="2yCvSeNKOcM" role="2ShVmc" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2yCvSeNKOcN" role="3cqZAp" />
        <node concept="3cpWs8" id="2yCvSeNKOcO" role="3cqZAp">
          <node concept="3cpWsn" id="2yCvSeNKOcP" role="3cpWs9">
            <property role="TrG5h" value="size" />
            <node concept="10Oyi0" id="2yCvSeNKOcQ" role="1tU5fm" />
            <node concept="2OqwBi" id="2yCvSeNKOcR" role="33vP2m">
              <node concept="4DuUT" id="2yCvSeNKOcS" role="2Oq$k0" />
              <node concept="liA8E" id="2yCvSeNKOcT" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.size()" resolve="size" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2yCvSeNKOcU" role="3cqZAp">
          <node concept="2OqwBi" id="2yCvSeNKOcV" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTuzm" role="2Oq$k0">
              <ref role="3cqZAo" node="2yCvSeNKOcJ" resolve="result" />
            </node>
            <node concept="liA8E" id="2yCvSeNKOcX" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
              <node concept="2ShNRf" id="2yCvSeNKOcY" role="37wK5m">
                <node concept="4Qynq" id="2yCvSeNKOcZ" role="2ShVmc">
                  <ref role="4QCsL" node="2yCvSeNKOaR" resolve="size" />
                  <node concept="37vLTw" id="3GM_nagTt$u" role="4QCpJ">
                    <ref role="3cqZAo" node="2yCvSeNKOcP" resolve="size" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2yCvSeNKOd1" role="3cqZAp" />
        <node concept="3cpWs8" id="2yCvSeNKOd2" role="3cqZAp">
          <node concept="3cpWsn" id="2yCvSeNKOd3" role="3cpWs9">
            <property role="TrG5h" value="entries" />
            <node concept="3uibUv" id="2yCvSeNKOd4" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
              <node concept="3uibUv" id="2yCvSeNKOd5" role="11_B2D">
                <ref role="3uigEE" to="33ny:~Map$Entry" resolve="Map.Entry" />
                <node concept="3qTvmN" id="e1yJTyH$h_" role="11_B2D" />
                <node concept="3qTvmN" id="e1yJTyH_Le" role="11_B2D" />
              </node>
            </node>
            <node concept="2OqwBi" id="2yCvSeNKOd6" role="33vP2m">
              <node concept="1eOMI4" id="e1yJTyHvVw" role="2Oq$k0">
                <node concept="10QFUN" id="e1yJTyHvVv" role="1eOMHV">
                  <node concept="4DuUT" id="e1yJTyHvVu" role="10QFUP" />
                  <node concept="3uibUv" id="e1yJTyHwCe" role="10QFUM">
                    <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
                    <node concept="3qTvmN" id="e1yJTyHxRe" role="11_B2D" />
                    <node concept="3qTvmN" id="e1yJTyHyzl" role="11_B2D" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="2yCvSeNKOd8" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.entrySet()" resolve="entrySet" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="2yCvSeNKOd9" role="3cqZAp">
          <node concept="3cpWsn" id="2yCvSeNKOda" role="1Duv9x">
            <property role="TrG5h" value="entry" />
            <node concept="3uibUv" id="2yCvSeNKOdb" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Map$Entry" resolve="Map.Entry" />
            </node>
          </node>
          <node concept="3clFbS" id="2yCvSeNKOdc" role="2LFqv$">
            <node concept="3clFbF" id="2yCvSeNKOdd" role="3cqZAp">
              <node concept="2OqwBi" id="2yCvSeNKOde" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagTziL" role="2Oq$k0">
                  <ref role="3cqZAo" node="2yCvSeNKOcJ" resolve="result" />
                </node>
                <node concept="liA8E" id="2yCvSeNKOdg" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                  <node concept="2ShNRf" id="2yCvSeNKOdh" role="37wK5m">
                    <node concept="4Qynq" id="2yCvSeNKOdi" role="2ShVmc">
                      <ref role="4QCsL" node="2yCvSeNKOaO" resolve="entry" />
                      <node concept="37vLTw" id="3GM_nagTrSk" role="4QCpJ">
                        <ref role="3cqZAo" node="2yCvSeNKOda" resolve="entry" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="3GM_nagTAcc" role="1DdaDG">
            <ref role="3cqZAo" node="2yCvSeNKOd3" resolve="entries" />
          </node>
        </node>
        <node concept="3clFbH" id="2yCvSeNKOdl" role="3cqZAp" />
        <node concept="3cpWs6" id="2yCvSeNKOdm" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTs2w" role="3cqZAk">
            <ref role="3cqZAo" node="2yCvSeNKOcJ" resolve="result" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="jiW97" id="2yCvSeNKOdo">
    <property role="TrG5h" value="Set" />
    <property role="3GE5qa" value="collections" />
    <node concept="3uibUv" id="2yCvSeNKOdp" role="4Dq$e">
      <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
    </node>
    <node concept="4DdV2" id="2yCvSeNKOdq" role="4Dd$B">
      <node concept="3clFbS" id="2yCvSeNKOdr" role="2VODD2">
        <node concept="3SKdUt" id="2yCvSeNKOds" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXochG" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXochH" role="1PaTwD">
              <property role="3oM_SC" value="again," />
            </node>
            <node concept="3oM_SD" id="ATZLwXochI" role="1PaTwD">
              <property role="3oM_SC" value="same" />
            </node>
            <node concept="3oM_SD" id="ATZLwXochJ" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="ATZLwXochK" role="1PaTwD">
              <property role="3oM_SC" value="ListViewer" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2yCvSeNKOdu" role="3cqZAp">
          <node concept="3cpWsn" id="2yCvSeNKOdv" role="3cpWs9">
            <property role="TrG5h" value="watchables" />
            <node concept="2ShNRf" id="2yCvSeNKOdw" role="33vP2m">
              <node concept="2fkl23" id="2yCvSeNKOdx" role="2ShVmc" />
            </node>
            <node concept="2fkl22" id="2yCvSeNKOdy" role="1tU5fm" />
          </node>
        </node>
        <node concept="3clFbH" id="2yCvSeNKOdz" role="3cqZAp" />
        <node concept="3cpWs8" id="2yCvSeNKOd$" role="3cqZAp">
          <node concept="3cpWsn" id="2yCvSeNKOd_" role="3cpWs9">
            <property role="TrG5h" value="size" />
            <node concept="10Oyi0" id="2yCvSeNKOdA" role="1tU5fm" />
            <node concept="2OqwBi" id="2yCvSeNKOdB" role="33vP2m">
              <node concept="4DuUT" id="2yCvSeNKOdC" role="2Oq$k0" />
              <node concept="liA8E" id="2yCvSeNKOdD" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Set.size()" resolve="size" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2yCvSeNKOdE" role="3cqZAp">
          <node concept="2OqwBi" id="2yCvSeNKOdF" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagT$i1" role="2Oq$k0">
              <ref role="3cqZAo" node="2yCvSeNKOdv" resolve="watchables" />
            </node>
            <node concept="liA8E" id="2yCvSeNKOdH" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
              <node concept="2ShNRf" id="2yCvSeNKOdI" role="37wK5m">
                <node concept="4Qynq" id="2yCvSeNKOdJ" role="2ShVmc">
                  <ref role="4QCsL" node="2yCvSeNKOaR" resolve="size" />
                  <node concept="37vLTw" id="3GM_nagTAS4" role="4QCpJ">
                    <ref role="3cqZAo" node="2yCvSeNKOd_" resolve="size" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2yCvSeNKOdL" role="3cqZAp" />
        <node concept="1DcWWT" id="2yCvSeNKOdM" role="3cqZAp">
          <node concept="3cpWsn" id="2yCvSeNKOdN" role="1Duv9x">
            <property role="TrG5h" value="element" />
            <node concept="3uibUv" id="2yCvSeNKOdO" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
          </node>
          <node concept="3clFbS" id="2yCvSeNKOdP" role="2LFqv$">
            <node concept="3clFbF" id="2yCvSeNKOdQ" role="3cqZAp">
              <node concept="2OqwBi" id="2yCvSeNKOdR" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagTsbO" role="2Oq$k0">
                  <ref role="3cqZAo" node="2yCvSeNKOdv" resolve="watchables" />
                </node>
                <node concept="liA8E" id="2yCvSeNKOdT" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                  <node concept="2ShNRf" id="2yCvSeNKOdU" role="37wK5m">
                    <node concept="4Qynq" id="2yCvSeNKOdV" role="2ShVmc">
                      <ref role="4QCsL" node="2yCvSeNKOaN" resolve="element" />
                      <node concept="37vLTw" id="3GM_nagT_cQ" role="4QCpJ">
                        <ref role="3cqZAo" node="2yCvSeNKOdN" resolve="element" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="4DuUT" id="2yCvSeNKOdX" role="1DdaDG" />
        </node>
        <node concept="3clFbH" id="2yCvSeNKOdY" role="3cqZAp" />
        <node concept="3cpWs6" id="2yCvSeNKOdZ" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTB1o" role="3cqZAk">
            <ref role="3cqZAo" node="2yCvSeNKOdv" resolve="watchables" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="jiW97" id="2yCvSeNKOMR">
    <property role="TrG5h" value="IndexedTupleViewer" />
    <property role="3GE5qa" value="tuples" />
    <property role="OT4hG" value="IndexedTuple" />
    <node concept="3uibUv" id="2yCvSeNKOMS" role="4Dq$e">
      <ref role="3uigEE" to="upz5:i1Qa0Fe" resolve="MultiTuple" />
    </node>
    <node concept="4DdV2" id="2yCvSeNKOMT" role="4Dd$B">
      <node concept="3clFbS" id="2yCvSeNKOMU" role="2VODD2">
        <node concept="3cpWs8" id="2yCvSeNKOMV" role="3cqZAp">
          <node concept="3cpWsn" id="2yCvSeNKOMW" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="2fkl22" id="2yCvSeNKOMX" role="1tU5fm" />
            <node concept="2ShNRf" id="2yCvSeNKOMY" role="33vP2m">
              <node concept="2fkl23" id="2yCvSeNKOMZ" role="2ShVmc" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2yCvSeNKON0" role="3cqZAp">
          <node concept="3cpWsn" id="2yCvSeNKON1" role="3cpWs9">
            <property role="TrG5h" value="values" />
            <node concept="10Q1$e" id="2yCvSeNKON2" role="1tU5fm">
              <node concept="3uibUv" id="2yCvSeNKON3" role="10Q1$1">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
            </node>
            <node concept="2OqwBi" id="2yCvSeNKON4" role="33vP2m">
              <node concept="4DuUT" id="2yCvSeNKON5" role="2Oq$k0" />
              <node concept="n0Ref" id="2yCvSeNKON6" role="2OqNvi">
                <ref role="2Oxat5" to="upz5:i1Qa0Fo" resolve="values" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="2yCvSeNKON7" role="3cqZAp">
          <node concept="3clFbS" id="2yCvSeNKON8" role="2LFqv$">
            <node concept="3clFbF" id="2yCvSeNKON9" role="3cqZAp">
              <node concept="2OqwBi" id="2yCvSeNKONa" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagTtf2" role="2Oq$k0">
                  <ref role="3cqZAo" node="2yCvSeNKOMW" resolve="result" />
                </node>
                <node concept="liA8E" id="2yCvSeNKONc" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                  <node concept="2ShNRf" id="2yCvSeNKONd" role="37wK5m">
                    <node concept="4Qynq" id="2yCvSeNKONe" role="2ShVmc">
                      <ref role="4QCsL" node="2yCvSeNKONB" resolve="element" />
                      <node concept="AH0OO" id="2yCvSeNKONf" role="4QCpJ">
                        <node concept="37vLTw" id="3GM_nagTA48" role="AHEQo">
                          <ref role="3cqZAo" node="2yCvSeNKONi" resolve="i" />
                        </node>
                        <node concept="37vLTw" id="3GM_nagTtyk" role="AHHXb">
                          <ref role="3cqZAo" node="2yCvSeNKON1" resolve="values" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="2yCvSeNKONi" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="2yCvSeNKONj" role="1tU5fm" />
            <node concept="3cmrfG" id="2yCvSeNKONk" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="2yCvSeNKONl" role="1Dwp0S">
            <node concept="2OqwBi" id="2yCvSeNKONm" role="3uHU7w">
              <node concept="37vLTw" id="3GM_nagTAwh" role="2Oq$k0">
                <ref role="3cqZAo" node="2yCvSeNKON1" resolve="values" />
              </node>
              <node concept="1Rwk04" id="2yCvSeNKONo" role="2OqNvi" />
            </node>
            <node concept="37vLTw" id="3GM_nagTwHZ" role="3uHU7B">
              <ref role="3cqZAo" node="2yCvSeNKONi" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="2yCvSeNKONq" role="1Dwrff">
            <node concept="37vLTw" id="3GM_nagTt3d" role="2$L3a6">
              <ref role="3cqZAo" node="2yCvSeNKONi" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2yCvSeNKONs" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTrkY" role="3cqZAk">
            <ref role="3cqZAo" node="2yCvSeNKOMW" resolve="result" />
          </node>
        </node>
      </node>
    </node>
    <node concept="4DdV6" id="2yCvSeNKONu" role="4Dd$A">
      <node concept="3clFbS" id="2yCvSeNKONv" role="2VODD2">
        <node concept="3clFbF" id="2yCvSeNKONw" role="3cqZAp">
          <node concept="3cpWs3" id="2yCvSeNKONx" role="3clFbG">
            <node concept="Xl_RD" id="2yCvSeNKONy" role="3uHU7B">
              <property role="Xl_RC" value="tuple " />
            </node>
            <node concept="2OqwBi" id="2yCvSeNKONz" role="3uHU7w">
              <node concept="4DuUT" id="2yCvSeNKON$" role="2Oq$k0" />
              <node concept="liA8E" id="2yCvSeNKON_" role="2OqNvi">
                <ref role="37wK5l" to="upz5:i1Qa0HJ" resolve="toString" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="ykIXb" id="2yCvSeNKONA">
    <property role="TrG5h" value="TuplesWatchables" />
    <property role="3GE5qa" value="tuples" />
    <node concept="yk$m5" id="2yCvSeNKONB" role="ykIX8">
      <property role="TrG5h" value="element" />
    </node>
  </node>
  <node concept="jiW97" id="2yCvSeNKONC">
    <property role="TrG5h" value="SNodeViewer" />
    <property role="3GE5qa" value="smodel" />
    <node concept="3Tqbb2" id="2yCvSeNKOND" role="4Dq$e" />
    <node concept="4DdV2" id="2yCvSeNKONE" role="4Dd$B">
      <node concept="3clFbS" id="2yCvSeNKONF" role="2VODD2">
        <node concept="3cpWs8" id="2yCvSeNKONG" role="3cqZAp">
          <node concept="3cpWsn" id="2yCvSeNKONH" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="2fkl22" id="2yCvSeNKONI" role="1tU5fm" />
            <node concept="2ShNRf" id="2yCvSeNKONJ" role="33vP2m">
              <node concept="2fkl23" id="2yCvSeNKONK" role="2ShVmc" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2yCvSeNKONL" role="3cqZAp" />
        <node concept="3cpWs8" id="tajkkrJ3S_" role="3cqZAp">
          <node concept="3cpWsn" id="tajkkrJ3SA" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3uibUv" id="tajkkrJ3Nq" role="1tU5fm">
              <ref role="3uigEE" to="w1kc:~SNode" resolve="SNode" />
            </node>
            <node concept="10QFUN" id="tajkkrJ3SB" role="33vP2m">
              <node concept="2JrnkZ" id="tajkkrJ3SC" role="10QFUP">
                <node concept="4DuUT" id="tajkkrJ3SD" role="2JrQYb" />
              </node>
              <node concept="3uibUv" id="tajkkrJ3SE" role="10QFUM">
                <ref role="3uigEE" to="w1kc:~SNode" resolve="SNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="tajkkrJ4gz" role="3cqZAp" />
        <node concept="3clFbF" id="2yCvSeNKONM" role="3cqZAp">
          <node concept="2OqwBi" id="2yCvSeNKONN" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTw2h" role="2Oq$k0">
              <ref role="3cqZAo" node="2yCvSeNKONH" resolve="result" />
            </node>
            <node concept="liA8E" id="2yCvSeNKONP" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
              <node concept="2ShNRf" id="2yCvSeNKONQ" role="37wK5m">
                <node concept="4Qynq" id="2yCvSeNKONR" role="2ShVmc">
                  <ref role="4QCsL" node="2yCvSeNKOQB" resolve="text" />
                  <node concept="2OqwBi" id="7LmwlFdPtws" role="4QCpJ">
                    <node concept="37vLTw" id="tajkkrJ6dU" role="2Oq$k0">
                      <ref role="3cqZAo" node="tajkkrJ3SA" resolve="node" />
                    </node>
                    <node concept="liA8E" id="7LmwlFdPtwv" role="2OqNvi">
                      <ref role="37wK5l" to="w1kc:~SNode.getPresentation()" resolve="getPresentation" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2yCvSeNKONW" role="3cqZAp">
          <node concept="2OqwBi" id="2yCvSeNKONX" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTtPF" role="2Oq$k0">
              <ref role="3cqZAo" node="2yCvSeNKONH" resolve="result" />
            </node>
            <node concept="liA8E" id="2yCvSeNKONZ" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
              <node concept="2ShNRf" id="2yCvSeNKOO0" role="37wK5m">
                <node concept="4Qynq" id="2yCvSeNKOO1" role="2ShVmc">
                  <ref role="4QCsL" node="2yCvSeNKOQ_" resolve="id" />
                  <node concept="2OqwBi" id="2yCvSeNKOO2" role="4QCpJ">
                    <node concept="37vLTw" id="tajkkrJ676" role="2Oq$k0">
                      <ref role="3cqZAo" node="tajkkrJ3SA" resolve="node" />
                    </node>
                    <node concept="n0Ref" id="2yCvSeNKOO5" role="2OqNvi">
                      <ref role="2Oxat5" to="w1kc:~SNode.myId" resolve="myId" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2yCvSeNKOO6" role="3cqZAp">
          <node concept="2OqwBi" id="2yCvSeNKOO7" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTrPv" role="2Oq$k0">
              <ref role="3cqZAo" node="2yCvSeNKONH" resolve="result" />
            </node>
            <node concept="liA8E" id="2yCvSeNKOO9" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
              <node concept="2ShNRf" id="2yCvSeNKOOa" role="37wK5m">
                <node concept="4Qynq" id="2yCvSeNKOOb" role="2ShVmc">
                  <ref role="4QCsL" node="2yCvSeNKOQA" resolve="model" />
                  <node concept="2OqwBi" id="2yCvSeNKOOc" role="4QCpJ">
                    <node concept="liA8E" id="647MIFZIikv" role="2OqNvi">
                      <ref role="37wK5l" to="w1kc:~SNode.getModel()" resolve="getModel" />
                    </node>
                    <node concept="37vLTw" id="tajkkrJ6sU" role="2Oq$k0">
                      <ref role="3cqZAo" node="tajkkrJ3SA" resolve="node" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2yCvSeNKOOg" role="3cqZAp">
          <node concept="2OqwBi" id="2yCvSeNKOOh" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTxMD" role="2Oq$k0">
              <ref role="3cqZAo" node="2yCvSeNKONH" resolve="result" />
            </node>
            <node concept="liA8E" id="2yCvSeNKOOj" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
              <node concept="2ShNRf" id="2yCvSeNKOOk" role="37wK5m">
                <node concept="4Qynq" id="2yCvSeNKOOl" role="2ShVmc">
                  <ref role="4QCsL" node="2yCvSeNKOQ$" resolve="concept" />
                  <node concept="2OqwBi" id="5oePWfG5dHI" role="4QCpJ">
                    <node concept="2OqwBi" id="4VPhSN5raFX" role="2Oq$k0">
                      <node concept="n0Ref" id="5oePWfG5cTS" role="2OqNvi">
                        <ref role="2Oxat5" to="w1kc:~SNode.myConcept" resolve="myConcept" />
                      </node>
                      <node concept="37vLTw" id="4VPhSN5raCu" role="2Oq$k0">
                        <ref role="3cqZAo" node="tajkkrJ3SA" resolve="node" />
                      </node>
                    </node>
                    <node concept="liA8E" id="5oePWfG5eDC" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4VPhSN5qiL8" role="3cqZAp">
          <node concept="3y3z36" id="4VPhSN5qjtj" role="3clFbw">
            <node concept="10Nm6u" id="4VPhSN5qjup" role="3uHU7w" />
            <node concept="2OqwBi" id="4VPhSN5qiR8" role="3uHU7B">
              <node concept="n0Ref" id="4VPhSN5qj6c" role="2OqNvi">
                <ref role="2Oxat5" to="w1kc:~SNode.parent" resolve="parent" />
              </node>
              <node concept="37vLTw" id="4VPhSN5qiND" role="2Oq$k0">
                <ref role="3cqZAo" node="tajkkrJ3SA" resolve="node" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="4VPhSN5qiLa" role="3clFbx">
            <node concept="3clFbF" id="4VPhSN5qjwp" role="3cqZAp">
              <node concept="2OqwBi" id="4VPhSN5qk1m" role="3clFbG">
                <node concept="liA8E" id="4VPhSN5qoYn" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                  <node concept="2ShNRf" id="4VPhSN5qp9n" role="37wK5m">
                    <node concept="4Qynq" id="4VPhSN5qzid" role="2ShVmc">
                      <ref role="4QCsL" node="4VPhSN5qfGX" resolve="parent" />
                      <node concept="2OqwBi" id="4VPhSN5q$0d" role="4QCpJ">
                        <node concept="n0Ref" id="4VPhSN5q$ey" role="2OqNvi">
                          <ref role="2Oxat5" to="w1kc:~SNode.parent" resolve="parent" />
                        </node>
                        <node concept="37vLTw" id="4VPhSN5qzWI" role="2Oq$k0">
                          <ref role="3cqZAo" node="tajkkrJ3SA" resolve="node" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="4VPhSN5qjwo" role="2Oq$k0">
                  <ref role="3cqZAo" node="2yCvSeNKONH" resolve="result" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2yCvSeNKOOp" role="3cqZAp" />
        <node concept="3SKdUt" id="48aAfqzpw6l" role="3cqZAp">
          <node concept="1PaTwC" id="48aAfqzpw6m" role="1aUNEU">
            <node concept="3oM_SD" id="48aAfqzpxoQ" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="48aAfqzpxoT" role="1PaTwD">
              <property role="3oM_SC" value="suppose" />
            </node>
            <node concept="3oM_SD" id="48aAfqzpxp4" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="48aAfqzpxpc" role="1PaTwD">
              <property role="3oM_SC" value="code" />
            </node>
            <node concept="3oM_SD" id="48aAfqzpxpm" role="1PaTwD">
              <property role="3oM_SC" value="here" />
            </node>
            <node concept="3oM_SD" id="48aAfqzpxpx" role="1PaTwD">
              <property role="3oM_SC" value="doesn't" />
            </node>
            <node concept="3oM_SD" id="48aAfqzpxpK" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="3oM_SD" id="48aAfqzpxpW" role="1PaTwD">
              <property role="3oM_SC" value="API" />
            </node>
            <node concept="3oM_SD" id="48aAfqzpxq9" role="1PaTwD">
              <property role="3oM_SC" value="methods" />
            </node>
            <node concept="3oM_SD" id="48aAfqzpxqr" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="48aAfqzpxqD" role="1PaTwD">
              <property role="3oM_SC" value="avoid" />
            </node>
            <node concept="3oM_SD" id="48aAfqzpxqV" role="1PaTwD">
              <property role="3oM_SC" value="read" />
            </node>
            <node concept="3oM_SD" id="48aAfqzpxrf" role="1PaTwD">
              <property role="3oM_SC" value="access" />
            </node>
            <node concept="3oM_SD" id="48aAfqzpxse" role="1PaTwD">
              <property role="3oM_SC" value="dispatch." />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="48aAfqzpz9t" role="3cqZAp">
          <node concept="1PaTwC" id="48aAfqzpz9u" role="1aUNEU">
            <node concept="3oM_SD" id="48aAfqzpzcn" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="48aAfqzp$KV" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="48aAfqzp$L_" role="1PaTwD">
              <property role="3oM_SC" value="it's" />
            </node>
            <node concept="3oM_SD" id="48aAfqzp$LI" role="1PaTwD">
              <property role="3oM_SC" value="not," />
            </node>
            <node concept="3oM_SD" id="48aAfqzp$Ma" role="1PaTwD">
              <property role="3oM_SC" value="then" />
            </node>
            <node concept="3oM_SD" id="48aAfqzp$MB" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="48aAfqzp$Nk" role="1PaTwD">
              <property role="3oM_SC" value="could" />
            </node>
            <node concept="3oM_SD" id="48aAfqzp$Oq" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="48aAfqzp$OB" role="1PaTwD">
              <property role="3oM_SC" value="imagine" />
            </node>
            <node concept="3oM_SD" id="48aAfqzp$Pb" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="48aAfqzp$PE" role="1PaTwD">
              <property role="3oM_SC" value="reason" />
            </node>
            <node concept="3oM_SD" id="48aAfqzp$PX" role="1PaTwD">
              <property role="3oM_SC" value="why" />
            </node>
            <node concept="3oM_SD" id="48aAfqzp$Qe" role="1PaTwD">
              <property role="3oM_SC" value="it's" />
            </node>
            <node concept="3oM_SD" id="48aAfqzp$R5" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="48aAfqzp$RF" role="1PaTwD">
              <property role="3oM_SC" value="way." />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="48aAfqzpLPK" role="3cqZAp">
          <node concept="1PaTwC" id="48aAfqzpLPL" role="1aUNEU">
            <node concept="3oM_SD" id="48aAfqzpNzE" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="48aAfqzpNzK" role="1PaTwD">
              <property role="3oM_SC" value="What" />
            </node>
            <node concept="3oM_SD" id="48aAfqzpNLK" role="1PaTwD">
              <property role="3oM_SC" value="makes" />
            </node>
            <node concept="3oM_SD" id="48aAfqzpNLQ" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="48aAfqzpNLY" role="1PaTwD">
              <property role="3oM_SC" value="doubt" />
            </node>
            <node concept="3oM_SD" id="48aAfqzpNZO" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="48aAfqzpO3K" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="48aAfqzpO3X" role="1PaTwD">
              <property role="3oM_SC" value="(a)" />
            </node>
            <node concept="3oM_SD" id="48aAfqzpOBD" role="1PaTwD">
              <property role="3oM_SC" value="author;" />
            </node>
            <node concept="3oM_SD" id="48aAfqzpOBP" role="1PaTwD">
              <property role="3oM_SC" value="(b)" />
            </node>
            <node concept="3oM_SD" id="48aAfqzpOIT" role="1PaTwD">
              <property role="3oM_SC" value="SNodeOperations.getProperties()" />
            </node>
            <node concept="3oM_SD" id="48aAfqzpPbC" role="1PaTwD">
              <property role="3oM_SC" value="or" />
            </node>
            <node concept="3oM_SD" id="48aAfqzpPiH" role="1PaTwD">
              <property role="3oM_SC" value="similar" />
            </node>
            <node concept="3oM_SD" id="48aAfqzpPxs" role="1PaTwD">
              <property role="3oM_SC" value="right" />
            </node>
            <node concept="3oM_SD" id="48aAfqzpP_z" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="48aAfqzpPRo" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="48aAfqzpPRH" role="1PaTwD">
              <property role="3oM_SC" value="start" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="48aAfqzq9k0" role="3cqZAp">
          <node concept="1PaTwC" id="48aAfqzq9k1" role="1aUNEU">
            <node concept="3oM_SD" id="48aAfqzqaPE" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="48aAfqzqaPO" role="1PaTwD">
              <property role="3oM_SC" value="This" />
            </node>
            <node concept="3oM_SD" id="48aAfqzqaNN" role="1PaTwD">
              <property role="3oM_SC" value="hard-coded" />
            </node>
            <node concept="3oM_SD" id="48aAfqzqaO3" role="1PaTwD">
              <property role="3oM_SC" value="knowledge" />
            </node>
            <node concept="3oM_SD" id="48aAfqzqaOl" role="1PaTwD">
              <property role="3oM_SC" value="about" />
            </node>
            <node concept="3oM_SD" id="48aAfqzqaOy" role="1PaTwD">
              <property role="3oM_SC" value="SNode" />
            </node>
            <node concept="3oM_SD" id="48aAfqzqaOK" role="1PaTwD">
              <property role="3oM_SC" value="internals" />
            </node>
            <node concept="3oM_SD" id="48aAfqzqaP3" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="48aAfqzqaPg" role="1PaTwD">
              <property role="3oM_SC" value="awful," />
            </node>
            <node concept="3oM_SD" id="48aAfqzqaQ7" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="48aAfqzqaQk" role="1PaTwD">
              <property role="3oM_SC" value="wonder" />
            </node>
            <node concept="3oM_SD" id="48aAfqzqaQS" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="48aAfqzqaR9" role="1PaTwD">
              <property role="3oM_SC" value="read" />
            </node>
            <node concept="3oM_SD" id="48aAfqzqaRs" role="1PaTwD">
              <property role="3oM_SC" value="access" />
            </node>
            <node concept="3oM_SD" id="48aAfqzqaRM" role="1PaTwD">
              <property role="3oM_SC" value="(if" />
            </node>
            <node concept="3oM_SD" id="48aAfqzqaS6" role="1PaTwD">
              <property role="3oM_SC" value="it's" />
            </node>
            <node concept="3oM_SD" id="48aAfqzqaSw" role="1PaTwD">
              <property role="3oM_SC" value="true)" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="48aAfqzqc_h" role="3cqZAp">
          <node concept="1PaTwC" id="48aAfqzqc_i" role="1aUNEU">
            <node concept="3oM_SD" id="48aAfqzqcDb" role="1PaTwD">
              <property role="3oM_SC" value=" " />
            </node>
            <node concept="3oM_SD" id="48aAfqzqdzh" role="1PaTwD">
              <property role="3oM_SC" value="justifies" />
            </node>
            <node concept="3oM_SD" id="48aAfqzqdzK" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="48aAfqzqdzS" role="1PaTwD">
              <property role="3oM_SC" value="effort" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2yCvSeNKOOq" role="3cqZAp">
          <node concept="3cpWsn" id="2yCvSeNKOOr" role="3cpWs9">
            <property role="TrG5h" value="properties" />
            <node concept="10Q1$e" id="48aAfqzpttM" role="1tU5fm">
              <node concept="3uibUv" id="48aAfqzpttG" role="10Q1$1">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
            </node>
            <node concept="2OqwBi" id="2yCvSeNKOOu" role="33vP2m">
              <node concept="37vLTw" id="tajkkrJ6M_" role="2Oq$k0">
                <ref role="3cqZAo" node="tajkkrJ3SA" resolve="node" />
              </node>
              <node concept="n0Ref" id="48aAfqzpqCR" role="2OqNvi">
                <ref role="2Oxat5" to="w1kc:~SNode.myProperties" resolve="myProperties" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2yCvSeNKOOy" role="3cqZAp">
          <node concept="3clFbS" id="2yCvSeNKOOz" role="3clFbx">
            <node concept="1Dw8fO" id="48aAfqzpWtn" role="3cqZAp">
              <node concept="3clFbS" id="48aAfqzpWtp" role="2LFqv$">
                <node concept="3SKdUt" id="48aAfqzqfsJ" role="3cqZAp">
                  <node concept="1PaTwC" id="48aAfqzqfsK" role="1aUNEU">
                    <node concept="3oM_SD" id="48aAfqzqgDK" role="1PaTwD">
                      <property role="3oM_SC" value="XXX" />
                    </node>
                    <node concept="3oM_SD" id="48aAfqzq$Zq" role="1PaTwD">
                      <property role="3oM_SC" value="used" />
                    </node>
                    <node concept="3oM_SD" id="48aAfqzq_06" role="1PaTwD">
                      <property role="3oM_SC" value="to" />
                    </node>
                    <node concept="3oM_SD" id="48aAfqzq_0d" role="1PaTwD">
                      <property role="3oM_SC" value="be" />
                    </node>
                    <node concept="3oM_SD" id="48aAfqzq_0B" role="1PaTwD">
                      <property role="3oM_SC" value="SNodeOperations.getProperties().entrySet," />
                    </node>
                    <node concept="3oM_SD" id="48aAfqzq_4N" role="1PaTwD">
                      <property role="3oM_SC" value="although" />
                    </node>
                    <node concept="3oM_SD" id="48aAfqzq_5B" role="1PaTwD">
                      <property role="3oM_SC" value="I'm" />
                    </node>
                    <node concept="3oM_SD" id="48aAfqzq_5N" role="1PaTwD">
                      <property role="3oM_SC" value="pretty" />
                    </node>
                    <node concept="3oM_SD" id="48aAfqzq_6B" role="1PaTwD">
                      <property role="3oM_SC" value="sure" />
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="48aAfqzq_dY" role="3cqZAp">
                  <node concept="1PaTwC" id="48aAfqzq_dZ" role="1aUNEU">
                    <node concept="3oM_SD" id="48aAfqzq_en" role="1PaTwD">
                      <property role="3oM_SC" value="a" />
                    </node>
                    <node concept="3oM_SD" id="48aAfqzqArn" role="1PaTwD">
                      <property role="3oM_SC" value="Pair&lt;String,String&gt;" />
                    </node>
                    <node concept="3oM_SD" id="48aAfqzqAtG" role="1PaTwD">
                      <property role="3oM_SC" value="would" />
                    </node>
                    <node concept="3oM_SD" id="48aAfqzqAtQ" role="1PaTwD">
                      <property role="3oM_SC" value="do." />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="48aAfqzqQkk" role="3cqZAp">
                  <node concept="3cpWsn" id="48aAfqzqQkl" role="3cpWs9">
                    <property role="TrG5h" value="pid" />
                    <node concept="3uibUv" id="48aAfqzqQkm" role="1tU5fm">
                      <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
                    </node>
                    <node concept="10QFUN" id="48aAfqzqTLt" role="33vP2m">
                      <node concept="3uibUv" id="48aAfqzqUDr" role="10QFUM">
                        <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
                      </node>
                      <node concept="AH0OO" id="48aAfqzqS$i" role="10QFUP">
                        <node concept="37vLTw" id="48aAfqzr1La" role="AHEQo">
                          <ref role="3cqZAo" node="48aAfqzpWtq" resolve="i" />
                        </node>
                        <node concept="37vLTw" id="48aAfqzqRIr" role="AHHXb">
                          <ref role="3cqZAo" node="2yCvSeNKOOr" resolve="properties" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="48aAfqzqX6E" role="3cqZAp">
                  <node concept="3cpWsn" id="48aAfqzqX6H" role="3cpWs9">
                    <property role="TrG5h" value="pv" />
                    <node concept="17QB3L" id="48aAfqzqX6C" role="1tU5fm" />
                    <node concept="10QFUN" id="48aAfqzrcIT" role="33vP2m">
                      <node concept="17QB3L" id="48aAfqzre87" role="10QFUM" />
                      <node concept="AH0OO" id="48aAfqzr4FL" role="10QFUP">
                        <node concept="3cpWs3" id="48aAfqzr6zb" role="AHEQo">
                          <node concept="3cmrfG" id="48aAfqzr6zf" role="3uHU7w">
                            <property role="3cmrfH" value="1" />
                          </node>
                          <node concept="37vLTw" id="48aAfqzr5aE" role="3uHU7B">
                            <ref role="3cqZAo" node="48aAfqzpWtq" resolve="i" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="48aAfqzqYLu" role="AHHXb">
                          <ref role="3cqZAo" node="2yCvSeNKOOr" resolve="properties" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="48aAfqzqoD8" role="3cqZAp">
                  <node concept="3cpWsn" id="48aAfqzqoD9" role="3cpWs9">
                    <property role="TrG5h" value="property" />
                    <node concept="3uibUv" id="48aAfqzqoDa" role="1tU5fm">
                      <ref role="3uigEE" to="33ny:~AbstractMap$SimpleImmutableEntry" resolve="AbstractMap.SimpleImmutableEntry" />
                      <node concept="17QB3L" id="48aAfqzqy$8" role="11_B2D" />
                      <node concept="17QB3L" id="48aAfqzq$3Y" role="11_B2D" />
                    </node>
                    <node concept="2ShNRf" id="48aAfqzqrU9" role="33vP2m">
                      <node concept="1pGfFk" id="48aAfqzqrU8" role="2ShVmc">
                        <property role="373rjd" value="true" />
                        <ref role="37wK5l" to="33ny:~AbstractMap$SimpleImmutableEntry.&lt;init&gt;(java.lang.Object,java.lang.Object)" resolve="AbstractMap.SimpleImmutableEntry" />
                        <node concept="2OqwBi" id="48aAfqzrgYR" role="37wK5m">
                          <node concept="37vLTw" id="48aAfqzre_U" role="2Oq$k0">
                            <ref role="3cqZAo" node="48aAfqzqQkl" resolve="pid" />
                          </node>
                          <node concept="liA8E" id="48aAfqzriIB" role="2OqNvi">
                            <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="48aAfqzrfIm" role="37wK5m">
                          <ref role="3cqZAo" node="48aAfqzqX6H" resolve="pv" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="2yCvSeNKOOE" role="3cqZAp">
                  <node concept="2OqwBi" id="2yCvSeNKOOF" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagT_f$" role="2Oq$k0">
                      <ref role="3cqZAo" node="2yCvSeNKONH" resolve="result" />
                    </node>
                    <node concept="liA8E" id="2yCvSeNKOOH" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                      <node concept="2ShNRf" id="2yCvSeNKOOI" role="37wK5m">
                        <node concept="4Qynq" id="2yCvSeNKOOJ" role="2ShVmc">
                          <ref role="4QCsL" node="2yCvSeNKOQz" resolve="property" />
                          <node concept="37vLTw" id="3GM_nagTti9" role="4QCpJ">
                            <ref role="3cqZAo" node="48aAfqzqoD9" resolve="property" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="48aAfqzpWtq" role="1Duv9x">
                <property role="TrG5h" value="i" />
                <node concept="10Oyi0" id="48aAfqzpXTS" role="1tU5fm" />
                <node concept="3cmrfG" id="48aAfqzq03j" role="33vP2m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
              <node concept="3eOVzh" id="48aAfqzq2XM" role="1Dwp0S">
                <node concept="2OqwBi" id="48aAfqzq5lt" role="3uHU7w">
                  <node concept="37vLTw" id="48aAfqzq4a_" role="2Oq$k0">
                    <ref role="3cqZAo" node="2yCvSeNKOOr" resolve="properties" />
                  </node>
                  <node concept="1Rwk04" id="48aAfqzq6VU" role="2OqNvi" />
                </node>
                <node concept="37vLTw" id="48aAfqzq0XY" role="3uHU7B">
                  <ref role="3cqZAo" node="48aAfqzpWtq" resolve="i" />
                </node>
              </node>
              <node concept="d57v9" id="48aAfqzqNsR" role="1Dwrff">
                <node concept="3cmrfG" id="48aAfqzqNT3" role="37vLTx">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="37vLTw" id="48aAfqzqK0S" role="37vLTJ">
                  <ref role="3cqZAo" node="48aAfqzpWtq" resolve="i" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="48aAfqzpSCR" role="3clFbw">
            <node concept="10Nm6u" id="48aAfqzpTJx" role="3uHU7w" />
            <node concept="37vLTw" id="48aAfqzpRhB" role="3uHU7B">
              <ref role="3cqZAo" node="2yCvSeNKOOr" resolve="properties" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2yCvSeNKOOU" role="3cqZAp" />
        <node concept="3cpWs8" id="2yCvSeNKOOV" role="3cqZAp">
          <node concept="3cpWsn" id="2yCvSeNKOOW" role="3cpWs9">
            <property role="TrG5h" value="currentChild" />
            <node concept="3Tqbb2" id="2yCvSeNKOOX" role="1tU5fm" />
            <node concept="2OqwBi" id="2yCvSeNKOOY" role="33vP2m">
              <node concept="37vLTw" id="tajkkrJ7aD" role="2Oq$k0">
                <ref role="3cqZAo" node="tajkkrJ3SA" resolve="node" />
              </node>
              <node concept="n0Ref" id="6$NyZzUCWmp" role="2OqNvi">
                <ref role="2Oxat5" to="w1kc:~SNode.first" resolve="first" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="2yCvSeNKOP2" role="3cqZAp">
          <node concept="3y3z36" id="2yCvSeNKOP3" role="2$JKZa">
            <node concept="10Nm6u" id="2yCvSeNKOP4" role="3uHU7w" />
            <node concept="37vLTw" id="3GM_nagTtze" role="3uHU7B">
              <ref role="3cqZAo" node="2yCvSeNKOOW" resolve="currentChild" />
            </node>
          </node>
          <node concept="3clFbS" id="2yCvSeNKOP6" role="2LFqv$">
            <node concept="3clFbF" id="2yCvSeNKOP7" role="3cqZAp">
              <node concept="2OqwBi" id="2yCvSeNKOP8" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagT_tR" role="2Oq$k0">
                  <ref role="3cqZAo" node="2yCvSeNKONH" resolve="result" />
                </node>
                <node concept="liA8E" id="2yCvSeNKOPa" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                  <node concept="2ShNRf" id="2yCvSeNKOPb" role="37wK5m">
                    <node concept="4Qynq" id="2yCvSeNKOPc" role="2ShVmc">
                      <ref role="4QCsL" node="2yCvSeNKOQx" resolve="child" />
                      <node concept="37vLTw" id="3GM_nagTs0I" role="4QCpJ">
                        <ref role="3cqZAo" node="2yCvSeNKOOW" resolve="currentChild" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2yCvSeNKOPe" role="3cqZAp">
              <node concept="37vLTI" id="2yCvSeNKOPf" role="3clFbG">
                <node concept="2OqwBi" id="2yCvSeNKOPg" role="37vLTx">
                  <node concept="37vLTw" id="tajkkrJ7mL" role="2Oq$k0">
                    <ref role="3cqZAo" node="tajkkrJ3SA" resolve="node" />
                  </node>
                  <node concept="n0Ref" id="6$NyZzUCWms" role="2OqNvi">
                    <ref role="2Oxat5" to="w1kc:~SNode.next" resolve="next" />
                  </node>
                </node>
                <node concept="37vLTw" id="3GM_nagTvp$" role="37vLTJ">
                  <ref role="3cqZAo" node="2yCvSeNKOOW" resolve="currentChild" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2yCvSeNKOPl" role="3cqZAp" />
        <node concept="3cpWs8" id="2yCvSeNKOPm" role="3cqZAp">
          <node concept="3cpWsn" id="2yCvSeNKOPn" role="3cpWs9">
            <property role="TrG5h" value="references" />
            <node concept="10Q1$e" id="2yCvSeNKOPo" role="1tU5fm">
              <node concept="3uibUv" id="2yCvSeNKOPp" role="10Q1$1">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
            </node>
            <node concept="2OqwBi" id="2yCvSeNKOPq" role="33vP2m">
              <node concept="37vLTw" id="tajkkrJ7t7" role="2Oq$k0">
                <ref role="3cqZAo" node="tajkkrJ3SA" resolve="node" />
              </node>
              <node concept="n0Ref" id="2yCvSeNKOPt" role="2OqNvi">
                <ref role="2Oxat5" to="w1kc:~SNode.myReferences" resolve="myReferences" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2yCvSeNKOPu" role="3cqZAp">
          <node concept="3clFbS" id="2yCvSeNKOPv" role="3clFbx">
            <node concept="3SKdUt" id="48aAfqzrrBA" role="3cqZAp">
              <node concept="1PaTwC" id="48aAfqzrrBB" role="1aUNEU">
                <node concept="3oM_SD" id="48aAfqzrs5K" role="1PaTwD">
                  <property role="3oM_SC" value="[x]" />
                </node>
                <node concept="3oM_SD" id="48aAfqzrs5P" role="1PaTwD">
                  <property role="3oM_SC" value="SReferenceLink;" />
                </node>
                <node concept="3oM_SD" id="48aAfqzrs6a" role="1PaTwD">
                  <property role="3oM_SC" value="[x+1]" />
                </node>
                <node concept="3oM_SD" id="48aAfqzrs6m" role="1PaTwD">
                  <property role="3oM_SC" value="AssociationData" />
                </node>
              </node>
            </node>
            <node concept="1Dw8fO" id="2yCvSeNKOPw" role="3cqZAp">
              <node concept="3clFbS" id="2yCvSeNKOPx" role="2LFqv$">
                <node concept="3clFbF" id="2yCvSeNKOPy" role="3cqZAp">
                  <node concept="2OqwBi" id="2yCvSeNKOPz" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagTv3o" role="2Oq$k0">
                      <ref role="3cqZAo" node="2yCvSeNKONH" resolve="result" />
                    </node>
                    <node concept="liA8E" id="2yCvSeNKOP_" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                      <node concept="2ShNRf" id="2yCvSeNKOPA" role="37wK5m">
                        <node concept="4Qynq" id="2yCvSeNKOPB" role="2ShVmc">
                          <ref role="4QCsL" node="2yCvSeNKOQy" resolve="reference" />
                          <node concept="AH0OO" id="2yCvSeNKOPC" role="4QCpJ">
                            <node concept="37vLTw" id="3GM_nagTxvg" role="AHEQo">
                              <ref role="3cqZAo" node="2yCvSeNKOPF" resolve="i" />
                            </node>
                            <node concept="37vLTw" id="3GM_nagTuJy" role="AHHXb">
                              <ref role="3cqZAo" node="2yCvSeNKOPn" resolve="references" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="2yCvSeNKOPF" role="1Duv9x">
                <property role="TrG5h" value="i" />
                <node concept="10Oyi0" id="2yCvSeNKOPG" role="1tU5fm" />
                <node concept="3cmrfG" id="2yCvSeNKOPH" role="33vP2m">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
              <node concept="3eOVzh" id="2yCvSeNKOPI" role="1Dwp0S">
                <node concept="2OqwBi" id="2yCvSeNKOPJ" role="3uHU7w">
                  <node concept="37vLTw" id="3GM_nagTuOs" role="2Oq$k0">
                    <ref role="3cqZAo" node="2yCvSeNKOPn" resolve="references" />
                  </node>
                  <node concept="1Rwk04" id="2yCvSeNKOPL" role="2OqNvi" />
                </node>
                <node concept="37vLTw" id="3GM_nagTAID" role="3uHU7B">
                  <ref role="3cqZAo" node="2yCvSeNKOPF" resolve="i" />
                </node>
              </node>
              <node concept="d57v9" id="48aAfqzro6N" role="1Dwrff">
                <node concept="3cmrfG" id="48aAfqzrphf" role="37vLTx">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="37vLTw" id="3GM_nagTuOZ" role="37vLTJ">
                  <ref role="3cqZAo" node="2yCvSeNKOPF" resolve="i" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="2yCvSeNKOPP" role="3clFbw">
            <node concept="10Nm6u" id="2yCvSeNKOPQ" role="3uHU7w" />
            <node concept="37vLTw" id="3GM_nagTzfk" role="3uHU7B">
              <ref role="3cqZAo" node="2yCvSeNKOPn" resolve="references" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2yCvSeNKOPS" role="3cqZAp" />
        <node concept="3cpWs6" id="2yCvSeNKOPT" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTvEU" role="3cqZAk">
            <ref role="3cqZAo" node="2yCvSeNKONH" resolve="result" />
          </node>
        </node>
      </node>
    </node>
    <node concept="4DdV6" id="2yCvSeNKOPV" role="4Dd$A">
      <node concept="3clFbS" id="2yCvSeNKOPW" role="2VODD2">
        <node concept="3cpWs8" id="tajkkrJ4tI" role="3cqZAp">
          <node concept="3cpWsn" id="tajkkrJ4tJ" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3uibUv" id="tajkkrJ4tK" role="1tU5fm">
              <ref role="3uigEE" to="w1kc:~SNode" resolve="SNode" />
            </node>
            <node concept="10QFUN" id="tajkkrJ4tL" role="33vP2m">
              <node concept="2JrnkZ" id="tajkkrJ4tM" role="10QFUP">
                <node concept="4DuUT" id="tajkkrJ4tN" role="2JrQYb" />
              </node>
              <node concept="3uibUv" id="tajkkrJ4tO" role="10QFUM">
                <ref role="3uigEE" to="w1kc:~SNode" resolve="SNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="tajkkrJ4w0" role="3cqZAp" />
        <node concept="3cpWs8" id="2yCvSeNKOPX" role="3cqZAp">
          <node concept="3cpWsn" id="2yCvSeNKOPY" role="3cpWs9">
            <property role="TrG5h" value="containingRole" />
            <node concept="17QB3L" id="2yCvSeNKOPZ" role="1tU5fm" />
            <node concept="3K4zz7" id="47fY$PLKTZM" role="33vP2m">
              <node concept="2OqwBi" id="47fY$PLKV4M" role="3K4GZi">
                <node concept="2OqwBi" id="47fY$PLKUuA" role="2Oq$k0">
                  <node concept="37vLTw" id="47fY$PLKUl2" role="2Oq$k0">
                    <ref role="3cqZAo" node="tajkkrJ4tJ" resolve="node" />
                  </node>
                  <node concept="n0Ref" id="47fY$PLKUPC" role="2OqNvi">
                    <ref role="2Oxat5" to="w1kc:~SNode.myRoleInParent" resolve="myRoleInParent" />
                  </node>
                </node>
                <node concept="liA8E" id="47fY$PLKVki" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                </node>
              </node>
              <node concept="10Nm6u" id="47fY$PLKUaw" role="3K4E3e" />
              <node concept="3clFbC" id="47fY$PLKTET" role="3K4Cdx">
                <node concept="10Nm6u" id="47fY$PLKTP6" role="3uHU7w" />
                <node concept="2OqwBi" id="47fY$PLKT5L" role="3uHU7B">
                  <node concept="37vLTw" id="47fY$PLKSWQ" role="2Oq$k0">
                    <ref role="3cqZAo" node="tajkkrJ4tJ" resolve="node" />
                  </node>
                  <node concept="n0Ref" id="47fY$PLKTsh" role="2OqNvi">
                    <ref role="2Oxat5" to="w1kc:~SNode.myRoleInParent" resolve="myRoleInParent" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2yCvSeNKOQ4" role="3cqZAp">
          <node concept="3clFbS" id="2yCvSeNKOQ5" role="3clFbx">
            <node concept="3clFbF" id="2yCvSeNKOQ6" role="3cqZAp">
              <node concept="37vLTI" id="2yCvSeNKOQ7" role="3clFbG">
                <node concept="3cpWs3" id="2yCvSeNKOQ8" role="37vLTx">
                  <node concept="37vLTw" id="3GM_nagTy2h" role="3uHU7w">
                    <ref role="3cqZAo" node="2yCvSeNKOPY" resolve="containingRole" />
                  </node>
                  <node concept="Xl_RD" id="2yCvSeNKOQa" role="3uHU7B">
                    <property role="Xl_RC" value=" in role: " />
                  </node>
                </node>
                <node concept="37vLTw" id="3GM_nagTwh8" role="37vLTJ">
                  <ref role="3cqZAo" node="2yCvSeNKOPY" resolve="containingRole" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="2yCvSeNKOQc" role="3clFbw">
            <node concept="37vLTw" id="3GM_nagT_4n" role="3uHU7B">
              <ref role="3cqZAo" node="2yCvSeNKOPY" resolve="containingRole" />
            </node>
            <node concept="10Nm6u" id="2yCvSeNKOQe" role="3uHU7w" />
          </node>
          <node concept="9aQIb" id="2yCvSeNKOQf" role="9aQIa">
            <node concept="3clFbS" id="2yCvSeNKOQg" role="9aQI4">
              <node concept="3clFbF" id="2yCvSeNKOQh" role="3cqZAp">
                <node concept="37vLTI" id="2yCvSeNKOQi" role="3clFbG">
                  <node concept="Xl_RD" id="2yCvSeNKOQj" role="37vLTx">
                    <property role="Xl_RC" value="" />
                  </node>
                  <node concept="37vLTw" id="3GM_nagTB_i" role="37vLTJ">
                    <ref role="3cqZAo" node="2yCvSeNKOPY" resolve="containingRole" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="4VPhSN5oLhu" role="3cqZAp">
                <node concept="3clFbS" id="4VPhSN5oLhw" role="3clFbx">
                  <node concept="3clFbF" id="4VPhSN5oLjY" role="3cqZAp">
                    <node concept="37vLTI" id="4VPhSN5oL_S" role="3clFbG">
                      <node concept="Xl_RD" id="4VPhSN5oLA6" role="37vLTx">
                        <property role="Xl_RC" value=" (root)" />
                      </node>
                      <node concept="37vLTw" id="4VPhSN5oLjX" role="37vLTJ">
                        <ref role="3cqZAo" node="2yCvSeNKOPY" resolve="containingRole" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="4VPhSN5oL7O" role="3clFbw">
                  <node concept="10Nm6u" id="4VPhSN5oL8E" role="3uHU7w" />
                  <node concept="2OqwBi" id="4VPhSN5oIWw" role="3uHU7B">
                    <node concept="n0Ref" id="4VPhSN5oJZd" role="2OqNvi">
                      <ref role="2Oxat5" to="w1kc:~SNode.parent" resolve="parent" />
                    </node>
                    <node concept="37vLTw" id="4VPhSN5oISZ" role="2Oq$k0">
                      <ref role="3cqZAo" node="tajkkrJ4tJ" resolve="node" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2yCvSeNKOQl" role="3cqZAp">
          <node concept="3cpWs3" id="2yCvSeNKOQm" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagT$Jg" role="3uHU7w">
              <ref role="3cqZAo" node="2yCvSeNKOPY" resolve="containingRole" />
            </node>
            <node concept="3cpWs3" id="2yCvSeNKOQo" role="3uHU7B">
              <node concept="Xl_RD" id="2yCvSeNKOQp" role="3uHU7w">
                <property role="Xl_RC" value="&gt;" />
              </node>
              <node concept="3cpWs3" id="2yCvSeNKOQq" role="3uHU7B">
                <node concept="2OqwBi" id="5oePWfG5bnZ" role="3uHU7w">
                  <node concept="2OqwBi" id="2yCvSeNKOQr" role="2Oq$k0">
                    <node concept="37vLTw" id="tajkkrJ5cf" role="2Oq$k0">
                      <ref role="3cqZAo" node="tajkkrJ4tJ" resolve="node" />
                    </node>
                    <node concept="n0Ref" id="5oePWfG5aVa" role="2OqNvi">
                      <ref role="2Oxat5" to="w1kc:~SNode.myConcept" resolve="myConcept" />
                    </node>
                  </node>
                  <node concept="liA8E" id="5oePWfG5c66" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                  </node>
                </node>
                <node concept="Xl_RD" id="2yCvSeNKOQv" role="3uHU7B">
                  <property role="Xl_RC" value="node&lt;" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="ykIXb" id="2yCvSeNKOQw">
    <property role="TrG5h" value="SNodeWatchables" />
    <property role="3GE5qa" value="smodel" />
    <node concept="yk$m5" id="2yCvSeNKOQx" role="ykIX8">
      <property role="TrG5h" value="child" />
    </node>
    <node concept="yk$m5" id="2yCvSeNKOQy" role="ykIX8">
      <property role="TrG5h" value="reference" />
    </node>
    <node concept="yk$m5" id="2yCvSeNKOQz" role="ykIX8">
      <property role="TrG5h" value="property" />
    </node>
    <node concept="yk$m5" id="2yCvSeNKOQ$" role="ykIX8">
      <property role="TrG5h" value="concept" />
    </node>
    <node concept="yk$m5" id="2yCvSeNKOQ_" role="ykIX8">
      <property role="TrG5h" value="id" />
    </node>
    <node concept="yk$m5" id="2yCvSeNKOQA" role="ykIX8">
      <property role="TrG5h" value="model" />
    </node>
    <node concept="yk$m5" id="2yCvSeNKOQB" role="ykIX8">
      <property role="TrG5h" value="text" />
    </node>
    <node concept="yk$m5" id="4VPhSN5qfGX" role="ykIX8">
      <property role="TrG5h" value="parent" />
    </node>
  </node>
  <node concept="2DaZZR" id="6dAEaqvbBiF" />
  <node concept="2F3W$4" id="1W$tyNdzF5A">
    <property role="3GE5qa" value="debugger" />
    <node concept="2F3Wen" id="1W$tyNdzF5B" role="5baFN">
      <node concept="2F3Weq" id="1W$tyNdzF5C" role="2F3Weo">
        <node concept="3clFbS" id="1W$tyNdzF5D" role="2VODD2">
          <node concept="3cpWs6" id="1W$tyNdzF5E" role="3cqZAp">
            <node concept="2OqwBi" id="1W$tyNdzF5F" role="3cqZAk">
              <node concept="3Qg5_p" id="1W$tyNdzF5G" role="2Oq$k0">
                <property role="3Qg5_t" value="Java" />
              </node>
              <node concept="3B$Tw0" id="1W$tyNdzF5H" role="2OqNvi">
                <property role="3B$Tw5" value="Java Line Breakpoint" />
                <property role="3B$Tw2" value="JAVA_LINE_BREAKPOINT" />
                <node concept="5baDg" id="1W$tyNdzF5I" role="3B$Twl" />
                <node concept="5baDc" id="1W$tyNdzF5J" role="3B$Twk" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="MDQ5G" id="1W$tyNdzF5K" role="MDQ5i">
        <ref role="MDQ5H" to="tpee:fzclF8l" resolve="Statement" />
      </node>
    </node>
    <node concept="2F3Wen" id="1W$tyNdzF5L" role="5baFN">
      <node concept="2F3Weq" id="1W$tyNdzF5M" role="2F3Weo">
        <node concept="3clFbS" id="1W$tyNdzF5N" role="2VODD2">
          <node concept="3cpWs6" id="1W$tyNdzF5O" role="3cqZAp">
            <node concept="2OqwBi" id="1W$tyNdzF5P" role="3cqZAk">
              <node concept="3Qg5_p" id="1W$tyNdzF5Q" role="2Oq$k0">
                <property role="3Qg5_t" value="Java" />
              </node>
              <node concept="3B$Tw0" id="1W$tyNdzF5R" role="2OqNvi">
                <property role="3B$Tw5" value="Java Field Breakpoint" />
                <property role="3B$Tw2" value="JAVA_FIELD_BREAKPOINT" />
                <node concept="5baDc" id="1W$tyNdzF5S" role="3B$Twk" />
                <node concept="5baDg" id="1W$tyNdzF5T" role="3B$Twl" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="MDQ5G" id="1W$tyNdzF5U" role="MDQ5i">
        <ref role="MDQ5H" to="tpee:fz12cDC" resolve="FieldDeclaration" />
      </node>
      <node concept="MDQ5G" id="1W$tyNdzF5V" role="MDQ5i">
        <ref role="MDQ5H" to="tpee:f$Wx3kv" resolve="StaticFieldDeclaration" />
      </node>
    </node>
  </node>
</model>

