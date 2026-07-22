<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:3cf16c72-eb63-43af-9e50-31efa02178ea(jetbrains.mps.baseLanguage.unitTest.runtime)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="0" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
    <use id="446c26eb-2b7b-4bf0-9b35-f83fa582753e" name="jetbrains.mps.lang.modelapi" version="0" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="3" />
    <use id="acfc188d-d5d6-4598-b370-6f4a983f05b2" name="jetbrains.mps.baseLanguage.methodReferences" version="0" />
  </languages>
  <imports>
    <import index="79ha" ref="r:2876f1ee-0b45-4db5-8c09-0682cdee5c67(jetbrains.mps.tool.environment)" />
    <import index="rbkg" ref="49808fad-9d41-4b96-83fa-9231640f6b2b/java:org.junit.jupiter.api.extension(JUnit/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="gvr" ref="r:63ab318d-3516-42a0-885d-d53a40aa2360(jetbrains.mps.baseLanguage.unitTest.runtime.plugin)" />
    <import index="wyuk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.components(MPS.Core/)" />
    <import index="ze1i" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.runtime(MPS.Core/)" />
    <import index="4u8o" ref="r:a7abd5f1-5d9a-4c90-a542-3e14c173186d(jetbrains.mps.baseLanguage.unitTest.platform)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="u132" ref="49808fad-9d41-4b96-83fa-9231640f6b2b/java:junit.framework(JUnit/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tpek" ref="r:00000000-0000-4000-0000-011c895902c0(jetbrains.mps.baseLanguage.behavior)" />
    <import index="83ig" ref="920eaa0e-ecca-46bc-bee7-4e5c59213dd6/java:jetbrains.mps.testbench(Testbench/)" />
    <import index="ew0j" ref="920eaa0e-ecca-46bc-bee7-4e5c59213dd6/java:jetbrains.mps.tool.environment(Testbench/)" />
    <import index="fyhk" ref="920eaa0e-ecca-46bc-bee7-4e5c59213dd6/java:jetbrains.mps(Testbench/)" />
    <import index="rjhg" ref="49808fad-9d41-4b96-83fa-9231640f6b2b/java:org.junit(JUnit/)" />
    <import index="yqm7" ref="49808fad-9d41-4b96-83fa-9231640f6b2b/java:org.junit.jupiter.api(JUnit/)" />
    <import index="tphd" ref="63b449db-0918-4a4a-a891-2c430ab133e4/java:org.junit.jupiter.params(org.junit.junit5/)" />
    <import index="82uw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.function(JDK/)" />
    <import index="4o98" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.core.platform(MPS.Core/)" />
    <import index="vndm" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.language(MPS.Core/)" />
  </imports>
  <registry>
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
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1224573963862" name="jetbrains.mps.baseLanguage.structure.EnumValuesExpression" flags="nn" index="uiWXb">
        <reference id="1224573974191" name="enumClass" index="uiZuM" />
      </concept>
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ngI" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <property id="2523873803623706117" name="isMultiline" index="hSjvv" />
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1083245097125" name="jetbrains.mps.baseLanguage.structure.EnumClass" flags="ig" index="Qs71p">
        <child id="1083245396908" name="enumConstant" index="Qtgdg" />
      </concept>
      <concept id="1083245299891" name="jetbrains.mps.baseLanguage.structure.EnumConstantDeclaration" flags="ig" index="QsSxf">
        <child id="492581319488141108" name="method" index="2HKRsH" />
      </concept>
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
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
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
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
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1164879685961" name="throwsItem" index="Sfmx6" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
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
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
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
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots">
      <concept id="4079382982702596667" name="jetbrains.mps.baseLanguage.checkedDots.structure.CheckedDotExpression" flags="nn" index="2EnYce" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="5858074156537516430" name="jetbrains.mps.baseLanguage.javadoc.structure.ReturnBlockDocTag" flags="ng" index="x79VA">
        <property id="5858074156537516431" name="text" index="x79VB" />
      </concept>
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="5383422241790532083" name="tags" index="3nqlJM" />
      </concept>
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="2068944020170241612" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocComment" flags="ng" index="3UR2Jj" />
      <concept id="5085607816302529296" name="jetbrains.mps.baseLanguage.javadoc.structure.IHoldCommentLines" flags="ngI" index="1VezTd">
        <child id="5085607816302529587" name="commentBody" index="1Vez_I" />
      </concept>
    </language>
    <language id="446c26eb-2b7b-4bf0-9b35-f83fa582753e" name="jetbrains.mps.lang.modelapi">
      <concept id="4733039728785194814" name="jetbrains.mps.lang.modelapi.structure.NamedNodeReference" flags="ng" index="ZC_QK">
        <reference id="7256306938026143658" name="target" index="2aWVGs" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="4693937538533521280" name="jetbrains.mps.lang.smodel.structure.OfConceptOperation" flags="ng" index="v3k3i">
        <child id="4693937538533538124" name="requestedConcept" index="v3oSu" />
      </concept>
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="3562215692195599741" name="jetbrains.mps.lang.smodel.structure.SLinkImplicitSelect" flags="nn" index="13MTOL">
        <reference id="3562215692195600259" name="link" index="13MTZf" />
      </concept>
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1172326502327" name="jetbrains.mps.lang.smodel.structure.Concept_IsExactlyOperation" flags="nn" index="3O6GUB">
        <child id="1206733650006" name="conceptArgument" index="3QVz_e" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
      </concept>
      <concept id="3661776679762942774" name="jetbrains.mps.lang.smodel.structure.Node_IsOperation" flags="ng" index="1QLmlb">
        <child id="3661776679762942860" name="ref" index="1QLmnL" />
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
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
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
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1235566554328" name="jetbrains.mps.baseLanguage.collections.structure.AnyOperation" flags="nn" index="2HwmR7" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
    </language>
  </registry>
  <node concept="312cEu" id="5gsHVKCieoX">
    <property role="TrG5h" value="EnvironmentAwareExtension" />
    <node concept="2tJIrI" id="5gsHVKCifry" role="jymVt" />
    <node concept="3clFbW" id="5gsHVKCNMAr" role="jymVt">
      <node concept="3cqZAl" id="5gsHVKCNMAt" role="3clF45" />
      <node concept="3Tm1VV" id="5gsHVKCNMAu" role="1B3o_S" />
      <node concept="3clFbS" id="5gsHVKCNMAv" role="3clF47" />
    </node>
    <node concept="3Tm1VV" id="5gsHVKCieoY" role="1B3o_S" />
    <node concept="3uibUv" id="5gsHVKCifo$" role="EKbjA">
      <ref role="3uigEE" to="rbkg:~TestInstancePostProcessor" resolve="TestInstancePostProcessor" />
    </node>
    <node concept="2tJIrI" id="5gsHVKD80LW" role="jymVt" />
    <node concept="3clFb_" id="5gsHVKCifu6" role="jymVt">
      <property role="TrG5h" value="postProcessTestInstance" />
      <node concept="3Tm1VV" id="5gsHVKCifu7" role="1B3o_S" />
      <node concept="3cqZAl" id="5gsHVKCifu9" role="3clF45" />
      <node concept="37vLTG" id="5gsHVKCifua" role="3clF46">
        <property role="TrG5h" value="object" />
        <node concept="3uibUv" id="5gsHVKCifub" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="5gsHVKCifuc" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="5gsHVKCifud" role="1tU5fm">
          <ref role="3uigEE" to="rbkg:~ExtensionContext" resolve="ExtensionContext" />
        </node>
      </node>
      <node concept="3uibUv" id="5gsHVKCifue" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
      <node concept="3clFbS" id="5gsHVKCifuf" role="3clF47">
        <node concept="3clFbJ" id="5gsHVKCifKc" role="3cqZAp">
          <node concept="2ZW3vV" id="5gsHVKCigWQ" role="3clFbw">
            <node concept="3uibUv" id="5gsHVKCih56" role="2ZW6by">
              <ref role="3uigEE" to="79ha:7KC1aYnI6jD" resolve="EnvironmentAware" />
            </node>
            <node concept="37vLTw" id="5gsHVKCifPG" role="2ZW6bz">
              <ref role="3cqZAo" node="5gsHVKCifua" resolve="object" />
            </node>
          </node>
          <node concept="3clFbS" id="5gsHVKCifKe" role="3clFbx">
            <node concept="3SKdUt" id="5OG2WehZJs5" role="3cqZAp">
              <node concept="1PaTwC" id="5OG2WehZJs6" role="1aUNEU">
                <node concept="3oM_SD" id="5OG2WehZKAY" role="1PaTwD">
                  <property role="3oM_SC" value="Despite" />
                </node>
                <node concept="3oM_SD" id="5OG2WehZKBf" role="1PaTwD">
                  <property role="3oM_SC" value="here" />
                </node>
                <node concept="3oM_SD" id="5OG2WehZKBh" role="1PaTwD">
                  <property role="3oM_SC" value="we" />
                </node>
                <node concept="3oM_SD" id="5OG2WehZKBi" role="1PaTwD">
                  <property role="3oM_SC" value="use" />
                </node>
                <node concept="3oM_SD" id="5OG2WehZKBj" role="1PaTwD">
                  <property role="3oM_SC" value="jupiter.api.extensions.EC.Namespace(&quot;MPS&quot;)" />
                </node>
                <node concept="3oM_SD" id="5OG2WehZKC$" role="1PaTwD">
                  <property role="3oM_SC" value="(vs" />
                </node>
                <node concept="3oM_SD" id="5OG2WehZKD5" role="1PaTwD">
                  <property role="3oM_SC" value="platform.engine.support.store.Namespace" />
                </node>
                <node concept="3oM_SD" id="5OG2WehZL2v" role="1PaTwD">
                  <property role="3oM_SC" value="in" />
                </node>
                <node concept="3oM_SD" id="5OG2WehZL2K" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="5OG2WehZL31" role="1PaTwD">
                  <property role="3oM_SC" value="launcher" />
                </node>
                <node concept="3oM_SD" id="5OG2WehZL3M" role="1PaTwD">
                  <property role="3oM_SC" value="code)," />
                </node>
                <node concept="3oM_SD" id="5OG2WehZL4z" role="1PaTwD">
                  <property role="3oM_SC" value="these" />
                </node>
                <node concept="3oM_SD" id="5OG2WehZL54" role="1PaTwD">
                  <property role="3oM_SC" value="do" />
                </node>
                <node concept="3oM_SD" id="5OG2WehZL5l" role="1PaTwD">
                  <property role="3oM_SC" value="match" />
                </node>
                <node concept="3oM_SD" id="5OG2WehZL5Q" role="1PaTwD">
                  <property role="3oM_SC" value="somehow" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5OG2WehWoZV" role="3cqZAp">
              <node concept="3cpWsn" id="5OG2WehWoZW" role="3cpWs9">
                <property role="TrG5h" value="store" />
                <node concept="3uibUv" id="5OG2WehWoZX" role="1tU5fm">
                  <ref role="3uigEE" to="rbkg:~ExtensionContext$Store" resolve="ExtensionContext.Store" />
                </node>
                <node concept="2OqwBi" id="5OG2WehWoZY" role="33vP2m">
                  <node concept="37vLTw" id="5OG2WehWoZZ" role="2Oq$k0">
                    <ref role="3cqZAo" node="5gsHVKCifuc" resolve="context" />
                  </node>
                  <node concept="liA8E" id="5OG2WehWp00" role="2OqNvi">
                    <ref role="37wK5l" to="rbkg:~ExtensionContext.getStore(org.junit.jupiter.api.extension.ExtensionContext$StoreScope,org.junit.jupiter.api.extension.ExtensionContext$Namespace)" resolve="getStore" />
                    <node concept="Rm8GO" id="5OG2WehWp01" role="37wK5m">
                      <ref role="Rm8GQ" to="rbkg:~ExtensionContext$StoreScope.LAUNCHER_SESSION" resolve="LAUNCHER_SESSION" />
                      <ref role="1Px2BO" to="rbkg:~ExtensionContext$StoreScope" resolve="ExtensionContext.StoreScope" />
                    </node>
                    <node concept="2YIFZM" id="5OG2WehWrXW" role="37wK5m">
                      <ref role="37wK5l" to="rbkg:~ExtensionContext$Namespace.create(java.lang.Object...)" resolve="create" />
                      <ref role="1Pybhc" to="rbkg:~ExtensionContext$Namespace" resolve="ExtensionContext.Namespace" />
                      <node concept="Xl_RD" id="5OG2WehWsoO" role="37wK5m">
                        <property role="Xl_RC" value="MPS" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5OG2WehXCkG" role="3cqZAp">
              <node concept="3cpWsn" id="5OG2WehXCkH" role="3cpWs9">
                <property role="TrG5h" value="mpsTestSession" />
                <node concept="3uibUv" id="5OG2WehXBeq" role="1tU5fm">
                  <ref role="3uigEE" to="4u8o:4rQ9_5dBfWe" resolve="TestSession" />
                </node>
                <node concept="2OqwBi" id="5OG2WehXCkI" role="33vP2m">
                  <node concept="37vLTw" id="5OG2WehXCkJ" role="2Oq$k0">
                    <ref role="3cqZAo" node="5OG2WehWoZW" resolve="store" />
                  </node>
                  <node concept="liA8E" id="5OG2WehXCkK" role="2OqNvi">
                    <ref role="37wK5l" to="rbkg:~ExtensionContext$Store.get(java.lang.Object,java.lang.Class)" resolve="get" />
                    <node concept="Xl_RD" id="5OG2WehXCkL" role="37wK5m">
                      <property role="Xl_RC" value="TestSession" />
                    </node>
                    <node concept="3VsKOn" id="5OG2WehXCkM" role="37wK5m">
                      <ref role="3VsUkX" to="4u8o:4rQ9_5dBfWe" resolve="TestSession" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5OG2WehXRfK" role="3cqZAp">
              <node concept="3cpWsn" id="5OG2WehXRfL" role="3cpWs9">
                <property role="TrG5h" value="sv" />
                <node concept="3uibUv" id="5OG2WehXPaE" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~Optional" resolve="Optional" />
                  <node concept="3uibUv" id="5OG2WehXPaH" role="11_B2D">
                    <ref role="3uigEE" to="79ha:HKKzfMjqRV" resolve="Environment" />
                  </node>
                </node>
                <node concept="2OqwBi" id="5OG2WehXRfM" role="33vP2m">
                  <node concept="37vLTw" id="5OG2WehXRfN" role="2Oq$k0">
                    <ref role="3cqZAo" node="5OG2WehXCkH" resolve="mpsTestSession" />
                  </node>
                  <node concept="liA8E" id="5OG2WehXRfO" role="2OqNvi">
                    <ref role="37wK5l" to="4u8o:4rQ9_5dO10F" resolve="getAccessory" />
                    <node concept="3VsKOn" id="5OG2WehXRfP" role="37wK5m">
                      <ref role="3VsUkX" to="79ha:HKKzfMjqRV" resolve="Environment" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5gsHVKCihdw" role="3cqZAp">
              <node concept="2OqwBi" id="5gsHVKCihF8" role="3clFbG">
                <node concept="1eOMI4" id="5gsHVKCihqV" role="2Oq$k0">
                  <node concept="10QFUN" id="5gsHVKCihqU" role="1eOMHV">
                    <node concept="37vLTw" id="5gsHVKCihqT" role="10QFUP">
                      <ref role="3cqZAo" node="5gsHVKCifua" resolve="object" />
                    </node>
                    <node concept="3uibUv" id="5gsHVKCihwQ" role="10QFUM">
                      <ref role="3uigEE" to="79ha:7KC1aYnI6jD" resolve="EnvironmentAware" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="5gsHVKCihQ_" role="2OqNvi">
                  <ref role="37wK5l" to="79ha:7KC1aYnI6li" resolve="setEnvironment" />
                  <node concept="2OqwBi" id="4dqLDEYCjmX" role="37wK5m">
                    <node concept="37vLTw" id="5gsHVKCii9X" role="2Oq$k0">
                      <ref role="3cqZAo" node="5OG2WehXRfL" resolve="sv" />
                    </node>
                    <node concept="liA8E" id="4dqLDEYCjW3" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Optional.get()" resolve="get" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5gsHVKCifug" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5gsHVKCifDl" role="jymVt" />
  </node>
  <node concept="312cEu" id="VKgNXr8gSj">
    <property role="TrG5h" value="ModuleActivator" />
    <node concept="2tJIrI" id="VKgNXr8hYF" role="jymVt" />
    <node concept="312cEg" id="VKgNXr8ios" role="jymVt">
      <property role="TrG5h" value="myEnvironmentAccessoryHandler" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="VKgNXr8iot" role="1B3o_S" />
      <node concept="3uibUv" id="VKgNXr8j0y" role="1tU5fm">
        <ref role="3uigEE" to="gvr:4rQ9_5eeUH7" resolve="EnvironmentAccessoryHandler" />
      </node>
      <node concept="2ShNRf" id="VKgNXr8j8$" role="33vP2m">
        <node concept="HV5vD" id="VKgNXr8qlC" role="2ShVmc">
          <property role="373rjd" value="true" />
          <ref role="HV5vE" to="gvr:4rQ9_5eeUH7" resolve="EnvironmentAccessoryHandler" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="VKgNXrc9oZ" role="jymVt">
      <property role="TrG5h" value="myPlatform" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="VKgNXrc9p0" role="1B3o_S" />
      <node concept="3uibUv" id="VKgNXrc9p2" role="1tU5fm">
        <ref role="3uigEE" to="wyuk:~ComponentHost" resolve="ComponentHost" />
      </node>
    </node>
    <node concept="312cEg" id="2xHx_dlvK5P" role="jymVt">
      <property role="TrG5h" value="myTestPlatformToken" />
      <node concept="3Tm6S6" id="2xHx_dlvK5Q" role="1B3o_S" />
      <node concept="3uibUv" id="2xHx_dlvJnP" role="1tU5fm">
        <ref role="3uigEE" to="4o98:~DynamicComponentWarden$Token" resolve="DynamicComponentWarden.Token" />
      </node>
    </node>
    <node concept="2tJIrI" id="VKgNXr8iiD" role="jymVt" />
    <node concept="3clFbW" id="VKgNXrc7CW" role="jymVt">
      <node concept="37vLTG" id="273sq7WoW0k" role="3clF46">
        <property role="TrG5h" value="platform" />
        <node concept="3uibUv" id="273sq7WoW0j" role="1tU5fm">
          <ref role="3uigEE" to="wyuk:~ComponentHost" resolve="ComponentHost" />
        </node>
      </node>
      <node concept="3cqZAl" id="VKgNXrc7CY" role="3clF45" />
      <node concept="3Tm1VV" id="VKgNXrc7CZ" role="1B3o_S" />
      <node concept="3clFbS" id="VKgNXrc7D0" role="3clF47">
        <node concept="3clFbF" id="VKgNXrc9p3" role="3cqZAp">
          <node concept="37vLTI" id="VKgNXrc9p5" role="3clFbG">
            <node concept="37vLTw" id="VKgNXrc9p8" role="37vLTJ">
              <ref role="3cqZAo" node="VKgNXrc9oZ" resolve="myPlatform" />
            </node>
            <node concept="37vLTw" id="VKgNXrc9p9" role="37vLTx">
              <ref role="3cqZAo" node="273sq7WoW0k" resolve="platform" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="VKgNXrc7xK" role="jymVt" />
    <node concept="3Tm1VV" id="VKgNXr8gSk" role="1B3o_S" />
    <node concept="3uibUv" id="VKgNXr8hYi" role="EKbjA">
      <ref role="3uigEE" to="ze1i:~ModuleRuntime$Activator" resolve="ModuleRuntime.Activator" />
    </node>
    <node concept="3clFb_" id="VKgNXr8hZn" role="jymVt">
      <property role="TrG5h" value="activate" />
      <node concept="3Tm1VV" id="VKgNXr8hZp" role="1B3o_S" />
      <node concept="3cqZAl" id="VKgNXr8hZr" role="3clF45" />
      <node concept="3clFbS" id="VKgNXr8hZs" role="3clF47">
        <node concept="3cpWs8" id="6IZn2klE4lR" role="3cqZAp">
          <node concept="3cpWsn" id="6IZn2klE4lS" role="3cpWs9">
            <property role="TrG5h" value="onDemand" />
            <node concept="3uibUv" id="6IZn2klE5_F" role="1tU5fm">
              <ref role="3uigEE" to="82uw:~Supplier" resolve="Supplier" />
              <node concept="3uibUv" id="6IZn2klE6nX" role="11_B2D">
                <ref role="3uigEE" to="4u8o:4chG8iItd4i" resolve="TestPlatform" />
              </node>
            </node>
            <node concept="1bVj0M" id="6IZn2klE4lT" role="33vP2m">
              <node concept="3clFbS" id="6IZn2klE4lU" role="1bW5cS">
                <node concept="3clFbF" id="6IZn2klE4lV" role="3cqZAp">
                  <node concept="2ShNRf" id="6IZn2klE4lW" role="3clFbG">
                    <node concept="1pGfFk" id="6IZn2klE4lX" role="2ShVmc">
                      <property role="373rjd" value="true" />
                      <ref role="37wK5l" to="4u8o:2VjRkhsFqf_" resolve="TestPlatform" />
                      <node concept="2OqwBi" id="6IZn2klE4lY" role="37wK5m">
                        <node concept="37vLTw" id="6IZn2klE4lZ" role="2Oq$k0">
                          <ref role="3cqZAo" node="VKgNXrc9oZ" resolve="myPlatform" />
                        </node>
                        <node concept="liA8E" id="6IZn2klE4m0" role="2OqNvi">
                          <ref role="37wK5l" to="wyuk:~ComponentHost.findComponent(java.lang.Class)" resolve="findComponent" />
                          <node concept="3VsKOn" id="6IZn2klE4m1" role="37wK5m">
                            <ref role="3VsUkX" to="vndm:~LanguageRegistry" resolve="LanguageRegistry" />
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
        <node concept="3clFbF" id="2xHx_dlvJG7" role="3cqZAp">
          <node concept="37vLTI" id="2xHx_dlvJG9" role="3clFbG">
            <node concept="2OqwBi" id="2xHx_dlvJvg" role="37vLTx">
              <node concept="2OqwBi" id="2xHx_dlvJvh" role="2Oq$k0">
                <node concept="37vLTw" id="2xHx_dlvJvi" role="2Oq$k0">
                  <ref role="3cqZAo" node="VKgNXrc9oZ" resolve="myPlatform" />
                </node>
                <node concept="liA8E" id="2xHx_dlvJvj" role="2OqNvi">
                  <ref role="37wK5l" to="wyuk:~ComponentHost.findComponent(java.lang.Class)" resolve="findComponent" />
                  <node concept="3VsKOn" id="2xHx_dlvJvk" role="37wK5m">
                    <ref role="3VsUkX" to="4o98:~DynamicComponentWarden" resolve="DynamicComponentWarden" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="2xHx_dlvJvl" role="2OqNvi">
                <ref role="37wK5l" to="4o98:~DynamicComponentWarden.publish(java.lang.Class,java.util.function.Supplier)" resolve="publish" />
                <node concept="3VsKOn" id="2xHx_dlvJvm" role="37wK5m">
                  <ref role="3VsUkX" to="4u8o:4chG8iItd4i" resolve="TestPlatform" />
                </node>
                <node concept="37vLTw" id="6IZn2klE4m2" role="37wK5m">
                  <ref role="3cqZAo" node="6IZn2klE4lS" resolve="onDemand" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2xHx_dlvJGd" role="37vLTJ">
              <ref role="3cqZAo" node="2xHx_dlvK5P" resolve="myTestPlatformToken" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="VKgNXr8hZt" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="VKgNXr8qvP" role="jymVt" />
    <node concept="3clFb_" id="2xHx_dlvNr1" role="jymVt">
      <property role="TrG5h" value="contribute" />
      <node concept="3Tm1VV" id="2xHx_dlvNr3" role="1B3o_S" />
      <node concept="3cqZAl" id="2xHx_dlvNr5" role="3clF45" />
      <node concept="37vLTG" id="2xHx_dlvNr6" role="3clF46">
        <property role="TrG5h" value="ctx" />
        <node concept="3uibUv" id="2xHx_dlvNr7" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ModuleRuntime$ActivatorContext" resolve="ModuleRuntime.ActivatorContext" />
        </node>
        <node concept="2AHcQZ" id="2xHx_dlvNr8" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="2xHx_dlvNr9" role="3clF47">
        <node concept="2Gpval" id="2xHx_dlvZOB" role="3cqZAp">
          <node concept="2GrKxI" id="2xHx_dlvZOD" role="2Gsz3X">
            <property role="TrG5h" value="p" />
          </node>
          <node concept="3clFbS" id="2xHx_dlvZOH" role="2LFqv$">
            <node concept="3clFbF" id="2xHx_dlw1rI" role="3cqZAp">
              <node concept="2OqwBi" id="2xHx_dlw1Kw" role="3clFbG">
                <node concept="37vLTw" id="2xHx_dlw1rH" role="2Oq$k0">
                  <ref role="3cqZAo" node="2xHx_dlvNr6" resolve="ctx" />
                </node>
                <node concept="liA8E" id="2xHx_dlw2a_" role="2OqNvi">
                  <ref role="37wK5l" to="ze1i:~ModuleRuntime$ActivatorContext.extension(java.lang.Class,jetbrains.mps.smodel.runtime.ModuleRuntime$Extension)" resolve="extension" />
                  <node concept="3VsKOn" id="2xHx_dlw8Fr" role="37wK5m">
                    <ref role="3VsUkX" to="4u8o:2BZ01qXB6N9" resolve="TestDiscoveryParticipant" />
                  </node>
                  <node concept="2YIFZM" id="N$lq0AZZRe" role="37wK5m">
                    <ref role="37wK5l" to="ze1i:~ModuleRuntime$Extension.of(java.lang.Object,java.lang.String...)" resolve="of" />
                    <ref role="1Pybhc" to="ze1i:~ModuleRuntime$Extension" resolve="ModuleRuntime.Extension" />
                    <node concept="2GrUjf" id="N$lq0AZZRf" role="37wK5m">
                      <ref role="2Gs0qQ" node="2xHx_dlvZOD" resolve="p" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="uiWXb" id="2xHx_dlvY0P" role="2GsD0m">
            <ref role="uiZuM" node="82DhF8Eqc" resolve="JUnitTestDiscoveryParticipants" />
          </node>
        </node>
        <node concept="3clFbF" id="2xHx_dlvO$T" role="3cqZAp">
          <node concept="2OqwBi" id="2xHx_dlvOP4" role="3clFbG">
            <node concept="37vLTw" id="2xHx_dlvO$S" role="2Oq$k0">
              <ref role="3cqZAo" node="2xHx_dlvNr6" resolve="ctx" />
            </node>
            <node concept="liA8E" id="2xHx_dlvP81" role="2OqNvi">
              <ref role="37wK5l" to="ze1i:~ModuleRuntime$ActivatorContext.extension(java.lang.Class,jetbrains.mps.smodel.runtime.ModuleRuntime$Extension)" resolve="extension" />
              <node concept="3VsKOn" id="2xHx_dlvQHu" role="37wK5m">
                <ref role="3VsUkX" to="4u8o:4rQ9_5dBfUM" resolve="TestSessionListener" />
              </node>
              <node concept="2YIFZM" id="6IZn2klBm8P" role="37wK5m">
                <ref role="37wK5l" to="ze1i:~ModuleRuntime$Extension.of(java.lang.Object,java.lang.String...)" resolve="of" />
                <ref role="1Pybhc" to="ze1i:~ModuleRuntime$Extension" resolve="ModuleRuntime.Extension" />
                <node concept="37vLTw" id="6IZn2klBm8Q" role="37wK5m">
                  <ref role="3cqZAo" node="VKgNXr8ios" resolve="myEnvironmentAccessoryHandler" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2xHx_dlvNra" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="VKgNXr8qAi" role="jymVt">
      <property role="TrG5h" value="deactivate" />
      <node concept="3Tm1VV" id="VKgNXr8qAk" role="1B3o_S" />
      <node concept="3cqZAl" id="VKgNXr8qAm" role="3clF45" />
      <node concept="3clFbS" id="VKgNXr8qAn" role="3clF47">
        <node concept="3clFbF" id="2xHx_dlvLrZ" role="3cqZAp">
          <node concept="2OqwBi" id="2xHx_dlvLTs" role="3clFbG">
            <node concept="37vLTw" id="2xHx_dlvLrX" role="2Oq$k0">
              <ref role="3cqZAo" node="2xHx_dlvK5P" resolve="myTestPlatformToken" />
            </node>
            <node concept="liA8E" id="2xHx_dlvMaI" role="2OqNvi">
              <ref role="37wK5l" to="4o98:~DynamicComponentWarden$Token.discard()" resolve="discard" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2xHx_dlvM$B" role="3cqZAp">
          <node concept="37vLTI" id="2xHx_dlvMLp" role="3clFbG">
            <node concept="10Nm6u" id="2xHx_dlvNbc" role="37vLTx" />
            <node concept="37vLTw" id="2xHx_dlvM$_" role="37vLTJ">
              <ref role="3cqZAo" node="2xHx_dlvK5P" resolve="myTestPlatformToken" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="VKgNXr8qAo" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="Qs71p" id="82DhF8Eqc">
    <property role="TrG5h" value="JUnitTestDiscoveryParticipants" />
    <node concept="312cEg" id="MY2kIk2NYI" role="jymVt">
      <property role="TrG5h" value="myRoot" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="MY2kIk2NYJ" role="1B3o_S" />
      <node concept="10P_77" id="MY2kIk2NYL" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="MY2kIk2OIY" role="jymVt">
      <property role="TrG5h" value="myWrappedConcept" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="MY2kIk2OIZ" role="1B3o_S" />
      <node concept="3bZ5Sz" id="MY2kIk2OJ1" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="MY2kIk2R6d" role="jymVt" />
    <node concept="3clFbW" id="1KnTQt4Oiuk" role="jymVt">
      <node concept="3cqZAl" id="1KnTQt4Oiul" role="3clF45" />
      <node concept="3clFbS" id="1KnTQt4Oiun" role="3clF47">
        <node concept="3clFbF" id="MY2kIk2NYM" role="3cqZAp">
          <node concept="37vLTI" id="MY2kIk2NYO" role="3clFbG">
            <node concept="37vLTw" id="MY2kIk2NYR" role="37vLTJ">
              <ref role="3cqZAo" node="MY2kIk2NYI" resolve="myRoot" />
            </node>
            <node concept="37vLTw" id="MY2kIk2NYS" role="37vLTx">
              <ref role="3cqZAo" node="MY2kIk2NvB" resolve="root" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="MY2kIk2OJ2" role="3cqZAp">
          <node concept="37vLTI" id="MY2kIk2OJ4" role="3clFbG">
            <node concept="37vLTw" id="MY2kIk2OJ7" role="37vLTJ">
              <ref role="3cqZAo" node="MY2kIk2OIY" resolve="myWrappedConcept" />
            </node>
            <node concept="37vLTw" id="MY2kIk2OJ8" role="37vLTx">
              <ref role="3cqZAo" node="MY2kIk2N0T" resolve="wrappedConcept" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="MY2kIk2N0T" role="3clF46">
        <property role="TrG5h" value="wrappedConcept" />
        <node concept="3bZ5Sz" id="MY2kIk2N0S" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="MY2kIk2NvB" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="10P_77" id="MY2kIk2NYc" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="82DhFsFH7" role="jymVt" />
    <node concept="3clFb_" id="82DhFsNvK" role="jymVt">
      <property role="TrG5h" value="sourceConcepts" />
      <node concept="3Tm1VV" id="82DhFsNvM" role="1B3o_S" />
      <node concept="3clFbS" id="82DhFsNvO" role="3clF47">
        <node concept="3clFbF" id="82DhFuxuw" role="3cqZAp">
          <node concept="2YIFZM" id="82DhFuyiJ" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object)" resolve="singletonList" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="37vLTw" id="82DhFuz8g" role="37wK5m">
              <ref role="3cqZAo" node="MY2kIk2OIY" resolve="myWrappedConcept" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="82DhFsNvP" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3uibUv" id="82DhFufJT" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3bZ5Sz" id="82DhFuq47" role="11_B2D" />
      </node>
    </node>
    <node concept="3Tm1VV" id="82DhF8Eqd" role="1B3o_S" />
    <node concept="3uibUv" id="82DhF8NUk" role="EKbjA">
      <ref role="3uigEE" to="4u8o:2BZ01qXB6N9" resolve="TestDiscoveryParticipant" />
    </node>
    <node concept="QsSxf" id="1KnTQt4Oiql" role="Qtgdg">
      <property role="TrG5h" value="JUnit3TestCase" />
      <ref role="37wK5l" node="1KnTQt4Oiuk" resolve="JUnitTestDiscoveryParticipants" />
      <node concept="35c_gC" id="7bi2vNWgKwm" role="37wK5m">
        <ref role="35c_gD" to="tpee:fz12cDA" resolve="ClassConcept" />
      </node>
      <node concept="3clFbT" id="MY2kIk2WWU" role="37wK5m">
        <property role="3clFbU" value="true" />
      </node>
      <node concept="3clFb_" id="1KnTQt4Oiqm" role="2HKRsH">
        <property role="TrG5h" value="discover" />
        <node concept="37vLTG" id="1KnTQt4Oiqn" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3Tqbb2" id="1KnTQt4Oiqo" role="1tU5fm" />
          <node concept="2AHcQZ" id="1KnTQt4Oiqp" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="37vLTG" id="2BZ01qXGhdT" role="3clF46">
          <property role="TrG5h" value="request" />
          <node concept="3uibUv" id="2BZ01qXGhXt" role="1tU5fm">
            <ref role="3uigEE" to="4u8o:2BZ01qXB7eE" resolve="TestDiscoveryRequest" />
          </node>
        </node>
        <node concept="3clFbS" id="1KnTQt4Oiqs" role="3clF47">
          <node concept="3clFbJ" id="2BZ01qXG2KR" role="3cqZAp">
            <node concept="3clFbS" id="2BZ01qXG2KT" role="3clFbx">
              <node concept="3cpWs6" id="2BZ01qXG7M3" role="3cqZAp">
                <node concept="2YIFZM" id="2BZ01qXGacH" role="3cqZAk">
                  <ref role="37wK5l" to="33ny:~Optional.empty()" resolve="empty" />
                  <ref role="1Pybhc" to="33ny:~Optional" resolve="Optional" />
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="2BZ01qXG3u4" role="3clFbw">
              <node concept="2OqwBi" id="2BZ01qXG4OP" role="3fr31v">
                <node concept="37vLTw" id="2BZ01qXG4a7" role="2Oq$k0">
                  <ref role="3cqZAo" node="1KnTQt4Oiqn" resolve="node" />
                </node>
                <node concept="1mIQ4w" id="2BZ01qXG6pl" role="2OqNvi">
                  <node concept="chp4Y" id="2BZ01qXG6Wd" role="cj9EA">
                    <ref role="cht4Q" to="tpee:fz12cDA" resolve="ClassConcept" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="1KnTQt4OiqD" role="3cqZAp">
            <node concept="3clFbS" id="1KnTQt4OiqE" role="3clFbx">
              <node concept="3clFbJ" id="1KnTQt4OiqF" role="3cqZAp">
                <node concept="3clFbS" id="1KnTQt4OiqG" role="3clFbx">
                  <node concept="3cpWs8" id="2BZ01qXFZbg" role="3cqZAp">
                    <node concept="3cpWsn" id="2BZ01qXFZbk" role="3cpWs9">
                      <property role="TrG5h" value="ancestor" />
                      <node concept="3Tqbb2" id="2BZ01qXFZbi" role="1tU5fm">
                        <ref role="ehGHo" to="tpee:g7pOWCK" resolve="Classifier" />
                      </node>
                      <node concept="1PxgMI" id="2BZ01qXFZbm" role="33vP2m">
                        <node concept="37vLTw" id="2BZ01qXFZc0" role="1m5AlR">
                          <ref role="3cqZAo" node="1KnTQt4Oiqn" resolve="node" />
                        </node>
                        <node concept="chp4Y" id="2BZ01qXFZbE" role="3oSUPX">
                          <ref role="cht4Q" to="tpee:g7pOWCK" resolve="Classifier" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="2BZ01qXFZbs" role="3cqZAp">
                    <node concept="3clFbS" id="2BZ01qXFZbo" role="3clFbx">
                      <node concept="2$JKZl" id="2BZ01qXFZc4" role="3cqZAp">
                        <node concept="1Wc70l" id="2BZ01qXFZc2" role="2$JKZa">
                          <node concept="1Wc70l" id="2BZ01qXFZc8" role="3uHU7B">
                            <node concept="2OqwBi" id="2BZ01qXFZc6" role="3uHU7w">
                              <node concept="37vLTw" id="2BZ01qXFZbe" role="2Oq$k0">
                                <ref role="3cqZAo" node="2BZ01qXFZbk" resolve="ancestor" />
                              </node>
                              <node concept="1mIQ4w" id="2BZ01qXFZca" role="2OqNvi">
                                <node concept="chp4Y" id="2BZ01qXFZce" role="cj9EA">
                                  <ref role="cht4Q" to="tpee:fz12cDA" resolve="ClassConcept" />
                                </node>
                              </node>
                            </node>
                            <node concept="3y3z36" id="2BZ01qXFZcc" role="3uHU7B">
                              <node concept="37vLTw" id="2BZ01qXFZb$" role="3uHU7B">
                                <ref role="3cqZAo" node="2BZ01qXFZbk" resolve="ancestor" />
                              </node>
                              <node concept="10Nm6u" id="2BZ01qXFZcg" role="3uHU7w" />
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="2BZ01qXFZck" role="3uHU7w">
                            <node concept="2OqwBi" id="2BZ01qXFZci" role="3fr31v">
                              <node concept="2OqwBi" id="2BZ01qXFZco" role="2Oq$k0">
                                <node concept="37vLTw" id="2BZ01qXFZbA" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2BZ01qXFZbk" resolve="ancestor" />
                                </node>
                                <node concept="3zqWPK" id="70OdufORhbT" role="2OqNvi">
                                  <ref role="37wK5l" to="tpcu:hEwIO9y" resolve="getFqName" />
                                </node>
                              </node>
                              <node concept="liA8E" id="2BZ01qXFZcq" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                                <node concept="2OqwBi" id="2BZ01qXFZcu" role="37wK5m">
                                  <node concept="3VsKOn" id="2BZ01qXFZbY" role="2Oq$k0">
                                    <ref role="3VsUkX" to="u132:~TestCase" resolve="TestCase" />
                                  </node>
                                  <node concept="liA8E" id="2BZ01qXFZcy" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~Class.getCanonicalName()" resolve="getCanonicalName" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbS" id="2BZ01qXFZcw" role="2LFqv$">
                          <node concept="3clFbF" id="2BZ01qXFZcA" role="3cqZAp">
                            <node concept="37vLTI" id="2BZ01qXFZc$" role="3clFbG">
                              <node concept="2EnYce" id="2BZ01qXFZcE" role="37vLTx">
                                <node concept="2OqwBi" id="2BZ01qXFZcC" role="2Oq$k0">
                                  <node concept="1PxgMI" id="2BZ01qXFZcG" role="2Oq$k0">
                                    <node concept="37vLTw" id="2BZ01qXFZcm" role="1m5AlR">
                                      <ref role="3cqZAo" node="2BZ01qXFZbk" resolve="ancestor" />
                                    </node>
                                    <node concept="chp4Y" id="2BZ01qXFZbG" role="3oSUPX">
                                      <ref role="cht4Q" to="tpee:fz12cDA" resolve="ClassConcept" />
                                    </node>
                                  </node>
                                  <node concept="3TrEf2" id="2BZ01qXFZcK" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tpee:gXzkM_H" resolve="superclass" />
                                  </node>
                                </node>
                                <node concept="3TrEf2" id="2BZ01qXFZcI" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tpee:g7uigIF" resolve="classifier" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="2BZ01qXFZbq" role="37vLTJ">
                                <ref role="3cqZAo" node="2BZ01qXFZbk" resolve="ancestor" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="2BZ01qXFZbI" role="3cqZAp">
                        <node concept="3clFbS" id="2BZ01qXFZbU" role="3clFbx">
                          <node concept="3cpWs8" id="4chG8iHSBZm" role="3cqZAp">
                            <node concept="3cpWsn" id="4chG8iHSBZn" role="3cpWs9">
                              <property role="TrG5h" value="testOptional" />
                              <node concept="3uibUv" id="4chG8iHM_Rt" role="1tU5fm">
                                <ref role="3uigEE" to="33ny:~Optional" resolve="Optional" />
                                <node concept="3uibUv" id="4chG8iHM_Rw" role="11_B2D">
                                  <ref role="3uigEE" to="4u8o:X4wbLw1YY5" resolve="TestDescriptor" />
                                </node>
                              </node>
                              <node concept="2YIFZM" id="4chG8iHSBZo" role="33vP2m">
                                <ref role="37wK5l" to="33ny:~Optional.of(java.lang.Object)" resolve="of" />
                                <ref role="1Pybhc" to="33ny:~Optional" resolve="Optional" />
                                <node concept="2OqwBi" id="4chG8iHSBZp" role="37wK5m">
                                  <property role="hSjvv" value="true" />
                                  <node concept="2OqwBi" id="4chG8iHSBZq" role="2Oq$k0">
                                    <property role="hSjvv" value="true" />
                                    <node concept="2OqwBi" id="4chG8iHSBZr" role="2Oq$k0">
                                      <property role="hSjvv" value="true" />
                                      <node concept="2OqwBi" id="4chG8iHSBZs" role="2Oq$k0">
                                        <property role="hSjvv" value="true" />
                                        <node concept="2OqwBi" id="4chG8iHSBZt" role="2Oq$k0">
                                          <property role="hSjvv" value="true" />
                                          <node concept="2ShNRf" id="4chG8iIhPV7" role="2Oq$k0">
                                            <node concept="1pGfFk" id="4chG8iIhYlA" role="2ShVmc">
                                              <property role="373rjd" value="true" />
                                              <ref role="37wK5l" to="4u8o:2BZ01qXTl8z" resolve="TestDescriptorBuilder" />
                                              <node concept="2OqwBi" id="4chG8iIehV4" role="37wK5m">
                                                <node concept="37vLTw" id="4chG8iIef05" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="2BZ01qXGhdT" resolve="request" />
                                                </node>
                                                <node concept="liA8E" id="4chG8iIekAb" role="2OqNvi">
                                                  <ref role="37wK5l" to="4u8o:2BZ01qXBaRZ" resolve="peekContainer" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="liA8E" id="4chG8iHSBZx" role="2OqNvi">
                                            <ref role="37wK5l" to="4u8o:2BZ01qXT2h1" resolve="newTestContainer" />
                                            <node concept="2OqwBi" id="4chG8iHSBZy" role="37wK5m">
                                              <node concept="1PxgMI" id="4chG8iHSBZz" role="2Oq$k0">
                                                <node concept="chp4Y" id="4chG8iHSBZ$" role="3oSUPX">
                                                  <ref role="cht4Q" to="tpee:fz12cDA" resolve="ClassConcept" />
                                                </node>
                                                <node concept="37vLTw" id="4chG8iHSBZ_" role="1m5AlR">
                                                  <ref role="3cqZAo" node="1KnTQt4Oiqn" resolve="node" />
                                                </node>
                                              </node>
                                              <node concept="3zqWPK" id="70OdufORhbV" role="2OqNvi">
                                                <ref role="37wK5l" to="tpcu:hEwIO9y" resolve="getFqName" />
                                              </node>
                                            </node>
                                            <node concept="2YIFZM" id="4chG8iHSBZB" role="37wK5m">
                                              <ref role="37wK5l" to="4u8o:2v6DJPJtmBh" resolve="of" />
                                              <ref role="1Pybhc" to="4u8o:2v6DJPJt3SN" resolve="SNodeTestSource" />
                                              <node concept="37vLTw" id="4chG8iHSBZC" role="37wK5m">
                                                <ref role="3cqZAo" node="1KnTQt4Oiqn" resolve="node" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="liA8E" id="4chG8iHSBZD" role="2OqNvi">
                                          <ref role="37wK5l" to="4u8o:2BZ01qYcvoQ" resolve="withProperty" />
                                          <node concept="10M0yZ" id="4chG8iIbTdr" role="37wK5m">
                                            <ref role="3cqZAo" to="4u8o:2v6DJPJvtAp" resolve="CAN_RUN_IN_PROCESS" />
                                            <ref role="1PxDUh" to="4u8o:2v6DJPJtQA1" resolve="TestProperties" />
                                          </node>
                                          <node concept="3clFbT" id="4chG8iHSBZF" role="37wK5m" />
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="4chG8iHSBZG" role="2OqNvi">
                                        <ref role="37wK5l" to="4u8o:2BZ01qYcvoQ" resolve="withProperty" />
                                        <node concept="10M0yZ" id="4chG8iIbTdv" role="37wK5m">
                                          <ref role="3cqZAo" to="4u8o:2v6DJPJvGun" resolve="REQUIRES_MPS_PLATFORM" />
                                          <ref role="1PxDUh" to="4u8o:2v6DJPJtQA1" resolve="TestProperties" />
                                        </node>
                                        <node concept="2YIFZM" id="82DhFbGP2" role="37wK5m">
                                          <ref role="37wK5l" node="4Tkq3_eQfcS" resolve="needsMPS" />
                                          <ref role="1Pybhc" node="4chG8iIoNLB" resolve="TestNodeUtil" />
                                          <node concept="1PxgMI" id="4chG8iHSBZJ" role="37wK5m">
                                            <node concept="chp4Y" id="4chG8iHSBZK" role="3oSUPX">
                                              <ref role="cht4Q" to="tpee:fz12cDA" resolve="ClassConcept" />
                                            </node>
                                            <node concept="37vLTw" id="4chG8iHSBZL" role="1m5AlR">
                                              <ref role="3cqZAo" node="1KnTQt4Oiqn" resolve="node" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="4chG8iHSBZM" role="2OqNvi">
                                      <ref role="37wK5l" to="4u8o:2BZ01qYcvoQ" resolve="withProperty" />
                                      <node concept="10M0yZ" id="4chG8iIbTdo" role="37wK5m">
                                        <ref role="3cqZAo" to="4u8o:2v6DJPJv9l8" resolve="USE_COMPATIBILITY_MODE" />
                                        <ref role="1PxDUh" to="4u8o:2v6DJPJtQA1" resolve="TestProperties" />
                                      </node>
                                      <node concept="3clFbT" id="4chG8iHSBZO" role="37wK5m">
                                        <property role="3clFbU" value="true" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="4chG8iHSBZP" role="2OqNvi">
                                    <ref role="37wK5l" to="4u8o:2BZ01qXSZVl" resolve="add" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="4chG8iHSQ6_" role="3cqZAp">
                            <node concept="2OqwBi" id="4chG8iHSSBI" role="3clFbG">
                              <node concept="37vLTw" id="4chG8iHSQ6z" role="2Oq$k0">
                                <ref role="3cqZAo" node="4chG8iHSBZn" resolve="testOptional" />
                              </node>
                              <node concept="liA8E" id="4chG8iHSUs5" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~Optional.ifPresent(java.util.function.Consumer)" resolve="ifPresent" />
                                <node concept="1bVj0M" id="4chG8iHT0Ol" role="37wK5m">
                                  <node concept="3clFbS" id="4chG8iHT0On" role="1bW5cS">
                                    <node concept="1DcWWT" id="4chG8iHTjhO" role="3cqZAp">
                                      <node concept="3clFbS" id="4chG8iHTjhR" role="2LFqv$">
                                        <node concept="3cpWs8" id="4chG8iHVxRO" role="3cqZAp">
                                          <node concept="3cpWsn" id="4chG8iHVxRP" role="3cpWs9">
                                            <property role="TrG5h" value="builder" />
                                            <node concept="3uibUv" id="4chG8iHVmrp" role="1tU5fm">
                                              <ref role="3uigEE" to="4u8o:2BZ01qXSVbC" resolve="TestDescriptorBuilder" />
                                            </node>
                                            <node concept="2OqwBi" id="4chG8iHVxRQ" role="33vP2m">
                                              <node concept="2ShNRf" id="4chG8iIicj0" role="2Oq$k0">
                                                <node concept="1pGfFk" id="4chG8iIij3w" role="2ShVmc">
                                                  <property role="373rjd" value="true" />
                                                  <ref role="37wK5l" to="4u8o:2BZ01qXTl8z" resolve="TestDescriptorBuilder" />
                                                  <node concept="37vLTw" id="4chG8iIimxG" role="37wK5m">
                                                    <ref role="3cqZAo" node="4chG8iHT2dC" resolve="container" />
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="liA8E" id="4chG8iHVxRV" role="2OqNvi">
                                                <ref role="37wK5l" to="4u8o:2BZ01qXSZma" resolve="newTest" />
                                                <node concept="2OqwBi" id="4chG8iHVxRW" role="37wK5m">
                                                  <node concept="37vLTw" id="4chG8iHVxRX" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="4chG8iHTjhS" resolve="method" />
                                                  </node>
                                                  <node concept="3TrcHB" id="4chG8iHVxRY" role="2OqNvi">
                                                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                                  </node>
                                                </node>
                                                <node concept="2YIFZM" id="4chG8iHVxRZ" role="37wK5m">
                                                  <ref role="37wK5l" to="4u8o:2v6DJPJtmBh" resolve="of" />
                                                  <ref role="1Pybhc" to="4u8o:2v6DJPJt3SN" resolve="SNodeTestSource" />
                                                  <node concept="37vLTw" id="4chG8iHVxS0" role="37wK5m">
                                                    <ref role="3cqZAo" node="4chG8iHTjhS" resolve="method" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3clFbJ" id="4chG8iHUner" role="3cqZAp">
                                          <node concept="3clFbS" id="4chG8iHUnes" role="3clFbx">
                                            <node concept="3clFbF" id="4chG8iHUnet" role="3cqZAp">
                                              <node concept="2OqwBi" id="4chG8iHUneu" role="3clFbG">
                                                <node concept="37vLTw" id="4chG8iHUnev" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="4chG8iHVxRP" resolve="builder" />
                                                </node>
                                                <node concept="liA8E" id="4chG8iHUnew" role="2OqNvi">
                                                  <ref role="37wK5l" to="4u8o:2BZ01qYcvoQ" resolve="withProperty" />
                                                  <node concept="10M0yZ" id="4chG8iIbTdw" role="37wK5m">
                                                    <ref role="3cqZAo" to="4u8o:2v6DJPJvGun" resolve="REQUIRES_MPS_PLATFORM" />
                                                    <ref role="1PxDUh" to="4u8o:2v6DJPJtQA1" resolve="TestProperties" />
                                                  </node>
                                                  <node concept="3clFbT" id="4chG8iHUney" role="37wK5m">
                                                    <property role="3clFbU" value="true" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="2YIFZM" id="82DhFbGP8" role="3clFbw">
                                            <ref role="37wK5l" node="4Tkq3_eRAJK" resolve="isAnnotatedToLaunch" />
                                            <ref role="1Pybhc" node="4chG8iIoNLB" resolve="TestNodeUtil" />
                                            <node concept="1PxgMI" id="4chG8iHUne$" role="37wK5m">
                                              <node concept="chp4Y" id="4chG8iHUne_" role="3oSUPX">
                                                <ref role="cht4Q" to="tpee:fzclF8t" resolve="InstanceMethodDeclaration" />
                                              </node>
                                              <node concept="37vLTw" id="4chG8iHUneA" role="1m5AlR">
                                                <ref role="3cqZAo" node="4chG8iHTjhS" resolve="method" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3clFbF" id="4chG8iHTrty" role="3cqZAp">
                                          <node concept="2OqwBi" id="4chG8iHVP8q" role="3clFbG">
                                            <node concept="37vLTw" id="4chG8iHVxS1" role="2Oq$k0">
                                              <ref role="3cqZAo" node="4chG8iHVxRP" resolve="builder" />
                                            </node>
                                            <node concept="liA8E" id="4chG8iHVQ8V" role="2OqNvi">
                                              <ref role="37wK5l" to="4u8o:2BZ01qXSZVl" resolve="add" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3cpWsn" id="4chG8iHTjhS" role="1Duv9x">
                                        <property role="TrG5h" value="method" />
                                        <node concept="3Tqbb2" id="4chG8iHTjhW" role="1tU5fm">
                                          <ref role="ehGHo" to="tpee:fzclF8t" resolve="InstanceMethodDeclaration" />
                                        </node>
                                      </node>
                                      <node concept="2OqwBi" id="4chG8iHTjhX" role="1DdaDG">
                                        <node concept="2OqwBi" id="4chG8iHTjhY" role="2Oq$k0">
                                          <node concept="2OqwBi" id="4chG8iHTjhZ" role="2Oq$k0">
                                            <node concept="2OqwBi" id="4chG8iHTji0" role="2Oq$k0">
                                              <node concept="3zqWPK" id="70OdufORhbX" role="2OqNvi">
                                                <ref role="37wK5l" to="tpek:6r77ob2UWbY" resolve="getThisType" />
                                              </node>
                                              <node concept="1PxgMI" id="4chG8iHTji2" role="2Oq$k0">
                                                <node concept="chp4Y" id="4chG8iHTji3" role="3oSUPX">
                                                  <ref role="cht4Q" to="tpee:fz12cDA" resolve="ClassConcept" />
                                                </node>
                                                <node concept="37vLTw" id="4chG8iHTji4" role="1m5AlR">
                                                  <ref role="3cqZAo" node="1KnTQt4Oiqn" resolve="node" />
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="3zqWPK" id="70OdufORhbZ" role="2OqNvi">
                                              <ref role="37wK5l" to="tpek:6r77ob2V1Fr" resolve="getMembers" />
                                            </node>
                                          </node>
                                          <node concept="v3k3i" id="4chG8iHTji6" role="2OqNvi">
                                            <node concept="chp4Y" id="4chG8iHTji7" role="v3oSu">
                                              <ref role="cht4Q" to="tpee:fzclF8t" resolve="InstanceMethodDeclaration" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3zZkjj" id="4chG8iHTji8" role="2OqNvi">
                                          <node concept="1bVj0M" id="4chG8iHTji9" role="23t8la">
                                            <node concept="3clFbS" id="4chG8iHTjia" role="1bW5cS">
                                              <node concept="3clFbF" id="4chG8iHTjib" role="3cqZAp">
                                                <node concept="2YIFZM" id="82DhFbGPc" role="3clFbG">
                                                  <ref role="37wK5l" node="1KnTQt4Oif7" resolve="isTestMethod" />
                                                  <ref role="1Pybhc" node="4chG8iIoNLB" resolve="TestNodeUtil" />
                                                  <node concept="37vLTw" id="4chG8iHTjid" role="37wK5m">
                                                    <ref role="3cqZAo" node="5W7E4fV0XzS" resolve="it" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="gl6BB" id="5W7E4fV0XzS" role="1bW2Oz">
                                              <property role="TrG5h" value="it" />
                                              <node concept="2jxLKc" id="5W7E4fV0XzT" role="1tU5fm" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="gl6BB" id="4chG8iHT2dC" role="1bW2Oz">
                                    <property role="TrG5h" value="container" />
                                    <node concept="2jxLKc" id="4chG8iHT2dD" role="1tU5fm" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs6" id="2BZ01qXO9DH" role="3cqZAp">
                            <node concept="37vLTw" id="4chG8iHSBZQ" role="3cqZAk">
                              <ref role="3cqZAo" node="4chG8iHSBZn" resolve="testOptional" />
                            </node>
                          </node>
                          <node concept="3clFbH" id="2BZ01qYiVC8" role="3cqZAp" />
                        </node>
                        <node concept="3y3z36" id="2BZ01qXFZbW" role="3clFbw">
                          <node concept="10Nm6u" id="2BZ01qXFZbK" role="3uHU7w" />
                          <node concept="37vLTw" id="2BZ01qXFZbM" role="3uHU7B">
                            <ref role="3cqZAo" node="2BZ01qXFZbk" resolve="ancestor" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="2BZ01qXFZbu" role="3clFbw">
                      <node concept="37vLTw" id="2BZ01qXFZbS" role="2Oq$k0">
                        <ref role="3cqZAo" node="2BZ01qXFZbk" resolve="ancestor" />
                      </node>
                      <node concept="3zqWPK" id="70OdufORhc1" role="2OqNvi">
                        <ref role="37wK5l" to="tpek:3sXyOQUqKq0" resolve="checkLoops" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3fqX7Q" id="7ied1lkl9ji" role="3clFbw">
                  <node concept="2OqwBi" id="7ied1lkl9jk" role="3fr31v">
                    <node concept="1PxgMI" id="7ied1lkl9jl" role="2Oq$k0">
                      <node concept="37vLTw" id="7ied1lkl9jm" role="1m5AlR">
                        <ref role="3cqZAo" node="1KnTQt4Oiqn" resolve="node" />
                      </node>
                      <node concept="chp4Y" id="7ied1lkl9jn" role="3oSUPX">
                        <ref role="cht4Q" to="tpee:fz12cDA" resolve="ClassConcept" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="7ied1lkl9jo" role="2OqNvi">
                      <ref role="3TsBF5" to="tpee:fDsVARU" resolve="abstractClass" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="6hI7daPQhPP" role="3clFbw">
              <node concept="2OqwBi" id="1KnTQt4Oiry" role="2Oq$k0">
                <node concept="37vLTw" id="2BHiRxgmkEP" role="2Oq$k0">
                  <ref role="3cqZAo" node="1KnTQt4Oiqn" resolve="node" />
                </node>
                <node concept="2yIwOk" id="6hI7daPQh4p" role="2OqNvi" />
              </node>
              <node concept="3O6GUB" id="6hI7daPQimE" role="2OqNvi">
                <node concept="chp4Y" id="6hI7daPRyQq" role="3QVz_e">
                  <ref role="cht4Q" to="tpee:fz12cDA" resolve="ClassConcept" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="7ied1lkl5$J" role="3cqZAp">
            <node concept="2YIFZM" id="2BZ01qXGcCL" role="3cqZAk">
              <ref role="37wK5l" to="33ny:~Optional.empty()" resolve="empty" />
              <ref role="1Pybhc" to="33ny:~Optional" resolve="Optional" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="1KnTQt4Oiqx" role="1B3o_S" />
        <node concept="2AHcQZ" id="1KnTQt4Oiqy" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="3uibUv" id="2BZ01qXGetn" role="3clF45">
          <ref role="3uigEE" to="33ny:~Optional" resolve="Optional" />
          <node concept="3uibUv" id="2BZ01qXGTzM" role="11_B2D">
            <ref role="3uigEE" to="4u8o:X4wbLw1YY5" resolve="TestDescriptor" />
          </node>
        </node>
      </node>
    </node>
    <node concept="QsSxf" id="1KnTQt4OirP" role="Qtgdg">
      <property role="TrG5h" value="JUnit3Methods" />
      <ref role="37wK5l" node="1KnTQt4Oiuk" resolve="JUnitTestDiscoveryParticipants" />
      <node concept="35c_gC" id="7bi2vNWgKVf" role="37wK5m">
        <ref role="35c_gD" to="tpee:fzclF8t" resolve="InstanceMethodDeclaration" />
      </node>
      <node concept="3clFbT" id="MY2kIk2XBb" role="37wK5m">
        <property role="3clFbU" value="false" />
      </node>
      <node concept="3clFb_" id="1KnTQt4OirQ" role="2HKRsH">
        <property role="TrG5h" value="discover" />
        <node concept="37vLTG" id="1KnTQt4OirR" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3Tqbb2" id="1KnTQt4OirS" role="1tU5fm" />
          <node concept="2AHcQZ" id="1KnTQt4OirT" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="37vLTG" id="2BZ01qXHAjE" role="3clF46">
          <property role="TrG5h" value="request" />
          <node concept="3uibUv" id="2BZ01qXHAQF" role="1tU5fm">
            <ref role="3uigEE" to="4u8o:2BZ01qXB7eE" resolve="TestDiscoveryRequest" />
          </node>
        </node>
        <node concept="3uibUv" id="2BZ01qXHzJU" role="3clF45">
          <ref role="3uigEE" to="33ny:~Optional" resolve="Optional" />
          <node concept="3uibUv" id="2BZ01qXH_49" role="11_B2D">
            <ref role="3uigEE" to="4u8o:X4wbLw1YY5" resolve="TestDescriptor" />
          </node>
        </node>
        <node concept="3clFbS" id="1KnTQt4OirW" role="3clF47">
          <node concept="3clFbJ" id="2BZ01qXHC$D" role="3cqZAp">
            <node concept="3clFbS" id="2BZ01qXHC$F" role="3clFbx">
              <node concept="3cpWs6" id="2BZ01qXHFxd" role="3cqZAp">
                <node concept="2YIFZM" id="2BZ01qXHJ_c" role="3cqZAk">
                  <ref role="37wK5l" to="33ny:~Optional.empty()" resolve="empty" />
                  <ref role="1Pybhc" to="33ny:~Optional" resolve="Optional" />
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="2BZ01qXHKlO" role="3clFbw">
              <node concept="2OqwBi" id="2BZ01qXHKlQ" role="3fr31v">
                <node concept="37vLTw" id="2BZ01qXHKlR" role="2Oq$k0">
                  <ref role="3cqZAo" node="1KnTQt4OirR" resolve="node" />
                </node>
                <node concept="1mIQ4w" id="2BZ01qXHKlS" role="2OqNvi">
                  <node concept="chp4Y" id="2BZ01qXHKlT" role="cj9EA">
                    <ref role="cht4Q" to="tpee:fzclF8t" resolve="InstanceMethodDeclaration" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2BZ01qXVARJ" role="3cqZAp">
            <node concept="3cpWsn" id="2BZ01qXVARK" role="3cpWs9">
              <property role="TrG5h" value="container" />
              <node concept="3uibUv" id="2BZ01qXV$wd" role="1tU5fm">
                <ref role="3uigEE" to="4u8o:X4wbLw1YY5" resolve="TestDescriptor" />
              </node>
              <node concept="2OqwBi" id="2BZ01qXVARL" role="33vP2m">
                <node concept="37vLTw" id="2BZ01qXVARM" role="2Oq$k0">
                  <ref role="3cqZAo" node="2BZ01qXHAjE" resolve="request" />
                </node>
                <node concept="liA8E" id="2BZ01qXVARN" role="2OqNvi">
                  <ref role="37wK5l" to="4u8o:2BZ01qXBaRZ" resolve="peekContainer" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4chG8iHW1zp" role="3cqZAp">
            <node concept="3cpWsn" id="4chG8iHW1zq" role="3cpWs9">
              <property role="TrG5h" value="testOptional" />
              <node concept="3uibUv" id="4chG8iHW1zr" role="1tU5fm">
                <ref role="3uigEE" to="33ny:~Optional" resolve="Optional" />
                <node concept="3uibUv" id="4chG8iHW1zs" role="11_B2D">
                  <ref role="3uigEE" to="4u8o:X4wbLw1YY5" resolve="TestDescriptor" />
                </node>
              </node>
              <node concept="2OqwBi" id="4chG8iHW1zt" role="33vP2m">
                <node concept="37vLTw" id="4chG8iHW1zu" role="2Oq$k0">
                  <ref role="3cqZAo" node="2BZ01qXVARK" resolve="container" />
                </node>
                <node concept="liA8E" id="4chG8iHW1zv" role="2OqNvi">
                  <ref role="37wK5l" to="4u8o:4chG8iHLM1$" resolve="selectTest" />
                  <node concept="2YIFZM" id="4chG8iHW1zw" role="37wK5m">
                    <ref role="37wK5l" to="4u8o:2v6DJPJtmBh" resolve="of" />
                    <ref role="1Pybhc" to="4u8o:2v6DJPJt3SN" resolve="SNodeTestSource" />
                    <node concept="37vLTw" id="4chG8iHW1zx" role="37wK5m">
                      <ref role="3cqZAo" node="1KnTQt4OirR" resolve="node" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="4chG8iHW1zy" role="3cqZAp">
            <node concept="3clFbS" id="4chG8iHW1zz" role="3clFbx">
              <node concept="3clFbF" id="4chG8iHW1z$" role="3cqZAp">
                <node concept="37vLTI" id="4chG8iHW1z_" role="3clFbG">
                  <node concept="37vLTw" id="4chG8iHW1zA" role="37vLTJ">
                    <ref role="3cqZAo" node="4chG8iHW1zq" resolve="testOptional" />
                  </node>
                  <node concept="2OqwBi" id="4chG8iHW1zB" role="37vLTx">
                    <node concept="2OqwBi" id="4chG8iHW1zC" role="2Oq$k0">
                      <node concept="Rm8GO" id="4chG8iHWbS3" role="2Oq$k0">
                        <ref role="Rm8GQ" node="1KnTQt4Oiql" resolve="JUnit3TestCase" />
                        <ref role="1Px2BO" node="82DhF8Eqc" resolve="JUnitTestDiscoveryParticipants" />
                      </node>
                      <node concept="liA8E" id="4chG8iHW1zE" role="2OqNvi">
                        <ref role="37wK5l" to="4u8o:2BZ01qXB6ZH" resolve="discover" />
                        <node concept="2OqwBi" id="4chG8iHWnCw" role="37wK5m">
                          <node concept="37vLTw" id="4chG8iHW1zF" role="2Oq$k0">
                            <ref role="3cqZAo" node="1KnTQt4OirR" resolve="node" />
                          </node>
                          <node concept="1mfA1w" id="4chG8iHWrGV" role="2OqNvi" />
                        </node>
                        <node concept="37vLTw" id="4chG8iHW1zG" role="37wK5m">
                          <ref role="3cqZAo" node="2BZ01qXHAjE" resolve="request" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="4chG8iHW1zH" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Optional.flatMap(java.util.function.Function)" resolve="flatMap" />
                      <node concept="1bVj0M" id="4chG8iHW1zI" role="37wK5m">
                        <node concept="3clFbS" id="4chG8iHW1zJ" role="1bW5cS">
                          <node concept="3clFbF" id="4chG8iHW1zK" role="3cqZAp">
                            <node concept="2OqwBi" id="4chG8iHW1zL" role="3clFbG">
                              <node concept="37vLTw" id="4chG8iHW1zM" role="2Oq$k0">
                                <ref role="3cqZAo" node="4chG8iHW1zQ" resolve="descriptor" />
                              </node>
                              <node concept="liA8E" id="4chG8iHW1zN" role="2OqNvi">
                                <ref role="37wK5l" to="4u8o:4chG8iHLM1$" resolve="selectTest" />
                                <node concept="2YIFZM" id="4chG8iHW1zO" role="37wK5m">
                                  <ref role="37wK5l" to="4u8o:2v6DJPJtmBh" resolve="of" />
                                  <ref role="1Pybhc" to="4u8o:2v6DJPJt3SN" resolve="SNodeTestSource" />
                                  <node concept="37vLTw" id="4chG8iHW1zP" role="37wK5m">
                                    <ref role="3cqZAo" node="1KnTQt4OirR" resolve="node" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="4chG8iHW1zQ" role="1bW2Oz">
                          <property role="TrG5h" value="descriptor" />
                          <node concept="2jxLKc" id="4chG8iHW1zR" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="4chG8iHW1zS" role="3clFbw">
              <node concept="37vLTw" id="4chG8iHW1zT" role="2Oq$k0">
                <ref role="3cqZAo" node="4chG8iHW1zq" resolve="testOptional" />
              </node>
              <node concept="liA8E" id="4chG8iHW1zU" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Optional.isEmpty()" resolve="isEmpty" />
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="4chG8iHW1zV" role="3cqZAp">
            <node concept="37vLTw" id="4chG8iHW1zW" role="3cqZAk">
              <ref role="3cqZAo" node="4chG8iHW1zq" resolve="testOptional" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="1KnTQt4Ois1" role="1B3o_S" />
        <node concept="2AHcQZ" id="1KnTQt4Ois2" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
    </node>
    <node concept="QsSxf" id="1KnTQt4Oisv" role="Qtgdg">
      <property role="TrG5h" value="JUnit4Test" />
      <ref role="37wK5l" node="1KnTQt4Oiuk" resolve="JUnitTestDiscoveryParticipants" />
      <node concept="35c_gC" id="7bi2vNWgLia" role="37wK5m">
        <ref role="35c_gD" to="tpee:fz12cDA" resolve="ClassConcept" />
      </node>
      <node concept="3clFbT" id="MY2kIk2Y5l" role="37wK5m">
        <property role="3clFbU" value="true" />
      </node>
      <node concept="3clFb_" id="1KnTQt4Oisw" role="2HKRsH">
        <property role="TrG5h" value="discover" />
        <node concept="37vLTG" id="1KnTQt4Oisx" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3Tqbb2" id="1KnTQt4Oisy" role="1tU5fm" />
          <node concept="2AHcQZ" id="1KnTQt4Oisz" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="37vLTG" id="2BZ01qXIJUB" role="3clF46">
          <property role="TrG5h" value="request" />
          <node concept="3uibUv" id="2BZ01qXIKzO" role="1tU5fm">
            <ref role="3uigEE" to="4u8o:2BZ01qXB7eE" resolve="TestDiscoveryRequest" />
          </node>
        </node>
        <node concept="3uibUv" id="2BZ01qXIGJy" role="3clF45">
          <ref role="3uigEE" to="33ny:~Optional" resolve="Optional" />
          <node concept="3uibUv" id="2BZ01qXIIow" role="11_B2D">
            <ref role="3uigEE" to="4u8o:X4wbLw1YY5" resolve="TestDescriptor" />
          </node>
        </node>
        <node concept="3clFbS" id="1KnTQt4OisA" role="3clF47">
          <node concept="3clFbJ" id="2BZ01qXImcA" role="3cqZAp">
            <node concept="3clFbS" id="2BZ01qXImcB" role="3clFbx">
              <node concept="3cpWs6" id="2BZ01qXImcC" role="3cqZAp">
                <node concept="2YIFZM" id="2BZ01qXImcD" role="3cqZAk">
                  <ref role="37wK5l" to="33ny:~Optional.empty()" resolve="empty" />
                  <ref role="1Pybhc" to="33ny:~Optional" resolve="Optional" />
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="2BZ01qXImcE" role="3clFbw">
              <node concept="2OqwBi" id="2BZ01qXImcF" role="3fr31v">
                <node concept="37vLTw" id="2BZ01qXImcG" role="2Oq$k0">
                  <ref role="3cqZAo" node="1KnTQt4Oisx" resolve="node" />
                </node>
                <node concept="1mIQ4w" id="2BZ01qXImcH" role="2OqNvi">
                  <node concept="chp4Y" id="2BZ01qXImcI" role="cj9EA">
                    <ref role="cht4Q" to="tpee:fz12cDA" resolve="ClassConcept" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="7ied1lklfvp" role="3cqZAp">
            <node concept="3clFbS" id="7ied1lklfvr" role="3clFbx">
              <node concept="3cpWs8" id="4chG8iHWB7c" role="3cqZAp">
                <node concept="3cpWsn" id="4chG8iHWB7d" role="3cpWs9">
                  <property role="TrG5h" value="testOptional" />
                  <node concept="3uibUv" id="4chG8iHM_GV" role="1tU5fm">
                    <ref role="3uigEE" to="33ny:~Optional" resolve="Optional" />
                    <node concept="3uibUv" id="4chG8iHM_GY" role="11_B2D">
                      <ref role="3uigEE" to="4u8o:X4wbLw1YY5" resolve="TestDescriptor" />
                    </node>
                  </node>
                  <node concept="2YIFZM" id="4chG8iHWB7e" role="33vP2m">
                    <ref role="37wK5l" to="33ny:~Optional.of(java.lang.Object)" resolve="of" />
                    <ref role="1Pybhc" to="33ny:~Optional" resolve="Optional" />
                    <node concept="2OqwBi" id="4chG8iHWB7f" role="37wK5m">
                      <property role="hSjvv" value="true" />
                      <node concept="2OqwBi" id="4chG8iHWB7g" role="2Oq$k0">
                        <property role="hSjvv" value="true" />
                        <node concept="2OqwBi" id="4chG8iHWB7h" role="2Oq$k0">
                          <property role="hSjvv" value="true" />
                          <node concept="2OqwBi" id="4chG8iHWB7i" role="2Oq$k0">
                            <property role="hSjvv" value="true" />
                            <node concept="2ShNRf" id="4chG8iIiyBq" role="2Oq$k0">
                              <node concept="1pGfFk" id="4chG8iIiEKs" role="2ShVmc">
                                <property role="373rjd" value="true" />
                                <ref role="37wK5l" to="4u8o:2BZ01qXTl8z" resolve="TestDescriptorBuilder" />
                                <node concept="2OqwBi" id="4chG8iIevbi" role="37wK5m">
                                  <node concept="37vLTw" id="4chG8iIesHg" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2BZ01qXIJUB" resolve="request" />
                                  </node>
                                  <node concept="liA8E" id="4chG8iIeyiT" role="2OqNvi">
                                    <ref role="37wK5l" to="4u8o:2BZ01qXBaRZ" resolve="peekContainer" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="liA8E" id="4chG8iHWB7m" role="2OqNvi">
                              <ref role="37wK5l" to="4u8o:2BZ01qXT2h1" resolve="newTestContainer" />
                              <node concept="2OqwBi" id="4chG8iHWB7n" role="37wK5m">
                                <node concept="1PxgMI" id="4chG8iHWB7o" role="2Oq$k0">
                                  <node concept="chp4Y" id="4chG8iHWB7p" role="3oSUPX">
                                    <ref role="cht4Q" to="tpee:fz12cDA" resolve="ClassConcept" />
                                  </node>
                                  <node concept="37vLTw" id="4chG8iHWB7q" role="1m5AlR">
                                    <ref role="3cqZAo" node="1KnTQt4Oisx" resolve="node" />
                                  </node>
                                </node>
                                <node concept="3zqWPK" id="70OdufORhc3" role="2OqNvi">
                                  <ref role="37wK5l" to="tpcu:hEwIO9y" resolve="getFqName" />
                                </node>
                              </node>
                              <node concept="2YIFZM" id="4chG8iHWB7s" role="37wK5m">
                                <ref role="37wK5l" to="4u8o:2v6DJPJtmBh" resolve="of" />
                                <ref role="1Pybhc" to="4u8o:2v6DJPJt3SN" resolve="SNodeTestSource" />
                                <node concept="37vLTw" id="4chG8iHWB7t" role="37wK5m">
                                  <ref role="3cqZAo" node="1KnTQt4Oisx" resolve="node" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="4chG8iHWB7u" role="2OqNvi">
                            <ref role="37wK5l" to="4u8o:2BZ01qYcvoQ" resolve="withProperty" />
                            <node concept="10M0yZ" id="4chG8iIbTds" role="37wK5m">
                              <ref role="3cqZAo" to="4u8o:2v6DJPJvtAp" resolve="CAN_RUN_IN_PROCESS" />
                              <ref role="1PxDUh" to="4u8o:2v6DJPJtQA1" resolve="TestProperties" />
                            </node>
                            <node concept="3clFbT" id="4chG8iHWB7w" role="37wK5m" />
                          </node>
                        </node>
                        <node concept="liA8E" id="4chG8iHWB7x" role="2OqNvi">
                          <ref role="37wK5l" to="4u8o:2BZ01qYcvoQ" resolve="withProperty" />
                          <node concept="10M0yZ" id="4chG8iIbTdx" role="37wK5m">
                            <ref role="3cqZAo" to="4u8o:2v6DJPJvGun" resolve="REQUIRES_MPS_PLATFORM" />
                            <ref role="1PxDUh" to="4u8o:2v6DJPJtQA1" resolve="TestProperties" />
                          </node>
                          <node concept="2YIFZM" id="82DhFbGP3" role="37wK5m">
                            <ref role="37wK5l" node="4Tkq3_eQfcS" resolve="needsMPS" />
                            <ref role="1Pybhc" node="4chG8iIoNLB" resolve="TestNodeUtil" />
                            <node concept="1PxgMI" id="4chG8iHWB7$" role="37wK5m">
                              <node concept="37vLTw" id="4chG8iHWB7_" role="1m5AlR">
                                <ref role="3cqZAo" node="1KnTQt4Oisx" resolve="node" />
                              </node>
                              <node concept="chp4Y" id="4chG8iHWB7A" role="3oSUPX">
                                <ref role="cht4Q" to="tpee:fz12cDA" resolve="ClassConcept" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="4chG8iHWB7B" role="2OqNvi">
                        <ref role="37wK5l" to="4u8o:2BZ01qXSZVl" resolve="add" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="4chG8iHWRSL" role="3cqZAp">
                <node concept="2OqwBi" id="4chG8iHWTUs" role="3clFbG">
                  <node concept="37vLTw" id="4chG8iHWRSJ" role="2Oq$k0">
                    <ref role="3cqZAo" node="4chG8iHWB7d" resolve="testOptional" />
                  </node>
                  <node concept="liA8E" id="4chG8iHWVNo" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Optional.ifPresent(java.util.function.Consumer)" resolve="ifPresent" />
                    <node concept="1bVj0M" id="4chG8iHWYyh" role="37wK5m">
                      <node concept="3clFbS" id="4chG8iHWYyi" role="1bW5cS">
                        <node concept="1DcWWT" id="4chG8iHXUUW" role="3cqZAp">
                          <node concept="3clFbS" id="4chG8iHXUUZ" role="2LFqv$">
                            <node concept="3cpWs8" id="4chG8iHYas0" role="3cqZAp">
                              <node concept="3cpWsn" id="4chG8iHYas1" role="3cpWs9">
                                <property role="TrG5h" value="builder" />
                                <node concept="3uibUv" id="4chG8iHY3lH" role="1tU5fm">
                                  <ref role="3uigEE" to="4u8o:2BZ01qXSVbC" resolve="TestDescriptorBuilder" />
                                </node>
                                <node concept="2OqwBi" id="4chG8iHYas2" role="33vP2m">
                                  <node concept="2ShNRf" id="4chG8iIiQzP" role="2Oq$k0">
                                    <node concept="1pGfFk" id="4chG8iIiYx0" role="2ShVmc">
                                      <property role="373rjd" value="true" />
                                      <ref role="37wK5l" to="4u8o:2BZ01qXTl8z" resolve="TestDescriptorBuilder" />
                                      <node concept="37vLTw" id="4chG8iIj1Ht" role="37wK5m">
                                        <ref role="3cqZAo" node="4chG8iHWZKG" resolve="container" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="4chG8iHYas7" role="2OqNvi">
                                    <ref role="37wK5l" to="4u8o:2BZ01qXSZma" resolve="newTest" />
                                    <node concept="2OqwBi" id="4chG8iHYas8" role="37wK5m">
                                      <node concept="1PxgMI" id="4chG8iHYas9" role="2Oq$k0">
                                        <node concept="chp4Y" id="4chG8iHYasa" role="3oSUPX">
                                          <ref role="cht4Q" to="tpee:fzclF8t" resolve="InstanceMethodDeclaration" />
                                        </node>
                                        <node concept="37vLTw" id="4chG8iHYasb" role="1m5AlR">
                                          <ref role="3cqZAo" node="4chG8iHXUV0" resolve="method" />
                                        </node>
                                      </node>
                                      <node concept="3TrcHB" id="4chG8iHYasc" role="2OqNvi">
                                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                      </node>
                                    </node>
                                    <node concept="2YIFZM" id="4chG8iHYasd" role="37wK5m">
                                      <ref role="37wK5l" to="4u8o:2v6DJPJtmBh" resolve="of" />
                                      <ref role="1Pybhc" to="4u8o:2v6DJPJt3SN" resolve="SNodeTestSource" />
                                      <node concept="37vLTw" id="4chG8iHYase" role="37wK5m">
                                        <ref role="3cqZAo" node="4chG8iHXUV0" resolve="method" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="4chG8iHYkbz" role="3cqZAp">
                              <node concept="3clFbS" id="4chG8iHYkb$" role="3clFbx">
                                <node concept="3clFbF" id="4chG8iHYkb_" role="3cqZAp">
                                  <node concept="2OqwBi" id="4chG8iHYkbA" role="3clFbG">
                                    <node concept="37vLTw" id="4chG8iHYkbB" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4chG8iHYas1" resolve="builder" />
                                    </node>
                                    <node concept="liA8E" id="4chG8iHYkbC" role="2OqNvi">
                                      <ref role="37wK5l" to="4u8o:2BZ01qYcvoQ" resolve="withProperty" />
                                      <node concept="10M0yZ" id="4chG8iIbTdy" role="37wK5m">
                                        <ref role="3cqZAo" to="4u8o:2v6DJPJvGun" resolve="REQUIRES_MPS_PLATFORM" />
                                        <ref role="1PxDUh" to="4u8o:2v6DJPJtQA1" resolve="TestProperties" />
                                      </node>
                                      <node concept="3clFbT" id="4chG8iHYkbE" role="37wK5m">
                                        <property role="3clFbU" value="true" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2YIFZM" id="82DhFbGP9" role="3clFbw">
                                <ref role="37wK5l" node="4Tkq3_eRAJK" resolve="isAnnotatedToLaunch" />
                                <ref role="1Pybhc" node="4chG8iIoNLB" resolve="TestNodeUtil" />
                                <node concept="1PxgMI" id="4chG8iHYkbG" role="37wK5m">
                                  <node concept="chp4Y" id="4chG8iHYkbH" role="3oSUPX">
                                    <ref role="cht4Q" to="tpee:fzclF8t" resolve="InstanceMethodDeclaration" />
                                  </node>
                                  <node concept="37vLTw" id="4chG8iHYkbI" role="1m5AlR">
                                    <ref role="3cqZAo" node="4chG8iHXUV0" resolve="method" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="4chG8iHXg6k" role="3cqZAp">
                              <node concept="2OqwBi" id="4chG8iHYu3r" role="3clFbG">
                                <node concept="37vLTw" id="4chG8iHYasf" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4chG8iHYas1" resolve="builder" />
                                </node>
                                <node concept="liA8E" id="4chG8iHYv8J" role="2OqNvi">
                                  <ref role="37wK5l" to="4u8o:2BZ01qXSZVl" resolve="add" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWsn" id="4chG8iHXUV0" role="1Duv9x">
                            <property role="TrG5h" value="method" />
                            <node concept="3Tqbb2" id="4chG8iHXUV4" role="1tU5fm">
                              <ref role="ehGHo" to="tpee:fzclF8t" resolve="InstanceMethodDeclaration" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="4chG8iHXUV5" role="1DdaDG">
                            <node concept="3zZkjj" id="4chG8iHXUV6" role="2OqNvi">
                              <node concept="1bVj0M" id="4chG8iHXUV7" role="23t8la">
                                <node concept="3clFbS" id="4chG8iHXUV8" role="1bW5cS">
                                  <node concept="3clFbF" id="4chG8iHXUV9" role="3cqZAp">
                                    <node concept="2YIFZM" id="82DhFbGPf" role="3clFbG">
                                      <ref role="37wK5l" node="1KnTQt4OihC" resolve="isJUnit4TestMethod" />
                                      <ref role="1Pybhc" node="4chG8iIoNLB" resolve="TestNodeUtil" />
                                      <node concept="37vLTw" id="4chG8iHXUVb" role="37wK5m">
                                        <ref role="3cqZAo" node="5W7E4fV0XzU" resolve="it" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="gl6BB" id="5W7E4fV0XzU" role="1bW2Oz">
                                  <property role="TrG5h" value="it" />
                                  <node concept="2jxLKc" id="5W7E4fV0XzV" role="1tU5fm" />
                                </node>
                              </node>
                            </node>
                            <node concept="2OqwBi" id="4chG8iHXUVe" role="2Oq$k0">
                              <node concept="2OqwBi" id="4chG8iHXUVf" role="2Oq$k0">
                                <node concept="2OqwBi" id="4chG8iHXUVg" role="2Oq$k0">
                                  <node concept="3zqWPK" id="70OdufORhc5" role="2OqNvi">
                                    <ref role="37wK5l" to="tpek:6r77ob2UWbY" resolve="getThisType" />
                                  </node>
                                  <node concept="1PxgMI" id="4chG8iHXUVi" role="2Oq$k0">
                                    <node concept="chp4Y" id="4chG8iHXUVj" role="3oSUPX">
                                      <ref role="cht4Q" to="tpee:fz12cDA" resolve="ClassConcept" />
                                    </node>
                                    <node concept="37vLTw" id="4chG8iHXUVk" role="1m5AlR">
                                      <ref role="3cqZAo" node="1KnTQt4Oisx" resolve="node" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3zqWPK" id="70OdufORhc7" role="2OqNvi">
                                  <ref role="37wK5l" to="tpek:6r77ob2V1Fr" resolve="getMembers" />
                                </node>
                              </node>
                              <node concept="v3k3i" id="4chG8iHXUVm" role="2OqNvi">
                                <node concept="chp4Y" id="4chG8iHXUVn" role="v3oSu">
                                  <ref role="cht4Q" to="tpee:fzclF8t" resolve="InstanceMethodDeclaration" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="4chG8iHWZKG" role="1bW2Oz">
                        <property role="TrG5h" value="container" />
                        <node concept="2jxLKc" id="4chG8iHWZKH" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="5keLjVN61R" role="3cqZAp">
                <node concept="37vLTw" id="4chG8iHWB7C" role="3cqZAk">
                  <ref role="3cqZAo" node="4chG8iHWB7d" resolve="testOptional" />
                </node>
              </node>
              <node concept="3clFbH" id="2BZ01qXXh$V" role="3cqZAp" />
            </node>
            <node concept="1Wc70l" id="7ied1lklhl8" role="3clFbw">
              <node concept="2OqwBi" id="7ied1lklfKa" role="3uHU7B">
                <node concept="2OqwBi" id="7ied1lklfKb" role="2Oq$k0">
                  <node concept="37vLTw" id="7ied1lklfKc" role="2Oq$k0">
                    <ref role="3cqZAo" node="1KnTQt4Oisx" resolve="node" />
                  </node>
                  <node concept="2yIwOk" id="7ied1lklfKd" role="2OqNvi" />
                </node>
                <node concept="3O6GUB" id="7ied1lklfKe" role="2OqNvi">
                  <node concept="chp4Y" id="7ied1lklfKf" role="3QVz_e">
                    <ref role="cht4Q" to="tpee:fz12cDA" resolve="ClassConcept" />
                  </node>
                </node>
              </node>
              <node concept="2YIFZM" id="82DhFbGPh" role="3uHU7w">
                <ref role="37wK5l" node="1KnTQt4Oijh" resolve="isJUnit4TestCase" />
                <ref role="1Pybhc" node="4chG8iIoNLB" resolve="TestNodeUtil" />
                <node concept="1PxgMI" id="1glKvNTAiVL" role="37wK5m">
                  <node concept="37vLTw" id="2BHiRxghiy3" role="1m5AlR">
                    <ref role="3cqZAo" node="1KnTQt4Oisx" resolve="node" />
                  </node>
                  <node concept="chp4Y" id="714IaVdGYNT" role="3oSUPX">
                    <ref role="cht4Q" to="tpee:fz12cDA" resolve="ClassConcept" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="7ied1lklg_$" role="3cqZAp">
            <node concept="2YIFZM" id="2BZ01qXITyR" role="3cqZAk">
              <ref role="37wK5l" to="33ny:~Optional.empty()" resolve="empty" />
              <ref role="1Pybhc" to="33ny:~Optional" resolve="Optional" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="1KnTQt4OisF" role="1B3o_S" />
        <node concept="2AHcQZ" id="1KnTQt4OisG" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
    </node>
    <node concept="QsSxf" id="1KnTQt4Oitc" role="Qtgdg">
      <property role="TrG5h" value="JUnit4Methods" />
      <ref role="37wK5l" node="1KnTQt4Oiuk" resolve="JUnitTestDiscoveryParticipants" />
      <node concept="35c_gC" id="7bi2vNWgLtB" role="37wK5m">
        <ref role="35c_gD" to="tpee:fzclF8t" resolve="InstanceMethodDeclaration" />
      </node>
      <node concept="3clFbT" id="MY2kIk2Yze" role="37wK5m">
        <property role="3clFbU" value="false" />
      </node>
      <node concept="3clFb_" id="1KnTQt4Oitd" role="2HKRsH">
        <property role="TrG5h" value="discover" />
        <node concept="37vLTG" id="1KnTQt4Oite" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3Tqbb2" id="1KnTQt4Oitf" role="1tU5fm" />
          <node concept="2AHcQZ" id="1KnTQt4Oitg" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="37vLTG" id="2BZ01qXJ91m" role="3clF46">
          <property role="TrG5h" value="request" />
          <node concept="3uibUv" id="2BZ01qXJ9Ji" role="1tU5fm">
            <ref role="3uigEE" to="4u8o:2BZ01qXB7eE" resolve="TestDiscoveryRequest" />
          </node>
        </node>
        <node concept="3uibUv" id="2BZ01qXJ3sK" role="3clF45">
          <ref role="3uigEE" to="33ny:~Optional" resolve="Optional" />
          <node concept="3uibUv" id="2BZ01qXJ506" role="11_B2D">
            <ref role="3uigEE" to="4u8o:X4wbLw1YY5" resolve="TestDescriptor" />
          </node>
        </node>
        <node concept="3clFbS" id="1KnTQt4Oitj" role="3clF47">
          <node concept="3clFbJ" id="2BZ01qXJcHL" role="3cqZAp">
            <node concept="3clFbS" id="2BZ01qXJcHN" role="3clFbx">
              <node concept="3cpWs6" id="2BZ01qXJgQH" role="3cqZAp">
                <node concept="2YIFZM" id="2BZ01qXJiU3" role="3cqZAk">
                  <ref role="37wK5l" to="33ny:~Optional.empty()" resolve="empty" />
                  <ref role="1Pybhc" to="33ny:~Optional" resolve="Optional" />
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="2BZ01qXJdqR" role="3clFbw">
              <node concept="2OqwBi" id="2BZ01qXJemO" role="3fr31v">
                <node concept="37vLTw" id="2BZ01qXJe6K" role="2Oq$k0">
                  <ref role="3cqZAo" node="1KnTQt4Oite" resolve="node" />
                </node>
                <node concept="1mIQ4w" id="2BZ01qXJfd3" role="2OqNvi">
                  <node concept="chp4Y" id="2BZ01qXJfON" role="cj9EA">
                    <ref role="cht4Q" to="tpee:fzclF8t" resolve="InstanceMethodDeclaration" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="7ied1lklnxm" role="3cqZAp">
            <node concept="3clFbS" id="7ied1lklnxo" role="3clFbx">
              <node concept="3cpWs8" id="2BZ01qXXk_h" role="3cqZAp">
                <node concept="3cpWsn" id="2BZ01qXXk_i" role="3cpWs9">
                  <property role="TrG5h" value="container" />
                  <node concept="3uibUv" id="2BZ01qXXihs" role="1tU5fm">
                    <ref role="3uigEE" to="4u8o:X4wbLw1YY5" resolve="TestDescriptor" />
                  </node>
                  <node concept="2OqwBi" id="2BZ01qXXk_j" role="33vP2m">
                    <node concept="37vLTw" id="2BZ01qXXk_k" role="2Oq$k0">
                      <ref role="3cqZAo" node="2BZ01qXJ91m" resolve="request" />
                    </node>
                    <node concept="liA8E" id="2BZ01qXXk_l" role="2OqNvi">
                      <ref role="37wK5l" to="4u8o:2BZ01qXBaRZ" resolve="peekContainer" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="4chG8iHYMVQ" role="3cqZAp">
                <node concept="3cpWsn" id="4chG8iHYMVR" role="3cpWs9">
                  <property role="TrG5h" value="testOptional" />
                  <node concept="3uibUv" id="4chG8iHYMVS" role="1tU5fm">
                    <ref role="3uigEE" to="33ny:~Optional" resolve="Optional" />
                    <node concept="3uibUv" id="4chG8iHYMVT" role="11_B2D">
                      <ref role="3uigEE" to="4u8o:X4wbLw1YY5" resolve="TestDescriptor" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="4chG8iHYMVU" role="33vP2m">
                    <node concept="37vLTw" id="4chG8iHYMVV" role="2Oq$k0">
                      <ref role="3cqZAo" node="2BZ01qXXk_i" resolve="container" />
                    </node>
                    <node concept="liA8E" id="4chG8iHYMVW" role="2OqNvi">
                      <ref role="37wK5l" to="4u8o:4chG8iHLM1$" resolve="selectTest" />
                      <node concept="2YIFZM" id="4chG8iHYMVX" role="37wK5m">
                        <ref role="37wK5l" to="4u8o:2v6DJPJtmBh" resolve="of" />
                        <ref role="1Pybhc" to="4u8o:2v6DJPJt3SN" resolve="SNodeTestSource" />
                        <node concept="37vLTw" id="4chG8iHYMVY" role="37wK5m">
                          <ref role="3cqZAo" node="1KnTQt4Oite" resolve="node" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="4chG8iHYMVZ" role="3cqZAp">
                <node concept="3clFbS" id="4chG8iHYMW0" role="3clFbx">
                  <node concept="3clFbF" id="4chG8iHYMW1" role="3cqZAp">
                    <node concept="37vLTI" id="4chG8iHYMW2" role="3clFbG">
                      <node concept="37vLTw" id="4chG8iHYMW3" role="37vLTJ">
                        <ref role="3cqZAo" node="4chG8iHYMVR" resolve="testOptional" />
                      </node>
                      <node concept="2OqwBi" id="4chG8iHYMW4" role="37vLTx">
                        <node concept="2OqwBi" id="4chG8iHYMW5" role="2Oq$k0">
                          <node concept="Rm8GO" id="4chG8iHYVOU" role="2Oq$k0">
                            <ref role="Rm8GQ" node="1KnTQt4Oisv" resolve="JUnit4Test" />
                            <ref role="1Px2BO" node="82DhF8Eqc" resolve="JUnitTestDiscoveryParticipants" />
                          </node>
                          <node concept="liA8E" id="4chG8iHYMW7" role="2OqNvi">
                            <ref role="37wK5l" to="4u8o:2BZ01qXB6ZH" resolve="discover" />
                            <node concept="2OqwBi" id="4chG8iHYMW8" role="37wK5m">
                              <node concept="37vLTw" id="4chG8iHYMW9" role="2Oq$k0">
                                <ref role="3cqZAo" node="1KnTQt4Oite" resolve="node" />
                              </node>
                              <node concept="1mfA1w" id="4chG8iHYMWa" role="2OqNvi" />
                            </node>
                            <node concept="37vLTw" id="4chG8iHYMWb" role="37wK5m">
                              <ref role="3cqZAo" node="2BZ01qXJ91m" resolve="request" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="4chG8iHYMWc" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Optional.flatMap(java.util.function.Function)" resolve="flatMap" />
                          <node concept="1bVj0M" id="4chG8iHYMWd" role="37wK5m">
                            <node concept="3clFbS" id="4chG8iHYMWe" role="1bW5cS">
                              <node concept="3clFbF" id="4chG8iHYMWf" role="3cqZAp">
                                <node concept="2OqwBi" id="4chG8iHYMWg" role="3clFbG">
                                  <node concept="37vLTw" id="4chG8iHYMWh" role="2Oq$k0">
                                    <ref role="3cqZAo" node="4chG8iHYMWl" resolve="descriptor" />
                                  </node>
                                  <node concept="liA8E" id="4chG8iHYMWi" role="2OqNvi">
                                    <ref role="37wK5l" to="4u8o:4chG8iHLM1$" resolve="selectTest" />
                                    <node concept="2YIFZM" id="4chG8iHYMWj" role="37wK5m">
                                      <ref role="37wK5l" to="4u8o:2v6DJPJtmBh" resolve="of" />
                                      <ref role="1Pybhc" to="4u8o:2v6DJPJt3SN" resolve="SNodeTestSource" />
                                      <node concept="37vLTw" id="4chG8iHYMWk" role="37wK5m">
                                        <ref role="3cqZAo" node="1KnTQt4Oite" resolve="node" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="gl6BB" id="4chG8iHYMWl" role="1bW2Oz">
                              <property role="TrG5h" value="descriptor" />
                              <node concept="2jxLKc" id="4chG8iHYMWm" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="4chG8iHYMWn" role="3clFbw">
                  <node concept="37vLTw" id="4chG8iHYMWo" role="2Oq$k0">
                    <ref role="3cqZAo" node="4chG8iHYMVR" resolve="testOptional" />
                  </node>
                  <node concept="liA8E" id="4chG8iHYMWp" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Optional.isEmpty()" resolve="isEmpty" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="4chG8iHYMWq" role="3cqZAp">
                <node concept="37vLTw" id="4chG8iHYMWr" role="3cqZAk">
                  <ref role="3cqZAo" node="4chG8iHYMVR" resolve="testOptional" />
                </node>
              </node>
            </node>
            <node concept="2YIFZM" id="82DhFbGPg" role="3clFbw">
              <ref role="37wK5l" node="1KnTQt4OihC" resolve="isJUnit4TestMethod" />
              <ref role="1Pybhc" node="4chG8iIoNLB" resolve="TestNodeUtil" />
              <node concept="1PxgMI" id="1KnTQt4Oitz" role="37wK5m">
                <node concept="37vLTw" id="2BHiRxglf3A" role="1m5AlR">
                  <ref role="3cqZAo" node="1KnTQt4Oite" resolve="node" />
                </node>
                <node concept="chp4Y" id="714IaVdGYNS" role="3oSUPX">
                  <ref role="cht4Q" to="tpee:fzclF8t" resolve="InstanceMethodDeclaration" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="7ied1lklpm4" role="3cqZAp">
            <node concept="2YIFZM" id="2BZ01qXJJpW" role="3cqZAk">
              <ref role="37wK5l" to="33ny:~Optional.empty()" resolve="empty" />
              <ref role="1Pybhc" to="33ny:~Optional" resolve="Optional" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="1KnTQt4Oito" role="1B3o_S" />
        <node concept="2AHcQZ" id="1KnTQt4Oitp" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
    </node>
    <node concept="QsSxf" id="7o1qpmkrf0Y" role="Qtgdg">
      <property role="TrG5h" value="JUnit5Test" />
      <ref role="37wK5l" node="1KnTQt4Oiuk" resolve="JUnitTestDiscoveryParticipants" />
      <node concept="35c_gC" id="7o1qpmkrf0Z" role="37wK5m">
        <ref role="35c_gD" to="tpee:fz12cDA" resolve="ClassConcept" />
      </node>
      <node concept="3clFbT" id="7o1qpmkrf10" role="37wK5m">
        <property role="3clFbU" value="true" />
      </node>
      <node concept="3clFb_" id="7o1qpmkrf11" role="2HKRsH">
        <property role="TrG5h" value="discover" />
        <node concept="37vLTG" id="7o1qpmkrf12" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3Tqbb2" id="7o1qpmkrf13" role="1tU5fm" />
          <node concept="2AHcQZ" id="7o1qpmkrf14" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="37vLTG" id="2BZ01qXJTa_" role="3clF46">
          <property role="TrG5h" value="request" />
          <node concept="3uibUv" id="2BZ01qXJTRh" role="1tU5fm">
            <ref role="3uigEE" to="4u8o:2BZ01qXB7eE" resolve="TestDiscoveryRequest" />
          </node>
        </node>
        <node concept="3uibUv" id="2BZ01qXJO8O" role="3clF45">
          <ref role="3uigEE" to="33ny:~Optional" resolve="Optional" />
          <node concept="3uibUv" id="2BZ01qXJPP2" role="11_B2D">
            <ref role="3uigEE" to="4u8o:X4wbLw1YY5" resolve="TestDescriptor" />
          </node>
        </node>
        <node concept="3clFbS" id="7o1qpmkrf17" role="3clF47">
          <node concept="3clFbJ" id="2BZ01qXJL$5" role="3cqZAp">
            <node concept="3clFbS" id="2BZ01qXJL$6" role="3clFbx">
              <node concept="3cpWs6" id="2BZ01qXJL$7" role="3cqZAp">
                <node concept="2YIFZM" id="2BZ01qXJL$8" role="3cqZAk">
                  <ref role="37wK5l" to="33ny:~Optional.empty()" resolve="empty" />
                  <ref role="1Pybhc" to="33ny:~Optional" resolve="Optional" />
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="2BZ01qXJL$9" role="3clFbw">
              <node concept="2OqwBi" id="2BZ01qXJL$a" role="3fr31v">
                <node concept="37vLTw" id="2BZ01qXJL$b" role="2Oq$k0">
                  <ref role="3cqZAo" node="7o1qpmkrf12" resolve="node" />
                </node>
                <node concept="1mIQ4w" id="2BZ01qXJL$c" role="2OqNvi">
                  <node concept="chp4Y" id="2BZ01qXJL$d" role="cj9EA">
                    <ref role="cht4Q" to="tpee:fz12cDA" resolve="ClassConcept" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="7o1qpmkrf18" role="3cqZAp">
            <node concept="3clFbS" id="7o1qpmkrf19" role="3clFbx">
              <node concept="3cpWs8" id="4chG8iHZbIp" role="3cqZAp">
                <node concept="3cpWsn" id="4chG8iHZbIq" role="3cpWs9">
                  <property role="TrG5h" value="testOptional" />
                  <node concept="3uibUv" id="4chG8iHZbHM" role="1tU5fm">
                    <ref role="3uigEE" to="33ny:~Optional" resolve="Optional" />
                    <node concept="3uibUv" id="4chG8iHZbHP" role="11_B2D">
                      <ref role="3uigEE" to="4u8o:X4wbLw1YY5" resolve="TestDescriptor" />
                    </node>
                  </node>
                  <node concept="2YIFZM" id="4chG8iHZbIr" role="33vP2m">
                    <ref role="37wK5l" to="33ny:~Optional.of(java.lang.Object)" resolve="of" />
                    <ref role="1Pybhc" to="33ny:~Optional" resolve="Optional" />
                    <node concept="2OqwBi" id="4chG8iHZbIs" role="37wK5m">
                      <property role="hSjvv" value="true" />
                      <node concept="2OqwBi" id="4rQ9_5dfh3x" role="2Oq$k0">
                        <property role="hSjvv" value="true" />
                        <node concept="2OqwBi" id="4rQ9_5dfxyr" role="2Oq$k0">
                          <property role="hSjvv" value="true" />
                          <node concept="2OqwBi" id="4chG8iHZbIt" role="2Oq$k0">
                            <property role="hSjvv" value="true" />
                            <node concept="2ShNRf" id="4chG8iIjdY8" role="2Oq$k0">
                              <node concept="1pGfFk" id="4chG8iIjlQU" role="2ShVmc">
                                <property role="373rjd" value="true" />
                                <ref role="37wK5l" to="4u8o:2BZ01qXTl8z" resolve="TestDescriptorBuilder" />
                                <node concept="2OqwBi" id="4chG8iIeIr5" role="37wK5m">
                                  <node concept="37vLTw" id="4chG8iIeG9r" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2BZ01qXJTa_" resolve="request" />
                                  </node>
                                  <node concept="liA8E" id="4chG8iIeKzK" role="2OqNvi">
                                    <ref role="37wK5l" to="4u8o:2BZ01qXBaRZ" resolve="peekContainer" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="liA8E" id="4chG8iHZbIx" role="2OqNvi">
                              <ref role="37wK5l" to="4u8o:2BZ01qXT2h1" resolve="newTestContainer" />
                              <node concept="2OqwBi" id="4chG8iHZbIy" role="37wK5m">
                                <node concept="1PxgMI" id="4chG8iHZbIz" role="2Oq$k0">
                                  <node concept="chp4Y" id="4chG8iHZbI$" role="3oSUPX">
                                    <ref role="cht4Q" to="tpee:fz12cDA" resolve="ClassConcept" />
                                  </node>
                                  <node concept="37vLTw" id="4chG8iHZbI_" role="1m5AlR">
                                    <ref role="3cqZAo" node="7o1qpmkrf12" resolve="node" />
                                  </node>
                                </node>
                                <node concept="3zqWPK" id="70OdufORhc9" role="2OqNvi">
                                  <ref role="37wK5l" to="tpcu:hEwIO9y" resolve="getFqName" />
                                </node>
                              </node>
                              <node concept="2YIFZM" id="4chG8iHZbIB" role="37wK5m">
                                <ref role="37wK5l" to="4u8o:2v6DJPJtmBh" resolve="of" />
                                <ref role="1Pybhc" to="4u8o:2v6DJPJt3SN" resolve="SNodeTestSource" />
                                <node concept="37vLTw" id="4chG8iHZbIC" role="37wK5m">
                                  <ref role="3cqZAo" node="7o1qpmkrf12" resolve="node" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="4rQ9_5dfB2H" role="2OqNvi">
                            <ref role="37wK5l" to="4u8o:2BZ01qYcvoQ" resolve="withProperty" />
                            <node concept="10M0yZ" id="4rQ9_5dfB2I" role="37wK5m">
                              <ref role="3cqZAo" to="4u8o:2v6DJPJvtAp" resolve="CAN_RUN_IN_PROCESS" />
                              <ref role="1PxDUh" to="4u8o:2v6DJPJtQA1" resolve="TestProperties" />
                            </node>
                            <node concept="3clFbT" id="4rQ9_5dfB2J" role="37wK5m" />
                          </node>
                        </node>
                        <node concept="liA8E" id="4rQ9_5dfmxf" role="2OqNvi">
                          <ref role="37wK5l" to="4u8o:2BZ01qYcvoQ" resolve="withProperty" />
                          <node concept="10M0yZ" id="4rQ9_5dfmxg" role="37wK5m">
                            <ref role="3cqZAo" to="4u8o:2v6DJPJvGun" resolve="REQUIRES_MPS_PLATFORM" />
                            <ref role="1PxDUh" to="4u8o:2v6DJPJtQA1" resolve="TestProperties" />
                          </node>
                          <node concept="2YIFZM" id="82DhFbGP4" role="37wK5m">
                            <ref role="37wK5l" node="4Tkq3_eQfcS" resolve="needsMPS" />
                            <ref role="1Pybhc" node="4chG8iIoNLB" resolve="TestNodeUtil" />
                            <node concept="1PxgMI" id="4rQ9_5dfmxi" role="37wK5m">
                              <node concept="37vLTw" id="4rQ9_5dfmxj" role="1m5AlR">
                                <ref role="3cqZAo" node="7o1qpmkrf12" resolve="node" />
                              </node>
                              <node concept="chp4Y" id="4rQ9_5dfmxk" role="3oSUPX">
                                <ref role="cht4Q" to="tpee:fz12cDA" resolve="ClassConcept" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="4chG8iHZbID" role="2OqNvi">
                        <ref role="37wK5l" to="4u8o:2BZ01qXSZVl" resolve="add" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="4chG8iHZneq" role="3cqZAp">
                <node concept="2OqwBi" id="4chG8iHZner" role="3clFbG">
                  <node concept="37vLTw" id="4chG8iHZnes" role="2Oq$k0">
                    <ref role="3cqZAo" node="4chG8iHZbIq" resolve="testOptional" />
                  </node>
                  <node concept="liA8E" id="4chG8iHZnet" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Optional.ifPresent(java.util.function.Consumer)" resolve="ifPresent" />
                    <node concept="1bVj0M" id="4chG8iHZneu" role="37wK5m">
                      <node concept="3clFbS" id="4chG8iHZnev" role="1bW5cS">
                        <node concept="1DcWWT" id="4chG8iHZnew" role="3cqZAp">
                          <node concept="3clFbS" id="4chG8iHZnex" role="2LFqv$">
                            <node concept="3cpWs8" id="4chG8iHZney" role="3cqZAp">
                              <node concept="3cpWsn" id="4chG8iHZnez" role="3cpWs9">
                                <property role="TrG5h" value="builder" />
                                <node concept="3uibUv" id="4chG8iHZne$" role="1tU5fm">
                                  <ref role="3uigEE" to="4u8o:2BZ01qXSVbC" resolve="TestDescriptorBuilder" />
                                </node>
                                <node concept="2OqwBi" id="4chG8iHZne_" role="33vP2m">
                                  <node concept="2ShNRf" id="4chG8iIjvb7" role="2Oq$k0">
                                    <node concept="1pGfFk" id="4chG8iIjAV0" role="2ShVmc">
                                      <property role="373rjd" value="true" />
                                      <ref role="37wK5l" to="4u8o:2BZ01qXTl8z" resolve="TestDescriptorBuilder" />
                                      <node concept="37vLTw" id="4chG8iIjFcC" role="37wK5m">
                                        <ref role="3cqZAo" node="4chG8iHZnfn" resolve="container" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="4chG8iHZneE" role="2OqNvi">
                                    <ref role="37wK5l" to="4u8o:2BZ01qXSZma" resolve="newTest" />
                                    <node concept="2OqwBi" id="4chG8iHZneF" role="37wK5m">
                                      <node concept="1PxgMI" id="4chG8iHZneG" role="2Oq$k0">
                                        <node concept="chp4Y" id="4chG8iHZneH" role="3oSUPX">
                                          <ref role="cht4Q" to="tpee:fzclF8t" resolve="InstanceMethodDeclaration" />
                                        </node>
                                        <node concept="37vLTw" id="4chG8iHZneI" role="1m5AlR">
                                          <ref role="3cqZAo" node="4chG8iHZnf2" resolve="method" />
                                        </node>
                                      </node>
                                      <node concept="3TrcHB" id="4chG8iHZneJ" role="2OqNvi">
                                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                      </node>
                                    </node>
                                    <node concept="2YIFZM" id="4chG8iHZneK" role="37wK5m">
                                      <ref role="37wK5l" to="4u8o:2v6DJPJtmBh" resolve="of" />
                                      <ref role="1Pybhc" to="4u8o:2v6DJPJt3SN" resolve="SNodeTestSource" />
                                      <node concept="37vLTw" id="4chG8iHZneL" role="37wK5m">
                                        <ref role="3cqZAo" node="4chG8iHZnf2" resolve="method" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="4chG8iHZneM" role="3cqZAp">
                              <node concept="3clFbS" id="4chG8iHZneN" role="3clFbx">
                                <node concept="3clFbF" id="4chG8iHZneO" role="3cqZAp">
                                  <node concept="2OqwBi" id="4chG8iHZneP" role="3clFbG">
                                    <node concept="37vLTw" id="4chG8iHZneQ" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4chG8iHZnez" resolve="builder" />
                                    </node>
                                    <node concept="liA8E" id="4chG8iHZneR" role="2OqNvi">
                                      <ref role="37wK5l" to="4u8o:2BZ01qYcvoQ" resolve="withProperty" />
                                      <node concept="10M0yZ" id="4chG8iIbTdz" role="37wK5m">
                                        <ref role="3cqZAo" to="4u8o:2v6DJPJvGun" resolve="REQUIRES_MPS_PLATFORM" />
                                        <ref role="1PxDUh" to="4u8o:2v6DJPJtQA1" resolve="TestProperties" />
                                      </node>
                                      <node concept="3clFbT" id="4chG8iHZneT" role="37wK5m">
                                        <property role="3clFbU" value="true" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2YIFZM" id="82DhFbGPa" role="3clFbw">
                                <ref role="37wK5l" node="4Tkq3_eRAJK" resolve="isAnnotatedToLaunch" />
                                <ref role="1Pybhc" node="4chG8iIoNLB" resolve="TestNodeUtil" />
                                <node concept="1PxgMI" id="4chG8iHZneV" role="37wK5m">
                                  <node concept="chp4Y" id="4chG8iHZneW" role="3oSUPX">
                                    <ref role="cht4Q" to="tpee:fzclF8t" resolve="InstanceMethodDeclaration" />
                                  </node>
                                  <node concept="37vLTw" id="4chG8iHZneX" role="1m5AlR">
                                    <ref role="3cqZAo" node="4chG8iHZnf2" resolve="method" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="4chG8iHZneY" role="3cqZAp">
                              <node concept="2OqwBi" id="4chG8iHZneZ" role="3clFbG">
                                <node concept="37vLTw" id="4chG8iHZnf0" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4chG8iHZnez" resolve="builder" />
                                </node>
                                <node concept="liA8E" id="4chG8iHZnf1" role="2OqNvi">
                                  <ref role="37wK5l" to="4u8o:2BZ01qXSZVl" resolve="add" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWsn" id="4chG8iHZnf2" role="1Duv9x">
                            <property role="TrG5h" value="method" />
                            <node concept="3Tqbb2" id="4chG8iHZnf3" role="1tU5fm">
                              <ref role="ehGHo" to="tpee:fzclF8t" resolve="InstanceMethodDeclaration" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="4chG8iHZnf4" role="1DdaDG">
                            <node concept="3zZkjj" id="4chG8iHZnf5" role="2OqNvi">
                              <node concept="1bVj0M" id="4chG8iHZnf6" role="23t8la">
                                <node concept="3clFbS" id="4chG8iHZnf7" role="1bW5cS">
                                  <node concept="3clFbF" id="4chG8iHZnf8" role="3cqZAp">
                                    <node concept="2YIFZM" id="82DhFbGPi" role="3clFbG">
                                      <ref role="37wK5l" node="7o1qpmkr0FQ" resolve="isJUnit5TestMethod" />
                                      <ref role="1Pybhc" node="4chG8iIoNLB" resolve="TestNodeUtil" />
                                      <node concept="37vLTw" id="4chG8iHZzMV" role="37wK5m">
                                        <ref role="3cqZAo" node="5W7E4fV0XzW" resolve="it" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="gl6BB" id="5W7E4fV0XzW" role="1bW2Oz">
                                  <property role="TrG5h" value="it" />
                                  <node concept="2jxLKc" id="5W7E4fV0XzX" role="1tU5fm" />
                                </node>
                              </node>
                            </node>
                            <node concept="2OqwBi" id="4chG8iHZnfd" role="2Oq$k0">
                              <node concept="2OqwBi" id="4chG8iHZnfe" role="2Oq$k0">
                                <node concept="2OqwBi" id="4chG8iHZnff" role="2Oq$k0">
                                  <node concept="3zqWPK" id="70OdufORhcb" role="2OqNvi">
                                    <ref role="37wK5l" to="tpek:6r77ob2UWbY" resolve="getThisType" />
                                  </node>
                                  <node concept="1PxgMI" id="4chG8iHZnfh" role="2Oq$k0">
                                    <node concept="chp4Y" id="4chG8iHZnfi" role="3oSUPX">
                                      <ref role="cht4Q" to="tpee:fz12cDA" resolve="ClassConcept" />
                                    </node>
                                    <node concept="37vLTw" id="4chG8iHZnfj" role="1m5AlR">
                                      <ref role="3cqZAo" node="7o1qpmkrf12" resolve="node" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3zqWPK" id="70OdufORhcd" role="2OqNvi">
                                  <ref role="37wK5l" to="tpek:6r77ob2V1Fr" resolve="getMembers" />
                                </node>
                              </node>
                              <node concept="v3k3i" id="4chG8iHZnfl" role="2OqNvi">
                                <node concept="chp4Y" id="4chG8iHZnfm" role="v3oSu">
                                  <ref role="cht4Q" to="tpee:fzclF8t" resolve="InstanceMethodDeclaration" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="4chG8iHZnfn" role="1bW2Oz">
                        <property role="TrG5h" value="container" />
                        <node concept="2jxLKc" id="4chG8iHZnfo" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="7o1qpmkrf1a" role="3cqZAp">
                <node concept="37vLTw" id="4chG8iHZbIE" role="3cqZAk">
                  <ref role="3cqZAo" node="4chG8iHZbIq" resolve="testOptional" />
                </node>
              </node>
              <node concept="3clFbH" id="2BZ01qY64Xn" role="3cqZAp" />
            </node>
            <node concept="1Wc70l" id="7o1qpmkrf1e" role="3clFbw">
              <node concept="2OqwBi" id="7o1qpmkrf1f" role="3uHU7B">
                <node concept="2OqwBi" id="7o1qpmkrf1g" role="2Oq$k0">
                  <node concept="37vLTw" id="7o1qpmkrf1h" role="2Oq$k0">
                    <ref role="3cqZAo" node="7o1qpmkrf12" resolve="node" />
                  </node>
                  <node concept="2yIwOk" id="7o1qpmkrf1i" role="2OqNvi" />
                </node>
                <node concept="3O6GUB" id="7o1qpmkrf1j" role="2OqNvi">
                  <node concept="chp4Y" id="7o1qpmkrf1k" role="3QVz_e">
                    <ref role="cht4Q" to="tpee:fz12cDA" resolve="ClassConcept" />
                  </node>
                </node>
              </node>
              <node concept="2YIFZM" id="82DhFbGPk" role="3uHU7w">
                <ref role="37wK5l" node="7o1qpmkqUNu" resolve="isJUnit5TestCase" />
                <ref role="1Pybhc" node="4chG8iIoNLB" resolve="TestNodeUtil" />
                <node concept="1PxgMI" id="7o1qpmkrjF6" role="37wK5m">
                  <node concept="37vLTw" id="7o1qpmkrjF7" role="1m5AlR">
                    <ref role="3cqZAo" node="7o1qpmkrf12" resolve="node" />
                  </node>
                  <node concept="chp4Y" id="7o1qpmkrjF8" role="3oSUPX">
                    <ref role="cht4Q" to="tpee:fz12cDA" resolve="ClassConcept" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="7o1qpmkrf1p" role="3cqZAp">
            <node concept="2YIFZM" id="2BZ01qXKtLS" role="3cqZAk">
              <ref role="37wK5l" to="33ny:~Optional.empty()" resolve="empty" />
              <ref role="1Pybhc" to="33ny:~Optional" resolve="Optional" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="7o1qpmkrf1r" role="1B3o_S" />
        <node concept="2AHcQZ" id="7o1qpmkrf1s" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
    </node>
    <node concept="QsSxf" id="7o1qpmkreZg" role="Qtgdg">
      <property role="TrG5h" value="JUnit5Methods" />
      <ref role="37wK5l" node="1KnTQt4Oiuk" resolve="JUnitTestDiscoveryParticipants" />
      <node concept="35c_gC" id="7o1qpmkreZh" role="37wK5m">
        <ref role="35c_gD" to="tpee:fzclF8t" resolve="InstanceMethodDeclaration" />
      </node>
      <node concept="3clFbT" id="7o1qpmkreZi" role="37wK5m">
        <property role="3clFbU" value="false" />
      </node>
      <node concept="3clFb_" id="7o1qpmkreZj" role="2HKRsH">
        <property role="TrG5h" value="discover" />
        <node concept="37vLTG" id="7o1qpmkreZk" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3Tqbb2" id="7o1qpmkreZl" role="1tU5fm" />
          <node concept="2AHcQZ" id="7o1qpmkreZm" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="37vLTG" id="2BZ01qXKBO9" role="3clF46">
          <property role="TrG5h" value="request" />
          <node concept="3uibUv" id="2BZ01qXKCwo" role="1tU5fm">
            <ref role="3uigEE" to="4u8o:2BZ01qXB7eE" resolve="TestDiscoveryRequest" />
          </node>
        </node>
        <node concept="3uibUv" id="2BZ01qXK$43" role="3clF45">
          <ref role="3uigEE" to="33ny:~Optional" resolve="Optional" />
          <node concept="3uibUv" id="2BZ01qXK_gB" role="11_B2D">
            <ref role="3uigEE" to="4u8o:X4wbLw1YY5" resolve="TestDescriptor" />
          </node>
        </node>
        <node concept="3clFbS" id="7o1qpmkreZp" role="3clF47">
          <node concept="3clFbJ" id="2BZ01qXKFb5" role="3cqZAp">
            <node concept="3clFbS" id="2BZ01qXKFb6" role="3clFbx">
              <node concept="3cpWs6" id="2BZ01qXKFb7" role="3cqZAp">
                <node concept="2YIFZM" id="2BZ01qXKFb8" role="3cqZAk">
                  <ref role="37wK5l" to="33ny:~Optional.empty()" resolve="empty" />
                  <ref role="1Pybhc" to="33ny:~Optional" resolve="Optional" />
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="2BZ01qXKFb9" role="3clFbw">
              <node concept="2OqwBi" id="2BZ01qXKFba" role="3fr31v">
                <node concept="37vLTw" id="2BZ01qXKFbb" role="2Oq$k0">
                  <ref role="3cqZAo" node="7o1qpmkreZk" resolve="node" />
                </node>
                <node concept="1mIQ4w" id="2BZ01qXKFbc" role="2OqNvi">
                  <node concept="chp4Y" id="2BZ01qXKFbd" role="cj9EA">
                    <ref role="cht4Q" to="tpee:fzclF8t" resolve="InstanceMethodDeclaration" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="7o1qpmkrf0x" role="3cqZAp">
            <node concept="3clFbS" id="7o1qpmkrf0y" role="3clFbx">
              <node concept="3cpWs8" id="2BZ01qY6awe" role="3cqZAp">
                <node concept="3cpWsn" id="2BZ01qY6awf" role="3cpWs9">
                  <property role="TrG5h" value="container" />
                  <node concept="3uibUv" id="2BZ01qY65Qb" role="1tU5fm">
                    <ref role="3uigEE" to="4u8o:X4wbLw1YY5" resolve="TestDescriptor" />
                  </node>
                  <node concept="2OqwBi" id="2BZ01qY6awg" role="33vP2m">
                    <node concept="37vLTw" id="2BZ01qY6awh" role="2Oq$k0">
                      <ref role="3cqZAo" node="2BZ01qXKBO9" resolve="request" />
                    </node>
                    <node concept="liA8E" id="2BZ01qY6awi" role="2OqNvi">
                      <ref role="37wK5l" to="4u8o:2BZ01qXBaRZ" resolve="peekContainer" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="4chG8iHZH1d" role="3cqZAp">
                <node concept="3cpWsn" id="4chG8iHZH1e" role="3cpWs9">
                  <property role="TrG5h" value="testOptional" />
                  <node concept="3uibUv" id="4chG8iHZH1f" role="1tU5fm">
                    <ref role="3uigEE" to="33ny:~Optional" resolve="Optional" />
                    <node concept="3uibUv" id="4chG8iHZH1g" role="11_B2D">
                      <ref role="3uigEE" to="4u8o:X4wbLw1YY5" resolve="TestDescriptor" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="4chG8iHZH1h" role="33vP2m">
                    <node concept="37vLTw" id="4chG8iHZH1i" role="2Oq$k0">
                      <ref role="3cqZAo" node="2BZ01qY6awf" resolve="container" />
                    </node>
                    <node concept="liA8E" id="4chG8iHZH1j" role="2OqNvi">
                      <ref role="37wK5l" to="4u8o:4chG8iHLM1$" resolve="selectTest" />
                      <node concept="2YIFZM" id="4chG8iHZH1k" role="37wK5m">
                        <ref role="37wK5l" to="4u8o:2v6DJPJtmBh" resolve="of" />
                        <ref role="1Pybhc" to="4u8o:2v6DJPJt3SN" resolve="SNodeTestSource" />
                        <node concept="37vLTw" id="4chG8iHZH1l" role="37wK5m">
                          <ref role="3cqZAo" node="7o1qpmkreZk" resolve="node" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="4chG8iHZH1m" role="3cqZAp">
                <node concept="3clFbS" id="4chG8iHZH1n" role="3clFbx">
                  <node concept="3clFbF" id="4chG8iHZH1o" role="3cqZAp">
                    <node concept="37vLTI" id="4chG8iHZH1p" role="3clFbG">
                      <node concept="37vLTw" id="4chG8iHZH1q" role="37vLTJ">
                        <ref role="3cqZAo" node="4chG8iHZH1e" resolve="testOptional" />
                      </node>
                      <node concept="2OqwBi" id="4chG8iHZH1r" role="37vLTx">
                        <node concept="2OqwBi" id="4chG8iHZH1s" role="2Oq$k0">
                          <node concept="Rm8GO" id="4chG8iHZPp5" role="2Oq$k0">
                            <ref role="Rm8GQ" node="7o1qpmkrf0Y" resolve="JUnit5Test" />
                            <ref role="1Px2BO" node="82DhF8Eqc" resolve="JUnitTestDiscoveryParticipants" />
                          </node>
                          <node concept="liA8E" id="4chG8iHZH1u" role="2OqNvi">
                            <ref role="37wK5l" to="4u8o:2BZ01qXB6ZH" resolve="discover" />
                            <node concept="2OqwBi" id="4chG8iHZH1v" role="37wK5m">
                              <node concept="37vLTw" id="4chG8iHZH1w" role="2Oq$k0">
                                <ref role="3cqZAo" node="7o1qpmkreZk" resolve="node" />
                              </node>
                              <node concept="1mfA1w" id="4chG8iHZH1x" role="2OqNvi" />
                            </node>
                            <node concept="37vLTw" id="4chG8iHZH1y" role="37wK5m">
                              <ref role="3cqZAo" node="2BZ01qXKBO9" resolve="request" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="4chG8iHZH1z" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Optional.flatMap(java.util.function.Function)" resolve="flatMap" />
                          <node concept="1bVj0M" id="4chG8iHZH1$" role="37wK5m">
                            <node concept="3clFbS" id="4chG8iHZH1_" role="1bW5cS">
                              <node concept="3clFbF" id="4chG8iHZH1A" role="3cqZAp">
                                <node concept="2OqwBi" id="4chG8iHZH1B" role="3clFbG">
                                  <node concept="37vLTw" id="4chG8iHZH1C" role="2Oq$k0">
                                    <ref role="3cqZAo" node="4chG8iHZH1G" resolve="descriptor" />
                                  </node>
                                  <node concept="liA8E" id="4chG8iHZH1D" role="2OqNvi">
                                    <ref role="37wK5l" to="4u8o:4chG8iHLM1$" resolve="selectTest" />
                                    <node concept="2YIFZM" id="4chG8iHZH1E" role="37wK5m">
                                      <ref role="37wK5l" to="4u8o:2v6DJPJtmBh" resolve="of" />
                                      <ref role="1Pybhc" to="4u8o:2v6DJPJt3SN" resolve="SNodeTestSource" />
                                      <node concept="37vLTw" id="4chG8iHZH1F" role="37wK5m">
                                        <ref role="3cqZAo" node="7o1qpmkreZk" resolve="node" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="gl6BB" id="4chG8iHZH1G" role="1bW2Oz">
                              <property role="TrG5h" value="descriptor" />
                              <node concept="2jxLKc" id="4chG8iHZH1H" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="4chG8iHZH1I" role="3clFbw">
                  <node concept="37vLTw" id="4chG8iHZH1J" role="2Oq$k0">
                    <ref role="3cqZAo" node="4chG8iHZH1e" resolve="testOptional" />
                  </node>
                  <node concept="liA8E" id="4chG8iHZH1K" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Optional.isEmpty()" resolve="isEmpty" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="4chG8iHZH1L" role="3cqZAp">
                <node concept="37vLTw" id="4chG8iHZH1M" role="3cqZAk">
                  <ref role="3cqZAo" node="4chG8iHZH1e" resolve="testOptional" />
                </node>
              </node>
            </node>
            <node concept="2YIFZM" id="82DhFbGPj" role="3clFbw">
              <ref role="37wK5l" node="7o1qpmkr0FQ" resolve="isJUnit5TestMethod" />
              <ref role="1Pybhc" node="4chG8iIoNLB" resolve="TestNodeUtil" />
              <node concept="1PxgMI" id="7o1qpmkrlK8" role="37wK5m">
                <node concept="37vLTw" id="7o1qpmkrlK9" role="1m5AlR">
                  <ref role="3cqZAo" node="7o1qpmkreZk" resolve="node" />
                </node>
                <node concept="chp4Y" id="7o1qpmkrlKa" role="3oSUPX">
                  <ref role="cht4Q" to="tpee:fzclF8t" resolve="InstanceMethodDeclaration" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="7o1qpmkrf0U" role="3cqZAp">
            <node concept="2YIFZM" id="4rQ9_5dtMRN" role="3cqZAk">
              <ref role="37wK5l" to="33ny:~Optional.empty()" resolve="empty" />
              <ref role="1Pybhc" to="33ny:~Optional" resolve="Optional" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="7o1qpmkrf0W" role="1B3o_S" />
        <node concept="2AHcQZ" id="7o1qpmkrf0X" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="4chG8iIoNLB">
    <property role="3GE5qa" value="wrappers" />
    <property role="TrG5h" value="TestNodeUtil" />
    <node concept="2tJIrI" id="4chG8iIoNNR" role="jymVt" />
    <node concept="2YIFZL" id="4Tkq3_eQfcS" role="jymVt">
      <property role="TrG5h" value="needsMPS" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="4Tkq3_eQfcV" role="3clF47">
        <node concept="2$JKZl" id="4Tkq3_eRAnc" role="3cqZAp">
          <node concept="3clFbS" id="4Tkq3_eRAnd" role="2LFqv$">
            <node concept="3clFbJ" id="4Tkq3_eRACN" role="3cqZAp">
              <node concept="1rXfSq" id="4chG8iIoY5a" role="3clFbw">
                <ref role="37wK5l" node="4Tkq3_eRAJK" resolve="isAnnotatedToLaunch" />
                <node concept="37vLTw" id="4Tkq3_eTv90" role="37wK5m">
                  <ref role="3cqZAo" node="4Tkq3_eQgga" resolve="clazz" />
                </node>
              </node>
              <node concept="3clFbS" id="4Tkq3_eRACP" role="3clFbx">
                <node concept="3cpWs6" id="4Tkq3_eRBU4" role="3cqZAp">
                  <node concept="3clFbT" id="4Tkq3_eRBYO" role="3cqZAk">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="4Tkq3_eSq6V" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXoe7w" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXoe7x" role="1PaTwD">
                  <property role="3oM_SC" value="check" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe7y" role="1PaTwD">
                  <property role="3oM_SC" value="java" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe7z" role="1PaTwD">
                  <property role="3oM_SC" value="stub" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe7$" role="1PaTwD">
                  <property role="3oM_SC" value="target" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe7_" role="1PaTwD">
                  <property role="3oM_SC" value="only" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe7A" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe7B" role="1PaTwD">
                  <property role="3oM_SC" value="avoid" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe7C" role="1PaTwD">
                  <property role="3oM_SC" value="dependency" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe7D" role="1PaTwD">
                  <property role="3oM_SC" value="from" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe7E" role="1PaTwD">
                  <property role="3oM_SC" value="j.m.testbench" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe7F" role="1PaTwD">
                  <property role="3oM_SC" value="module" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe7G" role="1PaTwD">
                  <property role="3oM_SC" value="which" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe7H" role="1PaTwD">
                  <property role="3oM_SC" value="is" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe7I" role="1PaTwD">
                  <property role="3oM_SC" value="not" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe7J" role="1PaTwD">
                  <property role="3oM_SC" value="part" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe7K" role="1PaTwD">
                  <property role="3oM_SC" value="of" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe7L" role="1PaTwD">
                  <property role="3oM_SC" value="MPS" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe7M" role="1PaTwD">
                  <property role="3oM_SC" value="build" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe7N" role="1PaTwD">
                  <property role="3oM_SC" value="(only" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe7O" role="1PaTwD">
                  <property role="3oM_SC" value="via" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe7P" role="1PaTwD">
                  <property role="3oM_SC" value="Testbench" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe7Q" role="1PaTwD">
                  <property role="3oM_SC" value="stub" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe7R" role="1PaTwD">
                  <property role="3oM_SC" value="solution)" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="4Tkq3_eRZGL" role="3cqZAp">
              <node concept="3clFbS" id="4Tkq3_eRZGN" role="3clFbx">
                <node concept="3cpWs6" id="4Tkq3_eS23H" role="3cqZAp">
                  <node concept="3clFbT" id="4Tkq3_eS2fj" role="3cqZAk">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="4Tkq3_eS0li" role="3clFbw">
                <node concept="37vLTw" id="4Tkq3_eRZSv" role="2Oq$k0">
                  <ref role="3cqZAo" node="4Tkq3_eQgga" resolve="clazz" />
                </node>
                <node concept="1QLmlb" id="4Tkq3_eS1V2" role="2OqNvi">
                  <node concept="ZC_QK" id="4k06bsQmEN8" role="1QLmnL">
                    <ref role="2aWVGs" to="83ig:~EnvironmentAwareTestCase" resolve="EnvironmentAwareTestCase" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="4Tkq3_eSqup" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXoe7S" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXoe7T" role="1PaTwD">
                  <property role="3oM_SC" value="check" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe7U" role="1PaTwD">
                  <property role="3oM_SC" value="both" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe7V" role="1PaTwD">
                  <property role="3oM_SC" value="java" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe7W" role="1PaTwD">
                  <property role="3oM_SC" value="stub" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe7X" role="1PaTwD">
                  <property role="3oM_SC" value="and" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe7Y" role="1PaTwD">
                  <property role="3oM_SC" value="regular" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe7Z" role="1PaTwD">
                  <property role="3oM_SC" value="node" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe80" role="1PaTwD">
                  <property role="3oM_SC" value="for" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe81" role="1PaTwD">
                  <property role="3oM_SC" value="EnvironmentAware" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe82" role="1PaTwD">
                  <property role="3oM_SC" value="as" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe83" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe84" role="1PaTwD">
                  <property role="3oM_SC" value="j.m.tool.environment" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe85" role="1PaTwD">
                  <property role="3oM_SC" value="is" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe86" role="1PaTwD">
                  <property role="3oM_SC" value="part" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe87" role="1PaTwD">
                  <property role="3oM_SC" value="of" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe88" role="1PaTwD">
                  <property role="3oM_SC" value="MPS" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe89" role="1PaTwD">
                  <property role="3oM_SC" value="build" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe8a" role="1PaTwD">
                  <property role="3oM_SC" value="(unlike" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe8b" role="1PaTwD">
                  <property role="3oM_SC" value="j.m.testbench)" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="2F2_P1adZBC" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXoe8c" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXoe8d" role="1PaTwD">
                  <property role="3oM_SC" value="IMPORTANT!" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe8e" role="1PaTwD">
                  <property role="3oM_SC" value="there" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe8f" role="1PaTwD">
                  <property role="3oM_SC" value="are" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe8g" role="1PaTwD">
                  <property role="3oM_SC" value="TWO" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe8h" role="1PaTwD">
                  <property role="3oM_SC" value="checks" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe8i" role="1PaTwD">
                  <property role="3oM_SC" value="is(EnvironmentAware)." />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe8j" role="1PaTwD">
                  <property role="3oM_SC" value="Please" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe8k" role="1PaTwD">
                  <property role="3oM_SC" value="make" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe8l" role="1PaTwD">
                  <property role="3oM_SC" value="sure" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe8m" role="1PaTwD">
                  <property role="3oM_SC" value="one" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe8n" role="1PaTwD">
                  <property role="3oM_SC" value="points" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe8o" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe8p" role="1PaTwD">
                  <property role="3oM_SC" value="java" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe8q" role="1PaTwD">
                  <property role="3oM_SC" value="stub" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe8r" role="1PaTwD">
                  <property role="3oM_SC" value="while" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe8s" role="1PaTwD">
                  <property role="3oM_SC" value="another" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe8t" role="1PaTwD">
                  <property role="3oM_SC" value="points" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe8u" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe8v" role="1PaTwD">
                  <property role="3oM_SC" value="regular" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoe8w" role="1PaTwD">
                  <property role="3oM_SC" value="node!" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="4Tkq3_eS2_w" role="3cqZAp">
              <node concept="3clFbS" id="4Tkq3_eS2_y" role="3clFbx">
                <node concept="3cpWs6" id="4Tkq3_eSruU" role="3cqZAp">
                  <node concept="3clFbT" id="4Tkq3_eSrwo" role="3cqZAk">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="4Tkq3_eS8mM" role="3clFbw">
                <node concept="2OqwBi" id="4Tkq3_eS3ei" role="2Oq$k0">
                  <node concept="37vLTw" id="4Tkq3_eS2Lt" role="2Oq$k0">
                    <ref role="3cqZAo" node="4Tkq3_eQgga" resolve="clazz" />
                  </node>
                  <node concept="3Tsc0h" id="4Tkq3_eS41t" role="2OqNvi">
                    <ref role="3TtcxE" to="tpee:fWEKbgp" resolve="implementedInterface" />
                  </node>
                </node>
                <node concept="2HwmR7" id="4Tkq3_eSg$O" role="2OqNvi">
                  <node concept="1bVj0M" id="4Tkq3_eSg$Q" role="23t8la">
                    <node concept="3clFbS" id="4Tkq3_eSg$R" role="1bW5cS">
                      <node concept="3clFbF" id="4Tkq3_eSgE2" role="3cqZAp">
                        <node concept="22lmx$" id="4Tkq3_eSkYp" role="3clFbG">
                          <node concept="2OqwBi" id="4Tkq3_eSnwU" role="3uHU7w">
                            <node concept="2OqwBi" id="4Tkq3_eSlGa" role="2Oq$k0">
                              <node concept="37vLTw" id="4Tkq3_eSldQ" role="2Oq$k0">
                                <ref role="3cqZAo" node="5W7E4fV0XzY" resolve="it" />
                              </node>
                              <node concept="3TrEf2" id="4Tkq3_eSmHy" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpee:g7uigIF" resolve="classifier" />
                              </node>
                            </node>
                            <node concept="1QLmlb" id="4Tkq3_eSp7N" role="2OqNvi">
                              <node concept="ZC_QK" id="4Tkq3_eSqOr" role="1QLmnL">
                                <ref role="2aWVGs" to="79ha:7KC1aYnI6jD" resolve="EnvironmentAware" />
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="4Tkq3_eSiry" role="3uHU7B">
                            <node concept="2OqwBi" id="4Tkq3_eSgWe" role="2Oq$k0">
                              <node concept="37vLTw" id="4Tkq3_eSgE1" role="2Oq$k0">
                                <ref role="3cqZAo" node="5W7E4fV0XzY" resolve="it" />
                              </node>
                              <node concept="3TrEf2" id="4Tkq3_eShqY" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpee:g7uigIF" resolve="classifier" />
                              </node>
                            </node>
                            <node concept="1QLmlb" id="4Tkq3_eSk3w" role="2OqNvi">
                              <node concept="ZC_QK" id="2F2_P1adPZR" role="1QLmnL">
                                <ref role="2aWVGs" to="ew0j:~EnvironmentAware" resolve="EnvironmentAware" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0XzY" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="5W7E4fV0XzZ" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4Tkq3_eREto" role="3cqZAp">
              <node concept="37vLTI" id="4Tkq3_eRF74" role="3clFbG">
                <node concept="37vLTw" id="4Tkq3_eREtm" role="37vLTJ">
                  <ref role="3cqZAo" node="4Tkq3_eQgga" resolve="clazz" />
                </node>
                <node concept="1PxgMI" id="4Tkq3_eRZ9h" role="37vLTx">
                  <property role="1BlNFB" value="true" />
                  <node concept="chp4Y" id="4Tkq3_eRZiL" role="3oSUPX">
                    <ref role="cht4Q" to="tpee:fz12cDA" resolve="ClassConcept" />
                  </node>
                  <node concept="2OqwBi" id="4Tkq3_eRCyZ" role="1m5AlR">
                    <node concept="2OqwBi" id="4Tkq3_eRCz0" role="2Oq$k0">
                      <node concept="37vLTw" id="4Tkq3_eRCz1" role="2Oq$k0">
                        <ref role="3cqZAo" node="4Tkq3_eQgga" resolve="clazz" />
                      </node>
                      <node concept="3TrEf2" id="4Tkq3_eRCz2" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpee:gXzkM_H" resolve="superclass" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="4Tkq3_eRCz3" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:g7uigIF" resolve="classifier" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="4Tkq3_eRAnf" role="2$JKZa">
            <node concept="10Nm6u" id="4Tkq3_eRAng" role="3uHU7w" />
            <node concept="37vLTw" id="4Tkq3_eRAnh" role="3uHU7B">
              <ref role="3cqZAo" node="4Tkq3_eQgga" resolve="clazz" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4Tkq3_eRAi9" role="3cqZAp">
          <node concept="3clFbT" id="4Tkq3_eRAju" role="3cqZAk">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="4Tkq3_eQf3i" role="3clF45" />
      <node concept="37vLTG" id="4Tkq3_eQgga" role="3clF46">
        <property role="TrG5h" value="clazz" />
        <node concept="3Tqbb2" id="4Tkq3_eQgg9" role="1tU5fm">
          <ref role="ehGHo" to="tpee:fz12cDA" resolve="ClassConcept" />
        </node>
        <node concept="2AHcQZ" id="4Tkq3_eSscT" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="P$JXv" id="4Tkq3_eSrXR" role="lGtFl">
        <node concept="x79VA" id="4Tkq3_eSrXX" role="3nqlJM">
          <property role="x79VB" value="" />
          <node concept="1PaTwC" id="1E1X3WHsC_e" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHsC_f" role="1PaTwD">
              <property role="3oM_SC" value="true" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsC_g" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsC_h" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsC_i" role="1PaTwD">
              <property role="3oM_SC" value="test" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsC_j" role="1PaTwD">
              <property role="3oM_SC" value="represented" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsC_k" role="1PaTwD">
              <property role="3oM_SC" value="by" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsC_l" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsC_m" role="1PaTwD">
              <property role="3oM_SC" value="class" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsC_n" role="1PaTwD">
              <property role="3oM_SC" value="needs" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsC_o" role="1PaTwD">
              <property role="3oM_SC" value="MPS" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsC_p" role="1PaTwD">
              <property role="3oM_SC" value="instance" />
            </node>
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsC$r" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsC$s" role="1PaTwD">
            <property role="3oM_SC" value="Check" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC$t" role="1PaTwD">
            <property role="3oM_SC" value="if" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC$u" role="1PaTwD">
            <property role="3oM_SC" value="class" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC$v" role="1PaTwD">
            <property role="3oM_SC" value="or" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC$w" role="1PaTwD">
            <property role="3oM_SC" value="any" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC$x" role="1PaTwD">
            <property role="3oM_SC" value="its" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC$y" role="1PaTwD">
            <property role="3oM_SC" value="superclass" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC$z" role="1PaTwD">
            <property role="3oM_SC" value="got" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC$$" role="1PaTwD">
            <property role="3oM_SC" value="MPSLaunch" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC$_" role="1PaTwD">
            <property role="3oM_SC" value="annotation," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC$A" role="1PaTwD">
            <property role="3oM_SC" value="or" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC$B" role="1PaTwD">
            <property role="3oM_SC" value="extends/implements" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC$C" role="1PaTwD">
            <property role="3oM_SC" value="EnvironmentAware." />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsC$D" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsC$E" role="1PaTwD">
            <property role="3oM_SC" value="If" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC$F" role="1PaTwD">
            <property role="3oM_SC" value="true," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC$G" role="1PaTwD">
            <property role="3oM_SC" value="we" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC$H" role="1PaTwD">
            <property role="3oM_SC" value="assume" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC$I" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC$J" role="1PaTwD">
            <property role="3oM_SC" value="class" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC$K" role="1PaTwD">
            <property role="3oM_SC" value="needs" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC$L" role="1PaTwD">
            <property role="3oM_SC" value="running" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC$M" role="1PaTwD">
            <property role="3oM_SC" value="MPS" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC$N" role="1PaTwD">
            <property role="3oM_SC" value="instance" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC$O" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC$P" role="1PaTwD">
            <property role="3oM_SC" value="get" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC$Q" role="1PaTwD">
            <property role="3oM_SC" value="executed." />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsC$R" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsC$S" role="1PaTwD">
            <property role="3oM_SC" value="Note," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC$T" role="1PaTwD">
            <property role="3oM_SC" value="this" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC$U" role="1PaTwD">
            <property role="3oM_SC" value="method" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC$V" role="1PaTwD">
            <property role="3oM_SC" value="doesn't" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC$W" role="1PaTwD">
            <property role="3oM_SC" value="look" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC$X" role="1PaTwD">
            <property role="3oM_SC" value="into" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC$Y" role="1PaTwD">
            <property role="3oM_SC" value="annotations" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC$Z" role="1PaTwD">
            <property role="3oM_SC" value="on" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC_0" role="1PaTwD">
            <property role="3oM_SC" value="distinct" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC_1" role="1PaTwD">
            <property role="3oM_SC" value="test" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC_2" role="1PaTwD">
            <property role="3oM_SC" value="methods" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC_3" role="1PaTwD">
            <property role="3oM_SC" value="(therefore," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC_4" role="1PaTwD">
            <property role="3oM_SC" value="we" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC_5" role="1PaTwD">
            <property role="3oM_SC" value="could" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC_6" role="1PaTwD">
            <property role="3oM_SC" value="use" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC_7" role="1PaTwD">
            <property role="3oM_SC" value="it" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC_8" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC_9" role="1PaTwD">
            <property role="3oM_SC" value="both" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC_a" role="1PaTwD">
            <property role="3oM_SC" value="JUnit3" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC_b" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC_c" role="1PaTwD">
            <property role="3oM_SC" value="JUnit4" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC_d" role="1PaTwD">
            <property role="3oM_SC" value="ClassConcepts)" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="82DhFescV" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4chG8iIpGsw" role="jymVt" />
    <node concept="2YIFZL" id="4Tkq3_eRAJK" role="jymVt">
      <property role="TrG5h" value="isAnnotatedToLaunch" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="4Tkq3_eRys4" role="3clF47">
        <node concept="3SKdUt" id="4Tkq3_eSsWw" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXoe8x" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXoe8y" role="1PaTwD">
              <property role="3oM_SC" value="MPSLaunch" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoe8z" role="1PaTwD">
              <property role="3oM_SC" value="lives" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoe8$" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoe8_" role="1PaTwD">
              <property role="3oM_SC" value="j.m.testbench" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoe8A" role="1PaTwD">
              <property role="3oM_SC" value="which" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoe8B" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoe8C" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoe8D" role="1PaTwD">
              <property role="3oM_SC" value="part" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoe8E" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoe8F" role="1PaTwD">
              <property role="3oM_SC" value="MPS" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoe8G" role="1PaTwD">
              <property role="3oM_SC" value="build," />
            </node>
            <node concept="3oM_SD" id="ATZLwXoe8H" role="1PaTwD">
              <property role="3oM_SC" value="therefore" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoe8I" role="1PaTwD">
              <property role="3oM_SC" value="check" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoe8J" role="1PaTwD">
              <property role="3oM_SC" value="here" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoe8K" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoe8L" role="1PaTwD">
              <property role="3oM_SC" value="java" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoe8M" role="1PaTwD">
              <property role="3oM_SC" value="stub" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoe8N" role="1PaTwD">
              <property role="3oM_SC" value="only" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4Tkq3_eQgBh" role="3cqZAp">
          <node concept="2OqwBi" id="4Tkq3_eQlew" role="3clFbG">
            <node concept="2OqwBi" id="4Tkq3_eQh3P" role="2Oq$k0">
              <node concept="37vLTw" id="4Tkq3_eQgBg" role="2Oq$k0">
                <ref role="3cqZAo" node="4Tkq3_eR$mg" resolve="withAnnotation" />
              </node>
              <node concept="3Tsc0h" id="4Tkq3_eQhQS" role="2OqNvi">
                <ref role="3TtcxE" to="tpee:hiAJF2X" resolve="annotation" />
              </node>
            </node>
            <node concept="2HwmR7" id="4Tkq3_eQra5" role="2OqNvi">
              <node concept="1bVj0M" id="4Tkq3_eQra7" role="23t8la">
                <node concept="3clFbS" id="4Tkq3_eQra8" role="1bW5cS">
                  <node concept="3clFbF" id="4Tkq3_eQrhK" role="3cqZAp">
                    <node concept="2OqwBi" id="4Tkq3_eQrx7" role="3clFbG">
                      <node concept="2OqwBi" id="4Tkq3_eQsIR" role="2Oq$k0">
                        <node concept="37vLTw" id="4Tkq3_eQrhJ" role="2Oq$k0">
                          <ref role="3cqZAo" node="5W7E4fV0X$0" resolve="it" />
                        </node>
                        <node concept="3TrEf2" id="4Tkq3_eQtcp" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpee:hiAI5P0" resolve="annotation" />
                        </node>
                      </node>
                      <node concept="1QLmlb" id="4Tkq3_eQrTC" role="2OqNvi">
                        <node concept="ZC_QK" id="4k06bsQmEPV" role="1QLmnL">
                          <ref role="2aWVGs" to="fyhk:~MPSLaunch" resolve="MPSLaunch" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="5W7E4fV0X$0" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="5W7E4fV0X$1" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4Tkq3_eR$mg" role="3clF46">
        <property role="TrG5h" value="withAnnotation" />
        <node concept="3Tqbb2" id="4Tkq3_eR$mh" role="1tU5fm">
          <ref role="ehGHo" to="tpee:hiAJDhU" resolve="HasAnnotation" />
        </node>
      </node>
      <node concept="10P_77" id="4Tkq3_eRyiq" role="3clF45" />
      <node concept="3Tm1VV" id="82DhFesjo" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4chG8iIpHxk" role="jymVt" />
    <node concept="2YIFZL" id="1KnTQt4Oif7" role="jymVt">
      <property role="TrG5h" value="isTestMethod" />
      <node concept="10P_77" id="1KnTQt4Oif8" role="3clF45" />
      <node concept="3clFbS" id="1KnTQt4Oifa" role="3clF47">
        <node concept="3clFbF" id="1KnTQt4Oifb" role="3cqZAp">
          <node concept="1Wc70l" id="1KnTQt4Oifc" role="3clFbG">
            <node concept="2OqwBi" id="1KnTQt4Oifd" role="3uHU7w">
              <node concept="2OqwBi" id="1KnTQt4Oife" role="2Oq$k0">
                <node concept="37vLTw" id="2BHiRxglT6p" role="2Oq$k0">
                  <ref role="3cqZAo" node="1KnTQt4OifF" resolve="method" />
                </node>
                <node concept="3TrcHB" id="1KnTQt4Oifg" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
              <node concept="liA8E" id="1KnTQt4Oifh" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                <node concept="Xl_RD" id="1KnTQt4Oifi" role="37wK5m">
                  <property role="Xl_RC" value="test" />
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="1KnTQt4Oifj" role="3uHU7B">
              <node concept="1Wc70l" id="1KnTQt4Oifk" role="3uHU7B">
                <node concept="2OqwBi" id="1KnTQt4Oifl" role="3uHU7w">
                  <node concept="2OqwBi" id="1KnTQt4Oifm" role="2Oq$k0">
                    <node concept="37vLTw" id="2BHiRxgl00I" role="2Oq$k0">
                      <ref role="3cqZAo" node="1KnTQt4OifF" resolve="method" />
                    </node>
                    <node concept="3TrEf2" id="1KnTQt4Oifo" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:h9B3oxE" resolve="visibility" />
                    </node>
                  </node>
                  <node concept="1mIQ4w" id="1KnTQt4Oifp" role="2OqNvi">
                    <node concept="chp4Y" id="1KnTQt4Oifq" role="cj9EA">
                      <ref role="cht4Q" to="tpee:gFTm1ZL" resolve="PublicVisibility" />
                    </node>
                  </node>
                </node>
                <node concept="1Wc70l" id="1KnTQt4Oifr" role="3uHU7B">
                  <node concept="3fqX7Q" id="1KnTQt4Oifs" role="3uHU7B">
                    <node concept="2OqwBi" id="1KnTQt4Oift" role="3fr31v">
                      <node concept="3zqWPK" id="70OdufORhcf" role="2OqNvi">
                        <ref role="37wK5l" to="tpek:28P2dHxCoRl" resolve="isAnAbstractMethod" />
                      </node>
                      <node concept="37vLTw" id="2BHiRxgm9cG" role="2Oq$k0">
                        <ref role="3cqZAo" node="1KnTQt4OifF" resolve="method" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1KnTQt4Oifw" role="3uHU7w">
                    <node concept="2OqwBi" id="1KnTQt4Oifx" role="2Oq$k0">
                      <node concept="37vLTw" id="2BHiRxgl6x4" role="2Oq$k0">
                        <ref role="3cqZAo" node="1KnTQt4OifF" resolve="method" />
                      </node>
                      <node concept="3TrEf2" id="1KnTQt4Oifz" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpee:h9B3oxE" resolve="visibility" />
                      </node>
                    </node>
                    <node concept="3x8VRR" id="1KnTQt4Oif$" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="1eOMI4" id="1KnTQt4Oif_" role="3uHU7w">
                <node concept="3y3z36" id="1KnTQt4OifA" role="1eOMHV">
                  <node concept="10Nm6u" id="1KnTQt4OifB" role="3uHU7w" />
                  <node concept="2OqwBi" id="1KnTQt4OifC" role="3uHU7B">
                    <node concept="37vLTw" id="2BHiRxgkWX4" role="2Oq$k0">
                      <ref role="3cqZAo" node="1KnTQt4OifF" resolve="method" />
                    </node>
                    <node concept="3TrcHB" id="1KnTQt4OifE" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1KnTQt4OifF" role="3clF46">
        <property role="TrG5h" value="method" />
        <node concept="3Tqbb2" id="1KnTQt4OifG" role="1tU5fm">
          <ref role="ehGHo" to="tpee:fzclF8t" resolve="InstanceMethodDeclaration" />
        </node>
        <node concept="2AHcQZ" id="1KnTQt4OifH" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3Tm1VV" id="82DhFesw_" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4chG8iIpIO2" role="jymVt" />
    <node concept="2YIFZL" id="1KnTQt4OihC" role="jymVt">
      <property role="TrG5h" value="isJUnit4TestMethod" />
      <node concept="37vLTG" id="1KnTQt4OihD" role="3clF46">
        <property role="TrG5h" value="method" />
        <node concept="3Tqbb2" id="1KnTQt4OihE" role="1tU5fm">
          <ref role="ehGHo" to="tpee:fzclF8t" resolve="InstanceMethodDeclaration" />
        </node>
      </node>
      <node concept="10P_77" id="1KnTQt4OihF" role="3clF45" />
      <node concept="3clFbS" id="1KnTQt4OihH" role="3clF47">
        <node concept="3clFbJ" id="1KnTQt4OihI" role="3cqZAp">
          <node concept="3clFbS" id="1KnTQt4OihJ" role="3clFbx">
            <node concept="3cpWs8" id="6XsMd4iC2AA" role="3cqZAp">
              <node concept="3cpWsn" id="6XsMd4iC2AB" role="3cpWs9">
                <property role="TrG5h" value="hasTestAnnotation" />
                <node concept="10P_77" id="6XsMd4iC2AC" role="1tU5fm" />
                <node concept="3clFbT" id="6XsMd4iC2AE" role="33vP2m">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="6XsMd4iC2$s" role="3cqZAp">
              <node concept="2GrKxI" id="6XsMd4iC2$t" role="2Gsz3X">
                <property role="TrG5h" value="annotation" />
              </node>
              <node concept="3clFbS" id="6XsMd4iC2$v" role="2LFqv$">
                <node concept="3clFbJ" id="6XsMd4iC2_2" role="3cqZAp">
                  <node concept="2OqwBi" id="3XR0QgVCm1B" role="3clFbw">
                    <node concept="2EnYce" id="3XR0QgVCm1z" role="2Oq$k0">
                      <node concept="2GrUjf" id="3XR0QgVCm1$" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="6XsMd4iC2$t" resolve="annotation" />
                      </node>
                      <node concept="3TrEf2" id="3XR0QgVCm1_" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpee:hiAI5P0" resolve="annotation" />
                      </node>
                    </node>
                    <node concept="1QLmlb" id="3XR0QgVCm1C" role="2OqNvi">
                      <node concept="ZC_QK" id="3XR0QgVCm1A" role="1QLmnL">
                        <ref role="2aWVGs" to="rjhg:~Ignore" resolve="Ignore" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="6XsMd4iC2_4" role="3clFbx">
                    <node concept="3cpWs6" id="6XsMd4iC2Ah" role="3cqZAp">
                      <node concept="3clFbT" id="6XsMd4iC2Aj" role="3cqZAk">
                        <property role="3clFbU" value="false" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="6XsMd4iC2Al" role="3cqZAp">
                  <node concept="3clFbS" id="6XsMd4iC2Am" role="3clFbx">
                    <node concept="3clFbF" id="6XsMd4iC2AO" role="3cqZAp">
                      <node concept="37vLTI" id="6XsMd4iC2Bg" role="3clFbG">
                        <node concept="3clFbT" id="6XsMd4iC2Bj" role="37vLTx">
                          <property role="3clFbU" value="true" />
                        </node>
                        <node concept="37vLTw" id="3GM_nagTBp7" role="37vLTJ">
                          <ref role="3cqZAo" node="6XsMd4iC2AB" resolve="hasTestAnnotation" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1Wc70l" id="6XsMd4iC2AI" role="3clFbw">
                    <node concept="3fqX7Q" id="6XsMd4iC2AL" role="3uHU7B">
                      <node concept="37vLTw" id="3GM_nagTzqx" role="3fr31v">
                        <ref role="3cqZAo" node="6XsMd4iC2AB" resolve="hasTestAnnotation" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3XR0QgVCm7M" role="3uHU7w">
                      <node concept="2EnYce" id="3XR0QgVCm7I" role="2Oq$k0">
                        <node concept="2GrUjf" id="3XR0QgVCm7J" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="6XsMd4iC2$t" resolve="annotation" />
                        </node>
                        <node concept="3TrEf2" id="3XR0QgVCm7K" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpee:hiAI5P0" resolve="annotation" />
                        </node>
                      </node>
                      <node concept="1QLmlb" id="3XR0QgVCm7N" role="2OqNvi">
                        <node concept="ZC_QK" id="3XR0QgVCm7L" role="1QLmnL">
                          <ref role="2aWVGs" to="rjhg:~Test" resolve="Test" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="6XsMd4iC2$V" role="2GsD0m">
                <node concept="37vLTw" id="2BHiRxglqe_" role="2Oq$k0">
                  <ref role="3cqZAo" node="1KnTQt4OihD" resolve="method" />
                </node>
                <node concept="3Tsc0h" id="6XsMd4iC2_1" role="2OqNvi">
                  <ref role="3TtcxE" to="tpee:hiAJF2X" resolve="annotation" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="6XsMd4iC2Bl" role="3cqZAp">
              <node concept="37vLTw" id="3GM_nagT$W6" role="3cqZAk">
                <ref role="3cqZAo" node="6XsMd4iC2AB" resolve="hasTestAnnotation" />
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="1KnTQt4Oiic" role="3clFbw">
            <node concept="1Wc70l" id="1KnTQt4Oiid" role="3uHU7B">
              <node concept="2OqwBi" id="1KnTQt4Oiie" role="3uHU7w">
                <node concept="2OqwBi" id="1KnTQt4Oiif" role="2Oq$k0">
                  <node concept="37vLTw" id="2BHiRxglPgR" role="2Oq$k0">
                    <ref role="3cqZAo" node="1KnTQt4OihD" resolve="method" />
                  </node>
                  <node concept="3TrEf2" id="1KnTQt4Oiih" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:h9B3oxE" resolve="visibility" />
                  </node>
                </node>
                <node concept="1mIQ4w" id="1KnTQt4Oiii" role="2OqNvi">
                  <node concept="chp4Y" id="1KnTQt4Oiij" role="cj9EA">
                    <ref role="cht4Q" to="tpee:gFTm1ZL" resolve="PublicVisibility" />
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="1KnTQt4Oiik" role="3uHU7B">
                <node concept="3fqX7Q" id="1KnTQt4Oiil" role="3uHU7B">
                  <node concept="2OqwBi" id="1KnTQt4Oiim" role="3fr31v">
                    <node concept="3zqWPK" id="70OdufORhch" role="2OqNvi">
                      <ref role="37wK5l" to="tpek:28P2dHxCoRl" resolve="isAnAbstractMethod" />
                    </node>
                    <node concept="37vLTw" id="2BHiRxgm_pa" role="2Oq$k0">
                      <ref role="3cqZAo" node="1KnTQt4OihD" resolve="method" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="1KnTQt4Oiip" role="3uHU7w">
                  <node concept="2OqwBi" id="1KnTQt4Oiiq" role="2Oq$k0">
                    <node concept="37vLTw" id="2BHiRxgmFBf" role="2Oq$k0">
                      <ref role="3cqZAo" node="1KnTQt4OihD" resolve="method" />
                    </node>
                    <node concept="3TrEf2" id="1KnTQt4Oiis" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:h9B3oxE" resolve="visibility" />
                    </node>
                  </node>
                  <node concept="3x8VRR" id="1KnTQt4Oiit" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="1eOMI4" id="1KnTQt4Oiiu" role="3uHU7w">
              <node concept="3y3z36" id="1KnTQt4Oiiv" role="1eOMHV">
                <node concept="10Nm6u" id="1KnTQt4Oiiw" role="3uHU7w" />
                <node concept="2OqwBi" id="1KnTQt4Oiix" role="3uHU7B">
                  <node concept="37vLTw" id="2BHiRxgmv2G" role="2Oq$k0">
                    <ref role="3cqZAo" node="1KnTQt4OihD" resolve="method" />
                  </node>
                  <node concept="3TrcHB" id="1KnTQt4Oiiz" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1KnTQt4Oii$" role="3cqZAp">
          <node concept="3clFbT" id="1KnTQt4Oii_" role="3clFbG">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="82DhFesYu" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4chG8iIpJZP" role="jymVt" />
    <node concept="2YIFZL" id="1KnTQt4Oijh" role="jymVt">
      <property role="TrG5h" value="isJUnit4TestCase" />
      <node concept="37vLTG" id="1KnTQt4Oiji" role="3clF46">
        <property role="TrG5h" value="clazz" />
        <node concept="3Tqbb2" id="1KnTQt4Oijj" role="1tU5fm">
          <ref role="ehGHo" to="tpee:fz12cDA" resolve="ClassConcept" />
        </node>
      </node>
      <node concept="10P_77" id="1KnTQt4Oijk" role="3clF45" />
      <node concept="3clFbS" id="1KnTQt4Oijm" role="3clF47">
        <node concept="3clFbJ" id="1KnTQt4Oijn" role="3cqZAp">
          <node concept="3clFbS" id="1KnTQt4Oijo" role="3clFbx">
            <node concept="3cpWs6" id="1KnTQt4Oijp" role="3cqZAp">
              <node concept="3clFbT" id="1KnTQt4Oijq" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1KnTQt4Oijr" role="3clFbw">
            <node concept="1PxgMI" id="1KnTQt4Oijs" role="2Oq$k0">
              <node concept="37vLTw" id="2BHiRxgm9AT" role="1m5AlR">
                <ref role="3cqZAo" node="1KnTQt4Oiji" resolve="clazz" />
              </node>
              <node concept="chp4Y" id="714IaVdGYNQ" role="3oSUPX">
                <ref role="cht4Q" to="tpee:fz12cDA" resolve="ClassConcept" />
              </node>
            </node>
            <node concept="3TrcHB" id="1KnTQt4Oiju" role="2OqNvi">
              <ref role="3TsBF5" to="tpee:fDsVARU" resolve="abstractClass" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="1KnTQt4Oijv" role="3cqZAp">
          <node concept="2GrKxI" id="1KnTQt4Oijw" role="2Gsz3X">
            <property role="TrG5h" value="method" />
          </node>
          <node concept="2OqwBi" id="1KnTQt4Oijx" role="2GsD0m">
            <node concept="3zqWPK" id="70OdufORhcj" role="2OqNvi">
              <ref role="37wK5l" to="tpek:4_LVZ3pBKCn" resolve="methods" />
            </node>
            <node concept="37vLTw" id="2BHiRxgm78D" role="2Oq$k0">
              <ref role="3cqZAo" node="1KnTQt4Oiji" resolve="clazz" />
            </node>
          </node>
          <node concept="3clFbS" id="1KnTQt4Oij$" role="2LFqv$">
            <node concept="3clFbJ" id="1KnTQt4Oij_" role="3cqZAp">
              <node concept="3clFbS" id="1KnTQt4OijA" role="3clFbx">
                <node concept="3cpWs6" id="1KnTQt4OijB" role="3cqZAp">
                  <node concept="3clFbT" id="1KnTQt4OijC" role="3cqZAk">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="2YIFZM" id="4chG8iIphIX" role="3clFbw">
                <ref role="37wK5l" node="1KnTQt4OihC" resolve="isJUnit4TestMethod" />
                <ref role="1Pybhc" node="4chG8iIoNLB" resolve="TestNodeUtil" />
                <node concept="2GrUjf" id="1KnTQt4OijE" role="37wK5m">
                  <ref role="2Gs0qQ" node="1KnTQt4Oijw" resolve="method" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1KnTQt4OijF" role="3cqZAp">
          <node concept="3clFbT" id="1KnTQt4OijG" role="3clFbG">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="82DhFetfL" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4chG8iIpL4G" role="jymVt" />
    <node concept="2YIFZL" id="7o1qpmkr0FQ" role="jymVt">
      <property role="TrG5h" value="isJUnit5TestMethod" />
      <node concept="37vLTG" id="7o1qpmkr0FR" role="3clF46">
        <property role="TrG5h" value="method" />
        <node concept="3Tqbb2" id="7o1qpmkr0FS" role="1tU5fm">
          <ref role="ehGHo" to="tpee:fzclF8t" resolve="InstanceMethodDeclaration" />
        </node>
      </node>
      <node concept="10P_77" id="7o1qpmkr0FT" role="3clF45" />
      <node concept="3clFbS" id="7o1qpmkr0FV" role="3clF47">
        <node concept="3clFbJ" id="7o1qpmkr0FW" role="3cqZAp">
          <node concept="3clFbS" id="7o1qpmkr0FX" role="3clFbx">
            <node concept="3cpWs8" id="7o1qpmkr0FY" role="3cqZAp">
              <node concept="3cpWsn" id="7o1qpmkr0FZ" role="3cpWs9">
                <property role="TrG5h" value="hasTestAnnotation" />
                <node concept="10P_77" id="7o1qpmkr0G0" role="1tU5fm" />
                <node concept="3clFbT" id="7o1qpmkr0G1" role="33vP2m">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="7o1qpmkr0G2" role="3cqZAp">
              <node concept="2GrKxI" id="7o1qpmkr0G3" role="2Gsz3X">
                <property role="TrG5h" value="annotation" />
              </node>
              <node concept="3clFbS" id="7o1qpmkr0G4" role="2LFqv$">
                <node concept="3clFbJ" id="7o1qpmkr0G5" role="3cqZAp">
                  <node concept="2OqwBi" id="7o1qpmkr0G6" role="3clFbw">
                    <node concept="2GrUjf" id="7o1qpmkr0G8" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="7o1qpmkr0G3" resolve="annotation" />
                    </node>
                    <node concept="1QLmlb" id="7o1qpmkr0Ga" role="2OqNvi">
                      <node concept="ZC_QK" id="7o1qpmkr0Gb" role="1QLmnL">
                        <ref role="2aWVGs" to="yqm7:~Disabled" resolve="Disabled" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="7o1qpmkr0Gc" role="3clFbx">
                    <node concept="3cpWs6" id="7o1qpmkr0Gd" role="3cqZAp">
                      <node concept="3clFbT" id="7o1qpmkr0Ge" role="3cqZAk">
                        <property role="3clFbU" value="false" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="7o1qpmkr5RX" role="3cqZAp">
                  <node concept="1PaTwC" id="7o1qpmkr5RY" role="1aUNEU">
                    <node concept="3oM_SD" id="7o1qpmkr5Ss" role="1PaTwD">
                      <property role="3oM_SC" value="the" />
                    </node>
                    <node concept="3oM_SD" id="7o1qpmkr66E" role="1PaTwD">
                      <property role="3oM_SC" value="reference" />
                    </node>
                    <node concept="3oM_SD" id="7o1qpmkr66X" role="1PaTwD">
                      <property role="3oM_SC" value="below" />
                    </node>
                    <node concept="3oM_SD" id="7o1qpmkr67h" role="1PaTwD">
                      <property role="3oM_SC" value="is" />
                    </node>
                    <node concept="3oM_SD" id="7o1qpmkr67m" role="1PaTwD">
                      <property role="3oM_SC" value="to" />
                    </node>
                    <node concept="3oM_SD" id="7o1qpmkr67N" role="1PaTwD">
                      <property role="3oM_SC" value="org.junit.jupiter.api.Test" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="7o1qpmkr0Gf" role="3cqZAp">
                  <node concept="3clFbS" id="7o1qpmkr0Gg" role="3clFbx">
                    <node concept="3clFbF" id="7o1qpmkr0Gh" role="3cqZAp">
                      <node concept="37vLTI" id="7o1qpmkr0Gi" role="3clFbG">
                        <node concept="3clFbT" id="7o1qpmkr0Gj" role="37vLTx">
                          <property role="3clFbU" value="true" />
                        </node>
                        <node concept="37vLTw" id="7o1qpmkr0Gk" role="37vLTJ">
                          <ref role="3cqZAo" node="7o1qpmkr0FZ" resolve="hasTestAnnotation" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="22lmx$" id="3LuvecXlyem" role="3clFbw">
                    <node concept="2OqwBi" id="3LuvecXlzkV" role="3uHU7w">
                      <node concept="2GrUjf" id="3LuvecXlyQb" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="7o1qpmkr0G3" resolve="annotation" />
                      </node>
                      <node concept="1QLmlb" id="3LuvecXl$at" role="2OqNvi">
                        <node concept="ZC_QK" id="3LuvecXl$B0" role="1QLmnL">
                          <ref role="2aWVGs" to="tphd:~ParameterizedTest" resolve="ParameterizedTest" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7o1qpmkr0Go" role="3uHU7B">
                      <node concept="2GrUjf" id="7o1qpmkr0Gq" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="7o1qpmkr0G3" resolve="annotation" />
                      </node>
                      <node concept="1QLmlb" id="7o1qpmkr0Gs" role="2OqNvi">
                        <node concept="ZC_QK" id="7o1qpmkr0Gt" role="1QLmnL">
                          <ref role="2aWVGs" to="yqm7:~Test" resolve="Test" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3LuvecXlo4E" role="2GsD0m">
                <node concept="2OqwBi" id="7o1qpmkr0Gu" role="2Oq$k0">
                  <node concept="37vLTw" id="7o1qpmkr0Gv" role="2Oq$k0">
                    <ref role="3cqZAo" node="7o1qpmkr0FR" resolve="method" />
                  </node>
                  <node concept="3Tsc0h" id="7o1qpmkr0Gw" role="2OqNvi">
                    <ref role="3TtcxE" to="tpee:hiAJF2X" resolve="annotation" />
                  </node>
                </node>
                <node concept="13MTOL" id="3LuvecXlrW5" role="2OqNvi">
                  <ref role="13MTZf" to="tpee:hiAI5P0" resolve="annotation" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="7o1qpmkr0Gx" role="3cqZAp">
              <node concept="37vLTw" id="7o1qpmkr0Gy" role="3cqZAk">
                <ref role="3cqZAo" node="7o1qpmkr0FZ" resolve="hasTestAnnotation" />
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="7o1qpmkr0Gz" role="3clFbw">
            <node concept="1Wc70l" id="7o1qpmkr0GF" role="3uHU7B">
              <node concept="3fqX7Q" id="7o1qpmkr0GG" role="3uHU7B">
                <node concept="2OqwBi" id="7o1qpmkr0GH" role="3fr31v">
                  <node concept="3zqWPK" id="70OdufORhcl" role="2OqNvi">
                    <ref role="37wK5l" to="tpek:28P2dHxCoRl" resolve="isAnAbstractMethod" />
                  </node>
                  <node concept="37vLTw" id="7o1qpmkr0GJ" role="2Oq$k0">
                    <ref role="3cqZAo" node="7o1qpmkr0FR" resolve="method" />
                  </node>
                </node>
              </node>
              <node concept="1eOMI4" id="7o1qpmkr8IC" role="3uHU7w">
                <node concept="22lmx$" id="7o1qpmkrb2r" role="1eOMHV">
                  <node concept="22lmx$" id="7o1qpmkr9Vt" role="3uHU7B">
                    <node concept="2OqwBi" id="7o1qpmkr0GK" role="3uHU7B">
                      <node concept="2OqwBi" id="7o1qpmkr0GL" role="2Oq$k0">
                        <node concept="37vLTw" id="7o1qpmkr0GM" role="2Oq$k0">
                          <ref role="3cqZAo" node="7o1qpmkr0FR" resolve="method" />
                        </node>
                        <node concept="3TrEf2" id="7o1qpmkr0GN" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpee:h9B3oxE" resolve="visibility" />
                        </node>
                      </node>
                      <node concept="3w_OXm" id="7o1qpmkr9kH" role="2OqNvi" />
                    </node>
                    <node concept="2OqwBi" id="7o1qpmkra8f" role="3uHU7w">
                      <node concept="2OqwBi" id="7o1qpmkra8g" role="2Oq$k0">
                        <node concept="37vLTw" id="7o1qpmkra8h" role="2Oq$k0">
                          <ref role="3cqZAo" node="7o1qpmkr0FR" resolve="method" />
                        </node>
                        <node concept="3TrEf2" id="7o1qpmkra8i" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpee:h9B3oxE" resolve="visibility" />
                        </node>
                      </node>
                      <node concept="1mIQ4w" id="7o1qpmkra8j" role="2OqNvi">
                        <node concept="chp4Y" id="7o1qpmkra8k" role="cj9EA">
                          <ref role="cht4Q" to="tpee:gFTm1ZL" resolve="PublicVisibility" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7o1qpmkrbg5" role="3uHU7w">
                    <node concept="2OqwBi" id="7o1qpmkrbg6" role="2Oq$k0">
                      <node concept="37vLTw" id="7o1qpmkrbg7" role="2Oq$k0">
                        <ref role="3cqZAo" node="7o1qpmkr0FR" resolve="method" />
                      </node>
                      <node concept="3TrEf2" id="7o1qpmkrbg8" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpee:h9B3oxE" resolve="visibility" />
                      </node>
                    </node>
                    <node concept="1mIQ4w" id="7o1qpmkrbg9" role="2OqNvi">
                      <node concept="chp4Y" id="7o1qpmkrbga" role="cj9EA">
                        <ref role="cht4Q" to="tpee:gFTmbq6" resolve="ProtectedVisibility" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1eOMI4" id="7o1qpmkr0GP" role="3uHU7w">
              <node concept="3y3z36" id="7o1qpmkr0GQ" role="1eOMHV">
                <node concept="10Nm6u" id="7o1qpmkr0GR" role="3uHU7w" />
                <node concept="2OqwBi" id="7o1qpmkr0GS" role="3uHU7B">
                  <node concept="37vLTw" id="7o1qpmkr0GT" role="2Oq$k0">
                    <ref role="3cqZAo" node="7o1qpmkr0FR" resolve="method" />
                  </node>
                  <node concept="3TrcHB" id="7o1qpmkr0GU" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7o1qpmkr0GV" role="3cqZAp">
          <node concept="3clFbT" id="7o1qpmkr0GW" role="3clFbG">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="82DhFetp9" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4chG8iIpM9$" role="jymVt" />
    <node concept="2YIFZL" id="7o1qpmkqUNu" role="jymVt">
      <property role="TrG5h" value="isJUnit5TestCase" />
      <node concept="37vLTG" id="7o1qpmkqUNv" role="3clF46">
        <property role="TrG5h" value="clazz" />
        <node concept="3Tqbb2" id="7o1qpmkqUNw" role="1tU5fm">
          <ref role="ehGHo" to="tpee:fz12cDA" resolve="ClassConcept" />
        </node>
      </node>
      <node concept="10P_77" id="7o1qpmkqUNx" role="3clF45" />
      <node concept="3clFbS" id="7o1qpmkqUNz" role="3clF47">
        <node concept="3clFbJ" id="7o1qpmkqUN$" role="3cqZAp">
          <node concept="3clFbS" id="7o1qpmkqUN_" role="3clFbx">
            <node concept="3cpWs6" id="7o1qpmkqUNA" role="3cqZAp">
              <node concept="3clFbT" id="7o1qpmkqUNB" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7o1qpmkqUNC" role="3clFbw">
            <node concept="1PxgMI" id="7o1qpmkqUND" role="2Oq$k0">
              <node concept="37vLTw" id="7o1qpmkqUNE" role="1m5AlR">
                <ref role="3cqZAo" node="7o1qpmkqUNv" resolve="clazz" />
              </node>
              <node concept="chp4Y" id="7o1qpmkqUNF" role="3oSUPX">
                <ref role="cht4Q" to="tpee:fz12cDA" resolve="ClassConcept" />
              </node>
            </node>
            <node concept="3TrcHB" id="7o1qpmkqUNG" role="2OqNvi">
              <ref role="3TsBF5" to="tpee:fDsVARU" resolve="abstractClass" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="7o1qpmkqUNH" role="3cqZAp">
          <node concept="2GrKxI" id="7o1qpmkqUNI" role="2Gsz3X">
            <property role="TrG5h" value="method" />
          </node>
          <node concept="2OqwBi" id="7o1qpmkqUNJ" role="2GsD0m">
            <node concept="3zqWPK" id="70OdufORhcn" role="2OqNvi">
              <ref role="37wK5l" to="tpek:4_LVZ3pBKCn" resolve="methods" />
            </node>
            <node concept="37vLTw" id="7o1qpmkqUNL" role="2Oq$k0">
              <ref role="3cqZAo" node="7o1qpmkqUNv" resolve="clazz" />
            </node>
          </node>
          <node concept="3clFbS" id="7o1qpmkqUNM" role="2LFqv$">
            <node concept="3clFbJ" id="7o1qpmkqUNN" role="3cqZAp">
              <node concept="3clFbS" id="7o1qpmkqUNO" role="3clFbx">
                <node concept="3cpWs6" id="7o1qpmkqUNP" role="3cqZAp">
                  <node concept="3clFbT" id="7o1qpmkqUNQ" role="3cqZAk">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="2YIFZM" id="4chG8iIptsc" role="3clFbw">
                <ref role="37wK5l" node="7o1qpmkr0FQ" resolve="isJUnit5TestMethod" />
                <ref role="1Pybhc" node="4chG8iIoNLB" resolve="TestNodeUtil" />
                <node concept="2GrUjf" id="7o1qpmkrdBn" role="37wK5m">
                  <ref role="2Gs0qQ" node="7o1qpmkqUNI" resolve="method" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7o1qpmkqUNT" role="3cqZAp">
          <node concept="3clFbT" id="7o1qpmkqUNU" role="3clFbG">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="82DhFetAn" role="1B3o_S" />
    </node>
    <node concept="3UR2Jj" id="4chG8iIpEiG" role="lGtFl">
      <node concept="1PaTwC" id="1E1X3WHsC$f" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsC$g" role="1PaTwD">
          <property role="3oM_SC" value="A" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsC$h" role="1PaTwD">
          <property role="3oM_SC" value="collection" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsC$i" role="1PaTwD">
          <property role="3oM_SC" value="of" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsC$j" role="1PaTwD">
          <property role="3oM_SC" value="utility" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsC$k" role="1PaTwD">
          <property role="3oM_SC" value="functions" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsC$l" role="1PaTwD">
          <property role="3oM_SC" value="refactored" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsC$m" role="1PaTwD">
          <property role="3oM_SC" value="out" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsC$n" role="1PaTwD">
          <property role="3oM_SC" value="of" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsC$o" role="1PaTwD">
          <property role="3oM_SC" value="deprecated" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsC$p" role="1PaTwD">
          <property role="3oM_SC" value="&quot;*TestWrapper&quot;" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsC$q" role="1PaTwD">
          <property role="3oM_SC" value="classes." />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="82DhFerQC" role="1B3o_S" />
  </node>
</model>

