<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:00000000-0000-4000-0000-011c89590382(jetbrains.mps.lang.test.constraints)">
  <persistence version="9" />
  <languages>
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="0" />
    <use id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints" version="6" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="9" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <devkit ref="00000000-0000-4000-0000-5604ebd4f22c(jetbrains.mps.devkit.aspect.constraints)" />
  </languages>
  <imports>
    <import index="tp5g" ref="r:00000000-0000-4000-0000-011c89590388(jetbrains.mps.lang.test.structure)" />
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="tqvn" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.tempmodel(MPS.Core/)" />
    <import index="prp3" ref="r:52ea8481-08b2-4cbd-ad9d-1b42825f7d09(jetbrains.mps.lang.constraints.rules.kinds.constraints)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="tpcn" ref="r:00000000-0000-4000-0000-011c8959028b(jetbrains.mps.lang.structure.behavior)" />
    <import index="tp5o" ref="r:00000000-0000-4000-0000-011c89590380(jetbrains.mps.lang.test.behavior)" implicit="true" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="tpe3" ref="r:00000000-0000-4000-0000-011c895902d7(jetbrains.mps.baseLanguage.unitTest.structure)" implicit="true" />
    <import index="tpe5" ref="r:00000000-0000-4000-0000-011c895902d1(jetbrains.mps.baseLanguage.unitTest.behavior)" implicit="true" />
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
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
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
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
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
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
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
        <property id="1211504562189" name="nestedName" index="jj94n" />
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
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints">
      <concept id="6702802731807351367" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_CanBeAChild" flags="in" index="9S07l" />
      <concept id="1926061574202943453" name="jetbrains.mps.lang.constraints.structure.NodeScopeEval" flags="ng" index="jnX$h">
        <reference id="1926061574202943454" name="kind" index="jnX$i" />
      </concept>
      <concept id="1202989658459" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_parentNode" flags="nn" index="nLn13" />
      <concept id="8966504967485224688" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_contextNode" flags="nn" index="2rP1CM" />
      <concept id="4303308395523343364" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_link" flags="ng" index="2DA6wF" />
      <concept id="1147467115080" name="jetbrains.mps.lang.constraints.structure.NodePropertyConstraint" flags="ng" index="EnEH3">
        <reference id="1147467295099" name="applicableProperty" index="EomxK" />
        <child id="1212097481299" name="propertyValidator" index="QCWH9" />
      </concept>
      <concept id="1212096972063" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertyValidator" flags="in" index="QB0g5" />
      <concept id="5564765827938091039" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_ReferentSearchScope_Scope" flags="ig" index="3dgokm" />
      <concept id="1163200368514" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_ReferentSetHandler" flags="in" index="3k9gUc" />
      <concept id="1163200647017" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_referenceNode" flags="nn" index="3kakTB" />
      <concept id="1163202640154" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_newReferentNode" flags="nn" index="3khVwk" />
      <concept id="1213093968558" name="jetbrains.mps.lang.constraints.structure.ConceptConstraints" flags="ng" index="1M2fIO">
        <reference id="1213093996982" name="concept" index="1M2myG" />
        <child id="6702802731807737306" name="canBeChild" index="9Vyp8" />
        <child id="1213098023997" name="property" index="1MhHOB" />
        <child id="1213100494875" name="referent" index="1Mr941" />
      </concept>
      <concept id="1148687176410" name="jetbrains.mps.lang.constraints.structure.NodeReferentConstraint" flags="ng" index="1N5Pfh">
        <reference id="1148687202698" name="applicableLink" index="1N5Vy1" />
        <child id="1163203787401" name="referentSetHandler" index="3kmjI7" />
        <child id="1148687345559" name="searchScopeFactory" index="1N6uqs" />
      </concept>
      <concept id="1153138554286" name="jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_propertyValue" flags="nn" index="1Wqviy" />
    </language>
    <language id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots">
      <concept id="4079382982702596667" name="jetbrains.mps.baseLanguage.checkedDots.structure.CheckedDotExpression" flags="nn" index="2EnYce" />
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
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="8758390115028452779" name="jetbrains.mps.lang.smodel.structure.Node_GetReferencesOperation" flags="nn" index="2z74zc" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1145567426890" name="jetbrains.mps.lang.smodel.structure.SNodeListCreator" flags="nn" index="2T8Vx0">
        <child id="1145567471833" name="createdType" index="2T96Bj" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="4124388153790980106" name="jetbrains.mps.lang.smodel.structure.Reference_GetTargetOperation" flags="nn" index="2ZHEkA" />
      <concept id="2644386474301421077" name="jetbrains.mps.lang.smodel.structure.LinkIdRefExpression" flags="nn" index="359W_D">
        <reference id="2644386474301421078" name="conceptDeclaration" index="359W_E" />
        <reference id="2644386474301421079" name="linkDeclaration" index="359W_F" />
      </concept>
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
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
      <concept id="1144195091934" name="jetbrains.mps.lang.smodel.structure.Node_IsRoleOperation" flags="nn" index="1BlSNk">
        <reference id="1144195362400" name="conceptOfParent" index="1BmUXE" />
        <reference id="1144195396777" name="linkInParent" index="1Bn3mz" />
      </concept>
      <concept id="1172323065820" name="jetbrains.mps.lang.smodel.structure.Node_GetConceptOperation" flags="nn" index="3NT_Vc" />
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
      </concept>
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
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
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
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
    </language>
  </registry>
  <node concept="1M2fIO" id="hDMFIYG">
    <ref role="1M2myG" to="tp5g:hBxON8j" resolve="TestNodeReference" />
    <node concept="1N5Pfh" id="hDMFIYH" role="1Mr941">
      <ref role="1N5Vy1" to="tp5g:hBxOPr6" resolve="declaration" />
      <node concept="3dgokm" id="5Vvmn_Ql312" role="1N6uqs">
        <node concept="3clFbS" id="5Vvmn_Ql313" role="2VODD2">
          <node concept="3clFbJ" id="5Vvmn_Ql314" role="3cqZAp">
            <node concept="3clFbS" id="5Vvmn_Ql315" role="3clFbx">
              <node concept="3cpWs6" id="5Vvmn_Ql316" role="3cqZAp">
                <node concept="2YIFZM" id="5Vvmn_Ql333" role="3cqZAk">
                  <ref role="37wK5l" to="o8zo:3jEbQoczdCs" resolve="forResolvableElements" />
                  <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                  <node concept="2ShNRf" id="5Vvmn_Ql334" role="37wK5m">
                    <node concept="2T8Vx0" id="5Vvmn_Ql335" role="2ShVmc">
                      <node concept="2I9FWS" id="5Vvmn_Ql336" role="2T96Bj">
                        <ref role="2I9WkF" to="tp5g:hBxLA2s" resolve="TestNodeAnnotation" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="5Vvmn_Ql31a" role="3clFbw">
              <node concept="2OqwBi" id="5Vvmn_Ql31b" role="3uHU7B">
                <node concept="2rP1CM" id="5Vvmn_Ql31Q" role="2Oq$k0" />
                <node concept="2Xjw5R" id="5Vvmn_Ql31d" role="2OqNvi">
                  <node concept="1xMEDy" id="5Vvmn_Ql31e" role="1xVPHs">
                    <node concept="chp4Y" id="5Vvmn_Ql31f" role="ri$Ld">
                      <ref role="cht4Q" to="tp5g:hHqefK1" resolve="TestNode" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="10Nm6u" id="5Vvmn_Ql31g" role="3uHU7w" />
            </node>
          </node>
          <node concept="3cpWs8" id="5Vvmn_Ql31h" role="3cqZAp">
            <node concept="3cpWsn" id="5Vvmn_Ql31i" role="3cpWs9">
              <property role="TrG5h" value="test" />
              <node concept="3Tqbb2" id="5Vvmn_Ql31j" role="1tU5fm" />
              <node concept="2OqwBi" id="5Vvmn_Ql31k" role="33vP2m">
                <node concept="2rP1CM" id="5Vvmn_Ql31R" role="2Oq$k0" />
                <node concept="2Xjw5R" id="5Vvmn_Ql31m" role="2OqNvi">
                  <node concept="3gmYPX" id="5Vvmn_Ql31n" role="1xVPHs">
                    <node concept="3gn64h" id="5Vvmn_Ql31o" role="3gmYPZ">
                      <ref role="3gnhBz" to="tp5g:hHlH9T6" resolve="NodesTestCase" />
                    </node>
                    <node concept="3gn64h" id="5Vvmn_Ql31p" role="3gmYPZ">
                      <ref role="3gnhBz" to="tp5g:hSLiM3w" resolve="EditorTestCase" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="5Vvmn_Ql31q" role="1xVPHs" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5Vvmn_Ql31r" role="3cqZAp">
            <node concept="3cpWsn" id="5Vvmn_Ql31s" role="3cpWs9">
              <property role="TrG5h" value="result" />
              <node concept="2I9FWS" id="5Vvmn_Ql31t" role="1tU5fm">
                <ref role="2I9WkF" to="tp5g:hBxLA2s" resolve="TestNodeAnnotation" />
              </node>
              <node concept="2ShNRf" id="5Vvmn_Ql31u" role="33vP2m">
                <node concept="2T8Vx0" id="5Vvmn_Ql31v" role="2ShVmc">
                  <node concept="2I9FWS" id="5Vvmn_Ql31w" role="2T96Bj">
                    <ref role="2I9WkF" to="tp5g:hBxLA2s" resolve="TestNodeAnnotation" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="5Vvmn_Ql31x" role="3cqZAp">
            <node concept="3y3z36" id="5Vvmn_Ql31y" role="3clFbw">
              <node concept="10Nm6u" id="5Vvmn_Ql31z" role="3uHU7w" />
              <node concept="37vLTw" id="5Vvmn_Ql31$" role="3uHU7B">
                <ref role="3cqZAo" node="5Vvmn_Ql31i" resolve="test" />
              </node>
            </node>
            <node concept="3clFbS" id="5Vvmn_Ql31_" role="3clFbx">
              <node concept="2Gpval" id="5Vvmn_Ql31A" role="3cqZAp">
                <node concept="2GrKxI" id="5Vvmn_Ql31B" role="2Gsz3X">
                  <property role="TrG5h" value="node" />
                </node>
                <node concept="2OqwBi" id="5Vvmn_Ql31C" role="2GsD0m">
                  <node concept="37vLTw" id="5Vvmn_Ql31D" role="2Oq$k0">
                    <ref role="3cqZAo" node="5Vvmn_Ql31i" resolve="test" />
                  </node>
                  <node concept="2Rf3mk" id="5Vvmn_Ql31E" role="2OqNvi">
                    <node concept="1xMEDy" id="5Vvmn_Ql31F" role="1xVPHs">
                      <node concept="chp4Y" id="5Vvmn_Ql31G" role="ri$Ld">
                        <ref role="cht4Q" to="tp5g:hBxLA2s" resolve="TestNodeAnnotation" />
                      </node>
                    </node>
                    <node concept="1xIGOp" id="5Vvmn_Ql31H" role="1xVPHs" />
                  </node>
                </node>
                <node concept="3clFbS" id="5Vvmn_Ql31I" role="2LFqv$">
                  <node concept="3clFbF" id="5Vvmn_Ql31J" role="3cqZAp">
                    <node concept="2OqwBi" id="5Vvmn_Ql31K" role="3clFbG">
                      <node concept="37vLTw" id="5Vvmn_Ql31L" role="2Oq$k0">
                        <ref role="3cqZAo" node="5Vvmn_Ql31s" resolve="result" />
                      </node>
                      <node concept="TSZUe" id="5Vvmn_Ql31M" role="2OqNvi">
                        <node concept="2GrUjf" id="5Vvmn_Ql31N" role="25WWJ7">
                          <ref role="2Gs0qQ" node="5Vvmn_Ql31B" resolve="node" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="5Vvmn_Ql31O" role="3cqZAp">
            <node concept="2YIFZM" id="5Vvmn_Ql33j" role="3cqZAk">
              <ref role="37wK5l" to="o8zo:3jEbQoczdCs" resolve="forResolvableElements" />
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <node concept="37vLTw" id="5Vvmn_Ql33k" role="37wK5m">
                <ref role="3cqZAo" node="5Vvmn_Ql31s" resolve="result" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="3iQxHqkinC$">
    <property role="3GE5qa" value="scopes" />
    <ref role="1M2myG" to="tp5g:3aUmKV2nYBN" resolve="ScopesExpectedNode" />
    <node concept="1N5Pfh" id="3iQxHqkinCB" role="1Mr941">
      <ref role="1N5Vy1" to="tp5g:3wYn_nuyrKv" resolve="ref" />
      <node concept="3dgokm" id="5Vvmn_Ql34p" role="1N6uqs">
        <node concept="3clFbS" id="5Vvmn_Ql34q" role="2VODD2">
          <node concept="3cpWs8" id="5Vvmn_Ql35M" role="3cqZAp">
            <node concept="3cpWsn" id="5Vvmn_Ql35N" role="3cpWs9">
              <property role="TrG5h" value="enclosingNode" />
              <property role="3TUv4t" value="true" />
              <node concept="3Tqbb2" id="5Vvmn_Ql35O" role="1tU5fm" />
              <node concept="1eOMI4" id="5Vvmn_Ql35C" role="33vP2m">
                <node concept="3K4zz7" id="5Vvmn_Ql35D" role="1eOMHV">
                  <node concept="2rP1CM" id="5Vvmn_Ql35E" role="3K4E3e" />
                  <node concept="2OqwBi" id="5Vvmn_Ql35F" role="3K4Cdx">
                    <node concept="3kakTB" id="5Vvmn_Ql35G" role="2Oq$k0" />
                    <node concept="3w_OXm" id="5Vvmn_Ql35H" role="2OqNvi" />
                  </node>
                  <node concept="2OqwBi" id="5Vvmn_Ql35I" role="3K4GZi">
                    <node concept="3kakTB" id="5Vvmn_Ql35J" role="2Oq$k0" />
                    <node concept="1mfA1w" id="5Vvmn_Ql35K" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="5Vvmn_Ql34r" role="3cqZAp">
            <node concept="3clFbS" id="5Vvmn_Ql34s" role="3clFbx">
              <node concept="3cpWs6" id="5Vvmn_Ql34t" role="3cqZAp">
                <node concept="10Nm6u" id="5Vvmn_Ql34u" role="3cqZAk" />
              </node>
            </node>
            <node concept="3fqX7Q" id="5Vvmn_Ql34v" role="3clFbw">
              <node concept="2OqwBi" id="5Vvmn_Ql34w" role="3fr31v">
                <node concept="37vLTw" id="5Vvmn_Ql35P" role="2Oq$k0">
                  <ref role="3cqZAo" node="5Vvmn_Ql35N" resolve="enclosingNode" />
                </node>
                <node concept="1mIQ4w" id="5Vvmn_Ql34y" role="2OqNvi">
                  <node concept="chp4Y" id="5Vvmn_Ql34z" role="cj9EA">
                    <ref role="cht4Q" to="tp5g:so7passww9" resolve="ScopesTest" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5Vvmn_Ql34$" role="3cqZAp">
            <node concept="3cpWsn" id="5Vvmn_Ql34_" role="3cpWs9">
              <property role="TrG5h" value="scopesTest" />
              <node concept="3Tqbb2" id="5Vvmn_Ql34A" role="1tU5fm">
                <ref role="ehGHo" to="tp5g:so7passww9" resolve="ScopesTest" />
              </node>
              <node concept="1PxgMI" id="5Vvmn_Ql34B" role="33vP2m">
                <node concept="chp4Y" id="5Vvmn_Ql34C" role="3oSUPX">
                  <ref role="cht4Q" to="tp5g:so7passww9" resolve="ScopesTest" />
                </node>
                <node concept="37vLTw" id="5Vvmn_Ql35Q" role="1m5AlR">
                  <ref role="3cqZAo" node="5Vvmn_Ql35N" resolve="enclosingNode" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5Vvmn_Ql34E" role="3cqZAp">
            <node concept="3cpWsn" id="5Vvmn_Ql34F" role="3cpWs9">
              <property role="TrG5h" value="modelPlusImportedScope" />
              <node concept="3uibUv" id="5Vvmn_Ql34G" role="1tU5fm">
                <ref role="3uigEE" to="o8zo:7ipADkTfyIz" resolve="ModelPlusImportedScope" />
              </node>
              <node concept="2ShNRf" id="5Vvmn_Ql34H" role="33vP2m">
                <node concept="1pGfFk" id="5Vvmn_Ql34I" role="2ShVmc">
                  <ref role="37wK5l" to="o8zo:4k9eBec$QVW" resolve="ModelPlusImportedScope" />
                  <node concept="2OqwBi" id="5Vvmn_Ql35R" role="37wK5m">
                    <node concept="2rP1CM" id="5Vvmn_Ql35S" role="2Oq$k0" />
                    <node concept="I4A8Y" id="5Vvmn_Ql35T" role="2OqNvi" />
                  </node>
                  <node concept="3clFbT" id="5Vvmn_Ql34K" role="37wK5m">
                    <property role="3clFbU" value="false" />
                  </node>
                  <node concept="2EnYce" id="3z8xuiBZ7NC" role="37wK5m">
                    <node concept="2EnYce" id="3z8xuiBZ7nO" role="2Oq$k0">
                      <node concept="2OqwBi" id="5Vvmn_Ql34M" role="2Oq$k0">
                        <node concept="37vLTw" id="5Vvmn_Ql34N" role="2Oq$k0">
                          <ref role="3cqZAo" node="5Vvmn_Ql34_" resolve="scopesTest" />
                        </node>
                        <node concept="3zqWPK" id="70OdufORd__" role="2OqNvi">
                          <ref role="37wK5l" to="tp5o:4IvydoGvimX" resolve="getCheckingReference" />
                        </node>
                      </node>
                      <node concept="liA8E" id="3z8xuiBWUmo" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SReference.getLink()" resolve="getLink" />
                      </node>
                    </node>
                    <node concept="liA8E" id="3z8xuiBWV_f" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractLink.getTargetConcept()" resolve="getTargetConcept" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="5Vvmn_Ql34Q" role="3cqZAp">
            <node concept="37vLTw" id="5Vvmn_Ql34R" role="3cqZAk">
              <ref role="3cqZAo" node="5Vvmn_Ql34F" resolve="modelPlusImportedScope" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="4IvydoGvh7k">
    <property role="3GE5qa" value="scopes" />
    <ref role="1M2myG" to="tp5g:so7passww9" resolve="ScopesTest" />
    <node concept="1N5Pfh" id="4IvydoGvh7l" role="1Mr941">
      <ref role="1N5Vy1" to="tp5g:4IvydoGulmm" resolve="checkingReference" />
      <node concept="3dgokm" id="5Vvmn_Ql33l" role="1N6uqs">
        <node concept="3clFbS" id="5Vvmn_Ql33m" role="2VODD2">
          <node concept="3cpWs6" id="5Vvmn_Ql33n" role="3cqZAp">
            <node concept="2ShNRf" id="5Vvmn_Ql33o" role="3cqZAk">
              <node concept="YeOm9" id="5Vvmn_Ql33p" role="2ShVmc">
                <node concept="1Y3b0j" id="5Vvmn_Ql33q" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="o8zo:3fifI_xCtNA" resolve="Scope" />
                  <ref role="1Y3XeK" to="o8zo:3fifI_xCtN$" resolve="Scope" />
                  <node concept="3Tm1VV" id="5Vvmn_Ql33r" role="1B3o_S" />
                  <node concept="3clFb_" id="5Vvmn_Ql33s" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="getAvailableElements" />
                    <node concept="A3Dl8" id="5Vvmn_Ql33t" role="3clF45">
                      <node concept="3Tqbb2" id="5Vvmn_Ql33u" role="A3Ik2" />
                    </node>
                    <node concept="3Tm1VV" id="5Vvmn_Ql33v" role="1B3o_S" />
                    <node concept="37vLTG" id="5Vvmn_Ql33w" role="3clF46">
                      <property role="TrG5h" value="prefix" />
                      <node concept="17QB3L" id="5Vvmn_Ql33x" role="1tU5fm" />
                      <node concept="2AHcQZ" id="5Vvmn_Ql33y" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="5Vvmn_Ql33z" role="3clF47">
                      <node concept="3cpWs8" id="5Vvmn_Ql33$" role="3cqZAp">
                        <node concept="3cpWsn" id="5Vvmn_Ql33_" role="3cpWs9">
                          <property role="TrG5h" value="nodes" />
                          <node concept="2I9FWS" id="5Vvmn_Ql33A" role="1tU5fm" />
                          <node concept="2ShNRf" id="5Vvmn_Ql33B" role="33vP2m">
                            <node concept="2T8Vx0" id="5Vvmn_Ql33C" role="2ShVmc">
                              <node concept="2I9FWS" id="5Vvmn_Ql33D" role="2T96Bj" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2Gpval" id="5Vvmn_Ql33E" role="3cqZAp">
                        <node concept="2GrKxI" id="5Vvmn_Ql33F" role="2Gsz3X">
                          <property role="TrG5h" value="reference" />
                        </node>
                        <node concept="3clFbS" id="5Vvmn_Ql33G" role="2LFqv$">
                          <node concept="3clFbF" id="5Vvmn_Ql33H" role="3cqZAp">
                            <node concept="2OqwBi" id="5Vvmn_Ql33I" role="3clFbG">
                              <node concept="37vLTw" id="5Vvmn_Ql33J" role="2Oq$k0">
                                <ref role="3cqZAo" node="5Vvmn_Ql33_" resolve="nodes" />
                              </node>
                              <node concept="TSZUe" id="5Vvmn_Ql33K" role="2OqNvi">
                                <node concept="2OqwBi" id="5Vvmn_Ql33L" role="25WWJ7">
                                  <node concept="2GrUjf" id="5Vvmn_Ql33M" role="2Oq$k0">
                                    <ref role="2Gs0qQ" node="5Vvmn_Ql33F" resolve="reference" />
                                  </node>
                                  <node concept="2ZHEkA" id="5Vvmn_Ql33N" role="2OqNvi" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="5Vvmn_Ql33O" role="2GsD0m">
                          <node concept="2OqwBi" id="5Vvmn_Ql33P" role="2Oq$k0">
                            <node concept="1PxgMI" id="5Vvmn_Ql33Q" role="2Oq$k0">
                              <node concept="chp4Y" id="5Vvmn_Ql33R" role="3oSUPX">
                                <ref role="cht4Q" to="tp5g:so7passww9" resolve="ScopesTest" />
                              </node>
                              <node concept="2rP1CM" id="5Vvmn_Ql33S" role="1m5AlR" />
                            </node>
                            <node concept="1mfA1w" id="5Vvmn_Ql33T" role="2OqNvi" />
                          </node>
                          <node concept="2z74zc" id="5Vvmn_Ql33U" role="2OqNvi" />
                        </node>
                      </node>
                      <node concept="3cpWs6" id="5Vvmn_Ql33V" role="3cqZAp">
                        <node concept="37vLTw" id="5Vvmn_Ql33W" role="3cqZAk">
                          <ref role="3cqZAo" node="5Vvmn_Ql33_" resolve="nodes" />
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="5Vvmn_Ql33X" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="5Vvmn_Ql33Y" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="resolve" />
                    <node concept="3Tqbb2" id="5Vvmn_Ql33Z" role="3clF45" />
                    <node concept="3Tm1VV" id="5Vvmn_Ql340" role="1B3o_S" />
                    <node concept="37vLTG" id="5Vvmn_Ql341" role="3clF46">
                      <property role="TrG5h" value="contextNode" />
                      <node concept="3Tqbb2" id="5Vvmn_Ql342" role="1tU5fm" />
                    </node>
                    <node concept="37vLTG" id="5Vvmn_Ql343" role="3clF46">
                      <property role="TrG5h" value="refText" />
                      <node concept="17QB3L" id="5Vvmn_Ql344" role="1tU5fm" />
                      <node concept="2AHcQZ" id="5Vvmn_Ql345" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="5Vvmn_Ql346" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                    </node>
                    <node concept="3clFbS" id="5Vvmn_Ql347" role="3clF47">
                      <node concept="3cpWs6" id="5Vvmn_Ql348" role="3cqZAp">
                        <node concept="10Nm6u" id="5Vvmn_Ql349" role="3cqZAk" />
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="5Vvmn_Ql34a" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="5Vvmn_Ql34b" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="getReferenceText" />
                    <node concept="17QB3L" id="5Vvmn_Ql34c" role="3clF45" />
                    <node concept="3Tm1VV" id="5Vvmn_Ql34d" role="1B3o_S" />
                    <node concept="37vLTG" id="5Vvmn_Ql34e" role="3clF46">
                      <property role="TrG5h" value="contextNode" />
                      <node concept="3Tqbb2" id="5Vvmn_Ql34f" role="1tU5fm" />
                    </node>
                    <node concept="37vLTG" id="5Vvmn_Ql34g" role="3clF46">
                      <property role="TrG5h" value="node" />
                      <node concept="3Tqbb2" id="5Vvmn_Ql34h" role="1tU5fm" />
                      <node concept="2AHcQZ" id="5Vvmn_Ql34i" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="5Vvmn_Ql34j" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                    </node>
                    <node concept="3clFbS" id="5Vvmn_Ql34k" role="3clF47">
                      <node concept="3cpWs6" id="5Vvmn_Ql34l" role="3cqZAp">
                        <node concept="10Nm6u" id="5Vvmn_Ql34m" role="3cqZAk" />
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="5Vvmn_Ql34n" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5Vvmn_Ql34o" role="3cqZAp" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="4K12N3pJCnt">
    <property role="3GE5qa" value="migration" />
    <ref role="1M2myG" to="tp5g:4K12N3pJ$JB" resolve="MigrationTestCase" />
    <node concept="EnEH3" id="4K12N3pJGZg" role="1MhHOB">
      <ref role="EomxK" to="tpe3:5$NvszvZwQt" resolve="canNotRunInProcess" />
      <node concept="QB0g5" id="4K12N3pJHyt" role="QCWH9">
        <node concept="3clFbS" id="4K12N3pJHyu" role="2VODD2">
          <node concept="3clFbF" id="4K12N3pJHUB" role="3cqZAp">
            <node concept="3clFbC" id="4K12N3pJImC" role="3clFbG">
              <node concept="3clFbT" id="4K12N3pJImM" role="3uHU7w">
                <property role="3clFbU" value="false" />
              </node>
              <node concept="1Wqviy" id="4K12N3pJHUA" role="3uHU7B" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="5JRx$mlSd8I">
    <property role="3GE5qa" value="migration" />
    <ref role="1M2myG" to="tp5g:5JRx$mlRtY9" resolve="MigrationReference" />
    <node concept="1N5Pfh" id="5JRx$mlSd8J" role="1Mr941">
      <ref role="1N5Vy1" to="tp5g:5JRx$mlRtYa" resolve="migration" />
      <node concept="3k9gUc" id="5JRx$mlSd8L" role="3kmjI7">
        <node concept="3clFbS" id="5JRx$mlSd8M" role="2VODD2">
          <node concept="3clFbJ" id="5JRx$mlSdaS" role="3cqZAp">
            <node concept="1Wc70l" id="5JRx$mlSgBv" role="3clFbw">
              <node concept="3clFbC" id="5JRx$mlSnyn" role="3uHU7w">
                <node concept="3cmrfG" id="5JRx$mlSn$i" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="2OqwBi" id="5JRx$mlSjYH" role="3uHU7B">
                  <node concept="2OqwBi" id="5JRx$mlShBa" role="2Oq$k0">
                    <node concept="1PxgMI" id="5JRx$mlShhF" role="2Oq$k0">
                      <node concept="chp4Y" id="5JRx$mlShnI" role="3oSUPX">
                        <ref role="cht4Q" to="tp5g:4K12N3pJ$JB" resolve="MigrationTestCase" />
                      </node>
                      <node concept="2OqwBi" id="5JRx$mlSgP0" role="1m5AlR">
                        <node concept="3kakTB" id="5JRx$mlSgFW" role="2Oq$k0" />
                        <node concept="1mfA1w" id="5JRx$mlSgVM" role="2OqNvi" />
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="5JRx$mlSi8t" role="2OqNvi">
                      <ref role="3TtcxE" to="tp5g:5JRx$mlRSG2" resolve="migration" />
                    </node>
                  </node>
                  <node concept="34oBXx" id="5JRx$mlSlaC" role="2OqNvi" />
                </node>
              </node>
              <node concept="2OqwBi" id="5JRx$mlSdjS" role="3uHU7B">
                <node concept="3kakTB" id="5JRx$mlSdbc" role="2Oq$k0" />
                <node concept="1BlSNk" id="5JRx$mlSdXW" role="2OqNvi">
                  <ref role="1BmUXE" to="tp5g:4K12N3pJ$JB" resolve="MigrationTestCase" />
                  <ref role="1Bn3mz" to="tp5g:5JRx$mlRSG2" resolve="migration" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="5JRx$mlSdaU" role="3clFbx">
              <node concept="3clFbF" id="5JRx$mlSdZT" role="3cqZAp">
                <node concept="37vLTI" id="5JRx$mlSgee" role="3clFbG">
                  <node concept="3cpWs3" id="5JRx$mlSph7" role="37vLTx">
                    <node concept="Xl_RD" id="5JRx$mlSpne" role="3uHU7w">
                      <property role="Xl_RC" value="_Test" />
                    </node>
                    <node concept="2OqwBi" id="5JRx$mlSoj$" role="3uHU7B">
                      <node concept="3khVwk" id="5JRx$mlSo6t" role="2Oq$k0" />
                      <node concept="3TrcHB" id="5JRx$mlSoyI" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="5JRx$mlSf3U" role="37vLTJ">
                    <node concept="1PxgMI" id="5JRx$mlSeQE" role="2Oq$k0">
                      <node concept="chp4Y" id="5JRx$mlSeRy" role="3oSUPX">
                        <ref role="cht4Q" to="tp5g:4K12N3pJ$JB" resolve="MigrationTestCase" />
                      </node>
                      <node concept="2OqwBi" id="5JRx$mlSe6X" role="1m5AlR">
                        <node concept="3kakTB" id="5JRx$mlSdZS" role="2Oq$k0" />
                        <node concept="1mfA1w" id="5JRx$mlSedj" role="2OqNvi" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="5JRx$mlSflc" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
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
  <node concept="1M2fIO" id="5j9sOBrG_Ld">
    <property role="3GE5qa" value="migration" />
    <ref role="1M2myG" to="tp5g:5j9sOBrG_KN" resolve="IgnoreMigrationDataOption" />
    <node concept="9S07l" id="5j9sOBrG_Le" role="9Vyp8">
      <node concept="3clFbS" id="5j9sOBrG_Lf" role="2VODD2">
        <node concept="3clFbF" id="5j9sOBrG_S$" role="3cqZAp">
          <node concept="1Wc70l" id="5j9sOBrGBrH" role="3clFbG">
            <node concept="17R0WA" id="5j9sOBrGC87" role="3uHU7w">
              <node concept="359W_D" id="5j9sOBrGCnT" role="3uHU7w">
                <ref role="359W_E" to="tp5g:4K12N3pJ$JB" resolve="MigrationTestCase" />
                <ref role="359W_F" to="tp5g:5j9sOBrGAXZ" resolve="option" />
              </node>
              <node concept="2DA6wF" id="5j9sOBrGBBZ" role="3uHU7B" />
            </node>
            <node concept="2OqwBi" id="5j9sOBrGA9x" role="3uHU7B">
              <node concept="nLn13" id="5j9sOBrG_Sz" role="2Oq$k0" />
              <node concept="1mIQ4w" id="5j9sOBrGAxN" role="2OqNvi">
                <node concept="chp4Y" id="5j9sOBrGAIz" role="cj9EA">
                  <ref role="cht4Q" to="tp5g:4K12N3pJ$JB" resolve="MigrationTestCase" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="2IvnPUIuVMH">
    <ref role="1M2myG" to="tp5g:hSdkHD7" resolve="AbstractTestNodeAnnotation" />
    <node concept="9S07l" id="2IvnPUIuVMI" role="9Vyp8">
      <node concept="3clFbS" id="2IvnPUIuVMJ" role="2VODD2">
        <node concept="3cpWs8" id="2aQPn0PmToh" role="3cqZAp">
          <node concept="3cpWsn" id="2aQPn0PmToi" role="3cpWs9">
            <property role="TrG5h" value="model" />
            <node concept="3uibUv" id="2aQPn0PmTrS" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
            </node>
            <node concept="2OqwBi" id="2aQPn0PmToj" role="33vP2m">
              <node concept="nLn13" id="2aQPn0PmTok" role="2Oq$k0" />
              <node concept="I4A8Y" id="2aQPn0PmTol" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="29gobAD$qiS" role="3cqZAp">
          <node concept="3clFbS" id="29gobAD$qiU" role="3clFbx">
            <node concept="3cpWs6" id="29gobAD$qn8" role="3cqZAp">
              <node concept="3clFbT" id="29gobAD$qn9" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="2YIFZM" id="29gobAD$pXB" role="3clFbw">
            <ref role="37wK5l" to="tqvn:~TemporaryModels.isTemporary(org.jetbrains.mps.openapi.model.SModel)" resolve="isTemporary" />
            <ref role="1Pybhc" to="tqvn:~TemporaryModels" resolve="TemporaryModels" />
            <node concept="37vLTw" id="29gobAD$pZo" role="37wK5m">
              <ref role="3cqZAo" node="2aQPn0PmToi" resolve="model" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="143xXLdijqX" role="3cqZAp">
          <node concept="2OqwBi" id="143xXLdijqY" role="3cqZAk">
            <node concept="35c_gC" id="143xXLdijqZ" role="2Oq$k0">
              <ref role="35c_gD" to="tp5g:143xXLdhW$X" resolve="ITestAnnotationsContainer" />
            </node>
            <node concept="3zqWPK" id="70OdufORd_B" role="2OqNvi">
              <ref role="37wK5l" to="tp5o:143xXLdhXGe" resolve="canAddTestAnnotation" />
              <node concept="nLn13" id="70OdufORd_D" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3Oh7Pa" id="6QkYQRK$tn4">
    <property role="3GE5qa" value="expression" />
    <ref role="3Oh7Pe" to="tp5g:hPjxXux" resolve="ProjectExpression" />
    <node concept="3OnDbq" id="6QkYQRK$tHo" role="3Oh7Pb">
      <ref role="3OnDbs" to="prp3:6X8eyFnbIRR" resolve="CanBeChild" />
      <node concept="3QlHBw" id="6QkYQRK_6$R" role="3OnDbr">
        <property role="TrG5h" value="testableAncestor" />
        <node concept="3Tqbb2" id="6QkYQRK_6HJ" role="3RXm0Z">
          <ref role="ehGHo" to="tpe3:hG8C14p" resolve="ITestable" />
        </node>
        <node concept="2K0Yjh" id="6QkYQRK_6$V" role="2K0Fub">
          <node concept="2OqwBi" id="6QkYQRK$u1H" role="2K0yoH">
            <node concept="3QpRc$" id="VLMLLsZ5PD" role="2Oq$k0">
              <ref role="3QpVTF" to="prp3:yXuRM1RLuH" resolve="parentNode" />
            </node>
            <node concept="2Xjw5R" id="6QkYQRK$ueo" role="2OqNvi">
              <node concept="1xIGOp" id="VLMLLsZ5Q3" role="1xVPHs" />
              <node concept="1xMEDy" id="6QkYQRK$ueq" role="1xVPHs">
                <node concept="chp4Y" id="6QkYQRK_6kW" role="ri$Ld">
                  <ref role="cht4Q" to="tpe3:hG8C14p" resolve="ITestable" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1DCEPf" id="6QkYQRK$tOq" role="3OnDbr">
        <node concept="3Qq5Rn" id="6QkYQRK$tOr" role="2j4cqI">
          <property role="EcuMT" value="7896212496293420315" />
          <node concept="2K0Yjh" id="6QkYQRK$tOs" role="2K0Fuo">
            <node concept="1Wc70l" id="6QkYQRK_u54" role="2K0yoH">
              <node concept="3fqX7Q" id="6QkYQRK_ucd" role="3uHU7w">
                <node concept="2OqwBi" id="6QkYQRK_uzS" role="3fr31v">
                  <node concept="3QpRc$" id="6QkYQRK_ue3" role="2Oq$k0">
                    <ref role="3QpVTF" node="6QkYQRK_6$R" resolve="testableAncestor" />
                  </node>
                  <node concept="1mIQ4w" id="6QkYQRK_uG1" role="2OqNvi">
                    <node concept="chp4Y" id="6QkYQRK_uI7" role="cj9EA">
                      <ref role="cht4Q" to="tpe3:h3s_e$z" resolve="BTestCase" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="6QkYQRK_7CL" role="3uHU7B">
                <node concept="2OqwBi" id="6QkYQRK$uwK" role="3uHU7B">
                  <node concept="3x8VRR" id="6QkYQRK$uJR" role="2OqNvi" />
                  <node concept="3QpRc$" id="6QkYQRK_7hs" role="2Oq$k0">
                    <ref role="3QpVTF" node="6QkYQRK_6$R" resolve="testableAncestor" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6QkYQRK_8ee" role="3uHU7w">
                  <node concept="3QpRc$" id="6QkYQRK_7Go" role="2Oq$k0">
                    <ref role="3QpVTF" node="6QkYQRK_6$R" resolve="testableAncestor" />
                  </node>
                  <node concept="3zqWPK" id="70OdufORd_E" role="2OqNvi">
                    <ref role="37wK5l" to="tpe5:2RMg39tmiFh" resolve="isMpsStartRequired" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DCEQD" id="6QkYQRK$tOu" role="1DCEQI">
          <node concept="16I2mz" id="6QkYQRK_8tb" role="16N$OO">
            <node concept="16N$OT" id="6QkYQRK_8tc" role="16I2mt">
              <property role="16N$OU" value="There is no MPS 'project' in this kind of ITestable node" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="60ggPToMGx3">
    <property role="TrG5h" value="UnorderedChildrenRule_Constraints" />
    <ref role="1M2myG" to="tp5g:60ggPToKIiB" resolve="UnorderedChildrenRule" />
    <node concept="1N5Pfh" id="60ggPToMGx4" role="1Mr941">
      <ref role="1N5Vy1" to="tp5g:60ggPToKIiG" resolve="link" />
      <node concept="3dgokm" id="60ggPToMGx5" role="1N6uqs">
        <node concept="3clFbS" id="60ggPToMGx7" role="2VODD2">
          <node concept="3clFbF" id="60ggPToMGx8" role="3cqZAp">
            <node concept="2ShNRf" id="60ggPToMGxa" role="3clFbG">
              <node concept="YeOm9" id="60ggPToMGxc" role="2ShVmc">
                <node concept="1Y3b0j" id="60ggPToMGxf" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <property role="373rjd" value="true" />
                  <property role="TrG5h" value="FilteringScope" />
                  <property role="jj94n" value="FilteringScope" />
                  <ref role="1Y3XeK" to="o8zo:3rV3sBXetA0" resolve="FilteringScope" />
                  <ref role="37wK5l" to="o8zo:3rV3sBXetA2" resolve="FilteringScope" />
                  <node concept="jnX$h" id="60ggPToMGxh" role="37wK5m">
                    <ref role="jnX$i" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                  </node>
                  <node concept="3clFb_" id="60ggPToMGxi" role="jymVt">
                    <property role="TrG5h" value="isExcluded" />
                    <node concept="3Tm1VV" id="60ggPToMGxm" role="1B3o_S" />
                    <node concept="10P_77" id="60ggPToMGxn" role="3clF45" />
                    <node concept="37vLTG" id="60ggPToMGxo" role="3clF46">
                      <property role="TrG5h" value="node" />
                      <node concept="3Tqbb2" id="60ggPToMGxq" role="1tU5fm" />
                    </node>
                    <node concept="3clFbS" id="60ggPToMGxr" role="3clF47">
                      <node concept="3cpWs6" id="60ggPToMGxs" role="3cqZAp">
                        <node concept="22lmx$" id="7jkP8ZYt9fT" role="3cqZAk">
                          <node concept="22lmx$" id="7jkP8ZYt4xY" role="3uHU7B">
                            <node concept="2OqwBi" id="60ggPToMMHA" role="3uHU7B">
                              <node concept="2OqwBi" id="60ggPToMMHD" role="2Oq$k0">
                                <node concept="1PxgMI" id="60ggPToMMHG" role="2Oq$k0">
                                  <property role="1BlNFB" value="false" />
                                  <node concept="37vLTw" id="60ggPToMMHJ" role="1m5AlR">
                                    <ref role="3cqZAo" node="60ggPToMGxo" resolve="node" />
                                  </node>
                                  <node concept="chp4Y" id="60ggPToMMHK" role="3oSUPX">
                                    <ref role="cht4Q" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                                  </node>
                                </node>
                                <node concept="3TrcHB" id="60ggPToMMHL" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                                </node>
                              </node>
                              <node concept="21noJN" id="60ggPToMMHM" role="2OqNvi">
                                <node concept="21nZrQ" id="60ggPToMMHO" role="21noJM">
                                  <ref role="21nZrZ" to="tpce:3Ftr4R6BFyn" resolve="reference" />
                                </node>
                              </node>
                            </node>
                            <node concept="2OqwBi" id="7jkP8ZYt8jC" role="3uHU7w">
                              <node concept="2OqwBi" id="7jkP8ZYt5TU" role="2Oq$k0">
                                <node concept="1PxgMI" id="7jkP8ZYt5nh" role="2Oq$k0">
                                  <node concept="chp4Y" id="7jkP8ZYt5_S" role="3oSUPX">
                                    <ref role="cht4Q" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                                  </node>
                                  <node concept="37vLTw" id="7jkP8ZYt51y" role="1m5AlR">
                                    <ref role="3cqZAo" node="60ggPToMGxo" resolve="node" />
                                  </node>
                                </node>
                                <node concept="3TrcHB" id="7jkP8ZYt81k" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpce:3Ftr4R6BH8A" resolve="sourceCardinality" />
                                </node>
                              </node>
                              <node concept="21noJN" id="7jkP8ZYt8EV" role="2OqNvi">
                                <node concept="21nZrQ" id="7jkP8ZYt8EX" role="21noJM">
                                  <ref role="21nZrZ" to="tpce:3Ftr4R6BFyh" resolve="_0__1" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="7jkP8ZYt9kW" role="3uHU7w">
                            <node concept="2OqwBi" id="7jkP8ZYt9kX" role="2Oq$k0">
                              <node concept="1PxgMI" id="7jkP8ZYt9kY" role="2Oq$k0">
                                <node concept="chp4Y" id="7jkP8ZYt9kZ" role="3oSUPX">
                                  <ref role="cht4Q" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                                </node>
                                <node concept="37vLTw" id="7jkP8ZYt9l0" role="1m5AlR">
                                  <ref role="3cqZAo" node="60ggPToMGxo" resolve="node" />
                                </node>
                              </node>
                              <node concept="3TrcHB" id="7jkP8ZYt9l1" role="2OqNvi">
                                <ref role="3TsBF5" to="tpce:3Ftr4R6BH8A" resolve="sourceCardinality" />
                              </node>
                            </node>
                            <node concept="21noJN" id="7jkP8ZYt9l2" role="2OqNvi">
                              <node concept="21nZrQ" id="7jkP8ZYt9l3" role="21noJM">
                                <ref role="21nZrZ" to="tpce:3Ftr4R6BFyi" resolve="_1" />
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
    </node>
  </node>
  <node concept="1M2fIO" id="60ggPToMHXA">
    <property role="TrG5h" value="IgnoreChildrenRule_Constraints" />
    <ref role="1M2myG" to="tp5g:60ggPToKIiC" resolve="IgnoreChildrenRule" />
    <node concept="1N5Pfh" id="60ggPToMHXB" role="1Mr941">
      <ref role="1N5Vy1" to="tp5g:60ggPToKIiH" resolve="link" />
      <node concept="3dgokm" id="60ggPToMHXC" role="1N6uqs">
        <node concept="3clFbS" id="60ggPToMHXE" role="2VODD2">
          <node concept="3clFbF" id="60ggPToMHXF" role="3cqZAp">
            <node concept="2ShNRf" id="60ggPToMHXH" role="3clFbG">
              <node concept="YeOm9" id="60ggPToMHXJ" role="2ShVmc">
                <node concept="1Y3b0j" id="60ggPToMHXM" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <property role="373rjd" value="true" />
                  <property role="TrG5h" value="FilteringScope" />
                  <property role="jj94n" value="FilteringScope" />
                  <ref role="1Y3XeK" to="o8zo:3rV3sBXetA0" resolve="FilteringScope" />
                  <ref role="37wK5l" to="o8zo:3rV3sBXetA2" resolve="FilteringScope" />
                  <node concept="jnX$h" id="60ggPToMHXO" role="37wK5m">
                    <ref role="jnX$i" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                  </node>
                  <node concept="3clFb_" id="60ggPToMHXP" role="jymVt">
                    <property role="TrG5h" value="isExcluded" />
                    <node concept="3Tm1VV" id="60ggPToMHXT" role="1B3o_S" />
                    <node concept="10P_77" id="60ggPToMHXU" role="3clF45" />
                    <node concept="37vLTG" id="60ggPToMHXV" role="3clF46">
                      <property role="TrG5h" value="node" />
                      <node concept="3Tqbb2" id="60ggPToMHXX" role="1tU5fm" />
                    </node>
                    <node concept="3clFbS" id="60ggPToMHXY" role="3clF47">
                      <node concept="3cpWs6" id="60ggPToMHXZ" role="3cqZAp">
                        <node concept="2OqwBi" id="60ggPToMOaP" role="3cqZAk">
                          <node concept="2OqwBi" id="60ggPToMOaS" role="2Oq$k0">
                            <node concept="1PxgMI" id="60ggPToMOaV" role="2Oq$k0">
                              <property role="1BlNFB" value="false" />
                              <node concept="37vLTw" id="60ggPToMOaY" role="1m5AlR">
                                <ref role="3cqZAo" node="60ggPToMHXV" resolve="node" />
                              </node>
                              <node concept="chp4Y" id="60ggPToMOaZ" role="3oSUPX">
                                <ref role="cht4Q" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                              </node>
                            </node>
                            <node concept="3TrcHB" id="60ggPToMOb0" role="2OqNvi">
                              <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                            </node>
                          </node>
                          <node concept="21noJN" id="60ggPToMOb1" role="2OqNvi">
                            <node concept="21nZrQ" id="60ggPToMOb3" role="21noJM">
                              <ref role="21nZrZ" to="tpce:3Ftr4R6BFyn" resolve="reference" />
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
  </node>
  <node concept="1M2fIO" id="60ggPToMJpa">
    <property role="TrG5h" value="IgnoreReferenceRule_Constraints" />
    <ref role="1M2myG" to="tp5g:60ggPToKIiD" resolve="IgnoreReferenceRule" />
    <node concept="1N5Pfh" id="60ggPToMJpb" role="1Mr941">
      <ref role="1N5Vy1" to="tp5g:60ggPToKIiI" resolve="link" />
      <node concept="3dgokm" id="60ggPToMJpc" role="1N6uqs">
        <node concept="3clFbS" id="60ggPToMJpe" role="2VODD2">
          <node concept="3clFbF" id="60ggPToMJpf" role="3cqZAp">
            <node concept="2ShNRf" id="60ggPToMJph" role="3clFbG">
              <node concept="YeOm9" id="60ggPToMJpj" role="2ShVmc">
                <node concept="1Y3b0j" id="60ggPToMJpm" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <property role="373rjd" value="true" />
                  <property role="TrG5h" value="FilteringScope" />
                  <property role="jj94n" value="FilteringScope" />
                  <ref role="1Y3XeK" to="o8zo:3rV3sBXetA0" resolve="FilteringScope" />
                  <ref role="37wK5l" to="o8zo:3rV3sBXetA2" resolve="FilteringScope" />
                  <node concept="jnX$h" id="60ggPToMJpo" role="37wK5m">
                    <ref role="jnX$i" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                  </node>
                  <node concept="3clFb_" id="60ggPToMJpp" role="jymVt">
                    <property role="TrG5h" value="isExcluded" />
                    <node concept="3Tm1VV" id="60ggPToMJpt" role="1B3o_S" />
                    <node concept="10P_77" id="60ggPToMJpu" role="3clF45" />
                    <node concept="37vLTG" id="60ggPToMJpv" role="3clF46">
                      <property role="TrG5h" value="node" />
                      <node concept="3Tqbb2" id="60ggPToMJpx" role="1tU5fm" />
                    </node>
                    <node concept="3clFbS" id="60ggPToMJpy" role="3clF47">
                      <node concept="3cpWs6" id="60ggPToMJpz" role="3cqZAp">
                        <node concept="2OqwBi" id="60ggPToMPtw" role="3cqZAk">
                          <node concept="2OqwBi" id="60ggPToMPtz" role="2Oq$k0">
                            <node concept="1PxgMI" id="60ggPToMPtA" role="2Oq$k0">
                              <property role="1BlNFB" value="false" />
                              <node concept="37vLTw" id="60ggPToMPtD" role="1m5AlR">
                                <ref role="3cqZAo" node="60ggPToMJpv" resolve="node" />
                              </node>
                              <node concept="chp4Y" id="60ggPToMPtE" role="3oSUPX">
                                <ref role="cht4Q" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                              </node>
                            </node>
                            <node concept="3TrcHB" id="60ggPToMPtF" role="2OqNvi">
                              <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                            </node>
                          </node>
                          <node concept="21noJN" id="60ggPToMPtG" role="2OqNvi">
                            <node concept="21nZrQ" id="60ggPToMPtI" role="21noJM">
                              <ref role="21nZrZ" to="tpce:3Ftr4R6BFyo" resolve="aggregation" />
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
  </node>
  <node concept="1M2fIO" id="18QbqASWWCy">
    <property role="TrG5h" value="UnorderedChildrenMark_Constraints" />
    <ref role="1M2myG" to="tp5g:18QbqASogIe" resolve="UnorderedChildrenMark" />
    <node concept="1N5Pfh" id="18QbqASWWCz" role="1Mr941">
      <ref role="1N5Vy1" to="tp5g:18QbqASRexq" resolve="link" />
      <node concept="3dgokm" id="18QbqASWWC$" role="1N6uqs">
        <node concept="3clFbS" id="18QbqAT0xFZ" role="2VODD2">
          <node concept="3clFbF" id="18QbqAT0xG0" role="3cqZAp">
            <node concept="2YIFZM" id="18QbqAT0xG2" role="3clFbG">
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <ref role="37wK5l" to="o8zo:3jEbQoczdCs" resolve="forResolvableElements" />
              <node concept="2OqwBi" id="18QbqAT0xG3" role="37wK5m">
                <node concept="2OqwBi" id="18QbqAT0xG6" role="2Oq$k0">
                  <node concept="2OqwBi" id="18QbqAT0xG9" role="2Oq$k0">
                    <node concept="2OqwBi" id="18QbqAT0xGc" role="2Oq$k0">
                      <node concept="2OqwBi" id="18QbqAT0xGf" role="2Oq$k0">
                        <node concept="3kakTB" id="18QbqAT0xGi" role="2Oq$k0" />
                        <node concept="1mfA1w" id="18QbqAT0xGj" role="2OqNvi" />
                      </node>
                      <node concept="3NT_Vc" id="18QbqAT0xGk" role="2OqNvi" />
                    </node>
                    <node concept="2qgKlT" id="18QbqAT0xGl" role="2OqNvi">
                      <ref role="37wK5l" to="tpcn:hEwILLp" resolve="getAggregationLinkDeclarations" />
                    </node>
                  </node>
                  <node concept="3zZkjj" id="18QbqAT0xGm" role="2OqNvi">
                    <node concept="1bVj0M" id="18QbqAT0xGr" role="23t8la">
                      <node concept="gl6BB" id="18QbqAT0xGt" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="18QbqAT0xGv" role="1tU5fm" />
                      </node>
                      <node concept="3clFbS" id="18QbqAT0xGw" role="1bW5cS">
                        <node concept="3clFbF" id="18QbqAT0xGx" role="3cqZAp">
                          <node concept="3fqX7Q" id="18QbqAT0xGz" role="3clFbG">
                            <node concept="2OqwBi" id="18QbqAT0xG_" role="3fr31v">
                              <node concept="37vLTw" id="18QbqAT0xGC" role="2Oq$k0">
                                <ref role="3cqZAo" node="18QbqAT0xGt" resolve="it" />
                              </node>
                              <node concept="2qgKlT" id="18QbqAT0xGD" role="2OqNvi">
                                <ref role="37wK5l" to="tpcn:hEwIfAt" resolve="isSingular" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="ANE8D" id="18QbqAT0xGE" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

