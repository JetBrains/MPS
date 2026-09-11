<?xml version="1.0" encoding="UTF-8"?>
<model ref="c7d5b9dd-a05f-4be2-bc73-f2e16994cc67/r:3d68296b-7ada-4491-8aa4-88e8ea6e4f67(jetbrains.mps.lang.classLike/jetbrains.mps.baseLanguage.lightweightdsl.behavior)">
  <persistence version="9" />
  <languages>
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <use id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation" version="5" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="oubp" ref="c7d5b9dd-a05f-4be2-bc73-f2e16994cc67/r:7cc2086d-c7d0-49c7-811c-ebbaf40d9195(jetbrains.mps.lang.classLike/jetbrains.mps.baseLanguage.lightweightdsl.structure)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="t6h5" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang.reflect(JDK/)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="3qmy" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.classloading(MPS.Core/)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="tpek" ref="r:00000000-0000-4000-0000-011c895902c0(jetbrains.mps.baseLanguage.behavior)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tpcn" ref="r:00000000-0000-4000-0000-011c8959028b(jetbrains.mps.lang.structure.behavior)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="xlb7" ref="r:cf42fd0a-68d2-493b-8b77-961658617704(jetbrains.mps.lang.modelapi.behavior)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="6496299201655527393" name="jetbrains.mps.lang.behavior.structure.LocalBehaviorMethodCall" flags="nn" index="BsUDl" />
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz">
        <property id="5864038008284099149" name="isStatic" index="2Ki8OM" />
        <property id="1225194472832" name="isVirtual" index="13i0it" />
        <property id="1225194472834" name="isAbstract" index="13i0iv" />
        <reference id="1225194472831" name="overriddenMethod" index="13i0hy" />
      </concept>
      <concept id="1225194628440" name="jetbrains.mps.lang.behavior.structure.SuperNodeExpression" flags="nn" index="13iAh5" />
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
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
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
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
      <concept id="4952749571008284462" name="jetbrains.mps.baseLanguage.structure.CatchVariable" flags="ng" index="XOnhg" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
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
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1513279640923991009" name="jetbrains.mps.baseLanguage.structure.IGenericClassCreator" flags="ngI" index="366HgL">
        <property id="1513279640906337053" name="inferTypeParams" index="373rjd" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
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
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG" />
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
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
      <concept id="3093926081414150598" name="jetbrains.mps.baseLanguage.structure.MultipleCatchClause" flags="ng" index="3uVAMA">
        <child id="8276990574895933173" name="catchBody" index="1zc67A" />
        <child id="8276990574895933172" name="throwable" index="1zc67B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="nn" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1200397529627" name="jetbrains.mps.baseLanguage.structure.CharConstant" flags="nn" index="1Xhbcc">
        <property id="1200397540847" name="charConstant" index="1XhdNS" />
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
        <property id="6489343236075007666" name="label" index="3hQQBS" />
        <child id="1196350785111" name="expression" index="2c44t1" />
      </concept>
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
      <concept id="5455284157994012186" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitLink" flags="ng" index="2pIpSj">
        <reference id="5455284157994012188" name="link" index="2pIpSl" />
        <child id="1595412875168045827" name="initValue" index="28nt2d" />
      </concept>
      <concept id="5455284157993911077" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitProperty" flags="ng" index="2pJxcG">
        <reference id="5455284157993911078" name="property" index="2pJxcJ" />
        <child id="1595412875168045201" name="initValue" index="28ntcv" />
      </concept>
      <concept id="5455284157993863837" name="jetbrains.mps.lang.quotation.structure.NodeBuilder" flags="nn" index="2pJPEk">
        <child id="5455284157993863838" name="quotedNode" index="2pJPEn" />
      </concept>
      <concept id="5455284157993863840" name="jetbrains.mps.lang.quotation.structure.NodeBuilderNode" flags="nn" index="2pJPED">
        <reference id="5455284157993910961" name="concept" index="2pJxaS" />
        <child id="5455284157993911099" name="values" index="2pJxcM" />
      </concept>
      <concept id="4056363777117001481" name="jetbrains.mps.lang.quotation.structure.StringToTypedValueMigrationInfo" flags="ngI" index="AAgTk">
        <property id="2173356959483005420" name="stringValueMigrated" index="3qcH_f" />
      </concept>
      <concept id="1196866233735" name="jetbrains.mps.lang.quotation.structure.PropertyAntiquotation" flags="ng" index="2EMmih" />
      <concept id="6985522012210254362" name="jetbrains.mps.lang.quotation.structure.NodeBuilderPropertyExpression" flags="nn" index="WxPPo">
        <child id="6985522012210254363" name="expression" index="WxPPp" />
      </concept>
      <concept id="8182547171709752110" name="jetbrains.mps.lang.quotation.structure.NodeBuilderExpression" flags="nn" index="36biLy">
        <child id="8182547171709752112" name="expression" index="36biLW" />
      </concept>
    </language>
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="7776141288922801652" name="jetbrains.mps.lang.actions.structure.NF_Concept_NewInstance" flags="nn" index="q_SaT" />
      <concept id="5480835971642155304" name="jetbrains.mps.lang.actions.structure.NF_Model_CreateNewNodeOperation" flags="nn" index="15TzpJ" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1204834851141" name="jetbrains.mps.lang.smodel.structure.PoundExpression" flags="ng" index="25Kdxt">
        <child id="1204834868751" name="expression" index="25KhWn" />
      </concept>
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="4693937538533521280" name="jetbrains.mps.lang.smodel.structure.OfConceptOperation" flags="ng" index="v3k3i">
        <child id="4693937538533538124" name="requestedConcept" index="v3oSu" />
      </concept>
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1143235216708" name="jetbrains.mps.lang.smodel.structure.Model_CreateNewNodeOperation" flags="nn" index="I8ghe">
        <reference id="1143235391024" name="concept" index="I8UWU" />
      </concept>
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1212008292747" name="jetbrains.mps.lang.smodel.structure.Model_GetLongNameOperation" flags="nn" index="LkI2h" />
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="334628810661441841" name="jetbrains.mps.lang.smodel.structure.AsSConcept" flags="nn" index="1rGIog" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1144146199828" name="jetbrains.mps.lang.smodel.structure.Node_CopyOperation" flags="nn" index="1$rogu" />
      <concept id="1219352745532" name="jetbrains.mps.lang.smodel.structure.NodeRefExpression" flags="nn" index="3B5_sB">
        <reference id="1219352800908" name="referentNode" index="3B5MYn" />
      </concept>
      <concept id="1172326502327" name="jetbrains.mps.lang.smodel.structure.Concept_IsExactlyOperation" flags="nn" index="3O6GUB">
        <child id="1206733650006" name="conceptArgument" index="3QVz_e" />
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
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="3364660638048049750" name="jetbrains.mps.lang.core.structure.PropertyAttribute" flags="ng" index="A9Btg">
        <property id="1757699476691236117" name="name_DebugInfo" index="2qtEX9" />
        <property id="1341860900487648621" name="propertyId" index="P4ACc" />
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
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="13h7C7" id="3geGFOI14GD">
    <property role="3GE5qa" value="member.methodDescriptor" />
    <ref role="13h7C2" to="oubp:3geGFOI0X5s" resolve="DependentTypeDescriptor" />
    <node concept="13i0hz" id="2h59CdJp8nr" role="13h7CS">
      <property role="TrG5h" value="create" />
      <node concept="3Tm1VV" id="2h59CdJp8ns" role="1B3o_S" />
      <node concept="3Tqbb2" id="2h59CdJp8Cs" role="3clF45">
        <ref role="ehGHo" to="oubp:3geGFOI0X5F" resolve="DependentTypeInstance" />
      </node>
      <node concept="3clFbS" id="2h59CdJp8nu" role="3clF47">
        <node concept="3clFbF" id="2h59CdJp8UI" role="3cqZAp">
          <node concept="2pJPEk" id="2h59CdJp8UG" role="3clFbG">
            <node concept="2pJPED" id="2h59CdJp8Vg" role="2pJPEn">
              <ref role="2pJxaS" to="oubp:3geGFOI0X5F" resolve="DependentTypeInstance" />
              <node concept="2pIpSj" id="2h59CdJp8VX" role="2pJxcM">
                <ref role="2pIpSl" to="oubp:3geGFOI0X5G" resolve="decl" />
                <node concept="36biLy" id="2h59CdJp8Zm" role="28nt2d">
                  <node concept="13iPFW" id="2h59CdJp908" role="36biLW" />
                </node>
              </node>
              <node concept="2pIpSj" id="2h59CdJp8WT" role="2pJxcM">
                <ref role="2pIpSl" to="oubp:7T23sO8AqCe" resolve="point" />
                <node concept="36biLy" id="2h59CdJp8XK" role="28nt2d">
                  <node concept="37vLTw" id="2h59CdJp8Yy" role="36biLW">
                    <ref role="3cqZAo" node="2h59CdJp8Uw" resolve="point" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2h59CdJp8Uw" role="3clF46">
        <property role="TrG5h" value="point" />
        <node concept="3Tqbb2" id="2h59CdJp8Uv" role="1tU5fm" />
      </node>
    </node>
    <node concept="13i0hz" id="3geGFOI14GE" role="13h7CS">
      <property role="TrG5h" value="getType" />
      <node concept="3Tm1VV" id="3geGFOI14GF" role="1B3o_S" />
      <node concept="3Tqbb2" id="1XvrRm0Y9Tx" role="3clF45">
        <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
      </node>
      <node concept="3clFbS" id="3geGFOI14GH" role="3clF47">
        <node concept="3J1_TO" id="3geGFOI14GI" role="3cqZAp">
          <node concept="3clFbS" id="3geGFOI14GJ" role="1zxBo7">
            <node concept="3cpWs8" id="3geGFOI14GK" role="3cqZAp">
              <node concept="3cpWsn" id="3geGFOI14GL" role="3cpWs9">
                <property role="TrG5h" value="className" />
                <node concept="17QB3L" id="3geGFOI14GM" role="1tU5fm" />
                <node concept="2OqwBi" id="2VRROcY8ASM" role="33vP2m">
                  <node concept="2OqwBi" id="2VRROcY8A_D" role="2Oq$k0">
                    <node concept="13iPFW" id="2VRROcY8A_E" role="2Oq$k0" />
                    <node concept="2Xjw5R" id="2VRROcY8A_F" role="2OqNvi">
                      <node concept="1xMEDy" id="2VRROcY8A_G" role="1xVPHs">
                        <node concept="chp4Y" id="2VRROcY8A_H" role="ri$Ld">
                          <ref role="cht4Q" to="oubp:3geGFOI0X5w" resolve="DSLDescriptor" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3zqWPK" id="70OdufORfU4" role="2OqNvi">
                    <ref role="37wK5l" node="3UdX2XvIeC6" resolve="getGeneratedQueriesQualifiedClassName" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3geGFOI14GV" role="3cqZAp">
              <node concept="3cpWsn" id="3geGFOI14GW" role="3cpWs9">
                <property role="TrG5h" value="classModule" />
                <node concept="3uibUv" id="3geGFOI14GX" role="1tU5fm">
                  <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                </node>
                <node concept="2OqwBi" id="3geGFOI14GY" role="33vP2m">
                  <node concept="2OqwBi" id="3geGFOI14GZ" role="2Oq$k0">
                    <node concept="2JrnkZ" id="3geGFOI14H0" role="2Oq$k0">
                      <node concept="13iPFW" id="3geGFOI14H1" role="2JrQYb" />
                    </node>
                    <node concept="liA8E" id="3geGFOI14H2" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                    </node>
                  </node>
                  <node concept="liA8E" id="3geGFOI14H3" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3geGFOI14H4" role="3cqZAp">
              <node concept="3cpWsn" id="3geGFOI14H5" role="3cpWs9">
                <property role="TrG5h" value="methods" />
                <node concept="10Q1$e" id="3geGFOI14H6" role="1tU5fm">
                  <node concept="3uibUv" id="3geGFOI14H7" role="10Q1$1">
                    <ref role="3uigEE" to="t6h5:~Method" resolve="Method" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3geGFOI14H8" role="33vP2m">
                  <node concept="liA8E" id="3geGFOI14H9" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Class.getMethods()" resolve="getMethods" />
                  </node>
                  <node concept="2OqwBi" id="3geGFOI14Ha" role="2Oq$k0">
                    <node concept="2YIFZM" id="3geGFOI14Hb" role="2Oq$k0">
                      <ref role="37wK5l" to="3qmy:~ClassLoaderManager.getInstance()" resolve="getInstance" />
                      <ref role="1Pybhc" to="3qmy:~ClassLoaderManager" resolve="ClassLoaderManager" />
                    </node>
                    <node concept="liA8E" id="3geGFOI14Hc" role="2OqNvi">
                      <ref role="37wK5l" to="3qmy:~ClassLoaderManager.getClass(org.jetbrains.mps.openapi.module.SModule,java.lang.String)" resolve="getClass" />
                      <node concept="37vLTw" id="3geGFOI14Hd" role="37wK5m">
                        <ref role="3cqZAo" node="3geGFOI14GW" resolve="classModule" />
                      </node>
                      <node concept="37vLTw" id="3geGFOI14He" role="37wK5m">
                        <ref role="3cqZAo" node="3geGFOI14GL" resolve="className" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="3geGFOI14Hf" role="3cqZAp">
              <node concept="3clFbS" id="3geGFOI14Hg" role="2LFqv$">
                <node concept="3clFbJ" id="3geGFOI14Hh" role="3cqZAp">
                  <node concept="3clFbS" id="3geGFOI14Hi" role="3clFbx">
                    <node concept="3clFbF" id="3geGFOI14Hj" role="3cqZAp">
                      <node concept="2OqwBi" id="3geGFOI14Hk" role="3clFbG">
                        <node concept="37vLTw" id="3geGFOI14Hl" role="2Oq$k0">
                          <ref role="3cqZAo" node="3geGFOI14HK" resolve="m" />
                        </node>
                        <node concept="liA8E" id="3geGFOI14Hm" role="2OqNvi">
                          <ref role="37wK5l" to="t6h5:~Method.setAccessible(boolean)" resolve="setAccessible" />
                          <node concept="3clFbT" id="3geGFOI14Hn" role="37wK5m">
                            <property role="3clFbU" value="true" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="3geGFOI14Ho" role="3cqZAp">
                      <node concept="1eOMI4" id="3geGFOI14Hq" role="3cqZAk">
                        <node concept="10QFUN" id="3geGFOI14Hr" role="1eOMHV">
                          <node concept="2OqwBi" id="3geGFOI14Hs" role="10QFUP">
                            <node concept="37vLTw" id="3geGFOI14Ht" role="2Oq$k0">
                              <ref role="3cqZAo" node="3geGFOI14HK" resolve="m" />
                            </node>
                            <node concept="liA8E" id="3geGFOI14Hu" role="2OqNvi">
                              <ref role="37wK5l" to="t6h5:~Method.invoke(java.lang.Object,java.lang.Object...)" resolve="invoke" />
                              <node concept="10Nm6u" id="3geGFOI14Hv" role="37wK5m" />
                              <node concept="37vLTw" id="3geGFOI14Hx" role="37wK5m">
                                <ref role="3cqZAo" node="3geGFOI14I1" resolve="node" />
                              </node>
                            </node>
                          </node>
                          <node concept="3Tqbb2" id="1XvrRm0Yw1i" role="10QFUM">
                            <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3geGFOI14H$" role="3clFbw">
                    <node concept="2OqwBi" id="3geGFOI14H_" role="2Oq$k0">
                      <node concept="37vLTw" id="3geGFOI14HA" role="2Oq$k0">
                        <ref role="3cqZAo" node="3geGFOI14HK" resolve="m" />
                      </node>
                      <node concept="liA8E" id="3geGFOI14HB" role="2OqNvi">
                        <ref role="37wK5l" to="t6h5:~Method.getName()" resolve="getName" />
                      </node>
                    </node>
                    <node concept="liA8E" id="3geGFOI14HC" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                      <node concept="2OqwBi" id="2dmnr4$zdgc" role="37wK5m">
                        <node concept="13iPFW" id="6fFJntugQ3Z" role="2Oq$k0" />
                        <node concept="3zqWPK" id="70OdufORfU6" role="2OqNvi">
                          <ref role="37wK5l" node="2dmnr4$zcCR" resolve="getGeneratedMethodName" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="3geGFOI14HK" role="1Duv9x">
                <property role="TrG5h" value="m" />
                <node concept="3uibUv" id="3geGFOI14HL" role="1tU5fm">
                  <ref role="3uigEE" to="t6h5:~Method" resolve="Method" />
                </node>
              </node>
              <node concept="37vLTw" id="3geGFOI14HM" role="1DdaDG">
                <ref role="3cqZAo" node="3geGFOI14H5" resolve="methods" />
              </node>
            </node>
            <node concept="3cpWs6" id="3geGFOI14HN" role="3cqZAp">
              <node concept="2ShNRf" id="1XvrRm0Yy6U" role="3cqZAk">
                <node concept="3zrR0B" id="1XvrRm0Yy6S" role="2ShVmc">
                  <node concept="3Tqbb2" id="1XvrRm0Yy6T" role="3zrR0E">
                    <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="3geGFOI14HP" role="1zxBo5">
            <node concept="XOnhg" id="3geGFOI14HQ" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="xvs04dFC6n" role="1tU5fm">
                <node concept="3uibUv" id="3geGFOI14HR" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="3geGFOI14HS" role="1zc67A">
              <node concept="3clFbF" id="3geGFOI14HT" role="3cqZAp">
                <node concept="2OqwBi" id="3geGFOI14HU" role="3clFbG">
                  <node concept="37vLTw" id="3geGFOI14HV" role="2Oq$k0">
                    <ref role="3cqZAo" node="3geGFOI14HQ" resolve="e" />
                  </node>
                  <node concept="liA8E" id="3geGFOI14HW" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Throwable.printStackTrace()" resolve="printStackTrace" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="3geGFOI14HX" role="3cqZAp">
                <node concept="2ShNRf" id="1XvrRm0YyNZ" role="3cqZAk">
                  <node concept="3zrR0B" id="1XvrRm0YyO0" role="2ShVmc">
                    <node concept="3Tqbb2" id="1XvrRm0YyO1" role="3zrR0E">
                      <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3geGFOI14I1" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="3geGFOI14I2" role="1tU5fm" />
      </node>
    </node>
    <node concept="13i0hz" id="2dmnr4$zcCR" role="13h7CS">
      <property role="TrG5h" value="getGeneratedMethodName" />
      <node concept="3Tm1VV" id="2dmnr4$zcCS" role="1B3o_S" />
      <node concept="3uibUv" id="2dmnr4$zcCZ" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="2dmnr4$zcCU" role="3clF47">
        <node concept="3clFbJ" id="2dmnr4$zj5p" role="3cqZAp">
          <node concept="3clFbS" id="2dmnr4$zj5s" role="3clFbx">
            <node concept="3cpWs6" id="2dmnr4$zkBb" role="3cqZAp">
              <node concept="3cpWs3" id="7GXvAHO1igW" role="3cqZAk">
                <node concept="Xl_RD" id="7GXvAHO1igZ" role="3uHU7w">
                  <property role="Xl_RC" value="_type" />
                </node>
                <node concept="3cpWs3" id="4F5w8gPZ0qZ" role="3uHU7B">
                  <node concept="3cpWs3" id="4F5w8gPYZHL" role="3uHU7B">
                    <node concept="2OqwBi" id="4F5w8gPYYH5" role="3uHU7B">
                      <node concept="2OqwBi" id="4F5w8gPYX23" role="2Oq$k0">
                        <node concept="13iPFW" id="2dmnr4$zleq" role="2Oq$k0" />
                        <node concept="2Xjw5R" id="4F5w8gPYYh9" role="2OqNvi">
                          <node concept="1xMEDy" id="4F5w8gPYYhb" role="1xVPHs">
                            <node concept="chp4Y" id="4F5w8gPYYt_" role="ri$Ld">
                              <ref role="cht4Q" to="oubp:3geGFOI0X5B" resolve="MethodDescriptor" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3TrcHB" id="4F5w8gPYZeR" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="4F5w8gPYZHQ" role="3uHU7w">
                      <property role="Xl_RC" value="_" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3geGFOI1yos" role="3uHU7w">
                    <node concept="2OqwBi" id="2dmnr4$zlvH" role="2Oq$k0">
                      <node concept="13iPFW" id="2dmnr4$zlgp" role="2Oq$k0" />
                      <node concept="2Xjw5R" id="2dmnr4$zm3m" role="2OqNvi">
                        <node concept="1xMEDy" id="2dmnr4$zm3o" role="1xVPHs">
                          <node concept="chp4Y" id="2dmnr4$BZk8" role="ri$Ld">
                            <ref role="cht4Q" to="oubp:3geGFOI0X5$" resolve="ParameterDescriptor" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3TrcHB" id="2dmnr4$zmz8" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="2dmnr4$zjHs" role="3clFbw">
            <node concept="2OqwBi" id="2dmnr4$zjan" role="2Oq$k0">
              <node concept="13iPFW" id="2dmnr4$zj6P" role="2Oq$k0" />
              <node concept="2Xjw5R" id="2dmnr4$zjyv" role="2OqNvi">
                <node concept="1xMEDy" id="2dmnr4$zjyx" role="1xVPHs">
                  <node concept="chp4Y" id="UCjECLbhOD" role="ri$Ld">
                    <ref role="cht4Q" to="oubp:3geGFOI0X5$" resolve="ParameterDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3x8VRR" id="2dmnr4$zkz4" role="2OqNvi" />
          </node>
          <node concept="9aQIb" id="2dmnr4$zl2m" role="9aQIa">
            <node concept="3clFbS" id="2dmnr4$zl2n" role="9aQI4">
              <node concept="3cpWs6" id="2dmnr4$znaz" role="3cqZAp">
                <node concept="3cpWs3" id="2dmnr4$zna_" role="3cqZAk">
                  <node concept="2OqwBi" id="2dmnr4$znaA" role="3uHU7B">
                    <node concept="2OqwBi" id="2dmnr4$znaB" role="2Oq$k0">
                      <node concept="13iPFW" id="2dmnr4$znaC" role="2Oq$k0" />
                      <node concept="2Xjw5R" id="2dmnr4$znaD" role="2OqNvi">
                        <node concept="1xMEDy" id="2dmnr4$znaE" role="1xVPHs">
                          <node concept="chp4Y" id="2dmnr4$znaF" role="ri$Ld">
                            <ref role="cht4Q" to="oubp:3geGFOI0X5B" resolve="MethodDescriptor" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3TrcHB" id="2dmnr4$znaG" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="2dmnr4$znaH" role="3uHU7w">
                    <property role="Xl_RC" value="_ret" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="3geGFOI14I3" role="13h7CW">
      <node concept="3clFbS" id="3geGFOI14I4" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="5BD$AU437ay">
    <property role="3GE5qa" value="member" />
    <ref role="13h7C2" to="oubp:7aMlq14vYj7" resolve="DSLClassMember" />
    <node concept="13i0hz" id="1QReUKIGS9B" role="13h7CS">
      <property role="TrG5h" value="isMultiple" />
      <node concept="3Tm1VV" id="1QReUKIGS9C" role="1B3o_S" />
      <node concept="10P_77" id="1QReUKIGS9D" role="3clF45" />
      <node concept="3clFbS" id="1QReUKIGS9E" role="3clF47">
        <node concept="3clFbF" id="1QReUKIGS9F" role="3cqZAp">
          <node concept="2OqwBi" id="1QReUKIGS9G" role="3clFbG">
            <node concept="2OqwBi" id="1QReUKIGS9H" role="2Oq$k0">
              <node concept="2OqwBi" id="1QReUKIGS9I" role="2Oq$k0">
                <node concept="13iPFW" id="1QReUKIGS9J" role="2Oq$k0" />
                <node concept="3Tsc0h" id="1QReUKIGS9K" role="2OqNvi">
                  <ref role="3TtcxE" to="oubp:2WSWNq1TGlC" resolve="modifier" />
                </node>
              </node>
              <node concept="v3k3i" id="1QReUKIGS9L" role="2OqNvi">
                <node concept="chp4Y" id="1QReUKIGSuB" role="v3oSu">
                  <ref role="cht4Q" to="oubp:1QReUKIFP7I" resolve="MultipleModifier" />
                </node>
              </node>
            </node>
            <node concept="3GX2aA" id="1QReUKIGS9N" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="2WSWNq1VhVM" role="13h7CS">
      <property role="TrG5h" value="isRequired" />
      <node concept="3Tm1VV" id="2WSWNq1VhVN" role="1B3o_S" />
      <node concept="10P_77" id="2WSWNq1VhVU" role="3clF45" />
      <node concept="3clFbS" id="2WSWNq1VhVP" role="3clF47">
        <node concept="3clFbF" id="2WSWNq1VhVY" role="3cqZAp">
          <node concept="2OqwBi" id="2WSWNq1Vk8o" role="3clFbG">
            <node concept="2OqwBi" id="2WSWNq1ViSG" role="2Oq$k0">
              <node concept="2OqwBi" id="2WSWNq1VhYl" role="2Oq$k0">
                <node concept="13iPFW" id="2WSWNq1VhVX" role="2Oq$k0" />
                <node concept="3Tsc0h" id="2WSWNq1Vi7f" role="2OqNvi">
                  <ref role="3TtcxE" to="oubp:2WSWNq1TGlC" resolve="modifier" />
                </node>
              </node>
              <node concept="v3k3i" id="2WSWNq1VjQB" role="2OqNvi">
                <node concept="chp4Y" id="2WSWNq1VjSw" role="v3oSu">
                  <ref role="cht4Q" to="oubp:2WSWNq1TGom" resolve="RequiredModifier" />
                </node>
              </node>
            </node>
            <node concept="3GX2aA" id="2WSWNq1Vkug" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="7T23sO8tlHe" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="getPlaceholder" />
      <node concept="3Tm1VV" id="7T23sO8tlJA" role="1B3o_S" />
      <node concept="3Tqbb2" id="7T23sO8tm06" role="3clF45">
        <ref role="ehGHo" to="oubp:7aMlq14w4WD" resolve="PlaceholderModifier" />
      </node>
      <node concept="3clFbS" id="7T23sO8tlJC" role="3clF47">
        <node concept="3clFbF" id="7T23sO8tm0a" role="3cqZAp">
          <node concept="2OqwBi" id="7T23sO8toJI" role="3clFbG">
            <node concept="2OqwBi" id="7T23sO8tmXN" role="2Oq$k0">
              <node concept="2OqwBi" id="7T23sO8tm1U" role="2Oq$k0">
                <node concept="13iPFW" id="7T23sO8tm09" role="2Oq$k0" />
                <node concept="3Tsc0h" id="7T23sO8tmfk" role="2OqNvi">
                  <ref role="3TtcxE" to="oubp:2WSWNq1TGlC" resolve="modifier" />
                </node>
              </node>
              <node concept="v3k3i" id="7T23sO8tnV7" role="2OqNvi">
                <node concept="chp4Y" id="7T23sO8tnWp" role="v3oSu">
                  <ref role="cht4Q" to="oubp:7aMlq14w4WD" resolve="PlaceholderModifier" />
                </node>
              </node>
            </node>
            <node concept="1uHKPH" id="7T23sO8tpqI" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="7DN9hucqR$0" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="getDefault" />
      <node concept="3Tm1VV" id="7DN9hucqR$1" role="1B3o_S" />
      <node concept="3Tqbb2" id="7DN9hucqR$2" role="3clF45">
        <ref role="ehGHo" to="oubp:7DN9hucqeID" resolve="DefaultModifier" />
      </node>
      <node concept="3clFbS" id="7DN9hucqR$3" role="3clF47">
        <node concept="3clFbF" id="7DN9hucqR$4" role="3cqZAp">
          <node concept="2OqwBi" id="7DN9hucqR$5" role="3clFbG">
            <node concept="2OqwBi" id="7DN9hucqR$6" role="2Oq$k0">
              <node concept="2OqwBi" id="7DN9hucqR$7" role="2Oq$k0">
                <node concept="13iPFW" id="7DN9hucqR$8" role="2Oq$k0" />
                <node concept="3Tsc0h" id="7DN9hucqR$9" role="2OqNvi">
                  <ref role="3TtcxE" to="oubp:2WSWNq1TGlC" resolve="modifier" />
                </node>
              </node>
              <node concept="v3k3i" id="7DN9hucqR$a" role="2OqNvi">
                <node concept="chp4Y" id="7DN9hucqSO7" role="v3oSu">
                  <ref role="cht4Q" to="oubp:7DN9hucqeID" resolve="DefaultModifier" />
                </node>
              </node>
            </node>
            <node concept="1uHKPH" id="7DN9hucqR$c" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5BD$AU437jJ" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="createForClass" />
      <node concept="3Tm1VV" id="5BD$AU437jK" role="1B3o_S" />
      <node concept="3clFbS" id="5BD$AU437jM" role="3clF47">
        <node concept="3clFbJ" id="5KZRo2klxyU" role="3cqZAp">
          <node concept="3clFbS" id="5KZRo2klxyW" role="3clFbx">
            <node concept="3cpWs6" id="5KZRo2klzCU" role="3cqZAp">
              <node concept="10Nm6u" id="17H9dI4HSos" role="3cqZAk" />
            </node>
          </node>
          <node concept="2OqwBi" id="5KZRo2klz8x" role="3clFbw">
            <node concept="2OqwBi" id="5KZRo2klxPI" role="2Oq$k0">
              <node concept="13iPFW" id="5KZRo2klxI4" role="2Oq$k0" />
              <node concept="3zqWPK" id="70OdufORfU8" role="2OqNvi">
                <ref role="37wK5l" node="2gzehMfi1$l" resolve="find" />
                <node concept="37vLTw" id="70OdufORfUa" role="37wK5m">
                  <ref role="3cqZAo" node="5BD$AU437lF" resolve="cls" />
                </node>
              </node>
            </node>
            <node concept="3GX2aA" id="5KZRo2klzBB" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbJ" id="7DN9hucr8aN" role="3cqZAp">
          <node concept="3clFbS" id="7DN9hucr8aP" role="3clFbx">
            <node concept="3cpWs6" id="7DN9hucr9ey" role="3cqZAp">
              <node concept="2OqwBi" id="7DN9hucraKd" role="3cqZAk">
                <node concept="2OqwBi" id="7DN9hucr9LC" role="2Oq$k0">
                  <node concept="BsUDl" id="7DN9hucr9s2" role="2Oq$k0">
                    <ref role="37wK5l" node="7DN9hucqR$0" resolve="getDefault" />
                  </node>
                  <node concept="3TrEf2" id="7DN9hucra63" role="2OqNvi">
                    <ref role="3Tt5mk" to="oubp:7DN9hucqf4S" resolve="value" />
                  </node>
                </node>
                <node concept="1$rogu" id="7DN9hucrbyM" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7DN9hucr8Kz" role="3clFbw">
            <node concept="BsUDl" id="7DN9hucr8lm" role="2Oq$k0">
              <ref role="37wK5l" node="7DN9hucqR$0" resolve="getDefault" />
            </node>
            <node concept="3x8VRR" id="7DN9hucr9b1" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbJ" id="7DN9hucqT9M" role="3cqZAp">
          <node concept="3clFbS" id="7DN9hucqT9O" role="3clFbx">
            <node concept="3cpWs6" id="7DN9hucqV6S" role="3cqZAp">
              <node concept="BsUDl" id="7T23sO8tI4F" role="3cqZAk">
                <ref role="37wK5l" node="7ay_HjIOVVe" resolve="create" />
                <node concept="37vLTw" id="7stlEFlmhtP" role="37wK5m">
                  <ref role="3cqZAo" node="7stlEFlmgI8" resolve="futureModel" />
                </node>
              </node>
            </node>
          </node>
          <node concept="BsUDl" id="7T23sO8tI4G" role="3clFbw">
            <ref role="37wK5l" node="2WSWNq1VhVM" resolve="isRequired" />
          </node>
          <node concept="3eNFk2" id="7DN9hucqWfN" role="3eNLev">
            <node concept="3clFbS" id="7DN9hucqWfO" role="3eOfB_">
              <node concept="3cpWs6" id="7DN9hucqULp" role="3cqZAp">
                <node concept="2OqwBi" id="7T23sO8tI4S" role="3cqZAk">
                  <node concept="BsUDl" id="7T23sO8tI4T" role="2Oq$k0">
                    <ref role="37wK5l" node="7T23sO8tlHe" resolve="getPlaceholder" />
                  </node>
                  <node concept="3zqWPK" id="70OdufORfUb" role="2OqNvi">
                    <ref role="37wK5l" node="7T23sO8tTvX" resolve="create" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="17H9dI4HT11" role="3eO9$A">
              <node concept="BsUDl" id="17H9dI4HSUI" role="2Oq$k0">
                <ref role="37wK5l" node="7T23sO8tlHe" resolve="getPlaceholder" />
              </node>
              <node concept="3x8VRR" id="17H9dI4HThq" role="2OqNvi" />
            </node>
          </node>
          <node concept="9aQIb" id="7DN9hucqWOm" role="9aQIa">
            <node concept="3clFbS" id="7DN9hucqWOn" role="9aQI4">
              <node concept="3cpWs6" id="7DN9hucqUBc" role="3cqZAp">
                <node concept="10Nm6u" id="7DN9hucqUBx" role="3cqZAk" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5BD$AU437lF" role="3clF46">
        <property role="TrG5h" value="cls" />
        <node concept="3Tqbb2" id="5BD$AU437lE" role="1tU5fm">
          <ref role="ehGHo" to="tpee:fz12cDA" resolve="ClassConcept" />
        </node>
      </node>
      <node concept="37vLTG" id="7stlEFlmgI8" role="3clF46">
        <property role="TrG5h" value="futureModel" />
        <node concept="H_c77" id="7stlEFlmhsQ" role="1tU5fm" />
      </node>
      <node concept="3Tqbb2" id="17H9dI4HTDj" role="3clF45">
        <ref role="ehGHo" to="tpee:h9ngReX" resolve="ClassifierMember" />
      </node>
    </node>
    <node concept="13i0hz" id="2gzehMfi1$l" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="find" />
      <node concept="37vLTG" id="2gzehMfi1Cy" role="3clF46">
        <property role="TrG5h" value="cls" />
        <node concept="3Tqbb2" id="2gzehMfi1CC" role="1tU5fm">
          <ref role="ehGHo" to="tpee:fz12cDA" resolve="ClassConcept" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2gzehMfi1$m" role="1B3o_S" />
      <node concept="3clFbS" id="2gzehMfi1$n" role="3clF47" />
      <node concept="A3Dl8" id="2gzehMfibRn" role="3clF45">
        <node concept="3Tqbb2" id="2gzehMfi1Cv" role="A3Ik2">
          <ref role="ehGHo" to="tpee:h9ngReX" resolve="ClassifierMember" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5ZzANK5B6wZ" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="findPlaceholders" />
      <node concept="37vLTG" id="5ZzANK5B6D7" role="3clF46">
        <property role="TrG5h" value="cls" />
        <node concept="3Tqbb2" id="5ZzANK5B6D8" role="1tU5fm">
          <ref role="ehGHo" to="tpee:fz12cDA" resolve="ClassConcept" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5ZzANK5B6x0" role="1B3o_S" />
      <node concept="A3Dl8" id="5ZzANK5B6CZ" role="3clF45">
        <node concept="3Tqbb2" id="5ZzANK5B6D4" role="A3Ik2">
          <ref role="ehGHo" to="oubp:5BD$AU43nQM" resolve="MemberPlaceholder" />
        </node>
      </node>
      <node concept="3clFbS" id="5ZzANK5B6x2" role="3clF47">
        <node concept="3clFbF" id="5ZzANK5B7cZ" role="3cqZAp">
          <node concept="2OqwBi" id="5ZzANK5BeVs" role="3clFbG">
            <node concept="2OqwBi" id="5ZzANK5B9rE" role="2Oq$k0">
              <node concept="2OqwBi" id="5ZzANK5B7lY" role="2Oq$k0">
                <node concept="37vLTw" id="5ZzANK5B7cY" role="2Oq$k0">
                  <ref role="3cqZAo" node="5ZzANK5B6D7" resolve="cls" />
                </node>
                <node concept="3Tsc0h" id="5ZzANK5B8oG" role="2OqNvi">
                  <ref role="3TtcxE" to="tpee:4EqhHTp4Mw3" resolve="member" />
                </node>
              </node>
              <node concept="v3k3i" id="5ZzANK5BeH0" role="2OqNvi">
                <node concept="chp4Y" id="5ZzANK5BeK0" role="v3oSu">
                  <ref role="cht4Q" to="oubp:5BD$AU43nQM" resolve="MemberPlaceholder" />
                </node>
              </node>
            </node>
            <node concept="3zZkjj" id="5ZzANK5Bfaf" role="2OqNvi">
              <node concept="1bVj0M" id="5ZzANK5Bfah" role="23t8la">
                <node concept="3clFbS" id="5ZzANK5Bfai" role="1bW5cS">
                  <node concept="3clFbF" id="5ZzANK5BfcG" role="3cqZAp">
                    <node concept="3clFbC" id="5ZzANK5Bg60" role="3clFbG">
                      <node concept="13iPFW" id="5ZzANK5BgdN" role="3uHU7w" />
                      <node concept="2OqwBi" id="5ZzANK5BfiN" role="3uHU7B">
                        <node concept="37vLTw" id="5ZzANK5BfcF" role="2Oq$k0">
                          <ref role="3cqZAo" node="5W7E4fV0VZm" resolve="it" />
                        </node>
                        <node concept="3TrEf2" id="5ZzANK5BfLE" role="2OqNvi">
                          <ref role="3Tt5mk" to="oubp:5BD$AU43nQP" resolve="decl" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="5W7E4fV0VZm" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="5W7E4fV0VZn" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="7ay_HjIOVVe" role="13h7CS">
      <property role="2Ki8OM" value="false" />
      <property role="TrG5h" value="create" />
      <property role="13i0it" value="true" />
      <property role="13i0iv" value="true" />
      <node concept="37vLTG" id="7stlEFlmhET" role="3clF46">
        <property role="TrG5h" value="futureModel" />
        <node concept="H_c77" id="7stlEFlmhHt" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="7ay_HjIOVVf" role="1B3o_S" />
      <node concept="3Tqbb2" id="7ay_HjIPqG8" role="3clF45">
        <ref role="ehGHo" to="tpee:h9ngReX" resolve="ClassifierMember" />
      </node>
      <node concept="3clFbS" id="7ay_HjIOVVj" role="3clF47" />
    </node>
    <node concept="13i0hz" id="2nUiI4k7qhh" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getMatchingText" />
      <node concept="3Tm1VV" id="2nUiI4k7qhi" role="1B3o_S" />
      <node concept="17QB3L" id="2nUiI4k7r1M" role="3clF45" />
      <node concept="3clFbS" id="2nUiI4k7qhk" role="3clF47">
        <node concept="3clFbJ" id="2nUiI4k7vYw" role="3cqZAp">
          <node concept="3clFbS" id="2nUiI4k7vYx" role="3clFbx">
            <node concept="3cpWs6" id="2nUiI4k7wfb" role="3cqZAp">
              <node concept="2OqwBi" id="2nUiI4k7wlS" role="3cqZAk">
                <node concept="1PxgMI" id="2nUiI4k7wie" role="2Oq$k0">
                  <node concept="13iPFW" id="2nUiI4k7wg7" role="1m5AlR" />
                  <node concept="chp4Y" id="714IaVdH06T" role="3oSUPX">
                    <ref role="cht4Q" to="tpck:h0TrEE$" resolve="INamedConcept" />
                  </node>
                </node>
                <node concept="3TrcHB" id="2nUiI4k7wvg" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="2nUiI4k7w00" role="3clFbw">
            <node concept="13iPFW" id="2nUiI4k7vYG" role="2Oq$k0" />
            <node concept="1mIQ4w" id="2nUiI4k7wdJ" role="2OqNvi">
              <node concept="chp4Y" id="2nUiI4k7weq" role="cj9EA">
                <ref role="cht4Q" to="tpck:h0TrEE$" resolve="INamedConcept" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2nUiI4k7wyt" role="3cqZAp">
          <node concept="2OqwBi" id="2nUiI4k7wZ$" role="3cqZAk">
            <node concept="2OqwBi" id="2nUiI4k7wBb" role="2Oq$k0">
              <node concept="13iPFW" id="2nUiI4k7w_2" role="2Oq$k0" />
              <node concept="2yIwOk" id="2nUiI4k7wQl" role="2OqNvi" />
            </node>
            <node concept="liA8E" id="2nUiI4k7xhk" role="2OqNvi">
              <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="5BD$AU437cU" role="13h7CW">
      <node concept="3clFbS" id="5BD$AU437cV" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="5BD$AU43cTk">
    <property role="3GE5qa" value="member.methodDescriptor" />
    <ref role="13h7C2" to="oubp:3geGFOI0X5B" resolve="MethodDescriptor" />
    <node concept="13hLZK" id="5BD$AU43cTl" role="13h7CW">
      <node concept="3clFbS" id="5BD$AU43cTm" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="2VRROcYaBNi" role="13h7CS">
      <property role="TrG5h" value="create" />
      <ref role="13i0hy" node="7ay_HjIOVVe" resolve="create" />
      <node concept="37vLTG" id="7stlEFlmhZ0" role="3clF46">
        <property role="TrG5h" value="futureModel" />
        <node concept="H_c77" id="7stlEFlmhZ1" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="2VRROcYaBNl" role="3clF47">
        <node concept="3cpWs8" id="2WSWNq1VtWs" role="3cqZAp">
          <node concept="3cpWsn" id="2WSWNq1VtWt" role="3cpWs9">
            <property role="TrG5h" value="method" />
            <node concept="3Tqbb2" id="2WSWNq1VtWu" role="1tU5fm">
              <ref role="ehGHo" to="oubp:3geGFOI0X5k" resolve="MethodInstance" />
            </node>
            <node concept="2OqwBi" id="sQ3dbEZK64" role="33vP2m">
              <node concept="37vLTw" id="sQ3dbEZJDV" role="2Oq$k0">
                <ref role="3cqZAo" node="7stlEFlmhZ0" resolve="futureModel" />
              </node>
              <node concept="15TzpJ" id="sQ3dbEZKpy" role="2OqNvi">
                <ref role="I8UWU" to="oubp:3geGFOI0X5k" resolve="MethodInstance" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2WSWNq1VtWy" role="3cqZAp">
          <node concept="37vLTI" id="2WSWNq1VtWz" role="3clFbG">
            <node concept="2OqwBi" id="2WSWNq1VuEH" role="37vLTx">
              <node concept="13iPFW" id="2VRROcYaFtf" role="2Oq$k0" />
              <node concept="3TrcHB" id="2WSWNq1Vv5V" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="2OqwBi" id="2WSWNq1VtW_" role="37vLTJ">
              <node concept="37vLTw" id="2WSWNq1VtWA" role="2Oq$k0">
                <ref role="3cqZAo" node="2WSWNq1VtWt" resolve="method" />
              </node>
              <node concept="3TrcHB" id="2WSWNq1VtWB" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7PZgugKxHOA" role="3cqZAp">
          <node concept="37vLTI" id="7PZgugKxLKk" role="3clFbG">
            <node concept="2ShNRf" id="7PZgugKxLT5" role="37vLTx">
              <node concept="3zrR0B" id="7PZgugKxLT3" role="2ShVmc">
                <node concept="3Tqbb2" id="7PZgugKxLT4" role="3zrR0E">
                  <ref role="ehGHo" to="tpee:fzclF80" resolve="StatementList" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="7PZgugKxHZ_" role="37vLTJ">
              <node concept="37vLTw" id="7PZgugKxHO$" role="2Oq$k0">
                <ref role="3cqZAo" node="2WSWNq1VtWt" resolve="method" />
              </node>
              <node concept="3TrEf2" id="7PZgugKxJN$" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fzclF7Z" resolve="body" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1XvrRm0XgOe" role="3cqZAp">
          <node concept="2OqwBi" id="1XvrRm0X9_t" role="3clFbG">
            <node concept="2OqwBi" id="1XvrRm0X5tm" role="2Oq$k0">
              <node concept="37vLTw" id="6kmqZ30Z1Gu" role="2Oq$k0">
                <ref role="3cqZAo" node="2WSWNq1VtWt" resolve="method" />
              </node>
              <node concept="3Tsc0h" id="1XvrRm0X6XM" role="2OqNvi">
                <ref role="3TtcxE" to="tpee:fzclF7Y" resolve="parameter" />
              </node>
            </node>
            <node concept="X8dFx" id="1XvrRm0Xi$v" role="2OqNvi">
              <node concept="2OqwBi" id="1XvrRm0X3KF" role="25WWJ7">
                <node concept="2OqwBi" id="1XvrRm0X2Pg" role="2Oq$k0">
                  <node concept="13iPFW" id="2VRROcYaPZO" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="1XvrRm0X2XK" role="2OqNvi">
                    <ref role="3TtcxE" to="oubp:3geGFOI0X5C" resolve="param" />
                  </node>
                </node>
                <node concept="3$u5V9" id="1XvrRm0XmCG" role="2OqNvi">
                  <node concept="1bVj0M" id="1XvrRm0XmCI" role="23t8la">
                    <node concept="3clFbS" id="1XvrRm0XmCJ" role="1bW5cS">
                      <node concept="3clFbF" id="2h59CdJp3Hu" role="3cqZAp">
                        <node concept="2OqwBi" id="2h59CdJp6eb" role="3clFbG">
                          <node concept="37vLTw" id="2h59CdJp3Hs" role="2Oq$k0">
                            <ref role="3cqZAo" node="5W7E4fV0VZo" resolve="it" />
                          </node>
                          <node concept="3zqWPK" id="70OdufORfUd" role="2OqNvi">
                            <ref role="37wK5l" node="2h59CdJp99Y" resolve="create" />
                            <node concept="37vLTw" id="70OdufORfUf" role="37wK5m">
                              <ref role="3cqZAo" node="2WSWNq1VtWt" resolve="method" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0VZo" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="5W7E4fV0VZp" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2h59CdJpsqg" role="3cqZAp">
          <node concept="37vLTI" id="2h59CdJpwGU" role="3clFbG">
            <node concept="2OqwBi" id="2dmnr4$A6tb" role="37vLTJ">
              <node concept="37vLTw" id="2dmnr4$A6cN" role="2Oq$k0">
                <ref role="3cqZAo" node="2WSWNq1VtWt" resolve="method" />
              </node>
              <node concept="3TrEf2" id="2dmnr4$A8bJ" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fzclF7X" resolve="returnType" />
              </node>
            </node>
            <node concept="3K4zz7" id="2h59CdJpx7l" role="37vLTx">
              <node concept="2OqwBi" id="2dmnr4$_LtH" role="3K4Cdx">
                <node concept="BsUDl" id="2h59CdJp_Wn" role="2Oq$k0">
                  <ref role="37wK5l" node="3m06Jgso0l8" resolve="getReturnType" />
                </node>
                <node concept="1mIQ4w" id="2dmnr4$_LtL" role="2OqNvi">
                  <node concept="chp4Y" id="2dmnr4$_LtM" role="cj9EA">
                    <ref role="cht4Q" to="oubp:3geGFOI0X5s" resolve="DependentTypeDescriptor" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="2h59CdJpog1" role="3K4E3e">
                <node concept="1PxgMI" id="2h59CdJpo9m" role="2Oq$k0">
                  <node concept="BsUDl" id="2h59CdJp_Wm" role="1m5AlR">
                    <ref role="37wK5l" node="3m06Jgso0l8" resolve="getReturnType" />
                  </node>
                  <node concept="chp4Y" id="714IaVdH06R" role="3oSUPX">
                    <ref role="cht4Q" to="oubp:3geGFOI0X5s" resolve="DependentTypeDescriptor" />
                  </node>
                </node>
                <node concept="3zqWPK" id="70OdufORfUg" role="2OqNvi">
                  <ref role="37wK5l" node="2h59CdJp8nr" resolve="create" />
                  <node concept="37vLTw" id="70OdufORfUi" role="37wK5m">
                    <ref role="3cqZAo" node="2WSWNq1VtWt" resolve="method" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="2dmnr4$AbXf" role="3K4GZi">
                <node concept="BsUDl" id="2h59CdJp_Wl" role="2Oq$k0">
                  <ref role="37wK5l" node="3m06Jgso0l8" resolve="getReturnType" />
                </node>
                <node concept="1$rogu" id="2dmnr4$Acqb" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="14fCAVcW7s" role="3cqZAp">
          <node concept="37vLTI" id="14fCAVcZ2y" role="3clFbG">
            <node concept="13iPFW" id="14fCAVcZ2X" role="37vLTx" />
            <node concept="2OqwBi" id="14fCAVcWvO" role="37vLTJ">
              <node concept="37vLTw" id="14fCAVcW7q" role="2Oq$k0">
                <ref role="3cqZAo" node="2WSWNq1VtWt" resolve="method" />
              </node>
              <node concept="3TrEf2" id="14fCAVcYbD" role="2OqNvi">
                <ref role="3Tt5mk" to="oubp:14fCAVcxkR" resolve="decl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="sQ3dbF0EcG" role="3cqZAp">
          <node concept="1PaTwC" id="sQ3dbF0EcH" role="1aUNEU">
            <node concept="3oM_SD" id="sQ3dbF0F$w" role="1PaTwD">
              <property role="3oM_SC" value="1fc90995c6" />
            </node>
            <node concept="3oM_SD" id="sQ3dbF0FCV" role="1PaTwD">
              <property role="3oM_SC" value="fix" />
            </node>
            <node concept="3oM_SD" id="sQ3dbF0FDe" role="1PaTwD">
              <property role="3oM_SC" value="suggests" />
            </node>
            <node concept="3oM_SD" id="sQ3dbF0FEA" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="sQ3dbF0FEB" role="1PaTwD">
              <property role="3oM_SC" value="could" />
            </node>
            <node concept="3oM_SD" id="sQ3dbF0FHo" role="1PaTwD">
              <property role="3oM_SC" value="face" />
            </node>
            <node concept="3oM_SD" id="sQ3dbF0FIv" role="1PaTwD">
              <property role="3oM_SC" value="futureModel" />
            </node>
            <node concept="3oM_SD" id="sQ3dbF0FKX" role="1PaTwD">
              <property role="3oM_SC" value="==" />
            </node>
            <node concept="3oM_SD" id="sQ3dbF0FKY" role="1PaTwD">
              <property role="3oM_SC" value="null" />
            </node>
            <node concept="3oM_SD" id="sQ3dbF0FLx" role="1PaTwD">
              <property role="3oM_SC" value="here." />
            </node>
            <node concept="3oM_SD" id="sQ3dbF0FMT" role="1PaTwD">
              <property role="3oM_SC" value="However," />
            </node>
            <node concept="3oM_SD" id="sQ3dbF0FO0" role="1PaTwD">
              <property role="3oM_SC" value="I'd" />
            </node>
            <node concept="3oM_SD" id="sQ3dbF0FP7" role="1PaTwD">
              <property role="3oM_SC" value="like" />
            </node>
            <node concept="3oM_SD" id="sQ3dbF0FP8" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="sQ3dbF0FPY" role="1PaTwD">
              <property role="3oM_SC" value="figure" />
            </node>
            <node concept="3oM_SD" id="sQ3dbF0FQg" role="1PaTwD">
              <property role="3oM_SC" value="out" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="sQ3dbF0HmH" role="3cqZAp">
          <node concept="1PaTwC" id="sQ3dbF0HmI" role="1aUNEU">
            <node concept="3oM_SD" id="sQ3dbF0HmJ" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="sQ3dbF0HRV" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="sQ3dbF0HRX" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="sQ3dbF0HRY" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="sQ3dbF0HRZ" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="sQ3dbF0HS0" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="sQ3dbF0HS1" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="sQ3dbF0HS2" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="sQ3dbF0HT9" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="sQ3dbF0HTa" role="1PaTwD">
              <property role="3oM_SC" value="how" />
            </node>
            <node concept="3oM_SD" id="sQ3dbF0HTb" role="1PaTwD">
              <property role="3oM_SC" value="come" />
            </node>
            <node concept="3oM_SD" id="sQ3dbF0HUz" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="sQ3dbF0HU$" role="1PaTwD">
              <property role="3oM_SC" value="pass" />
            </node>
            <node concept="3oM_SD" id="sQ3dbF0HVq" role="1PaTwD">
              <property role="3oM_SC" value="null" />
            </node>
            <node concept="3oM_SD" id="sQ3dbF0HVr" role="1PaTwD">
              <property role="3oM_SC" value="here," />
            </node>
            <node concept="3oM_SD" id="sQ3dbF0HWy" role="1PaTwD">
              <property role="3oM_SC" value="instead." />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="77M51xDmlFu" role="3cqZAp">
          <node concept="3cpWsn" id="77M51xDmlFv" role="3cpWs9">
            <property role="TrG5h" value="update" />
            <node concept="3uibUv" id="77M51xDmlAS" role="1tU5fm">
              <ref role="3uigEE" to="w1kc:~ModelDependencyUpdate" resolve="ModelDependencyUpdate" />
            </node>
            <node concept="2ShNRf" id="77M51xDmlFw" role="33vP2m">
              <node concept="1pGfFk" id="77M51xDmlFx" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="w1kc:~ModelDependencyUpdate.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModel,java.lang.Iterable)" resolve="ModelDependencyUpdate" />
                <node concept="37vLTw" id="77M51xDmlFy" role="37wK5m">
                  <ref role="3cqZAo" node="7stlEFlmhZ0" resolve="futureModel" />
                </node>
                <node concept="2OqwBi" id="77M51xDmlFz" role="37wK5m">
                  <node concept="37vLTw" id="77M51xDmlF$" role="2Oq$k0">
                    <ref role="3cqZAo" node="2WSWNq1VtWt" resolve="method" />
                  </node>
                  <node concept="2Rf3mk" id="77M51xDmlF_" role="2OqNvi">
                    <node concept="1xIGOp" id="77M51xDmlFA" role="1xVPHs" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="77M51xDmvMb" role="3cqZAp" />
        <node concept="3cpWs8" id="77M51xDmu8j" role="3cqZAp">
          <node concept="3cpWsn" id="77M51xDmu8k" role="3cpWs9">
            <property role="TrG5h" value="repository" />
            <node concept="3uibUv" id="77M51xDmu5r" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
            </node>
            <node concept="2OqwBi" id="77M51xDmu8l" role="33vP2m">
              <node concept="liA8E" id="77M51xDmu8m" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
              </node>
              <node concept="2JrnkZ" id="77M51xDmu8n" role="2Oq$k0">
                <node concept="37vLTw" id="77M51xDmu8o" role="2JrQYb">
                  <ref role="3cqZAo" node="7stlEFlmhZ0" resolve="futureModel" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="sQ3dbEZMYz" role="3cqZAp">
          <node concept="2OqwBi" id="sQ3dbF0iLL" role="3clFbG">
            <node concept="2OqwBi" id="sQ3dbF0gxQ" role="2Oq$k0">
              <node concept="37vLTw" id="77M51xDmlFB" role="2Oq$k0">
                <ref role="3cqZAo" node="77M51xDmlFv" resolve="update" />
              </node>
              <node concept="liA8E" id="sQ3dbF0haR" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~ModelDependencyUpdate.updateUsedLanguages()" resolve="updateUsedLanguages" />
              </node>
            </node>
            <node concept="liA8E" id="sQ3dbF0oHa" role="2OqNvi">
              <ref role="37wK5l" to="w1kc:~ModelDependencyUpdate.updateImportedModels(org.jetbrains.mps.openapi.module.SRepository)" resolve="updateImportedModels" />
              <node concept="37vLTw" id="77M51xDmu8p" role="37wK5m">
                <ref role="3cqZAo" node="77M51xDmu8k" resolve="repository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="77M51xDmego" role="3cqZAp">
          <node concept="3clFbS" id="77M51xDmegq" role="3clFbx">
            <node concept="3clFbF" id="77M51xDmp5a" role="3cqZAp">
              <node concept="2OqwBi" id="77M51xDmqBK" role="3clFbG">
                <node concept="37vLTw" id="77M51xDmp58" role="2Oq$k0">
                  <ref role="3cqZAo" node="77M51xDmlFv" resolve="update" />
                </node>
                <node concept="liA8E" id="77M51xDmrzQ" role="2OqNvi">
                  <ref role="37wK5l" to="w1kc:~ModelDependencyUpdate.updateModuleDependencies(org.jetbrains.mps.openapi.module.SRepository)" resolve="updateModuleDependencies" />
                  <node concept="37vLTw" id="77M51xDmwfQ" role="37wK5m">
                    <ref role="3cqZAo" node="77M51xDmu8k" resolve="repository" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="77M51xDmjMH" role="3clFbw">
            <node concept="10Nm6u" id="77M51xDmliQ" role="3uHU7w" />
            <node concept="2OqwBi" id="Ac58JE9joN" role="3uHU7B">
              <node concept="liA8E" id="Ac58JE9mhE" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
              </node>
              <node concept="2JrnkZ" id="Ac58JE9joS" role="2Oq$k0">
                <node concept="37vLTw" id="77M51xDmfBD" role="2JrQYb">
                  <ref role="3cqZAo" node="7stlEFlmhZ0" resolve="futureModel" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2VRROcYaZ3b" role="3cqZAp">
          <node concept="37vLTw" id="2VRROcYaZsW" role="3cqZAk">
            <ref role="3cqZAo" node="2WSWNq1VtWt" resolve="method" />
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="7ay_HjIPxwT" role="3clF45">
        <ref role="ehGHo" to="oubp:3geGFOI0X5k" resolve="MethodInstance" />
      </node>
      <node concept="3Tm1VV" id="7ay_HjIPxwU" role="1B3o_S" />
    </node>
    <node concept="13i0hz" id="3m06Jgso0l8" role="13h7CS">
      <property role="TrG5h" value="getReturnType" />
      <node concept="3Tm1VV" id="3m06Jgso0l9" role="1B3o_S" />
      <node concept="3Tqbb2" id="3m06Jgso0V_" role="3clF45">
        <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
      </node>
      <node concept="3clFbS" id="3m06Jgso0lb" role="3clF47">
        <node concept="3clFbJ" id="3m06Jgso0VC" role="3cqZAp">
          <node concept="3clFbS" id="3m06Jgso0VD" role="3clFbx">
            <node concept="3cpWs6" id="3m06Jgso1zC" role="3cqZAp">
              <node concept="2c44tf" id="3m06Jgso1An" role="3cqZAk">
                <node concept="3cqZAl" id="3m06Jgso1D3" role="2c44tc" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="3m06Jgso1xP" role="3clFbw">
            <node concept="10Nm6u" id="3m06Jgso1yw" role="3uHU7w" />
            <node concept="2OqwBi" id="3m06Jgso0YM" role="3uHU7B">
              <node concept="13iPFW" id="3m06Jgso0VU" role="2Oq$k0" />
              <node concept="3TrEf2" id="3m06Jgso1jy" role="2OqNvi">
                <ref role="3Tt5mk" to="oubp:3geGFOI0X5D" resolve="retType" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="3m06Jgso1G0" role="9aQIa">
            <node concept="3clFbS" id="3m06Jgso1G1" role="9aQI4">
              <node concept="3cpWs6" id="3m06Jgso1IY" role="3cqZAp">
                <node concept="2OqwBi" id="3m06Jgso1Qy" role="3cqZAk">
                  <node concept="13iPFW" id="3m06Jgso1LP" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3m06Jgso2e8" role="2OqNvi">
                    <ref role="3Tt5mk" to="oubp:3geGFOI0X5D" resolve="retType" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="2gzehMfi3I4" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="find" />
      <ref role="13i0hy" node="2gzehMfi1$l" resolve="find" />
      <node concept="3Tm1VV" id="2gzehMfi3I7" role="1B3o_S" />
      <node concept="3clFbS" id="2gzehMfi3Ia" role="3clF47">
        <node concept="3clFbF" id="2gzehMfi4Tp" role="3cqZAp">
          <node concept="2OqwBi" id="2gzehMfifS5" role="3clFbG">
            <node concept="2OqwBi" id="2gzehMfi6M5" role="2Oq$k0">
              <node concept="2OqwBi" id="2gzehMfi51C" role="2Oq$k0">
                <node concept="37vLTw" id="2gzehMfi4To" role="2Oq$k0">
                  <ref role="3cqZAo" node="2gzehMfi3Ib" resolve="cls" />
                </node>
                <node concept="3Tsc0h" id="2gzehMfi5z8" role="2OqNvi">
                  <ref role="3TtcxE" to="tpee:4EqhHTp4Mw3" resolve="member" />
                </node>
              </node>
              <node concept="v3k3i" id="2gzehMfi9ta" role="2OqNvi">
                <node concept="chp4Y" id="2gzehMfi9tL" role="v3oSu">
                  <ref role="cht4Q" to="oubp:3geGFOI0X5k" resolve="MethodInstance" />
                </node>
              </node>
            </node>
            <node concept="3zZkjj" id="2gzehMfiglR" role="2OqNvi">
              <node concept="1bVj0M" id="2gzehMfiglT" role="23t8la">
                <node concept="3clFbS" id="2gzehMfiglU" role="1bW5cS">
                  <node concept="3clFbF" id="2gzehMfigoo" role="3cqZAp">
                    <node concept="3clFbC" id="2gzehMfiioP" role="3clFbG">
                      <node concept="2OqwBi" id="2gzehMfigCH" role="3uHU7B">
                        <node concept="37vLTw" id="2gzehMfigon" role="2Oq$k0">
                          <ref role="3cqZAo" node="5W7E4fV0VZq" resolve="it" />
                        </node>
                        <node concept="3TrEf2" id="2gzehMfihu4" role="2OqNvi">
                          <ref role="3Tt5mk" to="oubp:14fCAVcxkR" resolve="decl" />
                        </node>
                      </node>
                      <node concept="13iPFW" id="2gzehMfik4x" role="3uHU7w" />
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="5W7E4fV0VZq" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="5W7E4fV0VZr" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2gzehMfi3Ib" role="3clF46">
        <property role="TrG5h" value="cls" />
        <node concept="3Tqbb2" id="2gzehMfifxu" role="1tU5fm">
          <ref role="ehGHo" to="tpee:fz12cDA" resolve="ClassConcept" />
        </node>
      </node>
      <node concept="A3Dl8" id="2gzehMfifxs" role="3clF45">
        <node concept="3Tqbb2" id="2gzehMfifxt" role="A3Ik2">
          <ref role="ehGHo" to="oubp:3geGFOI0X5k" resolve="MethodInstance" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="5BD$AU43DMJ">
    <property role="3GE5qa" value="member.modifier" />
    <ref role="13h7C2" to="oubp:7aMlq14w4WD" resolve="PlaceholderModifier" />
    <node concept="13hLZK" id="5BD$AU43DMK" role="13h7CW">
      <node concept="3clFbS" id="5BD$AU43DML" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="7T23sO8tTvX" role="13h7CS">
      <property role="2Ki8OM" value="false" />
      <property role="TrG5h" value="create" />
      <node concept="3Tm1VV" id="7T23sO8tY0O" role="1B3o_S" />
      <node concept="3Tqbb2" id="7T23sO8tTvZ" role="3clF45">
        <ref role="ehGHo" to="oubp:5BD$AU43nQM" resolve="MemberPlaceholder" />
      </node>
      <node concept="3clFbS" id="7T23sO8tTvu" role="3clF47">
        <node concept="3cpWs8" id="7T23sO8tTvx" role="3cqZAp">
          <node concept="3cpWsn" id="7T23sO8tTvy" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3Tqbb2" id="7T23sO8tTvz" role="1tU5fm">
              <ref role="ehGHo" to="oubp:5BD$AU43nQM" resolve="MemberPlaceholder" />
            </node>
            <node concept="2ShNRf" id="7T23sO8tTv$" role="33vP2m">
              <node concept="3zrR0B" id="7T23sO8tTv_" role="2ShVmc">
                <node concept="3Tqbb2" id="7T23sO8tTvA" role="3zrR0E">
                  <ref role="ehGHo" to="oubp:5BD$AU43nQM" resolve="MemberPlaceholder" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7T23sO8tTvB" role="3cqZAp">
          <node concept="37vLTI" id="7T23sO8tTvC" role="3clFbG">
            <node concept="2OqwBi" id="7T23sO8tTvD" role="37vLTx">
              <node concept="13iPFW" id="7T23sO8tTvE" role="2Oq$k0" />
              <node concept="2Xjw5R" id="7T23sO8tTvF" role="2OqNvi">
                <node concept="1xMEDy" id="7T23sO8tTvG" role="1xVPHs">
                  <node concept="chp4Y" id="7T23sO8tTvH" role="ri$Ld">
                    <ref role="cht4Q" to="oubp:7aMlq14vYj7" resolve="DSLClassMember" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="7T23sO8tTvI" role="37vLTJ">
              <node concept="37vLTw" id="7T23sO8tTvJ" role="2Oq$k0">
                <ref role="3cqZAo" node="7T23sO8tTvy" resolve="result" />
              </node>
              <node concept="3TrEf2" id="7T23sO8tTvK" role="2OqNvi">
                <ref role="3Tt5mk" to="oubp:5BD$AU43nQP" resolve="decl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7T23sO8tTvL" role="3cqZAp">
          <node concept="37vLTI" id="7T23sO8tTvM" role="3clFbG">
            <node concept="2OqwBi" id="7T23sO8tTvN" role="37vLTx">
              <node concept="13iPFW" id="7T23sO8tTvO" role="2Oq$k0" />
              <node concept="3TrcHB" id="7T23sO8tTvP" role="2OqNvi">
                <ref role="3TsBF5" to="oubp:7aMlq14w51l" resolve="caption" />
              </node>
            </node>
            <node concept="2OqwBi" id="7T23sO8tTvQ" role="37vLTJ">
              <node concept="37vLTw" id="7T23sO8tTvR" role="2Oq$k0">
                <ref role="3cqZAo" node="7T23sO8tTvy" resolve="result" />
              </node>
              <node concept="3TrcHB" id="7T23sO8tTvS" role="2OqNvi">
                <ref role="3TsBF5" to="oubp:5BD$AU43nQN" resolve="caption" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7T23sO8tTvT" role="3cqZAp">
          <node concept="37vLTw" id="7T23sO8tTvU" role="3cqZAk">
            <ref role="3cqZAo" node="7T23sO8tTvy" resolve="result" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="5BD$AU4425_">
    <property role="3GE5qa" value="member.propertyDescriptor" />
    <ref role="13h7C2" to="oubp:7aMlq14vVGL" resolve="PropertyDescriptor" />
    <node concept="13hLZK" id="5BD$AU4425A" role="13h7CW">
      <node concept="3clFbS" id="5BD$AU4425B" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="snlvQWeYNe" role="13h7CS">
      <property role="2Ki8OM" value="false" />
      <property role="TrG5h" value="create" />
      <ref role="13i0hy" node="7ay_HjIOVVe" resolve="create" />
      <node concept="37vLTG" id="7stlEFlmkWh" role="3clF46">
        <property role="TrG5h" value="futureModel" />
        <node concept="H_c77" id="7stlEFlmkWi" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="snlvQWeYLq" role="3clF47">
        <node concept="3cpWs8" id="snlvQWeYLt" role="3cqZAp">
          <node concept="3cpWsn" id="snlvQWeYLu" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="3Tqbb2" id="snlvQWeYLv" role="1tU5fm">
              <ref role="ehGHo" to="oubp:5BD$AU43p5h" resolve="PropertyInstance" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="snlvQWeYLw" role="3cqZAp">
          <node concept="3clFbS" id="snlvQWeYLx" role="3clFbx">
            <node concept="3cpWs8" id="snlvQWeYLy" role="3cqZAp">
              <node concept="3cpWsn" id="snlvQWeYLz" role="3cpWs9">
                <property role="TrG5h" value="node" />
                <node concept="3Tqbb2" id="snlvQWeYL$" role="1tU5fm">
                  <ref role="ehGHo" to="oubp:5BD$AU440O4" resolve="StringPropertyInstance" />
                </node>
                <node concept="2ShNRf" id="snlvQWeYL_" role="33vP2m">
                  <node concept="3zrR0B" id="snlvQWeYLA" role="2ShVmc">
                    <node concept="3Tqbb2" id="snlvQWeYLB" role="3zrR0E">
                      <ref role="ehGHo" to="oubp:5BD$AU440O4" resolve="StringPropertyInstance" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="snlvQWeYLK" role="3cqZAp">
              <node concept="37vLTI" id="snlvQWeYLL" role="3clFbG">
                <node concept="2OqwBi" id="snlvQWeYLM" role="37vLTJ">
                  <node concept="3TrEf2" id="snlvQWeYLO" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:4VkOLwjf83e" resolve="type" />
                  </node>
                  <node concept="37vLTw" id="snlvQWeYLN" role="2Oq$k0">
                    <ref role="3cqZAo" node="snlvQWeYLz" resolve="node" />
                  </node>
                </node>
                <node concept="2c44tf" id="snlvQWeYLP" role="37vLTx">
                  <node concept="17QB3L" id="snlvQWeYLQ" role="2c44tc" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="snlvQWeYLR" role="3cqZAp">
              <node concept="37vLTI" id="snlvQWeYLS" role="3clFbG">
                <node concept="37vLTw" id="snlvQWeYLT" role="37vLTx">
                  <ref role="3cqZAo" node="snlvQWeYLz" resolve="node" />
                </node>
                <node concept="37vLTw" id="snlvQWeYLU" role="37vLTJ">
                  <ref role="3cqZAo" node="snlvQWeYLu" resolve="res" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="snlvQWeYLV" role="3clFbw">
            <node concept="2OqwBi" id="snlvQWeYLW" role="2Oq$k0">
              <node concept="13iPFW" id="snlvQWeYLX" role="2Oq$k0" />
              <node concept="3TrEf2" id="snlvQWeYLY" role="2OqNvi">
                <ref role="3Tt5mk" to="oubp:4ubqdNOGnoZ" resolve="type" />
              </node>
            </node>
            <node concept="3zqWPK" id="70OdufORfUj" role="2OqNvi">
              <ref role="37wK5l" to="tpcn:hKtFRO6" resolve="isString" />
            </node>
          </node>
          <node concept="3eNFk2" id="snlvQWeYM0" role="3eNLev">
            <node concept="3clFbS" id="snlvQWeYM1" role="3eOfB_">
              <node concept="3cpWs8" id="snlvQWeYM2" role="3cqZAp">
                <node concept="3cpWsn" id="snlvQWeYM3" role="3cpWs9">
                  <property role="TrG5h" value="node" />
                  <node concept="3Tqbb2" id="snlvQWeYM4" role="1tU5fm">
                    <ref role="ehGHo" to="oubp:5BD$AU440V3" resolve="BooleanPropertyInstance" />
                  </node>
                  <node concept="2ShNRf" id="snlvQWeYM5" role="33vP2m">
                    <node concept="3zrR0B" id="snlvQWeYM6" role="2ShVmc">
                      <node concept="3Tqbb2" id="snlvQWeYM7" role="3zrR0E">
                        <ref role="ehGHo" to="oubp:5BD$AU440V3" resolve="BooleanPropertyInstance" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="snlvQWeYMg" role="3cqZAp">
                <node concept="37vLTI" id="snlvQWeYMh" role="3clFbG">
                  <node concept="2OqwBi" id="snlvQWeYMi" role="37vLTJ">
                    <node concept="3TrEf2" id="snlvQWeYMk" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:4VkOLwjf83e" resolve="type" />
                    </node>
                    <node concept="37vLTw" id="snlvQWeYMj" role="2Oq$k0">
                      <ref role="3cqZAo" node="snlvQWeYM3" resolve="node" />
                    </node>
                  </node>
                  <node concept="2c44tf" id="snlvQWeYMl" role="37vLTx">
                    <node concept="10P_77" id="snlvQWeYMm" role="2c44tc" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="snlvQWeYMn" role="3cqZAp">
                <node concept="37vLTI" id="snlvQWeYMo" role="3clFbG">
                  <node concept="37vLTw" id="snlvQWeYMp" role="37vLTx">
                    <ref role="3cqZAo" node="snlvQWeYM3" resolve="node" />
                  </node>
                  <node concept="37vLTw" id="snlvQWeYMq" role="37vLTJ">
                    <ref role="3cqZAo" node="snlvQWeYLu" resolve="res" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="snlvQWeYMr" role="3eO9$A">
              <node concept="2OqwBi" id="snlvQWeYMs" role="2Oq$k0">
                <node concept="13iPFW" id="snlvQWeYMt" role="2Oq$k0" />
                <node concept="3TrEf2" id="snlvQWeYMu" role="2OqNvi">
                  <ref role="3Tt5mk" to="oubp:4ubqdNOGnoZ" resolve="type" />
                </node>
              </node>
              <node concept="3zqWPK" id="70OdufORfUl" role="2OqNvi">
                <ref role="37wK5l" to="tpcn:hKtG1tp" resolve="isBoolean" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="snlvQWeYMw" role="3eNLev">
            <node concept="3clFbS" id="snlvQWeYMx" role="3eOfB_">
              <node concept="3cpWs8" id="snlvQWeYMy" role="3cqZAp">
                <node concept="3cpWsn" id="snlvQWeYMz" role="3cpWs9">
                  <property role="TrG5h" value="node" />
                  <node concept="3Tqbb2" id="snlvQWeYM$" role="1tU5fm">
                    <ref role="ehGHo" to="oubp:5BD$AU440V5" resolve="IntegerPropertyInstance" />
                  </node>
                  <node concept="2ShNRf" id="snlvQWeYM_" role="33vP2m">
                    <node concept="3zrR0B" id="snlvQWeYMA" role="2ShVmc">
                      <node concept="3Tqbb2" id="snlvQWeYMB" role="3zrR0E">
                        <ref role="ehGHo" to="oubp:5BD$AU440V5" resolve="IntegerPropertyInstance" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="snlvQWeYMK" role="3cqZAp">
                <node concept="37vLTI" id="snlvQWeYML" role="3clFbG">
                  <node concept="2OqwBi" id="snlvQWeYMM" role="37vLTJ">
                    <node concept="3TrEf2" id="snlvQWeYMO" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:4VkOLwjf83e" resolve="type" />
                    </node>
                    <node concept="37vLTw" id="snlvQWeYMN" role="2Oq$k0">
                      <ref role="3cqZAo" node="snlvQWeYMz" resolve="node" />
                    </node>
                  </node>
                  <node concept="2c44tf" id="snlvQWeYMP" role="37vLTx">
                    <node concept="10Oyi0" id="snlvQWeYMQ" role="2c44tc" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="snlvQWeYMR" role="3cqZAp">
                <node concept="37vLTI" id="snlvQWeYMS" role="3clFbG">
                  <node concept="37vLTw" id="snlvQWeYMT" role="37vLTx">
                    <ref role="3cqZAo" node="snlvQWeYMz" resolve="node" />
                  </node>
                  <node concept="37vLTw" id="snlvQWeYMU" role="37vLTJ">
                    <ref role="3cqZAo" node="snlvQWeYLu" resolve="res" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="snlvQWeYMV" role="3eO9$A">
              <node concept="2OqwBi" id="snlvQWeYMW" role="2Oq$k0">
                <node concept="13iPFW" id="snlvQWeYMX" role="2Oq$k0" />
                <node concept="3TrEf2" id="snlvQWeYMY" role="2OqNvi">
                  <ref role="3Tt5mk" to="oubp:4ubqdNOGnoZ" resolve="type" />
                </node>
              </node>
              <node concept="3zqWPK" id="70OdufORfUn" role="2OqNvi">
                <ref role="37wK5l" to="tpcn:hKtFYCF" resolve="isInteger" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="snlvQWeYN0" role="9aQIa">
            <node concept="3clFbS" id="snlvQWeYN1" role="9aQI4">
              <node concept="YS8fn" id="snlvQWeYN2" role="3cqZAp">
                <node concept="2ShNRf" id="snlvQWeYN3" role="YScLw">
                  <node concept="1pGfFk" id="snlvQWeYN4" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                    <node concept="2OqwBi" id="snlvQWeYN5" role="37wK5m">
                      <node concept="2OqwBi" id="snlvQWeYN6" role="2Oq$k0">
                        <node concept="13iPFW" id="snlvQWeYN7" role="2Oq$k0" />
                        <node concept="3TrEf2" id="snlvQWeYN8" role="2OqNvi">
                          <ref role="3Tt5mk" to="oubp:4ubqdNOGnoZ" resolve="type" />
                        </node>
                      </node>
                      <node concept="3zqWPK" id="70OdufORfUp" role="2OqNvi">
                        <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7s$_UJMU2GN" role="3cqZAp" />
        <node concept="3clFbF" id="snlvQWeYLC" role="3cqZAp">
          <node concept="37vLTI" id="snlvQWeYLD" role="3clFbG">
            <node concept="2OqwBi" id="snlvQWeYLE" role="37vLTx">
              <node concept="13iPFW" id="snlvQWeYLF" role="2Oq$k0" />
              <node concept="3TrcHB" id="snlvQWeYLG" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="2OqwBi" id="snlvQWeYLH" role="37vLTJ">
              <node concept="37vLTw" id="7s$_UJMTYNA" role="2Oq$k0">
                <ref role="3cqZAo" node="snlvQWeYLu" resolve="res" />
              </node>
              <node concept="3TrcHB" id="snlvQWeYLJ" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7s$_UJMTZ6X" role="3cqZAp">
          <node concept="37vLTI" id="7s$_UJMU1hq" role="3clFbG">
            <node concept="13iPFW" id="7s$_UJMU1w_" role="37vLTx" />
            <node concept="2OqwBi" id="7s$_UJMTZj8" role="37vLTJ">
              <node concept="37vLTw" id="7s$_UJMTZ6V" role="2Oq$k0">
                <ref role="3cqZAo" node="snlvQWeYLu" resolve="res" />
              </node>
              <node concept="3TrEf2" id="7s$_UJMU0z6" role="2OqNvi">
                <ref role="3Tt5mk" to="oubp:7s$_UJMTR_D" resolve="decl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7s$_UJMTYo9" role="3cqZAp" />
        <node concept="3cpWs6" id="snlvQWeYNa" role="3cqZAp">
          <node concept="37vLTw" id="snlvQWeYNb" role="3cqZAk">
            <ref role="3cqZAo" node="snlvQWeYLu" resolve="res" />
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="7ay_HjIPCN0" role="3clF45">
        <ref role="ehGHo" to="oubp:5BD$AU43p5h" resolve="PropertyInstance" />
      </node>
      <node concept="3Tm1VV" id="7ay_HjIPCN1" role="1B3o_S" />
    </node>
    <node concept="13i0hz" id="2gzehMfikn_" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="find" />
      <ref role="13i0hy" node="2gzehMfi1$l" resolve="find" />
      <node concept="3Tm1VV" id="2gzehMfiknC" role="1B3o_S" />
      <node concept="3clFbS" id="2gzehMfiknG" role="3clF47">
        <node concept="3clFbF" id="2gzehMfikDJ" role="3cqZAp">
          <node concept="2OqwBi" id="2gzehMfikDK" role="3clFbG">
            <node concept="2OqwBi" id="2gzehMfikDL" role="2Oq$k0">
              <node concept="2OqwBi" id="2gzehMfikDM" role="2Oq$k0">
                <node concept="37vLTw" id="2gzehMfikDN" role="2Oq$k0">
                  <ref role="3cqZAo" node="2gzehMfiknH" resolve="cls" />
                </node>
                <node concept="3Tsc0h" id="2gzehMfikDO" role="2OqNvi">
                  <ref role="3TtcxE" to="tpee:4EqhHTp4Mw3" resolve="member" />
                </node>
              </node>
              <node concept="v3k3i" id="2gzehMfikDP" role="2OqNvi">
                <node concept="chp4Y" id="2gzehMfikO1" role="v3oSu">
                  <ref role="cht4Q" to="oubp:5BD$AU43p5h" resolve="PropertyInstance" />
                </node>
              </node>
            </node>
            <node concept="3zZkjj" id="2gzehMfikDR" role="2OqNvi">
              <node concept="1bVj0M" id="2gzehMfikDS" role="23t8la">
                <node concept="3clFbS" id="2gzehMfikDT" role="1bW5cS">
                  <node concept="3clFbF" id="2gzehMfikDU" role="3cqZAp">
                    <node concept="3clFbC" id="2gzehMfikDV" role="3clFbG">
                      <node concept="2OqwBi" id="2gzehMfikDW" role="3uHU7B">
                        <node concept="37vLTw" id="2gzehMfikDX" role="2Oq$k0">
                          <ref role="3cqZAo" node="5W7E4fV0VZs" resolve="it" />
                        </node>
                        <node concept="3TrEf2" id="2gzehMfilwI" role="2OqNvi">
                          <ref role="3Tt5mk" to="oubp:7s$_UJMTR_D" resolve="decl" />
                        </node>
                      </node>
                      <node concept="13iPFW" id="2gzehMfikDZ" role="3uHU7w" />
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="5W7E4fV0VZs" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="5W7E4fV0VZt" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2gzehMfiknH" role="3clF46">
        <property role="TrG5h" value="cls" />
        <node concept="3Tqbb2" id="2gzehMfiknI" role="1tU5fm">
          <ref role="ehGHo" to="tpee:fz12cDA" resolve="ClassConcept" />
        </node>
      </node>
      <node concept="A3Dl8" id="2gzehMfiknJ" role="3clF45">
        <node concept="3Tqbb2" id="2gzehMfiknK" role="A3Ik2">
          <ref role="ehGHo" to="oubp:5BD$AU43p5h" resolve="PropertyInstance" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="5BD$AU44s4j">
    <property role="3GE5qa" value="member.customDescriptor" />
    <ref role="13h7C2" to="oubp:7aMlq14w5Qs" resolve="CustomMemberDescriptor" />
    <node concept="13hLZK" id="5BD$AU44s4k" role="13h7CW">
      <node concept="3clFbS" id="5BD$AU44s4l" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="7ay_HjIOV8R" role="13h7CS">
      <property role="2Ki8OM" value="false" />
      <property role="TrG5h" value="create" />
      <ref role="13i0hy" node="7ay_HjIOVVe" resolve="create" />
      <node concept="37vLTG" id="7stlEFlmhNc" role="3clF46">
        <property role="TrG5h" value="futureModel" />
        <node concept="H_c77" id="7stlEFlmhNd" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="7ay_HjIOV8z" role="3clF47">
        <node concept="3cpWs8" id="7stlEFlqlsY" role="3cqZAp">
          <node concept="3cpWsn" id="7stlEFlqlsZ" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="3Tqbb2" id="7stlEFlqlsT" role="1tU5fm" />
            <node concept="2OqwBi" id="7stlEFlqlt0" role="33vP2m">
              <node concept="2OqwBi" id="7stlEFlqlt1" role="2Oq$k0">
                <node concept="2OqwBi" id="7stlEFlqlt2" role="2Oq$k0">
                  <node concept="13iPFW" id="7stlEFlqlt3" role="2Oq$k0" />
                  <node concept="3TrEf2" id="7stlEFlqlt4" role="2OqNvi">
                    <ref role="3Tt5mk" to="oubp:7aMlq14w5Qv" resolve="cncpt" />
                  </node>
                </node>
                <node concept="1rGIog" id="7stlEFlqlt5" role="2OqNvi" />
              </node>
              <node concept="q_SaT" id="7stlEFlqlt6" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="sQ3dbF0uh1" role="3cqZAp">
          <node concept="2OqwBi" id="sQ3dbF0_kQ" role="3clFbG">
            <node concept="2OqwBi" id="sQ3dbF0$Ei" role="2Oq$k0">
              <node concept="2ShNRf" id="sQ3dbF0ugX" role="2Oq$k0">
                <node concept="1pGfFk" id="sQ3dbF0uZ6" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="w1kc:~ModelDependencyUpdate.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModel,java.lang.Iterable)" resolve="ModelDependencyUpdate" />
                  <node concept="37vLTw" id="sQ3dbF0vco" role="37wK5m">
                    <ref role="3cqZAo" node="7stlEFlmhNc" resolve="futureModel" />
                  </node>
                  <node concept="2OqwBi" id="sQ3dbF0vvg" role="37wK5m">
                    <node concept="37vLTw" id="sQ3dbF0vl4" role="2Oq$k0">
                      <ref role="3cqZAo" node="7stlEFlqlsZ" resolve="res" />
                    </node>
                    <node concept="2Rf3mk" id="sQ3dbF0vQ6" role="2OqNvi">
                      <node concept="1xIGOp" id="sQ3dbF0$kR" role="1xVPHs" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="sQ3dbF0$YX" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~ModelDependencyUpdate.updateUsedLanguages()" resolve="updateUsedLanguages" />
              </node>
            </node>
            <node concept="liA8E" id="sQ3dbF0ABg" role="2OqNvi">
              <ref role="37wK5l" to="w1kc:~ModelDependencyUpdate.updateImportedModels(org.jetbrains.mps.openapi.module.SRepository)" resolve="updateImportedModels" />
              <node concept="2OqwBi" id="7stlEFlqmpq" role="37wK5m">
                <node concept="liA8E" id="7stlEFlqmA5" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
                </node>
                <node concept="2JrnkZ" id="7stlEFlqmpv" role="2Oq$k0">
                  <node concept="37vLTw" id="7stlEFlqm7k" role="2JrQYb">
                    <ref role="3cqZAo" node="7stlEFlmhNc" resolve="futureModel" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7stlEFlqmN6" role="3cqZAp">
          <node concept="1PxgMI" id="7stlEFlqnLP" role="3cqZAk">
            <node concept="chp4Y" id="7stlEFlqnXc" role="3oSUPX">
              <ref role="cht4Q" to="tpee:h9ngReX" resolve="ClassifierMember" />
            </node>
            <node concept="37vLTw" id="7stlEFlqmN8" role="1m5AlR">
              <ref role="3cqZAo" node="7stlEFlqlsZ" resolve="res" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="7ay_HjIPqV9" role="3clF45">
        <ref role="ehGHo" to="tpee:h9ngReX" resolve="ClassifierMember" />
      </node>
      <node concept="3Tm1VV" id="7ay_HjIPqVa" role="1B3o_S" />
    </node>
    <node concept="13i0hz" id="2gzehMfim3K" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="find" />
      <ref role="13i0hy" node="2gzehMfi1$l" resolve="find" />
      <node concept="3Tm1VV" id="2gzehMfim3N" role="1B3o_S" />
      <node concept="3clFbS" id="2gzehMfim3R" role="3clF47">
        <node concept="3clFbF" id="2gzehMfim7b" role="3cqZAp">
          <node concept="2OqwBi" id="2gzehMfinPS" role="3clFbG">
            <node concept="2OqwBi" id="2gzehMfimhO" role="2Oq$k0">
              <node concept="37vLTw" id="2gzehMfim7a" role="2Oq$k0">
                <ref role="3cqZAo" node="2gzehMfim3S" resolve="cls" />
              </node>
              <node concept="3Tsc0h" id="2gzehMfimNk" role="2OqNvi">
                <ref role="3TtcxE" to="tpee:4EqhHTp4Mw3" resolve="member" />
              </node>
            </node>
            <node concept="v3k3i" id="2gzehMfiqwX" role="2OqNvi">
              <node concept="25Kdxt" id="2gzehMfiqx$" role="v3oSu">
                <node concept="2OqwBi" id="2gzehMfiqWp" role="25KhWn">
                  <node concept="2OqwBi" id="2gzehMfiqB$" role="2Oq$k0">
                    <node concept="13iPFW" id="2gzehMfiq$Y" role="2Oq$k0" />
                    <node concept="3TrEf2" id="2gzehMfiqK2" role="2OqNvi">
                      <ref role="3Tt5mk" to="oubp:7aMlq14w5Qv" resolve="cncpt" />
                    </node>
                  </node>
                  <node concept="1rGIog" id="2gzehMfird6" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2gzehMfim3S" role="3clF46">
        <property role="TrG5h" value="cls" />
        <node concept="3Tqbb2" id="2gzehMfim3T" role="1tU5fm">
          <ref role="ehGHo" to="tpee:fz12cDA" resolve="ClassConcept" />
        </node>
      </node>
      <node concept="A3Dl8" id="2gzehMfim3U" role="3clF45">
        <node concept="3Tqbb2" id="2gzehMfim3V" role="A3Ik2">
          <ref role="ehGHo" to="tpee:h9ngReX" resolve="ClassifierMember" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="2gzehMfmm9R" role="13h7CS">
      <property role="TrG5h" value="getPresentation" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="tpcu:hEwIMiw" resolve="getPresentation" />
      <node concept="3Tm1VV" id="2gzehMfmmaZ" role="1B3o_S" />
      <node concept="3clFbS" id="2gzehMfmmdt" role="3clF47">
        <node concept="3clFbJ" id="5zDW7Nr$861" role="3cqZAp">
          <node concept="3clFbS" id="5zDW7Nr$863" role="3clFbx">
            <node concept="3cpWs6" id="5zDW7Nr$bJL" role="3cqZAp">
              <node concept="2OqwBi" id="5zDW7Nr$bJM" role="3cqZAk">
                <node concept="2OqwBi" id="5zDW7Nr$bJN" role="2Oq$k0">
                  <node concept="13iPFW" id="5zDW7Nr$bJO" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5zDW7Nr$bJP" role="2OqNvi">
                    <ref role="3Tt5mk" to="oubp:7aMlq14w5Qv" resolve="cncpt" />
                  </node>
                </node>
                <node concept="3TrcHB" id="5zDW7Nr$bJQ" role="2OqNvi">
                  <ref role="3TsBF5" to="tpce:4qF2Hm2r7ja" resolve="conceptAlias" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5zDW7Nr$9bX" role="3clFbw">
            <node concept="2OqwBi" id="5zDW7Nr$8y2" role="2Oq$k0">
              <node concept="2OqwBi" id="5zDW7Nr$8cB" role="2Oq$k0">
                <node concept="13iPFW" id="5zDW7Nr$88$" role="2Oq$k0" />
                <node concept="3TrEf2" id="5zDW7Nr$8mq" role="2OqNvi">
                  <ref role="3Tt5mk" to="oubp:7aMlq14w5Qv" resolve="cncpt" />
                </node>
              </node>
              <node concept="3TrcHB" id="5zDW7Nr$8NH" role="2OqNvi">
                <ref role="3TsBF5" to="tpce:4qF2Hm2r7ja" resolve="conceptAlias" />
              </node>
            </node>
            <node concept="17RvpY" id="5zDW7Nr$bzL" role="2OqNvi" />
          </node>
          <node concept="9aQIb" id="5zDW7Nr$9M0" role="9aQIa">
            <node concept="3clFbS" id="5zDW7Nr$9M1" role="9aQI4">
              <node concept="3cpWs6" id="5zDW7Nr$bER" role="3cqZAp">
                <node concept="2OqwBi" id="5zDW7Nr$bES" role="3cqZAk">
                  <node concept="2OqwBi" id="5zDW7Nr$bET" role="2Oq$k0">
                    <node concept="13iPFW" id="5zDW7Nr$bEU" role="2Oq$k0" />
                    <node concept="3TrEf2" id="5zDW7Nr$bEV" role="2OqNvi">
                      <ref role="3Tt5mk" to="oubp:7aMlq14w5Qv" resolve="cncpt" />
                    </node>
                  </node>
                  <node concept="3zqWPK" id="70OdufORfUr" role="2OqNvi">
                    <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="2gzehMfmmdu" role="3clF45" />
    </node>
    <node concept="13i0hz" id="5xXiDaJYDqE" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="getMatchingText" />
      <ref role="13i0hy" node="2nUiI4k7qhh" resolve="getMatchingText" />
      <node concept="3Tm1VV" id="5xXiDaJYDqF" role="1B3o_S" />
      <node concept="3clFbS" id="5xXiDaJYDqZ" role="3clF47">
        <node concept="3clFbF" id="5xXiDaJYJ4B" role="3cqZAp">
          <node concept="2OqwBi" id="5xXiDaJYJLM" role="3clFbG">
            <node concept="2OqwBi" id="5xXiDaJYJqO" role="2Oq$k0">
              <node concept="13iPFW" id="5xXiDaJYJ4y" role="2Oq$k0" />
              <node concept="3TrEf2" id="5xXiDaJYJ$C" role="2OqNvi">
                <ref role="3Tt5mk" to="oubp:7aMlq14w5Qv" resolve="cncpt" />
              </node>
            </node>
            <node concept="3TrcHB" id="5xXiDaJYM5u" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="5xXiDaJYDr0" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="1_lSsE3T_Zz">
    <property role="3GE5qa" value="" />
    <ref role="13h7C2" to="oubp:3geGFOI0X5w" resolve="DSLDescriptor" />
    <node concept="13i0hz" id="1_lSsE3TA5X" role="13h7CS">
      <property role="TrG5h" value="getPreferredConcept" />
      <node concept="3Tqbb2" id="2iCqkkxCNJY" role="3clF45">
        <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
      </node>
      <node concept="3Tm1VV" id="1_lSsE3TA5Y" role="1B3o_S" />
      <node concept="3clFbS" id="1_lSsE3TA60" role="3clF47">
        <node concept="3clFbF" id="1_lSsE3TA6u" role="3cqZAp">
          <node concept="3K4zz7" id="1_lSsE3TAOH" role="3clFbG">
            <node concept="3B5_sB" id="2iCqkkxCNTV" role="3K4E3e">
              <ref role="3B5MYn" to="tpee:fz12cDA" resolve="ClassConcept" />
            </node>
            <node concept="3clFbC" id="1_lSsE3TACt" role="3K4Cdx">
              <node concept="10Nm6u" id="1_lSsE3TAI6" role="3uHU7w" />
              <node concept="2OqwBi" id="1_lSsE3TA8P" role="3uHU7B">
                <node concept="13iPFW" id="1_lSsE3TA6t" role="2Oq$k0" />
                <node concept="3TrEf2" id="1_lSsE3TAqf" role="2OqNvi">
                  <ref role="3Tt5mk" to="oubp:1_lSsE3TuQi" resolve="preferredConcept" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="1_lSsE3THbP" role="3K4GZi">
              <node concept="13iPFW" id="1_lSsE3THbQ" role="2Oq$k0" />
              <node concept="3TrEf2" id="1_lSsE3THbR" role="2OqNvi">
                <ref role="3Tt5mk" to="oubp:1_lSsE3TuQi" resolve="preferredConcept" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="2VRROcY8CaS" role="13h7CS">
      <property role="TrG5h" value="initializeInstance" />
      <node concept="3Tm1VV" id="2VRROcY8CaT" role="1B3o_S" />
      <node concept="3cqZAl" id="2VRROcY8Cdg" role="3clF45" />
      <node concept="3clFbS" id="2VRROcY8CaV" role="3clF47">
        <node concept="3clFbJ" id="2VRROcY9KEF" role="3cqZAp">
          <node concept="3clFbS" id="2VRROcY9KEI" role="3clFbx">
            <node concept="3cpWs6" id="2VRROcY9MQy" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="2VRROcY9MqC" role="3clFbw">
            <node concept="10Nm6u" id="2VRROcY9MF3" role="3uHU7w" />
            <node concept="2OqwBi" id="2VRROcY9LoC" role="3uHU7B">
              <node concept="13iPFW" id="2VRROcY9L6C" role="2Oq$k0" />
              <node concept="3TrEf2" id="2VRROcY9M4E" role="2OqNvi">
                <ref role="3Tt5mk" to="oubp:1_lSsE3UM8e" resolve="initializer" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="2VRROcY8Dmc" role="3cqZAp">
          <node concept="3clFbS" id="2VRROcY8Dmd" role="1zxBo7">
            <node concept="3cpWs8" id="2VRROcY8Dme" role="3cqZAp">
              <node concept="3cpWsn" id="2VRROcY8Dmf" role="3cpWs9">
                <property role="TrG5h" value="className" />
                <node concept="17QB3L" id="2VRROcY8Dmg" role="1tU5fm" />
                <node concept="BsUDl" id="3UdX2XvIreG" role="33vP2m">
                  <ref role="37wK5l" node="3UdX2XvIeC6" resolve="getGeneratedQueriesQualifiedClassName" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="3UdX2XvIjz0" role="3cqZAp">
              <node concept="1PaTwC" id="3UdX2XvIjz1" role="1aUNEU">
                <node concept="3oM_SD" id="3UdX2XvIjz3" role="1PaTwD">
                  <property role="3oM_SC" value="FIXME" />
                </node>
                <node concept="3oM_SD" id="3UdX2XvIjHP" role="1PaTwD">
                  <property role="3oM_SC" value="here's" />
                </node>
                <node concept="3oM_SD" id="3UdX2XvIjVK" role="1PaTwD">
                  <property role="3oM_SC" value="an" />
                </node>
                <node concept="3oM_SD" id="3UdX2XvIjVO" role="1PaTwD">
                  <property role="3oM_SC" value="assumption" />
                </node>
                <node concept="3oM_SD" id="3UdX2XvIkd9" role="1PaTwD">
                  <property role="3oM_SC" value="that" />
                </node>
                <node concept="3oM_SD" id="3UdX2XvIkeV" role="1PaTwD">
                  <property role="3oM_SC" value="implementation" />
                </node>
                <node concept="3oM_SD" id="3UdX2XvIkCU" role="1PaTwD">
                  <property role="3oM_SC" value="class" />
                </node>
                <node concept="3oM_SD" id="3UdX2XvIkJY" role="1PaTwD">
                  <property role="3oM_SC" value="has" />
                </node>
                <node concept="3oM_SD" id="3UdX2XvIkLN" role="1PaTwD">
                  <property role="3oM_SC" value="been" />
                </node>
                <node concept="3oM_SD" id="3UdX2XvIkST" role="1PaTwD">
                  <property role="3oM_SC" value="generated" />
                </node>
                <node concept="3oM_SD" id="3UdX2XvIl3o" role="1PaTwD">
                  <property role="3oM_SC" value="in" />
                </node>
                <node concept="3oM_SD" id="3UdX2XvIljz" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="3UdX2XvIlsE" role="1PaTwD">
                  <property role="3oM_SC" value="same" />
                </node>
                <node concept="3oM_SD" id="3UdX2XvIlaH" role="1PaTwD">
                  <property role="3oM_SC" value="module" />
                </node>
                <node concept="3oM_SD" id="3UdX2XvIl_x" role="1PaTwD">
                  <property role="3oM_SC" value="as" />
                </node>
                <node concept="3oM_SD" id="3UdX2XvIl_L" role="1PaTwD">
                  <property role="3oM_SC" value="node&lt;DSLDescriptor&gt;" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2VRROcY8Dmx" role="3cqZAp">
              <node concept="3cpWsn" id="2VRROcY8Dmy" role="3cpWs9">
                <property role="TrG5h" value="classModule" />
                <node concept="3uibUv" id="2VRROcY8Dmz" role="1tU5fm">
                  <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                </node>
                <node concept="2OqwBi" id="2VRROcY8Dm$" role="33vP2m">
                  <node concept="2OqwBi" id="2VRROcY8Dm_" role="2Oq$k0">
                    <node concept="2JrnkZ" id="2VRROcY8DmA" role="2Oq$k0">
                      <node concept="13iPFW" id="2VRROcY8DmB" role="2JrQYb" />
                    </node>
                    <node concept="liA8E" id="2VRROcY8DmC" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                    </node>
                  </node>
                  <node concept="liA8E" id="2VRROcY8DmD" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2VRROcY8DmE" role="3cqZAp">
              <node concept="3cpWsn" id="2VRROcY8DmF" role="3cpWs9">
                <property role="TrG5h" value="methods" />
                <node concept="10Q1$e" id="2VRROcY8DmG" role="1tU5fm">
                  <node concept="3uibUv" id="2VRROcY8DmH" role="10Q1$1">
                    <ref role="3uigEE" to="t6h5:~Method" resolve="Method" />
                  </node>
                </node>
                <node concept="2OqwBi" id="2VRROcY8DmI" role="33vP2m">
                  <node concept="liA8E" id="2VRROcY8DmJ" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Class.getMethods()" resolve="getMethods" />
                  </node>
                  <node concept="2OqwBi" id="2VRROcY8DmK" role="2Oq$k0">
                    <node concept="2YIFZM" id="2VRROcY8DmL" role="2Oq$k0">
                      <ref role="1Pybhc" to="3qmy:~ClassLoaderManager" resolve="ClassLoaderManager" />
                      <ref role="37wK5l" to="3qmy:~ClassLoaderManager.getInstance()" resolve="getInstance" />
                    </node>
                    <node concept="liA8E" id="2VRROcY8DmM" role="2OqNvi">
                      <ref role="37wK5l" to="3qmy:~ClassLoaderManager.getClass(org.jetbrains.mps.openapi.module.SModule,java.lang.String)" resolve="getClass" />
                      <node concept="37vLTw" id="2VRROcY8DmN" role="37wK5m">
                        <ref role="3cqZAo" node="2VRROcY8Dmy" resolve="classModule" />
                      </node>
                      <node concept="37vLTw" id="2VRROcY8DmO" role="37wK5m">
                        <ref role="3cqZAo" node="2VRROcY8Dmf" resolve="className" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="2VRROcY8DmP" role="3cqZAp">
              <node concept="3clFbS" id="2VRROcY8DmQ" role="2LFqv$">
                <node concept="3clFbJ" id="2VRROcY8DmR" role="3cqZAp">
                  <node concept="3clFbS" id="2VRROcY8DmS" role="3clFbx">
                    <node concept="3clFbF" id="2VRROcY8DmT" role="3cqZAp">
                      <node concept="2OqwBi" id="2VRROcY8DmU" role="3clFbG">
                        <node concept="37vLTw" id="2VRROcY8DmV" role="2Oq$k0">
                          <ref role="3cqZAo" node="2VRROcY8Dnj" resolve="m" />
                        </node>
                        <node concept="liA8E" id="2VRROcY8DmW" role="2OqNvi">
                          <ref role="37wK5l" to="t6h5:~Method.setAccessible(boolean)" resolve="setAccessible" />
                          <node concept="3clFbT" id="2VRROcY8DmX" role="37wK5m">
                            <property role="3clFbU" value="true" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="2VRROcY8FzK" role="3cqZAp">
                      <node concept="2OqwBi" id="2VRROcY8Dn1" role="3clFbG">
                        <node concept="37vLTw" id="2VRROcY8Dn2" role="2Oq$k0">
                          <ref role="3cqZAo" node="2VRROcY8Dnj" resolve="m" />
                        </node>
                        <node concept="liA8E" id="2VRROcY8Dn3" role="2OqNvi">
                          <ref role="37wK5l" to="t6h5:~Method.invoke(java.lang.Object,java.lang.Object...)" resolve="invoke" />
                          <node concept="10Nm6u" id="2VRROcY8Dn4" role="37wK5m" />
                          <node concept="37vLTw" id="2VRROcY8GwC" role="37wK5m">
                            <ref role="3cqZAo" node="2VRROcY8Cdk" resolve="classLike" />
                          </node>
                          <node concept="37vLTw" id="3CPpk7pE5XY" role="37wK5m">
                            <ref role="3cqZAo" node="3CPpk7pE5_O" resolve="futureModel" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2VRROcY8Dn7" role="3clFbw">
                    <node concept="2OqwBi" id="2VRROcY8Dn8" role="2Oq$k0">
                      <node concept="37vLTw" id="2VRROcY8Dn9" role="2Oq$k0">
                        <ref role="3cqZAo" node="2VRROcY8Dnj" resolve="m" />
                      </node>
                      <node concept="liA8E" id="2VRROcY8Dna" role="2OqNvi">
                        <ref role="37wK5l" to="t6h5:~Method.getName()" resolve="getName" />
                      </node>
                    </node>
                    <node concept="liA8E" id="2VRROcY8Dnb" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                      <node concept="Xl_RD" id="2VRROcY8EJk" role="37wK5m">
                        <property role="Xl_RC" value="init" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="2VRROcY8Dnj" role="1Duv9x">
                <property role="TrG5h" value="m" />
                <node concept="3uibUv" id="2VRROcY8Dnk" role="1tU5fm">
                  <ref role="3uigEE" to="t6h5:~Method" resolve="Method" />
                </node>
              </node>
              <node concept="37vLTw" id="2VRROcY8Dnl" role="1DdaDG">
                <ref role="3cqZAo" node="2VRROcY8DmF" resolve="methods" />
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="2VRROcY8Dnq" role="1zxBo5">
            <node concept="XOnhg" id="2VRROcY8Dnr" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="xvs04dFC6p" role="1tU5fm">
                <node concept="3uibUv" id="2VRROcY8Dns" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="2VRROcY8Dnt" role="1zc67A">
              <node concept="3clFbF" id="2VRROcY8Dnu" role="3cqZAp">
                <node concept="2OqwBi" id="2VRROcY8Dnv" role="3clFbG">
                  <node concept="37vLTw" id="2VRROcY8Dnw" role="2Oq$k0">
                    <ref role="3cqZAo" node="2VRROcY8Dnr" resolve="e" />
                  </node>
                  <node concept="liA8E" id="2VRROcY8Dnx" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Throwable.printStackTrace()" resolve="printStackTrace" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2VRROcY8Cdk" role="3clF46">
        <property role="TrG5h" value="classLike" />
        <node concept="3Tqbb2" id="2VRROcY8Cdj" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3CPpk7pE5_O" role="3clF46">
        <property role="TrG5h" value="futureModel" />
        <node concept="H_c77" id="3CPpk7pE5P9" role="1tU5fm" />
      </node>
    </node>
    <node concept="13i0hz" id="2VRROcY7Vt6" role="13h7CS">
      <property role="TrG5h" value="getGeneratedClassName" />
      <node concept="3Tm1VV" id="2VRROcY7Vvu" role="1B3o_S" />
      <node concept="3uibUv" id="2VRROcY7VJC" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="2VRROcY7Vvw" role="3clF47">
        <node concept="3clFbF" id="2VRROcY7YzA" role="3cqZAp">
          <node concept="3cpWs3" id="2VRROcY7qjW" role="3clFbG">
            <node concept="Xl_RD" id="2VRROcY7qk1" role="3uHU7w">
              <property role="Xl_RC" value="_Queries" />
            </node>
            <node concept="2OqwBi" id="1XvrRm0YBFf" role="3uHU7B">
              <node concept="13iPFW" id="2VRROcY7YDy" role="2Oq$k0" />
              <node concept="3TrcHB" id="1XvrRm0YC9X" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="3UdX2XvIeC6" role="13h7CS">
      <property role="TrG5h" value="getGeneratedQueriesQualifiedClassName" />
      <node concept="3Tm1VV" id="3UdX2XvIeC7" role="1B3o_S" />
      <node concept="3uibUv" id="3UdX2XvIfbl" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="3UdX2XvIeC9" role="3clF47">
        <node concept="3cpWs8" id="3UdX2XvIomV" role="3cqZAp">
          <node concept="3cpWsn" id="3UdX2XvIomW" role="3cpWs9">
            <property role="TrG5h" value="modelQualifiedName" />
            <node concept="3uibUv" id="3UdX2XvIod2" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3UdX2XvIlZy" role="3cqZAp">
          <node concept="3clFbS" id="3UdX2XvIlZ$" role="3clFbx">
            <node concept="3clFbF" id="3UdX2XvIope" role="3cqZAp">
              <node concept="37vLTI" id="3UdX2XvIopg" role="3clFbG">
                <node concept="2OqwBi" id="3UdX2XvIomX" role="37vLTx">
                  <node concept="2OqwBi" id="3UdX2XvIomY" role="2Oq$k0">
                    <node concept="2OqwBi" id="3UdX2XvIomZ" role="2Oq$k0">
                      <node concept="2OqwBi" id="3UdX2XvIon0" role="2Oq$k0">
                        <node concept="13iPFW" id="3UdX2XvIon1" role="2Oq$k0" />
                        <node concept="3TrEf2" id="3UdX2XvIon2" role="2OqNvi">
                          <ref role="3Tt5mk" to="oubp:3UdX2XvH7wi" resolve="implModel" />
                        </node>
                      </node>
                      <node concept="3zqWPK" id="70OdufORfUt" role="2OqNvi">
                        <ref role="37wK5l" to="xlb7:1Bs_61$mvvu" resolve="toModelReference" />
                      </node>
                    </node>
                    <node concept="liA8E" id="3UdX2XvIon4" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModelReference.getName()" resolve="getName" />
                    </node>
                  </node>
                  <node concept="liA8E" id="3UdX2XvIon5" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SModelName.getLongName()" resolve="getLongName" />
                  </node>
                </node>
                <node concept="37vLTw" id="3UdX2XvIopk" role="37vLTJ">
                  <ref role="3cqZAo" node="3UdX2XvIomW" resolve="modelQualifiedName" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="3UdX2XvImHL" role="3clFbw">
            <node concept="10Nm6u" id="3UdX2XvImO1" role="3uHU7w" />
            <node concept="2OqwBi" id="3UdX2XvImdY" role="3uHU7B">
              <node concept="13iPFW" id="3UdX2XvIm2I" role="2Oq$k0" />
              <node concept="3TrEf2" id="3UdX2XvImoo" role="2OqNvi">
                <ref role="3Tt5mk" to="oubp:3UdX2XvH7wi" resolve="implModel" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="3UdX2XvIoUr" role="9aQIa">
            <node concept="3clFbS" id="3UdX2XvIoUs" role="9aQI4">
              <node concept="3clFbF" id="3UdX2XvIp1K" role="3cqZAp">
                <node concept="37vLTI" id="3UdX2XvIpjC" role="3clFbG">
                  <node concept="37vLTw" id="3UdX2XvIp1J" role="37vLTJ">
                    <ref role="3cqZAo" node="3UdX2XvIomW" resolve="modelQualifiedName" />
                  </node>
                  <node concept="2OqwBi" id="3UdX2XvIfRc" role="37vLTx">
                    <node concept="2OqwBi" id="3UdX2XvIfoz" role="2Oq$k0">
                      <node concept="13iPFW" id="3UdX2XvIfdS" role="2Oq$k0" />
                      <node concept="I4A8Y" id="3UdX2XvIfyj" role="2OqNvi" />
                    </node>
                    <node concept="LkI2h" id="3UdX2XvIfYh" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3UdX2XvIfdq" role="3cqZAp">
          <node concept="3cpWs3" id="3UdX2XvIhJI" role="3cqZAk">
            <node concept="3cpWs3" id="3UdX2XvIgjT" role="3uHU7B">
              <node concept="1Xhbcc" id="3UdX2XvIgjW" role="3uHU7w">
                <property role="1XhdNS" value="." />
              </node>
              <node concept="37vLTw" id="3UdX2XvIqRD" role="3uHU7B">
                <ref role="3cqZAo" node="3UdX2XvIomW" resolve="modelQualifiedName" />
              </node>
            </node>
            <node concept="BsUDl" id="3UdX2XvIiBP" role="3uHU7w">
              <ref role="37wK5l" node="2VRROcY7Vt6" resolve="getGeneratedClassName" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="2iCqkkxuhoj" role="13h7CS">
      <property role="TrG5h" value="getClassLikeMembers" />
      <node concept="3Tm1VV" id="2iCqkkxuhok" role="1B3o_S" />
      <node concept="A3Dl8" id="2iCqkkxuhCM" role="3clF45">
        <node concept="3Tqbb2" id="2iCqkkxuhCR" role="A3Ik2">
          <ref role="ehGHo" to="oubp:7aMlq14vYj7" resolve="DSLClassMember" />
        </node>
      </node>
      <node concept="3clFbS" id="2iCqkkxuhom" role="3clF47">
        <node concept="3cpWs8" id="2iCqkkxuoPW" role="3cqZAp">
          <node concept="3cpWsn" id="2iCqkkxuoPX" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="_YKpA" id="2iCqkkxup7o" role="1tU5fm">
              <node concept="3Tqbb2" id="2iCqkkxupeX" role="_ZDj9">
                <ref role="ehGHo" to="oubp:7aMlq14vYj7" resolve="DSLClassMember" />
              </node>
            </node>
            <node concept="2ShNRf" id="2iCqkkxusfZ" role="33vP2m">
              <node concept="Tc6Ow" id="2iCqkkxusfV" role="2ShVmc">
                <node concept="3Tqbb2" id="2iCqkkxusfW" role="HW$YZ">
                  <ref role="ehGHo" to="oubp:7aMlq14vYj7" resolve="DSLClassMember" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2iCqkkxuoV0" role="3cqZAp">
          <node concept="2OqwBi" id="2iCqkkxuqe4" role="3clFbG">
            <node concept="37vLTw" id="2iCqkkxuoV6" role="2Oq$k0">
              <ref role="3cqZAo" node="2iCqkkxuoPX" resolve="result" />
            </node>
            <node concept="X8dFx" id="2iCqkkxus1I" role="2OqNvi">
              <node concept="2OqwBi" id="2iCqkkxuoPY" role="25WWJ7">
                <node concept="13iPFW" id="2iCqkkxuoPZ" role="2Oq$k0" />
                <node concept="3Tsc0h" id="2iCqkkxuoQ0" role="2OqNvi">
                  <ref role="3TtcxE" to="oubp:7aMlq14vYj8" resolve="classLikeMember" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2iCqkkxuo60" role="3cqZAp">
          <node concept="37vLTw" id="2iCqkkxuoQ1" role="3cqZAk">
            <ref role="3cqZAo" node="2iCqkkxuoPX" resolve="result" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="1_lSsE3T_Z$" role="13h7CW">
      <node concept="3clFbS" id="1_lSsE3T_Z_" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="536fTXa3uZB">
    <property role="3GE5qa" value="member" />
    <ref role="13h7C2" to="oubp:536fTXa3uDv" resolve="EmptyMemberDescriptor" />
    <node concept="13hLZK" id="536fTXa3uZC" role="13h7CW">
      <node concept="3clFbS" id="536fTXa3uZD" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="536fTXa3v9C" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="createForClass" />
      <ref role="13i0hy" node="5BD$AU437jJ" resolve="createForClass" />
      <node concept="3Tm1VV" id="536fTXa3v9D" role="1B3o_S" />
      <node concept="3clFbS" id="536fTXa3v9I" role="3clF47">
        <node concept="3clFbF" id="17H9dI4HTXN" role="3cqZAp">
          <node concept="BsUDl" id="536fTXa3$nL" role="3clFbG">
            <ref role="37wK5l" node="7ay_HjIOVVe" resolve="create" />
            <node concept="37vLTw" id="7stlEFlmhB7" role="37wK5m">
              <ref role="3cqZAo" node="7stlEFlmh_u" resolve="futureModel" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="536fTXa3v9J" role="3clF46">
        <property role="TrG5h" value="cls" />
        <node concept="3Tqbb2" id="536fTXa3v9K" role="1tU5fm">
          <ref role="ehGHo" to="tpee:fz12cDA" resolve="ClassConcept" />
        </node>
      </node>
      <node concept="37vLTG" id="7stlEFlmh_u" role="3clF46">
        <property role="TrG5h" value="futureModel" />
        <node concept="H_c77" id="7stlEFlmh_P" role="1tU5fm" />
      </node>
      <node concept="3Tqbb2" id="17H9dI4HTY1" role="3clF45">
        <ref role="ehGHo" to="tpee:h9ngReX" resolve="ClassifierMember" />
      </node>
    </node>
    <node concept="13i0hz" id="536fTXa3v9M" role="13h7CS">
      <property role="2Ki8OM" value="false" />
      <property role="TrG5h" value="create" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="7ay_HjIOVVe" resolve="create" />
      <node concept="37vLTG" id="7stlEFlmhWJ" role="3clF46">
        <property role="TrG5h" value="futureModel" />
        <node concept="H_c77" id="7stlEFlmhWK" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="536fTXa3v9N" role="1B3o_S" />
      <node concept="3clFbS" id="536fTXa3v9Q" role="3clF47">
        <node concept="3cpWs6" id="536fTXa3$Bq" role="3cqZAp">
          <node concept="2ShNRf" id="536fTXa3$BL" role="3cqZAk">
            <node concept="3zrR0B" id="536fTXa3Db9" role="2ShVmc">
              <node concept="3Tqbb2" id="536fTXa3Dbb" role="3zrR0E">
                <ref role="ehGHo" to="tpee:1hodSy9TH5A" resolve="PlaceholderMember" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="536fTXa3v9R" role="3clF45">
        <ref role="ehGHo" to="tpee:h9ngReX" resolve="ClassifierMember" />
      </node>
    </node>
    <node concept="13i0hz" id="2gzehMfi1L1" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="find" />
      <ref role="13i0hy" node="2gzehMfi1$l" resolve="find" />
      <node concept="3Tm1VV" id="2gzehMfi1L4" role="1B3o_S" />
      <node concept="3clFbS" id="2gzehMfi1L7" role="3clF47">
        <node concept="3clFbF" id="2gzehMfi1Mr" role="3cqZAp">
          <node concept="10Nm6u" id="2gzehMfi1Mq" role="3clFbG" />
        </node>
      </node>
      <node concept="37vLTG" id="2gzehMfi1L8" role="3clF46">
        <property role="TrG5h" value="cls" />
        <node concept="3Tqbb2" id="2gzehMfic02" role="1tU5fm">
          <ref role="ehGHo" to="tpee:fz12cDA" resolve="ClassConcept" />
        </node>
      </node>
      <node concept="A3Dl8" id="2gzehMfic00" role="3clF45">
        <node concept="3Tqbb2" id="2gzehMfic01" role="A3Ik2">
          <ref role="ehGHo" to="tpee:h9ngReX" resolve="ClassifierMember" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="2nUiI4k7s4P" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="getMatchingText" />
      <ref role="13i0hy" node="2nUiI4k7qhh" resolve="getMatchingText" />
      <node concept="3Tm1VV" id="2nUiI4k7s4Q" role="1B3o_S" />
      <node concept="3clFbS" id="2nUiI4k7s4T" role="3clF47">
        <node concept="3clFbF" id="2nUiI4k7s5l" role="3cqZAp">
          <node concept="Xl_RD" id="2nUiI4k7s5k" role="3clFbG">
            <property role="Xl_RC" value="empty line" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="2nUiI4k7s4U" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="3yKhys4JExp">
    <property role="3GE5qa" value="instances" />
    <ref role="13h7C2" to="oubp:3geGFOI0X5k" resolve="MethodInstance" />
    <node concept="13hLZK" id="3yKhys4JExq" role="13h7CW">
      <node concept="3clFbS" id="3yKhys4JExr" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="3yKhys4JEGW" role="13h7CS">
      <property role="TrG5h" value="getExpectedRetType" />
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <ref role="13i0hy" to="tpek:i2fhBNC" resolve="getExpectedRetType" />
      <node concept="3Tm1VV" id="3yKhys4JEGX" role="1B3o_S" />
      <node concept="3clFbS" id="3yKhys4JEHt" role="3clF47">
        <node concept="3clFbJ" id="3yKhys4JEQ9" role="3cqZAp">
          <node concept="3clFbS" id="3yKhys4JEQc" role="3clFbx">
            <node concept="3cpWs8" id="3yKhys4JTKL" role="3cqZAp">
              <node concept="3cpWsn" id="3yKhys4JTKM" role="3cpWs9">
                <property role="TrG5h" value="dti" />
                <node concept="3Tqbb2" id="3yKhys4JTKK" role="1tU5fm">
                  <ref role="ehGHo" to="oubp:3geGFOI0X5F" resolve="DependentTypeInstance" />
                </node>
                <node concept="1PxgMI" id="3yKhys4JTKN" role="33vP2m">
                  <node concept="2OqwBi" id="3yKhys4JTKO" role="1m5AlR">
                    <node concept="13iPFW" id="3yKhys4JTKP" role="2Oq$k0" />
                    <node concept="3TrEf2" id="3yKhys4JTKQ" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:fzclF7X" resolve="returnType" />
                    </node>
                  </node>
                  <node concept="chp4Y" id="714IaVdH06M" role="3oSUPX">
                    <ref role="cht4Q" to="oubp:3geGFOI0X5F" resolve="DependentTypeInstance" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1DzJCFIu_4G" role="3cqZAp">
              <node concept="3cpWsn" id="1DzJCFIu_4H" role="3cpWs9">
                <property role="TrG5h" value="myType" />
                <node concept="3Tqbb2" id="1DzJCFIu_4_" role="1tU5fm">
                  <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
                </node>
                <node concept="2OqwBi" id="1DzJCFIu_4I" role="33vP2m">
                  <node concept="37vLTw" id="1DzJCFIu_4J" role="2Oq$k0">
                    <ref role="3cqZAo" node="3yKhys4JTKM" resolve="dti" />
                  </node>
                  <node concept="3zqWPK" id="70OdufORfUv" role="2OqNvi">
                    <ref role="37wK5l" node="7T23sO8yx5P" resolve="getMyType" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1DzJCFIu_$Q" role="3cqZAp">
              <node concept="3clFbS" id="1DzJCFIu_$T" role="3clFbx">
                <node concept="3cpWs6" id="1DzJCFIuA_a" role="3cqZAp">
                  <node concept="10Nm6u" id="1DzJCFIuACb" role="3cqZAk" />
                </node>
              </node>
              <node concept="2OqwBi" id="1DzJCFIuAlq" role="3clFbw">
                <node concept="2OqwBi" id="1DzJCFIu_LX" role="2Oq$k0">
                  <node concept="37vLTw" id="1DzJCFIu_Ix" role="2Oq$k0">
                    <ref role="3cqZAo" node="1DzJCFIu_4H" resolve="myType" />
                  </node>
                  <node concept="2yIwOk" id="2eXSyKpuE0R" role="2OqNvi" />
                </node>
                <node concept="3O6GUB" id="1DzJCFIuAxj" role="2OqNvi">
                  <node concept="chp4Y" id="1DzJCFIuAyW" role="3QVz_e">
                    <ref role="cht4Q" to="tpee:fzcqZ_H" resolve="VoidType" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="3yKhys4JI7x" role="3cqZAp">
              <node concept="37vLTw" id="1DzJCFIu_4L" role="3cqZAk">
                <ref role="3cqZAo" node="1DzJCFIu_4H" resolve="myType" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3yKhys4JHuz" role="3clFbw">
            <node concept="2OqwBi" id="3yKhys4JF5c" role="2Oq$k0">
              <node concept="13iPFW" id="3yKhys4JEQv" role="2Oq$k0" />
              <node concept="3TrEf2" id="3yKhys4JGAk" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fzclF7X" resolve="returnType" />
              </node>
            </node>
            <node concept="1mIQ4w" id="3yKhys4JHSf" role="2OqNvi">
              <node concept="chp4Y" id="3yKhys4JHZ0" role="cj9EA">
                <ref role="cht4Q" to="oubp:3geGFOI0X5F" resolve="DependentTypeInstance" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3yKhys4JIpw" role="3cqZAp">
          <node concept="2OqwBi" id="3yKhys4JIS7" role="3cqZAk">
            <node concept="13iAh5" id="3yKhys4JIF_" role="2Oq$k0" />
            <node concept="3zqWPK" id="70OdufORfUx" role="2OqNvi">
              <ref role="37wK5l" to="tpek:i2fhBNC" resolve="getExpectedRetType" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="3yKhys4JEHu" role="3clF45" />
    </node>
    <node concept="13i0hz" id="7T23sO8w0ij" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="getDeclaration" />
      <ref role="13i0hy" node="7T23sO8vZuR" resolve="getDeclaration" />
      <node concept="3Tm1VV" id="7T23sO8w0ik" role="1B3o_S" />
      <node concept="3clFbS" id="7T23sO8w0in" role="3clF47">
        <node concept="3clFbF" id="7T23sO8w0pa" role="3cqZAp">
          <node concept="2OqwBi" id="7T23sO8w0BQ" role="3clFbG">
            <node concept="13iPFW" id="7T23sO8w0p9" role="2Oq$k0" />
            <node concept="3TrEf2" id="7T23sO8w1oz" role="2OqNvi">
              <ref role="3Tt5mk" to="oubp:14fCAVcxkR" resolve="decl" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="7T23sO8w0io" role="3clF45">
        <ref role="ehGHo" to="oubp:7aMlq14vYj7" resolve="DSLClassMember" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="7T23sO8vZuO">
    <property role="3GE5qa" value="instances" />
    <ref role="13h7C2" to="oubp:5BD$AU43p5T" resolve="MemberInstance" />
    <node concept="13i0hz" id="7T23sO8vZuR" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getDeclaration" />
      <node concept="3Tm1VV" id="7T23sO8vZuS" role="1B3o_S" />
      <node concept="3Tqbb2" id="7T23sO8vZuZ" role="3clF45">
        <ref role="ehGHo" to="oubp:7aMlq14vYj7" resolve="DSLClassMember" />
      </node>
      <node concept="3clFbS" id="7T23sO8vZuU" role="3clF47" />
    </node>
    <node concept="13hLZK" id="7T23sO8vZuP" role="13h7CW">
      <node concept="3clFbS" id="7T23sO8vZuQ" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="7T23sO8vZvp">
    <property role="3GE5qa" value="instances" />
    <ref role="13h7C2" to="oubp:5BD$AU43nQM" resolve="MemberPlaceholder" />
    <node concept="13hLZK" id="7T23sO8vZvq" role="13h7CW">
      <node concept="3clFbS" id="7T23sO8vZvr" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="7T23sO8vZvs" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="getDeclaration" />
      <ref role="13i0hy" node="7T23sO8vZuR" resolve="getDeclaration" />
      <node concept="3Tm1VV" id="7T23sO8vZvt" role="1B3o_S" />
      <node concept="3clFbS" id="7T23sO8vZvw" role="3clF47">
        <node concept="3clFbF" id="7T23sO8vZvB" role="3cqZAp">
          <node concept="2OqwBi" id="7T23sO8vZzY" role="3clFbG">
            <node concept="13iPFW" id="7T23sO8vZvA" role="2Oq$k0" />
            <node concept="3TrEf2" id="7T23sO8w02g" role="2OqNvi">
              <ref role="3Tt5mk" to="oubp:5BD$AU43nQP" resolve="decl" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="7T23sO8vZvx" role="3clF45">
        <ref role="ehGHo" to="oubp:7aMlq14vYj7" resolve="DSLClassMember" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="7T23sO8w32X">
    <property role="3GE5qa" value="instances.property" />
    <ref role="13h7C2" to="oubp:5BD$AU43p5h" resolve="PropertyInstance" />
    <node concept="13hLZK" id="7T23sO8w32Y" role="13h7CW">
      <node concept="3clFbS" id="7T23sO8w32Z" role="2VODD2">
        <node concept="3clFbF" id="UBgfI9dQAH" role="3cqZAp">
          <node concept="37vLTI" id="UBgfI9dSoJ" role="3clFbG">
            <node concept="2c44tf" id="UBgfI9dSvF" role="37vLTx">
              <node concept="3Tm1VV" id="UBgfI9dSyz" role="2c44tc" />
            </node>
            <node concept="2OqwBi" id="UBgfI9dQKi" role="37vLTJ">
              <node concept="13iPFW" id="UBgfI9dQAG" role="2Oq$k0" />
              <node concept="3TrEf2" id="UBgfI9dRLB" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:h9B3oxE" resolve="visibility" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="7T23sO8w338" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="getDeclaration" />
      <ref role="13i0hy" node="7T23sO8vZuR" resolve="getDeclaration" />
      <node concept="3Tm1VV" id="7T23sO8w339" role="1B3o_S" />
      <node concept="3clFbS" id="7T23sO8w33c" role="3clF47">
        <node concept="3clFbF" id="7T23sO8w33j" role="3cqZAp">
          <node concept="2OqwBi" id="7T23sO8w3eo" role="3clFbG">
            <node concept="13iPFW" id="7T23sO8w33i" role="2Oq$k0" />
            <node concept="3TrEf2" id="7T23sO8w5l2" role="2OqNvi">
              <ref role="3Tt5mk" to="oubp:7s$_UJMTR_D" resolve="decl" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="7T23sO8w33d" role="3clF45">
        <ref role="ehGHo" to="oubp:7aMlq14vYj7" resolve="DSLClassMember" />
      </node>
    </node>
    <node concept="13i0hz" id="3m06Jgserfw" role="13h7CS">
      <property role="TrG5h" value="getValueExpression" />
      <property role="13i0it" value="true" />
      <property role="13i0iv" value="true" />
      <node concept="3Tm1VV" id="3m06Jgserfx" role="1B3o_S" />
      <node concept="3Tqbb2" id="3m06Jgserw$" role="3clF45">
        <ref role="ehGHo" to="tpee:fz3vP1J" resolve="Expression" />
      </node>
      <node concept="3clFbS" id="3m06Jgserfz" role="3clF47" />
    </node>
  </node>
  <node concept="13h7C7" id="7T23sO8ywUm">
    <property role="3GE5qa" value="instances" />
    <ref role="13h7C2" to="oubp:3geGFOI0X5F" resolve="DependentTypeInstance" />
    <node concept="13i0hz" id="7T23sO8yx5P" role="13h7CS">
      <property role="TrG5h" value="getMyType" />
      <node concept="3Tm1VV" id="7T23sO8yx5Q" role="1B3o_S" />
      <node concept="3Tqbb2" id="7T23sO8yx64" role="3clF45">
        <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
      </node>
      <node concept="3clFbS" id="7T23sO8yx5S" role="3clF47">
        <node concept="3clFbF" id="1Dz4WsDBo68" role="3cqZAp">
          <node concept="3K4zz7" id="1Dz4WsDBoIn" role="3clFbG">
            <node concept="10Nm6u" id="1Dz4WsDBoNA" role="3K4E3e" />
            <node concept="3clFbC" id="1Dz4WsDBoGp" role="3K4Cdx">
              <node concept="10Nm6u" id="1Dz4WsDBoHO" role="3uHU7w" />
              <node concept="2OqwBi" id="1Dz4WsDBo9H" role="3uHU7B">
                <node concept="13iPFW" id="1Dz4WsDBo66" role="2Oq$k0" />
                <node concept="3TrEf2" id="1Dz4WsDBooa" role="2OqNvi">
                  <ref role="3Tt5mk" to="oubp:3geGFOI0X5G" resolve="decl" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="7T23sO8yxOC" role="3K4GZi">
              <node concept="2OqwBi" id="7T23sO8yx9j" role="2Oq$k0">
                <node concept="13iPFW" id="7T23sO8yx67" role="2Oq$k0" />
                <node concept="3TrEf2" id="7T23sO8yx$n" role="2OqNvi">
                  <ref role="3Tt5mk" to="oubp:3geGFOI0X5G" resolve="decl" />
                </node>
              </node>
              <node concept="3zqWPK" id="70OdufORfUz" role="2OqNvi">
                <ref role="37wK5l" node="3geGFOI14GE" resolve="getType" />
                <node concept="2OqwBi" id="70OdufORfU_" role="37wK5m">
                  <node concept="13iPFW" id="70OdufORfUA" role="2Oq$k0" />
                  <node concept="3TrEf2" id="70OdufORfUB" role="2OqNvi">
                    <ref role="3Tt5mk" to="oubp:7T23sO8AqCe" resolve="point" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="7T23sO8$XVH" role="13h7CS">
      <property role="TrG5h" value="getPresentation" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="tpcu:hEwIMiw" resolve="getPresentation" />
      <node concept="3Tm1VV" id="7T23sO8$XWP" role="1B3o_S" />
      <node concept="3clFbS" id="7T23sO8$XZ4" role="3clF47">
        <node concept="3cpWs8" id="1Dz4WsDAZ7U" role="3cqZAp">
          <node concept="3cpWsn" id="1Dz4WsDAZ7V" role="3cpWs9">
            <property role="TrG5h" value="myType" />
            <node concept="3Tqbb2" id="1Dz4WsDAZ7R" role="1tU5fm">
              <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
            </node>
            <node concept="2OqwBi" id="1Dz4WsDAZ7W" role="33vP2m">
              <node concept="13iPFW" id="1Dz4WsDAZ7X" role="2Oq$k0" />
              <node concept="3zqWPK" id="70OdufORfUC" role="2OqNvi">
                <ref role="37wK5l" node="7T23sO8yx5P" resolve="getMyType" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1Dz4WsDB0g2" role="3cqZAp">
          <node concept="3clFbS" id="1Dz4WsDB0g5" role="3clFbx">
            <node concept="3cpWs6" id="7T23sO8_rB0" role="3cqZAp">
              <node concept="2OqwBi" id="7T23sO8_ALD" role="3cqZAk">
                <node concept="37vLTw" id="1Dz4WsDAZ7Z" role="2Oq$k0">
                  <ref role="3cqZAo" node="1Dz4WsDAZ7V" resolve="myType" />
                </node>
                <node concept="3zqWPK" id="70OdufORfUE" role="2OqNvi">
                  <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1Dz4WsDB0yo" role="3clFbw">
            <node concept="37vLTw" id="1Dz4WsDB0jQ" role="2Oq$k0">
              <ref role="3cqZAo" node="1Dz4WsDAZ7V" resolve="myType" />
            </node>
            <node concept="3x8VRR" id="1Dz4WsDB0TE" role="2OqNvi" />
          </node>
          <node concept="9aQIb" id="1Dz4WsDB0Zu" role="9aQIa">
            <node concept="3clFbS" id="1Dz4WsDB0Zv" role="9aQI4">
              <node concept="3cpWs6" id="1Dz4WsDB138" role="3cqZAp">
                <node concept="Xl_RD" id="1Dz4WsDB18e" role="3cqZAk">
                  <property role="Xl_RC" value="DependentType" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="7T23sO8$XZ5" role="3clF45" />
    </node>
    <node concept="13hLZK" id="7T23sO8ywUn" role="13h7CW">
      <node concept="3clFbS" id="7T23sO8ywUo" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="3m06JgserX$">
    <property role="3GE5qa" value="instances.property" />
    <ref role="13h7C2" to="oubp:5BD$AU440O4" resolve="StringPropertyInstance" />
    <node concept="13hLZK" id="3m06JgserX_" role="13h7CW">
      <node concept="3clFbS" id="3m06JgserXA" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="3m06JgserXJ" role="13h7CS">
      <property role="TrG5h" value="getValueExpression" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="3m06Jgserfw" resolve="getValueExpression" />
      <node concept="3Tm1VV" id="3m06JgserXK" role="1B3o_S" />
      <node concept="3clFbS" id="3m06JgserXN" role="3clF47">
        <node concept="3cpWs6" id="3m06JgserXT" role="3cqZAp">
          <node concept="2c44tf" id="3m06JgserYg" role="3cqZAk">
            <node concept="Xl_RD" id="3m06JgserZc" role="2c44tc">
              <node concept="2EMmih" id="3m06Jgses2d" role="lGtFl">
                <property role="2qtEX9" value="value" />
                <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                <property role="3qcH_f" value="true" />
                <node concept="2OqwBi" id="3m06Jgsesfw" role="2c44t1">
                  <node concept="13iPFW" id="3m06Jgses3U" role="2Oq$k0" />
                  <node concept="3TrcHB" id="3m06Jgsetsy" role="2OqNvi">
                    <ref role="3TsBF5" to="oubp:5BD$AU440O5" resolve="value" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="3m06JgserXO" role="3clF45">
        <ref role="ehGHo" to="tpee:fz3vP1J" resolve="Expression" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="3m06JgsetzD">
    <property role="3GE5qa" value="instances.property" />
    <ref role="13h7C2" to="oubp:5BD$AU440V3" resolve="BooleanPropertyInstance" />
    <node concept="13hLZK" id="3m06JgsetzE" role="13h7CW">
      <node concept="3clFbS" id="3m06JgsetzF" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="3m06JgsetzG" role="13h7CS">
      <property role="TrG5h" value="getValueExpression" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="3m06Jgserfw" resolve="getValueExpression" />
      <node concept="3Tm1VV" id="3m06JgsetzH" role="1B3o_S" />
      <node concept="3clFbS" id="3m06JgsetzK" role="3clF47">
        <node concept="3clFbF" id="3m06JgseAX3" role="3cqZAp">
          <node concept="2c44tf" id="3m06JgseAX4" role="3clFbG">
            <node concept="3clFbT" id="3m06JgseB9V" role="2c44tc">
              <node concept="2EMmih" id="3m06JgseBbd" role="lGtFl">
                <property role="2qtEX9" value="value" />
                <property role="3hQQBS" value="BooleanConstant" />
                <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123137/1068580123138" />
                <property role="3qcH_f" value="true" />
                <node concept="2OqwBi" id="3m06JgseAX8" role="2c44t1">
                  <node concept="13iPFW" id="3m06JgseAX9" role="2Oq$k0" />
                  <node concept="3TrcHB" id="3m06JgseAXa" role="2OqNvi">
                    <ref role="3TsBF5" to="oubp:5BD$AU440V4" resolve="value" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="3m06JgsetzL" role="3clF45">
        <ref role="ehGHo" to="tpee:fz3vP1J" resolve="Expression" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="3m06Jgsev9T">
    <property role="3GE5qa" value="instances.property" />
    <ref role="13h7C2" to="oubp:5BD$AU440V5" resolve="IntegerPropertyInstance" />
    <node concept="13hLZK" id="3m06Jgsev9U" role="13h7CW">
      <node concept="3clFbS" id="3m06Jgsev9V" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="3m06Jgsev9W" role="13h7CS">
      <property role="TrG5h" value="getValueExpression" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="3m06Jgserfw" resolve="getValueExpression" />
      <node concept="3Tm1VV" id="3m06Jgsev9X" role="1B3o_S" />
      <node concept="3clFbS" id="3m06Jgseva0" role="3clF47">
        <node concept="3clFbF" id="3m06JgsetzS" role="3cqZAp">
          <node concept="2c44tf" id="3m06JgsetzQ" role="3clFbG">
            <node concept="3cmrfG" id="3m06JgsetAd" role="2c44tc">
              <node concept="2EMmih" id="3m06JgsetBY" role="lGtFl">
                <property role="2qtEX9" value="value" />
                <property role="3hQQBS" value="IntegerConstant" />
                <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                <property role="3qcH_f" value="true" />
                <node concept="2OqwBi" id="3m06JgsetN6" role="2c44t1">
                  <node concept="13iPFW" id="3m06JgsetDq" role="2Oq$k0" />
                  <node concept="3TrcHB" id="3m06Jgsezfh" role="2OqNvi">
                    <ref role="3TsBF5" to="oubp:5BD$AU440V6" resolve="value" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="3m06Jgseva1" role="3clF45">
        <ref role="ehGHo" to="tpee:fz3vP1J" resolve="Expression" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="UBgfI9eMAq">
    <property role="3GE5qa" value="" />
    <ref role="13h7C2" to="oubp:UBgfI9exfH" resolve="AutoInitDSLClass" />
    <node concept="13i0hz" id="UBgfI9eMAt" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getDescriptor" />
      <node concept="3Tm1VV" id="UBgfI9eMAu" role="1B3o_S" />
      <node concept="3Tqbb2" id="UBgfI9eMA_" role="3clF45">
        <ref role="ehGHo" to="oubp:3geGFOI0X5w" resolve="DSLDescriptor" />
      </node>
      <node concept="3clFbS" id="UBgfI9eMAw" role="3clF47" />
    </node>
    <node concept="13hLZK" id="UBgfI9eMAr" role="13h7CW">
      <node concept="3clFbS" id="UBgfI9eMAs" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="7GXvAHO1he5">
    <property role="3GE5qa" value="member.methodDescriptor" />
    <ref role="13h7C2" to="oubp:3geGFOI0X5$" resolve="ParameterDescriptor" />
    <node concept="13i0hz" id="2h59CdJp99Y" role="13h7CS">
      <property role="TrG5h" value="create" />
      <node concept="3Tm1VV" id="2h59CdJp99Z" role="1B3o_S" />
      <node concept="3Tqbb2" id="2h59CdJp9a0" role="3clF45">
        <ref role="ehGHo" to="oubp:7GXvAHO00L4" resolve="MethodParameterInstance" />
      </node>
      <node concept="3clFbS" id="2h59CdJp9a1" role="3clF47">
        <node concept="3clFbF" id="2h59CdJp9a2" role="3cqZAp">
          <node concept="2pJPEk" id="2h59CdJp9a3" role="3clFbG">
            <node concept="2pJPED" id="2h59CdJp9a4" role="2pJPEn">
              <ref role="2pJxaS" to="oubp:7GXvAHO00L4" resolve="MethodParameterInstance" />
              <node concept="2pJxcG" id="2h59CdJpnsg" role="2pJxcM">
                <ref role="2pJxcJ" to="tpck:h0TrG11" resolve="name" />
                <node concept="WxPPo" id="6bbvpKWHoKM" role="28ntcv">
                  <node concept="2OqwBi" id="2h59CdJpn_O" role="WxPPp">
                    <node concept="13iPFW" id="2h59CdJpnzy" role="2Oq$k0" />
                    <node concept="3TrcHB" id="2h59CdJpnRE" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2pIpSj" id="2h59CdJp9a5" role="2pJxcM">
                <ref role="2pIpSl" to="oubp:7GXvAHO0cwL" resolve="decl" />
                <node concept="36biLy" id="2h59CdJp9a6" role="28nt2d">
                  <node concept="13iPFW" id="2h59CdJp9a7" role="36biLW" />
                </node>
              </node>
              <node concept="2pIpSj" id="2h59CdJp9vh" role="2pJxcM">
                <ref role="2pIpSl" to="tpee:4VkOLwjf83e" resolve="type" />
                <node concept="36biLy" id="2h59CdJp9wV" role="28nt2d">
                  <node concept="3K4zz7" id="2h59CdJpbpT" role="36biLW">
                    <node concept="2OqwBi" id="2h59CdJpbZN" role="3K4GZi">
                      <node concept="2OqwBi" id="2h59CdJpbwT" role="2Oq$k0">
                        <node concept="13iPFW" id="2h59CdJpbsF" role="2Oq$k0" />
                        <node concept="3TrEf2" id="2h59CdJpbNN" role="2OqNvi">
                          <ref role="3Tt5mk" to="oubp:3geGFOI0X5A" resolve="type" />
                        </node>
                      </node>
                      <node concept="1$rogu" id="2h59CdJpck_" role="2OqNvi" />
                    </node>
                    <node concept="2OqwBi" id="2h59CdJpd7J" role="3K4E3e">
                      <node concept="1PxgMI" id="2h59CdJpcZl" role="2Oq$k0">
                        <node concept="2OqwBi" id="2h59CdJpcux" role="1m5AlR">
                          <node concept="13iPFW" id="2h59CdJpclW" role="2Oq$k0" />
                          <node concept="3TrEf2" id="2h59CdJpcNa" role="2OqNvi">
                            <ref role="3Tt5mk" to="oubp:3geGFOI0X5A" resolve="type" />
                          </node>
                        </node>
                        <node concept="chp4Y" id="714IaVdH06P" role="3oSUPX">
                          <ref role="cht4Q" to="oubp:3geGFOI0X5s" resolve="DependentTypeDescriptor" />
                        </node>
                      </node>
                      <node concept="3zqWPK" id="70OdufORfUG" role="2OqNvi">
                        <ref role="37wK5l" node="2h59CdJp8nr" resolve="create" />
                        <node concept="37vLTw" id="70OdufORfUI" role="37wK5m">
                          <ref role="3cqZAo" node="2h59CdJp9ab" resolve="point" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="2h59CdJpa1U" role="3K4Cdx">
                      <node concept="2OqwBi" id="2h59CdJp9$F" role="2Oq$k0">
                        <node concept="13iPFW" id="2h59CdJp9yn" role="2Oq$k0" />
                        <node concept="3TrEf2" id="2h59CdJp9Qz" role="2OqNvi">
                          <ref role="3Tt5mk" to="oubp:3geGFOI0X5A" resolve="type" />
                        </node>
                      </node>
                      <node concept="1mIQ4w" id="2h59CdJpb8O" role="2OqNvi">
                        <node concept="chp4Y" id="2h59CdJpbeb" role="cj9EA">
                          <ref role="cht4Q" to="oubp:3geGFOI0X5s" resolve="DependentTypeDescriptor" />
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
      <node concept="37vLTG" id="2h59CdJp9ab" role="3clF46">
        <property role="TrG5h" value="point" />
        <node concept="3Tqbb2" id="2h59CdJp9ac" role="1tU5fm" />
      </node>
    </node>
    <node concept="13i0hz" id="7GXvAHO1j1d" role="13h7CS">
      <property role="TrG5h" value="isNeeded" />
      <node concept="3Tm1VV" id="7GXvAHO1j1e" role="1B3o_S" />
      <node concept="10P_77" id="7GXvAHO1mi2" role="3clF45" />
      <node concept="3clFbS" id="7GXvAHO1j1g" role="3clF47">
        <node concept="3J1_TO" id="7GXvAHO1j1h" role="3cqZAp">
          <node concept="3clFbS" id="7GXvAHO1j1i" role="1zxBo7">
            <node concept="3cpWs8" id="7GXvAHO1j1j" role="3cqZAp">
              <node concept="3cpWsn" id="7GXvAHO1j1k" role="3cpWs9">
                <property role="TrG5h" value="className" />
                <node concept="17QB3L" id="7GXvAHO1j1l" role="1tU5fm" />
                <node concept="2OqwBi" id="7GXvAHO1j1v" role="33vP2m">
                  <node concept="2OqwBi" id="7GXvAHO1j1w" role="2Oq$k0">
                    <node concept="13iPFW" id="7GXvAHO1j1x" role="2Oq$k0" />
                    <node concept="2Xjw5R" id="7GXvAHO1j1y" role="2OqNvi">
                      <node concept="1xMEDy" id="7GXvAHO1j1z" role="1xVPHs">
                        <node concept="chp4Y" id="7GXvAHO1j1$" role="ri$Ld">
                          <ref role="cht4Q" to="oubp:3geGFOI0X5w" resolve="DSLDescriptor" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3zqWPK" id="70OdufORfUJ" role="2OqNvi">
                    <ref role="37wK5l" node="3UdX2XvIeC6" resolve="getGeneratedQueriesQualifiedClassName" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7GXvAHO1j1A" role="3cqZAp">
              <node concept="3cpWsn" id="7GXvAHO1j1B" role="3cpWs9">
                <property role="TrG5h" value="classModule" />
                <node concept="3uibUv" id="7GXvAHO1j1C" role="1tU5fm">
                  <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                </node>
                <node concept="2OqwBi" id="7GXvAHO1j1D" role="33vP2m">
                  <node concept="2OqwBi" id="7GXvAHO1j1E" role="2Oq$k0">
                    <node concept="2JrnkZ" id="7GXvAHO1j1F" role="2Oq$k0">
                      <node concept="13iPFW" id="7GXvAHO1j1G" role="2JrQYb" />
                    </node>
                    <node concept="liA8E" id="7GXvAHO1j1H" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7GXvAHO1j1I" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7GXvAHO1j1J" role="3cqZAp">
              <node concept="3cpWsn" id="7GXvAHO1j1K" role="3cpWs9">
                <property role="TrG5h" value="methods" />
                <node concept="10Q1$e" id="7GXvAHO1j1L" role="1tU5fm">
                  <node concept="3uibUv" id="7GXvAHO1j1M" role="10Q1$1">
                    <ref role="3uigEE" to="t6h5:~Method" resolve="Method" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7GXvAHO1j1N" role="33vP2m">
                  <node concept="liA8E" id="7GXvAHO1j1O" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Class.getMethods()" resolve="getMethods" />
                  </node>
                  <node concept="2OqwBi" id="7GXvAHO1j1P" role="2Oq$k0">
                    <node concept="2YIFZM" id="7GXvAHO1j1Q" role="2Oq$k0">
                      <ref role="1Pybhc" to="3qmy:~ClassLoaderManager" resolve="ClassLoaderManager" />
                      <ref role="37wK5l" to="3qmy:~ClassLoaderManager.getInstance()" resolve="getInstance" />
                    </node>
                    <node concept="liA8E" id="7GXvAHO1j1R" role="2OqNvi">
                      <ref role="37wK5l" to="3qmy:~ClassLoaderManager.getClass(org.jetbrains.mps.openapi.module.SModule,java.lang.String)" resolve="getClass" />
                      <node concept="37vLTw" id="7GXvAHO1j1S" role="37wK5m">
                        <ref role="3cqZAo" node="7GXvAHO1j1B" resolve="classModule" />
                      </node>
                      <node concept="37vLTw" id="7GXvAHO1j1T" role="37wK5m">
                        <ref role="3cqZAo" node="7GXvAHO1j1k" resolve="className" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="7GXvAHO1j1U" role="3cqZAp">
              <node concept="3clFbS" id="7GXvAHO1j1V" role="2LFqv$">
                <node concept="3clFbJ" id="7GXvAHO1j1W" role="3cqZAp">
                  <node concept="3clFbS" id="7GXvAHO1j1X" role="3clFbx">
                    <node concept="3clFbF" id="7GXvAHO1j1Y" role="3cqZAp">
                      <node concept="2OqwBi" id="7GXvAHO1j1Z" role="3clFbG">
                        <node concept="37vLTw" id="7GXvAHO1j20" role="2Oq$k0">
                          <ref role="3cqZAo" node="7GXvAHO1j2k" resolve="m" />
                        </node>
                        <node concept="liA8E" id="7GXvAHO1j21" role="2OqNvi">
                          <ref role="37wK5l" to="t6h5:~Method.setAccessible(boolean)" resolve="setAccessible" />
                          <node concept="3clFbT" id="7GXvAHO1j22" role="37wK5m">
                            <property role="3clFbU" value="true" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="7GXvAHO1j23" role="3cqZAp">
                      <node concept="1eOMI4" id="7GXvAHO1j24" role="3cqZAk">
                        <node concept="10QFUN" id="7GXvAHO1j25" role="1eOMHV">
                          <node concept="2OqwBi" id="7GXvAHO1j26" role="10QFUP">
                            <node concept="37vLTw" id="7GXvAHO1j27" role="2Oq$k0">
                              <ref role="3cqZAo" node="7GXvAHO1j2k" resolve="m" />
                            </node>
                            <node concept="liA8E" id="7GXvAHO1j28" role="2OqNvi">
                              <ref role="37wK5l" to="t6h5:~Method.invoke(java.lang.Object,java.lang.Object...)" resolve="invoke" />
                              <node concept="10Nm6u" id="7GXvAHO1j29" role="37wK5m" />
                              <node concept="37vLTw" id="7GXvAHO1j2a" role="37wK5m">
                                <ref role="3cqZAo" node="7GXvAHO1j2B" resolve="node" />
                              </node>
                            </node>
                          </node>
                          <node concept="3uibUv" id="7GXvAHO2kg3" role="10QFUM">
                            <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7GXvAHO1j2c" role="3clFbw">
                    <node concept="2OqwBi" id="7GXvAHO1j2d" role="2Oq$k0">
                      <node concept="37vLTw" id="7GXvAHO1j2e" role="2Oq$k0">
                        <ref role="3cqZAo" node="7GXvAHO1j2k" resolve="m" />
                      </node>
                      <node concept="liA8E" id="7GXvAHO1j2f" role="2OqNvi">
                        <ref role="37wK5l" to="t6h5:~Method.getName()" resolve="getName" />
                      </node>
                    </node>
                    <node concept="liA8E" id="7GXvAHO1j2g" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                      <node concept="2OqwBi" id="7GXvAHO1j2h" role="37wK5m">
                        <node concept="13iPFW" id="7GXvAHO1j2i" role="2Oq$k0" />
                        <node concept="3zqWPK" id="70OdufORfUL" role="2OqNvi">
                          <ref role="37wK5l" node="7GXvAHO1heb" resolve="getGeneratedMethodName" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="7GXvAHO1j2k" role="1Duv9x">
                <property role="TrG5h" value="m" />
                <node concept="3uibUv" id="7GXvAHO1j2l" role="1tU5fm">
                  <ref role="3uigEE" to="t6h5:~Method" resolve="Method" />
                </node>
              </node>
              <node concept="37vLTw" id="7GXvAHO1j2m" role="1DdaDG">
                <ref role="3cqZAo" node="7GXvAHO1j1K" resolve="methods" />
              </node>
            </node>
            <node concept="3cpWs6" id="7GXvAHO1j2n" role="3cqZAp">
              <node concept="3clFbT" id="7GXvAHO1n9e" role="3cqZAk" />
            </node>
          </node>
          <node concept="3uVAMA" id="7GXvAHO1j2r" role="1zxBo5">
            <node concept="XOnhg" id="7GXvAHO1j2s" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="xvs04dFC6r" role="1tU5fm">
                <node concept="3uibUv" id="7GXvAHO1j2t" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="7GXvAHO1j2u" role="1zc67A">
              <node concept="3clFbF" id="7GXvAHO1j2v" role="3cqZAp">
                <node concept="2OqwBi" id="7GXvAHO1j2w" role="3clFbG">
                  <node concept="37vLTw" id="7GXvAHO1j2x" role="2Oq$k0">
                    <ref role="3cqZAo" node="7GXvAHO1j2s" resolve="e" />
                  </node>
                  <node concept="liA8E" id="7GXvAHO1j2y" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Throwable.printStackTrace()" resolve="printStackTrace" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="7GXvAHO1j2z" role="3cqZAp">
                <node concept="3clFbT" id="7GXvAHO1n_g" role="3cqZAk">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7GXvAHO1j2B" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="7GXvAHO1j2C" role="1tU5fm">
          <ref role="ehGHo" to="oubp:3geGFOI0X5k" resolve="MethodInstance" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="7GXvAHO1heb" role="13h7CS">
      <property role="TrG5h" value="getGeneratedMethodName" />
      <node concept="3Tm1VV" id="7GXvAHO1hec" role="1B3o_S" />
      <node concept="3uibUv" id="7GXvAHO1hed" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="7GXvAHO1hee" role="3clF47">
        <node concept="3cpWs6" id="7GXvAHO1heh" role="3cqZAp">
          <node concept="3cpWs3" id="7GXvAHO1h_8" role="3cqZAk">
            <node concept="Xl_RD" id="7GXvAHO1h_b" role="3uHU7w">
              <property role="Xl_RC" value="_opt" />
            </node>
            <node concept="3cpWs3" id="7GXvAHO1hei" role="3uHU7B">
              <node concept="3cpWs3" id="7GXvAHO1hej" role="3uHU7B">
                <node concept="2OqwBi" id="7GXvAHO1hek" role="3uHU7B">
                  <node concept="2OqwBi" id="7GXvAHO1hel" role="2Oq$k0">
                    <node concept="13iPFW" id="7GXvAHO1hem" role="2Oq$k0" />
                    <node concept="2Xjw5R" id="7GXvAHO1hen" role="2OqNvi">
                      <node concept="1xMEDy" id="7GXvAHO1heo" role="1xVPHs">
                        <node concept="chp4Y" id="7GXvAHO1hep" role="ri$Ld">
                          <ref role="cht4Q" to="oubp:3geGFOI0X5B" resolve="MethodDescriptor" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3TrcHB" id="7GXvAHO1heq" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="Xl_RD" id="7GXvAHO1her" role="3uHU7w">
                  <property role="Xl_RC" value="_" />
                </node>
              </node>
              <node concept="2OqwBi" id="7GXvAHO1hes" role="3uHU7w">
                <node concept="2OqwBi" id="7GXvAHO1het" role="2Oq$k0">
                  <node concept="13iPFW" id="7GXvAHO1heu" role="2Oq$k0" />
                  <node concept="2Xjw5R" id="7GXvAHO1hev" role="2OqNvi">
                    <node concept="1xMEDy" id="7GXvAHO1hew" role="1xVPHs">
                      <node concept="chp4Y" id="7GXvAHO1hex" role="ri$Ld">
                        <ref role="cht4Q" to="oubp:3geGFOI0X5$" resolve="ParameterDescriptor" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3TrcHB" id="7GXvAHO1hey" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="7GXvAHO1he6" role="13h7CW">
      <node concept="3clFbS" id="7GXvAHO1he7" role="2VODD2" />
    </node>
  </node>
</model>

