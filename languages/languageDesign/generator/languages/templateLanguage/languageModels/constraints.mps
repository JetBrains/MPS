<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:00000000-0000-4000-0000-011c895902e2(jetbrains.mps.lang.generator.constraints)">
  <persistence version="9" />
  <languages>
    <use id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints" version="6" />
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <devkit ref="00000000-0000-4000-0000-5604ebd4f22c(jetbrains.mps.devkit.aspect.constraints)" />
  </languages>
  <imports>
    <import index="tpf8" ref="r:00000000-0000-4000-0000-011c895902e8(jetbrains.mps.lang.generator.structure)" />
    <import index="tp3t" ref="r:00000000-0000-4000-0000-011c89590345(jetbrains.mps.lang.pattern.structure)" />
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="tpcn" ref="r:00000000-0000-4000-0000-011c8959028b(jetbrains.mps.lang.structure.behavior)" />
    <import index="prp3" ref="r:52ea8481-08b2-4cbd-ad9d-1b42825f7d09(jetbrains.mps.lang.constraints.rules.kinds.constraints)" />
    <import index="tpfh" ref="r:00000000-0000-4000-0000-011c895902e1(jetbrains.mps.lang.generator.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="ea3159bf-f48e-4720-bde2-86dba75f0d34" name="jetbrains.mps.lang.context.defs">
      <concept id="7291380803376202513" name="jetbrains.mps.lang.context.defs.structure.TypedDefReference" flags="ng" index="3QpRc$">
        <reference id="7291380803376221790" name="declaration" index="3QpVTF" />
      </concept>
    </language>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="3235159848334022093" name="jetbrains.mps.lang.behavior.structure.Node_ConceptMethodCall" flags="nn" index="3zqWPK" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ngI" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
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
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
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
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
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
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
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
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints">
      <concept id="6702802731807351367" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_CanBeAChild" flags="in" index="9S07l" />
      <concept id="1202989658459" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_parentNode" flags="nn" index="nLn13" />
      <concept id="8966504967485224688" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_contextNode" flags="nn" index="2rP1CM" />
      <concept id="4303308395523096213" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_childConcept" flags="ng" index="2DD5aU" />
      <concept id="1147467115080" name="jetbrains.mps.lang.constraints.structure.NodePropertyConstraint" flags="ng" index="EnEH3">
        <reference id="1147467295099" name="applicableProperty" index="EomxK" />
        <child id="1147468630220" name="propertyGetter" index="EtsB7" />
        <child id="1152963095733" name="propertySetter" index="1LXaQT" />
      </concept>
      <concept id="1147467790433" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertyGetter" flags="in" index="Eqf_E" />
      <concept id="1147468365020" name="jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_node" flags="nn" index="EsrRn" />
      <concept id="5564765827938091039" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_ReferentSearchScope_Scope" flags="ig" index="3dgokm" />
      <concept id="8401916545537438642" name="jetbrains.mps.lang.constraints.structure.InheritedNodeScopeFactory" flags="ng" index="1dDu$B">
        <reference id="8401916545537438643" name="kind" index="1dDu$A" />
      </concept>
      <concept id="1163200647017" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_referenceNode" flags="nn" index="3kakTB" />
      <concept id="1152959968041" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertySetter" flags="in" index="1LLf8_" />
      <concept id="1213093968558" name="jetbrains.mps.lang.constraints.structure.ConceptConstraints" flags="ng" index="1M2fIO">
        <reference id="1213093996982" name="concept" index="1M2myG" />
        <child id="6702802731807737306" name="canBeChild" index="9Vyp8" />
        <child id="1213098023997" name="property" index="1MhHOB" />
        <child id="1213100494875" name="referent" index="1Mr941" />
      </concept>
      <concept id="1148687176410" name="jetbrains.mps.lang.constraints.structure.NodeReferentConstraint" flags="ng" index="1N5Pfh">
        <reference id="1148687202698" name="applicableLink" index="1N5Vy1" />
        <child id="1148687345559" name="searchScopeFactory" index="1N6uqs" />
      </concept>
      <concept id="1153138554286" name="jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_propertyValue" flags="nn" index="1Wqviy" />
    </language>
    <language id="b3551702-269c-4f05-ba61-58060cef4292" name="jetbrains.mps.lang.rulesAndMessages">
      <concept id="315923949160549991" name="jetbrains.mps.lang.rulesAndMessages.structure.RuleWithMessage" flags="ng" index="1DCEPf">
        <child id="1400749580825440508" name="rule" index="2j4cqI" />
        <child id="315923949160550022" name="messageProvider" index="1DCEQI" />
      </concept>
      <concept id="315923949160550017" name="jetbrains.mps.lang.rulesAndMessages.structure.InlineMessageProvider" flags="ng" index="1DCEQD">
        <child id="5258059200641510856" name="messagesExpr" index="16N$OO" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="134c38d4-e3af-4d9e-b069-1c7df0a4005d" name="jetbrains.mps.lang.constraints.rules.skeleton">
      <concept id="1867733327984720090" name="jetbrains.mps.lang.constraints.rules.skeleton.structure.RulesConstraintsRoot" flags="ng" index="3Oh7Pa">
        <reference id="1867733327984720094" name="concept" index="3Oh7Pe" />
        <child id="1867733327984720091" name="block" index="3Oh7Pb" />
      </concept>
      <concept id="1867733327985055562" name="jetbrains.mps.lang.constraints.rules.skeleton.structure.RulesBlock" flags="ng" index="3OnDbq">
        <reference id="1867733327985055564" name="kind" index="3OnDbs" />
        <child id="1867733327985055563" name="members" index="3OnDbr" />
      </concept>
    </language>
    <language id="47257bf3-78d3-470b-89d9-8c3261a61d15" name="jetbrains.mps.lang.constraints.rules">
      <concept id="3562920471664315692" name="jetbrains.mps.lang.constraints.rules.structure.ApplicableCondition" flags="ng" index="25XGhA">
        <child id="1328301445982552662" name="expr" index="2K0D5Q" />
      </concept>
      <concept id="4310380201428925514" name="jetbrains.mps.lang.constraints.rules.structure.RuleBlockMemberWithApplicability" flags="ngI" index="2aRruY">
        <child id="7932913038696094796" name="condition" index="2RBc8G" />
      </concept>
      <concept id="1328301445982517233" name="jetbrains.mps.lang.constraints.rules.structure.ExpressionWrapper" flags="ng" index="2K0Yjh">
        <child id="1328301445982532877" name="expression" index="2K0yoH" />
      </concept>
      <concept id="315923949160453290" name="jetbrains.mps.lang.constraints.rules.structure.RuleIdHolder" flags="ngI" index="1DRju2">
        <property id="6714410169261853888" name="ruleId" index="EcuMT" />
      </concept>
      <concept id="7291380803377228245" name="jetbrains.mps.lang.constraints.rules.structure.DefForRule" flags="ng" index="3QlHBw">
        <child id="1328301445982561451" name="expr" index="2K0Fub" />
        <child id="5473446470512342703" name="type" index="3RXm0Z" />
      </concept>
      <concept id="7291380803376279010" name="jetbrains.mps.lang.constraints.rules.structure.Rule" flags="ng" index="3Qq5Rn">
        <child id="1328301445982561464" name="expr" index="2K0Fuo" />
      </concept>
    </language>
    <language id="ad93155d-79b2-4759-b10c-55123e763903" name="jetbrains.mps.lang.messages">
      <concept id="5258059200642172255" name="jetbrains.mps.lang.messages.structure.CombinedMessageExpression" flags="ng" index="16I2mz">
        <child id="5258059200642172257" name="part" index="16I2mt" />
      </concept>
      <concept id="5258059200641510853" name="jetbrains.mps.lang.messages.structure.LiteralMessageExpression" flags="ng" index="16N$OT">
        <property id="5258059200641510854" name="message" index="16N$OU" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="4705942098322609812" name="jetbrains.mps.lang.smodel.structure.EnumMember_IsOperation" flags="ng" index="21noJN">
        <child id="4705942098322609813" name="member" index="21noJM" />
      </concept>
      <concept id="4705942098322467729" name="jetbrains.mps.lang.smodel.structure.EnumMemberReference" flags="ng" index="21nZrQ">
        <reference id="4705942098322467736" name="decl" index="21nZrZ" />
      </concept>
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
      <concept id="1761385620274348152" name="jetbrains.mps.lang.smodel.structure.SConceptTypeCastExpression" flags="nn" index="2CBFar" />
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1171310072040" name="jetbrains.mps.lang.smodel.structure.Node_GetContainingRootOperation" flags="nn" index="2Rxl7S" />
      <concept id="1145567426890" name="jetbrains.mps.lang.smodel.structure.SNodeListCreator" flags="nn" index="2T8Vx0">
        <child id="1145567471833" name="createdType" index="2T96Bj" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz">
        <reference id="6677504323281689839" name="conceptDeclaration" index="3bZ5Sy" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
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
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
    </language>
  </registry>
  <node concept="1M2fIO" id="hDMFHe3">
    <ref role="1M2myG" to="tpf8:gZlhOrr" resolve="Root_MappingRule" />
    <node concept="1N5Pfh" id="hDMFHkv" role="1Mr941">
      <ref role="1N5Vy1" to="tpf8:gZlhOrt" resolve="template" />
      <node concept="3dgokm" id="5Vvmn_QkP2i" role="1N6uqs">
        <node concept="3clFbS" id="5Vvmn_QkP2j" role="2VODD2">
          <node concept="3clFbF" id="oIXu13H2tG" role="3cqZAp">
            <node concept="2ShNRf" id="5Vvmn_QkP2K" role="3clFbG">
              <node concept="1pGfFk" id="5Vvmn_QkP2L" role="2ShVmc">
                <ref role="37wK5l" node="4YDZ92cLOVq" resolve="MappingRuleTemplateNodeSearchScope" />
                <node concept="2OqwBi" id="5Vvmn_QkP2M" role="37wK5m">
                  <node concept="2rP1CM" id="5Vvmn_QkP2N" role="2Oq$k0" />
                  <node concept="I4A8Y" id="5Vvmn_QkP2O" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="hDMFHTl">
    <ref role="1M2myG" to="tpf8:gYVPola" resolve="CreateRootRule" />
    <node concept="1N5Pfh" id="hDMFHTm" role="1Mr941">
      <ref role="1N5Vy1" to="tpf8:gYVPold" resolve="templateNode" />
      <node concept="3dgokm" id="5Vvmn_QkOVQ" role="1N6uqs">
        <node concept="3clFbS" id="5Vvmn_QkOVR" role="2VODD2">
          <node concept="3clFbF" id="oIXu13H1Wt" role="3cqZAp">
            <node concept="2ShNRf" id="oIXu13H1Wv" role="3clFbG">
              <node concept="1pGfFk" id="oIXu13H1Ww" role="2ShVmc">
                <ref role="37wK5l" node="4YDZ92cLOVq" resolve="MappingRuleTemplateNodeSearchScope" />
                <node concept="2OqwBi" id="oIXu13H1Wx" role="37wK5m">
                  <node concept="2rP1CM" id="oIXu13H1Wy" role="2Oq$k0" />
                  <node concept="I4A8Y" id="oIXu13H1Wz" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="3w1cHt2UmEj">
    <property role="3GE5qa" value="rule.argument" />
    <ref role="1M2myG" to="tpf8:3w1cHt2UcMK" resolve="TemplateArgumentQueryExpression" />
    <node concept="9S07l" id="147CB3QsUEZ" role="9Vyp8">
      <node concept="3clFbS" id="147CB3QsUF0" role="2VODD2">
        <node concept="3clFbF" id="147CB3QsUF1" role="3cqZAp">
          <node concept="2OqwBi" id="147CB3QsUF2" role="3clFbG">
            <node concept="nLn13" id="147CB3QsUF3" role="2Oq$k0" />
            <node concept="1mIQ4w" id="147CB3QsUF4" role="2OqNvi">
              <node concept="chp4Y" id="147CB3QsUF5" role="cj9EA">
                <ref role="cht4Q" to="tpf8:1vDgt48Nz4w" resolve="ITemplateCall" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="42YwEPgeQ9y">
    <property role="3GE5qa" value="rule.argument" />
    <ref role="1M2myG" to="tpf8:42YwEPgeNM8" resolve="TemplateArgumentPatternVarRefExpression" />
    <node concept="1N5Pfh" id="42YwEPgeQ9$" role="1Mr941">
      <ref role="1N5Vy1" to="tpf8:42YwEPgeNV4" resolve="patternVarDecl" />
      <node concept="3dgokm" id="5Vvmn_QkOTJ" role="1N6uqs">
        <node concept="3clFbS" id="5Vvmn_QkOTK" role="2VODD2">
          <node concept="3cpWs8" id="5Vvmn_QkOTL" role="3cqZAp">
            <node concept="3cpWsn" id="5Vvmn_QkOTM" role="3cpWs9">
              <property role="TrG5h" value="result" />
              <node concept="2I9FWS" id="5Vvmn_QkOTN" role="1tU5fm">
                <ref role="2I9WkF" to="tp3t:gyDMOuj" resolve="PatternVariableDeclaration" />
              </node>
              <node concept="2ShNRf" id="5Vvmn_QkOTO" role="33vP2m">
                <node concept="2T8Vx0" id="5Vvmn_QkOTP" role="2ShVmc">
                  <node concept="2I9FWS" id="5Vvmn_QkOTQ" role="2T96Bj">
                    <ref role="2I9WkF" to="tp3t:gyDMOuj" resolve="PatternVariableDeclaration" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5Vvmn_QkOTR" role="3cqZAp">
            <node concept="3cpWsn" id="5Vvmn_QkOTS" role="3cpWs9">
              <property role="TrG5h" value="rule" />
              <node concept="3Tqbb2" id="5Vvmn_QkOTT" role="1tU5fm">
                <ref role="ehGHo" to="tpf8:1$dcvTE4IIO" resolve="PatternReduction_MappingRule" />
              </node>
              <node concept="2OqwBi" id="5Vvmn_QkOTU" role="33vP2m">
                <node concept="2rP1CM" id="5Vvmn_QkOUn" role="2Oq$k0" />
                <node concept="2Xjw5R" id="5Vvmn_QkOTW" role="2OqNvi">
                  <node concept="1xMEDy" id="5Vvmn_QkOTX" role="1xVPHs">
                    <node concept="chp4Y" id="5Vvmn_QkOTY" role="ri$Ld">
                      <ref role="cht4Q" to="tpf8:1$dcvTE4IIO" resolve="PatternReduction_MappingRule" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="5Vvmn_QkOTZ" role="3cqZAp">
            <node concept="1Wc70l" id="5Vvmn_QkOU0" role="3clFbw">
              <node concept="2OqwBi" id="5Vvmn_QkOU1" role="3uHU7B">
                <node concept="37vLTw" id="5Vvmn_QkOU2" role="2Oq$k0">
                  <ref role="3cqZAo" node="5Vvmn_QkOTS" resolve="rule" />
                </node>
                <node concept="3x8VRR" id="5Vvmn_QkOU3" role="2OqNvi" />
              </node>
              <node concept="2OqwBi" id="5Vvmn_QkOU4" role="3uHU7w">
                <node concept="2OqwBi" id="5Vvmn_QkOU5" role="2Oq$k0">
                  <node concept="37vLTw" id="5Vvmn_QkOU6" role="2Oq$k0">
                    <ref role="3cqZAo" node="5Vvmn_QkOTS" resolve="rule" />
                  </node>
                  <node concept="3TrEf2" id="5Vvmn_QkOU7" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpf8:1$dcvTE4S$q" resolve="pattern" />
                  </node>
                </node>
                <node concept="3x8VRR" id="5Vvmn_QkOU8" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbS" id="5Vvmn_QkOU9" role="3clFbx">
              <node concept="3clFbF" id="5Vvmn_QkOUa" role="3cqZAp">
                <node concept="2OqwBi" id="5Vvmn_QkOUb" role="3clFbG">
                  <node concept="37vLTw" id="5Vvmn_QkOUc" role="2Oq$k0">
                    <ref role="3cqZAo" node="5Vvmn_QkOTM" resolve="result" />
                  </node>
                  <node concept="X8dFx" id="5Vvmn_QkOUd" role="2OqNvi">
                    <node concept="2OqwBi" id="5Vvmn_QkOUe" role="25WWJ7">
                      <node concept="2OqwBi" id="5Vvmn_QkOUf" role="2Oq$k0">
                        <node concept="37vLTw" id="5Vvmn_QkOUg" role="2Oq$k0">
                          <ref role="3cqZAo" node="5Vvmn_QkOTS" resolve="rule" />
                        </node>
                        <node concept="3TrEf2" id="5Vvmn_QkOUh" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpf8:1$dcvTE4S$q" resolve="pattern" />
                        </node>
                      </node>
                      <node concept="2Rf3mk" id="5Vvmn_QkOUi" role="2OqNvi">
                        <node concept="1xMEDy" id="5Vvmn_QkOUj" role="1xVPHs">
                          <node concept="chp4Y" id="5Vvmn_QkOUk" role="ri$Ld">
                            <ref role="cht4Q" to="tp3t:gyDMOuj" resolve="PatternVariableDeclaration" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5Vvmn_QkOUl" role="3cqZAp">
            <node concept="2YIFZM" id="5Vvmn_QkOVD" role="3clFbG">
              <ref role="37wK5l" to="o8zo:3jEbQoczdCs" resolve="forResolvableElements" />
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <node concept="37vLTw" id="5Vvmn_QkOVE" role="37wK5m">
                <ref role="3cqZAo" node="5Vvmn_QkOTM" resolve="result" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="9S07l" id="147CB3QsUF6" role="9Vyp8">
      <node concept="3clFbS" id="147CB3QsUF7" role="2VODD2">
        <node concept="3clFbF" id="147CB3QsUF8" role="3cqZAp">
          <node concept="2OqwBi" id="147CB3QsUF9" role="3clFbG">
            <node concept="nLn13" id="147CB3QsUFa" role="2Oq$k0" />
            <node concept="1mIQ4w" id="147CB3QsUFb" role="2OqNvi">
              <node concept="chp4Y" id="147CB3QsUFc" role="cj9EA">
                <ref role="cht4Q" to="tpf8:1vDgt48Nz4w" resolve="ITemplateCall" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="4bn6ZJF6_RK">
    <property role="3GE5qa" value="rule.argument" />
    <ref role="1M2myG" to="tpf8:4bn6ZJF6_RB" resolve="TemplateArgumentPropertyPatternRefExpression" />
    <node concept="1N5Pfh" id="4bn6ZJF6_RN" role="1Mr941">
      <ref role="1N5Vy1" to="tpf8:4bn6ZJF6_RD" resolve="propertyPattern" />
      <node concept="3dgokm" id="5Vvmn_QkORN" role="1N6uqs">
        <node concept="3clFbS" id="5Vvmn_QkORO" role="2VODD2">
          <node concept="3cpWs8" id="5Vvmn_QkORP" role="3cqZAp">
            <node concept="3cpWsn" id="5Vvmn_QkORQ" role="3cpWs9">
              <property role="TrG5h" value="result" />
              <node concept="2I9FWS" id="5Vvmn_QkORR" role="1tU5fm">
                <ref role="2I9WkF" to="tp3t:gyDMOul" resolve="PropertyPatternVariableDeclaration" />
              </node>
              <node concept="2ShNRf" id="5Vvmn_QkORS" role="33vP2m">
                <node concept="2T8Vx0" id="5Vvmn_QkORT" role="2ShVmc">
                  <node concept="2I9FWS" id="5Vvmn_QkORU" role="2T96Bj">
                    <ref role="2I9WkF" to="tp3t:gyDMOul" resolve="PropertyPatternVariableDeclaration" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5Vvmn_QkORV" role="3cqZAp">
            <node concept="3cpWsn" id="5Vvmn_QkORW" role="3cpWs9">
              <property role="TrG5h" value="rule" />
              <node concept="3Tqbb2" id="5Vvmn_QkORX" role="1tU5fm">
                <ref role="ehGHo" to="tpf8:1$dcvTE4IIO" resolve="PatternReduction_MappingRule" />
              </node>
              <node concept="2OqwBi" id="5Vvmn_QkORY" role="33vP2m">
                <node concept="2rP1CM" id="5Vvmn_QkOSr" role="2Oq$k0" />
                <node concept="2Xjw5R" id="5Vvmn_QkOS0" role="2OqNvi">
                  <node concept="1xMEDy" id="5Vvmn_QkOS1" role="1xVPHs">
                    <node concept="chp4Y" id="5Vvmn_QkOS2" role="ri$Ld">
                      <ref role="cht4Q" to="tpf8:1$dcvTE4IIO" resolve="PatternReduction_MappingRule" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="5Vvmn_QkOS3" role="3cqZAp">
            <node concept="1Wc70l" id="5Vvmn_QkOS4" role="3clFbw">
              <node concept="2OqwBi" id="5Vvmn_QkOS5" role="3uHU7B">
                <node concept="37vLTw" id="5Vvmn_QkOS6" role="2Oq$k0">
                  <ref role="3cqZAo" node="5Vvmn_QkORW" resolve="rule" />
                </node>
                <node concept="3x8VRR" id="5Vvmn_QkOS7" role="2OqNvi" />
              </node>
              <node concept="2OqwBi" id="5Vvmn_QkOS8" role="3uHU7w">
                <node concept="2OqwBi" id="5Vvmn_QkOS9" role="2Oq$k0">
                  <node concept="37vLTw" id="5Vvmn_QkOSa" role="2Oq$k0">
                    <ref role="3cqZAo" node="5Vvmn_QkORW" resolve="rule" />
                  </node>
                  <node concept="3TrEf2" id="5Vvmn_QkOSb" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpf8:1$dcvTE4S$q" resolve="pattern" />
                  </node>
                </node>
                <node concept="3x8VRR" id="5Vvmn_QkOSc" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbS" id="5Vvmn_QkOSd" role="3clFbx">
              <node concept="3clFbF" id="5Vvmn_QkOSe" role="3cqZAp">
                <node concept="2OqwBi" id="5Vvmn_QkOSf" role="3clFbG">
                  <node concept="37vLTw" id="5Vvmn_QkOSg" role="2Oq$k0">
                    <ref role="3cqZAo" node="5Vvmn_QkORQ" resolve="result" />
                  </node>
                  <node concept="X8dFx" id="5Vvmn_QkOSh" role="2OqNvi">
                    <node concept="2OqwBi" id="5Vvmn_QkOSi" role="25WWJ7">
                      <node concept="2OqwBi" id="5Vvmn_QkOSj" role="2Oq$k0">
                        <node concept="37vLTw" id="5Vvmn_QkOSk" role="2Oq$k0">
                          <ref role="3cqZAo" node="5Vvmn_QkORW" resolve="rule" />
                        </node>
                        <node concept="3TrEf2" id="5Vvmn_QkOSl" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpf8:1$dcvTE4S$q" resolve="pattern" />
                        </node>
                      </node>
                      <node concept="2Rf3mk" id="5Vvmn_QkOSm" role="2OqNvi">
                        <node concept="1xMEDy" id="5Vvmn_QkOSn" role="1xVPHs">
                          <node concept="chp4Y" id="5Vvmn_QkOSo" role="ri$Ld">
                            <ref role="cht4Q" to="tp3t:gyDMOul" resolve="PropertyPatternVariableDeclaration" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5Vvmn_QkOSp" role="3cqZAp">
            <node concept="2YIFZM" id="5Vvmn_QkOTH" role="3clFbG">
              <ref role="37wK5l" to="o8zo:3jEbQoczdCs" resolve="forResolvableElements" />
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <node concept="37vLTw" id="5Vvmn_QkOTI" role="37wK5m">
                <ref role="3cqZAo" node="5Vvmn_QkORQ" resolve="result" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="4bn6ZJF6_SH">
    <property role="3GE5qa" value="rule.argument" />
    <ref role="1M2myG" to="tpf8:4bn6ZJF6_RC" resolve="TemplateArgumentLinkPatternRefExpression" />
    <node concept="1N5Pfh" id="4bn6ZJF6_SI" role="1Mr941">
      <ref role="1N5Vy1" to="tpf8:4bn6ZJF6_RE" resolve="patternVar" />
      <node concept="3dgokm" id="5Vvmn_QkP0b" role="1N6uqs">
        <node concept="3clFbS" id="5Vvmn_QkP0c" role="2VODD2">
          <node concept="3cpWs8" id="5Vvmn_QkP0d" role="3cqZAp">
            <node concept="3cpWsn" id="5Vvmn_QkP0e" role="3cpWs9">
              <property role="TrG5h" value="result" />
              <node concept="2I9FWS" id="5Vvmn_QkP0f" role="1tU5fm">
                <ref role="2I9WkF" to="tp3t:gzjrplq" resolve="LinkPatternVariableDeclaration" />
              </node>
              <node concept="2ShNRf" id="5Vvmn_QkP0g" role="33vP2m">
                <node concept="2T8Vx0" id="5Vvmn_QkP0h" role="2ShVmc">
                  <node concept="2I9FWS" id="5Vvmn_QkP0i" role="2T96Bj">
                    <ref role="2I9WkF" to="tp3t:gzjrplq" resolve="LinkPatternVariableDeclaration" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5Vvmn_QkP0j" role="3cqZAp">
            <node concept="3cpWsn" id="5Vvmn_QkP0k" role="3cpWs9">
              <property role="TrG5h" value="rule" />
              <node concept="3Tqbb2" id="5Vvmn_QkP0l" role="1tU5fm">
                <ref role="ehGHo" to="tpf8:1$dcvTE4IIO" resolve="PatternReduction_MappingRule" />
              </node>
              <node concept="2OqwBi" id="5Vvmn_QkP0m" role="33vP2m">
                <node concept="2rP1CM" id="5Vvmn_QkP0N" role="2Oq$k0" />
                <node concept="2Xjw5R" id="5Vvmn_QkP0o" role="2OqNvi">
                  <node concept="1xMEDy" id="5Vvmn_QkP0p" role="1xVPHs">
                    <node concept="chp4Y" id="5Vvmn_QkP0q" role="ri$Ld">
                      <ref role="cht4Q" to="tpf8:1$dcvTE4IIO" resolve="PatternReduction_MappingRule" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="5Vvmn_QkP0r" role="3cqZAp">
            <node concept="1Wc70l" id="5Vvmn_QkP0s" role="3clFbw">
              <node concept="2OqwBi" id="5Vvmn_QkP0t" role="3uHU7B">
                <node concept="37vLTw" id="5Vvmn_QkP0u" role="2Oq$k0">
                  <ref role="3cqZAo" node="5Vvmn_QkP0k" resolve="rule" />
                </node>
                <node concept="3x8VRR" id="5Vvmn_QkP0v" role="2OqNvi" />
              </node>
              <node concept="2OqwBi" id="5Vvmn_QkP0w" role="3uHU7w">
                <node concept="2OqwBi" id="5Vvmn_QkP0x" role="2Oq$k0">
                  <node concept="37vLTw" id="5Vvmn_QkP0y" role="2Oq$k0">
                    <ref role="3cqZAo" node="5Vvmn_QkP0k" resolve="rule" />
                  </node>
                  <node concept="3TrEf2" id="5Vvmn_QkP0z" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpf8:1$dcvTE4S$q" resolve="pattern" />
                  </node>
                </node>
                <node concept="3x8VRR" id="5Vvmn_QkP0$" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbS" id="5Vvmn_QkP0_" role="3clFbx">
              <node concept="3clFbF" id="5Vvmn_QkP0A" role="3cqZAp">
                <node concept="2OqwBi" id="5Vvmn_QkP0B" role="3clFbG">
                  <node concept="37vLTw" id="5Vvmn_QkP0C" role="2Oq$k0">
                    <ref role="3cqZAo" node="5Vvmn_QkP0e" resolve="result" />
                  </node>
                  <node concept="X8dFx" id="5Vvmn_QkP0D" role="2OqNvi">
                    <node concept="2OqwBi" id="5Vvmn_QkP0E" role="25WWJ7">
                      <node concept="2OqwBi" id="5Vvmn_QkP0F" role="2Oq$k0">
                        <node concept="37vLTw" id="5Vvmn_QkP0G" role="2Oq$k0">
                          <ref role="3cqZAo" node="5Vvmn_QkP0k" resolve="rule" />
                        </node>
                        <node concept="3TrEf2" id="5Vvmn_QkP0H" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpf8:1$dcvTE4S$q" resolve="pattern" />
                        </node>
                      </node>
                      <node concept="2Rf3mk" id="5Vvmn_QkP0I" role="2OqNvi">
                        <node concept="1xMEDy" id="5Vvmn_QkP0J" role="1xVPHs">
                          <node concept="chp4Y" id="5Vvmn_QkP0K" role="ri$Ld">
                            <ref role="cht4Q" to="tp3t:gzjrplq" resolve="LinkPatternVariableDeclaration" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5Vvmn_QkP0L" role="3cqZAp">
            <node concept="2YIFZM" id="5Vvmn_QkP25" role="3clFbG">
              <ref role="37wK5l" to="o8zo:3jEbQoczdCs" resolve="forResolvableElements" />
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <node concept="37vLTw" id="5Vvmn_QkP26" role="37wK5m">
                <ref role="3cqZAo" node="5Vvmn_QkP0e" resolve="result" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="6SPT5KYquNH">
    <property role="3GE5qa" value="parameter" />
    <ref role="1M2myG" to="tpf8:$79JWCfbYa" resolve="GeneratorParameterReference" />
    <node concept="1N5Pfh" id="6SPT5KYq$hO" role="1Mr941">
      <ref role="1N5Vy1" to="tpf8:$79JWCfbYc" resolve="declaration" />
    </node>
  </node>
  <node concept="1M2fIO" id="4lQlo5quodY">
    <property role="3GE5qa" value="rule.argument" />
    <ref role="1M2myG" to="tpf8:4lQlo5qukTT" resolve="TemplateArgumentParameterExpression" />
    <node concept="1N5Pfh" id="4lQlo5quodZ" role="1Mr941">
      <ref role="1N5Vy1" to="tpf8:4lQlo5qukTU" resolve="parameter" />
      <node concept="3dgokm" id="5Vvmn_QkP2R" role="1N6uqs">
        <node concept="3clFbS" id="5Vvmn_QkP2S" role="2VODD2">
          <node concept="3clFbJ" id="5Vvmn_QkP2T" role="3cqZAp">
            <node concept="3clFbS" id="5Vvmn_QkP2U" role="3clFbx">
              <node concept="3cpWs6" id="5Vvmn_QkP2V" role="3cqZAp">
                <node concept="2YIFZM" id="5Vvmn_QkP4Q" role="3cqZAk">
                  <ref role="37wK5l" to="o8zo:3jEbQoczdCs" resolve="forResolvableElements" />
                  <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                  <node concept="2OqwBi" id="5Vvmn_QkP4R" role="37wK5m">
                    <node concept="1PxgMI" id="5Vvmn_QkP4S" role="2Oq$k0">
                      <node concept="2OqwBi" id="5Vvmn_QkP4T" role="1m5AlR">
                        <node concept="2rP1CM" id="5Vvmn_QkP4U" role="2Oq$k0" />
                        <node concept="2Rxl7S" id="5Vvmn_QkP4V" role="2OqNvi" />
                      </node>
                      <node concept="chp4Y" id="5Vvmn_QkP4W" role="3oSUPX">
                        <ref role="cht4Q" to="tpf8:QzR6ThdYAL" resolve="IParameterizedTemplate" />
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="5Vvmn_QkP4X" role="2OqNvi">
                      <ref role="3TtcxE" to="tpf8:QzR6ThdYDm" resolve="parameter" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="5Vvmn_QkP33" role="3clFbw">
              <node concept="2OqwBi" id="5Vvmn_QkP34" role="2Oq$k0">
                <node concept="2rP1CM" id="5Vvmn_QkP3e" role="2Oq$k0" />
                <node concept="2Rxl7S" id="5Vvmn_QkP36" role="2OqNvi" />
              </node>
              <node concept="1mIQ4w" id="5Vvmn_QkP37" role="2OqNvi">
                <node concept="chp4Y" id="5Vvmn_QkP38" role="cj9EA">
                  <ref role="cht4Q" to="tpf8:QzR6ThdYAL" resolve="IParameterizedTemplate" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5Vvmn_QkP39" role="3cqZAp">
            <node concept="2YIFZM" id="5Vvmn_QkP54" role="3clFbG">
              <ref role="37wK5l" to="o8zo:3jEbQoczdCs" resolve="forResolvableElements" />
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <node concept="2ShNRf" id="5Vvmn_QkP55" role="37wK5m">
                <node concept="2T8Vx0" id="5Vvmn_QkP56" role="2ShVmc">
                  <node concept="2I9FWS" id="5Vvmn_QkP57" role="2T96Bj">
                    <ref role="2I9WkF" to="tpf8:1$dcvTE2mbA" resolve="TemplateParameterDeclaration" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="4YDZ92cLOVd">
    <property role="TrG5h" value="MappingRuleTemplateNodeSearchScope" />
    <node concept="3uibUv" id="oIXu13GROv" role="1zkMxy">
      <ref role="3uigEE" to="o8zo:VXQuBhO0U" resolve="ModelsScope" />
    </node>
    <node concept="3clFbW" id="4YDZ92cLOVq" role="jymVt">
      <node concept="3Tm1VV" id="4YDZ92cLOVr" role="1B3o_S" />
      <node concept="3cqZAl" id="4YDZ92cLOVs" role="3clF45" />
      <node concept="37vLTG" id="4YDZ92cLOVt" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="4YDZ92cLOVu" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="3clFbS" id="4YDZ92cLOVx" role="3clF47">
        <node concept="3SKdUt" id="oIXu13H1Gr" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXnVy1" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXnVy2" role="1PaTwD">
              <property role="3oM_SC" value="any" />
            </node>
            <node concept="3oM_SD" id="ATZLwXnVy3" role="1PaTwD">
              <property role="3oM_SC" value="named" />
            </node>
            <node concept="3oM_SD" id="ATZLwXnVy4" role="1PaTwD">
              <property role="3oM_SC" value="node" />
            </node>
            <node concept="3oM_SD" id="ATZLwXnVy5" role="1PaTwD">
              <property role="3oM_SC" value="(restriction" />
            </node>
            <node concept="3oM_SD" id="ATZLwXnVy6" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="ATZLwXnVy7" role="1PaTwD">
              <property role="3oM_SC" value="rule" />
            </node>
            <node concept="3oM_SD" id="ATZLwXnVy8" role="1PaTwD">
              <property role="3oM_SC" value="target" />
            </node>
            <node concept="3oM_SD" id="ATZLwXnVy9" role="1PaTwD">
              <property role="3oM_SC" value="link)" />
            </node>
            <node concept="3oM_SD" id="ATZLwXnVya" role="1PaTwD">
              <property role="3oM_SC" value="inside" />
            </node>
            <node concept="3oM_SD" id="ATZLwXnVyb" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="ATZLwXnVyc" role="1PaTwD">
              <property role="3oM_SC" value="visible" />
            </node>
            <node concept="3oM_SD" id="ATZLwXnVyd" role="1PaTwD">
              <property role="3oM_SC" value="generator" />
            </node>
            <node concept="3oM_SD" id="ATZLwXnVye" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
          </node>
        </node>
        <node concept="XkiVB" id="oIXu13GWWt" role="3cqZAp">
          <ref role="37wK5l" to="o8zo:4k9eBec$Bew" resolve="ModelsScope" />
          <node concept="2OqwBi" id="oIXu13GTxD" role="37wK5m">
            <node concept="3zZkjj" id="oIXu13GVpC" role="2OqNvi">
              <node concept="1bVj0M" id="oIXu13GVpE" role="23t8la">
                <node concept="3clFbS" id="oIXu13GVpF" role="1bW5cS">
                  <node concept="3clFbF" id="oIXu13GV_8" role="3cqZAp">
                    <node concept="2YIFZM" id="oIXu13GVGr" role="3clFbG">
                      <ref role="1Pybhc" to="w1kc:~SModelStereotype" resolve="SModelStereotype" />
                      <ref role="37wK5l" to="w1kc:~SModelStereotype.isGeneratorModel(org.jetbrains.mps.openapi.model.SModel)" resolve="isGeneratorModel" />
                      <node concept="37vLTw" id="oIXu13GVPJ" role="37wK5m">
                        <ref role="3cqZAo" node="5W7E4fV0Wed" resolve="it" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="5W7E4fV0Wed" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="5W7E4fV0Wee" role="1tU5fm" />
                </node>
              </node>
            </node>
            <node concept="1eOMI4" id="6cbc01IP2t9" role="2Oq$k0">
              <node concept="10QFUN" id="6cbc01IP2zg" role="1eOMHV">
                <node concept="A3Dl8" id="6cbc01IP2E1" role="10QFUM">
                  <node concept="H_c77" id="6cbc01IP2I9" role="A3Ik2" />
                </node>
                <node concept="2OqwBi" id="6cbc01IOZ1P" role="10QFUP">
                  <node concept="2ShNRf" id="6cbc01IOXhi" role="2Oq$k0">
                    <node concept="1pGfFk" id="6cbc01IOXxR" role="2ShVmc">
                      <ref role="37wK5l" to="o8zo:4k9eBec$QVW" resolve="ModelPlusImportedScope" />
                      <node concept="37vLTw" id="6cbc01IOXKa" role="37wK5m">
                        <ref role="3cqZAo" node="4YDZ92cLOVt" resolve="model" />
                      </node>
                      <node concept="3clFbT" id="6cbc01IOY9I" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                      <node concept="10Nm6u" id="6cbc01IOYy9" role="37wK5m" />
                    </node>
                  </node>
                  <node concept="liA8E" id="6cbc01IOZqP" role="2OqNvi">
                    <ref role="37wK5l" to="o8zo:66auKH9r8yH" resolve="getModels" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbT" id="oIXu13GXAR" role="37wK5m">
            <property role="3clFbU" value="true" />
          </node>
          <node concept="10Nm6u" id="5pxHGHAFDcz" role="37wK5m" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="QzR6Tht7mw">
    <property role="3GE5qa" value="macro" />
    <ref role="1M2myG" to="tpf8:QzR6Tht7mj" resolve="TemplateSwitchMacro" />
    <node concept="1N5Pfh" id="QzR6Ti2cS_" role="1Mr941">
      <ref role="1N5Vy1" to="tpf8:1vDgt48Nz5N" resolve="template" />
      <node concept="3dgokm" id="5Vvmn_QkP5j" role="1N6uqs">
        <node concept="3clFbS" id="5Vvmn_QkP5k" role="2VODD2">
          <node concept="3clFbF" id="5Vvmn_QkP5l" role="3cqZAp">
            <node concept="2ShNRf" id="5Vvmn_QkP5m" role="3clFbG">
              <node concept="1pGfFk" id="5Vvmn_QkP5n" role="2ShVmc">
                <ref role="37wK5l" to="o8zo:4k9eBec$QVW" resolve="ModelPlusImportedScope" />
                <node concept="2OqwBi" id="5Vvmn_QkP5r" role="37wK5m">
                  <node concept="2rP1CM" id="5Vvmn_QkP5s" role="2Oq$k0" />
                  <node concept="I4A8Y" id="5Vvmn_QkP5t" role="2OqNvi" />
                </node>
                <node concept="3clFbT" id="5Vvmn_QkP5p" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
                <node concept="35c_gC" id="5Vvmn_QkP5q" role="37wK5m">
                  <ref role="35c_gD" to="tpf8:gcjVnq8" resolve="TemplateSwitch" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="QzR6ThtQat">
    <property role="3GE5qa" value="macro" />
    <ref role="1M2myG" to="tpf8:1jRYachIf5f" resolve="TemplateCallMacro" />
    <node concept="1N5Pfh" id="QzR6Ti2cI3" role="1Mr941">
      <ref role="1N5Vy1" to="tpf8:1vDgt48Nz5N" resolve="template" />
      <node concept="3dgokm" id="5Vvmn_QkOVF" role="1N6uqs">
        <node concept="3clFbS" id="5Vvmn_QkOVG" role="2VODD2">
          <node concept="3clFbF" id="5Vvmn_QkOVH" role="3cqZAp">
            <node concept="2ShNRf" id="5Vvmn_QkOVI" role="3clFbG">
              <node concept="1pGfFk" id="5Vvmn_QkOVJ" role="2ShVmc">
                <ref role="37wK5l" to="o8zo:4k9eBec$QVW" resolve="ModelPlusImportedScope" />
                <node concept="2OqwBi" id="5Vvmn_QkOVN" role="37wK5m">
                  <node concept="2rP1CM" id="5Vvmn_QkOVO" role="2Oq$k0" />
                  <node concept="I4A8Y" id="5Vvmn_QkOVP" role="2OqNvi" />
                </node>
                <node concept="3clFbT" id="5Vvmn_QkOVL" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
                <node concept="35c_gC" id="5Vvmn_QkOVM" role="37wK5m">
                  <ref role="35c_gD" to="tpf8:fT3MO7g" resolve="TemplateDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="QzR6ThtQW9">
    <property role="3GE5qa" value="rule.consequence" />
    <ref role="1M2myG" to="tpf8:h0j$61m" resolve="TemplateDeclarationReference" />
    <node concept="1N5Pfh" id="QzR6Ti2cyD" role="1Mr941">
      <ref role="1N5Vy1" to="tpf8:1vDgt48Nz5N" resolve="template" />
      <node concept="3dgokm" id="5Vvmn_QkP58" role="1N6uqs">
        <node concept="3clFbS" id="5Vvmn_QkP59" role="2VODD2">
          <node concept="3clFbF" id="5Vvmn_QkP5a" role="3cqZAp">
            <node concept="2ShNRf" id="5Vvmn_QkP5b" role="3clFbG">
              <node concept="1pGfFk" id="5Vvmn_QkP5c" role="2ShVmc">
                <ref role="37wK5l" to="o8zo:4k9eBec$QVW" resolve="ModelPlusImportedScope" />
                <node concept="2OqwBi" id="5Vvmn_QkP5g" role="37wK5m">
                  <node concept="2rP1CM" id="5Vvmn_QkP5h" role="2Oq$k0" />
                  <node concept="I4A8Y" id="5Vvmn_QkP5i" role="2OqNvi" />
                </node>
                <node concept="3clFbT" id="5Vvmn_QkP5e" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
                <node concept="35c_gC" id="5Vvmn_QkP5f" role="37wK5m">
                  <ref role="35c_gD" to="tpf8:fT3MO7g" resolve="TemplateDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="55eznTdJrgJ">
    <ref role="1M2myG" to="tpf8:gcjVnq8" resolve="TemplateSwitch" />
    <node concept="EnEH3" id="4B_nWyeMFZe" role="1MhHOB">
      <ref role="EomxK" to="tpf8:1zGVNdDoES9" resolve="needCallSite" />
      <node concept="Eqf_E" id="4B_nWyeMFZj" role="EtsB7">
        <node concept="3clFbS" id="4B_nWyeMFZk" role="2VODD2">
          <node concept="3clFbJ" id="4B_nWyeMG3d" role="3cqZAp">
            <node concept="2OqwBi" id="4B_nWyeMH1J" role="3clFbw">
              <node concept="2OqwBi" id="4B_nWyeMG_G" role="2Oq$k0">
                <node concept="EsrRn" id="4B_nWyeMGpg" role="2Oq$k0" />
                <node concept="3TrEf2" id="4B_nWyeMGU7" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpf8:gcphYgk" resolve="modifiedSwitch" />
                </node>
              </node>
              <node concept="3x8VRR" id="4B_nWyeMH5t" role="2OqNvi" />
            </node>
            <node concept="3clFbS" id="4B_nWyeMG3f" role="3clFbx">
              <node concept="3cpWs6" id="4B_nWyeMJpv" role="3cqZAp">
                <node concept="2OqwBi" id="4B_nWyeMHEi" role="3cqZAk">
                  <node concept="2OqwBi" id="4B_nWyeMH8J" role="2Oq$k0">
                    <node concept="EsrRn" id="4B_nWyeMH8g" role="2Oq$k0" />
                    <node concept="3TrEf2" id="4B_nWyeMHnT" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpf8:gcphYgk" resolve="modifiedSwitch" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="4B_nWyeMHIe" role="2OqNvi">
                    <ref role="3TsBF5" to="tpf8:1zGVNdDoES9" resolve="needCallSite" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="4B_nWyeMJ7O" role="3cqZAp">
            <node concept="2OqwBi" id="4B_nWyeMINS" role="3cqZAk">
              <node concept="EsrRn" id="4B_nWyeMIzJ" role="2Oq$k0" />
              <node concept="3TrcHB" id="4B_nWyeMJ1U" role="2OqNvi">
                <ref role="3TsBF5" to="tpf8:1zGVNdDoES9" resolve="needCallSite" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1LLf8_" id="4B_nWyeMHNs" role="1LXaQT">
        <node concept="3clFbS" id="4B_nWyeMHNt" role="2VODD2">
          <node concept="3clFbJ" id="4B_nWyeMHOt" role="3cqZAp">
            <node concept="2OqwBi" id="4B_nWyeMIj_" role="3clFbw">
              <node concept="2OqwBi" id="4B_nWyeMI0Z" role="2Oq$k0">
                <node concept="EsrRn" id="4B_nWyeMHOQ" role="2Oq$k0" />
                <node concept="3TrEf2" id="4B_nWyeMIee" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpf8:gcphYgk" resolve="modifiedSwitch" />
                </node>
              </node>
              <node concept="3x8VRR" id="4B_nWyeMInd" role="2OqNvi" />
            </node>
            <node concept="3clFbS" id="4B_nWyeMHOv" role="3clFbx">
              <node concept="3cpWs6" id="4B_nWyeMIpU" role="3cqZAp" />
            </node>
          </node>
          <node concept="3clFbF" id="4B_nWyeMLTx" role="3cqZAp">
            <node concept="37vLTI" id="4B_nWyeMMi1" role="3clFbG">
              <node concept="1Wqviy" id="4B_nWyeMMnj" role="37vLTx" />
              <node concept="2OqwBi" id="4B_nWyeMM3B" role="37vLTJ">
                <node concept="EsrRn" id="4B_nWyeMLTw" role="2Oq$k0" />
                <node concept="3TrcHB" id="4B_nWyeMMJ0" role="2OqNvi">
                  <ref role="3TsBF5" to="tpf8:1zGVNdDoES9" resolve="needCallSite" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1N5Pfh" id="55eznTdJrz2" role="1Mr941">
      <ref role="1N5Vy1" to="tpf8:gcphYgk" resolve="modifiedSwitch" />
      <node concept="3dgokm" id="5Vvmn_QkP27" role="1N6uqs">
        <node concept="3clFbS" id="5Vvmn_QkP28" role="2VODD2">
          <node concept="3clFbF" id="5Vvmn_QkP29" role="3cqZAp">
            <node concept="2ShNRf" id="5Vvmn_QkP2a" role="3clFbG">
              <node concept="1pGfFk" id="5Vvmn_QkP2b" role="2ShVmc">
                <ref role="37wK5l" to="o8zo:4k9eBec$QVW" resolve="ModelPlusImportedScope" />
                <node concept="2OqwBi" id="5Vvmn_QkP2f" role="37wK5m">
                  <node concept="2rP1CM" id="5Vvmn_QkP2g" role="2Oq$k0" />
                  <node concept="I4A8Y" id="5Vvmn_QkP2h" role="2OqNvi" />
                </node>
                <node concept="3clFbT" id="5Vvmn_QkP2d" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
                <node concept="35c_gC" id="5Vvmn_QkP2e" role="37wK5m">
                  <ref role="35c_gD" to="tpf8:gcjVnq8" resolve="TemplateSwitch" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="7u6$QPxIvZh">
    <property role="3GE5qa" value="rule" />
    <ref role="1M2myG" to="tpf8:7u6$QPxIdFU" resolve="ReferenceReductionRule" />
    <node concept="1N5Pfh" id="7u6$QPxIvZi" role="1Mr941">
      <ref role="1N5Vy1" to="tpf8:7u6$QPxIdFX" resolve="link" />
      <node concept="3dgokm" id="7u6$QPxIvZm" role="1N6uqs">
        <node concept="3clFbS" id="7u6$QPxIvZo" role="2VODD2">
          <node concept="3clFbF" id="3WrGJHz00IX" role="3cqZAp">
            <node concept="2ShNRf" id="3WrGJHz00IT" role="3clFbG">
              <node concept="YeOm9" id="3WrGJHz03Fs" role="2ShVmc">
                <node concept="1Y3b0j" id="3WrGJHz03Fv" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="o8zo:3rV3sBXetA0" resolve="FilteringScope" />
                  <ref role="37wK5l" to="o8zo:3rV3sBXetA2" resolve="FilteringScope" />
                  <node concept="2ShNRf" id="7u6$QPxIwkI" role="37wK5m">
                    <node concept="1pGfFk" id="3WrGJHz067e" role="2ShVmc">
                      <ref role="37wK5l" to="o8zo:4k9eBec$QVW" resolve="ModelPlusImportedScope" />
                      <node concept="2OqwBi" id="7u6$QPxIyRj" role="37wK5m">
                        <node concept="2rP1CM" id="7u6$QPxIyGB" role="2Oq$k0" />
                        <node concept="I4A8Y" id="7u6$QPxIz0A" role="2OqNvi" />
                      </node>
                      <node concept="3clFbT" id="7u6$QPxIzJf" role="37wK5m">
                        <property role="3clFbU" value="false" />
                      </node>
                      <node concept="35c_gC" id="7u6$QPxIzYe" role="37wK5m">
                        <ref role="35c_gD" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                      </node>
                    </node>
                  </node>
                  <node concept="3Tm1VV" id="3WrGJHz03Fw" role="1B3o_S" />
                  <node concept="2tJIrI" id="3WrGJHz03WO" role="jymVt" />
                  <node concept="3clFb_" id="3WrGJHz04dR" role="jymVt">
                    <property role="TrG5h" value="isExcluded" />
                    <property role="1EzhhJ" value="false" />
                    <node concept="10P_77" id="3WrGJHz04dS" role="3clF45" />
                    <node concept="3Tm1VV" id="3WrGJHz04dT" role="1B3o_S" />
                    <node concept="37vLTG" id="3WrGJHz04dX" role="3clF46">
                      <property role="TrG5h" value="node" />
                      <node concept="3Tqbb2" id="3WrGJHz04dY" role="1tU5fm" />
                    </node>
                    <node concept="3clFbS" id="3WrGJHz04e0" role="3clF47">
                      <node concept="3clFbF" id="3WrGJHz04xG" role="3cqZAp">
                        <node concept="3fqX7Q" id="3WrGJHz04TS" role="3clFbG">
                          <node concept="2OqwBi" id="3WrGJHz04TU" role="3fr31v">
                            <node concept="2OqwBi" id="3WrGJHz04TV" role="2Oq$k0">
                              <node concept="1PxgMI" id="3WrGJHz04TW" role="2Oq$k0">
                                <property role="1BlNFB" value="true" />
                                <node concept="chp4Y" id="3WrGJHz04TX" role="3oSUPX">
                                  <ref role="cht4Q" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                                </node>
                                <node concept="37vLTw" id="3WrGJHz04TY" role="1m5AlR">
                                  <ref role="3cqZAo" node="3WrGJHz04dX" resolve="node" />
                                </node>
                              </node>
                              <node concept="3TrcHB" id="3WrGJHz04TZ" role="2OqNvi">
                                <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                              </node>
                            </node>
                            <node concept="21noJN" id="3Ftr4R8p_Zu" role="2OqNvi">
                              <node concept="21nZrQ" id="3Ftr4R8p_Zv" role="21noJM">
                                <ref role="21nZrZ" to="tpce:3Ftr4R6BFyn" resolve="reference" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="3WrGJHz04e1" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1N5Pfh" id="sLrzzejHvF" role="1Mr941">
      <ref role="1N5Vy1" to="tpf8:sLrzzejGPA" resolve="applicableConcept" />
      <node concept="3dgokm" id="sLrzzejHWr" role="1N6uqs">
        <node concept="3clFbS" id="sLrzzejHWt" role="2VODD2">
          <node concept="3clFbJ" id="sLrzzejIhN" role="3cqZAp">
            <node concept="3clFbC" id="sLrzzejIF0" role="3clFbw">
              <node concept="10Nm6u" id="sLrzzejIFa" role="3uHU7w" />
              <node concept="3kakTB" id="sLrzzejIkO" role="3uHU7B" />
            </node>
            <node concept="3clFbS" id="sLrzzejIhP" role="3clFbx">
              <node concept="3cpWs6" id="sLrzzejIIg" role="3cqZAp">
                <node concept="2ShNRf" id="sLrzzejILw" role="3cqZAk">
                  <node concept="1pGfFk" id="sLrzzejKKX" role="2ShVmc">
                    <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="sLrzzejOdo" role="3cqZAp">
            <node concept="3cpWsn" id="sLrzzejOdp" role="3cpWs9">
              <property role="TrG5h" value="linkOwner" />
              <property role="3TUv4t" value="true" />
              <node concept="3Tqbb2" id="4UTtJHKndji" role="1tU5fm">
                <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
              </node>
              <node concept="2OqwBi" id="sLrzzejOdq" role="33vP2m">
                <node concept="2OqwBi" id="sLrzzejOdr" role="2Oq$k0">
                  <node concept="3kakTB" id="sLrzzejOds" role="2Oq$k0" />
                  <node concept="3TrEf2" id="sLrzzejOdt" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpf8:7u6$QPxIdFX" resolve="link" />
                  </node>
                </node>
                <node concept="3zqWPK" id="70OdufORgSg" role="2OqNvi">
                  <ref role="37wK5l" to="tpcn:7jb4LXpbWaP" resolve="getConceptDeclaration" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="sLrzzekYWk" role="3cqZAp" />
          <node concept="3cpWs6" id="sLrzzekZKA" role="3cqZAp">
            <node concept="2ShNRf" id="sLrzzel0aW" role="3cqZAk">
              <node concept="YeOm9" id="sLrzzel6GT" role="2ShVmc">
                <node concept="1Y3b0j" id="sLrzzel6GW" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="o8zo:3rV3sBXetA0" resolve="FilteringScope" />
                  <ref role="37wK5l" to="o8zo:3rV3sBXetA2" resolve="FilteringScope" />
                  <node concept="3Tm1VV" id="sLrzzel6GX" role="1B3o_S" />
                  <node concept="2ShNRf" id="sLrzzel1lI" role="37wK5m">
                    <node concept="1pGfFk" id="sLrzzel24Z" role="2ShVmc">
                      <ref role="37wK5l" to="o8zo:4k9eBec$QVW" resolve="ModelPlusImportedScope" />
                      <node concept="2OqwBi" id="sLrzzel2Xw" role="37wK5m">
                        <node concept="2rP1CM" id="sLrzzel2$$" role="2Oq$k0" />
                        <node concept="I4A8Y" id="sLrzzel3xQ" role="2OqNvi" />
                      </node>
                      <node concept="3clFbT" id="sLrzzel4x8" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                      <node concept="35c_gC" id="sLrzzel5wE" role="37wK5m">
                        <ref role="35c_gD" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFb_" id="sLrzzel7kA" role="jymVt">
                    <property role="TrG5h" value="isExcluded" />
                    <property role="1EzhhJ" value="false" />
                    <node concept="10P_77" id="sLrzzel7kB" role="3clF45" />
                    <node concept="3Tm1VV" id="sLrzzel7kC" role="1B3o_S" />
                    <node concept="37vLTG" id="sLrzzel7kG" role="3clF46">
                      <property role="TrG5h" value="node" />
                      <node concept="3Tqbb2" id="sLrzzel7kH" role="1tU5fm">
                        <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="sLrzzel7kJ" role="3clF47">
                      <node concept="3clFbF" id="sLrzzel88f" role="3cqZAp">
                        <node concept="3fqX7Q" id="sLrzzelae8" role="3clFbG">
                          <node concept="2OqwBi" id="sLrzzelaea" role="3fr31v">
                            <node concept="37vLTw" id="sLrzzelaeb" role="2Oq$k0">
                              <ref role="3cqZAo" node="sLrzzel7kG" resolve="node" />
                            </node>
                            <node concept="3zqWPK" id="70OdufORgSi" role="2OqNvi">
                              <ref role="37wK5l" to="tpcn:73yVtVlWOga" resolve="isSubconceptOf" />
                              <node concept="37vLTw" id="70OdufORgSk" role="37wK5m">
                                <ref role="3cqZAo" node="sLrzzejOdp" resolve="linkOwner" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="sLrzzel7kK" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
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
  <node concept="1M2fIO" id="UesZ_or5ti">
    <property role="3GE5qa" value="rule.argument" />
    <ref role="1M2myG" to="tpf8:UesZ_oiISf" resolve="TemplateArgumentVarRefExpression2" />
    <node concept="1N5Pfh" id="UesZ_or5tj" role="1Mr941">
      <ref role="1N5Vy1" to="tpf8:UesZ_oiISg" resolve="vardecl" />
      <node concept="1dDu$B" id="UesZ_or5tl" role="1N6uqs">
        <ref role="1dDu$A" to="tpf8:UesZ_nZ2I6" resolve="VarDeclaration" />
      </node>
    </node>
  </node>
  <node concept="3Oh7Pa" id="7avQ3IO$Ngd">
    <property role="3GE5qa" value="macro" />
    <ref role="3Oh7Pe" to="tpf8:4B_nWyeQsel" resolve="InsertCallSiteMacro" />
    <node concept="3OnDbq" id="7avQ3IO$Nky" role="3Oh7Pb">
      <ref role="3OnDbs" to="prp3:6X8eyFnbIRR" resolve="CanBeChild" />
      <node concept="3QlHBw" id="7avQ3IO$OST" role="3OnDbr">
        <property role="TrG5h" value="root" />
        <node concept="3Tqbb2" id="7avQ3IO$OTj" role="3RXm0Z" />
        <node concept="2K0Yjh" id="7avQ3IO$OSX" role="2K0Fub">
          <node concept="2OqwBi" id="7avQ3IO$OeW" role="2K0yoH">
            <node concept="3QpRc$" id="7avQ3IO$O6M" role="2Oq$k0">
              <ref role="3QpVTF" to="prp3:yXuRM1RLuH" resolve="parentNode" />
            </node>
            <node concept="2Rxl7S" id="7avQ3IO$OkH" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="1DCEPf" id="7avQ3IO$Nk_" role="3OnDbr">
        <node concept="3Qq5Rn" id="7avQ3IO$NkA" role="2j4cqI">
          <property role="EcuMT" value="8259557992564995366" />
          <property role="TrG5h" value="inTemplate" />
          <node concept="2K0Yjh" id="7avQ3IO$NkB" role="2K0Fuo">
            <node concept="2OqwBi" id="7avQ3IO$PG4" role="2K0yoH">
              <node concept="1PxgMI" id="7avQ3IO$Puq" role="2Oq$k0">
                <node concept="chp4Y" id="7avQ3IO$Pvi" role="3oSUPX">
                  <ref role="cht4Q" to="tpf8:QzR6ThdYAL" resolve="IParameterizedTemplate" />
                </node>
                <node concept="3QpRc$" id="7avQ3IO$OXO" role="1m5AlR">
                  <ref role="3QpVTF" node="7avQ3IO$OST" resolve="root" />
                </node>
              </node>
              <node concept="3TrcHB" id="7avQ3IO$PPh" role="2OqNvi">
                <ref role="3TsBF5" to="tpf8:1zGVNdDoES9" resolve="needCallSite" />
              </node>
            </node>
          </node>
          <node concept="25XGhA" id="7avQ3IO_46I" role="2RBc8G">
            <node concept="2K0Yjh" id="7avQ3IO_46J" role="2K0D5Q">
              <node concept="2OqwBi" id="7avQ3IO_4jN" role="2K0yoH">
                <node concept="3QpRc$" id="7avQ3IO_4bG" role="2Oq$k0">
                  <ref role="3QpVTF" node="7avQ3IO$OST" resolve="root" />
                </node>
                <node concept="1mIQ4w" id="7avQ3IO_4pz" role="2OqNvi">
                  <node concept="chp4Y" id="7avQ3IO_4rn" role="cj9EA">
                    <ref role="cht4Q" to="tpf8:fT3MO7g" resolve="TemplateDeclaration" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DCEQD" id="7avQ3IO$NkD" role="1DCEQI">
          <node concept="16I2mz" id="7avQ3IO$Yjh" role="16N$OO">
            <node concept="16N$OT" id="7avQ3IO$Yji" role="16I2mt">
              <property role="16N$OU" value="Template shall request call site to use this macro" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1DCEPf" id="7avQ3IO_4$b" role="3OnDbr">
        <node concept="3Qq5Rn" id="7avQ3IO_4$c" role="2j4cqI">
          <property role="EcuMT" value="8259557992565065996" />
          <property role="TrG5h" value="inSwitch" />
          <node concept="2K0Yjh" id="7avQ3IO_4$d" role="2K0Fuo">
            <node concept="2OqwBi" id="7avQ3IO_4$e" role="2K0yoH">
              <node concept="1PxgMI" id="7avQ3IO_4$f" role="2Oq$k0">
                <node concept="chp4Y" id="7avQ3IO_4$g" role="3oSUPX">
                  <ref role="cht4Q" to="tpf8:QzR6ThdYAL" resolve="IParameterizedTemplate" />
                </node>
                <node concept="3QpRc$" id="7avQ3IO_4$h" role="1m5AlR">
                  <ref role="3QpVTF" node="7avQ3IO$OST" resolve="root" />
                </node>
              </node>
              <node concept="3TrcHB" id="7avQ3IO_4$i" role="2OqNvi">
                <ref role="3TsBF5" to="tpf8:1zGVNdDoES9" resolve="needCallSite" />
              </node>
            </node>
          </node>
          <node concept="25XGhA" id="7avQ3IO_4$j" role="2RBc8G">
            <node concept="2K0Yjh" id="7avQ3IO_4$k" role="2K0D5Q">
              <node concept="2OqwBi" id="7avQ3IO_4$l" role="2K0yoH">
                <node concept="3QpRc$" id="7avQ3IO_4$m" role="2Oq$k0">
                  <ref role="3QpVTF" node="7avQ3IO$OST" resolve="root" />
                </node>
                <node concept="1mIQ4w" id="7avQ3IO_4$n" role="2OqNvi">
                  <node concept="chp4Y" id="7avQ3IO_4Gb" role="cj9EA">
                    <ref role="cht4Q" to="tpf8:gcjVnq8" resolve="TemplateSwitch" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DCEQD" id="7avQ3IO_4$p" role="1DCEQI">
          <node concept="16I2mz" id="7avQ3IO_4$q" role="16N$OO">
            <node concept="16N$OT" id="7avQ3IO_4$r" role="16I2mt">
              <property role="16N$OU" value="Switch shall request call site to use this macro" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="2vVmcK3ijrw">
    <property role="3GE5qa" value="macro.namespace" />
    <ref role="1M2myG" to="tpf8:2vVmcK3ii_Y" resolve="AbstractNodeMacroNamespace" />
    <node concept="9S07l" id="2vVmcK3ijrx" role="9Vyp8">
      <node concept="3clFbS" id="2vVmcK3ijry" role="2VODD2">
        <node concept="3cpWs8" id="1jlY2aieGel" role="3cqZAp">
          <node concept="3cpWsn" id="1jlY2aieGem" role="3cpWs9">
            <property role="TrG5h" value="templateQueryAncestor" />
            <node concept="3Tqbb2" id="1jlY2aieGdR" role="1tU5fm">
              <ref role="ehGHo" to="tpf8:hHd3awK" resolve="TemplateQueryBase" />
            </node>
            <node concept="2OqwBi" id="1jlY2aieGen" role="33vP2m">
              <node concept="nLn13" id="1jlY2aieGeo" role="2Oq$k0" />
              <node concept="2Xjw5R" id="1jlY2aieGep" role="2OqNvi">
                <node concept="1xMEDy" id="1jlY2aieGeq" role="1xVPHs">
                  <node concept="chp4Y" id="1jlY2aieGer" role="ri$Ld">
                    <ref role="cht4Q" to="tpf8:hHd3awK" resolve="TemplateQueryBase" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3PmCn3sq2Ga" role="3cqZAp">
          <node concept="3cpWsn" id="3PmCn3sq2Gb" role="3cpWs9">
            <property role="TrG5h" value="nsConcept" />
            <node concept="3bZ5Sz" id="3PmCn3sq2dC" role="1tU5fm">
              <ref role="3bZ5Sy" to="tpf8:2vVmcK3ii_Y" resolve="AbstractNodeMacroNamespace" />
            </node>
            <node concept="2CBFar" id="3PmCn3sq2Gc" role="33vP2m">
              <node concept="chp4Y" id="3PmCn3sq2Gd" role="3oSUPX">
                <ref role="cht4Q" to="tpf8:2vVmcK3ii_Y" resolve="AbstractNodeMacroNamespace" />
              </node>
              <node concept="2DD5aU" id="3PmCn3sq2Ge" role="1m5AlR" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1jlY2aieGFl" role="3cqZAp" />
        <node concept="3SKdUt" id="1jlY2aieJGF" role="3cqZAp">
          <node concept="1PaTwC" id="1jlY2aieJGG" role="1aUNEU">
            <node concept="3oM_SD" id="1jlY2aieJGH" role="1PaTwD">
              <property role="3oM_SC" value="Expression" />
            </node>
            <node concept="3oM_SD" id="1jlY2aieJI_" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="1jlY2aieJID" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="1jlY2aieJII" role="1PaTwD">
              <property role="3oM_SC" value="query" />
            </node>
            <node concept="3oM_SD" id="1jlY2aieJIO" role="1PaTwD">
              <property role="3oM_SC" value="+" />
            </node>
            <node concept="3oM_SD" id="1jlY2aieJJ5" role="1PaTwD">
              <property role="3oM_SC" value="enclosed" />
            </node>
            <node concept="3oM_SD" id="1jlY2aieJJP" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="1jlY2aieJJY" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="1jlY2aieJK8" role="1PaTwD">
              <property role="3oM_SC" value="LOOP" />
            </node>
            <node concept="3oM_SD" id="1jlY2aieJLa" role="1PaTwD">
              <property role="3oM_SC" value="macro" />
            </node>
            <node concept="3oM_SD" id="1jlY2aieJLw" role="1PaTwD">
              <property role="3oM_SC" value="(start" />
            </node>
            <node concept="3oM_SD" id="1jlY2aieJLR" role="1PaTwD">
              <property role="3oM_SC" value="search" />
            </node>
            <node concept="3oM_SD" id="1jlY2aieJMf" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="1jlY2aieJMu" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1jlY2aieJMI" role="1PaTwD">
              <property role="3oM_SC" value="loop" />
            </node>
            <node concept="3oM_SD" id="1jlY2aieJN9" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="1jlY2aieJN_" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1jlY2aieJNS" role="1PaTwD">
              <property role="3oM_SC" value="parent" />
            </node>
            <node concept="3oM_SD" id="1jlY2aieJOc" role="1PaTwD">
              <property role="3oM_SC" value="template" />
            </node>
            <node concept="3oM_SD" id="1jlY2aieJOF" role="1PaTwD">
              <property role="3oM_SC" value="query)" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7fp7yj_w78u" role="3cqZAp">
          <node concept="3clFbS" id="7fp7yj_w78w" role="3clFbx">
            <node concept="3cpWs6" id="1jlY2aieGI2" role="3cqZAp">
              <node concept="2OqwBi" id="2vVmcK3rHgI" role="3cqZAk">
                <node concept="2OqwBi" id="2vVmcK3ufFo" role="2Oq$k0">
                  <node concept="37vLTw" id="3PmCn3sq2Lo" role="2Oq$k0">
                    <ref role="3cqZAo" node="3PmCn3sq2Gb" resolve="nsConcept" />
                  </node>
                  <node concept="3zqWPK" id="70OdufORgSl" role="2OqNvi">
                    <ref role="37wK5l" to="tpfh:2vVmcK3rHVe" resolve="getTargetMacroOfConceptFrom" />
                    <node concept="2OqwBi" id="70OdufORgSn" role="37wK5m">
                      <node concept="37vLTw" id="70OdufORgSo" role="2Oq$k0">
                        <ref role="3cqZAo" node="3PmCn3sq2Gb" resolve="nsConcept" />
                      </node>
                      <node concept="3zqWPK" id="47jP3PjRlee" role="2OqNvi">
                        <ref role="37wK5l" to="tpfh:2vVmcK3iiCI" resolve="getMacroConcept" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="70OdufORgSq" role="37wK5m">
                      <ref role="3cqZAo" node="1jlY2aieGem" resolve="templateQueryAncestor" />
                    </node>
                  </node>
                </node>
                <node concept="3x8VRR" id="2vVmcK3rHny" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1jlY2aieHCx" role="3clFbw">
            <node concept="37vLTw" id="1jlY2aieGV6" role="2Oq$k0">
              <ref role="3cqZAo" node="1jlY2aieGem" resolve="templateQueryAncestor" />
            </node>
            <node concept="3x8VRR" id="1jlY2aieIqR" role="2OqNvi" />
          </node>
        </node>
        <node concept="3SKdUt" id="7fp7yj_wfn9" role="3cqZAp">
          <node concept="1PaTwC" id="7fp7yj_wfna" role="1aUNEU">
            <node concept="3oM_SD" id="7fp7yj_wfnb" role="1PaTwD">
              <property role="3oM_SC" value="namespace" />
            </node>
            <node concept="3oM_SD" id="7fp7yj_wfMM" role="1PaTwD">
              <property role="3oM_SC" value="expression" />
            </node>
            <node concept="3oM_SD" id="7fp7yj_wfNa" role="1PaTwD">
              <property role="3oM_SC" value="could" />
            </node>
            <node concept="3oM_SD" id="7fp7yj_wfNf" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="7fp7yj_wfNl" role="1PaTwD">
              <property role="3oM_SC" value="part" />
            </node>
            <node concept="3oM_SD" id="7fp7yj_wfNA" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="7fp7yj_wfNI" role="1PaTwD">
              <property role="3oM_SC" value="template" />
            </node>
            <node concept="3oM_SD" id="7fp7yj_wfOb" role="1PaTwD">
              <property role="3oM_SC" value="call" />
            </node>
            <node concept="3oM_SD" id="7fp7yj_wfOl" role="1PaTwD">
              <property role="3oM_SC" value="argument" />
            </node>
            <node concept="3oM_SD" id="7fp7yj_wfOE" role="1PaTwD">
              <property role="3oM_SC" value="expression" />
            </node>
            <node concept="3oM_SD" id="7fp7yj_wfP0" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="7fp7yj_wfPn" role="1PaTwD">
              <property role="3oM_SC" value="nested" />
            </node>
            <node concept="3oM_SD" id="7fp7yj_wfP_" role="1PaTwD">
              <property role="3oM_SC" value="inside" />
            </node>
            <node concept="3oM_SD" id="7fp7yj_wfQ8" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="7fp7yj_wfQo" role="1PaTwD">
              <property role="3oM_SC" value="query" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7fp7yj_w8gM" role="3cqZAp">
          <node concept="2OqwBi" id="7fp7yj_we3e" role="3cqZAk">
            <node concept="2OqwBi" id="7fp7yj_wclx" role="2Oq$k0">
              <node concept="EsrRn" id="7fp7yj_wbzZ" role="2Oq$k0" />
              <node concept="3zqWPK" id="70OdufORgSt" role="2OqNvi">
                <ref role="37wK5l" to="tpfh:2vVmcK3imJA" resolve="getTargetMacro" />
              </node>
            </node>
            <node concept="3x8VRR" id="6nldpALiNgi" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

