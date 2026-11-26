<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:1dca5eee-6e62-48f8-9e94-dbbe31be2456(jetbrains.mps.lang.quotation.behavior)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="-1" />
    <use id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts" version="-1" />
    <use id="d8f591ec-4d86-4af2-9f92-a9e93c803ffa" name="jetbrains.mps.lang.scopes" version="-1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tp3r" ref="r:00000000-0000-4000-0000-011c8959034b(jetbrains.mps.lang.quotation.structure)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="tpcn" ref="r:00000000-0000-4000-0000-011c8959028b(jetbrains.mps.lang.structure.behavior)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="tpcg" ref="r:00000000-0000-4000-0000-011c8959028c(jetbrains.mps.lang.structure.constraints)" />
    <import index="2gg1" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.errors(MPS.Core/)" />
    <import index="tpek" ref="r:00000000-0000-4000-0000-011c895902c0(jetbrains.mps.baseLanguage.behavior)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
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
      <concept id="1225194628440" name="jetbrains.mps.lang.behavior.structure.SuperNodeExpression" flags="nn" index="13iAh5">
        <reference id="5299096511375896640" name="superConcept" index="3eA5LN" />
      </concept>
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
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
      <concept id="1215695189714" name="jetbrains.mps.baseLanguage.structure.PlusAssignmentExpression" flags="nn" index="d57v9" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
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
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
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
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
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
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
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
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
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
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1173122760281" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorsOperation" flags="nn" index="z$bX8" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="7504436213544206332" name="jetbrains.mps.lang.smodel.structure.Node_ContainingLinkOperation" flags="nn" index="2NL2c5" />
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1145567426890" name="jetbrains.mps.lang.smodel.structure.SNodeListCreator" flags="nn" index="2T8Vx0">
        <child id="1145567471833" name="createdType" index="2T96Bj" />
      </concept>
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1154546920561" name="jetbrains.mps.lang.smodel.structure.OperationParm_ConceptList" flags="ng" index="3gmYPX">
        <child id="1154546920563" name="concept" index="3gmYPZ" />
      </concept>
      <concept id="1154546950173" name="jetbrains.mps.lang.smodel.structure.ConceptReference" flags="ng" index="3gn64h">
        <reference id="1154546997487" name="concept" index="3gnhBz" />
      </concept>
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
      <concept id="1144146199828" name="jetbrains.mps.lang.smodel.structure.Node_CopyOperation" flags="nn" index="1$rogu" />
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
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
    </language>
  </registry>
  <node concept="13h7C7" id="3t0v3yFONaw">
    <property role="3GE5qa" value="container" />
    <ref role="13h7C2" to="tp3r:hqc44pp" resolve="Quotation" />
    <node concept="13hLZK" id="3t0v3yFONax" role="13h7CW">
      <node concept="3clFbS" id="3t0v3yFONay" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="bc0iGlx_Qh" role="13h7CS">
      <property role="TrG5h" value="getMetaLevelChange" />
      <ref role="13i0hy" to="tpcu:bc0iGlxcsE" resolve="getMetaLevelChange" />
      <node concept="3clFbS" id="bc0iGlx_Qk" role="3clF47">
        <node concept="3cpWs6" id="bc0iGlx_Qn" role="3cqZAp">
          <node concept="3cmrfG" id="bc0iGlx_Qp" role="3cqZAk">
            <property role="3cmrfH" value="-1" />
          </node>
        </node>
      </node>
      <node concept="10Oyi0" id="bc0iGlx_Ql" role="3clF45" />
      <node concept="3Tm1VV" id="bc0iGlx_Qm" role="1B3o_S" />
    </node>
    <node concept="13i0hz" id="4gQZRkTTtip" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="suppress" />
      <property role="13i0it" value="false" />
      <ref role="13i0hy" to="tpcu:2WmWrdnSpX7" resolve="suppress" />
      <node concept="3Tm1VV" id="4gQZRkTTtiq" role="1B3o_S" />
      <node concept="3clFbS" id="4gQZRkTTtix" role="3clF47">
        <node concept="3clFbJ" id="5VT$fGf84S9" role="3cqZAp">
          <node concept="3fqX7Q" id="6fcdXHooQOt" role="3clFbw">
            <node concept="2OqwBi" id="6fcdXHooQOu" role="3fr31v">
              <node concept="2OqwBi" id="6fcdXHooQOv" role="2Oq$k0">
                <node concept="37vLTw" id="6fcdXHooQOw" role="2Oq$k0">
                  <ref role="3cqZAo" node="4gQZRkTTtiy" resolve="child" />
                </node>
                <node concept="z$bX8" id="6fcdXHooQOx" role="2OqNvi">
                  <node concept="1xIGOp" id="6fcdXHooQOy" role="1xVPHs" />
                </node>
              </node>
              <node concept="3JPx81" id="6fcdXHooQOz" role="2OqNvi">
                <node concept="2OqwBi" id="6fcdXHooQO$" role="25WWJ7">
                  <node concept="13iPFW" id="6fcdXHooQO_" role="2Oq$k0" />
                  <node concept="3TrEf2" id="6fcdXHooQOA" role="2OqNvi">
                    <ref role="3Tt5mk" to="tp3r:hqc44pq" resolve="quotedNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="6fcdXHooQOB" role="3clFbx">
            <node concept="3cpWs6" id="6fcdXHooQMg" role="3cqZAp">
              <node concept="3clFbT" id="6fcdXHooQMS" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6fcdXHooRuL" role="3cqZAp">
          <node concept="3clFbS" id="6fcdXHooRuN" role="3clFbx">
            <node concept="3cpWs6" id="6fcdXHooRL7" role="3cqZAp">
              <node concept="3clFbT" id="6fcdXHooRLv" role="3cqZAk" />
            </node>
          </node>
          <node concept="2OqwBi" id="4gQZRkTTBXg" role="3clFbw">
            <node concept="2OqwBi" id="4gQZRkTTzxy" role="2Oq$k0">
              <node concept="2OqwBi" id="4gQZRkTTtNY" role="2Oq$k0">
                <node concept="37vLTw" id="4gQZRkTTtCs" role="2Oq$k0">
                  <ref role="3cqZAo" node="4gQZRkTTtiy" resolve="child" />
                </node>
                <node concept="z$bX8" id="4gQZRkTTtWW" role="2OqNvi">
                  <node concept="1xIGOp" id="4gQZRkTTyeJ" role="1xVPHs" />
                  <node concept="3gmYPX" id="4gQZRkTT$$l" role="1xVPHs">
                    <node concept="3gn64h" id="4gQZRkTT$$G" role="3gmYPZ">
                      <ref role="3gnhBz" to="tp3r:hqc44pm" resolve="AbstractAntiquotation" />
                    </node>
                    <node concept="3gn64h" id="4gQZRkTT$AW" role="3gmYPZ">
                      <ref role="3gnhBz" to="tp3r:hqc44pp" resolve="Quotation" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1uHKPH" id="4gQZRkTTAlm" role="2OqNvi" />
            </node>
            <node concept="1mIQ4w" id="4gQZRkTTCT1" role="2OqNvi">
              <node concept="chp4Y" id="4gQZRkTTCV3" role="cj9EA">
                <ref role="cht4Q" to="tp3r:hqc44pm" resolve="AbstractAntiquotation" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6fcdXHooR21" role="3cqZAp">
          <node concept="2OqwBi" id="4gQZRkTTtiA" role="3cqZAk">
            <node concept="13iAh5" id="4gQZRkTTtiB" role="2Oq$k0">
              <ref role="3eA5LN" to="tpck:2WmWrdnSpX3" resolve="ISuppressErrors" />
            </node>
            <node concept="3zqWPK" id="70OdufORg1N" role="2OqNvi">
              <ref role="37wK5l" to="tpcu:2WmWrdnSpX7" resolve="suppress" />
              <node concept="37vLTw" id="70OdufORg1P" role="37wK5m">
                <ref role="3cqZAo" node="4gQZRkTTtiy" resolve="child" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4gQZRkTTtiy" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3Tqbb2" id="4gQZRkTTtiz" role="1tU5fm" />
      </node>
      <node concept="10P_77" id="4gQZRkTTti$" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="3t0v3yFONj4">
    <property role="3GE5qa" value="quotation" />
    <ref role="13h7C2" to="tp3r:hqc44pm" resolve="AbstractAntiquotation" />
    <node concept="13i0hz" id="bc0iGlx_Q6" role="13h7CS">
      <property role="TrG5h" value="getMetaLevelChange" />
      <ref role="13i0hy" to="tpcu:bc0iGlxcsE" resolve="getMetaLevelChange" />
      <node concept="3clFbS" id="bc0iGlx_Q9" role="3clF47">
        <node concept="3cpWs6" id="bc0iGlx_Qc" role="3cqZAp">
          <node concept="3cmrfG" id="bc0iGlx_Qe" role="3cqZAk">
            <property role="3cmrfH" value="1" />
          </node>
        </node>
      </node>
      <node concept="10Oyi0" id="bc0iGlx_Qa" role="3clF45" />
      <node concept="3Tm1VV" id="bc0iGlx_Qb" role="1B3o_S" />
    </node>
    <node concept="13hLZK" id="3t0v3yFONj5" role="13h7CW">
      <node concept="3clFbS" id="3t0v3yFONj6" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="6SHIBw3Z3Vl" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="getScope" />
      <property role="13i0it" value="false" />
      <ref role="13i0hy" to="tpcu:52_Geb4QDV$" resolve="getScope" />
      <node concept="3uibUv" id="EB2Sz2SPKp" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
      <node concept="37vLTG" id="EB2Sz2SPKl" role="3clF46">
        <property role="TrG5h" value="kind" />
        <node concept="3bZ5Sz" id="EB2Sz2SPKm" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="EB2Sz2SPKn" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3Tqbb2" id="EB2Sz2SPKo" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="6SHIBw3Z3Vm" role="1B3o_S" />
      <node concept="3clFbS" id="6SHIBw3Z3Vn" role="3clF47">
        <node concept="3cpWs6" id="6SHIBw3Z40X" role="3cqZAp">
          <node concept="BsUDl" id="6SHIBw3Z40Y" role="3cqZAk">
            <ref role="37wK5l" node="6SHIBw3Z40z" resolve="getScope" />
            <node concept="37vLTw" id="EB2Sz2SQfP" role="37wK5m">
              <ref role="3cqZAo" node="EB2Sz2SPKl" resolve="kind" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="6SHIBw3Z3Vz" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="getScope" />
      <property role="13i0it" value="false" />
      <ref role="13i0hy" to="tpcu:52_Geb4QFgX" resolve="getScope" />
      <node concept="3uibUv" id="EB2Sz2SReq" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
      <node concept="37vLTG" id="EB2Sz2SRek" role="3clF46">
        <property role="TrG5h" value="kind" />
        <node concept="3bZ5Sz" id="EB2Sz2SRel" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="EB2Sz2SRem" role="3clF46">
        <property role="TrG5h" value="link" />
        <node concept="3uibUv" id="OxzdseikHu" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
        </node>
      </node>
      <node concept="37vLTG" id="EB2Sz2SReo" role="3clF46">
        <property role="TrG5h" value="index" />
        <node concept="10Oyi0" id="EB2Sz2SRep" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="6SHIBw3Z3V$" role="1B3o_S" />
      <node concept="3clFbS" id="6SHIBw3Z3V_" role="3clF47">
        <node concept="3cpWs6" id="6SHIBw3Z413" role="3cqZAp">
          <node concept="BsUDl" id="6SHIBw3Z411" role="3cqZAk">
            <ref role="37wK5l" node="6SHIBw3Z40z" resolve="getScope" />
            <node concept="37vLTw" id="EB2Sz2SRGv" role="37wK5m">
              <ref role="3cqZAo" node="EB2Sz2SRek" resolve="kind" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="6SHIBw3Z40z" role="13h7CS">
      <property role="TrG5h" value="getScope" />
      <node concept="3Tm6S6" id="6SHIBw3Z40$" role="1B3o_S" />
      <node concept="3uibUv" id="6SHIBw3Z40_" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
      <node concept="37vLTG" id="6SHIBw3Z40y" role="3clF46">
        <property role="TrG5h" value="kind" />
        <node concept="3bZ5Sz" id="EB2Sz2SRIP" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="6SHIBw3Z40B" role="3clF47">
        <node concept="3cpWs8" id="DHceziQ8vT" role="3cqZAp">
          <node concept="3cpWsn" id="DHceziQ8vU" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="DHceziQ8vV" role="1tU5fm" />
            <node concept="13iPFW" id="DHceziQ8CG" role="33vP2m" />
          </node>
        </node>
        <node concept="3cpWs8" id="DHceziQ8$D" role="3cqZAp">
          <node concept="3cpWsn" id="DHceziQ8$E" role="3cpWs9">
            <property role="TrG5h" value="metaLevelChange" />
            <node concept="10Oyi0" id="DHceziQ8$F" role="1tU5fm" />
            <node concept="3cmrfG" id="DHceziQ8DU" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="DHceziQ8vP" role="3cqZAp">
          <node concept="2OqwBi" id="DHceziQ8FY" role="2$JKZa">
            <node concept="37vLTw" id="3GM_nagTzTc" role="2Oq$k0">
              <ref role="3cqZAo" node="DHceziQ8vU" resolve="node" />
            </node>
            <node concept="3x8VRR" id="DHceziQ8G3" role="2OqNvi" />
          </node>
          <node concept="3clFbS" id="DHceziQ8vR" role="2LFqv$">
            <node concept="3clFbJ" id="DHceziQ8_D" role="3cqZAp">
              <node concept="2OqwBi" id="DHceziQ8A1" role="3clFbw">
                <node concept="37vLTw" id="3GM_nagTrMs" role="2Oq$k0">
                  <ref role="3cqZAo" node="DHceziQ8vU" resolve="node" />
                </node>
                <node concept="1mIQ4w" id="DHceziQ8A6" role="2OqNvi">
                  <node concept="chp4Y" id="DHceziQ8A8" role="cj9EA">
                    <ref role="cht4Q" to="tpck:bc0iGlxbOU" resolve="IMetaLevelChanger" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="DHceziQ8_F" role="3clFbx">
                <node concept="3clFbF" id="DHceziQ8A9" role="3cqZAp">
                  <node concept="d57v9" id="DHceziQ8Av" role="3clFbG">
                    <node concept="2OqwBi" id="DHceziQ8Bd" role="37vLTx">
                      <node concept="1PxgMI" id="DHceziQ8AR" role="2Oq$k0">
                        <node concept="chp4Y" id="714IaVdGYL9" role="3oSUPX">
                          <ref role="cht4Q" to="tpck:bc0iGlxbOU" resolve="IMetaLevelChanger" />
                        </node>
                        <node concept="37vLTw" id="3GM_nagTwC1" role="1m5AlR">
                          <ref role="3cqZAo" node="DHceziQ8vU" resolve="node" />
                        </node>
                      </node>
                      <node concept="3zqWPK" id="70OdufORg1Q" role="2OqNvi">
                        <ref role="37wK5l" to="tpcu:bc0iGlxcsE" resolve="getMetaLevelChange" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="3GM_nagT_UF" role="37vLTJ">
                      <ref role="3cqZAo" node="DHceziQ8$E" resolve="metaLevelChange" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="DHceziQ8EM" role="3cqZAp">
              <node concept="3clFbS" id="DHceziQ8EN" role="3clFbx">
                <node concept="3zACq4" id="DHceziQ8Ff" role="3cqZAp" />
              </node>
              <node concept="3clFbC" id="DHceziQ8Fb" role="3clFbw">
                <node concept="3cmrfG" id="DHceziQ8Fe" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="37vLTw" id="3GM_nagT$EM" role="3uHU7B">
                  <ref role="3cqZAo" node="DHceziQ8$E" resolve="metaLevelChange" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="DHceziQ8CI" role="3cqZAp">
              <node concept="37vLTI" id="DHceziQ8D4" role="3clFbG">
                <node concept="2YIFZM" id="DHceziQ8DO" role="37vLTx">
                  <ref role="37wK5l" to="o8zo:3fifI_xCtPZ" resolve="parent" />
                  <ref role="1Pybhc" to="o8zo:3fifI_xCtN$" resolve="Scope" />
                  <node concept="37vLTw" id="3GM_nagT$af" role="37wK5m">
                    <ref role="3cqZAo" node="DHceziQ8vU" resolve="node" />
                  </node>
                </node>
                <node concept="37vLTw" id="3GM_nagTtS6" role="37vLTJ">
                  <ref role="3cqZAo" node="DHceziQ8vU" resolve="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="DHceziQ8Bt" role="3cqZAp">
          <node concept="3clFbS" id="DHceziQ8Bu" role="3clFbx">
            <node concept="3cpWs6" id="DHceziQ8BX" role="3cqZAp">
              <node concept="2ShNRf" id="DHceziQ8BZ" role="3cqZAk">
                <node concept="1pGfFk" id="DHceziQ8C1" role="2ShVmc">
                  <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="DHceziQ8BQ" role="3clFbw">
            <node concept="37vLTw" id="3GM_nagTwzE" role="2Oq$k0">
              <ref role="3cqZAo" node="DHceziQ8vU" resolve="node" />
            </node>
            <node concept="3w_OXm" id="DHceziQ8BW" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="6SHIBw3Z40R" role="3cqZAp">
          <node concept="2YIFZM" id="6SHIBw3Z40S" role="3clFbG">
            <ref role="1Pybhc" to="o8zo:3fifI_xCtN$" resolve="Scope" />
            <ref role="37wK5l" to="o8zo:52_Geb4SiYg" resolve="getScope" />
            <node concept="2YIFZM" id="6SHIBw3Z40T" role="37wK5m">
              <ref role="37wK5l" to="o8zo:3fifI_xCtPZ" resolve="parent" />
              <ref role="1Pybhc" to="o8zo:3fifI_xCtN$" resolve="Scope" />
              <node concept="37vLTw" id="3GM_nagTsAC" role="37wK5m">
                <ref role="3cqZAo" node="DHceziQ8vU" resolve="node" />
              </node>
            </node>
            <node concept="37vLTw" id="3GM_nagTzrT" role="37wK5m">
              <ref role="3cqZAo" node="DHceziQ8vU" resolve="node" />
            </node>
            <node concept="37vLTw" id="2BHiRxgm7p5" role="37wK5m">
              <ref role="3cqZAo" node="6SHIBw3Z40y" resolve="kind" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="1653mnvB2rz">
    <property role="3GE5qa" value="quotation" />
    <ref role="13h7C2" to="tp3r:3xb6lOuOxs9" resolve="StringToTypedValueMigrationInfo" />
    <node concept="13hLZK" id="1653mnvB2r$" role="13h7CW">
      <node concept="3clFbS" id="1653mnvB2r_" role="2VODD2">
        <node concept="3clFbF" id="1SDkaf46SC2" role="3cqZAp">
          <node concept="37vLTI" id="1SDkaf46TID" role="3clFbG">
            <node concept="3clFbT" id="1SDkaf46TM6" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="2OqwBi" id="1SDkaf46SMy" role="37vLTJ">
              <node concept="13iPFW" id="1SDkaf46SC1" role="2Oq$k0" />
              <node concept="3TrcHB" id="1SDkaf46Thb" role="2OqNvi">
                <ref role="3TsBF5" to="tp3r:1SDkaf46SBG" resolve="stringValueMigrated" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="1653mnvANLm">
    <property role="3GE5qa" value="quotation" />
    <ref role="13h7C2" to="tp3r:hqc44pt" resolve="ReferenceAntiquotation" />
    <node concept="13hLZK" id="1653mnvANLn" role="13h7CW">
      <node concept="3clFbS" id="1653mnvANLo" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="1653mnvB5Ya">
    <property role="3GE5qa" value="quotation" />
    <ref role="13h7C2" to="tp3r:hqc44po" resolve="Antiquotation" />
    <node concept="13i0hz" id="5e7X3XC_mgR" role="13h7CS">
      <property role="TrG5h" value="getAttributedLink" />
      <node concept="3Tm1VV" id="5e7X3XC_mgS" role="1B3o_S" />
      <node concept="3uibUv" id="5e7X3XC_mtv" role="3clF45">
        <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
      </node>
      <node concept="3clFbS" id="5e7X3XC_mgU" role="3clF47">
        <node concept="3clFbF" id="5e7X3XC_mMh" role="3cqZAp">
          <node concept="2OqwBi" id="5e7X3XC_n_7" role="3clFbG">
            <node concept="2OqwBi" id="5e7X3XC_mZd" role="2Oq$k0">
              <node concept="13iPFW" id="5e7X3XC_mMg" role="2Oq$k0" />
              <node concept="1mfA1w" id="5e7X3XC_ndc" role="2OqNvi" />
            </node>
            <node concept="2NL2c5" id="5e7X3XC_nF9" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="1653mnvB5Yb" role="13h7CW">
      <node concept="3clFbS" id="1653mnvB5Yc" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="1653mnvAOM8">
    <property role="3GE5qa" value="quotation" />
    <ref role="13h7C2" to="tp3r:hqc44pu" resolve="ListAntiquotation" />
    <node concept="13hLZK" id="1653mnvAOM9" role="13h7CW">
      <node concept="3clFbS" id="1653mnvAOMa" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="4IP40Bi30Gy">
    <property role="3GE5qa" value="builder" />
    <ref role="13h7C2" to="tp3r:4IP40Bi2$Ew" resolve="NodeBuilderNode" />
    <node concept="13hLZK" id="4IP40Bi30Gz" role="13h7CW">
      <node concept="3clFbS" id="4IP40Bi30G$" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="4IP40Bi30G_" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="getScope" />
      <property role="13i0it" value="false" />
      <ref role="13i0hy" to="tpcu:52_Geb4QDV$" resolve="getScope" />
      <node concept="3Tm1VV" id="4IP40Bi30GA" role="1B3o_S" />
      <node concept="3clFbS" id="4IP40Bi30GB" role="3clF47">
        <node concept="3clFbJ" id="4IP40Bi30GN" role="3cqZAp">
          <node concept="2OqwBi" id="4IP40Bi30GR" role="3clFbw">
            <node concept="37vLTw" id="42Bx8VbD0$J" role="2Oq$k0">
              <ref role="3cqZAo" node="4IP40Bi30GC" resolve="kind" />
            </node>
            <node concept="3O6GUB" id="42Bx8Vc1T4C" role="2OqNvi">
              <node concept="chp4Y" id="42Bx8Vc1T4D" role="3QVz_e">
                <ref role="cht4Q" to="tpce:f_TJgxF" resolve="PropertyDeclaration" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="4IP40Bi30GP" role="3clFbx">
            <node concept="3clFbJ" id="4IP40Bi30Hc" role="3cqZAp">
              <node concept="3clFbS" id="4IP40Bi30Hd" role="3clFbx">
                <node concept="3cpWs6" id="4IP40Bi30I8" role="3cqZAp">
                  <node concept="2ShNRf" id="4IP40Bi30Ia" role="3cqZAk">
                    <node concept="1pGfFk" id="4IP40Bi30Ic" role="2ShVmc">
                      <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="4IP40Bi30I1" role="3clFbw">
                <node concept="2OqwBi" id="4IP40Bi30H_" role="2Oq$k0">
                  <node concept="13iPFW" id="4IP40Bi30Hg" role="2Oq$k0" />
                  <node concept="3TrEf2" id="4IP40Bi30HF" role="2OqNvi">
                    <ref role="3Tt5mk" to="tp3r:4IP40Bi2KaL" resolve="concept" />
                  </node>
                </node>
                <node concept="3w_OXm" id="4IP40Bi30I7" role="2OqNvi" />
              </node>
            </node>
            <node concept="3cpWs6" id="4IP40Bi3fsC" role="3cqZAp">
              <node concept="2YIFZM" id="4IP40Bi3fsD" role="3cqZAk">
                <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                <node concept="2OqwBi" id="4IP40Bi3fsE" role="37wK5m">
                  <node concept="2OqwBi" id="4IP40Bi3fsF" role="2Oq$k0">
                    <node concept="13iPFW" id="4IP40Bi3fsG" role="2Oq$k0" />
                    <node concept="3TrEf2" id="4IP40Bi3fsH" role="2OqNvi">
                      <ref role="3Tt5mk" to="tp3r:4IP40Bi2KaL" resolve="concept" />
                    </node>
                  </node>
                  <node concept="3zqWPK" id="70OdufORg1S" role="2OqNvi">
                    <ref role="37wK5l" to="tpcn:hEwILLM" resolve="getPropertyDeclarations" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4IP40Bi3caJ" role="3cqZAp">
          <node concept="2OqwBi" id="4IP40Bi3caK" role="3clFbw">
            <node concept="37vLTw" id="42Bx8VbD0$M" role="2Oq$k0">
              <ref role="3cqZAo" node="4IP40Bi30GC" resolve="kind" />
            </node>
            <node concept="3O6GUB" id="42Bx8Vc1T4J" role="2OqNvi">
              <node concept="chp4Y" id="42Bx8Vc1T4K" role="3QVz_e">
                <ref role="cht4Q" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="4IP40Bi3caN" role="3clFbx">
            <node concept="3clFbJ" id="4IP40Bi3caO" role="3cqZAp">
              <node concept="3clFbS" id="4IP40Bi3caP" role="3clFbx">
                <node concept="3cpWs6" id="4IP40Bi3caQ" role="3cqZAp">
                  <node concept="2ShNRf" id="4IP40Bi3caR" role="3cqZAk">
                    <node concept="1pGfFk" id="4IP40Bi3caS" role="2ShVmc">
                      <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="4IP40Bi3caT" role="3clFbw">
                <node concept="2OqwBi" id="4IP40Bi3caU" role="2Oq$k0">
                  <node concept="13iPFW" id="4IP40Bi3caV" role="2Oq$k0" />
                  <node concept="3TrEf2" id="4IP40Bi3caW" role="2OqNvi">
                    <ref role="3Tt5mk" to="tp3r:4IP40Bi2KaL" resolve="concept" />
                  </node>
                </node>
                <node concept="3w_OXm" id="4IP40Bi3caX" role="2OqNvi" />
              </node>
            </node>
            <node concept="3cpWs6" id="4IP40Bi3fr1" role="3cqZAp">
              <node concept="2YIFZM" id="3jEbQocABuS" role="3cqZAk">
                <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                <node concept="2OqwBi" id="3jEbQocABuT" role="37wK5m">
                  <node concept="2OqwBi" id="3jEbQocABuU" role="2Oq$k0">
                    <node concept="13iPFW" id="3jEbQocABuV" role="2Oq$k0" />
                    <node concept="3TrEf2" id="3jEbQocABuW" role="2OqNvi">
                      <ref role="3Tt5mk" to="tp3r:4IP40Bi2KaL" resolve="concept" />
                    </node>
                  </node>
                  <node concept="3zqWPK" id="70OdufORg1U" role="2OqNvi">
                    <ref role="37wK5l" to="tpcn:hEwILKK" resolve="getLinkDeclarations" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="76efOMRBWpu" role="3cqZAp">
          <node concept="10Nm6u" id="76efOMRBWpv" role="3clFbG" />
        </node>
      </node>
      <node concept="37vLTG" id="4IP40Bi30GC" role="3clF46">
        <property role="TrG5h" value="kind" />
        <node concept="3bZ5Sz" id="42Bx8VbD0$H" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4IP40Bi30GE" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3Tqbb2" id="4IP40Bi30GF" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="4IP40Bi30GG" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
    </node>
    <node concept="13i0hz" id="RRzwLnBxZy" role="13h7CS">
      <property role="TrG5h" value="getExternalExpressions" />
      <node concept="3Tm1VV" id="RRzwLnBxZz" role="1B3o_S" />
      <node concept="A3Dl8" id="RRzwLnBxZA" role="3clF45">
        <node concept="3Tqbb2" id="RRzwLnBxZC" role="A3Ik2">
          <ref role="ehGHo" to="tpee:fz3vP1J" resolve="Expression" />
        </node>
      </node>
      <node concept="3clFbS" id="RRzwLnBxZ_" role="3clF47">
        <node concept="3cpWs8" id="RRzwLnBy1f" role="3cqZAp">
          <node concept="3cpWsn" id="RRzwLnBy1g" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="2I9FWS" id="RRzwLnBy1h" role="1tU5fm">
              <ref role="2I9WkF" to="tpee:fz3vP1J" resolve="Expression" />
            </node>
            <node concept="2ShNRf" id="RRzwLnBy1j" role="33vP2m">
              <node concept="2T8Vx0" id="RRzwLnBy1l" role="2ShVmc">
                <node concept="2I9FWS" id="RRzwLnBy1m" role="2T96Bj">
                  <ref role="2I9WkF" to="tpee:fz3vP1J" resolve="Expression" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="RRzwLnBy1r" role="3cqZAp">
          <node concept="BsUDl" id="RRzwLnBy1s" role="3clFbG">
            <ref role="37wK5l" node="RRzwLnBy10" resolve="collectExternalExpressions" />
            <node concept="37vLTw" id="3GM_nagTyCv" role="37wK5m">
              <ref role="3cqZAo" node="RRzwLnBy1g" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="RRzwLnBy1p" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTzQA" role="3clFbG">
            <ref role="3cqZAo" node="RRzwLnBy1g" resolve="result" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="4IuFl2JvP6C" role="13h7CS">
      <property role="TrG5h" value="isExpressionExternal" />
      <property role="2Ki8OM" value="true" />
      <node concept="37vLTG" id="4IuFl2JvPkI" role="3clF46">
        <property role="TrG5h" value="expression" />
        <node concept="3Tqbb2" id="4IuFl2JvPkX" role="1tU5fm">
          <ref role="ehGHo" to="tpee:fz3vP1J" resolve="Expression" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4IuFl2JvP6D" role="1B3o_S" />
      <node concept="3clFbS" id="4IuFl2JvP6E" role="3clF47">
        <node concept="3cpWs6" id="5OmbMbqcW3f" role="3cqZAp">
          <node concept="22lmx$" id="5OmbMbqcWFw" role="3cqZAk">
            <node concept="3fqX7Q" id="5OmbMbqcWqn" role="3uHU7B">
              <node concept="2OqwBi" id="5OmbMbqcWqp" role="3fr31v">
                <node concept="37vLTw" id="5OmbMbqcWqq" role="2Oq$k0">
                  <ref role="3cqZAo" node="4IuFl2JvPkI" resolve="expression" />
                </node>
                <node concept="3zqWPK" id="70OdufORg1W" role="2OqNvi">
                  <ref role="37wK5l" to="tpek:i1LOPRp" resolve="isCompileTimeConstant" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="5OmbMbqcWzw" role="3uHU7w">
              <node concept="2OqwBi" id="5OmbMbqcWzx" role="2Oq$k0">
                <node concept="37vLTw" id="5OmbMbqcWzy" role="2Oq$k0">
                  <ref role="3cqZAo" node="4IuFl2JvPkI" resolve="expression" />
                </node>
                <node concept="2Rf3mk" id="5OmbMbqcWzz" role="2OqNvi">
                  <node concept="1xMEDy" id="5OmbMbqcWz$" role="1xVPHs">
                    <node concept="chp4Y" id="5OmbMbqcWz_" role="ri$Ld">
                      <ref role="cht4Q" to="tpee:fz7vLUo" resolve="VariableReference" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="5OmbMbqcWzA" role="1xVPHs" />
                </node>
              </node>
              <node concept="3GX2aA" id="5OmbMbqcZg1" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="4IuFl2JvPjq" role="3clF45" />
    </node>
    <node concept="13i0hz" id="RRzwLnBy10" role="13h7CS">
      <property role="TrG5h" value="collectExternalExpressions" />
      <node concept="3Tm6S6" id="RRzwLnBy18" role="1B3o_S" />
      <node concept="3cqZAl" id="RRzwLnBy19" role="3clF45" />
      <node concept="3clFbS" id="RRzwLnBy13" role="3clF47">
        <node concept="2Gpval" id="RRzwLnBy1u" role="3cqZAp">
          <node concept="2GrKxI" id="RRzwLnBy1v" role="2Gsz3X">
            <property role="TrG5h" value="v" />
          </node>
          <node concept="2OqwBi" id="RRzwLnBy1R" role="2GsD0m">
            <node concept="13iPFW" id="RRzwLnBy1y" role="2Oq$k0" />
            <node concept="3Tsc0h" id="RRzwLnBy1W" role="2OqNvi">
              <ref role="3TtcxE" to="tp3r:4IP40Bi2KcV" resolve="values" />
            </node>
          </node>
          <node concept="3clFbS" id="RRzwLnBy1x" role="2LFqv$">
            <node concept="3clFbJ" id="RRzwLnBy2r" role="3cqZAp">
              <node concept="2OqwBi" id="RRzwLnBy2N" role="3clFbw">
                <node concept="2GrUjf" id="RRzwLnBy2u" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="RRzwLnBy1v" resolve="v" />
                </node>
                <node concept="1mIQ4w" id="RRzwLnBy2T" role="2OqNvi">
                  <node concept="chp4Y" id="RRzwLnBy2V" role="cj9EA">
                    <ref role="cht4Q" to="tp3r:4IP40Bi2Kc_" resolve="NodeBuilderInitProperty" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="RRzwLnBy2t" role="3clFbx">
                <node concept="3cpWs8" id="nQfYv_g_DG" role="3cqZAp">
                  <node concept="3cpWsn" id="nQfYv_g_DH" role="3cpWs9">
                    <property role="TrG5h" value="expr" />
                    <node concept="3Tqbb2" id="nQfYv_g_DI" role="1tU5fm">
                      <ref role="ehGHo" to="tpee:fz3vP1J" resolve="Expression" />
                    </node>
                    <node concept="2OqwBi" id="nQfYv_g_DJ" role="33vP2m">
                      <node concept="1PxgMI" id="nQfYv_g_DK" role="2Oq$k0">
                        <node concept="chp4Y" id="714IaVdGYL8" role="3oSUPX">
                          <ref role="cht4Q" to="tp3r:4IP40Bi2Kc_" resolve="NodeBuilderInitProperty" />
                        </node>
                        <node concept="2GrUjf" id="nQfYv_g_DL" role="1m5AlR">
                          <ref role="2Gs0qQ" node="RRzwLnBy1v" resolve="v" />
                        </node>
                      </node>
                      <node concept="3zqWPK" id="70OdufORg1Y" role="2OqNvi">
                        <ref role="37wK5l" node="1o$2SUuvKUZ" resolve="getInitValue" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="MyKVmwHFIA" role="3cqZAp">
                  <node concept="3clFbS" id="MyKVmwHFIC" role="3clFbx">
                    <node concept="3clFbJ" id="nQfYv_g_DC" role="3cqZAp">
                      <node concept="3clFbS" id="nQfYv_g_DD" role="3clFbx">
                        <node concept="3clFbF" id="RRzwLnBy2W" role="3cqZAp">
                          <node concept="2OqwBi" id="RRzwLnBy3i" role="3clFbG">
                            <node concept="37vLTw" id="2BHiRxglaY2" role="2Oq$k0">
                              <ref role="3cqZAo" node="RRzwLnBy1a" resolve="list" />
                            </node>
                            <node concept="TSZUe" id="RRzwLnBy3o" role="2OqNvi">
                              <node concept="2OqwBi" id="MyKVmwIU0U" role="25WWJ7">
                                <node concept="1PxgMI" id="MyKVmwIU0V" role="2Oq$k0">
                                  <node concept="chp4Y" id="MyKVmwIU0W" role="3oSUPX">
                                    <ref role="cht4Q" to="tp3r:4IP40Bi2Kc_" resolve="NodeBuilderInitProperty" />
                                  </node>
                                  <node concept="2GrUjf" id="MyKVmwIU0X" role="1m5AlR">
                                    <ref role="2Gs0qQ" node="RRzwLnBy1v" resolve="v" />
                                  </node>
                                </node>
                                <node concept="3zqWPK" id="70OdufORg20" role="2OqNvi">
                                  <ref role="37wK5l" node="MyKVmwIJUM" resolve="getInitValueInternal" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="BsUDl" id="4IuFl2JvQl0" role="3clFbw">
                        <ref role="37wK5l" node="4IuFl2JvP6C" resolve="isExpressionExternal" />
                        <node concept="2OqwBi" id="MyKVmwHH6H" role="37wK5m">
                          <node concept="1PxgMI" id="MyKVmwHGRY" role="2Oq$k0">
                            <node concept="chp4Y" id="MyKVmwHGSv" role="3oSUPX">
                              <ref role="cht4Q" to="tp3r:63LzO9stH8q" resolve="NodeBuilderPropertyExpression" />
                            </node>
                            <node concept="37vLTw" id="4IuFl2JvQlf" role="1m5AlR">
                              <ref role="3cqZAo" node="nQfYv_g_DH" resolve="expr" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="MyKVmwHHiK" role="2OqNvi">
                            <ref role="3Tt5mk" to="tp3r:63LzO9stH8r" resolve="expression" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="MyKVmwHGcT" role="3clFbw">
                    <node concept="37vLTw" id="MyKVmwHG36" role="2Oq$k0">
                      <ref role="3cqZAo" node="nQfYv_g_DH" resolve="expr" />
                    </node>
                    <node concept="1mIQ4w" id="MyKVmwHGld" role="2OqNvi">
                      <node concept="chp4Y" id="MyKVmwHGnx" role="cj9EA">
                        <ref role="cht4Q" to="tp3r:63LzO9stH8q" resolve="NodeBuilderPropertyExpression" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="RRzwLnBy4c" role="3eNLev">
                <node concept="2OqwBi" id="RRzwLnBy4$" role="3eO9$A">
                  <node concept="2GrUjf" id="RRzwLnBy4f" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="RRzwLnBy1v" resolve="v" />
                  </node>
                  <node concept="1mIQ4w" id="RRzwLnBy8u" role="2OqNvi">
                    <node concept="chp4Y" id="RRzwLnBy8w" role="cj9EA">
                      <ref role="cht4Q" to="tp3r:4IP40Bi38Sq" resolve="NodeBuilderInitLink" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="RRzwLnBy4e" role="3eOfB_">
                  <node concept="3cpWs8" id="RRzwLnBy8x" role="3cqZAp">
                    <node concept="3cpWsn" id="RRzwLnBy8y" role="3cpWs9">
                      <property role="TrG5h" value="expr" />
                      <node concept="3Tqbb2" id="RRzwLnBy8z" role="1tU5fm">
                        <ref role="ehGHo" to="tp3r:1o$2SUuutG0" resolve="NodeBuilderInitLinkValue" />
                      </node>
                      <node concept="2OqwBi" id="RRzwLnBy9q" role="33vP2m">
                        <node concept="1PxgMI" id="RRzwLnBy94" role="2Oq$k0">
                          <node concept="chp4Y" id="714IaVdGYKI" role="3oSUPX">
                            <ref role="cht4Q" to="tp3r:4IP40Bi38Sq" resolve="NodeBuilderInitLink" />
                          </node>
                          <node concept="2GrUjf" id="RRzwLnBy8_" role="1m5AlR">
                            <ref role="2Gs0qQ" node="RRzwLnBy1v" resolve="v" />
                          </node>
                        </node>
                        <node concept="3zqWPK" id="70OdufORg22" role="2OqNvi">
                          <ref role="37wK5l" node="1o$2SUuvJqx" resolve="getInitValue" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="RRzwLnBy9y" role="3cqZAp">
                    <node concept="3clFbS" id="RRzwLnBy9z" role="3clFbx">
                      <node concept="2Gpval" id="nQfYv_g01m" role="3cqZAp">
                        <node concept="2GrKxI" id="nQfYv_g01n" role="2Gsz3X">
                          <property role="TrG5h" value="n" />
                        </node>
                        <node concept="2OqwBi" id="nQfYv_g025" role="2GsD0m">
                          <node concept="1PxgMI" id="nQfYv_g01J" role="2Oq$k0">
                            <node concept="chp4Y" id="714IaVdGYL2" role="3oSUPX">
                              <ref role="cht4Q" to="tp3r:76efOMRCHWM" resolve="NodeBuilderList" />
                            </node>
                            <node concept="37vLTw" id="3GM_nagTBSA" role="1m5AlR">
                              <ref role="3cqZAo" node="RRzwLnBy8y" resolve="expr" />
                            </node>
                          </node>
                          <node concept="3Tsc0h" id="nQfYv_g02b" role="2OqNvi">
                            <ref role="3TtcxE" to="tp3r:76efOMRCHWN" resolve="nodes" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="nQfYv_g01p" role="2LFqv$">
                          <node concept="3clFbJ" id="nQfYv_g02f" role="3cqZAp">
                            <node concept="2OqwBi" id="nQfYv_g02B" role="3clFbw">
                              <node concept="2GrUjf" id="nQfYv_g02i" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="nQfYv_g01n" resolve="n" />
                              </node>
                              <node concept="1mIQ4w" id="nQfYv_g02H" role="2OqNvi">
                                <node concept="chp4Y" id="nQfYv_g02J" role="cj9EA">
                                  <ref role="cht4Q" to="tp3r:4IP40Bi2$Ew" resolve="NodeBuilderNode" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbS" id="nQfYv_g02h" role="3clFbx">
                              <node concept="3clFbF" id="nQfYv_g02K" role="3cqZAp">
                                <node concept="2OqwBi" id="nQfYv_g03O" role="3clFbG">
                                  <node concept="1PxgMI" id="nQfYv_g03u" role="2Oq$k0">
                                    <node concept="chp4Y" id="714IaVdGYLe" role="3oSUPX">
                                      <ref role="cht4Q" to="tp3r:4IP40Bi2$Ew" resolve="NodeBuilderNode" />
                                    </node>
                                    <node concept="2GrUjf" id="nQfYv_g02L" role="1m5AlR">
                                      <ref role="2Gs0qQ" node="nQfYv_g01n" resolve="n" />
                                    </node>
                                  </node>
                                  <node concept="3zqWPK" id="70OdufORg24" role="2OqNvi">
                                    <ref role="37wK5l" node="RRzwLnBy10" resolve="collectExternalExpressions" />
                                    <node concept="37vLTw" id="70OdufORg26" role="37wK5m">
                                      <ref role="3cqZAo" node="RRzwLnBy1a" resolve="list" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3eNFk2" id="nQfYv_g03W" role="3eNLev">
                              <node concept="3clFbS" id="nQfYv_g03Y" role="3eOfB_">
                                <node concept="3clFbJ" id="4IuFl2JvQnE" role="3cqZAp">
                                  <node concept="3clFbS" id="4IuFl2JvQnF" role="3clFbx">
                                    <node concept="3clFbF" id="nQfYv_g04t" role="3cqZAp">
                                      <node concept="2OqwBi" id="nQfYv_g04N" role="3clFbG">
                                        <node concept="37vLTw" id="2BHiRxglN_y" role="2Oq$k0">
                                          <ref role="3cqZAo" node="RRzwLnBy1a" resolve="list" />
                                        </node>
                                        <node concept="TSZUe" id="nQfYv_g04T" role="2OqNvi">
                                          <node concept="2OqwBi" id="nQfYv_g05A" role="25WWJ7">
                                            <node concept="1PxgMI" id="nQfYv_g05g" role="2Oq$k0">
                                              <node concept="chp4Y" id="714IaVdGYKJ" role="3oSUPX">
                                                <ref role="cht4Q" to="tp3r:76efOMRCLcI" resolve="NodeBuilderExpression" />
                                              </node>
                                              <node concept="2GrUjf" id="nQfYv_g04V" role="1m5AlR">
                                                <ref role="2Gs0qQ" node="nQfYv_g01n" resolve="n" />
                                              </node>
                                            </node>
                                            <node concept="3TrEf2" id="nQfYv_g05G" role="2OqNvi">
                                              <ref role="3Tt5mk" to="tp3r:76efOMRCLcK" resolve="expression" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="BsUDl" id="4IuFl2JvQnL" role="3clFbw">
                                    <ref role="37wK5l" node="4IuFl2JvP6C" resolve="isExpressionExternal" />
                                    <node concept="2OqwBi" id="4IuFl2JvQu4" role="37wK5m">
                                      <node concept="1PxgMI" id="4IuFl2JvQu5" role="2Oq$k0">
                                        <node concept="chp4Y" id="714IaVdGYKG" role="3oSUPX">
                                          <ref role="cht4Q" to="tp3r:76efOMRCLcI" resolve="NodeBuilderExpression" />
                                        </node>
                                        <node concept="2GrUjf" id="4IuFl2JvQu6" role="1m5AlR">
                                          <ref role="2Gs0qQ" node="nQfYv_g01n" resolve="n" />
                                        </node>
                                      </node>
                                      <node concept="3TrEf2" id="4IuFl2JvQu7" role="2OqNvi">
                                        <ref role="3Tt5mk" to="tp3r:76efOMRCLcK" resolve="expression" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2OqwBi" id="nQfYv_g04k" role="3eO9$A">
                                <node concept="2GrUjf" id="nQfYv_g03Z" role="2Oq$k0">
                                  <ref role="2Gs0qQ" node="nQfYv_g01n" resolve="n" />
                                </node>
                                <node concept="1mIQ4w" id="nQfYv_g04q" role="2OqNvi">
                                  <node concept="chp4Y" id="nQfYv_g04s" role="cj9EA">
                                    <ref role="cht4Q" to="tp3r:76efOMRCLcI" resolve="NodeBuilderExpression" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="RRzwLnBy9V" role="3clFbw">
                      <node concept="37vLTw" id="3GM_nagTuk2" role="2Oq$k0">
                        <ref role="3cqZAo" node="RRzwLnBy8y" resolve="expr" />
                      </node>
                      <node concept="1mIQ4w" id="nQfYv_g00m" role="2OqNvi">
                        <node concept="chp4Y" id="nQfYv_g00s" role="cj9EA">
                          <ref role="cht4Q" to="tp3r:76efOMRCHWM" resolve="NodeBuilderList" />
                        </node>
                      </node>
                    </node>
                    <node concept="3eNFk2" id="nQfYv_g02c" role="3eNLev">
                      <node concept="2OqwBi" id="nQfYv_g062" role="3eO9$A">
                        <node concept="37vLTw" id="3GM_nagTy5$" role="2Oq$k0">
                          <ref role="3cqZAo" node="RRzwLnBy8y" resolve="expr" />
                        </node>
                        <node concept="1mIQ4w" id="nQfYv_g068" role="2OqNvi">
                          <node concept="chp4Y" id="nQfYv_g06a" role="cj9EA">
                            <ref role="cht4Q" to="tp3r:4IP40Bi2$Ew" resolve="NodeBuilderNode" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="nQfYv_g02e" role="3eOfB_">
                        <node concept="3clFbF" id="nQfYv_g06b" role="3cqZAp">
                          <node concept="2OqwBi" id="nQfYv_g06z" role="3clFbG">
                            <node concept="1PxgMI" id="nQfYv_g06d" role="2Oq$k0">
                              <node concept="chp4Y" id="714IaVdGYKQ" role="3oSUPX">
                                <ref role="cht4Q" to="tp3r:4IP40Bi2$Ew" resolve="NodeBuilderNode" />
                              </node>
                              <node concept="37vLTw" id="3GM_nagTuoM" role="1m5AlR">
                                <ref role="3cqZAo" node="RRzwLnBy8y" resolve="expr" />
                              </node>
                            </node>
                            <node concept="3zqWPK" id="70OdufORg27" role="2OqNvi">
                              <ref role="37wK5l" node="RRzwLnBy10" resolve="collectExternalExpressions" />
                              <node concept="37vLTw" id="70OdufORg29" role="37wK5m">
                                <ref role="3cqZAo" node="RRzwLnBy1a" resolve="list" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3eNFk2" id="nQfYv_g06F" role="3eNLev">
                      <node concept="2OqwBi" id="nQfYv_g073" role="3eO9$A">
                        <node concept="37vLTw" id="3GM_nagT$7F" role="2Oq$k0">
                          <ref role="3cqZAo" node="RRzwLnBy8y" resolve="expr" />
                        </node>
                        <node concept="1mIQ4w" id="nQfYv_g079" role="2OqNvi">
                          <node concept="chp4Y" id="nQfYv_g07b" role="cj9EA">
                            <ref role="cht4Q" to="tp3r:76efOMRCLcI" resolve="NodeBuilderExpression" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="nQfYv_g06H" role="3eOfB_">
                        <node concept="3clFbJ" id="4IuFl2JvQV7" role="3cqZAp">
                          <node concept="3clFbS" id="4IuFl2JvQV8" role="3clFbx">
                            <node concept="3clFbF" id="nQfYv_g07c" role="3cqZAp">
                              <node concept="2OqwBi" id="nQfYv_g07d" role="3clFbG">
                                <node concept="37vLTw" id="2BHiRxgm6LD" role="2Oq$k0">
                                  <ref role="3cqZAo" node="RRzwLnBy1a" resolve="list" />
                                </node>
                                <node concept="TSZUe" id="nQfYv_g07f" role="2OqNvi">
                                  <node concept="2OqwBi" id="nQfYv_g07g" role="25WWJ7">
                                    <node concept="1PxgMI" id="nQfYv_g07h" role="2Oq$k0">
                                      <node concept="chp4Y" id="714IaVdGYKK" role="3oSUPX">
                                        <ref role="cht4Q" to="tp3r:76efOMRCLcI" resolve="NodeBuilderExpression" />
                                      </node>
                                      <node concept="37vLTw" id="3GM_nagTveo" role="1m5AlR">
                                        <ref role="3cqZAo" node="RRzwLnBy8y" resolve="expr" />
                                      </node>
                                    </node>
                                    <node concept="3TrEf2" id="nQfYv_g07j" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tp3r:76efOMRCLcK" resolve="expression" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="BsUDl" id="4IuFl2JvQVh" role="3clFbw">
                            <ref role="37wK5l" node="4IuFl2JvP6C" resolve="isExpressionExternal" />
                            <node concept="2OqwBi" id="4IuFl2JvRkv" role="37wK5m">
                              <node concept="1PxgMI" id="4IuFl2JvRkw" role="2Oq$k0">
                                <node concept="chp4Y" id="714IaVdGYLc" role="3oSUPX">
                                  <ref role="cht4Q" to="tp3r:76efOMRCLcI" resolve="NodeBuilderExpression" />
                                </node>
                                <node concept="37vLTw" id="4IuFl2JvRkx" role="1m5AlR">
                                  <ref role="3cqZAo" node="RRzwLnBy8y" resolve="expr" />
                                </node>
                              </node>
                              <node concept="3TrEf2" id="4IuFl2JvRky" role="2OqNvi">
                                <ref role="3Tt5mk" to="tp3r:76efOMRCLcK" resolve="expression" />
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
      </node>
      <node concept="37vLTG" id="RRzwLnBy1a" role="3clF46">
        <property role="TrG5h" value="list" />
        <node concept="2I9FWS" id="RRzwLnBy1e" role="1tU5fm">
          <ref role="2I9WkF" to="tpee:fz3vP1J" resolve="Expression" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="1BC2tkV2aIt">
    <property role="3GE5qa" value="container" />
    <ref role="13h7C2" to="tp3r:4IP40Bi2$Et" resolve="NodeBuilder" />
    <node concept="13hLZK" id="1BC2tkV2aIu" role="13h7CW">
      <node concept="3clFbS" id="1BC2tkV2aIv" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="1BC2tkV2aID" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="getScope" />
      <property role="13i0it" value="false" />
      <ref role="13i0hy" to="tpcu:52_Geb4QDV$" resolve="getScope" />
      <node concept="3Tm1VV" id="1BC2tkV2aIE" role="1B3o_S" />
      <node concept="3clFbS" id="1BC2tkV2aIN" role="3clF47">
        <node concept="3clFbJ" id="1BC2tkV2aPd" role="3cqZAp">
          <node concept="3clFbS" id="1BC2tkV2aPf" role="3clFbx">
            <node concept="3cpWs6" id="3ztslRe_DfV" role="3cqZAp">
              <node concept="2YIFZM" id="5Vvmn_QkT3O" role="3cqZAk">
                <ref role="1Pybhc" to="tpcg:6dmIS6MscR9" resolve="Scopes" />
                <ref role="37wK5l" to="tpcg:50vK5YapkBB" resolve="forConcepts" />
                <node concept="13iPFW" id="3ztslRe_F8x" role="37wK5m" />
                <node concept="35c_gC" id="5Vvmn_QkT3Q" role="37wK5m">
                  <ref role="35c_gD" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="42Bx8VbD0$P" role="3clFbw">
            <node concept="37vLTw" id="42Bx8VbD0$Q" role="2Oq$k0">
              <ref role="3cqZAo" node="1BC2tkV2aIO" resolve="kind" />
            </node>
            <node concept="3O6GUB" id="2StKqlGExuv" role="2OqNvi">
              <node concept="chp4Y" id="2StKqlGExIN" role="3QVz_e">
                <ref role="cht4Q" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1BC2tkV2b$3" role="3cqZAp">
          <node concept="2OqwBi" id="1BC2tkV2aIV" role="3cqZAk">
            <node concept="13iAh5" id="1BC2tkV2aIW" role="2Oq$k0">
              <ref role="3eA5LN" to="tpck:3fifI_xCcJN" resolve="ScopeProvider" />
            </node>
            <node concept="3zqWPK" id="70OdufORg2a" role="2OqNvi">
              <ref role="37wK5l" to="tpcu:52_Geb4QDV$" resolve="getScope" />
              <node concept="37vLTw" id="70OdufORg2c" role="37wK5m">
                <ref role="3cqZAo" node="1BC2tkV2aIO" resolve="kind" />
              </node>
              <node concept="37vLTw" id="70OdufORg2d" role="37wK5m">
                <ref role="3cqZAo" node="1BC2tkV2aIQ" resolve="child" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1BC2tkV2aIO" role="3clF46">
        <property role="TrG5h" value="kind" />
        <node concept="3bZ5Sz" id="42Bx8VbD0$O" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1BC2tkV2aIQ" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3Tqbb2" id="1BC2tkV2aIR" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="1BC2tkV2aIS" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
    </node>
    <node concept="13i0hz" id="4XAkAubwIys" role="13h7CS">
      <property role="TrG5h" value="getCheckPolicy" />
      <ref role="13i0hy" node="4XAkAubwHns" resolve="getCheckPolicy" />
      <node concept="3Tm1VV" id="4XAkAubwIyt" role="1B3o_S" />
      <node concept="3clFbS" id="4XAkAubwIyw" role="3clF47">
        <node concept="3clFbF" id="4XAkAubwIHK" role="3cqZAp">
          <node concept="2ShNRf" id="4XAkAubwIHI" role="3clFbG">
            <node concept="YeOm9" id="4XAkAubwIOo" role="2ShVmc">
              <node concept="1Y3b0j" id="4XAkAubwIOr" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <ref role="1Y3XeK" node="4XAkAubwHAh" resolve="InitializerPolicy" />
                <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                <node concept="3Tm1VV" id="4XAkAubwIOs" role="1B3o_S" />
                <node concept="3clFb_" id="4XAkAubwIOH" role="jymVt">
                  <property role="TrG5h" value="reportRequiredProperty" />
                  <node concept="37vLTG" id="4XAkAubwIOI" role="3clF46">
                    <property role="TrG5h" value="builderNode" />
                    <node concept="3Tqbb2" id="4XAkAubwIOJ" role="1tU5fm">
                      <ref role="ehGHo" to="tp3r:4IP40Bi2$Ew" resolve="NodeBuilderNode" />
                    </node>
                  </node>
                  <node concept="37vLTG" id="4XAkAubwIOK" role="3clF46">
                    <property role="TrG5h" value="property" />
                    <node concept="3Tqbb2" id="4XAkAubwIOL" role="1tU5fm">
                      <ref role="ehGHo" to="tpce:f_TJgxF" resolve="PropertyDeclaration" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="4XAkAubwIOM" role="3clF45">
                    <ref role="3uigEE" to="2gg1:~MessageStatus" resolve="MessageStatus" />
                  </node>
                  <node concept="3Tm1VV" id="4XAkAubwION" role="1B3o_S" />
                  <node concept="3clFbS" id="4XAkAubwIOP" role="3clF47">
                    <node concept="3clFbF" id="4XAkAubwJe1" role="3cqZAp">
                      <node concept="Rm8GO" id="4XAkAuby0MI" role="3clFbG">
                        <ref role="Rm8GQ" to="2gg1:~MessageStatus.OK" resolve="OK" />
                        <ref role="1Px2BO" to="2gg1:~MessageStatus" resolve="MessageStatus" />
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="4XAkAubwIOR" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
                <node concept="2tJIrI" id="4XAkAubwIOS" role="jymVt" />
                <node concept="3clFb_" id="4XAkAubwIOT" role="jymVt">
                  <property role="TrG5h" value="reportRequiredContainmentLink" />
                  <node concept="37vLTG" id="4XAkAubwIOU" role="3clF46">
                    <property role="TrG5h" value="builderNode" />
                    <node concept="3Tqbb2" id="4XAkAubwIOV" role="1tU5fm">
                      <ref role="ehGHo" to="tp3r:4IP40Bi2$Ew" resolve="NodeBuilderNode" />
                    </node>
                  </node>
                  <node concept="37vLTG" id="4XAkAubwIOW" role="3clF46">
                    <property role="TrG5h" value="link" />
                    <node concept="3Tqbb2" id="4XAkAubwIOX" role="1tU5fm">
                      <ref role="ehGHo" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="4XAkAubwIOY" role="3clF45">
                    <ref role="3uigEE" to="2gg1:~MessageStatus" resolve="MessageStatus" />
                  </node>
                  <node concept="3Tm1VV" id="4XAkAubwIOZ" role="1B3o_S" />
                  <node concept="3clFbS" id="4XAkAubwIP1" role="3clF47">
                    <node concept="3clFbF" id="4XAkAuby1iS" role="3cqZAp">
                      <node concept="3K4zz7" id="4XAkAuby2n3" role="3clFbG">
                        <node concept="Rm8GO" id="4XAkAuby2Xy" role="3K4E3e">
                          <ref role="Rm8GQ" to="2gg1:~MessageStatus.ERROR" resolve="ERROR" />
                          <ref role="1Px2BO" to="2gg1:~MessageStatus" resolve="MessageStatus" />
                        </node>
                        <node concept="Rm8GO" id="4XAkAuby3oh" role="3K4GZi">
                          <ref role="Rm8GQ" to="2gg1:~MessageStatus.OK" resolve="OK" />
                          <ref role="1Px2BO" to="2gg1:~MessageStatus" resolve="MessageStatus" />
                        </node>
                        <node concept="2OqwBi" id="4XAkAuby1yz" role="3K4Cdx">
                          <node concept="37vLTw" id="4XAkAuby1iP" role="2Oq$k0">
                            <ref role="3cqZAo" node="4XAkAubwIOW" resolve="link" />
                          </node>
                          <node concept="3zqWPK" id="70OdufORg2e" role="2OqNvi">
                            <ref role="37wK5l" to="tpcn:2VYdUfnkjmB" resolve="isAtLeastOneCardinality" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="4XAkAubwIP3" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
                <node concept="2tJIrI" id="4XAkAubwIP4" role="jymVt" />
                <node concept="3clFb_" id="4XAkAubwIP5" role="jymVt">
                  <property role="TrG5h" value="reportRequiredReferenceLink" />
                  <node concept="37vLTG" id="4XAkAubwIP6" role="3clF46">
                    <property role="TrG5h" value="builderNode" />
                    <node concept="3Tqbb2" id="4XAkAubwIP7" role="1tU5fm">
                      <ref role="ehGHo" to="tp3r:4IP40Bi2$Ew" resolve="NodeBuilderNode" />
                    </node>
                  </node>
                  <node concept="37vLTG" id="4XAkAubwIP8" role="3clF46">
                    <property role="TrG5h" value="link" />
                    <node concept="3Tqbb2" id="4XAkAubwIP9" role="1tU5fm">
                      <ref role="ehGHo" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="4XAkAubwIPa" role="3clF45">
                    <ref role="3uigEE" to="2gg1:~MessageStatus" resolve="MessageStatus" />
                  </node>
                  <node concept="3Tm1VV" id="4XAkAubwIPb" role="1B3o_S" />
                  <node concept="3clFbS" id="4XAkAubwIPd" role="3clF47">
                    <node concept="3clFbF" id="4XAkAuby3Ce" role="3cqZAp">
                      <node concept="3K4zz7" id="4XAkAuby3Cf" role="3clFbG">
                        <node concept="Rm8GO" id="4XAkAuby3Cg" role="3K4E3e">
                          <ref role="1Px2BO" to="2gg1:~MessageStatus" resolve="MessageStatus" />
                          <ref role="Rm8GQ" to="2gg1:~MessageStatus.ERROR" resolve="ERROR" />
                        </node>
                        <node concept="Rm8GO" id="4XAkAuby3Ch" role="3K4GZi">
                          <ref role="1Px2BO" to="2gg1:~MessageStatus" resolve="MessageStatus" />
                          <ref role="Rm8GQ" to="2gg1:~MessageStatus.OK" resolve="OK" />
                        </node>
                        <node concept="2OqwBi" id="4XAkAuby3Ci" role="3K4Cdx">
                          <node concept="37vLTw" id="4XAkAuby3Cj" role="2Oq$k0">
                            <ref role="3cqZAo" node="4XAkAubwIP8" resolve="link" />
                          </node>
                          <node concept="3zqWPK" id="70OdufORg2g" role="2OqNvi">
                            <ref role="37wK5l" to="tpcn:2VYdUfnkjmB" resolve="isAtLeastOneCardinality" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="4XAkAubwIPf" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
                <node concept="2tJIrI" id="4XAkAubwIPg" role="jymVt" />
                <node concept="3clFb_" id="4XAkAubwIPh" role="jymVt">
                  <property role="TrG5h" value="reportDuplicatedProperty" />
                  <node concept="37vLTG" id="4XAkAubwIPi" role="3clF46">
                    <property role="TrG5h" value="builderNode" />
                    <node concept="3Tqbb2" id="4XAkAubwIPj" role="1tU5fm">
                      <ref role="ehGHo" to="tp3r:4IP40Bi2$Ew" resolve="NodeBuilderNode" />
                    </node>
                  </node>
                  <node concept="37vLTG" id="4XAkAubwIPk" role="3clF46">
                    <property role="TrG5h" value="link" />
                    <node concept="3Tqbb2" id="4XAkAubwIPl" role="1tU5fm">
                      <ref role="ehGHo" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="4XAkAubwIPm" role="3clF45">
                    <ref role="3uigEE" to="2gg1:~MessageStatus" resolve="MessageStatus" />
                  </node>
                  <node concept="3Tm1VV" id="4XAkAubwIPn" role="1B3o_S" />
                  <node concept="3clFbS" id="4XAkAubwIPp" role="3clF47">
                    <node concept="3clFbF" id="4XAkAubwK0x" role="3cqZAp">
                      <node concept="Rm8GO" id="4XAkAubwKf1" role="3clFbG">
                        <ref role="Rm8GQ" to="2gg1:~MessageStatus.ERROR" resolve="ERROR" />
                        <ref role="1Px2BO" to="2gg1:~MessageStatus" resolve="MessageStatus" />
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="4XAkAubwIPr" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
                <node concept="2tJIrI" id="4XAkAubwIPs" role="jymVt" />
                <node concept="3clFb_" id="4XAkAubwIPt" role="jymVt">
                  <property role="TrG5h" value="reportDuplicatedContainmentLink" />
                  <node concept="37vLTG" id="4XAkAubwIPu" role="3clF46">
                    <property role="TrG5h" value="builderNode" />
                    <node concept="3Tqbb2" id="4XAkAubwIPv" role="1tU5fm">
                      <ref role="ehGHo" to="tp3r:4IP40Bi2$Ew" resolve="NodeBuilderNode" />
                    </node>
                  </node>
                  <node concept="37vLTG" id="4XAkAubwIPw" role="3clF46">
                    <property role="TrG5h" value="link" />
                    <node concept="3Tqbb2" id="4XAkAubwIPx" role="1tU5fm">
                      <ref role="ehGHo" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="4XAkAubwIPy" role="3clF45">
                    <ref role="3uigEE" to="2gg1:~MessageStatus" resolve="MessageStatus" />
                  </node>
                  <node concept="3Tm1VV" id="4XAkAubwIPz" role="1B3o_S" />
                  <node concept="3clFbS" id="4XAkAubwIP_" role="3clF47">
                    <node concept="3clFbF" id="4XAkAubwMd6" role="3cqZAp">
                      <node concept="3K4zz7" id="4XAkAubwNhh" role="3clFbG">
                        <node concept="Rm8GO" id="4XAkAubwNEp" role="3K4E3e">
                          <ref role="Rm8GQ" to="2gg1:~MessageStatus.ERROR" resolve="ERROR" />
                          <ref role="1Px2BO" to="2gg1:~MessageStatus" resolve="MessageStatus" />
                        </node>
                        <node concept="Rm8GO" id="4XAkAubwO4w" role="3K4GZi">
                          <ref role="Rm8GQ" to="2gg1:~MessageStatus.OK" resolve="OK" />
                          <ref role="1Px2BO" to="2gg1:~MessageStatus" resolve="MessageStatus" />
                        </node>
                        <node concept="2OqwBi" id="4XAkAubwMsL" role="3K4Cdx">
                          <node concept="37vLTw" id="4XAkAubwMd5" role="2Oq$k0">
                            <ref role="3cqZAo" node="4XAkAubwIPw" resolve="link" />
                          </node>
                          <node concept="3zqWPK" id="70OdufORg2i" role="2OqNvi">
                            <ref role="37wK5l" to="tpcn:hEwIfAt" resolve="isSingular" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="4XAkAubwIPB" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
                <node concept="2tJIrI" id="4XAkAubwIPC" role="jymVt" />
                <node concept="3clFb_" id="4XAkAubwIPD" role="jymVt">
                  <property role="TrG5h" value="reportDuplicatedReferenceLink" />
                  <node concept="37vLTG" id="4XAkAubwIPE" role="3clF46">
                    <property role="TrG5h" value="builderNode" />
                    <node concept="3Tqbb2" id="4XAkAubwIPF" role="1tU5fm">
                      <ref role="ehGHo" to="tp3r:4IP40Bi2$Ew" resolve="NodeBuilderNode" />
                    </node>
                  </node>
                  <node concept="37vLTG" id="4XAkAubwIPG" role="3clF46">
                    <property role="TrG5h" value="link" />
                    <node concept="3Tqbb2" id="4XAkAubwIPH" role="1tU5fm">
                      <ref role="ehGHo" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="4XAkAubwIPI" role="3clF45">
                    <ref role="3uigEE" to="2gg1:~MessageStatus" resolve="MessageStatus" />
                  </node>
                  <node concept="3Tm1VV" id="4XAkAubwIPJ" role="1B3o_S" />
                  <node concept="3clFbS" id="4XAkAubwIPL" role="3clF47">
                    <node concept="3clFbF" id="4XAkAubwLxA" role="3cqZAp">
                      <node concept="Rm8GO" id="4XAkAubwLxB" role="3clFbG">
                        <ref role="1Px2BO" to="2gg1:~MessageStatus" resolve="MessageStatus" />
                        <ref role="Rm8GQ" to="2gg1:~MessageStatus.ERROR" resolve="ERROR" />
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="4XAkAubwIPN" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4XAkAubwIyx" role="3clF45">
        <ref role="3uigEE" node="4XAkAubwHAh" resolve="InitializerPolicy" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="1BC2tkV2ciP">
    <property role="3GE5qa" value="builder" />
    <ref role="13h7C2" to="tp3r:4IP40Bi38Sq" resolve="NodeBuilderInitLink" />
    <node concept="13hLZK" id="1BC2tkV2ciQ" role="13h7CW">
      <node concept="3clFbS" id="1BC2tkV2ciR" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="1BC2tkV2cj1" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="getScope" />
      <property role="13i0it" value="false" />
      <ref role="13i0hy" to="tpcu:52_Geb4QDV$" resolve="getScope" />
      <node concept="3Tm1VV" id="1BC2tkV2cj2" role="1B3o_S" />
      <node concept="3clFbS" id="1BC2tkV2cjb" role="3clF47">
        <node concept="3clFbJ" id="1BC2tkV2cq_" role="3cqZAp">
          <node concept="3clFbS" id="1BC2tkV2cqA" role="3clFbx">
            <node concept="3cpWs6" id="3ztslRe_Hgp" role="3cqZAp">
              <node concept="2YIFZM" id="3ztslReAAfe" role="3cqZAk">
                <ref role="37wK5l" to="tpcg:3ztslReAezG" resolve="forSubconcepts" />
                <ref role="1Pybhc" to="tpcg:6dmIS6MscR9" resolve="Scopes" />
                <node concept="13iPFW" id="3ztslReAAfk" role="37wK5m" />
                <node concept="2OqwBi" id="3ztslReAAff" role="37wK5m">
                  <node concept="2OqwBi" id="3ztslReAAfg" role="2Oq$k0">
                    <node concept="13iPFW" id="3ztslReAAfh" role="2Oq$k0" />
                    <node concept="3TrEf2" id="3ztslReAAfi" role="2OqNvi">
                      <ref role="3Tt5mk" to="tp3r:4IP40Bi38Ss" resolve="link" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="3ztslReAAfj" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpce:fA0lvVK" resolve="target" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="42Bx8VbD0$E" role="3clFbw">
            <node concept="37vLTw" id="42Bx8VbD0$F" role="2Oq$k0">
              <ref role="3cqZAo" node="1BC2tkV2cjc" resolve="kind" />
            </node>
            <node concept="3O6GUB" id="2StKqlGEnkA" role="2OqNvi">
              <node concept="chp4Y" id="2StKqlGEnAc" role="3QVz_e">
                <ref role="cht4Q" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1BC2tkV2cqM" role="3cqZAp">
          <node concept="2OqwBi" id="1BC2tkV2cqN" role="3cqZAk">
            <node concept="13iAh5" id="1BC2tkV2cqO" role="2Oq$k0">
              <ref role="3eA5LN" to="tpck:3fifI_xCcJN" resolve="ScopeProvider" />
            </node>
            <node concept="3zqWPK" id="70OdufORg2k" role="2OqNvi">
              <ref role="37wK5l" to="tpcu:52_Geb4QDV$" resolve="getScope" />
              <node concept="37vLTw" id="70OdufORg2m" role="37wK5m">
                <ref role="3cqZAo" node="1BC2tkV2cjc" resolve="kind" />
              </node>
              <node concept="37vLTw" id="70OdufORg2n" role="37wK5m">
                <ref role="3cqZAo" node="1BC2tkV2cje" resolve="child" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1BC2tkV2cjc" role="3clF46">
        <property role="TrG5h" value="kind" />
        <node concept="3bZ5Sz" id="42Bx8VbD0$D" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1BC2tkV2cje" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3Tqbb2" id="1BC2tkV2cjf" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="1BC2tkV2cjg" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
    </node>
    <node concept="13i0hz" id="1o$2SUuvJqx" role="13h7CS">
      <property role="TrG5h" value="getInitValue" />
      <node concept="3Tm1VV" id="1o$2SUuvJqy" role="1B3o_S" />
      <node concept="3Tqbb2" id="1o$2SUuvJsu" role="3clF45">
        <ref role="ehGHo" to="tp3r:1o$2SUuutG0" resolve="NodeBuilderInitLinkValue" />
      </node>
      <node concept="3clFbS" id="1o$2SUuvJq$" role="3clF47">
        <node concept="3cpWs6" id="1o$2SUuvJY3" role="3cqZAp">
          <node concept="2OqwBi" id="1o$2SUuvK2k" role="3cqZAk">
            <node concept="13iPFW" id="1o$2SUuvJYa" role="2Oq$k0" />
            <node concept="3TrEf2" id="1o$2SUuvKlE" role="2OqNvi">
              <ref role="3Tt5mk" to="tp3r:1o$2SUuutG3" resolve="initValue" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="1o$2SUuvKU$">
    <property role="3GE5qa" value="builder" />
    <ref role="13h7C2" to="tp3r:4IP40Bi2Kc_" resolve="NodeBuilderInitProperty" />
    <node concept="13i0hz" id="MyKVmwIJUM" role="13h7CS">
      <property role="TrG5h" value="getInitValueInternal" />
      <node concept="3Tm1VV" id="MyKVmwIJUN" role="1B3o_S" />
      <node concept="3Tqbb2" id="MyKVmwIJUO" role="3clF45">
        <ref role="ehGHo" to="tpee:fz3vP1J" resolve="Expression" />
      </node>
      <node concept="3clFbS" id="MyKVmwIJUP" role="3clF47">
        <node concept="3clFbJ" id="MyKVmwIK_n" role="3cqZAp">
          <node concept="3clFbS" id="MyKVmwIK_p" role="3clFbx">
            <node concept="3cpWs6" id="MyKVmwILS3" role="3cqZAp">
              <node concept="2OqwBi" id="MyKVmwINsG" role="3cqZAk">
                <node concept="1PxgMI" id="MyKVmwIN6Y" role="2Oq$k0">
                  <node concept="chp4Y" id="MyKVmwINg$" role="3oSUPX">
                    <ref role="cht4Q" to="tp3r:63LzO9stH8q" resolve="NodeBuilderPropertyExpression" />
                  </node>
                  <node concept="2OqwBi" id="MyKVmwIMgr" role="1m5AlR">
                    <node concept="13iPFW" id="MyKVmwIM45" role="2Oq$k0" />
                    <node concept="3TrEf2" id="MyKVmwIMrc" role="2OqNvi">
                      <ref role="3Tt5mk" to="tp3r:1o$2SUuutyh" resolve="initValue" />
                    </node>
                  </node>
                </node>
                <node concept="3TrEf2" id="MyKVmwINNT" role="2OqNvi">
                  <ref role="3Tt5mk" to="tp3r:63LzO9stH8r" resolve="expression" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="MyKVmwIL6$" role="3clFbw">
            <node concept="2OqwBi" id="MyKVmwIKMh" role="2Oq$k0">
              <node concept="13iPFW" id="MyKVmwIKCv" role="2Oq$k0" />
              <node concept="3TrEf2" id="MyKVmwIKUG" role="2OqNvi">
                <ref role="3Tt5mk" to="tp3r:1o$2SUuutyh" resolve="initValue" />
              </node>
            </node>
            <node concept="1mIQ4w" id="MyKVmwILfr" role="2OqNvi">
              <node concept="chp4Y" id="MyKVmwIO6b" role="cj9EA">
                <ref role="cht4Q" to="tp3r:63LzO9stDA2" resolve="NodeBuilderInitPropertyValue" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="MyKVmwINZF" role="9aQIa">
            <node concept="3clFbS" id="MyKVmwINZG" role="9aQI4">
              <node concept="3cpWs6" id="MyKVmwIOdf" role="3cqZAp">
                <node concept="2OqwBi" id="MyKVmwIOs$" role="3cqZAk">
                  <node concept="13iPFW" id="MyKVmwIOdC" role="2Oq$k0" />
                  <node concept="3TrEf2" id="MyKVmwIOJZ" role="2OqNvi">
                    <ref role="3Tt5mk" to="tp3r:1o$2SUuutyh" resolve="initValue" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="1o$2SUuvKUZ" role="13h7CS">
      <property role="TrG5h" value="getInitValue" />
      <node concept="3Tm1VV" id="1o$2SUuvKV0" role="1B3o_S" />
      <node concept="3Tqbb2" id="1o$2SUuvKV1" role="3clF45">
        <ref role="ehGHo" to="tpee:fz3vP1J" resolve="Expression" />
      </node>
      <node concept="3clFbS" id="1o$2SUuvKV2" role="3clF47">
        <node concept="3clFbJ" id="1o$2SUuvKV3" role="3cqZAp">
          <node concept="3y3z36" id="1o$2SUuvKV4" role="3clFbw">
            <node concept="10Nm6u" id="1o$2SUuvKV5" role="3uHU7w" />
            <node concept="2OqwBi" id="1o$2SUuvKV6" role="3uHU7B">
              <node concept="13iPFW" id="1o$2SUuvKV7" role="2Oq$k0" />
              <node concept="3TrEf2" id="1o$2SUuvKV8" role="2OqNvi">
                <ref role="3Tt5mk" to="tp3r:1o$2SUuutyh" resolve="initValue" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1o$2SUuvKV9" role="3clFbx">
            <node concept="3clFbJ" id="MyKVmw$Os6" role="3cqZAp">
              <node concept="3clFbS" id="MyKVmw$Os8" role="3clFbx">
                <node concept="3cpWs6" id="1o$2SUuvKVa" role="3cqZAp">
                  <node concept="1PxgMI" id="MyKVmw$RMy" role="3cqZAk">
                    <node concept="chp4Y" id="MyKVmw$RWy" role="3oSUPX">
                      <ref role="cht4Q" to="tp3r:63LzO9stDA2" resolve="NodeBuilderInitPropertyValue" />
                    </node>
                    <node concept="2OqwBi" id="1o$2SUuvKVb" role="1m5AlR">
                      <node concept="13iPFW" id="1o$2SUuvKVc" role="2Oq$k0" />
                      <node concept="3TrEf2" id="1o$2SUuvKVd" role="2OqNvi">
                        <ref role="3Tt5mk" to="tp3r:1o$2SUuutyh" resolve="initValue" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="MyKVmw$OWE" role="3clFbw">
                <node concept="2OqwBi" id="MyKVmw$OCQ" role="2Oq$k0">
                  <node concept="13iPFW" id="MyKVmw$Ov6" role="2Oq$k0" />
                  <node concept="3TrEf2" id="MyKVmw$OLf" role="2OqNvi">
                    <ref role="3Tt5mk" to="tp3r:1o$2SUuutyh" resolve="initValue" />
                  </node>
                </node>
                <node concept="1mIQ4w" id="MyKVmw$P5n" role="2OqNvi">
                  <node concept="chp4Y" id="MyKVmw$P9H" role="cj9EA">
                    <ref role="cht4Q" to="tp3r:63LzO9stDA2" resolve="NodeBuilderInitPropertyValue" />
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="MyKVmw$Pmn" role="9aQIa">
                <node concept="3clFbS" id="MyKVmw$Pmo" role="9aQI4">
                  <node concept="3cpWs6" id="MyKVmw$Pu7" role="3cqZAp">
                    <node concept="2pJPEk" id="MyKVmw$PMZ" role="3cqZAk">
                      <node concept="2pJPED" id="MyKVmw$PWm" role="2pJPEn">
                        <ref role="2pJxaS" to="tp3r:63LzO9stH8q" resolve="NodeBuilderPropertyExpression" />
                        <node concept="2pIpSj" id="MyKVmw$Qfa" role="2pJxcM">
                          <ref role="2pIpSl" to="tp3r:63LzO9stH8r" resolve="expression" />
                          <node concept="36biLy" id="MyKVmw$QgA" role="28nt2d">
                            <node concept="2OqwBi" id="MyKVmw$QPM" role="36biLW">
                              <node concept="2OqwBi" id="MyKVmw$Pu8" role="2Oq$k0">
                                <node concept="13iPFW" id="MyKVmw$Pu9" role="2Oq$k0" />
                                <node concept="3TrEf2" id="MyKVmw$Pua" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tp3r:1o$2SUuutyh" resolve="initValue" />
                                </node>
                              </node>
                              <node concept="1$rogu" id="MyKVmw$QYq" role="2OqNvi" />
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
          <node concept="9aQIb" id="1o$2SUuvKVe" role="9aQIa">
            <node concept="3clFbS" id="1o$2SUuvKVf" role="9aQI4">
              <node concept="3cpWs6" id="1o$2SUuvKVg" role="3cqZAp">
                <node concept="2pJPEk" id="MyKVmw$QZ5" role="3cqZAk">
                  <node concept="2pJPED" id="MyKVmw$QZ6" role="2pJPEn">
                    <ref role="2pJxaS" to="tp3r:63LzO9stH8q" resolve="NodeBuilderPropertyExpression" />
                    <node concept="2pIpSj" id="MyKVmw$QZ7" role="2pJxcM">
                      <ref role="2pIpSl" to="tp3r:63LzO9stH8r" resolve="expression" />
                      <node concept="36biLy" id="MyKVmw$QZ8" role="28nt2d">
                        <node concept="2OqwBi" id="MyKVmw$QZ9" role="36biLW">
                          <node concept="2OqwBi" id="MyKVmw$QZa" role="2Oq$k0">
                            <node concept="13iPFW" id="MyKVmw$QZb" role="2Oq$k0" />
                            <node concept="3TrEf2" id="MyKVmw$RoG" role="2OqNvi">
                              <ref role="3Tt5mk" to="tp3r:4IP40Bi2KcQ" resolve="expression" />
                            </node>
                          </node>
                          <node concept="1$rogu" id="MyKVmw$QZd" role="2OqNvi" />
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
    <node concept="13hLZK" id="1o$2SUuvKU_" role="13h7CW">
      <node concept="3clFbS" id="1o$2SUuvKUA" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="4XAkAubwHnh">
    <property role="3GE5qa" value="container" />
    <ref role="13h7C2" to="tp3r:S4WnV2LSOY" resolve="INodeBuilderContainer" />
    <node concept="13i0hz" id="4XAkAubwHns" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getCheckPolicy" />
      <node concept="3Tm1VV" id="4XAkAubwHnt" role="1B3o_S" />
      <node concept="3uibUv" id="4XAkAubwIji" role="3clF45">
        <ref role="3uigEE" node="4XAkAubwHAh" resolve="InitializerPolicy" />
      </node>
      <node concept="3clFbS" id="4XAkAubwHnv" role="3clF47" />
    </node>
    <node concept="13hLZK" id="4XAkAubwHni" role="13h7CW">
      <node concept="3clFbS" id="4XAkAubwHnj" role="2VODD2" />
    </node>
  </node>
  <node concept="3HP615" id="4XAkAubwHAh">
    <property role="3GE5qa" value="container" />
    <property role="TrG5h" value="InitializerPolicy" />
    <node concept="3clFb_" id="4XAkAubwHrZ" role="jymVt">
      <property role="TrG5h" value="reportRequiredProperty" />
      <node concept="37vLTG" id="4XAkAubwHzl" role="3clF46">
        <property role="TrG5h" value="builderNode" />
        <node concept="3Tqbb2" id="4XAkAubwHzN" role="1tU5fm">
          <ref role="ehGHo" to="tp3r:4IP40Bi2$Ew" resolve="NodeBuilderNode" />
        </node>
      </node>
      <node concept="37vLTG" id="4XAkAubwHwW" role="3clF46">
        <property role="TrG5h" value="property" />
        <node concept="3Tqbb2" id="4XAkAubwHxY" role="1tU5fm">
          <ref role="ehGHo" to="tpce:f_TJgxF" resolve="PropertyDeclaration" />
        </node>
      </node>
      <node concept="3uibUv" id="4XAkAubwHwz" role="3clF45">
        <ref role="3uigEE" to="2gg1:~MessageStatus" resolve="MessageStatus" />
      </node>
      <node concept="3Tm1VV" id="4XAkAubwHs2" role="1B3o_S" />
      <node concept="3clFbS" id="4XAkAubwHs3" role="3clF47" />
    </node>
    <node concept="3clFb_" id="4XAkAubwHEA" role="jymVt">
      <property role="TrG5h" value="reportRequiredContainmentLink" />
      <node concept="37vLTG" id="4XAkAubwHEB" role="3clF46">
        <property role="TrG5h" value="builderNode" />
        <node concept="3Tqbb2" id="4XAkAubwHEC" role="1tU5fm">
          <ref role="ehGHo" to="tp3r:4IP40Bi2$Ew" resolve="NodeBuilderNode" />
        </node>
      </node>
      <node concept="37vLTG" id="4XAkAubwHED" role="3clF46">
        <property role="TrG5h" value="link" />
        <node concept="3Tqbb2" id="4XAkAubwHEE" role="1tU5fm">
          <ref role="ehGHo" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
        </node>
      </node>
      <node concept="3uibUv" id="4XAkAubwHEF" role="3clF45">
        <ref role="3uigEE" to="2gg1:~MessageStatus" resolve="MessageStatus" />
      </node>
      <node concept="3Tm1VV" id="4XAkAubwHEG" role="1B3o_S" />
      <node concept="3clFbS" id="4XAkAubwHEH" role="3clF47" />
    </node>
    <node concept="3clFb_" id="4XAkAubwHLW" role="jymVt">
      <property role="TrG5h" value="reportRequiredReferenceLink" />
      <node concept="37vLTG" id="4XAkAubwHLX" role="3clF46">
        <property role="TrG5h" value="builderNode" />
        <node concept="3Tqbb2" id="4XAkAubwHLY" role="1tU5fm">
          <ref role="ehGHo" to="tp3r:4IP40Bi2$Ew" resolve="NodeBuilderNode" />
        </node>
      </node>
      <node concept="37vLTG" id="4XAkAubwHLZ" role="3clF46">
        <property role="TrG5h" value="link" />
        <node concept="3Tqbb2" id="4XAkAubwHM0" role="1tU5fm">
          <ref role="ehGHo" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
        </node>
      </node>
      <node concept="3uibUv" id="4XAkAubwHM1" role="3clF45">
        <ref role="3uigEE" to="2gg1:~MessageStatus" resolve="MessageStatus" />
      </node>
      <node concept="3Tm1VV" id="4XAkAubwHM2" role="1B3o_S" />
      <node concept="3clFbS" id="4XAkAubwHM3" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="4XAkAubwHTf" role="jymVt" />
    <node concept="3clFb_" id="4XAkAubwHQU" role="jymVt">
      <property role="TrG5h" value="reportDuplicatedProperty" />
      <node concept="37vLTG" id="4XAkAubwHQV" role="3clF46">
        <property role="TrG5h" value="builderNode" />
        <node concept="3Tqbb2" id="4XAkAubwHQW" role="1tU5fm">
          <ref role="ehGHo" to="tp3r:4IP40Bi2$Ew" resolve="NodeBuilderNode" />
        </node>
      </node>
      <node concept="37vLTG" id="4XAkAubwHQX" role="3clF46">
        <property role="TrG5h" value="property" />
        <node concept="3Tqbb2" id="4XAkAubwHQY" role="1tU5fm">
          <ref role="ehGHo" to="tpce:f_TJgxF" resolve="PropertyDeclaration" />
        </node>
      </node>
      <node concept="3uibUv" id="4XAkAubwHQZ" role="3clF45">
        <ref role="3uigEE" to="2gg1:~MessageStatus" resolve="MessageStatus" />
      </node>
      <node concept="3Tm1VV" id="4XAkAubwHR0" role="1B3o_S" />
      <node concept="3clFbS" id="4XAkAubwHR1" role="3clF47" />
    </node>
    <node concept="3clFb_" id="4XAkAubwI6j" role="jymVt">
      <property role="TrG5h" value="reportDuplicatedContainmentLink" />
      <node concept="37vLTG" id="4XAkAubwI6k" role="3clF46">
        <property role="TrG5h" value="builderNode" />
        <node concept="3Tqbb2" id="4XAkAubwI6l" role="1tU5fm">
          <ref role="ehGHo" to="tp3r:4IP40Bi2$Ew" resolve="NodeBuilderNode" />
        </node>
      </node>
      <node concept="37vLTG" id="4XAkAubwI6m" role="3clF46">
        <property role="TrG5h" value="link" />
        <node concept="3Tqbb2" id="4XAkAubwI6n" role="1tU5fm">
          <ref role="ehGHo" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
        </node>
      </node>
      <node concept="3uibUv" id="4XAkAubwI6o" role="3clF45">
        <ref role="3uigEE" to="2gg1:~MessageStatus" resolve="MessageStatus" />
      </node>
      <node concept="3Tm1VV" id="4XAkAubwI6p" role="1B3o_S" />
      <node concept="3clFbS" id="4XAkAubwI6q" role="3clF47" />
    </node>
    <node concept="3clFb_" id="4XAkAubwIbV" role="jymVt">
      <property role="TrG5h" value="reportDuplicatedReferenceLink" />
      <node concept="37vLTG" id="4XAkAubwIbW" role="3clF46">
        <property role="TrG5h" value="builderNode" />
        <node concept="3Tqbb2" id="4XAkAubwIbX" role="1tU5fm">
          <ref role="ehGHo" to="tp3r:4IP40Bi2$Ew" resolve="NodeBuilderNode" />
        </node>
      </node>
      <node concept="37vLTG" id="4XAkAubwIbY" role="3clF46">
        <property role="TrG5h" value="link" />
        <node concept="3Tqbb2" id="4XAkAubwIbZ" role="1tU5fm">
          <ref role="ehGHo" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
        </node>
      </node>
      <node concept="3uibUv" id="4XAkAubwIc0" role="3clF45">
        <ref role="3uigEE" to="2gg1:~MessageStatus" resolve="MessageStatus" />
      </node>
      <node concept="3Tm1VV" id="4XAkAubwIc1" role="1B3o_S" />
      <node concept="3clFbS" id="4XAkAubwIc2" role="3clF47" />
    </node>
    <node concept="3Tm1VV" id="4XAkAubwHAi" role="1B3o_S" />
  </node>
  <node concept="13h7C7" id="l18Rx3zLvF">
    <property role="3GE5qa" value="container" />
    <ref role="13h7C2" to="tp3r:2S6ZQ64Qx1I" resolve="ModelNodeInitializer" />
    <node concept="13hLZK" id="l18Rx3zLvG" role="13h7CW">
      <node concept="3clFbS" id="l18Rx3zLvH" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="l18Rx3zLxW" role="13h7CS">
      <property role="TrG5h" value="getMetaLevelChange" />
      <ref role="13i0hy" to="tpcu:bc0iGlxcsE" resolve="getMetaLevelChange" />
      <node concept="3Tm1VV" id="l18Rx3zLxX" role="1B3o_S" />
      <node concept="3clFbS" id="l18Rx3zLy0" role="3clF47">
        <node concept="3clFbJ" id="2Gl87gzwXqa" role="3cqZAp">
          <node concept="3clFbS" id="2Gl87gzwXqc" role="3clFbx">
            <node concept="3SKdUt" id="l18Rx3zLXA" role="3cqZAp">
              <node concept="1PaTwC" id="l18Rx3zLXB" role="1aUNEU">
                <node concept="3oM_SD" id="l18Rx3zLXC" role="1PaTwD">
                  <property role="3oM_SC" value="this" />
                </node>
                <node concept="3oM_SD" id="l18Rx3zM01" role="1PaTwD">
                  <property role="3oM_SC" value="is" />
                </node>
                <node concept="3oM_SD" id="l18Rx3zM03" role="1PaTwD">
                  <property role="3oM_SC" value="a" />
                </node>
                <node concept="3oM_SD" id="l18Rx3zM04" role="1PaTwD">
                  <property role="3oM_SC" value="child" />
                </node>
                <node concept="3oM_SD" id="l18Rx3zM1k" role="1PaTwD">
                  <property role="3oM_SC" value="of" />
                </node>
                <node concept="3oM_SD" id="l18Rx3zM1l" role="1PaTwD">
                  <property role="3oM_SC" value="Quotation," />
                </node>
                <node concept="3oM_SD" id="l18Rx3zM5j" role="1PaTwD">
                  <property role="3oM_SC" value="and" />
                </node>
                <node concept="3oM_SD" id="l18Rx3zM6j" role="1PaTwD">
                  <property role="3oM_SC" value="any" />
                </node>
                <node concept="3oM_SD" id="l18Rx3zM6k" role="1PaTwD">
                  <property role="3oM_SC" value="code" />
                </node>
                <node concept="3oM_SD" id="l18Rx3zM7$" role="1PaTwD">
                  <property role="3oM_SC" value="analyzing" />
                </node>
                <node concept="3oM_SD" id="l18Rx3zM8O" role="1PaTwD">
                  <property role="3oM_SC" value="ancestors" />
                </node>
                <node concept="3oM_SD" id="l18Rx3zMbz" role="1PaTwD">
                  <property role="3oM_SC" value="of" />
                </node>
                <node concept="3oM_SD" id="l18Rx3zMd3" role="1PaTwD">
                  <property role="3oM_SC" value="expressions" />
                </node>
                <node concept="3oM_SD" id="l18Rx3zMh1" role="1PaTwD">
                  <property role="3oM_SC" value="here" />
                </node>
                <node concept="3oM_SD" id="l18Rx3zMjK" role="1PaTwD">
                  <property role="3oM_SC" value="would" />
                </node>
                <node concept="3oM_SD" id="l18Rx3zMlJ" role="1PaTwD">
                  <property role="3oM_SC" value="face" />
                </node>
                <node concept="3oM_SD" id="l18Rx3zMmZ" role="1PaTwD">
                  <property role="3oM_SC" value="IMetaLevelChange" />
                </node>
                <node concept="3oM_SD" id="l18Rx3zMqX" role="1PaTwD">
                  <property role="3oM_SC" value="==" />
                </node>
                <node concept="3oM_SD" id="l18Rx3zMtc" role="1PaTwD">
                  <property role="3oM_SC" value="-1" />
                </node>
                <node concept="3oM_SD" id="l18Rx3zMus" role="1PaTwD">
                  <property role="3oM_SC" value="of" />
                </node>
                <node concept="3oM_SD" id="l18Rx3zMDn" role="1PaTwD">
                  <property role="3oM_SC" value="Quotation," />
                </node>
                <node concept="3oM_SD" id="l18Rx3zMDC" role="1PaTwD">
                  <property role="3oM_SC" value="while" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="l18Rx3zMMc" role="3cqZAp">
              <node concept="1PaTwC" id="l18Rx3zMMd" role="1aUNEU">
                <node concept="3oM_SD" id="l18Rx3zMNE" role="1PaTwD">
                  <property role="3oM_SC" value="in" />
                </node>
                <node concept="3oM_SD" id="l18Rx3zMOU" role="1PaTwD">
                  <property role="3oM_SC" value="fact" />
                </node>
                <node concept="3oM_SD" id="l18Rx3zMPV" role="1PaTwD">
                  <property role="3oM_SC" value="these" />
                </node>
                <node concept="3oM_SD" id="l18Rx3zMRV" role="1PaTwD">
                  <property role="3oM_SC" value="expressions" />
                </node>
                <node concept="3oM_SD" id="l18Rx3zMSV" role="1PaTwD">
                  <property role="3oM_SC" value="here" />
                </node>
                <node concept="3oM_SD" id="l18Rx3zMSW" role="1PaTwD">
                  <property role="3oM_SC" value="are" />
                </node>
                <node concept="3oM_SD" id="l18Rx3zMSX" role="1PaTwD">
                  <property role="3oM_SC" value="on" />
                </node>
                <node concept="3oM_SD" id="l18Rx3zMTX" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="l18Rx3zMTY" role="1PaTwD">
                  <property role="3oM_SC" value="same" />
                </node>
                <node concept="3oM_SD" id="l18Rx3zMTZ" role="1PaTwD">
                  <property role="3oM_SC" value="&quot;meta&quot;" />
                </node>
                <node concept="3oM_SD" id="l18Rx3zMXH" role="1PaTwD">
                  <property role="3oM_SC" value="level" />
                </node>
                <node concept="3oM_SD" id="l18Rx3zMYH" role="1PaTwD">
                  <property role="3oM_SC" value="as" />
                </node>
                <node concept="3oM_SD" id="l18Rx3zMYI" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="l18Rx3zMYJ" role="1PaTwD">
                  <property role="3oM_SC" value="Quotation" />
                </node>
                <node concept="3oM_SD" id="l18Rx3zN1Y" role="1PaTwD">
                  <property role="3oM_SC" value="itself," />
                </node>
                <node concept="3oM_SD" id="l18Rx3zN7F" role="1PaTwD">
                  <property role="3oM_SC" value="hence" />
                </node>
                <node concept="3oM_SD" id="l18Rx3zN8V" role="1PaTwD">
                  <property role="3oM_SC" value="offset" />
                </node>
                <node concept="3oM_SD" id="l18Rx3zN9V" role="1PaTwD">
                  <property role="3oM_SC" value="by" />
                </node>
                <node concept="3oM_SD" id="l18Rx3zNac" role="1PaTwD">
                  <property role="3oM_SC" value="+1" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="2Gl87gzwYqY" role="3cqZAp">
              <node concept="3cmrfG" id="l18Rx3zLy2" role="3cqZAk">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="2Gl87gzwY0$" role="3clFbw">
            <node concept="2OqwBi" id="2Gl87gzwXE9" role="2Oq$k0">
              <node concept="13iPFW" id="2Gl87gzwXvC" role="2Oq$k0" />
              <node concept="1mfA1w" id="2Gl87gzwXRq" role="2OqNvi" />
            </node>
            <node concept="1mIQ4w" id="2Gl87gzwYfp" role="2OqNvi">
              <node concept="chp4Y" id="2Gl87gzwYiN" role="cj9EA">
                <ref role="cht4Q" to="tp3r:hqc44pp" resolve="Quotation" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2Gl87gzwYxu" role="3cqZAp">
          <node concept="3cmrfG" id="2Gl87gzwYzs" role="3cqZAk">
            <property role="3cmrfH" value="0" />
          </node>
        </node>
      </node>
      <node concept="10Oyi0" id="l18Rx3zLy1" role="3clF45" />
    </node>
  </node>
</model>

